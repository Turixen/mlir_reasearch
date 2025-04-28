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
	.quad	999                             # 0x3e7
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	999                             # 0x3e7
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
	lui	a7, %hi(.L__constant_999xindex)
	addi	a7, a7, %lo(.L__constant_999xindex)
	lui	t0, %hi(.L__constant_999xf64)
	addi	t0, t0, %lo(.L__constant_999xf64)
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
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	81                              # 0x51
	.quad	93                              # 0x5d
	.quad	102                             # 0x66
	.quad	108                             # 0x6c
	.quad	120                             # 0x78
	.quad	129                             # 0x81
	.quad	140                             # 0x8c
	.quad	146                             # 0x92
	.quad	157                             # 0x9d
	.quad	167                             # 0xa7
	.quad	175                             # 0xaf
	.quad	186                             # 0xba
	.quad	191                             # 0xbf
	.quad	198                             # 0xc6
	.quad	217                             # 0xd9
	.quad	224                             # 0xe0
	.quad	229                             # 0xe5
	.quad	242                             # 0xf2
	.quad	249                             # 0xf9
	.quad	259                             # 0x103
	.quad	265                             # 0x109
	.quad	275                             # 0x113
	.quad	290                             # 0x122
	.quad	299                             # 0x12b
	.quad	307                             # 0x133
	.quad	322                             # 0x142
	.quad	334                             # 0x14e
	.quad	345                             # 0x159
	.quad	354                             # 0x162
	.quad	365                             # 0x16d
	.quad	378                             # 0x17a
	.quad	390                             # 0x186
	.quad	399                             # 0x18f
	.quad	412                             # 0x19c
	.quad	417                             # 0x1a1
	.quad	430                             # 0x1ae
	.quad	439                             # 0x1b7
	.quad	451                             # 0x1c3
	.quad	464                             # 0x1d0
	.quad	470                             # 0x1d6
	.quad	480                             # 0x1e0
	.quad	488                             # 0x1e8
	.quad	495                             # 0x1ef
	.quad	507                             # 0x1fb
	.quad	516                             # 0x204
	.quad	529                             # 0x211
	.quad	539                             # 0x21b
	.quad	547                             # 0x223
	.quad	559                             # 0x22f
	.quad	567                             # 0x237
	.quad	574                             # 0x23e
	.quad	583                             # 0x247
	.quad	597                             # 0x255
	.quad	604                             # 0x25c
	.quad	612                             # 0x264
	.quad	626                             # 0x272
	.quad	635                             # 0x27b
	.quad	646                             # 0x286
	.quad	653                             # 0x28d
	.quad	657                             # 0x291
	.quad	673                             # 0x2a1
	.quad	686                             # 0x2ae
	.quad	692                             # 0x2b4
	.quad	701                             # 0x2bd
	.quad	712                             # 0x2c8
	.quad	727                             # 0x2d7
	.quad	737                             # 0x2e1
	.quad	754                             # 0x2f2
	.quad	767                             # 0x2ff
	.quad	782                             # 0x30e
	.quad	792                             # 0x318
	.quad	804                             # 0x324
	.quad	816                             # 0x330
	.quad	823                             # 0x337
	.quad	837                             # 0x345
	.quad	851                             # 0x353
	.quad	861                             # 0x35d
	.quad	871                             # 0x367
	.quad	876                             # 0x36c
	.quad	888                             # 0x378
	.quad	903                             # 0x387
	.quad	912                             # 0x390
	.quad	919                             # 0x397
	.quad	922                             # 0x39a
	.quad	935                             # 0x3a7
	.quad	943                             # 0x3af
	.quad	953                             # 0x3b9
	.quad	961                             # 0x3c1
	.quad	967                             # 0x3c7
	.quad	978                             # 0x3d2
	.quad	985                             # 0x3d9
	.quad	999                             # 0x3e7
	.size	.L__constant_101xindex, 808

	.type	.L__constant_999xindex,@object  # @__constant_999xindex
	.p2align	6, 0x0
.L__constant_999xindex:
	.quad	7                               # 0x7
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	60                              # 0x3c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	53                              # 0x35
	.quad	79                              # 0x4f
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	74                              # 0x4a
	.quad	98                              # 0x62
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	74                              # 0x4a
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	17                              # 0x11
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	66                              # 0x42
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	61                              # 0x3d
	.quad	89                              # 0x59
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	92                              # 0x5c
	.quad	12                              # 0xc
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	61                              # 0x3d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	25                              # 0x19
	.quad	42                              # 0x2a
	.quad	68                              # 0x44
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	58                              # 0x3a
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	27                              # 0x1b
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	27                              # 0x1b
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	68                              # 0x44
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	56                              # 0x38
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	28                              # 0x1c
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	91                              # 0x5b
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	17                              # 0x11
	.quad	51                              # 0x33
	.quad	69                              # 0x45
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	85                              # 0x55
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	52                              # 0x34
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	26                              # 0x1a
	.quad	55                              # 0x37
	.quad	75                              # 0x4b
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	38                              # 0x26
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	19                              # 0x13
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	17                              # 0x11
	.quad	40                              # 0x28
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	88                              # 0x58
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	2                               # 0x2
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	94                              # 0x5e
	.quad	19                              # 0x13
	.quad	37                              # 0x25
	.quad	56                              # 0x38
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	5                               # 0x5
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	36                              # 0x24
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	31                              # 0x1f
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	8                               # 0x8
	.quad	30                              # 0x1e
	.quad	47                              # 0x2f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	85                              # 0x55
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	42                              # 0x2a
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	95                              # 0x5f
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	3                               # 0x3
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	35                              # 0x23
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	99                              # 0x63
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	61                              # 0x3d
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	9                               # 0x9
	.quad	36                              # 0x24
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	63                              # 0x3f
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	18                              # 0x12
	.quad	34                              # 0x22
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	9                               # 0x9
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	91                              # 0x5b
	.quad	4                               # 0x4
	.quad	32                              # 0x20
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	91                              # 0x5b
	.quad	16                              # 0x10
	.quad	38                              # 0x26
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	66                              # 0x42
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	79                              # 0x4f
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	17                              # 0x11
	.quad	30                              # 0x1e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	80                              # 0x50
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	84                              # 0x54
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	84                              # 0x54
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	76                              # 0x4c
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	23                              # 0x17
	.quad	46                              # 0x2e
	.quad	57                              # 0x39
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	66                              # 0x42
	.quad	82                              # 0x52
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	47                              # 0x2f
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	56                              # 0x38
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	87                              # 0x57
	.quad	3                               # 0x3
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	59                              # 0x3b
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.size	.L__constant_999xindex, 7992

	.type	.L__constant_999xf64,@object    # @__constant_999xf64
	.p2align	6, 0x0
.L__constant_999xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_999xf64, 7992

	.type	.L__constant_100x100xf64,@object # @__constant_100x100xf64
	.p2align	6, 0x0
.L__constant_100x100xf64:
	.quad	0x3fd0ddfcb3688fae              # double 0.26354901810031606
	.quad	0x3fe3163678a31aab              # double 0.59646152078569992
	.quad	0x3fd249683dda60ec              # double 0.28573041954361034
	.quad	0x3fd66307921350fe              # double 0.34979428544217217
	.quad	0x3fc69fae29f44f44              # double 0.17674805687476625
	.quad	0x3fdb25eaba661206              # double 0.42418926432608861
	.quad	0x3fdd68dfb0ab071a              # double 0.45952598812810808
	.quad	0x3fd30b2d3b42fdae              # double 0.29755717074655308
	.quad	0x3fec84ae15417e97              # double 0.89119629050761062
	.quad	0x3fd848e8657831c2              # double 0.37944993886119616
	.quad	0x3fd9a31fbdcc7320              # double 0.40058129820845245
	.quad	0x3feef3670c0a8357              # double 0.96721222259302919
	.quad	0x3fc9fdad2f769fa0              # double 0.20305409257457274
	.quad	0x3fe961b01ed9b1b4              # double 0.79317480111563165
	.quad	0x3feb20e0cdbc2c09              # double 0.84776344473482468
	.quad	0x3fc8bcb0d331f9c0              # double 0.19325838386789762
	.quad	0x3fe5a8d000903ae6              # double 0.67685699567831814
	.quad	0x3fbb5233d6448f48              # double 0.10672306042812096
	.quad	0x3fed706ebddff476              # double 0.91997468075682209
	.quad	0x3feee4838637b44e              # double 0.96539474691747684
	.quad	0x3fbfd9718cd38548              # double 0.12441167534008912
	.quad	0x3fe842c541cbdd68              # double 0.75815070010041286
	.quad	0x3fb2226937118bf0              # double 0.070837570137470385
	.quad	0x3fdedac3f9207ed4              # double 0.48210238770296354
	.quad	0x3fdb54f793415062              # double 0.42706097965606749
	.quad	0x3fd03bcfcd01902c              # double 0.2536506177914386
	.quad	0x3fb6189e1bbeb758              # double 0.086313134931257252
	.quad	0x3f90b8522bdc57a0              # double 0.01632812874512235
	.quad	0x3fe00ab29e7635f5              # double 0.50130587529719028
	.quad	0x3fb60bd538dcb0b8              # double 0.086118055708257368
	.quad	0x3fed09a8ed611be8              # double 0.90742918360853952
	.quad	0x3fdd00b96b63aa4c              # double 0.45316920745122924
	.quad	0x3fec1e723db1d112              # double 0.87871658372617589
	.quad	0x3fec8282e573d66c              # double 0.89093155684413494
	.quad	0x3fe3a42564494a48              # double 0.61378736102262454
	.quad	0x3fe7cccd7df672ef              # double 0.74375032999122748
	.quad	0x3fd8f469cddd323c              # double 0.38991780380164065
	.quad	0x3fde03dea3c403b8              # double 0.4689861869119869
	.quad	0x3fdfbd02bf22cc66              # double 0.49591129937761591
	.quad	0x3fdbb54be936803a              # double 0.43294046187111557
	.quad	0x3fccaf771f2c9e94              # double 0.22410477659399375
	.quad	0x3fd89fdd8718a9aa              # double 0.38475740616800158
	.quad	0x3fef9a988c1f86f4              # double 0.98762156837275805
	.quad	0x3fee8629781bee5f              # double 0.95387719591913001
	.quad	0x3fdab3376445a622              # double 0.41718849937623947
	.quad	0x3fec01b664e3b27c              # double 0.8752090425965231
	.quad	0x3fedcfe82a938a2d              # double 0.93162926021279235
	.quad	0x3febc501f8cadff2              # double 0.86779879181176356
	.quad	0x3fdb65894c18d8e4              # double 0.42807228499749628
	.quad	0x3fd613625c9058ce              # double 0.34493311919630976
	.quad	0x3fd1ecc1d0555c64              # double 0.28007550568640327
	.quad	0x3fe19759a639c3ec              # double 0.54972536531397287
	.quad	0x3fe7eda618f53cf2              # double 0.74775986551858709
	.quad	0x3fc7a2a3440bcb3c              # double 0.18465081045686726
	.quad	0x3fc87979ff9eb4c8              # double 0.19120717030947376
	.quad	0x3fe2fc8b066cd3d3              # double 0.59332801108268496
	.quad	0x3fea1f6f28295895              # double 0.81633718341869843
	.quad	0x3fd25d9581863326              # double 0.28696191452836428
	.quad	0x3fe2b20a05407506              # double 0.58423329377879507
	.quad	0x3fe9604ce6d00feb              # double 0.79300541954625936
	.quad	0x3fe62ff6039b1eb3              # double 0.69335461334499937
	.quad	0x3fc99ee5877e4cb4              # double 0.20016163936506859
	.quad	0x3fde0103f6aa0b7c              # double 0.46881198013596026
	.quad	0x3fe026cc59981e3b              # double 0.50473611353749648
	.quad	0x3fe97bc44e7913a6              # double 0.79635825468777877
	.quad	0x3fee46187c91c808              # double 0.94605659799549446
	.quad	0x3fe4ace0e1f8d937              # double 0.64610332617920718
	.quad	0x3fdb764db95d625a              # double 0.42909567930249681
	.quad	0x3fcf60d455b3f680              # double 0.24514249977794478
	.quad	0x3fee336bdb80cb7d              # double 0.94377701636982148
	.quad	0x3fdcb8245d9fac28              # double 0.44873913901273221
	.quad	0x3fc7566480a294d4              # double 0.18232399254808362
	.quad	0x3feb5d8e1c72ac8a              # double 0.85517030292739205
	.quad	0x3fc1a982857dddd8              # double 0.13798553007266778
	.quad	0x3fc9b3197e9e6ce0              # double 0.2007781856781099
	.quad	0x3fb2b1808f9feb48              # double 0.073020968498821337
	.quad	0x3fa864f24125c3d0              # double 0.047645159199312226
	.quad	0x3fe6b81f115442b8              # double 0.70997575172994853
	.quad	0x3f8e2b220d8f7b00              # double 0.01473070720561287
	.quad	0x3fed193bf55fe319              # double 0.90933034825056602
	.quad	0x3fe5a03321ec1205              # double 0.67580563187999643
	.quad	0x3fc19e6d2b503010              # double 0.13764729132560705
	.quad	0x3fc547cf780aa2d0              # double 0.16625398026851324
	.quad	0x3fbdd58b454cc3d8              # double 0.11653967325106807
	.quad	0x3fef525286ad9359              # double 0.97879911712935119
	.quad	0x3fef3c6eb0e7f8c3              # double 0.97612700035076505
	.quad	0x3fdc294b5504deb2              # double 0.44002040197981807
	.quad	0x3fe3b2e2cec543ed              # double 0.61558666596294886
	.quad	0x3fe58bd38009d258              # double 0.67331862456792191
	.quad	0x3fdbe9c53e562cf8              # double 0.43614321792183786
	.quad	0x3fdad02d189f1732              # double 0.41895606426656962
	.quad	0x3fd7f9b2f611747c              # double 0.37461542158218442
	.quad	0x3fdc464e75a8aaf8              # double 0.4417911671650212
	.quad	0x3fd7ea4af69d050a              # double 0.37367509921394115
	.quad	0x3fefeca635d07a74              # double 0.99763784895533413
	.quad	0x3fe6a87ea4145669              # double 0.70806819960371314
	.quad	0x3fda15ca6e2a06f0              # double 0.40758000143260542
	.quad	0x3fb7d95606424400              # double 0.09316003468326528
	.quad	0x3fa665d67fea71f0              # double 0.043745711436006363
	.quad	0x3fef82582f68690a              # double 0.98466119059892887
	.quad	0x3fe4e0a5477bee45              # double 0.65242256128062392
	.quad	0x3fbc8c9d483fba30              # double 0.11152060521974572
	.quad	0x3fa4e9e24715c650              # double 0.040846892526030687
	.quad	0x3fee929ae07cf1e0              # double 0.95539611668896995
	.quad	0x3fec7ca20ca3311b              # double 0.89021398990874745
	.quad	0x3feb0c4984977a69              # double 0.84524989983385723
	.quad	0x3fd87bf5d6644f28              # double 0.38256593643858361
	.quad	0x3feb9fe2ba2dfd9a              # double 0.86326729167187755
	.quad	0x3fac58d8972fc400              # double 0.055365341620820629
	.quad	0x3fc521ab9bcdadec              # double 0.16509003741826633
	.quad	0x3fbc59bf865ea8d0              # double 0.11074444799911309
	.quad	0x3fe99f420cbb1535              # double 0.80069067465289001
	.quad	0x3fa95f4100793430              # double 0.049554854686541083
	.quad	0x3fe975b37df8f016              # double 0.79561781505572315
	.quad	0x3fe18eb74ceb5660              # double 0.54867138884828748
	.quad	0x3feabb072f4ac048              # double 0.83533057438581526
	.quad	0x3fb1fff96c0504d0              # double 0.070312107917760658
	.quad	0x3fca660d1547835c              # double 0.20623935259848281
	.quad	0x3fea0cf707f52df9              # double 0.81408263735050845
	.quad	0x3fa36e28163d6190              # double 0.037949803080382982
	.quad	0x3fe8a34594ea1682              # double 0.76993064007611189
	.quad	0x3feac25506d09b41              # double 0.83622218447712993
	.quad	0x3fbd4ba3d39c3318              # double 0.11443542400611439
	.quad	0x3fe5b8a756e85962              # double 0.67879073118346533
	.quad	0x3fb75345147c27b8              # double 0.091114346982208327
	.quad	0x3fec8d5348eb8491              # double 0.89225162737069941
	.quad	0x3fe569d60f1724cb              # double 0.66916945407242545
	.quad	0x3fec4a442fba71a2              # double 0.88406571695263758
	.quad	0x3fe48c0c82678446              # double 0.64209580869295091
	.quad	0x3fc1f8e2f9323798              # double 0.1404079167154435
	.quad	0x3fd647d765c74ef8              # double 0.34813485087691687
	.quad	0x3fe43a0a41667323              # double 0.63208496831393679
	.quad	0x3fe80fa21d4231ff              # double 0.75190835680547241
	.quad	0x3fdb80fc60513324              # double 0.42974767118430379
	.quad	0x3fe0219ac6d8febd              # double 0.50410212361744977
	.quad	0x3fb70b08bbdaf6e0              # double 0.090012117255322988
	.quad	0x3fec0039e5e854b1              # double 0.87502760795418599
	.quad	0x3fe17f54ab4d7356              # double 0.54679330308463636
	.quad	0x3fec6af660496089              # double 0.88805693441374089
	.quad	0x3fed1faac3a1f34c              # double 0.91011560639854272
	.quad	0x3fc71f29292f0f80              # double 0.180638451680462
	.quad	0x3fe638b12294f71e              # double 0.69442040209080225
	.quad	0x3fd6867897097c1e              # double 0.35195746183120658
	.quad	0x3fe151759f11569a              # double 0.54119378154674114
	.quad	0x3fe1b7b3af8ab997              # double 0.55367454801107641
	.quad	0x3fca7a334fdf3ba8              # double 0.20685426139831731
	.quad	0x3feb52b08e089583              # double 0.85384395352291198
	.quad	0x3fb0f5bdd7d3b2b8              # double 0.066249718849301753
	.quad	0x3fcc577292e7d120              # double 0.22141868756410421
	.quad	0x3fdd7d3be2e6f50c              # double 0.46076867254653631
	.quad	0x3fe3d7a9bf1c1ce0              # double 0.62007605863700732
	.quad	0x3fe671f8c6479ab3              # double 0.70141257025246373
	.quad	0x3fca43a8278b4b34              # double 0.20518972330918361
	.quad	0x3fd89e3c01aaa2d4              # double 0.38465786135433899
	.quad	0x3fd7cf5123f1b07c              # double 0.37202862272420822
	.quad	0x3fd44822ca699a4e              # double 0.3169028259930301
	.quad	0x3fcfb0519ecde9bc              # double 0.24756832365149062
	.quad	0x3fe575e13a207e96              # double 0.67063962319294279
	.quad	0x3fc86372c690c208              # double 0.19053492255763183
	.quad	0x3fea80bc2f790d75              # double 0.82821473381083754
	.quad	0x3fd713d65f457f06              # double 0.36058577827314797
	.quad	0x3fe1505b958085ae              # double 0.5410592956506457
	.quad	0x3fd93bc51cf03136              # double 0.39427306962967934
	.quad	0x3fde51233d491984              # double 0.47370224938313066
	.quad	0x3fe256c33c81dba8              # double 0.5730911428244001
	.quad	0x3fe1dcf74e4b5549              # double 0.55822339336251858
	.quad	0x3fe1fbb4583ca047              # double 0.56197564347986251
	.quad	0x3fd8980fa88c38ee              # double 0.38428107700100511
	.quad	0x3fe82f888624b9b3              # double 0.75580240440267799
	.quad	0x3fdf27abd2e176c0              # double 0.48679633706874981
	.quad	0x3fc20a82d72996b4              # double 0.14094577318171775
	.quad	0x3fcd60bc96579e70              # double 0.22951466885500649
	.quad	0x3fe9726e4d93fc20              # double 0.79521861221281042
	.quad	0x3fe19b08a28268d8              # double 0.55017501583213413
	.quad	0x3fe1ecc78f6ce0d3              # double 0.56015375149493207
	.quad	0x3fe29f23b1199325              # double 0.58192619886230956
	.quad	0x3fcfa4221fcbacd8              # double 0.24719645073432761
	.quad	0x3fe3951e7ac21b8b              # double 0.6119530103322729
	.quad	0x3fe98c5de9c993a2              # double 0.79838462506869612
	.quad	0x3fec47657f811b02              # double 0.88371539023577861
	.quad	0x3fee7518b4066007              # double 0.95179400597680874
	.quad	0x3fefc835e2f6afc3              # double 0.99318975762206951
	.quad	0x3fb28c029e8107c8              # double 0.072448886582633709
	.quad	0x3fd0b9cd97afb04e              # double 0.26134052098382632
	.quad	0x3fbbdab19051f208              # double 0.10880574963989187
	.quad	0x3fe8cfad87cc0e5a              # double 0.77535130045766754
	.quad	0x3fe0d5ba201eb207              # double 0.52608972810190913
	.quad	0x3fc87e2d258e5708              # double 0.19135059675016231
	.quad	0x3f4db7be31a0c400              # double 9.0691363153017068E-4
	.quad	0x3fac700fb1e79220              # double 0.055542459933153987
	.quad	0x3fdeb577e753c5a2              # double 0.47982595053243859
	.quad	0x3fe7073439514bdd              # double 0.7196293944820088
	.quad	0x3fdb34dd8c556084              # double 0.42510164932674166
	.quad	0x3fe9fd8a6fd84065              # double 0.81219980091738064
	.quad	0x3fdf4d433fde0306              # double 0.48909074055704627
	.quad	0x3fbd750487fab120              # double 0.11506679839903144
	.quad	0x3febade74ca604aa              # double 0.86497845621501779
	.quad	0x3fc5399573cf60b4              # double 0.16581981806553403
	.quad	0x3fded05d16b357dc              # double 0.48146750656939985
	.quad	0x3fe401a14787f267              # double 0.62519897433192007
	.quad	0x3fedccb02a815eb8              # double 0.93123634626223062
	.quad	0x3febe66f159ac1f8              # double 0.87187914104111908
	.quad	0x3fe8335c1f3d375c              # double 0.75626951314346113
	.quad	0x3fedb1b9fbe26b28              # double 0.92794512935811202
	.quad	0x3fddcd82371cfae6              # double 0.46566825277470369
	.quad	0x3fcdf81c218814a0              # double 0.23413421284945901
	.quad	0x3fd4ef0b97a8e0de              # double 0.32709016619220488
	.quad	0x3fe074c9bf454021              # double 0.51425635678788606
	.quad	0x3fc435e34d5b8498              # double 0.15789452817174232
	.quad	0x3fb254a329372be8              # double 0.071603963434582973
	.quad	0x3fea64252d06b365              # double 0.82472475809263968
	.quad	0x3fe4fce8376e9098              # double 0.65587244822065127
	.quad	0x3fd1302487e89fa2              # double 0.26856339714367483
	.quad	0x3fed379eb5b965e2              # double 0.91303954594621595
	.quad	0x3fd1e6b91c0da04e              # double 0.27970721950123767
	.quad	0x3fd6eb67ddcc8916              # double 0.35811802539878224
	.quad	0x3fe6e664c1fcfcc4              # double 0.71562421692205946
	.quad	0x3fd8be3bd0ba1b5c              # double 0.38661094077581537
	.quad	0x3fefaea68c452664              # double 0.99006965061671481
	.quad	0x3fe97dbcae56bad1              # double 0.79659875917954015
	.quad	0x3fde1ae3ed331cf8              # double 0.47039125598935483
	.quad	0x3fd7612125a0f5a4              # double 0.36530331301386298
	.quad	0x3fe224dd69ef16b6              # double 0.56700010957930291
	.quad	0x3fe690939ce3294b              # double 0.70514851228771513
	.quad	0x3fef6ede24d2cb63              # double 0.98228366081307816
	.quad	0x3fa1cf15a8fcd9d0              # double 0.034783055189496204
	.quad	0x3fecfb5c82dfd207              # double 0.90568376122843197
	.quad	0x3fbb45050b32fd38              # double 0.10652190707604781
	.quad	0x3fed4d6f2c4aa43b              # double 0.91570242548653569
	.quad	0x3fe2cc03710efb38              # double 0.58740398484937995
	.quad	0x3fc6c591367f456c              # double 0.1779042736148243
	.quad	0x3fda384717acbde4              # double 0.40968491851796629
	.quad	0x3fe0f47da900d483              # double 0.52984507568784556
	.quad	0x3f9b56bcc3859c80              # double 0.02669806426402177
	.quad	0x3fdb374a1f250954              # double 0.42524960557434111
	.quad	0x3fe5f4366d8e3efe              # double 0.68606110951984056
	.quad	0x3fe47af2bdaf3a3b              # double 0.64000832603216595
	.quad	0x3fe94db6013389fb              # double 0.7907362006629336
	.quad	0x3fe3955a2a00b1ec              # double 0.61198147014289139
	.quad	0x3fe92db3dd62d10f              # double 0.78682893027738199
	.quad	0x3fca885abb5ef0b0              # double 0.20728620671241549
	.quad	0x3fdc7c210324555a              # double 0.44507623011425823
	.quad	0x3fd92d60ca6075fa              # double 0.39339465869292634
	.quad	0x3fe3ba9de2bcd3a7              # double 0.61653036389053717
	.quad	0x3f9d6f17fd2faee0              # double 0.028744101360571928
	.quad	0x3feab6630ab27da1              # double 0.83476402367880465
	.quad	0x3fe95aaeeb14cbcb              # double 0.79231973566344871
	.quad	0x3fc3ccaded80c02c              # double 0.15468381974051348
	.quad	0x3fd5b5b352172938              # double 0.33921511665961956
	.quad	0x3fed42ba99ef5a95              # double 0.91439561906266198
	.quad	0x3fe0c137d5872bf8              # double 0.5235861940831219
	.quad	0x3fd658e97520af4a              # double 0.34917675436257822
	.quad	0x3fc4c715af5e845c              # double 0.16232558310460632
	.quad	0x3fc6a28aa14c8924              # double 0.1768353736488929
	.quad	0x3febaabb62fe3a0b              # double 0.86459130606255152
	.quad	0x3fbac610b37bf618              # double 0.10458473569811877
	.quad	0x3fe592ff2340dba6              # double 0.67419392476482609
	.quad	0x3fe8c005a8ae47cc              # double 0.7734401983782333
	.quad	0x3fd8993de30323f0              # double 0.38435313386122427
	.quad	0x3fe562a992788d1f              # double 0.66829374892805393
	.quad	0x3fea9afa57002ab8              # double 0.8314181994658929
	.quad	0x3fe49c15a03faac7              # double 0.64405328081678526
	.quad	0x3fedc71f845fdcce              # double 0.93055702070605562
	.quad	0x3feedff4a15819ff              # double 0.96483832848099371
	.quad	0x3fe52417b08c03f7              # double 0.66065582734893169
	.quad	0x3fed16a2588f96b4              # double 0.90901295945214721
	.quad	0x3fddfd20b6e638b0              # double 0.46857469426403053
	.quad	0x3fdb95bbb7904388              # double 0.43101399351240177
	.quad	0x3fd0e80becc49782              # double 0.26416299936169463
	.quad	0x3fec0f28a5e54da3              # double 0.87685043717867861
	.quad	0x3fb44a1c5ccd68f8              # double 0.079255840927917265
	.quad	0x3fe239481e3d5240              # double 0.5694923964134162
	.quad	0x3fe112ec024ee0f1              # double 0.53355980349354415
	.quad	0x3fe5de53d0763c94              # double 0.68338957514960663
	.quad	0x3fed6e50e363d288              # double 0.91971630489440859
	.quad	0x3fe0da05a59f5813              # double 0.52661402080662112
	.quad	0x3f9113a57b66a620              # double 0.016676507622525816
	.quad	0x3fe28da9aa597140              # double 0.57979281684269068
	.quad	0x3fe83f753c0ae1e1              # double 0.75774633147289816
	.quad	0x3fc973616654ca40              # double 0.19883363243714491
	.quad	0x3fc9639e154361bc              # double 0.19835258520357779
	.quad	0x3fe6bbf06794b3c4              # double 0.71044178228987009
	.quad	0x3fd83e6cee1a8604              # double 0.37881015064530765
	.quad	0x3fe0a8fc8cd10ee7              # double 0.52062823775528677
	.quad	0x3fda0ef524b91350              # double 0.4071629389402931
	.quad	0x3fe92780a0260421              # double 0.78607207564357762
	.quad	0x3fcf429c073d48b4              # double 0.24422026017652387
	.quad	0x3faa55a902bb4bc0              # double 0.051434785445642728
	.quad	0x3fef5eb4f13b13ee              # double 0.98031088939080546
	.quad	0x3fe51d27d5558f5d              # double 0.65980903307761773
	.quad	0x3fa11ccd0fc87e50              # double 0.033422859360368151
	.quad	0x3fd321aaaace8ce8              # double 0.29892985039096098
	.quad	0x3fe22cd7aec724ad              # double 0.56797393928822759
	.quad	0x3feec6a12f6ce911              # double 0.96174678099422028
	.quad	0x3fbfe0fc641390d8              # double 0.12452676242134275
	.quad	0x3fd5a7eede323d6c              # double 0.33837482165195953
	.quad	0x3fe51ea4aafc8870              # double 0.65999062915603979
	.quad	0x3fc410af3ebc7970              # double 0.15675917208950407
	.quad	0x3fc3091e29e5b564              # double 0.14871575399176173
	.quad	0x3fdfdab64e43be4c              # double 0.49772412913350617
	.quad	0x3fdbd49a382aae4a              # double 0.43485122189551773
	.quad	0x3fdd7e8279711b2e              # double 0.46084653720429258
	.quad	0x3feb7ee42ca69fcf              # double 0.85923966141580788
	.quad	0x3fcb35b9b3555398              # double 0.21257706886777039
	.quad	0x3fd7ca97a0fdf782              # double 0.37174025270348221
	.quad	0x3fee4952aba7d2f9              # double 0.9464505531928743
	.quad	0x3fec95d52a41f90e              # double 0.89329012158830934
	.quad	0x3fe8069219993002              # double 0.75080208778081237
	.quad	0x3fe93b5f67fa8cc4              # double 0.78849764164296987
	.quad	0x3fe71bb39b287351              # double 0.72213154129313228
	.quad	0x3fecc4d029e4a9f1              # double 0.89902504141110573
	.quad	0x3feb3d5c03bf45c4              # double 0.85124016506068089
	.quad	0x3fc670093155db5c              # double 0.17529406460718178
	.quad	0x3fe13103d0a9f241              # double 0.53723326449068776
	.quad	0x3fcb138b7f0eb5b0              # double 0.21153396324136287
	.quad	0x3fd0b336452c88b2              # double 0.26093823199529276
	.quad	0x3feebddb2cad29cb              # double 0.96067579961646154
	.quad	0x3fba9153e3728378              # double 0.10378002455628443
	.quad	0x3fd851cbe94579b4              # double 0.37999246387871755
	.quad	0x3fd3da3535f23942              # double 0.31019335048849339
	.quad	0x3fe714542bfca82c              # double 0.72123154250335153
	.quad	0x3fc91938595f67bc              # double 0.19608215679073548
	.quad	0x3fb6f56c147e77a8              # double 0.089682345393582552
	.quad	0x3fe6f38af882f999              # double 0.71722935235429752
	.quad	0x3fcfef50d8d089b8              # double 0.24949083887720547
	.quad	0x3fe2b7e61c8f187b              # double 0.58494859292910861
	.quad	0x3fef648326f6c7fc              # double 0.98101956949380975
	.quad	0x3fea5b2e548f5bf5              # double 0.82363049045204539
	.quad	0x3fe6bf9528bf67f4              # double 0.71088655432254066
	.quad	0x3fdbed885e759870              # double 0.43637284493013961
	.quad	0x3fe4aa69ff4a01ed              # double 0.64580249653959998
	.quad	0x3fda51cb3e429a56              # double 0.41124230461210709
	.quad	0x3fedd5a3ea1358af              # double 0.93232913701901576
	.quad	0x3fde4f432f38d030              # double 0.47358779536739615
	.quad	0x3fdbb48a05433564              # double 0.4328942347900322
	.quad	0x3fdfd0f7d5dd6c98              # double 0.49712940106628301
	.quad	0x3fe7faef564eeec8              # double 0.74938170296760465
	.quad	0x3fdae9f11ff77944              # double 0.42052868005511734
	.quad	0x3fd1736dcc349892              # double 0.27267022077502034
	.quad	0x3fd55f49cd2f289e              # double 0.33394093549271442
	.quad	0x3fd53ff27696ceb2              # double 0.33202802258459052
	.quad	0x3fda6440c20eea28              # double 0.41236895514490124
	.quad	0x3fe11ef57982adcb              # double 0.53502916080963681
	.quad	0x3fbf22ac57e790d8              # double 0.12162282129390023
	.quad	0x3feb46dcd14bf0a2              # double 0.85240021589517689
	.quad	0x3fe66912c605b15c              # double 0.70032633472650785
	.quad	0x3fc8a7d729666914              # double 0.19262208482252474
	.quad	0x3fc0e2a557d3ba78              # double 0.13191668308668958
	.quad	0x3fe1df0f9e784824              # double 0.5584791274179719
	.quad	0x3fd82178c6e19826              # double 0.37704295560831935
	.quad	0x3f91d70b6cecfd00              # double 0.017421892665194783
	.quad	0x3fd4291aba1f0d52              # double 0.31500881362827216
	.quad	0x3fcfe79d85d6ef8c              # double 0.2492558387292515
	.quad	0x3fe329b29ab936ec              # double 0.59884004802162627
	.quad	0x3fe6c3b9b9c06f7b              # double 0.71139227180127251
	.quad	0x3fef606f6acbfae1              # double 0.98052187784909616
	.quad	0x3feb259f3337a15b              # double 0.84834251407032057
	.quad	0x3fe86fdac67076fe              # double 0.76365412481001704
	.quad	0x3fdea7852a019f2a              # double 0.47897461988621848
	.quad	0x3fe25e4c7af70105              # double 0.57401107803892215
	.quad	0x3fe8ec0b37296c0e              # double 0.7788139417056088
	.quad	0x3fa4ba58178a2e50              # double 0.040484192727572421
	.quad	0x3fde334cd9955da0              # double 0.47188111542114974
	.quad	0x3fe20740e458ea80              # double 0.56338543509566819
	.quad	0x3fec6b796e7d624f              # double 0.88811942653689779
	.quad	0x3fe609fd3b04a0ed              # double 0.68871938254326681
	.quad	0x3fc03f84b6d479b4              # double 0.1269384281849405
	.quad	0x3fe9e4d8276ef880              # double 0.80918510152675083
	.quad	0x3fe4bac3c320eb0f              # double 0.64779842482616512
	.quad	0x3fed71af3ab3318a              # double 0.9201275011524086
	.quad	0x3fbd0030514f09a8              # double 0.11328412995411574
	.quad	0x3fc2c55981cbfc28              # double 0.14664763295874761
	.quad	0x3fb3342123b25a70              # double 0.075014182295811471
	.quad	0x3fd2d4b236878c78              # double 0.29423194241662243
	.quad	0x3fc9e89326083bd8              # double 0.20241011960067001
	.quad	0x3fe539feff31af63              # double 0.66332959978670336
	.quad	0x3fc310d63c44b5a4              # double 0.14895132010262302
	.quad	0x3fca5e11eaa193a4              # double 0.20599578816031994
	.quad	0x3fd120f5427fe8cc              # double 0.26763659948450136
	.quad	0x3fd402b41ca72842              # double 0.31266501234188493
	.quad	0x3fe1afae046c892e              # double 0.55269528259331024
	.quad	0x3fee342b4c5f68b0              # double 0.94386830250302545
	.quad	0x3fbde0a5b15e98e0              # double 0.11670909481344749
	.quad	0x3fc5d3ad9757013c              # double 0.17052240266458252
	.quad	0x3fe21a518fa70225              # double 0.56571271950821667
	.quad	0x3fed502f8cd592a3              # double 0.91603829867070308
	.quad	0x3fd74a2d0ae04cc8              # double 0.3639023405277837
	.quad	0x3fe186bbc72db9bd              # double 0.54769696142266577
	.quad	0x3fed9d7d9a9df4c8              # double 0.92547493170391082
	.quad	0x3fd438b4333a64da              # double 0.31596093180412554
	.quad	0x3fecb138bb703322              # double 0.89663349732436282
	.quad	0x3fe60df5bda742ef              # double 0.68920409242318026
	.quad	0x3fa058b209596ac0              # double 0.031926692620535047
	.quad	0x3fefe2c4af4298aa              # double 0.9964316771554611
	.quad	0x3fc85eb04149d954              # double 0.19038966358102505
	.quad	0x3fe5585aa715afb8              # double 0.66703541406376754
	.quad	0x3fc89db9cbd8be2c              # double 0.19231340840768618
	.quad	0x3fb9dc5d399d5980              # double 0.10101874024016944
	.quad	0x3fb480800d0efeb8              # double 0.080085757434967486
	.quad	0x3fe62824a5495871              # double 0.6924002865078035
	.quad	0x3fe6befa1361bc08              # double 0.71081260476592067
	.quad	0x3fe8f910ebfe6435              # double 0.78040357677958261
	.quad	0x3fecef4fa4f1ba24              # double 0.90421278205559874
	.quad	0x3fbec7f346fd2948              # double 0.1202384994805118
	.quad	0x3fe10e91074f3f38              # double 0.53302813937805293
	.quad	0x3fcf47b93495de54              # double 0.24437632625243799
	.quad	0x3fe18c6d256ea088              # double 0.54839188872303257
	.quad	0x3fe009817919c86b              # double 0.50116037037356642
	.quad	0x3fd6e353a8e4a46c              # double 0.35762492650480371
	.quad	0x3fef46ecab37a8d3              # double 0.97740777436163239
	.quad	0x3fc32d090f80dd80              # double 0.14981187111855476
	.quad	0x3fbd1a9826a6e280              # double 0.11368704742097613
	.quad	0x3fa6e8c18f16ae00              # double 0.044744538037175374
	.quad	0x3fe5a9f69658811f              # double 0.67699746479414447
	.quad	0x3fe296ae74a952df              # double 0.58089373383935683
	.quad	0x3fe7e39eeb668103              # double 0.74653573967592057
	.quad	0x3fe38e22154b2579              # double 0.6111002365006889
	.quad	0x3fdb717cfa733faa              # double 0.42880176980997453
	.quad	0x3fb405e434685bb8              # double 0.078214896006428059
	.quad	0x3fd6c17f0c14b798              # double 0.35556007556703539
	.quad	0x3fe39430666da254              # double 0.61183948522109199
	.quad	0x3fd3a901ddab9660              # double 0.30719038627134942
	.quad	0x3fc147d7c51ba374              # double 0.13500496982967614
	.quad	0x3fdf2665c721974e              # double 0.48671860166938508
	.quad	0x3fd5d5b0e88a5312              # double 0.34116766652123076
	.quad	0x3fed23540bb9cd1d              # double 0.91056253709976753
	.quad	0x3fd398d131931192              # double 0.30620221940287096
	.quad	0x3fec51698cae817e              # double 0.88493802525412923
	.quad	0x3feb580d7a55e1de              # double 0.85449861425064078
	.quad	0x3fe1baa791cbd31e              # double 0.55403498149698627
	.quad	0x3fe64cf28abc2470              # double 0.6968929967562314
	.quad	0x3fdbe5bd861dfc22              # double 0.4358972367990096
	.quad	0x3fce4de43d3b7d18              # double 0.23675206174719032
	.quad	0x3fed4619e31156f2              # double 0.91480726575056637
	.quad	0x3fe22ab342d1bd73              # double 0.56771243143695782
	.quad	0x3fd4d95c5fdbd990              # double 0.32576665269098104
	.quad	0x3feff33710cc655c              # double 0.99843934327069971
	.quad	0x3fd15bc2c2b3a856              # double 0.27122563375326558
	.quad	0x3feeab530925d54b              # double 0.95841361796070978
	.quad	0x3fbe178d26b09780              # double 0.11754686541152459
	.quad	0x3fe5df5c276b649a              # double 0.68351562213060224
	.quad	0x3fe219206e3c4a0e              # double 0.56556722193119113
	.quad	0x3feb398a3f160f6d              # double 0.85077392884748593
	.quad	0x3fc119bb6c055fec              # double 0.13359778189146654
	.quad	0x3fe40d5bc40b938d              # double 0.62663067140657491
	.quad	0x3fda06a85204cd3e              # double 0.40665634164470876
	.quad	0x3fe8a93d578ea093              # double 0.77065913296702815
	.quad	0x3feeac625c8fae27              # double 0.95854299620026928
	.quad	0x3fd04105d6f176e6              # double 0.25396867743061902
	.quad	0x3fcab7de79b3c168              # double 0.20873623793114437
	.quad	0x3fd819170a9413ac              # double 0.3765313723854955
	.quad	0x3feba4bd0e0fecad              # double 0.86385967966579857
	.quad	0x3fc09d5210624680              # double 0.12980104255671066
	.quad	0x3fe6c69abe11a39b              # double 0.71174370882828286
	.quad	0x3fe4c2f0e26f90e3              # double 0.6487965033125217
	.quad	0x3fd12bbb89fccc4a              # double 0.2682942245039085
	.quad	0x3fea979e33f8afa0              # double 0.83100805426282775
	.quad	0x3fdbc60160eff772              # double 0.43396028963603961
	.quad	0x3fad6f1c465d4f60              # double 0.057488330449500635
	.quad	0x3fd785206e8ff438              # double 0.36750040814496598
	.quad	0x3fd90c987db7e6fc              # double 0.39139377858337787
	.quad	0x3feb30bf89a588d3              # double 0.84970070728402403
	.quad	0x3fd10bb198003656              # double 0.26633872836905448
	.quad	0x3fea40695f96e4a5              # double 0.82036274595079262
	.quad	0x3fe03798f90537bc              # double 0.50678681027215289
	.quad	0x3fe3f4a7415e18b4              # double 0.62361490981199674
	.quad	0x3fe41f1852629a8b              # double 0.62879577723363533
	.quad	0x3fdc3d3e7b4f558c              # double 0.44123804132444699
	.quad	0x3fe74cce85185630              # double 0.72812582011346727
	.quad	0x3fd04e01a238f890              # double 0.25476113168759529
	.quad	0x3fb193b12998def8              # double 0.068659851699404473
	.quad	0x3feb681efd61ae8e              # double 0.85646008957469788
	.quad	0x3fe02c9f0f2850be              # double 0.50544693909116467
	.quad	0x3fe3acc8993242a3              # double 0.61484174653204027
	.quad	0x3fd405e20a5b2d68              # double 0.31285906802505403
	.quad	0x3feac965d2581198              # double 0.83708468516174417
	.quad	0x3fe5af1943e20e04              # double 0.67762435205844485
	.quad	0x3fe1ce208bad2a50              # double 0.5564120033316815
	.quad	0x3fd7b02ba3274094              # double 0.37012759144727991
	.quad	0x3fe07bc7451f204f              # double 0.51510966778097067
	.quad	0x3fc71d463f6808ec              # double 0.18058088394179295
	.quad	0x3fd181836ef94ada              # double 0.27352987134251594
	.quad	0x3fea88c5e822326d              # double 0.82919593180265638
	.quad	0x3fecb92cd91ffdcb              # double 0.89760439307422624
	.quad	0x3fee8b08f75d9193              # double 0.95447204888891901
	.quad	0x3fd2593d2b9103de              # double 0.28669671301400779
	.quad	0x3fe1f801522835b6              # double 0.5615240673666253
	.quad	0x3fd4c4cad6ba5b36              # double 0.32451125115896973
	.quad	0x3fea49dd065521ed              # double 0.82151652561975441
	.quad	0x3fbde7b671dd7f38              # double 0.11681690483009965
	.quad	0x3fca2a1c8a864d0c              # double 0.2044101406469071
	.quad	0x3fcf134bb0c3cca4              # double 0.24277635699363487
	.quad	0x3fd136ead6ad874a              # double 0.26897688831933364
	.quad	0x3fea670cce1dddf4              # double 0.82507934815561023
	.quad	0x3fd24b81ab47611a              # double 0.28585855223129075
	.quad	0x3fe41b064287e6b7              # double 0.62829888338384066
	.quad	0x3fd8ff323e3b03b8              # double 0.3905759437293983
	.quad	0x3fee10854f984e53              # double 0.93951669259917947
	.quad	0x3fedae78be1cc207              # double 0.92754780894580413
	.quad	0x3fdf6c752165bb3c              # double 0.49099472295249647
	.quad	0x3fe6c517b4ee9853              # double 0.71155915582927276
	.quad	0x3feb4c65ee2d8a31              # double 0.85307594794386976
	.quad	0x3fe49032afdeb139              # double 0.64260229444111083
	.quad	0x3faf118b1e8ec540              # double 0.060680720787227305
	.quad	0x3fb45ae381d6b2c0              # double 0.079511851500408959
	.quad	0x3fd0ff2fdff0aaa0              # double 0.26557537907744155
	.quad	0x3feb13d649884c1b              # double 0.84617151605414465
	.quad	0x3fd0c57f234c65e2              # double 0.26205423781502024
	.quad	0x3fd51c425f513b4e              # double 0.32984980877238435
	.quad	0x3fe788c6d743a7f9              # double 0.73544637721829453
	.quad	0x3fea28b3e8e040f3              # double 0.81746860011665345
	.quad	0x3fe5b8420360ca38              # double 0.67874241504461619
	.quad	0x3fd488bb2108d6f2              # double 0.32084539629009534
	.quad	0x3fe1cf6bac478a44              # double 0.55656989715891614
	.quad	0x3fb34607afc2cb60              # double 0.075287323389415572
	.quad	0x3fe36c0c4df88445              # double 0.60693946102777174
	.quad	0x3fc6dd6330c43c00              # double 0.17863120919398057
	.quad	0x3fe22d23a51579ea              # double 0.56801016085574685
	.quad	0x3fe6ec18a1f97716              # double 0.71632033954276397
	.quad	0x3fe82fa42bdc1985              # double 0.75581558767662271
	.quad	0x3fd2657656dfe6b6              # double 0.28744276508187327
	.quad	0x3fed2cc0eb0c9a3d              # double 0.91171308429768028
	.quad	0x3fdd689ae552d68a              # double 0.45950958628541427
	.quad	0x3f8497788d8de400              # double 0.010054532832997509
	.quad	0x3fa15933ffc111f0              # double 0.03388369080542819
	.quad	0x3fb1d431500c2f00              # double 0.0696440525463764
	.quad	0x3f8dd6590805cd00              # double 0.014568992192585117
	.quad	0x3fbe9ecf06327540              # double 0.11961072827621866
	.quad	0x3fe8aea5ed038ce9              # double 0.77131935397883666
	.quad	0x3fea1bdc01b10840              # double 0.81590080576302881
	.quad	0x3fd7720d8e35a53e              # double 0.36633623969699503
	.quad	0x3fd8d47fc1931de6              # double 0.38796991256501057
	.quad	0x3f9487de8647fc60              # double 0.020049550004838657
	.quad	0x3fd42046df0ec4d8              # double 0.31447002203920027
	.quad	0x3fea3ee47b9abc91              # double 0.82017730847828052
	.quad	0x3fc87269627eb94c              # double 0.19099156674696827
	.quad	0x3fd6ef7ef25d5dba              # double 0.35836766880444382
	.quad	0x3fe06f03d08a8865              # double 0.51355162363712437
	.quad	0x3feafbe10b220563              # double 0.843246957534728
	.quad	0x3fe566d9bdf4e195              # double 0.66880499936000837
	.quad	0x3fcab0c5ab4bd42c              # double 0.20851965774605341
	.quad	0x3f8fe05fde546f80              # double 0.015564679119556279
	.quad	0x3fd17548611ded62              # double 0.27278336986610985
	.quad	0x3fe6976d53c4e53f              # double 0.70598474846989479
	.quad	0x3fe3cff3998ae89b              # double 0.61913471211234439
	.quad	0x3fe359855a1dbbf9              # double 0.60467784500894972
	.quad	0x3fdb923290b3c762              # double 0.43079818850593743
	.quad	0x3fda6c3b1e1cff08              # double 0.41285589161633185
	.quad	0x3fed577b06c83eb3              # double 0.91692878079080342
	.quad	0x3fd5dce18efdf118              # double 0.34160651172693823
	.quad	0x3fde70ff3b44d6fe              # double 0.47564678943614058
	.quad	0x3fe55a377b64984e              # double 0.66726278400597905
	.quad	0x3fde77004e1230f8              # double 0.47601325630309033
	.quad	0x3fe884383b7f4842              # double 0.76614009495302349
	.quad	0x3f8d5c58d65d6a40              # double 0.014336294214151057
	.quad	0x3fdcde8944e6247e              # double 0.4510825322000257
	.quad	0x3fbb6920842f9198              # double 0.10707286097710378
	.quad	0x3feaa1bee4129f63              # double 0.8322443441911499
	.quad	0x3fe0553cc95927eb              # double 0.51040496183236195
	.quad	0x3fe71e73e8d3f69d              # double 0.72246737932410421
	.quad	0x3fe55cd92fb3048f              # double 0.66758403126017807
	.quad	0x3fcbe14ce6636bd4              # double 0.21781312226707306
	.quad	0x3fead5ad23c508c0              # double 0.8385835360170617
	.quad	0x3fea885f3893a390              # double 0.82914696741237215
	.quad	0x3feea8ac2b73319a              # double 0.95808990942309724
	.quad	0x3fd21a77b64d33e0              # double 0.28286545565498322
	.quad	0x3fe11af12d4534dd              # double 0.53453883020270221
	.quad	0x3fe3c741c0759ae3              # double 0.61807334508634104
	.quad	0x3fd49e0055de8f50              # double 0.32214363465958673
	.quad	0x3fcacc7b54ff1e54              # double 0.20936528825972067
	.quad	0x3fcccb9f5d54d7d8              # double 0.22496406609724207
	.quad	0x3fe77f92dd835bd9              # double 0.73432296051293655
	.quad	0x3fde7092bb249886              # double 0.47562092090300501
	.quad	0x3fee67a15a2bf601              # double 0.95015018092789216
	.quad	0x3fdaf6d3caed9f46              # double 0.42131514374931489
	.quad	0x3feda41d21a3ef4d              # double 0.92628342218766024
	.quad	0x3fe577fb772eb451              # double 0.67089627530880069
	.quad	0x3fc46e22f8f64c3c              # double 0.15961110264160705
	.quad	0x3fdbcf7955b72e58              # double 0.43453820582064884
	.quad	0x3fdccaa6b131dc6e              # double 0.44986884407212002
	.quad	0x3fe9637831b65c36              # double 0.79339227399294177
	.quad	0x3fcb36e09b502dac              # double 0.21261222442295258
	.quad	0x3fe1679c8da2efa8              # double 0.5438978926026623
	.quad	0x3fbd66d4e029a320              # double 0.11485033486100038
	.quad	0x3fdb38c88c7a312c              # double 0.42534078329551295
	.quad	0x3fdaa8f6c890fe94              # double 0.41656274401246063
	.quad	0x3fd325253705554c              # double 0.2991421735108204
	.quad	0x3fc93f066ae8c228              # double 0.19723587246109386
	.quad	0x3fe0056ae6758e71              # double 0.50066132556498932
	.quad	0x3fd6737ca6ac654c              # double 0.35079876209927785
	.quad	0x3fefb791b285ee04              # double 0.99115834110074318
	.quad	0x3fed5073edd647b0              # double 0.91607090427918614
	.quad	0x3fe26882a7c94447              # double 0.57525761385671437
	.quad	0x3fedce2c1d2a2bd1              # double 0.93141751953350582
	.quad	0x3fb24cfb2b196e88              # double 0.071487138769436354
	.quad	0x3fd16564a8f0d158              # double 0.27181354997744256
	.quad	0x3fda7eb45ad68fb4              # double 0.41398342963133961
	.quad	0x3fefb4c00741fa66              # double 0.99081422250294504
	.quad	0x3fd374d9051147a2              # double 0.30400681967614152
	.quad	0x3fe3273346ec6dc8              # double 0.59853519298797497
	.quad	0x3feb9a5e25eb51e9              # double 0.86259372144791968
	.quad	0x3fe7aaf60199c83a              # double 0.73961925804747541
	.quad	0x3fef49cdf5eac599              # double 0.97775934248618334
	.quad	0x3fec7d70f3d21ff4              # double 0.89031264897584927
	.quad	0x3fcf0f754e9dfd10              # double 0.2426592477677123
	.quad	0x3fc42cfd688fb554              # double 0.15762298207793413
	.quad	0x3fe3b4b0b4b786ea              # double 0.61580691620130534
	.quad	0x3fca594da98d8194              # double 0.20585032252257618
	.quad	0x3fd1655848b8f2ca              # double 0.27181059934427465
	.quad	0x3fa6b5f29f369c20              # double 0.044356901107043933
	.quad	0x3fe0edeafea1fa4a              # double 0.52904271824793025
	.quad	0x3fdfef82cbaabdb8              # double 0.49899358643866831
	.quad	0x3fd1f85713d3f078              # double 0.28078247963254155
	.quad	0x3fea94c4d9f8bd83              # double 0.83066027233682893
	.quad	0x3fde1f1a768f0c7c              # double 0.47064839914327883
	.quad	0x3feab7a685c75fd5              # double 0.83491827133820584
	.quad	0x3fed451162bba073              # double 0.91468114169857839
	.quad	0x3fc09b4a1d12772c              # double 0.12973905963456767
	.quad	0x3f93a0df78f5eb60              # double 0.019168369062281143
	.quad	0x3f85defd928895c0              # double 0.010679226908062556
	.quad	0x3fe156126471ac28              # double 0.54175681703543876
	.quad	0x3fe1f37cfd28fa58              # double 0.56097268529249344
	.quad	0x3fdcf8218724ec3e              # double 0.45264471242598237
	.quad	0x3fe0bf9573f1df20              # double 0.52338669438811181
	.quad	0x3fe0ac23c8f5e05b              # double 0.52101315736855314
	.quad	0x3fd001bd48f96ff0              # double 0.25010616423037302
	.quad	0x3fee55469f693995              # double 0.94790965208976508
	.quad	0x3fc4b8b0b615d4dc              # double 0.16188630000002646
	.quad	0x3fd76be6f563c4ac              # double 0.36596082652892892
	.quad	0x3fed875554feb494              # double 0.92277018166136537
	.quad	0x3fe7e534f652f47c              # double 0.74672935590901046
	.quad	0x3fd2439cf02e16be              # double 0.28537677245217796
	.quad	0x3fd559721df10eea              # double 0.33358433650958708
	.quad	0x3fd4612791fc81ee              # double 0.31842984444122535
	.quad	0x3fd5d7e9e16d1118              # double 0.34130332006704256
	.quad	0x3fef662fd6eb8c6d              # double 0.98122398354133866
	.quad	0x3f982d8e0093eae0              # double 0.023611277375475193
	.quad	0x3fe6a7a718ee70ba              # double 0.7079654204312853
	.quad	0x3fe73494d8e3f2f3              # double 0.72516863213931371
	.quad	0x3fda429427b7d340              # double 0.41031364325253961
	.quad	0x3fad420edcfffa40              # double 0.057144607999351837
	.quad	0x3fe5ce8ee4decdf4              # double 0.681464621555675
	.quad	0x3fef49d6d2ab0527              # double 0.97776356836417199
	.quad	0x3fe3f3300c05c17e              # double 0.62343599651471471
	.quad	0x3fee774943129919              # double 0.95206130123259236
	.quad	0x3fe99b421690fd6e              # double 0.80020241172307549
	.quad	0x3fecdceb141da8f9              # double 0.90196756295088598
	.quad	0x3fe12385fc6968fd              # double 0.53558635043307812
	.quad	0x3fddbcb6dfc19edc              # double 0.46464320994571806
	.quad	0x3fd5b1e6bd795928              # double 0.33898323539087238
	.quad	0x3f78894d8aa0b480              # double 0.0059903172459999654
	.quad	0x3f668f0c67f4e100              # double 0.002753757696748349
	.quad	0x3fe6141047cbb0bd              # double 0.68994916937437945
	.quad	0x3fd21550f2eee842              # double 0.28255103801678072
	.quad	0x3fcce2086cd3cfc0              # double 0.22564797700726835
	.quad	0x3fe5f6a950f1c94f              # double 0.68636003312557559
	.quad	0x3fed214f2b426b0e              # double 0.91031607102499534
	.quad	0x3fb0c73cc3250998              # double 0.065540120737784924
	.quad	0x3fb2d6ad2a49f100              # double 0.073588202309057493
	.quad	0x3fedad80b31cae6a              # double 0.92742953284091567
	.quad	0x3fe7282019795a01              # double 0.72364811873814017
	.quad	0x3fc2f674cae07acc              # double 0.14814624696824408
	.quad	0x3fe27b8af7ed1e9b              # double 0.57758091376395571
	.quad	0x3fad147df796a0f0              # double 0.056796967004005938
	.quad	0x3fe00705eb43a6a0              # double 0.50085731458712601
	.quad	0x3fd2c637d59576ba              # double 0.29334827287480503
	.quad	0x3fe67bdee86d5040              # double 0.70262093921565594
	.quad	0x3fe677d019fbc1d8              # double 0.70212559771430971
	.quad	0x3fa1920f0e22a240              # double 0.034317465281962445
	.quad	0x3fe74a534393d4ee              # double 0.72782290648197345
	.quad	0x3fe61300f33cdd6f              # double 0.68981978900312224
	.quad	0x3fd5953e91283f3c              # double 0.33723415542134538
	.quad	0x3fe137260fd7cc7c              # double 0.53798201650933164
	.quad	0x3fa7778e89228b10              # double 0.045834020843605328
	.quad	0x3fb4c5103dba2058              # double 0.081131949491579092
	.quad	0x3fe5a42ca1800c91              # double 0.6762908129025097
	.quad	0x3fc169b9c70a8478              # double 0.13603899210741921
	.quad	0x3fd6fb1b80c55512              # double 0.35907638144756604
	.quad	0x3fe8ca0facb0ba89              # double 0.7746656773432089
	.quad	0x3f55ea5c9130e000              # double 0.0013376144386381128
	.quad	0x3fdad0fa16c70f98              # double 0.41900493835805142
	.quad	0x3f7b82b6e3faae00              # double 0.0067164558565013799
	.quad	0x3fe9dbf31d69a1f4              # double 0.80809932465223122
	.quad	0x3fb9bcaa48a42de0              # double 0.10053505204648827
	.quad	0x3fe26383c07b8b5e              # double 0.5746477851319971
	.quad	0x3fe9a1f7304b0cf2              # double 0.80102118904360808
	.quad	0x3fed43750d5c2633              # double 0.91448452576987049
	.quad	0x3fec3338d4233f65              # double 0.88125268395559131
	.quad	0x3fc341f35e041c00              # double 0.15045015421512176
	.quad	0x3fe4326eb37528a0              # double 0.63115630197832573
	.quad	0x3fe60a12d58ebf66              # double 0.68872968397589029
	.quad	0x3fe19b7f041a0cbb              # double 0.55023146439670911
	.quad	0x3fde5e16894b6e52              # double 0.47449267776184911
	.quad	0x3fe18ebd5df1e1f0              # double 0.54867428158382658
	.quad	0x3feaf4870f253c1f              # double 0.84234955747695384
	.quad	0x3fdc54851697f5b8              # double 0.44265868383794382
	.quad	0x3fe4ad5d319869f4              # double 0.64616260229678213
	.quad	0x3fdc6b8f98f4ae3c              # double 0.44406499802673571
	.quad	0x3fe4e6b8aca162b3              # double 0.65316423146130942
	.quad	0x3fef7b0ede09b0c6              # double 0.98377173773544579
	.quad	0x3fd6de9598063ad4              # double 0.35733547063948135
	.quad	0x3fc07e4a7b8ac8ec              # double 0.12885409385996327
	.quad	0x3fb92ba63a151310              # double 0.098322285824064659
	.quad	0x3fcb7bac5756b13c              # double 0.21471170677740214
	.quad	0x3fc1fe26f3c397e8              # double 0.14056860830822804
	.quad	0x3fe966bc2efeedc5              # double 0.7937909047972701
	.quad	0x3fee07f92bf936bb              # double 0.93847330654690297
	.quad	0x3fe7c150795ae755              # double 0.74234794332663034
	.quad	0x3fe3a8e64d8cb788              # double 0.61436762949391355
	.quad	0x3fe2d287e6f4407b              # double 0.58819956882690805
	.quad	0x3feb4f2e05862c3a              # double 0.8534154994862384
	.quad	0x3fe9c7ae516ce0dc              # double 0.80562511351947874
	.quad	0x3fb3ce63e6b89868              # double 0.077368015125644285
	.quad	0x3febd6df7b3d307a              # double 0.86997961111184385
	.quad	0x3fe6e2457965eaff              # double 0.71512101851052978
	.quad	0x3fe9dd7d59955c51              # double 0.80828731056943515
	.quad	0x3fcda3359990f56c              # double 0.23154325483657645
	.quad	0x3fe0f8d1f4f3e10a              # double 0.53037355272593456
	.quad	0x3fe284788f29521b              # double 0.57867076836788855
	.quad	0x3fd4904dd54100a8              # double 0.32130761933877716
	.quad	0x3fee361c3d853d5d              # double 0.9441052629062302
	.quad	0x3fd807ad6064a656              # double 0.37546858228106339
	.quad	0x3fe64c90f1ac9758              # double 0.69684645845402837
	.quad	0x3fd377a34c64820e              # double 0.30417711696830529
	.quad	0x3fe6452bed177e5a              # double 0.69594379717814125
	.quad	0x3fe5aaf5022a0f10              # double 0.67711878226006839
	.quad	0x3fecf63a6cc6929f              # double 0.90505715604065873
	.quad	0x3fbf8a460367b068              # double 0.12320363600855588
	.quad	0x3fc27b87a4786150              # double 0.14439483195088565
	.quad	0x3fdfa9f11adad8f2              # double 0.49474742529436277
	.quad	0x3fed655dda26e9dd              # double 0.91862385375798861
	.quad	0x3fe61f08e1ed6c2e              # double 0.69128841520740081
	.quad	0x3fe4d903fff233fe              # double 0.65149116506074711
	.quad	0x3fda266ae27cae4a              # double 0.4085948192393728
	.quad	0x3fec1f1201df80c2              # double 0.87879276624519087
	.quad	0x3fee3e7888bd90dd              # double 0.94512583453299792
	.quad	0x3fe43611bc300450              # double 0.63160025363334604
	.quad	0x3fd72c10ab88d040              # double 0.36206452132615041
	.quad	0x3fd7483e1e6bcc62              # double 0.36378434153374972
	.quad	0x3fc952c3b4e5b9c4              # double 0.19783827145461264
	.quad	0x3feeab917ae1dd98              # double 0.95844339371153619
	.quad	0x3fcfae3b3031e404              # double 0.24750461438432592
	.quad	0x3fdd47e47835ab52              # double 0.45751296748374159
	.quad	0x3fef2f87547764e6              # double 0.97455183503475662
	.quad	0x3fd3e6a3fa98327e              # double 0.31095218155022752
	.quad	0x3f6d6b20d8bbb800              # double 0.0035911218200146422
	.quad	0x3fc5bc623055a550              # double 0.16981150970540648
	.quad	0x3fe628af1906ece6              # double 0.69246630561920308
	.quad	0x3fc341848b9cf028              # double 0.1504369432167334
	.quad	0x3fb41c1affd2b3c8              # double 0.078553855377960891
	.quad	0x3fd30eeebeab71e8              # double 0.29778641338432843
	.quad	0x3fefb7bdc5e40bc9              # double 0.99117935801074807
	.quad	0x3fe8f085ebbfd18b              # double 0.77936073345931456
	.quad	0x3fdc7682330725f0              # double 0.44473319037623948
	.quad	0x3fe6e3deada3bf27              # double 0.71531614221564588
	.quad	0x3fe1b9f4056540f0              # double 0.55394936612904466
	.quad	0x3feb76cb2c28ba23              # double 0.85825117707083043
	.quad	0x3fea661c9357080a              # double 0.82496479775750342
	.quad	0x3fe91c53628c3c81              # double 0.78470772979370917
	.quad	0x3fd0dff3ef1160dc              # double 0.26366899820778911
	.quad	0x3febd3c18a12e1b5              # double 0.86959912269144601
	.quad	0x3feab881930303f2              # double 0.83502272332418515
	.quad	0x3fedd4d542cbc740              # double 0.93223059698195953
	.quad	0x3fee17417fa5b0c4              # double 0.94033884936427414
	.quad	0x3fb7e2ca19d081f0              # double 0.093304282476772248
	.quad	0x3fe3e1ffd6e1d1cb              # double 0.62133781403695687
	.quad	0x3fe5ab86e053913e              # double 0.67718833745724516
	.quad	0x3fedd343d35b2906              # double 0.9320391777085042
	.quad	0x3fc61fcdeaca9850              # double 0.17284559215949225
	.quad	0x3fe47eb701673fde              # double 0.64046812318883517
	.quad	0x3fe728c21e1cbaae              # double 0.72372537499707845
	.quad	0x3fcdd04c02524a50              # double 0.23291921723701359
	.quad	0x3fe7fa62574b131e              # double 0.74931447076287205
	.quad	0x3fe01e4c996887f8              # double 0.50369863474429533
	.quad	0x3fead2fef175b9c7              # double 0.83825633201723171
	.quad	0x3fd9863bd82ea5e8              # double 0.3988179789690478
	.quad	0x3fe713c381ed9b45              # double 0.72116256119338884
	.quad	0x3feb3cab5ec272bb              # double 0.85115593440749338
	.quad	0x3fefdf0127faa001              # double 0.99597223099135601
	.quad	0x3fecfb19d506406d              # double 0.9056519661553587
	.quad	0x3fe1c8b353df05ed              # double 0.55574957257357271
	.quad	0x3fc2eddaa65e492c              # double 0.14788373111202568
	.quad	0x3fd3197493a4d50e              # double 0.29842867296550046
	.quad	0x3fc00adee0d93bdc              # double 0.12533174494680466
	.quad	0x3fcb52793df897d4              # double 0.21345439458781235
	.quad	0x3feec31f658127b7              # double 0.96131868195629166
	.quad	0x3fa918b6db37b8e0              # double 0.049016680011719549
	.quad	0x3fe6c7d2ae6a7b1b              # double 0.711892452865729
	.quad	0x3fd12b58925305f4              # double 0.26827062882884367
	.quad	0x3fea0588eb244eb7              # double 0.81317563940179738
	.quad	0x3fc0df0b693a0400              # double 0.13180678022402503
	.quad	0x3fedea575fa311b1              # double 0.93485611609553676
	.quad	0x3fee29d3917c35a5              # double 0.94260576644017091
	.quad	0x3fca48d5659e7fcc              # double 0.20534770452377271
	.quad	0x3fdd363a50237e64              # double 0.45643480135001924
	.quad	0x3fdff1a07b6e2400              # double 0.49912273458227219
	.quad	0x3fe252c168b83fb7              # double 0.57260199025221581
	.quad	0x3feebddba478d205              # double 0.96067602275303498
	.quad	0x3fd48a3df70fddc6              # double 0.3209376251902224
	.quad	0x3fe465259257bf40              # double 0.63734701712198927
	.quad	0x3fec4eaec2574d89              # double 0.88460481602889829
	.quad	0x3fe808a27b8be7b5              # double 0.75105404024292588
	.quad	0x3fecc53582947813              # double 0.89907336715600861
	.quad	0x3fe4e744dd077dbd              # double 0.65323107881334119
	.quad	0x3fec7a697a73c0a0              # double 0.88994287411152939
	.quad	0x3fd8005c11de2d44              # double 0.37502195115003567
	.quad	0x3fed0a9765257b6c              # double 0.90754289393576703
	.quad	0x3fd32776f4f58c9e              # double 0.29928373262209529
	.quad	0x3fd3c7312c32c190              # double 0.30903271976696889
	.quad	0x3fe0690016ca2faf              # double 0.51281742526179197
	.quad	0x3fb42dcc9b17ef08              # double 0.078823840965864034
	.quad	0x3fdfa8af543613e4              # double 0.49467070792917256
	.quad	0x3fdd176483f81416              # double 0.45455277335742161
	.quad	0x3feeda10d43036a3              # double 0.96411935275110172
	.quad	0x3fea4d22e7e82761              # double 0.82191605848604976
	.quad	0x3fe971b1782f2bd5              # double 0.79512856935013565
	.quad	0x3fc0db91fb90a6dc              # double 0.13170075210046306
	.quad	0x3fe310a13bf75357              # double 0.5957800074780647
	.quad	0x3fcf14983fc992ec              # double 0.24281600107783363
	.quad	0x3fdf76fbb2280bb0              # double 0.49163715742195802
	.quad	0x3fe1619651030fe1              # double 0.54316249678276673
	.quad	0x3fc9599ee8bc3a64              # double 0.19804750789667758
	.quad	0x3fe2f04467d7f98d              # double 0.59182949335063173
	.quad	0x3fe44f129bb62884              # double 0.6346524277917216
	.quad	0x3fc15938a58b6f40              # double 0.13553531726108226
	.quad	0x3fed2e858e68eb37              # double 0.91192891897603701
	.quad	0x3fe69ea722f3b066              # double 0.70686680628342624
	.quad	0x3fdb5ae3115537de              # double 0.42742230122246194
	.quad	0x3fd00c307f82a90e              # double 0.25074398472010351
	.quad	0x3fe971145d34bf8c              # double 0.79505365566545682
	.quad	0x3fe33289dd51b55a              # double 0.5999192545547587
	.quad	0x3f6b89dd1b29f000              # double 0.0033616369703945992
	.quad	0x3fe208263770e52f              # double 0.56349478557891597
	.quad	0x3fd2e8f88398d09e              # double 0.29546940661681187
	.quad	0x3fde8ca12a44852e              # double 0.47733334663105864
	.quad	0x3fd27a66478532f6              # double 0.28872067436604654
	.quad	0x3fe9f5bc6bf0934e              # double 0.81124707300168963
	.quad	0x3fa9ef90b60d9420              # double 0.050655863021155989
	.quad	0x3face9f576860260              # double 0.056472464292714575
	.quad	0x3fe5e59e5aab1aca              # double 0.68427961071650967
	.quad	0x3fd1168ca666360c              # double 0.2670013070099635
	.quad	0x3fec6a800a1b32ca              # double 0.88800050710559586
	.quad	0x3fd48faefbf03a3c              # double 0.32126974681242237
	.quad	0x3fc508097172cc6c              # double 0.16430776633714872
	.quad	0x3fe29f011b21857d              # double 0.5819097070599778
	.quad	0x3f9137147667f500              # double 0.016811675764974332
	.quad	0x3fdcdb4ba291f13c              # double 0.45088473201737478
	.quad	0x3fda72d3d9a029d6              # double 0.41325851681236025
	.quad	0x3fed37b0b76b2cd6              # double 0.91304813217120784
	.quad	0x3fe0d2081070fe12              # double 0.52563861094671638
	.quad	0x3fc6b7ca8cb51ac4              # double 0.17748386259537174
	.quad	0x3fdb82bbaa9548ce              # double 0.42985431345472314
	.quad	0x3fe6c10a0c154338              # double 0.7110643611905294
	.quad	0x3febbd2d924b38cb              # double 0.8668430192281219
	.quad	0x3fe16d690be5e977              # double 0.54460575412603773
	.quad	0x3feabef13ecd0771              # double 0.83580839410590901
	.quad	0x3fe95791515e7fe8              # double 0.79193941013727187
	.quad	0x3fdabe41bff3c27e              # double 0.4178623556645461
	.quad	0x3fd43be7856a786e              # double 0.31615627316376205
	.quad	0x3f9eeea9343fea80              # double 0.030207294286791697
	.quad	0x3fda0dd9b7b166c2              # double 0.40709536494032872
	.quad	0x3fac1f839e094e90              # double 0.054927933732554668
	.quad	0x3feb329b81e536c1              # double 0.84992766733349623
	.quad	0x3feb0c043cd4502a              # double 0.84521686440212318
	.quad	0x3fe4e5107289cf95              # double 0.65296194430128429
	.quad	0x3fd72f1b5e026b3a              # double 0.36225017719850749
	.quad	0x3fdff86c18883d66              # double 0.4995374908039224
	.quad	0x3fc7667482cfb714              # double 0.1828141821601369
	.quad	0x3f865201bf315500              # double 0.010898603102911242
	.quad	0x3fd3c19418a7bca4              # double 0.30869009406792203
	.quad	0x3fe8a7a33001fe12              # double 0.77046355606575134
	.quad	0x3feca38776bc761c              # double 0.89496205511722193
	.quad	0x3fbe4c922ed42ab0              # double 0.11835588115006135
	.quad	0x3fe70e97d631b1aa              # double 0.72053138575352205
	.quad	0x3fbe18a4d40f6c78              # double 0.1175635354733674
	.quad	0x3f98100e2a891760              # double 0.023498746248399427
	.quad	0x3fb5704c9663e380              # double 0.083744799343447695
	.quad	0x3fdb7dbdb70b3bb4              # double 0.42954962611559755
	.quad	0x3fec9f810b4099b6              # double 0.89447071264003486
	.quad	0x3fd65115014acb6e              # double 0.34869885564983505
	.quad	0x3fe200363f5d6064              # double 0.56252586723259101
	.quad	0x3fe50651ac985443              # double 0.65702136716812054
	.quad	0x3fe4d7f970959704              # double 0.6513640593445591
	.quad	0x3fb0d4725558bdd8              # double 0.065741678082069099
	.quad	0x3fee0357e0cef3c4              # double 0.9379081145085526
	.quad	0x3fe4e0cd0b316484              # double 0.65244152246590703
	.quad	0x3fe58ab7ebb04819              # double 0.67318340332917892
	.quad	0x3fe81ccd86cbc118              # double 0.75351597144438909
	.quad	0x3fc06a7c9b782580              # double 0.12824971762919901
	.quad	0x3fdc234269f6089a              # double 0.43965206477890606
	.quad	0x3fefe224c783544a              # double 0.9963554283846261
	.quad	0x3fedc58dcc5429bf              # double 0.93036546619378402
	.quad	0x3fe588af7854ffb6              # double 0.67293523313855164
	.quad	0x3fe948def62e0fc1              # double 0.79014537889496961
	.quad	0x3feb0431b085bd02              # double 0.84426197506937251
	.quad	0x3feba82c2f1a48a1              # double 0.86427888107052209
	.quad	0x3fdab9262194c0ea              # double 0.41755059508706316
	.quad	0x3fd58a514e996100              # double 0.33656723666855726
	.quad	0x3fe41b73e7cfef3a              # double 0.62835116649464529
	.quad	0x3fedda6bc7d9225f              # double 0.93291272194717212
	.quad	0x3fc1834a308dc748              # double 0.13681914683143703
	.quad	0x3fd4a11f8d4990cc              # double 0.32233418271631531
	.quad	0x3fc49d17a2e2b0ec              # double 0.16104407742876192
	.quad	0x3fe094e357d2bacd              # double 0.51817481186830039
	.quad	0x3fd993519a55f494              # double 0.39961662361003758
	.quad	0x3fd2564bea3b9c3c              # double 0.28651712297727605
	.quad	0x3fe90cc63842771b              # double 0.78280936229905096
	.quad	0x3fe96b9d46824ff7              # double 0.79438651820464556
	.quad	0x3feb5c3bfc65040c              # double 0.85500907226389832
	.quad	0x3fd5bdd91b5bc01e              # double 0.33971240684241077
	.quad	0x3fe99acfd20b2f5e              # double 0.80014792465361118
	.quad	0x3fe12a6649eab6e8              # double 0.5364257281960052
	.quad	0x3fabf10021092fb0              # double 0.054573062927914306
	.quad	0x3fd502a1cc0ac6f0              # double 0.32828564573274743
	.quad	0x3fc5d0e0cc017914              # double 0.17043695412844129
	.quad	0x3fee103f1c066a8d              # double 0.93948321794171508
	.quad	0x3fe6c85495856f6a              # double 0.71195439532628524
	.quad	0x3febb5afd0ed12e5              # double 0.86592856222031556
	.quad	0x3fc40cd67ce73f9c              # double 0.15664177988810202
	.quad	0x3fde19009f02670c              # double 0.47027602699527971
	.quad	0x3fe0ef7cde21849b              # double 0.52923434624621579
	.quad	0x3feb655f33f2963c              # double 0.85612449785248356
	.quad	0x3fd949eb9b19d934              # double 0.39513673922137404
	.quad	0x3fd7e28765e967ce              # double 0.37320122673338296
	.quad	0x3fd00d4eecae9930              # double 0.25081227410773277
	.quad	0x3fe6d288dcf81b3b              # double 0.71320002706565988
	.quad	0x3fcbfe0cbc8c8ad0              # double 0.21869048315519146
	.quad	0x3feb82049a64e063              # double 0.85962133555495901
	.quad	0x3fc1f138753adda8              # double 0.14017396663778681
	.quad	0x3fc274aac1878ffc              # double 0.14418539476093872
	.quad	0x3fbd25b95a9f2c80              # double 0.11385687315412163
	.quad	0x3fe23638ee15c418              # double 0.56911894322377332
	.quad	0x3fced0929d368d3c              # double 0.24074013401432548
	.quad	0x3fe94a9cecfbfb2b              # double 0.79035803113933889
	.quad	0x3fe4b36548121677              # double 0.64689888073253499
	.quad	0x3feb4a84bdbce30a              # double 0.85284649904414889
	.quad	0x3fe9ad84bdee3a76              # double 0.80243146034065549
	.quad	0x3f984a6c4a1e3480              # double 0.023721401237299933
	.quad	0x3fe1cf123a526b28              # double 0.5565272463894404
	.quad	0x3fd8dcb17b9398ba              # double 0.38847004955313091
	.quad	0x3fbe189eaaafae78              # double 0.11756316821236534
	.quad	0x3fd802d168869960              # double 0.37517199714274874
	.quad	0x3fe6233099e9c42a              # double 0.69179563580667502
	.quad	0x3fd87017dd5eb8aa              # double 0.38184162729420257
	.quad	0x3fe18db13446ab4f              # double 0.54854641161123563
	.quad	0x3fe248cb964360b3              # double 0.57138614033012514
	.quad	0x3fee7732bb5bb627              # double 0.95205055802734229
	.quad	0x3fe173f87587acdf              # double 0.5454065604693844
	.quad	0x3fb519e014cbed08              # double 0.082426076009074589
	.quad	0x3fc5123268261984              # double 0.16461782536880432
	.quad	0x3fec4956afca4388              # double 0.88395246824266938
	.quad	0x3fed4c1cfb48056a              # double 0.91554116323838497
	.quad	0x3fda3b55f54366ac              # double 0.40987156821720805
	.quad	0x3fe6fc622aa36922              # double 0.71830852821156932
	.quad	0x3f90833977ad3020              # double 0.016125581674074962
	.quad	0x3fe059a6a3bc7ecc              # double 0.51094371776340486
	.quad	0x3fe200fdc2752eeb              # double 0.56262100200680487
	.quad	0x3fe66035dc243be9              # double 0.69924443241495482
	.quad	0x3fe37ebca7cef64a              # double 0.60922081732832933
	.quad	0x3fe79948515a65c6              # double 0.73746124161987647
	.quad	0x3fe8b6d73ef01ba6              # double 0.77231943409502857
	.quad	0x3fe72455dae0d359              # double 0.72318547010091117
	.quad	0x3fea26a9c95e15f4              # double 0.81721963243097528
	.quad	0x3fab043cced23890              # double 0.052766704794621977
	.quad	0x3fd93442b05c76d8              # double 0.39381472800037676
	.quad	0x3fa0019aea215550              # double 0.031262246208522471
	.quad	0x3fe46c408ef1aa77              # double 0.63821437758208688
	.quad	0x3fedd07dec30f822              # double 0.93170066958532893
	.quad	0x3fef9cecf097f305              # double 0.98790595045974838
	.quad	0x3fef7779f65a7de6              # double 0.98333452335276372
	.quad	0x3fe8be9c867494d2              # double 0.7732679964143705
	.quad	0x3fef2afc79119034              # double 0.97399734159672002
	.quad	0x3fb772ec98a99a70              # double 0.091597354193803104
	.quad	0x3fdb57efb216a104              # double 0.42724220649189726
	.quad	0x3fd9bab176a2934c              # double 0.40201984963851056
	.quad	0x3fd1af54ad8cfda6              # double 0.27632634113612153
	.quad	0x3fe86a6b097ebc1d              # double 0.76299049238685124
	.quad	0x3fe11184b3cb6d1d              # double 0.53338847271098511
	.quad	0x3fe345e49226649b              # double 0.60228184266010787
	.quad	0x3f80391a1cb04740              # double 0.0079214134221136101
	.quad	0x3fc45154db97db68              # double 0.15873203966449556
	.quad	0x3febf61dbe87c442              # double 0.8737934800429985
	.quad	0x3fefbc442a41fd06              # double 0.99173172238798268
	.quad	0x3fe72f31b3e4adbc              # double 0.72451100478558983
	.quad	0x3fead21d8ffb798b              # double 0.83814886209056405
	.quad	0x3feb5a9a988cddda              # double 0.85481004519436543
	.quad	0x3fc517c9533ee0b0              # double 0.1647884041283354
	.quad	0x3f91d07f4c1242a0              # double 0.017396916406655749
	.quad	0x3fde100566005734              # double 0.46972784958903735
	.quad	0x3fe4cc15a042820d              # double 0.64991265583745561
	.quad	0x3f92e874d278de00              # double 0.018464875551414295
	.quad	0x3fe9491782d85cd4              # double 0.79017234378525325
	.quad	0x3febc67d2d351341              # double 0.86797961072498009
	.quad	0x3fcdface380cc304              # double 0.23421647774514309
	.quad	0x3fd09790777cdf3a              # double 0.25925075215080862
	.quad	0x3fd4f2a3ddf8570c              # double 0.3273095767666383
	.quad	0x3fd50d994b6c04ce              # double 0.32895500531601563
	.quad	0x3f9fa6b0338a5d60              # double 0.030909302850515075
	.quad	0x3fe03810384a222b              # double 0.50684367174205158
	.quad	0x3febe8ec39f9d3b2              # double 0.87218295405783963
	.quad	0x3fb605c9c0a0cf50              # double 0.086025819328651609
	.quad	0x3fe4da6310d3daa4              # double 0.65165856634742569
	.quad	0x3fefbd3ec15c4eb1              # double 0.99185121312844704
	.quad	0x3fe36b5aa833a410              # double 0.60685475208186013
	.quad	0x3fdd11bcb54e11bc              # double 0.45420758920252147
	.quad	0x3fcef8644ce6ff50              # double 0.24195531611439458
	.quad	0x3fd968bedd034760              # double 0.39701816161424652
	.quad	0x3fcf7584f1154ef0              # double 0.24577390452997561
	.quad	0x3feb1b499b4b7608              # double 0.84708099680909843
	.quad	0x3fd7ea39abb3a20e              # double 0.37367097633117019
	.quad	0x3fbb6b81e5724f78              # double 0.10710918285104565
	.quad	0x3fd62127832a2ab8              # double 0.34577358063749442
	.quad	0x3feb9cb2bd20a776              # double 0.86287819804168353
	.quad	0x3fe7a25926a1fde8              # double 0.73856790109124137
	.quad	0x3fef5a47dc4ad155              # double 0.97977059388953569
	.quad	0x3fd49b2a75221dde              # double 0.32197057188792921
	.quad	0x3fbb4bffa004b340              # double 0.10662839562128301
	.quad	0x3fe5ba046d40b057              # double 0.67895718897262725
	.quad	0x3fadc265ba882560              # double 0.058123759288785548
	.quad	0x3fecefebe6334cd8              # double 0.90428729020131993
	.quad	0x3febb9f888a3a82c              # double 0.86645151793823549
	.quad	0x3fe82f77b48bf1ae              # double 0.75579438460368009
	.quad	0x3fdd1823f40dedac              # double 0.45459841569364801
	.quad	0x3fee700c3b40fb7d              # double 0.95117770741477126
	.quad	0x3febcb55c5fe9956              # double 0.86857117338949297
	.quad	0x3fda507c3f63fa7a              # double 0.41116243544085018
	.quad	0x3fe7fb8b22773003              # double 0.74945599299962884
	.quad	0x3fe8072008ed95eb              # double 0.75086976760638657
	.quad	0x3fef3d7ad27d2d54              # double 0.97625485526206512
	.quad	0x3fc44ee718fe2034              # double 0.15865792007775925
	.quad	0x3fc6e5ade14f5ad8              # double 0.17888425351585258
	.quad	0x3fef7881d5c61ac7              # double 0.98346034767822565
	.quad	0x3feb6943e5dae4de              # double 0.85659975904050234
	.quad	0x3fe1011d6f639046              # double 0.53138610606811976
	.quad	0x3fe127e18b7ba54f              # double 0.53611829035541259
	.quad	0x3fef92b4d79e267d              # double 0.98665849793287885
	.quad	0x3fc6a2477cd1378c              # double 0.1768273696383712
	.quad	0x3fe166dfd8f7abd2              # double 0.54380791069467649
	.quad	0x3fe1db3db55f900c              # double 0.55801282333823243
	.quad	0x3f96410a02c8ad40              # double 0.021732479495921497
	.quad	0x3feefc562d3e3261              # double 0.96830281101717841
	.quad	0x3fe1362d9a032cd8              # double 0.53786354141757453
	.quad	0x3feb4c6c68b8277a              # double 0.85307903721807965
	.quad	0x3fbc48091c13cb18              # double 0.11047417579156293
	.quad	0x3fed1c60f381eefe              # double 0.90971419868534986
	.quad	0x3fbc7b1dbd671720              # double 0.11125360368813775
	.quad	0x3fd94452743ee78c              # double 0.39479504921075015
	.quad	0x3feb7da390cb37a4              # double 0.85908678321878939
	.quad	0x3fc24029bedb3b78              # double 0.1425831014552974
	.quad	0x3feb8f9fbc67783c              # double 0.86128222272578325
	.quad	0x3feb925b7d777734              # double 0.86161589150626705
	.quad	0x3fc12895dc445090              # double 0.13405106787888998
	.quad	0x3fe1a74d2ce1a54a              # double 0.55167254224685647
	.quad	0x3fe641205ed5316e              # double 0.69545000574139038
	.quad	0x3fc9a2571ef03a80              # double 0.20026673327125266
	.quad	0x3fb818a42dbd0530              # double 0.094125996748535056
	.quad	0x3febf6f374fbb176              # double 0.87389538620258977
	.quad	0x3fbd150cd9117ee0              # double 0.11360245036621164
	.quad	0x3fe3715cc06b03c3              # double 0.60758817273755772
	.quad	0x3f9eef873a8e9ce0              # double 0.030210602711716272
	.quad	0x3fd2384a77cf756a              # double 0.28468572330697006
	.quad	0x3fe5bdb01ef54249              # double 0.67940527006619178
	.quad	0x3fc750577ed8bec0              # double 0.18213933652577019
	.quad	0x3fe441d95746ca7b              # double 0.63303820654102994
	.quad	0x3feb5eef34a7f813              # double 0.85533867153549392
	.quad	0x3fe058199cd68011              # double 0.51075440056229315
	.quad	0x3feb6b94a7dddd04              # double 0.85688240801292225
	.quad	0x3fc77bcc88315bcc              # double 0.18346554422416117
	.quad	0x3fe3e6be35dda5d1              # double 0.62191687126795092
	.quad	0x3fe3990601334306              # double 0.61242962107107313
	.quad	0x3fe4d69c1af1346c              # double 0.65119748365544927
	.quad	0x3fea8b9305ef2d25              # double 0.82953787955321856
	.quad	0x3fc6d1dde088dde0              # double 0.17827962363820316
	.quad	0x3fbd64f06fbd4c48              # double 0.11482146003736304
	.quad	0x3fefe480ff345423              # double 0.99664354176150415
	.quad	0x3fd353d2cd1adb42              # double 0.30199117688919241
	.quad	0x3fde65501a110b6a              # double 0.47493364854397291
	.quad	0x3f7c323c56780d00              # double 0.0068838459915270267
	.quad	0x3fc520012e90b5b0              # double 0.16503920339293421
	.quad	0x3fc9d74aaadbcde4              # double 0.20188268034654222
	.quad	0x3fc00226c716d3cc              # double 0.12506565781737178
	.quad	0x3fb7188f32c413d0              # double 0.090218496221566413
	.quad	0x3fe202cc9a0a85c9              # double 0.5628417023291884
	.quad	0x3fe8e7c050aa4c55              # double 0.77828994517256922
	.quad	0x3fd9a978c2f2290e              # double 0.40096873319329596
	.quad	0x3feb5f80dbbe00ea              # double 0.85540812414549561
	.quad	0x3fcb8f7ce5d43d1c              # double 0.21531640264627405
	.quad	0x3fdb74e439892600              # double 0.42900949114536502
	.quad	0x3fc07ac783030fc8              # double 0.12874692818706834
	.quad	0x3fe6723cb9cc6928              # double 0.70144497193112887
	.quad	0x3fe2d80a7e871b40              # double 0.5888721915478996
	.quad	0x3fa105ca476a5b70              # double 0.033247300355632059
	.quad	0x3fd625991986306e              # double 0.34604480259509429
	.quad	0x3fa88885865db060              # double 0.047916577007385497
	.quad	0x3fedc507a2ffddeb              # double 0.93030149303279808
	.quad	0x3f9194ec5dbe65c0              # double 0.017169659825958083
	.quad	0x3f9c5c541e551920              # double 0.027695955611556689
	.quad	0x3fce87ea7f7520c4              # double 0.23852282737266794
	.quad	0x3fdb3971b14cb3ce              # double 0.42538111032882575
	.quad	0x3fd013bc91c96b9a              # double 0.25120462643615726
	.quad	0x3fa368b6471e9c10              # double 0.037908264333332053
	.quad	0x3fd2ce84d01f7ee4              # double 0.29385490726961749
	.quad	0x3fca30844a371848              # double 0.20460561393537291
	.quad	0x3fb44d6c08815308              # double 0.079306366039713194
	.quad	0x3fef9af9ae8114a2              # double 0.9876678856168335
	.quad	0x3fe0cf782577c5ff              # double 0.52532584493582124
	.quad	0x3f58e5614b991200              # double 0.001519532217927666
	.quad	0x3fe948077fee8c11              # double 0.79004263865170021
	.quad	0x3fb0aacfbdfbbc10              # double 0.065106376536036459
	.quad	0x3fb3d360118bcec0              # double 0.077444080623361167
	.quad	0x3fd7eb1d2f15d796              # double 0.37372521970916617
	.quad	0x3fd380ccb4f276a8              # double 0.30473630591027723
	.quad	0x3f999ee0cc28cae0              # double 0.025020134411714134
	.quad	0x3fe1f877734871dd              # double 0.56158039585312347
	.quad	0x3fb6bdfc825b0bc8              # double 0.088836461854085447
	.quad	0x3fdfe1d0190e488a              # double 0.49815752455573004
	.quad	0x3fb5aa0af0f254d0              # double 0.084625896286826263
	.quad	0x3fcfda8fc8d9311c              # double 0.24885747248698287
	.quad	0x3fbd5dd632362758              # double 0.11471308446757911
	.quad	0x3fdfb738a404f804              # double 0.49555793778915835
	.quad	0x3fdf3f92b358b1aa              # double 0.48825519098570658
	.quad	0x3fe6b5ae34cf2fdf              # double 0.70967779459305891
	.quad	0x3fe448003a23d9bd              # double 0.63378917079426567
	.quad	0x3fea7061415cb853              # double 0.82621824995090731
	.quad	0x3fdc2812b72222e4              # double 0.43994586834064209
	.quad	0x3fe5124603889a58              # double 0.65848065080792662
	.quad	0x3fe1bedecd3482d5              # double 0.55454959944844495
	.quad	0x3fed7b3114b8c438              # double 0.92128805205550801
	.quad	0x3fb40ac45af25268              # double 0.078289291576149389
	.quad	0x3fef062439c08418              # double 0.96949969558420701
	.quad	0x3fd1d254dcabf260              # double 0.27846261548964968
	.quad	0x3fe78fc6bdfb121f              # double 0.73630082231153782
	.quad	0x3fdc8c69cad77d8a              # double 0.4460701447369152
	.quad	0x3fe1f47bb5c5a023              # double 0.561094145797146
	.quad	0x3fc402ee17eaa29c              # double 0.15633941810417162
	.quad	0x3febd46c38f144a6              # double 0.86968051072667119
	.quad	0x3fc90f70656226bc              # double 0.19578366232263089
	.quad	0x3fea2064584cd0ec              # double 0.81645409818750414
	.quad	0x3fe2a4d51e5b3e57              # double 0.58262115410793569
	.quad	0x3fe68250bb2c7a10              # double 0.70340763623591052
	.quad	0x3feec9e6b59b6597              # double 0.96214614362831951
	.quad	0x3fcb42b20c0c93c0              # double 0.21297288502060319
	.quad	0x3fdfe59755ae6ed2              # double 0.49838813178369634
	.quad	0x3fc47bd2547d6a68              # double 0.16002873540385854
	.quad	0x3fd05330e8ce469c              # double 0.25507757887781124
	.quad	0x3fe26be24660be78              # double 0.57566941972431973
	.quad	0x3fe47fa1adb576fa              # double 0.64058002402791137
	.quad	0x3feb1919a4a6e713              # double 0.84681398542963604
	.quad	0x3fd45ef59caae802              # double 0.31829586314745495
	.quad	0x3fd04be037fe73f6              # double 0.25463109462890487
	.quad	0x3fa0886f84810810              # double 0.032290921139534245
	.quad	0x3fdf88ea1be612a6              # double 0.49273159718021942
	.quad	0x3fc403265395d540              # double 0.15634612160980943
	.quad	0x3fe128348cfd3eb2              # double 0.53615787064514664
	.quad	0x3feb19d909a58640              # double 0.84690524944398504
	.quad	0x3fe0b45d6c26dfa4              # double 0.52201720355423165
	.quad	0x3fb4a4c3bb405fc8              # double 0.080639107909859509
	.quad	0x3fee029a34101655              # double 0.93781767052196108
	.quad	0x3fc174e9d8e13f6c              # double 0.13638041581952665
	.quad	0x3fe063ecb6755ca0              # double 0.5121978343621727
	.quad	0x3fecb57f1897e57c              # double 0.89715533069026731
	.quad	0x3feed31523be72fe              # double 0.96326691609610271
	.quad	0x3fe6db73d9b52c4c              # double 0.71428864022289806
	.quad	0x3feb9b382465dd77              # double 0.86269766911475088
	.quad	0x3fd32202dfbcf752              # double 0.29895088052204699
	.quad	0x3feda6b8a5b3c846              # double 0.92660171855664752
	.quad	0x3fefce07deafc8aa              # double 0.99390023702132635
	.quad	0x3fcbd251ea0aa0e8              # double 0.21735595634277804
	.quad	0x3fc2a10cb0aa0ca0              # double 0.14553984285530408
	.quad	0x3fe5635d9e888d21              # double 0.66837960208468783
	.quad	0x3fecd6daae7f4582              # double 0.9012273224017664
	.quad	0x3fd8a261c2bfa576              # double 0.38491100328845762
	.quad	0x3f7c6dcb3a026680              # double 0.0069406450785663987
	.quad	0x3fee58ac54361e07              # double 0.94832436034715861
	.quad	0x3fe3ec6c5d519cf5              # double 0.62261026598289837
	.quad	0x3fd6ecbe3dca1756              # double 0.35819965395090969
	.quad	0x3fe794f67f787b71              # double 0.73693394562347525
	.quad	0x3febfb28643d237b              # double 0.87440890863318488
	.quad	0x3f5b02f5a96b4a00              # double 0.0016486548462820716
	.quad	0x3fd7301188668488              # double 0.36230886764867209
	.quad	0x3fd582c62c821950              # double 0.33610681864265235
	.quad	0x3fc4fb1b5e99d4c4              # double 0.16391317481217105
	.quad	0x3faa00e8222a3620              # double 0.050788168116110421
	.quad	0x3fe1682267d82098              # double 0.54396171838836249
	.quad	0x3fe2ea530328ebed              # double 0.59110403649481003
	.quad	0x3fdcd074f81e15a2              # double 0.45022320013262107
	.quad	0x3fbc85db9c7487c8              # double 0.1114175087900825
	.quad	0x3fdaf604ce5713d4              # double 0.42126579428105271
	.quad	0x3fd05deb90033332              # double 0.25573243201943108
	.quad	0x3fe6db0547fbd811              # double 0.71423591670350295
	.quad	0x3fc8abe075cabd54              # double 0.19274526359138611
	.quad	0x3fe0571ee59a2dc9              # double 0.51063484996978403
	.quad	0x3fd1311dfa1adc32              # double 0.26862286972340421
	.quad	0x3feda479f4a6bec9              # double 0.92632768424479039
	.quad	0x3fd559ce7127ebac              # double 0.33360634851822613
	.quad	0x3fddbb62786fba34              # double 0.46456205140467266
	.quad	0x3fe0bff0ae263e06              # double 0.52343019498397392
	.quad	0x3fe4448ce440c3c7              # double 0.63336796360646808
	.quad	0x3fe6c2b090127bb9              # double 0.71126583232022889
	.quad	0x3fb54cc509421f58              # double 0.083202662239384551
	.quad	0x3fd91eed213f826a              # double 0.39251259085543799
	.quad	0x3fe33d31249819ef              # double 0.60121972224515996
	.quad	0x3fe96eaa48aedac1              # double 0.79475893207457926
	.quad	0x3fdd8c14c1282896              # double 0.46167487013793485
	.quad	0x3fdbf7c8f5b41982              # double 0.43699859613879977
	.quad	0x3feccf6960d048da              # double 0.9003188029185154
	.quad	0x3f912137d0547700              # double 0.016728279200029839
	.quad	0x3f69b774ceb25e00              # double 0.0031392365832052516
	.quad	0x3fec4b1891a10204              # double 0.88416698878432997
	.quad	0x3fa58fe1b5535bd0              # double 0.042113355049586354
	.quad	0x3fe897d891ce3c50              # double 0.76853588559777997
	.quad	0x3fc34b46d2bb1b4c              # double 0.15073476113885886
	.quad	0x3fe1a357627f8091              # double 0.55118912923718899
	.quad	0x3fe3e3826f288b21              # double 0.62152215681667056
	.quad	0x3fd8e9ad2842e05a              # double 0.38926247531663238
	.quad	0x3fe910ad811fcc5f              # double 0.78328585834095665
	.quad	0x3fe788867b533e7a              # double 0.73541568839023275
	.quad	0x3fcd273c831148f4              # double 0.22775989913731787
	.quad	0x3fe482fb92eb2afc              # double 0.6409891004089725
	.quad	0x3fe3f5e11a29945c              # double 0.62376456365440047
	.quad	0x3feb787c83a4743f              # double 0.8584578105106927
	.quad	0x3fd124e4c423d428              # double 0.26787680773060396
	.quad	0x3fe73b72e9068f75              # double 0.72600694191758797
	.quad	0x3fe50895329585cb              # double 0.65729770545675004
	.quad	0x3fd8df047d2f526c              # double 0.38861191010554452
	.quad	0x3fece26abb586f97              # double 0.90263878432186828
	.quad	0x3fd6ae8b5a1a8c50              # double 0.35440334128560824
	.quad	0x3fe89f524e07c481              # double 0.76944842567731098
	.quad	0x3fef76363f1ff11e              # double 0.98318016366059502
	.quad	0x3fd4decd8eb557a8              # double 0.32609881340374125
	.quad	0x3fe29af57d7e1042              # double 0.58141588697663615
	.quad	0x3fe6e538fbf13186              # double 0.71548127372220516
	.quad	0x3fe33690f148902f              # double 0.60041091085122911
	.quad	0x3fddeb3b34c050ae              # double 0.46748237754332933
	.quad	0x3fbe5886d58e97d0              # double 0.11853831018251459
	.quad	0x3fd5f09c322f59a6              # double 0.34281067753672756
	.quad	0x3fdf30e9ca3a2cf6              # double 0.48736042736773244
	.quad	0x3fe9035fd353a6f2              # double 0.78166190409430514
	.quad	0x3fe9d9340109f69a              # double 0.80776405527986417
	.quad	0x3fdd62212972b098              # double 0.45911435172707504
	.quad	0x3fd0d5a46156b8f2              # double 0.2630396795820068
	.quad	0x3fe5f31ff9428cac              # double 0.68592833217225779
	.quad	0x3fec0c154f3a7665              # double 0.87647500490465957
	.quad	0x3fde50878f004176              # double 0.47366513218823714
	.quad	0x3fd5fbd89ae6ff70              # double 0.34349646689587754
	.quad	0x3fa025035f2de720              # double 0.031532388084953178
	.quad	0x3fd12c9363309b30              # double 0.26834568678389115
	.quad	0x3fd0047b79a0004a              # double 0.25027357938234174
	.quad	0x3fc56494a76b3d78              # double 0.16713197874785712
	.quad	0x3feb19fcda9c7aa3              # double 0.84692232797154465
	.quad	0x3fe309d6d6152443              # double 0.59495107472424313
	.quad	0x3f96bf8cbc085ba0              # double 0.022215079285242134
	.quad	0x3fe39ade2297e50f              # double 0.612654750409236
	.quad	0x3fd85cf3a386870a              # double 0.38067332238470952
	.quad	0x3fee2743787fbb72              # double 0.94229291472389165
	.quad	0x3fe7d93fb2dbbede              # double 0.74526963170316285
	.quad	0x3fec69c21f4e256f              # double 0.88790994753177965
	.quad	0x3fe8fbb2e646892d              # double 0.78072495437326028
	.quad	0x3fd704be32f73ba2              # double 0.35966448762058623
	.quad	0x3fd04e5d98f00c00              # double 0.25478305754967323
	.quad	0x3fef6b365e7e537c              # double 0.98183744865183042
	.quad	0x3fc76302488d4fe8              # double 0.18270901243761206
	.quad	0x3fd42422d2c10de0              # double 0.31470556813675721
	.quad	0x3fe9b01c33e62814              # double 0.80274782310994163
	.quad	0x3fcc12882ef741e0              # double 0.21931555073980658
	.quad	0x3fa3915af41c1870              # double 0.038218347834161004
	.quad	0x3fde138b789ca488              # double 0.46994292047981689
	.quad	0x3fd41591c3d50e88              # double 0.31381649135821776
	.quad	0x3fd1d28646e8798a              # double 0.27847439694041809
	.quad	0x3fc528a2165574f0              # double 0.16530252542990054
	.quad	0x3fe3e41f9fb92562              # double 0.62159711070959767
	.quad	0x3fe99add0f43822f              # double 0.80015423756782933
	.quad	0x3fd4236bd040101a              # double 0.31466193520486885
	.quad	0x3fc6505ed573a480              # double 0.17432771131942459
	.quad	0x3fee5263d6531f6d              # double 0.9475573717145217
	.quad	0x3fedad5936ba3db4              # double 0.92741070450749996
	.quad	0x3fe8e864197dc438              # double 0.77836804369702062
	.quad	0x3f8d834d6d14e800              # double 0.014410595790298686
	.quad	0x3fc5bbd85282efec              # double 0.1697950747383169
	.quad	0x3fe47236634af253              # double 0.63894194977872087
	.quad	0x3fce3fb17000ff20              # double 0.23631875962200244
	.quad	0x3fe8348c22416b79              # double 0.75641447725807531
	.quad	0x3fe87bbb8863827c              # double 0.76510407102985267
	.quad	0x3fb513639687e2a8              # double 0.082327102900203841
	.quad	0x3fe2963af2f6ec1c              # double 0.5808386559868981
	.quad	0x3fed50d63f0e1db8              # double 0.91611778560120793
	.quad	0x3fc26b9f599046cc              # double 0.14390937684270566
	.quad	0x3fe8b34be795d331              # double 0.77188678008551481
	.quad	0x3feabb6d91497d00              # double 0.8353793943059884
	.quad	0x3fae25bfbc9c0870              # double 0.058881751798268378
	.quad	0x3fee47b419a0feab              # double 0.94625287061349661
	.quad	0x3fecf0e43b5cef6e              # double 0.90440570444432722
	.quad	0x3fe492b7a281e8d3              # double 0.64290982951868114
	.quad	0x3fe301e7a20bff7e              # double 0.59398252153185616
	.quad	0x3fb91b2f2d3a8e68              # double 0.098071049253627529
	.quad	0x3fdaf524307a7b6a              # double 0.42121224149916847
	.quad	0x3fd867d934d46558              # double 0.38133840712688061
	.quad	0x3fe6aa9681f8e2ce              # double 0.70832372079083838
	.quad	0x3fdfcc6855caefd2              # double 0.49685104730792518
	.quad	0x3fedd731e31f2ab5              # double 0.93251890525546932
	.quad	0x3fe8272abf11eeae              # double 0.754781125243843
	.quad	0x3fd5872c8a37840a              # double 0.33637536523571099
	.quad	0x3feb95817142fd54              # double 0.86200019952222328
	.quad	0x3fab18daa5f10f80              # double 0.052923996693180264
	.quad	0x3fe4d543669f7788              # double 0.65103311580217937
	.quad	0x3fd1cdecb2593942              # double 0.27819363991593005
	.quad	0x3fe19250fe9c0350              # double 0.54911088684466769
	.quad	0x3fb4031b6c142020              # double 0.078172410856609975
	.quad	0x3fe0ce83b0be5794              # double 0.52520927925319194
	.quad	0x3fc54d51bd3cd588              # double 0.16642209758871851
	.quad	0x3fd2fd32d18409e6              # double 0.29670401058697704
	.quad	0x3fdffb419efddde4              # double 0.49971046949892028
	.quad	0x3fe4d7f06714ebd3              # double 0.6513597501101408
	.quad	0x3fe1b3571d29ffcc              # double 0.55314212509255745
	.quad	0x3fee9cd80f5119ce              # double 0.95664599410593509
	.quad	0x3fe2a5d60b0e21cd              # double 0.58274366530627619
	.quad	0x3fb3b9e442f12a20              # double 0.077055231421731651
	.quad	0x3fede682e7f5f21b              # double 0.93438859276608655
	.quad	0x3feb6b921b924ff7              # double 0.85688119301857923
	.quad	0x3fbb8210c8e29120              # double 0.10745339302463153
	.quad	0x3fde877695375a50              # double 0.47701801845451985
	.quad	0x3f9f02a0314bdfe0              # double 0.030283453949749517
	.quad	0x3f9567a96e3a2c40              # double 0.020903251030670811
	.quad	0x3feaeec53c5c5f82              # double 0.84164678372597757
	.quad	0x3fe183ea0441847e              # double 0.54735279875980303
	.quad	0x3fe7e9c32444a177              # double 0.74728543361292921
	.quad	0x3fe7386a9b01303a              # double 0.7256367709574143
	.quad	0x3fe293c472d9fb43              # double 0.58053800994807891
	.quad	0x3faae1c692089360              # double 0.05250378162990077
	.quad	0x3fede15318c2a810              # double 0.93375544391642684
	.quad	0x3fd3aa2294f8eefc              # double 0.30725922153554541
	.quad	0x3fe05c09898441f2              # double 0.51123501642910996
	.quad	0x3feb8c59795a6694              # double 0.86088250829489476
	.quad	0x3fa53b259a39ad20              # double 0.041466879917459787
	.quad	0x3fed498c17cb7835              # double 0.91522793433592275
	.quad	0x3fd9d2510d83a48c              # double 0.40346170730351427
	.quad	0x3fd9efb34be9cca2              # double 0.40525514996915935
	.quad	0x3fede302d05de3fc              # double 0.93396130272515121
	.quad	0x3fe026a6c80d3b95              # double 0.50471819946857244
	.quad	0x3fe7a472a8206881              # double 0.73882420384622105
	.quad	0x3fd9a7bca02e4224              # double 0.40086284296651997
	.quad	0x3fe6e65db701ef29              # double 0.7156208586088485
	.quad	0x3fcd85acd3fc400c              # double 0.23064194060179977
	.quad	0x3fe2d7fbea624393              # double 0.58886523988813833
	.quad	0x3fda70e85dac097c              # double 0.41314133784921814
	.quad	0x3fdf008f9d43be40              # double 0.48440924032090393
	.quad	0x3fe78a37641cdab2              # double 0.7356221156431586
	.quad	0x3fe988847c48a57a              # double 0.79791473650145339
	.quad	0x3fea93121be5c794              # double 0.83045297096963333
	.quad	0x3fdbb0478230ddd4              # double 0.43263423646882626
	.quad	0x3fecf95000978ef5              # double 0.90543365588788893
	.quad	0x3fdf1391b049c13e              # double 0.48556940284381145
	.quad	0x3fc71732a49b5f14              # double 0.18039544141242259
	.quad	0x3fdf39ea1b6a658e              # double 0.48790981938653821
	.quad	0x3fe19dd20ec7efeb              # double 0.55051520239748919
	.quad	0x3fd817438fddfbf0              # double 0.37641991662525154
	.quad	0x3fe476dabc3579dc              # double 0.63950859794186554
	.quad	0x3fd506b99af6e9c0              # double 0.32853546269657485
	.quad	0x3fe283318dd79c4b              # double 0.578514840159991
	.quad	0x3febfa8570c8dae7              # double 0.87433120754471083
	.quad	0x3fee7b6987d4c2e2              # double 0.95256496934424839
	.quad	0x3fe77d7046f706ed              # double 0.73406232700673757
	.quad	0x3fb1633f41273bf8              # double 0.067920640379483532
	.quad	0x3fbd331f66d26c18              # double 0.1140613199262791
	.quad	0x3fe120560a89fa40              # double 0.53519727762597569
	.quad	0x3fc969d1987259f0              # double 0.19854183143316062
	.quad	0x3fe53f1b2b7e4136              # double 0.66395338530313697
	.quad	0x3fde368fad3c80cc              # double 0.47208015363322597
	.quad	0x3fde85ce6823c1be              # double 0.47691688699617518
	.quad	0x3fd9d6ca3cfccc3e              # double 0.40373474078950611
	.quad	0x3fd6e00ec733f49e              # double 0.35742539838231291
	.quad	0x3faf9c0c88e3b580              # double 0.061737434110777478
	.quad	0x3fdb4aea123058b4              # double 0.42644740844969964
	.quad	0x3fdfe1a2f3a75310              # double 0.49814676088617293
	.quad	0x3fea3daf6588e5b8              # double 0.82002992468840485
	.quad	0x3fe0c38e286dd1ec              # double 0.52387149711881653
	.quad	0x3fdd7c91127cfd14              # double 0.4607279472874819
	.quad	0x3fd15251fe38cf72              # double 0.27064943148001597
	.quad	0x3fe02f15d27da9a0              # double 0.50574771033761934
	.quad	0x3fdac0d430a91188              # double 0.41801934005732067
	.quad	0x3fe282c80dbdbcba              # double 0.57846453365154749
	.quad	0x3fab1b022a5d8eb0              # double 0.05294043318897701
	.quad	0x3feb6e1162127e06              # double 0.85718602328046312
	.quad	0x3fe5a2d75d4cd46d              # double 0.67612808439902283
	.quad	0x3fefc4927e472c67              # double 0.99274563468624144
	.quad	0x3fcd261f21e86798              # double 0.22772587924629017
	.quad	0x3fe5ee25dd135048              # double 0.68532078913495642
	.quad	0x3fdaff4ff516e386              # double 0.42183302816879864
	.quad	0x3fe217a3851dec69              # double 0.56538558959381391
	.quad	0x3fc9a33cd5945174              # double 0.20029411724739143
	.quad	0x3fba25f64d772a78              # double 0.10214175597426756
	.quad	0x3fe72782629a1c07              # double 0.72357291467858509
	.quad	0x3fb8e84a3600d970              # double 0.097294462379840629
	.quad	0x3fe6baf72a041a34              # double 0.71032293516402101
	.quad	0x3fa6c489d1ee8200              # double 0.044468218685555172
	.quad	0x3fcdf283efc8407c              # double 0.23396348198048489
	.quad	0x3fd7473667618bc8              # double 0.36372146697811703
	.quad	0x3fb539990a71d388              # double 0.082910122919043983
	.quad	0x3fe8b35a4ae79086              # double 0.77189364080233314
	.quad	0x3fe06f44b8f06999              # double 0.51358257409019636
	.quad	0x3fdd70f69d598e4e              # double 0.46001973501390558
	.quad	0x3feae19fca9cf63d              # double 0.84004201481702234
	.quad	0x3fdf7175907b48e2              # double 0.49130000218896275
	.quad	0x3fa012fe0229adf0              # double 0.031394899143233235
	.quad	0x3febbc9eed8c2a94              # double 0.86677500148774067
	.quad	0x3fd9107b4be313cc              # double 0.39163095866052511
	.quad	0x3fc0c7913feb14d8              # double 0.13109031315813158
	.quad	0x3fdf0a38d7d5f3ce              # double 0.48499890401563739
	.quad	0x3feaa3c6f24654bc              # double 0.83249232596667566
	.quad	0x3fec32baf1bbdb42              # double 0.8811926576007425
	.quad	0x3febae864ab55019              # double 0.8650542697091651
	.quad	0x3fe33c0a051287cf              # double 0.60107899656963493
	.quad	0x3fd4fb61862031a8              # double 0.32784307573526883
	.quad	0x3fe6011773fcc2e6              # double 0.6876332536104115
	.quad	0x3fdf99ad8bb90276              # double 0.49375475544733349
	.quad	0x3fee512c8084bff4              # double 0.94740891553192208
	.quad	0x3fe014198fb6f9e0              # double 0.50245359486853758
	.quad	0x3fc1a1d14f9c9568              # double 0.13775078189170675
	.quad	0x3fd4182ff506b938              # double 0.31397627762170854
	.quad	0x3fea3069c18c36e5              # double 0.81840980341231939
	.quad	0x3fef122e7e290ada              # double 0.97096943512618883
	.quad	0x3f5095d4f59bd800              # double 0.0010122852021914319
	.quad	0x3fcff22036e57764              # double 0.24957659416662203
	.quad	0x3fd019ca02ec3d56              # double 0.2515740421813083
	.quad	0x3fe3b716ec93bb10              # double 0.61609979826411809
	.quad	0x3fe44844fb4a282d              # double 0.633821955490253
	.quad	0x3fe57de56bacd26c              # double 0.67161818533220474
	.quad	0x3fc64c970ca8dac0              # double 0.17421234243530215
	.quad	0x3fe83c939b07e4c1              # double 0.75739460257968727
	.quad	0x3fd7aa73664dc5b8              # double 0.36977848997693341
	.quad	0x3fd29bbb0a277ff2              # double 0.29075504294996712
	.quad	0x3feb4a9c578434e2              # double 0.8528577527337371
	.quad	0x3feddc702125de6c              # double 0.93315893625454071
	.quad	0x3fe6c0c0aa69de99              # double 0.71102937015435252
	.quad	0x3fd310c3e1ff9006              # double 0.29789826460023539
	.quad	0x3fb50a1a91366148              # double 0.082185421421290816
	.quad	0x3fe53ebdc2028071              # double 0.66390884296926178
	.quad	0x3fe82b0ad8ad05d8              # double 0.75525419539934102
	.quad	0x3fd156a83acef66a              # double 0.27091413252842378
	.quad	0x3fdc4720de69fbc6              # double 0.44184133262745851
	.quad	0x3fee008b11a5e85e              # double 0.93756631323709505
	.quad	0x3fe6b6d1bb0dfaa6              # double 0.70981680425741867
	.quad	0x3fd85188b430e334              # double 0.37997644039892298
	.quad	0x3fe54d9150c88746              # double 0.66571870592108762
	.quad	0x3fe54fb0824f4a1b              # double 0.66597772074812001
	.quad	0x3fe4c252626564e2              # double 0.64872092454893626
	.quad	0x3fd4b2d687dac0cc              # double 0.3234154059127945
	.quad	0x3fcedf8d923ed108              # double 0.24119729653251221
	.quad	0x3fee99df54689353              # double 0.95628324972185863
	.quad	0x3fcaaf9302539074              # double 0.20848310102076406
	.quad	0x3fe434e8507816ea              # double 0.63145843235608123
	.quad	0x3fd8dfaa0a88bbda              # double 0.38865138081285766
	.quad	0x3fc83c2388e46404              # double 0.18933529075800959
	.quad	0x3fde1d6cd8e50e0c              # double 0.47054597073676585
	.quad	0x3fe9b882beaa0cf5              # double 0.80377328147042582
	.quad	0x3fb46cd833e45288              # double 0.079785835904042313
	.quad	0x3fe10507fc66a17f              # double 0.5318641595559227
	.quad	0x3fe3a6029fa22a1b              # double 0.61401492288979698
	.quad	0x3fd76d51ddcae99c              # double 0.36604735049663772
	.quad	0x3fd198f11d7c5c18              # double 0.27495983008833624
	.quad	0x3fee910d52064024              # double 0.9552065469779376
	.quad	0x3fc9e0751f68bf38              # double 0.20216239961291094
	.quad	0x3fc18f6a063159b4              # double 0.13718915274030297
	.quad	0x3fe740c0972bfd51              # double 0.7266543343138584
	.quad	0x3fcb8f8626cdbac8              # double 0.21531750578602371
	.quad	0x3feb1509eff5e31e              # double 0.84631821505817917
	.quad	0x3fe3349c28bb57e0              # double 0.60017211871558729
	.quad	0x3fc2796df01a0d40              # double 0.14433073257178286
	.quad	0x3fc6d9bc1f21534c              # double 0.17851974029567896
	.quad	0x3fdc2660bb69b5fa              # double 0.43984239866298902
	.quad	0x3fe6947defb924db              # double 0.70562645741406571
	.quad	0x3fd4cd8519c497da              # double 0.32504394070053666
	.quad	0x3fed43f44d3d6ef0              # double 0.9145452030747645
	.quad	0x3fd3743f00c21e94              # double 0.30397009920168583
	.quad	0x3feb6bc5d69192bc              # double 0.85690586002291224
	.quad	0x3fe0b12a2e1afb5f              # double 0.52162655835114069
	.quad	0x3fed7d879aea2fc7              # double 0.9215734506301424
	.quad	0x3fdee2e3c4435e4a              # double 0.48259824911426519
	.quad	0x3fc40b45e247fdd4              # double 0.15659402417075674
	.quad	0x3fa1bb45eaf03e20              # double 0.034631905488023529
	.quad	0x3fec09be601192ee              # double 0.87618941081436019
	.quad	0x3fddce23258865ec              # double 0.46570662179291733
	.quad	0x3fe432b90c773d84              # double 0.6311917537185967
	.quad	0x3fe98991701af55b              # double 0.79804298301284449
	.quad	0x3fd55e3047adfcb6              # double 0.33387381553616124
	.quad	0x3feef924c1e36659              # double 0.96791303509526038
	.quad	0x3fd1cc5af66fcfa0              # double 0.27809785905923867
	.quad	0x3fe730c3d7aaa9fe              # double 0.72470275995630096
	.quad	0x3fe28e7478fe5743              # double 0.57988952285334283
	.quad	0x3fe885327c7b982c              # double 0.76625942528767643
	.quad	0x3fcc6f74777aff78              # double 0.222151335086888
	.quad	0x3fed916ea93ebdcd              # double 0.9240029626434364
	.quad	0x3fe72063c10e5281              # double 0.72270381647338422
	.quad	0x3fe8c649487923f7              # double 0.77420486597941263
	.quad	0x3feb17d567a86570              # double 0.84665937657989154
	.quad	0x3fd8121b5c5ec304              # double 0.37610515614055395
	.quad	0x3fe92911d0252f27              # double 0.78626337674493108
	.quad	0x3fbb49762eac8ee8              # double 0.1065896858167964
	.quad	0x3fa3fd82d862df40              # double 0.039043511308987977
	.quad	0x3fe8dcd3535583bd              # double 0.77695623661212887
	.quad	0x3fd04ac7228d2ab4              # double 0.25456407903827061
	.quad	0x3fd031bf173a70fa              # double 0.25303628223788588
	.quad	0x3fe6f2daed59092f              # double 0.71714540822020989
	.quad	0x3feea4a0905ba00c              # double 0.95759609408287493
	.quad	0x3fc825ade37f6230              # double 0.18864987953453882
	.quad	0x3fdfe8b2d1cfae82              # double 0.49857779015903969
	.quad	0x3fe789ee72ad4ed0              # double 0.73558733365868001
	.quad	0x3f9e5a3f3671ade0              # double 0.029641139696122809
	.quad	0x3fdd2f213798947c              # double 0.45600157193468482
	.quad	0x3fd5e101ea8f5cde              # double 0.34185836702586225
	.quad	0x3fc38bdac6b3922c              # double 0.15270552351206967
	.quad	0x3fecf59ea671b548              # double 0.9049828768599264
	.quad	0x3fe7ee845af796b1              # double 0.74786584631939068
	.quad	0x3fe0a95214214151              # double 0.52066902095433865
	.quad	0x3feb1e4b0e4ec070              # double 0.84744789881189142
	.quad	0x3fd063148f635cbc              # double 0.25604738238093794
	.quad	0x3fc5e9f50629cfcc              # double 0.17120230484908772
	.quad	0x3fea73611813fbec              # double 0.82658438399073252
	.quad	0x3fec6d5c4031b5a8              # double 0.88834965265202914
	.quad	0x3fe6e11053724188              # double 0.71497360513790031
	.quad	0x3f7788e4ffce4d80              # double 0.0057457871706846353
	.quad	0x3fe5d186bd844b66              # double 0.68182694449420178
	.quad	0x3fe10c4ca03bf179              # double 0.53275138183339188
	.quad	0x3fd2b5b799744c12              # double 0.29234113679666607
	.quad	0x3f9b7137670529a0              # double 0.0267990738514442
	.quad	0x3fec6f72da612898              # double 0.88860457088709932
	.quad	0x3fd0a86c49fe7758              # double 0.26027972436883351
	.quad	0x3fe1a2817cb8bef6              # double 0.55108713493061035
	.quad	0x3fe928e19fb22735              # double 0.78624039831740922
	.quad	0x3fbec5fbe03714f0              # double 0.1202084944153119
	.quad	0x3fed913403eb027e              # double 0.92397499814258288
	.quad	0x3fb78e9a63317198              # double 0.092019700257372938
	.quad	0x3fe2bf403bc18e39              # double 0.58584605856999084
	.quad	0x3fe0e160606e5b7c              # double 0.52751177629657731
	.quad	0x3feb0f2589ccf1bb              # double 0.84559895433590471
	.quad	0x3fe03f6d3be470e7              # double 0.50774251649593516
	.quad	0x3fd531238e9f7354              # double 0.33112420013440169
	.quad	0x3fb4b4b4af9b8278              # double 0.080882351754107407
	.quad	0x3fcae5f4373c732c              # double 0.2101426381786039
	.quad	0x3fe8c4d450d002b9              # double 0.77402702125262757
	.quad	0x3fdcc053f824a46a              # double 0.44923876984336764
	.quad	0x3fe3f8c4ad0831a8              # double 0.62411721988023761
	.quad	0x3f9de94f124c79a0              # double 0.029210315219751259
	.quad	0x3fe3a5ee8029c800              # double 0.61400532752873005
	.quad	0x3f9bbe44f11c9680              # double 0.027093007293976346
	.quad	0x3fb9a44323def1b8              # double 0.10016269326928906
	.quad	0x3f8cb2d775236bc0              # double 0.014012988340644017
	.quad	0x3fe5df1523491802              # double 0.68348175899222974
	.quad	0x3fea7ea92dda3510              # double 0.82796153026143493
	.quad	0x3fd0722c72907c28              # double 0.25696860492638729
	.quad	0x3fdfeaf777da24a0              # double 0.49871622757252432
	.quad	0x3fcc623d6608369c              # double 0.22174804193530384
	.quad	0x3fe849aa2dc38384              # double 0.75899228037097588
	.quad	0x3fee0e4f88831fb1              # double 0.93924690878428951
	.quad	0x3fbd6fee7d280ae0              # double 0.11498919063164292
	.quad	0x3fb2d076dea2bb00              # double 0.073493413309488886
	.quad	0x3fe7e9c42e7ea22f              # double 0.74728592949856487
	.quad	0x3fe77f4f48cd0546              # double 0.73429073542516998
	.quad	0x3faceae4b765ff80              # double 0.05647959460020413
	.quad	0x3fe6ba5b11744114              # double 0.71024850281722474
	.quad	0x3fe235f94fd75835              # double 0.56908860773069725
	.quad	0x3fed893b5907fd0e              # double 0.92300193203837622
	.quad	0x3fc8dc1365ebf28c              # double 0.19421617962497739
	.quad	0x3fce0794f51a3c84              # double 0.23460638015646762
	.quad	0x3fda9078aa607bc0              # double 0.41506783140533443
	.quad	0x3fe6f1721a260b3d              # double 0.71697335345411484
	.quad	0x3fd5e22ca7038aa4              # double 0.34192959127373457
	.quad	0x3fe20ea4d49b90d8              # double 0.56428758168160709
	.quad	0x3fef413f47ce5c1e              # double 0.97671474480273779
	.quad	0x3fedeeba71e5b3c7              # double 0.93539163823663152
	.quad	0x3fe8ee551783d6c4              # double 0.77909330933354015
	.quad	0x3fed409f3bc0ca8c              # double 0.91413842840695869
	.quad	0x3fd244eff51c5594              # double 0.2854576009425156
	.quad	0x3fd10c49d873a4be              # double 0.26637502801765922
	.quad	0x3fe36e004f746686              # double 0.60717788237089176
	.quad	0x3fdba42d33909bd0              # double 0.43189554248459405
	.quad	0x3fe90b05dc1620f1              # double 0.78259556756623117
	.quad	0x3fe46d1c39b705ea              # double 0.63831912300537152
	.quad	0x3fd8a7d2656c2776              # double 0.38524303345240385
	.quad	0x3fd6fa6411ad56fa              # double 0.35903264738350027
	.quad	0x3fefea37c96caa6e              # double 0.99734105435102349
	.quad	0x3fe799cdb350151e              # double 0.73752484342609015
	.quad	0x3fede69dee0f19de              # double 0.93440147872825796
	.quad	0x3fe3904f0315668b              # double 0.61136580087914305
	.quad	0x3fe070ae136489a5              # double 0.51375488078729303
	.quad	0x3fdf2b2f6ee491d2              # double 0.48701082066898238
	.quad	0x3fe0f9ed9559893a              # double 0.53050879640458182
	.quad	0x3fd27f5916733e18              # double 0.28902270500563665
	.quad	0x3fd9ff92d244ceb2              # double 0.40622396978435937
	.quad	0x3fef1042be5dfc5b              # double 0.97073495083885619
	.quad	0x3fedc891cd5150d0              # double 0.93073358632184444
	.quad	0x3fbd975437ea1620              # double 0.1155903469571844
	.quad	0x3f952f74154c9760              # double 0.020688833045958588
	.quad	0x3fb8994df376a2f8              # double 0.096089240969955969
	.quad	0x3f6689c5e814a300              # double 0.0027512421953769239
	.quad	0x3fb10bc1ec9201b0              # double 0.066585655456953274
	.quad	0x3fd06177db79d31c              # double 0.25594898637000241
	.quad	0x3fe57b9d5bab9842              # double 0.67133968262056265
	.quad	0x3f8c82d87f05f240              # double 0.013921443344537043
	.quad	0x3fba886da2ecf148              # double 0.10364423015284274
	.quad	0x3fdc5f945d5f028e              # double 0.44333371275210076
	.quad	0x3fc6cc88fe51f414              # double 0.1781169168279183
	.quad	0x3febe0c5993eef93              # double 0.87118797236279233
	.quad	0x3fe302e32e59fbc7              # double 0.59410246899630514
	.quad	0x3fe5c63bdae255f2              # double 0.68044846297078565
	.quad	0x3fc393eda9659fc8              # double 0.15295191546760933
	.quad	0x3fc37118ce0b30f4              # double 0.15188894329765612
	.quad	0x3f9151150d0c7e20              # double 0.016910866662440793
	.quad	0x3fedd871fef00edd              # double 0.93267154495739713
	.quad	0x3fd01e744e98641e              # double 0.25185878444023213
	.quad	0x3fea31a6a2c5622c              # double 0.81856090346542975
	.quad	0x3fe228611de66759              # double 0.5674291213974626
	.quad	0x3fe7b64e61bc9d7b              # double 0.74100417222227521
	.quad	0x3fe8d0ecdfdd2c0d              # double 0.77550357554844285
	.quad	0x3fc9d0af825cd0fc              # double 0.20168107858047069
	.quad	0x3fcca440f3c6aed8              # double 0.22376262572412631
	.quad	0x3fe88e05c8176572              # double 0.76733674126005114
	.quad	0x3fed7911006c238c              # double 0.92102861483100317
	.quad	0x3fe716fef51fde1a              # double 0.72155712009311235
	.quad	0x3fe20f1c698cc97f              # double 0.56434460273003129
	.quad	0x3f71ca4e371eb100              # double 0.0043433242116572846
	.quad	0x3fe0a35851994687              # double 0.51993957459690499
	.quad	0x3fd17d75ca428e6e              # double 0.2732824778742956
	.quad	0x3fd4e109a15cd21a              # double 0.3262352062040762
	.quad	0x3fdb4e0178a5df24              # double 0.42663609296822558
	.quad	0x3fe78a065d9ef0ed              # double 0.73559873853039692
	.quad	0x3fe7bd0b60b0e2d7              # double 0.74182671437219028
	.quad	0x3fab4a7b782d57d0              # double 0.053302629871424423
	.quad	0x3fc543b8e1be29e4              # double 0.16612921736334763
	.quad	0x3fe75a725396396d              # double 0.72979084325360832
	.quad	0x3fc245f1ea251e68              # double 0.14275955136166663
	.quad	0x3fefacd720afcf5c              # double 0.98984867462284453
	.quad	0x3fd74d94ea87359e              # double 0.36411021140232858
	.quad	0x3fd3cdf079457188              # double 0.30944454043289982
	.quad	0x3fe55ded8246d0f4              # double 0.66771579212811938
	.quad	0x3fe38da81ec2d26c              # double 0.61104208000194893
	.quad	0x3fe475f621a80812              # double 0.63939959119329814
	.quad	0x3f9dcf21c3c3ec40              # double 0.029110457967345349
	.quad	0x3febd9b73e0849c6              # double 0.87032663455675485
	.quad	0x3fc34595ccf34c70              # double 0.15056107051222822
	.quad	0x3fe8174cd5b3eb4e              # double 0.7528442548640244
	.quad	0x3fd298de73661f0e              # double 0.29058038014817178
	.quad	0x3fa94f825dc24ee0              # double 0.049434732384865177
	.quad	0x3fe6a01517ba90ea              # double 0.70704130777860752
	.quad	0x3fc88742aa062978              # double 0.19162782003361278
	.quad	0x3fc31b685db4dc64              # double 0.14927391601097206
	.quad	0x3fe2c7c0e02b735d              # double 0.58688396247053343
	.quad	0x3fe2ed83406bf259              # double 0.59149324972492956
	.quad	0x3fe22aa0c0bb8b47              # double 0.56770360606274373
	.quad	0x3fe387b715a767fd              # double 0.61031679372103975
	.quad	0x3fb60bb18feb14d0              # double 0.086115930210399982
	.quad	0x3fe85bf82e0f94a6              # double 0.76122673984777545
	.quad	0x3fe9e969f0140bbd              # double 0.80974289789479992
	.quad	0x3feab0ef65b75d29              # double 0.83409852854211863
	.quad	0x3feab66166ae6474              # double 0.83476324133802259
	.quad	0x3fdf75bb3051a640              # double 0.49156074255606441
	.quad	0x3fe467a9c302bcab              # double 0.63765419090295461
	.quad	0x3fc7b31284bba658              # double 0.1851523540602098
	.quad	0x3f7543f961e6b900              # double 0.0051917783261343775
	.quad	0x3fd07b049adcfa1e              # double 0.25750842212065261
	.quad	0x3fe4549dd0ea859f              # double 0.63532915882040075
	.quad	0x3fec8ee998fd461d              # double 0.89244537239773403
	.quad	0x3f2cb68f6489f000              # double 2.1906376266034311E-4
	.quad	0x3fd51f0aed70f776              # double 0.33001969516396146
	.quad	0x3fd71a7e7e4460e0              # double 0.36099207239887043
	.quad	0x3fbd632f01201748              # double 0.11479467179750913
	.quad	0x3fd056f6af5c7942              # double 0.25530783772582677
	.quad	0x3fe5edf042c85b6d              # double 0.6852952293728386
	.quad	0x3fc51130136aeafc              # double 0.16458702991607044
	.quad	0x3fcb0e1d69774838              # double 0.21136825227455502
	.quad	0x3fd03c1eadae84fa              # double 0.25366942368607648
	.quad	0x3fe64f91ee62dcaa              # double 0.69721314010430047
	.quad	0x3feb085d0951af49              # double 0.8447709257138537
	.quad	0x3fea38118d744b43              # double 0.81934430721080564
	.quad	0x3fc5452666506584              # double 0.1661727904873197
	.quad	0x3fed6e146f3d4e83              # double 0.91968747831784048
	.quad	0x3fe041e9dfdc89e0              # double 0.50804609034485892
	.quad	0x3fde68774f68b11c              # double 0.47512610201626315
	.quad	0x3fd303a139de83bc              # double 0.29709654475487546
	.quad	0x3fe361794d0819a5              # double 0.60564866109125559
	.quad	0x3fe3ff53a6781345              # double 0.62491781724438822
	.quad	0x3fd771c35927d512              # double 0.36631854731179303
	.quad	0x3fd490dad9b763dc              # double 0.32134124051441204
	.quad	0x3fd6ea97c12e6fcc              # double 0.35806840768213699
	.quad	0x3fd9dc16dc911502              # double 0.40405818500251212
	.quad	0x3fc16e749b77587c              # double 0.13618333426592588
	.quad	0x3fe354417b2d1cf0              # double 0.6040351300988771
	.quad	0x3faa740a7e2623c0              # double 0.051666572474523331
	.quad	0x3fba3f195cb25c28              # double 0.10252531540969356
	.quad	0x3fcbeef60c3e77a0              # double 0.21823001478054227
	.quad	0x3fe6716c4f19adf7              # double 0.70134559106139605
	.quad	0x3fd9f71d8af06160              # double 0.40570772712955794
	.quad	0x3fed1dc21a4d29fb              # double 0.90988259446140718
	.quad	0x3fe475bbd7348533              # double 0.63937179596192661
	.quad	0x3fe7ec71d06a3510              # double 0.74761286455182763
	.quad	0x3fe975b5f44146ed              # double 0.79561898904850425
	.quad	0x3fe3406bed13519b              # double 0.60161396316339066
	.quad	0x3fd5652560cf124a              # double 0.33429846242896544
	.quad	0x3fdcb7f7d4640c56              # double 0.44872852078714709
	.quad	0x3fe7a4bdf01f2bc5              # double 0.7388601007345349
	.quad	0x3fe53ec9be3d638c              # double 0.66391455799303989
	.quad	0x3fea1ba58b50d9fc              # double 0.81587483606455135
	.quad	0x3fe1c0e475111952              # double 0.5547964369259637
	.quad	0x3fd078e2a7337d7e              # double 0.25737825706706718
	.quad	0x3feb411a33a40dfb              # double 0.85169706426717029
	.quad	0x3fd9b8942e39d732              # double 0.40189079775096836
	.quad	0x3fae615fad096bb0              # double 0.059336652634292775
	.quad	0x3fd2c0bc88f7bf5a              # double 0.29301370025404128
	.quad	0x3fe341971eadbf86              # double 0.60175662986692724
	.quad	0x3fec01d62a91f8ae              # double 0.87522419275753349
	.quad	0x3fd94b70c2ddad84              # double 0.39522952108264797
	.quad	0x3f9885bf8e6cef80              # double 0.023947709148373075
	.quad	0x3fdb58acb77c7528              # double 0.42728727263041089
	.quad	0x3fe426d02eb69f2f              # double 0.62973794101433167
	.quad	0x3feebf8f3f527fc5              # double 0.9608837353480274
	.quad	0x3fedc156b3cf418e              # double 0.92985091322957358
	.quad	0x3fe6cdc09a804b00              # double 0.71261625457768218
	.quad	0x3fd2c90b144d7c9e              # double 0.29352070791896689
	.quad	0x3fe483c6652c722c              # double 0.64108581314537139
	.quad	0x3fd4e4ae9e9c28ea              # double 0.32645764817483658
	.quad	0x3f436796b1f20400              # double 5.921827140725755E-4
	.quad	0x3fddd7cda2777988              # double 0.46629658571136945
	.quad	0x3feafcded42a2327              # double 0.84336797178648204
	.quad	0x3fd260ee767f0196              # double 0.28716622897993582
	.quad	0x3fea7af3b31a038c              # double 0.82750878315720077
	.quad	0x3fd38b612b4012de              # double 0.30538205360089232
	.quad	0x3fd97b8f10291916              # double 0.39816643312623634
	.quad	0x3fc573b7c66d20d0              # double 0.16759392918380067
	.quad	0x3feac917430f323d              # double 0.83704722497493089
	.quad	0x3fd5ff14f04a18cc              # double 0.34369395700231276
	.quad	0x3fbbba64a5e13988              # double 0.10831288385199944
	.quad	0x3fd5a2d9714ea828              # double 0.33806453766976796
	.quad	0x3fc6d283f3f9092c              # double 0.1782994214318675
	.quad	0x3fdbf137ee80d814              # double 0.43659780780160529
	.quad	0x3fc2eca607ee360c              # double 0.14784694087249795
	.quad	0x3fe9f8f91a2532a6              # double 0.81164221865181641
	.quad	0x3fce487d3c0a9a1c              # double 0.23658719474515599
	.quad	0x3fe9dcfcb875ffc4              # double 0.80822597529913098
	.quad	0x3fed7ce5ebe24c31              # double 0.9214963538273705
	.quad	0x3fd4fa364680a8da              # double 0.32777172932641252
	.quad	0x3fd8d6be985aa062              # double 0.38810696485825791
	.quad	0x3fb4c784c5143ee8              # double 0.081169412722598033
	.quad	0x3febed40aa5f476e              # double 0.8727114989835465
	.quad	0x3fd3487a12e3a166              # double 0.30129863590857153
	.quad	0x3fe0d071572c7581              # double 0.52544466997248673
	.quad	0x3feafbfcac11dced              # double 0.84326013190630322
	.quad	0x3fe7fbb9e11e3920              # double 0.74947828262682847
	.quad	0x3fec3d376622f93f              # double 0.88247270535047295
	.quad	0x3fc69a627a4ec588              # double 0.17658644649558775
	.quad	0x3fe15418f1a75adf              # double 0.54151580045694547
	.quad	0x3fd9468bdf002936              # double 0.3949308088055149
	.quad	0x3f8fd1e655795d00              # double 0.015537070735418101
	.quad	0x3fecd87950796e32              # double 0.90142503469127733
	.quad	0x3fe2ed39a500f6be              # double 0.59145815112398004
	.quad	0x3febd5b2a0088078              # double 0.869836151661743
	.quad	0x3fdfcde5d2acf822              # double 0.49694200109286346
	.quad	0x3fc1882fb3cd2f60              # double 0.13696857718820876
	.quad	0x3fd4b81e8476e80c              # double 0.32373774467453198
	.quad	0x3fdaf7f1ef8343f0              # double 0.42138336553494948
	.quad	0x3fedc754c07f609e              # double 0.93058240506345036
	.quad	0x3fe3d6d07d063c7a              # double 0.6199724618799245
	.quad	0x3facf66a6fa9dc60              # double 0.056567503100205085
	.quad	0x3fab34defbd4b120              # double 0.053137748948161923
	.quad	0x3fd014b4b3730e74              # double 0.25126378559455209
	.quad	0x3fa5affc2d0328f0              # double 0.042358284468336893
	.quad	0x3fafdbc278a51ca0              # double 0.062223508097809743
	.quad	0x3feddce0461002e3              # double 0.93321241077509531
	.quad	0x3fc1005a4565fad8              # double 0.13282326115218868
	.quad	0x3fdf7824578d0b5e              # double 0.4917078833570282
	.quad	0x3fe2cc0e0f77cff6              # double 0.58740904828164164
	.quad	0x3fd3794aeba4f504              # double 0.30427811634201896
	.quad	0x3fe665484e7581ee              # double 0.69986357997919213
	.quad	0x3fedfd7ae431310b              # double 0.93719238823681061
	.quad	0x3fe62f9745098de1              # double 0.69330943569042003
	.quad	0x3fce337130c21be0              # double 0.23594488983891804
	.quad	0x3fdd027af7430502              # double 0.45327638765964207
	.quad	0x3fd91ae394737aa2              # double 0.39226617333580738
	.quad	0x3f7b5a4047859800              # double 0.0066778670228355708
	.quad	0x3fd74914055ae57a              # double 0.36383533976512406
	.quad	0x3fd53b7486f6a702              # double 0.33175385646846689
	.quad	0x3fd637ee12738a2c              # double 0.34716369439971362
	.quad	0x3fdcb893336c540a              # double 0.44876556417267521
	.quad	0x3fcfe03dc08273d4              # double 0.24903079891092139
	.quad	0x3fd152980cbf7250              # double 0.27066613430887276
	.quad	0x3fc95f98cce2d4ec              # double 0.19822988514139384
	.quad	0x3fe84a5f5fb99fc7              # double 0.75907868095691178
	.quad	0x3fdb2992ac6a813e              # double 0.42441241109374406
	.quad	0x3fa9f94d1dbba020              # double 0.050730142478471629
	.quad	0x3f96a378743a99c0              # double 0.022107965559053033
	.quad	0x3feddba085bb1197              # double 0.93305994147572135
	.quad	0x3fed5e343710639e              # double 0.91774950747195638
	.quad	0x3fe96231d89f432c              # double 0.79323665913589058
	.quad	0x3fe96c7cf526df99              # double 0.79449317818852017
	.quad	0x3fd790a193467d2a              # double 0.36820258505209102
	.quad	0x3fe20c6b31db8d6e              # double 0.56401595819299444
	.quad	0x3feca77397d75c63              # double 0.89544086128706757
	.quad	0x3fd3cb8b426b4c50              # double 0.30929833875888324
	.quad	0x3fde0373b0ef3eec              # double 0.46896068838849092
	.quad	0x3fc09a73feff3d6c              # double 0.12971353484179404
	.quad	0x3fdc7f36150c0832              # double 0.44526435904856776
	.quad	0x3fbe287b98bc2170              # double 0.11780521849516901
	.quad	0x3fe62893ce4645e5              # double 0.69245329177846016
	.quad	0x3fe685399986625b              # double 0.70376281724299916
	.quad	0x3fe2e045e05d30df              # double 0.5898770696744825
	.quad	0x3fcd74893242b2f8              # double 0.23011889413955777
	.quad	0x3fe20a4e4763070a              # double 0.56375802939166531
	.quad	0x3fead60505383d4c              # double 0.83862544078321255
	.quad	0x3fe050087c6727b4              # double 0.50976967141581619
	.quad	0x3fed3fda3a55a0e7              # double 0.91404448884443645
	.quad	0x3fe3c6ca090b6a72              # double 0.61801625982782427
	.quad	0x3fe01117893d062a              # double 0.50208641819353272
	.quad	0x3fddc80ddda3dd4c              # double 0.46533533710995267
	.quad	0x3fea553a9b94e98c              # double 0.82290392291115344
	.quad	0x3fd0d58885dd9880              # double 0.26303303788007071
	.quad	0x3fd4d945ced38e30              # double 0.32576127241029251
	.quad	0x3fd9ec624a8a29d0              # double 0.40505273131625774
	.quad	0x3fe36a6d190da466              # double 0.60674147504063281
	.quad	0x3fcf75b922a1ab68              # double 0.24578012648575087
	.quad	0x3fe115e993684783              # double 0.53392485418793034
	.quad	0x3fea2d91d639d6e9              # double 0.81806270447733909
	.quad	0x3fda51666ea831c0              # double 0.411218269408689
	.quad	0x3fe29829fbdefaf3              # double 0.58107470696981378
	.quad	0x3fb7e57ee48324f0              # double 0.093345576085215986
	.quad	0x3fcf6715f7453754              # double 0.24533342908619693
	.quad	0x3fafebf8a674a710              # double 0.062347193068786777
	.quad	0x3fb3b0c628b133f8              # double 0.076916108069056466
	.quad	0x3fe6c5335773b2ac              # double 0.71157233314950963
	.quad	0x3fe5535c83297d3b              # double 0.66642594926444276
	.quad	0x3fe18cee2f25702c              # double 0.54845341881037291
	.quad	0x3fe8b35dc460115f              # double 0.77189529757064779
	.quad	0x3fa8662562c472a0              # double 0.047654312426151479
	.quad	0x3fea5f5d57290e78              # double 0.82414118789206636
	.quad	0x3fee5d50982a2a5f              # double 0.94889096946401341
	.quad	0x3fe9ba25f87865fd              # double 0.80397318391186412
	.quad	0x3fc5ccdb30ceb5bc              # double 0.17031421549965653
	.quad	0x3fc2fc4b4a150258              # double 0.148324404881367
	.quad	0x3fe2d7c7fb744aff              # double 0.58884047615205748
	.quad	0x3fd4844c506c19f4              # double 0.32057483533608822
	.quad	0x3fdd9b5f534ada2c              # double 0.46260817655584918
	.quad	0x3fdcbd21f47714a4              # double 0.44904374002028136
	.quad	0x3fd9c6b73b1dbc9e              # double 0.40275364659368929
	.quad	0x3fed501b3104ccfc              # double 0.91602859090781363
	.quad	0x3fd07626ed7d6a30              # double 0.25721142952321241
	.quad	0x3fb251f7bb7e4d78              # double 0.071563227915523941
	.quad	0x3fce23ee37a241fc              # double 0.23547151295180402
	.quad	0x3fee43fbc09d75b3              # double 0.9457987558377482
	.quad	0x3fbb5fa37489bea8              # double 0.10692807765166867
	.quad	0x3fe31f0ad0e6451a              # double 0.59753933716470731
	.quad	0x3fec00118d10681e              # double 0.87500836898403
	.quad	0x3fcca24f9cfd8514              # double 0.22370333829443523
	.quad	0x3fc36003b4e55cd4              # double 0.15136762936410852
	.quad	0x3fe402daca94cb63              # double 0.62534846846243075
	.quad	0x3fee9ccf8795c091              # double 0.95664192658843394
	.quad	0x3fe01e5c7294bb0c              # double 0.50370619181725962
	.quad	0x3fa6749249735d00              # double 0.043858119455473243
	.quad	0x3fe52c3eff6f07a2              # double 0.66165113343616988
	.quad	0x3fc6b76358461588              # double 0.17747155962221606
	.quad	0x3fddcbc0c0ac5d14              # double 0.4655610925269269
	.quad	0x3fe83f45abf9f1cf              # double 0.75772365178232259
	.quad	0x3fd2d3f8fb62e026              # double 0.29418777989804068
	.quad	0x3fec6d8b3a4b4dae              # double 0.8883720530088135
	.quad	0x3feacf3b091154ce              # double 0.8377967049697419
	.quad	0x3fecf1fe9f0baf5b              # double 0.90454035819628176
	.quad	0x3fe0f5b29c237c35              # double 0.52999239440749213
	.quad	0x3fee00c2bfd92c47              # double 0.93759286375405615
	.quad	0x3fde8e1b2dda4ca2              # double 0.47742347219282
	.quad	0x3fe9fd3bce6c2339              # double 0.81216230694653924
	.quad	0x3fa51c3d113a2f00              # double 0.041231067994059956
	.quad	0x3fef293471dcbe4a              # double 0.97377989042974744
	.quad	0x3feb154592af0114              # double 0.84634665154593102
	.quad	0x3fdabd9eba3a7c48              # double 0.41782348810551584
	.quad	0x3fe748a6b6ea9c86              # double 0.72761855817670162
	.quad	0x3fd455d8a350b836              # double 0.3177396387935717
	.quad	0x3fef68a6fd6c4639              # double 0.98152493950528374
	.quad	0x3fe670862f1f4625              # double 0.70123585895106955
	.quad	0x3fd0f56263ac0c22              # double 0.26497707112884161
	.quad	0x3fe653c0f52baa4c              # double 0.69772384533764287
	.quad	0x3fc7e41c5fabc3c8              # double 0.18664889022286801
	.quad	0x3fc0e0660786da58              # double 0.1318481003524592
	.quad	0x3fe4815901a9c0e0              # double 0.6407895119173439
	.quad	0x3fd74519be966340              # double 0.36359256374412396
	.quad	0x3fb3b68edb878b00              # double 0.077004364582119678
	.quad	0x3fe16f613f684d4d              # double 0.54484617599738672
	.quad	0x3fefb2c5dfa1f514              # double 0.990572869093429
	.quad	0x3fd58acb735de01a              # double 0.3365963579776704
	.quad	0x3fe79d1f32a18ff2              # double 0.73792991532218211
	.quad	0x3f50d8f6f443d000              # double 0.0010282909070697954
	.quad	0x3fe67bdf6758a339              # double 0.702621175621153
	.quad	0x3fec17fe6c1a3b4b              # double 0.87792893518221982
	.quad	0x3fedd48da371ced5              # double 0.9321964447285277
	.quad	0x3fd05ded6296fd7c              # double 0.25573286655340843
	.quad	0x3fc4d353401d9e24              # double 0.16269913321160445
	.quad	0x3fc7bfde4a1ec128              # double 0.18554285639903267
	.quad	0x3fe7344884b5670c              # double 0.72513223571442742
	.quad	0x3fd9c6c7404908ae              # double 0.40275746610508179
	.quad	0x3fe237bdd67e404e              # double 0.56930438893506063
	.quad	0x3fedd676c59860f7              # double 0.93242968170946383
	.quad	0x3fe576f97e771ba3              # double 0.67077326488730582
	.quad	0x3fd0a1c05f7d4b3e              # double 0.2598725254548987
	.quad	0x3fe23a87ca3ed1da              # double 0.56964482785275128
	.quad	0x3feee538cdef20ac              # double 0.96548118802549742
	.quad	0x3fd1225d52be9746              # double 0.26772244530217326
	.quad	0x3fcc21392a34d1f4              # double 0.21976389466148272
	.quad	0x3fefe562669ea921              # double 0.99675102274821736
	.quad	0x3fd494534563fa16              # double 0.32155305649203691
	.quad	0x3fe7f898236deb95              # double 0.74909598274040212
	.quad	0x3fe6b68b6bdd781e              # double 0.70978327815442177
	.quad	0x3fe625ad221b3b79              # double 0.69209915791894538
	.quad	0x3fe50e73addbc7d0              # double 0.65801414448491791
	.quad	0x3feb8cc0e29f310b              # double 0.86093181860044987
	.quad	0x3fb8e50db909f660              # double 0.097245080638424408
	.quad	0x3fe693cf1ae952a8              # double 0.70554309135566928
	.quad	0x3fb21d903e21ea00              # double 0.070763602418004723
	.quad	0x3fca0723a2ebbea4              # double 0.20334287123795491
	.quad	0x3fd6b226daf4c23e              # double 0.3546235216372543
	.quad	0x3fe570bb9554017c              # double 0.67001132169393385
	.quad	0x3feffde2af19074b              # double 0.99974188040526124
	.quad	0x3fdf17e32f98f988              # double 0.48583297393988589
	.quad	0x3faae83489feaf60              # double 0.052552835316730606
	.quad	0x3fe211d38cd987e9              # double 0.56467607030594735
	.quad	0x3fe4064c18fd5c57              # double 0.62576870804594875
	.quad	0x3fe4b48501a9d4b0              # double 0.64703607869036794
	.quad	0x3fcff81e561f6000              # double 0.24975947575762802
	.quad	0x3fd52fab56149dd0              # double 0.33103450208952001
	.quad	0x3fd2d2d80a89a186              # double 0.29411889103951017
	.quad	0x3fd09f02c4d45636              # double 0.25970524999260947
	.quad	0x3fe1e5e46ce6d4da              # double 0.55931302327976629
	.quad	0x3fde109d41acc524              # double 0.46976405538142019
	.quad	0x3feb859904bb083c              # double 0.86005831645912378
	.quad	0x3fd0d5f808da6184              # double 0.26305962433391294
	.quad	0x3fec358fdc94f25b              # double 0.88153832514178576
	.quad	0x3fd4370f8e99202a              # double 0.31586064267730996
	.quad	0x3fdde7a911a18cb6              # double 0.46726443025381614
	.quad	0x3fdb8ed0b22e9222              # double 0.4305917491967951
	.quad	0x3fe1c6b20c172668              # double 0.55550482140934054
	.quad	0x3fefaa61503f02ba              # double 0.98954835579942046
	.quad	0x3fcc8fb0f0e8174c              # double 0.22313510668771597
	.quad	0x3fd7ab19fe8a2e68              # double 0.36981820924186204
	.quad	0x3fe31abf4aeb6acc              # double 0.59701504357084323
	.quad	0x3fef29346aa09ab1              # double 0.97377987695366219
	.quad	0x3fe5ea20eabd40c9              # double 0.68483014915002471
	.quad	0x3fbdcab28c4c4ee0              # double 0.11637416768308695
	.quad	0x3fbc43d45c533290              # double 0.11040999654796679
	.quad	0x3fe1b5a696a14400              # double 0.55342416210089596
	.quad	0x3fd17ef4f8c2d640              # double 0.27337383549761185
	.quad	0x3fe169a0452adf46              # double 0.54414380559226383
	.quad	0x3fdb12bca18c1efc              # double 0.42301860595806295
	.quad	0x3fb5a09787ea5e70              # double 0.084481688196655246
	.quad	0x3fdf0e584cbcf098              # double 0.48525054449033567
	.quad	0x3fd4dc271507f70a              # double 0.32593705228633552
	.quad	0x3fc6e7776c9958f0              # double 0.17893879702268789
	.quad	0x3fe5e98f324e25b8              # double 0.68476066422697723
	.quad	0x3fd2fd482674a5e6              # double 0.29670909648356625
	.quad	0x3fc52ca800e7ed28              # double 0.16542530102001618
	.quad	0x3fc2f8fce348e008              # double 0.14822350595363809
	.quad	0x3fe284a9c909993a              # double 0.5786942411912499
	.quad	0x3fb3577f26549ff8              # double 0.075553843362854312
	.quad	0x3fe2fb6bb5bfd376              # double 0.59319100854791773
	.quad	0x3fef70bb1b772e6b              # double 0.98251109470716124
	.quad	0x3fe356b8ffe48b3c              # double 0.60433626154949804
	.quad	0x3fd1d2514b35c652              # double 0.2784617647622315
	.quad	0x3fe44bbe5779baa1              # double 0.63424603543338176
	.quad	0x3fe9f2853ca28c4e              # double 0.8108545479084428
	.quad	0x3fe135ec29edc12c              # double 0.53783233823017929
	.quad	0x3fc75e3d4ad91b6c              # double 0.1825634589642634
	.quad	0x3fe172ddc16aa3f7              # double 0.54527175690338836
	.quad	0x3fef8342b31a638b              # double 0.98477301579542719
	.quad	0x3fd7ac13210ab080              # double 0.3698776076005359
	.quad	0x3fe3ec1deef4f7c1              # double 0.62257286711950865
	.quad	0x3fc88126d8feea18              # double 0.19144139857765263
	.quad	0x3fe83e3b011e34ab              # double 0.75759649484975478
	.quad	0x3fd33454da04ab18              # double 0.3000690583309491
	.quad	0x3fea457627c85fdb              # double 0.82097919244824469
	.quad	0x3fddacf2f4c560fa              # double 0.46368097213191073
	.quad	0x3fc5b34283129f20              # double 0.16953307533298645
	.quad	0x3fe5dcc7f7858baf              # double 0.68320082038950669
	.quad	0x3fdb6df29d18cf66              # double 0.42858567563529559
	.quad	0x3fe75cd596d6c822              # double 0.7300823160242127
	.quad	0x3fe2a41082d228ba              # double 0.58252740431750927
	.quad	0x3f8694cd6c991a40              # double 0.011026005627298052
	.quad	0x3fef4face4291a86              # double 0.97847599566087307
	.quad	0x3feb85ff9aff35ce              # double 0.86010723374209319
	.quad	0x3fe18e040293346f              # double 0.54858589651997913
	.quad	0x3fe64dbd30398463              # double 0.69698962611085979
	.quad	0x3fd1f686b66c3ba2              # double 0.28067176642155733
	.quad	0x3fd31d7383106d02              # double 0.29867255973086071
	.quad	0x3fe211d51954e7b1              # double 0.5646768088110915
	.quad	0x3fc94360f9a8a454              # double 0.19736873808259026
	.quad	0x3fd56f34f23ba9cc              # double 0.33491252570698005
	.quad	0x3fd8ced12b52c11c              # double 0.38762311201846145
	.quad	0x3fd367c0d2aa406a              # double 0.30320759365804995
	.quad	0x3fe07af2d0b3ce1b              # double 0.51500836145573048
	.quad	0x3fe1be01db70896a              # double 0.55444424495025868
	.quad	0x3fe1dde083f43565              # double 0.55833459636930327
	.quad	0x3fe7c6938c4a074b              # double 0.74299027824620489
	.quad	0x3fe31a512951b70d              # double 0.59696252889782075
	.quad	0x3fe110e2184be017              # double 0.53331093545330333
	.quad	0x3fc7d4d6b872e83c              # double 0.18618282324115565
	.quad	0x3fcc1d3ad72bcd08              # double 0.2196420241012691
	.quad	0x3fd0a309ee6922fe              # double 0.25995109827321972
	.quad	0x3fdfebc4ace9cbca              # double 0.49876515279828182
	.quad	0x3fedcd2eae107e62              # double 0.93129667279204065
	.quad	0x3fe5c529dd5bef56              # double 0.68031781419947879
	.quad	0x3fcbc6817f6a6914              # double 0.21699541779964504
	.quad	0x3fbda495cd498b28              # double 0.11579262029549098
	.quad	0x3fd35b88e3fd87e6              # double 0.30246183647807212
	.quad	0x3fea2a2ac7c03ba0              # double 0.81764735235070773
	.quad	0x3fe2426c7a3bc788              # double 0.57060836671574666
	.quad	0x3fe38d6f6985fa2e              # double 0.61101503953961411
	.quad	0x3fd3df2f40b6ff06              # double 0.31049710578734879
	.quad	0x3fe579abee06df05              # double 0.67110249032609259
	.quad	0x3fde9a1e349abcbe              # double 0.47815661561157785
	.quad	0x3feee9860092f608              # double 0.96600628006098165
	.quad	0x3fe115d0663c8281              # double 0.53391284912147807
	.quad	0x3fda80d944a3c322              # double 0.41411430075736366
	.quad	0x3fde95047cbfacd8              # double 0.47784530813687587
	.quad	0x3fd48d602d74633a              # double 0.32112888754777524
	.quad	0x3fec9cce5380c399              # double 0.89414135274101902
	.quad	0x3fa0c1fe86e42160              # double 0.032730058637812531
	.quad	0x3fe87b419e290b4d              # double 0.76504593744935223
	.quad	0x3fcbce3bc9017a08              # double 0.21723124804243832
	.quad	0x3fb249da0fa81008              # double 0.071439389059435254
	.quad	0x3feb41c22030d6f7              # double 0.85177713668119182
	.quad	0x3fc54dc24fe54d08              # double 0.16643551732213546
	.quad	0x3fc0ab7950ff76a4              # double 0.13023296790099892
	.quad	0x3fd72667e010433e              # double 0.3617191017265674
	.quad	0x3f8facddfe7fe600              # double 0.015466436700068975
	.quad	0x3fcd26ca7b170e00              # double 0.22774630556351383
	.quad	0x3fb13a094a859ba0              # double 0.067291813558411295
	.quad	0x3fb2d0234d8fc218              # double 0.073488432346274002
	.quad	0x3fd9d4ce9e500692              # double 0.40361371479239339
	.quad	0x3fbb6d0fc861fed0              # double 0.10713289873273912
	.quad	0x3feec81932889685              # double 0.96192607755502079
	.quad	0x3fe3dcec128095d6              # double 0.62071803678252979
	.quad	0x3fde2eb8362983c2              # double 0.47160153664850324
	.quad	0x3fde77126af9bae0              # double 0.47601757475687911
	.quad	0x3fef6c96e352243f              # double 0.98200554274183804
	.quad	0x3fbb26f0e04d0180              # double 0.10606294132322169
	.quad	0x3fc6807da020834c              # double 0.1757962257261404
	.quad	0x3fc62fe28c201378              # double 0.17333633272223969
	.quad	0x3fd326f13aafc38c              # double 0.29925184947119798
	.quad	0x3febb36960e29896              # double 0.86565083430174883
	.quad	0x3fd8e713d1f652fe              # double 0.3891038465892932
	.quad	0x3fe1ec47d49d33a4              # double 0.56009284521279712
	.quad	0x3fe398736da04999              # double 0.61235972796775962
	.quad	0x3fd9a12f8195ecd2              # double 0.40046298651550416
	.quad	0x3fda66dbe5211e22              # double 0.41252801299967434
	.quad	0x3fb7f4b54b79eff0              # double 0.093577700545153907
	.quad	0x3feca2d977ad0cb7              # double 0.89487908720220488
	.quad	0x3fd1f5dff37a8c9c              # double 0.28063200738160687
	.quad	0x3fcb00fd20a4a4c4              # double 0.21096767515090253
	.quad	0x3feb4b842530ed9e              # double 0.85296828521625279
	.quad	0x3fe03a89db7bfc5f              # double 0.50714581363707711
	.quad	0x3fa4300d6d37b230              # double 0.039429111082288748
	.quad	0x3fe4d1da6511e0e4              # double 0.65061683407023141
	.quad	0x3fe58760143cca55              # double 0.67277530624989856
	.quad	0x3fe80cc797241065              # double 0.75156001586630039
	.quad	0x3fd15b929ba49716              # double 0.27121415328507348
	.quad	0x3fea0f546ded19e9              # double 0.81437131376224869
	.quad	0x3fdb10a7b520c1fe              # double 0.42289154709126808
	.quad	0x3fd7b6642b7e459c              # double 0.3705072808016554
	.quad	0x3fb9b11480278da8              # double 0.10035827759525395
	.quad	0x3fe8a528b8311a70              # double 0.77016101813280891
	.quad	0x3fde66e4a4742536              # double 0.47503009853297173
	.quad	0x3fd2f474ee690be4              # double 0.29617045671710529
	.quad	0x3fe1799ace0084ed              # double 0.546094324443542
	.quad	0x3feb77525df76946              # double 0.85831564286062512
	.quad	0x3fcf5f718a98248c              # double 0.24510020510959796
	.quad	0x3fdf64b4fcdf2c14              # double 0.49052166647442275
	.quad	0x3fec12c46ec63074              # double 0.87729093204099095
	.quad	0x3fe1f3ba9955710f              # double 0.56100206325530333
	.quad	0x3feea99bf8c8eab0              # double 0.95820425596988024
	.quad	0x3fd78e7c1547fc6c              # double 0.36807157591096629
	.quad	0x3fee36c9ff8f162f              # double 0.94418811715940432
	.quad	0x3fe10ca55b6ed6f0              # double 0.53279369218827632
	.quad	0x3fe6769929b3ac0c              # double 0.70197733063594248
	.quad	0x3fed376b11697643              # double 0.91301492119573202
	.quad	0x3fe3ce0ef4368d69              # double 0.61890361497755209
	.quad	0x3fdb5212e1591a6a              # double 0.4268843842186586
	.quad	0x3fd538f7b7723d58              # double 0.33160202898667057
	.quad	0x3fd8bcb6114d001c              # double 0.38651801766900618
	.quad	0x3fdaff818631d428              # double 0.42184484581895498
	.quad	0x3fdf387dfeedbcce              # double 0.4878230084932057
	.quad	0x3fe45cecb97053a5              # double 0.63634334772597312
	.quad	0x3fcde3b4cb7ddeec              # double 0.23351154266469309
	.quad	0x3fe9bba2bda79ed3              # double 0.80415474931666109
	.quad	0x3fe3cf8a51cda350              # double 0.61908451058580205
	.quad	0x3fc859b6b20a33c8              # double 0.1902378434500902
	.quad	0x3f96ccc7162e6ac0              # double 0.022265539864387618
	.quad	0x3fe2308b1607edd9              # double 0.56842569640087526
	.quad	0x3fc4b40890d7afa0              # double 0.16174418518437239
	.quad	0x3fd8a748c5672a2a              # double 0.38521022107730352
	.quad	0x3fe257548edc8a96              # double 0.57316043760904978
	.quad	0x3fe4cd96b0607ab3              # double 0.65009626816375599
	.quad	0x3fe5504c7b752ef7              # double 0.66605209458199865
	.quad	0x3fe878a0d2e2c37b              # double 0.76472512425071615
	.quad	0x3fe6b3bab998e550              # double 0.7094396233507414
	.quad	0x3fe6dc395c5cc19d              # double 0.71438282050626223
	.quad	0x3fe69317a98c6bf8              # double 0.70545561900087161
	.quad	0x3fe5b3923042e9be              # double 0.67817029405642137
	.quad	0x3fe86c811d5423dc              # double 0.76324516037231715
	.quad	0x3fea6e110256a9ab              # double 0.82593584496253436
	.quad	0x3fd629aa3c644400              # double 0.34629302880881596
	.quad	0x3fb837934f612d20              # double 0.094598013763221633
	.quad	0x3fd52b40cbf76b00              # double 0.33076496046639647
	.quad	0x3fea9fb8db1fc44b              # double 0.83199732587503072
	.quad	0x3feba3858022eeba              # double 0.86371111895228769
	.quad	0x3fed0a555bc24946              # double 0.90751140519777418
	.quad	0x3fa636987a631b60              # double 0.043385281505428308
	.quad	0x3fd1d34cc46ec7de              # double 0.2785217207230043
	.quad	0x3fca1e23e1336e98              # double 0.2040448045362282
	.quad	0x3fd7fd00a1690354              # double 0.37481704485621958
	.quad	0x3fdaab2ac022921e              # double 0.41669720423877432
	.quad	0x3fa0c8b0c1a8eb10              # double 0.032781146659962457
	.quad	0x3fe8449f0ff46911              # double 0.75837662807615136
	.quad	0x3fb1a18cbf8e7808              # double 0.068871304289558677
	.quad	0x3febc96d311f9bb4              # double 0.86833819956233648
	.quad	0x3fef61b63c0f0be2              # double 0.98067771654347902
	.quad	0x3fe9175b0f0bc255              # double 0.78410103739413251
	.quad	0x3fd58b96e0e3e2c2              # double 0.33664485895091556
	.quad	0x3f94488dc1b9fec0              # double 0.019808020543222282
	.quad	0x3fe0972b72bf7bc1              # double 0.51845333492007495
	.quad	0x3f8bbfb46cdb8d80              # double 0.013549241611548579
	.quad	0x3fe10fe404b9ad9a              # double 0.53318978236113712
	.quad	0x3fb26e044347e9a0              # double 0.071991220880511353
	.quad	0x3fd92fbd526a60ba              # double 0.39353879021065163
	.quad	0x3fd56010ced7cdd4              # double 0.33398838233480643
	.quad	0x3fe1c07ac06fecbf              # double 0.55474603257552946
	.quad	0x3fab8d3d3a0549f0              # double 0.053811944325065642
	.quad	0x3fe6d823857a0071              # double 0.71388412542002133
	.quad	0x3fe4c64d4ade634f              # double 0.64920677779000779
	.quad	0x3fdc61a8a4b4db04              # double 0.44346061787238988
	.quad	0x3fe3709ac9943df5              # double 0.60749568339264093
	.quad	0x3fe55ee56cbafdf7              # double 0.66783400761045086
	.quad	0x3fe3c403ad63efbd              # double 0.617677534726219
	.quad	0x3fe0d66342969ae7              # double 0.52617037778403819
	.quad	0x3fc17e8d2ab13d54              # double 0.13667454323374761
	.quad	0x3fad1c0fdb782080              # double 0.056854720631293709
	.quad	0x3fd2db303face050              # double 0.2946282026127891
	.quad	0x3fba3232c14061a0              # double 0.10232846468023249
	.quad	0x3fe59af740808a36              # double 0.67516672704761649
	.quad	0x3fb70fbc8418d800              # double 0.090083868265395494
	.quad	0x3fd0a1c571daf23c              # double 0.25987373465230568
	.quad	0x3f974346e740a880              # double 0.022717578758751689
	.quad	0x3feb8cc68b01b53e              # double 0.86093451642742713
	.quad	0x3feed575f3097329              # double 0.96355721920153769
	.quad	0x3fd149360328aa6e              # double 0.27009344395143031
	.quad	0x3fe374c49ee9eb80              # double 0.60800391233293283
	.quad	0x3fde08cedcf9da38              # double 0.46928760127721914
	.quad	0x3fe2596f94abc3cc              # double 0.57341746365829627
	.quad	0x3fd8954914c9960a              # double 0.38411166219734183
	.quad	0x3fdf2a08517ba686              # double 0.48694045979809919
	.quad	0x3fed3dcbdd6f9043              # double 0.91379349946192467
	.quad	0x3fe028d88110c75f              # double 0.50498604972947791
	.quad	0x3fd6b1930622c168              # double 0.35458827590175312
	.quad	0x3fd391a9e17ec1c0              # double 0.30576560040483614
	.quad	0x3fe28bda3f0ccca0              # double 0.57957184137775997
	.quad	0x3fd98b35c5ddc96e              # double 0.39912170718084539
	.quad	0x3fd370592b94e57e              # double 0.30373219734209289
	.quad	0x3fc20f819273ccb0              # double 0.14109820986741317
	.quad	0x3fd433feff9b7dec              # double 0.3156735893407745
	.quad	0x3fbec08e38bb4410              # double 0.12012566456839147
	.quad	0x3fdb3e0289c5a6fe              # double 0.42565978483490585
	.quad	0x3fea8311ae49d19e              # double 0.828499641806548
	.quad	0x3fcbbff85972ace8              # double 0.21679596297813153
	.quad	0x3feef09e87afbc36              # double 0.9668724680067331
	.quad	0x3fede0de0158e518              # double 0.93369961035856175
	.quad	0x3fb1091ba9b55ac8              # double 0.066545227940291274
	.quad	0x3fe037a12b2c5e9c              # double 0.50679071838654322
	.quad	0x3fe68747b7b25e14              # double 0.70401368978758905
	.quad	0x3fe03d59bbd3b80f              # double 0.5074890774246813
	.quad	0x3fd4d65240664604              # double 0.32558113373769992
	.quad	0x3fb4b0832e4d0778              # double 0.080818365863732811
	.quad	0x3fe6588ef494cff6              # double 0.69831035394463359
	.quad	0x3feebbf4dd2e15a8              # double 0.9604439086839891
	.quad	0x3fef9a90173774ba              # double 0.98761753592011492
	.quad	0x3fe4b5261a6a7e6d              # double 0.64711289557813034
	.quad	0x3fe3a56ec555ed98              # double 0.61394442121620596
	.quad	0x3fe175c70ada7829              # double 0.54562713737300783
	.quad	0x3fe49e1b3a306472              # double 0.64430009236379093
	.quad	0x3fd4ce06182ac64c              # double 0.32507469520632948
	.quad	0x3fdd34fa4fa71006              # double 0.45635850695202895
	.quad	0x3fd381e79e6dff64              # double 0.30480375739715826
	.quad	0x3fd303714384bb0a              # double 0.29708510964967216
	.quad	0x3fb60a10e86dd9d8              # double 0.086091095681559593
	.quad	0x3fc993da80d037ac              # double 0.19982463159288721
	.quad	0x3f80cbf813f817c0              # double 0.0082015400976266361
	.quad	0x3f7b8ea8827f3080              # double 0.0067278463756786921
	.quad	0x3fba1da90d984ce8              # double 0.10201508123309433
	.quad	0x3fdacfbcb46da772              # double 0.41892926807360376
	.quad	0x3fd2ca42626a1c3e              # double 0.29359492884436011
	.quad	0x3fa8c135f49e7970              # double 0.048349081145022121
	.quad	0x3fea2fca9e8415ef              # double 0.81833392105244041
	.quad	0x3fe70add88802f87              # double 0.72007633838937657
	.quad	0x3fec0b3a7f787e4f              # double 0.87637066742531455
	.quad	0x3fd9e728bb7d257e              # double 0.40473383244951566
	.quad	0x3fe3a25c954967a8              # double 0.61356953771177292
	.quad	0x3feb74805dd22538              # double 0.8579713661612578
	.quad	0x3f91f1c594fd1bc0              # double 0.017523848742054815
	.quad	0x3fbc3e51f5284760              # double 0.11032592997824286
	.quad	0x3fd227f8d3c2fd42              # double 0.28368969611979733
	.quad	0x3fe20cdcab1b5699              # double 0.56407006663603731
	.quad	0x3fe062535ca00bb4              # double 0.51200264063697043
	.quad	0x3fc8d83f08a27928              # double 0.19409931108106915
	.quad	0x3fd908045b4c5908              # double 0.3911143199524223
	.quad	0x3fcabf4d0bcda384              # double 0.20896304203349925
	.quad	0x3fe8b2eff27cfa6a              # double 0.7718429313752726
	.quad	0x3fe5c22fdda407d5              # double 0.67995446480949318
	.quad	0x3fea912827aabaf1              # double 0.83021934268421493
	.quad	0x3f699a4ea5c83900              # double 0.0031253372274085978
	.quad	0x3f7e3cf9d21bb800              # double 0.0073823698637465185
	.quad	0x3fdb6d81fce62e98              # double 0.42855882355864017
	.quad	0x3feff8f65a8c2f26              # double 0.9991409080989555
	.quad	0x3fe5e5f1498573fd              # double 0.68431915626172179
	.quad	0x3fed3a65cdf05c34              # double 0.9133786222690845
	.quad	0x3fe5b1631ae8da33              # double 0.67790370231415975
	.quad	0x3fede18ea8561ffe              # double 0.93378384473999154
	.quad	0x3feb7f76aebeb7f9              # double 0.8593095219600847
	.quad	0x3fc78346ff176380              # double 0.18369376617081556
	.quad	0x3feec92692fb664e              # double 0.96205452639987654
	.quad	0x3fe972a4cc6fd6a9              # double 0.79524459771228806
	.quad	0x3fe69c39077b0137              # double 0.70657016240151094
	.quad	0x3fcda9fca4f70b30              # double 0.23175008826191279
	.quad	0x3fd47be8e7599d98              # double 0.32006285279063595
	.quad	0x3fdfcedf3d35dec8              # double 0.49700146653729549
	.quad	0x3fd949ca25645c6c              # double 0.39512876178327505
	.quad	0x3fdcc3d9cb90e2ee              # double 0.4494537818859915
	.quad	0x3fdd9a6b61b3c28a              # double 0.46255001584271638
	.quad	0x3fe7ea7a96d373d2              # double 0.74737290819359203
	.quad	0x3fd1203b054db9e2              # double 0.26759219663554579
	.quad	0x3f9a9a48653d9060              # double 0.025979167155483984
	.quad	0x3fed5ee8845027ec              # double 0.91783548204807408
	.quad	0x3fdcc6b16b5de066              # double 0.44962726101903738
	.quad	0x3fd81ebe0e9be458              # double 0.37687636782317702
	.quad	0x3fdb10b6b2b4d7fe              # double 0.42289512111472038
	.quad	0x3fe4b97c632ad6c0              # double 0.64764232033368074
	.quad	0x3fe43d6b9dd7868b              # double 0.63249760464187099
	.quad	0x3fe9ea396af26959              # double 0.8098418320471793
	.quad	0x3fc7a88c0b709b00              # double 0.18483114775263942
	.quad	0x3fe3a23ed20ec195              # double 0.61355534579165527
	.quad	0x3fe6746f70f9a4ef              # double 0.7017132956072184
	.quad	0x3f95041cdd344860              # double 0.020523501397356703
	.quad	0x3fad226341a80800              # double 0.056902982487386566
	.quad	0x3fcbdcd3cd8a9b58              # double 0.21767661606028343
	.quad	0x3fdbd66a6dc0a248              # double 0.43496189802184348
	.quad	0x3fea5f476baf4d39              # double 0.82413073570425077
	.quad	0x3fe3b19b6dc3afc8              # double 0.61543055952415049
	.quad	0x3feb8788cbbc177b              # double 0.86029472152652831
	.quad	0x3fc5518833af9190              # double 0.16655066035958699
	.quad	0x3fed0e405565a81c              # double 0.90798966101761235
	.quad	0x3fdadc85f7d61226              # double 0.41970967486148181
	.quad	0x3fe15383af4b8dd6              # double 0.54144462811785377
	.quad	0x3fd185989e7c66a6              # double 0.27377906300680832
	.quad	0x3fe0510b10de43c6              # double 0.50989297194075145
	.quad	0x3fd7551b274fcac4              # double 0.36456946219474795
	.quad	0x3fda3b11c85189b8              # double 0.40985531389574303
	.quad	0x3fd342f36bc66cbc              # double 0.30096135640060218
	.quad	0x3fe4f482cd5b5499              # double 0.65484752758733855
	.quad	0x3fdddd36db3bb6fe              # double 0.46662684831140655
	.quad	0x3fbd479ba447ea70              # double 0.11437390099301026
	.quad	0x3fd0af6ca65ebc2a              # double 0.26070705649448433
	.quad	0x3fe70784a4a20b04              # double 0.7196677413452055
	.quad	0x3fbacfccb6755300              # double 0.10473327116535458
	.quad	0x3fd47762489db4c2              # double 0.31978661624345872
	.quad	0x3fdae24ee2398bbc              # double 0.42006275264992232
	.quad	0x3fe1f55f34854ee4              # double 0.56120262392002163
	.quad	0x3fc908b62c294e18              # double 0.19557835727992834
	.quad	0x3fd8377d14eac36a              # double 0.37838675539665323
	.quad	0x3fb7f4cce0a62328              # double 0.093579106183949379
	.quad	0x3fdb7321d2797f68              # double 0.42890210680160701
	.quad	0x3f90561b9162cbc0              # double 0.015953474758770403
	.quad	0x3fc9ee11e0e83128              # double 0.20257781488215554
	.quad	0x3fe5d2153cd92b8c              # double 0.6818948925441517
	.quad	0x3fc3446eef15ffe4              # double 0.15052591966741524
	.quad	0x3fe5e07669b309fa              # double 0.6836502136650886
	.quad	0x3fcfe6dce04ff610              # double 0.24923287346602807
	.quad	0x3fe32d4aa9967c2f              # double 0.5992787658941604
	.quad	0x3fee18b0eb4633e3              # double 0.94051404907224556
	.quad	0x3fcbca13dab93a34              # double 0.2171044176088387
	.quad	0x3fd8e08dc7956cd2              # double 0.38870567789645094
	.quad	0x3fdeb031d70ba2dc              # double 0.47950407028706166
	.quad	0x3fea9c900f7bd40a              # double 0.83161166214142779
	.quad	0x3f970da5cd295320              # double 0.022512999198016748
	.quad	0x3fa21d78f71f9440              # double 0.035381107489037777
	.quad	0x3fdab0010a61da66              # double 0.41699243558779242
	.quad	0x3fbf4e501aa86a88              # double 0.12228871012522735
	.quad	0x3fe88a05a2c9b971              # double 0.76684839052704323
	.quad	0x3fd8c1fa339f815a              # double 0.38683943787875352
	.quad	0x3fd35f614d989fb0              # double 0.30269653871300317
	.quad	0x3fc1f2ab10b581a4              # double 0.14021814647550201
	.quad	0x3feeee781559aee5              # double 0.96660999460206353
	.quad	0x3fc9fcadc40e2ee8              # double 0.20302364419000374
	.quad	0x3fdd70bfbb012bec              # double 0.460006649610192
	.quad	0x3fc1133c4a551458              # double 0.13339952115544196
	.quad	0x3fdbb322ac5662aa              # double 0.43280855970219057
	.quad	0x3fe99abbcc60a31b              # double 0.80013837735632209
	.quad	0x3fd63948db96548c              # double 0.34724637455048746
	.quad	0x3fe5c02855e14604              # double 0.67970673345024624
	.quad	0x3fead32fdcb81554              # double 0.83827965840525076
	.quad	0x3fbe30e33acb3aa0              # double 0.11793346581837705
	.quad	0x3fc0a4cf2aca3538              # double 0.13002957906102508
	.quad	0x3feefb623d12572c              # double 0.96818649223380282
	.quad	0x3fdb3aa7ddd1292a              # double 0.4254550615484215
	.quad	0x3fc9872b7de3982c              # double 0.19943755766797844
	.quad	0x3fe1773c2093a9ba              # double 0.54580503809602665
	.quad	0x3fe1a51690068a57              # double 0.55140236024846956
	.quad	0x3fe9deed64f448de              # double 0.80846280782341373
	.quad	0x3fef13fe97c2cd5f              # double 0.9711907352524739
	.quad	0x3feabf021d531a24              # double 0.83581643798317317
	.quad	0x3fd866fd52a35bbc              # double 0.38128598280075798
	.quad	0x3fd1e8d747530528              # double 0.27983648267043515
	.quad	0x3fc1db58529f27d4              # double 0.13950637850058334
	.quad	0x3fd23bd667bbceac              # double 0.28490219240414194
	.quad	0x3fd566ef1374d802              # double 0.33440758609810939
	.quad	0x3fb182727df7c328              # double 0.068396716836798377
	.quad	0x3fc72a795e14a334              # double 0.18098370641498607
	.quad	0x3fe3994cac47c96f              # double 0.61246331833380718
	.quad	0x3fcaa0b8637027cc              # double 0.20802979331375437
	.quad	0x3fe08f2fbbe196ab              # double 0.51747881598995116
	.quad	0x3fa1553b3fac8fd0              # double 0.033853389284814406
	.quad	0x3fef3b486edd9f3c              # double 0.97598668721636938
	.quad	0x3fe8114a2ce41a84              # double 0.75211056487826555
	.quad	0x3fdb80f45fcfef52              # double 0.42974576336540793
	.quad	0x3fc1f53212da5628              # double 0.14029527588415758
	.quad	0x3fe4f4f3dffa2f0c              # double 0.65490144486963819
	.quad	0x3fe27a4588639a93              # double 0.57742573393336938
	.quad	0x3fefb62f59563069              # double 0.99098937462396208
	.quad	0x3fe224ffadf588e1              # double 0.56701644874945256
	.quad	0x3fd76f7bee860cd8              # double 0.36617944997142393
	.quad	0x3fc6c7032f2c9a90              # double 0.17794837764195792
	.quad	0x3fcbb171ca491b18              # double 0.21635267617440301
	.quad	0x3fec51423b9e2ae8              # double 0.88491927761182598
	.quad	0x3fe53e3c07a0cf62              # double 0.66384698381305562
	.quad	0x3fe6a2d36c74e901              # double 0.70737620528169043
	.quad	0x3fe1b7ad018d4858              # double 0.55367136290648045
	.quad	0x3fee82500c06959d              # double 0.95340730999730605
	.quad	0x3fdddc504cabb45a              # double 0.46657187926650112
	.quad	0x3fd86a03c5f9692e              # double 0.38147062619613592
	.quad	0x3fe2b2912c81bba5              # double 0.58429773991325773
	.quad	0x3f921cb632617a40              # double 0.017687651467321652
	.quad	0x3fe10da45065e774              # double 0.53291526510950726
	.quad	0x3fed9d26cd913c7a              # double 0.92543354177350001
	.quad	0x3fea113002e8d05c              # double 0.81459808891532814
	.quad	0x3fd6a238e241417e              # double 0.35365125746923087
	.quad	0x3fd76c5256020c06              # double 0.36598642729967457
	.quad	0x3fd6adb6d6740540              # double 0.3543526739377576
	.quad	0x3fd0f92ea2ebfae8              # double 0.26520887289363637
	.quad	0x3fdba1a20403c02a              # double 0.4317402877049995
	.quad	0x3fedbd2e2b30adef              # double 0.92934330401970822
	.quad	0x3fddda183970b014              # double 0.46643643960374104
	.quad	0x3faec684a800b0c0              # double 0.060108323581830714
	.quad	0x3fde77ea4f066c8e              # double 0.47606904713911369
	.quad	0x3fdc16dde30afa76              # double 0.43889567539364494
	.quad	0x3fbadbc6fc622110              # double 0.10491603528692317
	.quad	0x3fe579206d12f6d1              # double 0.67103596976786595
	.quad	0x3fe0802552505f72              # double 0.51564279629654508
	.quad	0x3fd6a8705229aaa0              # double 0.35403068565089235
	.quad	0x3fe3566f5102bac3              # double 0.60430112669367764
	.quad	0x3fc0300e314587a0              # double 0.12646653562393073
	.quad	0x3fecd555b3a76a8b              # double 0.90104184235254203
	.quad	0x3fe16a9b64cc2718              # double 0.54426355063444287
	.quad	0x3f972cf3a87fd0e0              # double 0.022632414969806613
	.quad	0x3fd73a72a33b2a1c              # double 0.3629423708013364
	.quad	0x3fee51534cc3acfe              # double 0.94742741578139067
	.quad	0x3fefd463303374cd              # double 0.99467620291002278
	.quad	0x3fcc20a426551c7c              # double 0.21974613067343174
	.quad	0x3faaf213dadae6e0              # double 0.052628155198773063
	.quad	0x3fe4f033d7083ad3              # double 0.65432159422365499
	.quad	0x3fec2525ff500ff4              # double 0.87953472009439659
	.quad	0x3fe21762ff9c1497              # double 0.56535482333915155
	.quad	0x3fd9135cfe369e42              # double 0.39180683923266113
	.quad	0x3febb723e0a1b1af              # double 0.86610597489702978
	.quad	0x3fcf1bb850efb0ac              # double 0.24303344680754912
	.quad	0x3febd5664fa95498              # double 0.86979976233364464
	.quad	0x3fe83a0f8d978074              # double 0.75708749441765954
	.quad	0x3fe8f5bcbf581dbd              # double 0.77999722835459517
	.quad	0x3fde571c7271be84              # double 0.47406684089853734
	.quad	0x3fe0eff7202ac5d1              # double 0.52929264338143345
	.quad	0x3fd9c99202e9fc9e              # double 0.40292787823268295
	.quad	0x3f7e57da1ebc4280              # double 0.007408000976071194
	.quad	0x3fe36ac2b0f0266e              # double 0.60678228910655974
	.quad	0x3febeb183f5636eb              # double 0.87244808550323449
	.quad	0x3fe7f7e792deb454              # double 0.74901179013762453
	.quad	0x3fdd0c10fda697c6              # double 0.45386147280293831
	.quad	0x3fc35668a61be4fc              # double 0.15107448683537672
	.quad	0x3fe0c2303f8a00bb              # double 0.52370464715934106
	.quad	0x3fce02f0e9403ca4              # double 0.23446475400166833
	.quad	0x3fd469179eeb181e              # double 0.31891432303780387
	.quad	0x3fecc3ebdd3de942              # double 0.89891617976471871
	.quad	0x3fe9844c78d7ad8c              # double 0.79739974596070473
	.quad	0x3fedae06d872b3c7              # double 0.9274934985638702
	.quad	0x3feb7f3cd265b155              # double 0.85928193181238532
	.quad	0x3fef16e6fa805785              # double 0.97154568601648405
	.quad	0x3fee5ee6bc4688e6              # double 0.94908463261188269
	.quad	0x3fea26b51bb831c5              # double 0.81722503103224453
	.quad	0x3fe343d5af0ca98c              # double 0.60203060330722868
	.quad	0x3feb8af9f2704b6b              # double 0.86071488715456945
	.quad	0x3fb9cc46d9b6eed0              # double 0.10077326598451042
	.quad	0x3fdb660d6fac5c70              # double 0.42810378938288007
	.quad	0x3fe37fda29939d86              # double 0.60935695763048225
	.quad	0x3fe9533a9d49807f              # double 0.79140978546276119
	.quad	0x3fd243d5a3345ed6              # double 0.28539029062220089
	.quad	0x3fed7a6723b64641              # double 0.92119175887109617
	.quad	0x3febaf908e8e8a06              # double 0.86518123477100128
	.quad	0x3fd1c0307387682a              # double 0.27735530168650036
	.quad	0x3fbc329943613730              # double 0.11014707465184581
	.quad	0x3fa20f5f8b148b10              # double 0.035273538329667287
	.quad	0x3fef02a7dbf515fe              # double 0.96907418213294227
	.quad	0x3fe42e0c29350a21              # double 0.63062103317526319
	.quad	0x3fe461c4a7cc3ab2              # double 0.63693459294321131
	.quad	0x3fe07b7959ab705f              # double 0.51507251275644339
	.quad	0x3fc3b2994ee2865c              # double 0.15388790466117797
	.quad	0x3fd42d4bed845c3c              # double 0.31526468462965673
	.quad	0x3fe8f50d556633ac              # double 0.7799135845140106
	.quad	0x3fefe0b5cb54a20d              # double 0.99618043625838625
	.quad	0x3fd97af6101fa870              # double 0.39812995504929116
	.quad	0x3fd1a984108df158              # double 0.27597142807623731
	.quad	0x3f7dd48fe7c6ec80              # double 0.0072827931693907333
	.quad	0x3f7a365910bc7000              # double 0.006399486457464576
	.quad	0x3fedd0c1adfd48a0              # double 0.93173297865202542
	.quad	0x3fbe63b1d4f8d6f0              # double 0.1187087197257275
	.quad	0x3fe4e82440f92f29              # double 0.65333759966003868
	.quad	0x3fe577769037dda2              # double 0.67083290259954631
	.quad	0x3fd862c4bbb995a0              # double 0.38102835018647774
	.quad	0x3fdc3a64b166d416              # double 0.44106404613859362
	.quad	0x3fbf7cdbb4bf6750              # double 0.1229989353445522
	.quad	0x3fe9762e5e0041f3              # double 0.79567640647479576
	.quad	0x3fddc42a6817b140              # double 0.46509800114906241
	.quad	0x3fd7a5d6e071552e              # double 0.36949703138573653
	.quad	0x3fc38a31e13b7f3c              # double 0.15265487191845206
	.quad	0x3fe292eaabd17adf              # double 0.5804341655565074
	.quad	0x3fc454fcc32f6bd4              # double 0.15884360819367649
	.quad	0x3fed1dbd2ef55f52              # double 0.90988024875239604
	.quad	0x3fbfce23b000cc78              # double 0.12423918768836184
	.quad	0x3fe89247155ca767              # double 0.76785616085292652
	.quad	0x3fd129117aa070fc              # double 0.26813160872713104
	.quad	0x3fb3451830eb40d8              # double 0.075273048346619631
	.quad	0x3fbf1245524fd530              # double 0.12137254008833476
	.quad	0x3fe83320cff92a32              # double 0.7562412321070211
	.quad	0x3fe2e35455bd6ee7              # double 0.59025017496193477
	.quad	0x3fe37e9af467d75e              # double 0.60920474753832443
	.quad	0x3fe5a20e37664d28              # double 0.67603216953503864
	.quad	0x3fed3d27d1f84605              # double 0.91371527681093367
	.quad	0x3fe1e22b3f3dc974              # double 0.55885851241900619
	.quad	0x3fdd4272b5247820              # double 0.4571806687325779
	.quad	0x3feb905c48307462              # double 0.8613721284815592
	.quad	0x3fd93e16c599fcfc              # double 0.39441460892699332
	.quad	0x3fc0757b16d3515c              # double 0.12858523001217292
	.quad	0x3febc2b4431849ad              # double 0.86751759628741854
	.quad	0x3fc97ec79d5a7284              # double 0.19918151076571544
	.quad	0x3fdd4c803361e01a              # double 0.45779423730664492
	.quad	0x3fe9f37a642f37f8              # double 0.81097144667887644
	.quad	0x3fef06858f4de514              # double 0.96954610814205688
	.quad	0x3fd2e51b93c14180              # double 0.29523362569036493
	.quad	0x3fb6c25679f9f248              # double 0.088902859477408502
	.quad	0x3fdc3e17c7c76872              # double 0.44128984937345372
	.quad	0x3febff60086aff08              # double 0.87492372173434863
	.quad	0x3fe8db52be0821ad              # double 0.77677285304621579
	.quad	0x3fe69646cfb8b81b              # double 0.7058443123876289
	.quad	0x3fe77404ef60f15d              # double 0.73291250947617537
	.quad	0x3feaa3fa559cc49b              # double 0.83251682969252572
	.quad	0x3fdbd583ab233140              # double 0.43490688049930171
	.quad	0x3fcc25ba7f5a8930              # double 0.21990138262214876
	.quad	0x3fd906722501ebd6              # double 0.39101842512144225
	.quad	0x3fbbadcb37f33be8              # double 0.10812063327760735
	.quad	0x3fee40537b3b1de2              # double 0.94535230701961503
	.quad	0x3fedbf737b6f09f3              # double 0.92962049587396078
	.quad	0x3fc785d36756b738              # double 0.18377153917156774
	.quad	0x3fe0433897225e3b              # double 0.50820569532783766
	.quad	0x3fe2a99d0e2194e8              # double 0.58320477256770875
	.quad	0x3fec53319ccba025              # double 0.88515549301246621
	.quad	0x3fd70a71f9cccdcc              # double 0.36001252550633178
	.quad	0x3fdab7495f821aec              # double 0.41743692709898883
	.quad	0x3fec305ba42cd65b              # double 0.88090307298143544
	.quad	0x3fcc60862ecb4634              # double 0.22169568333497269
	.quad	0x3fe009e48471be34              # double 0.50120759838131912
	.quad	0x3fbf56544c095540              # double 0.12241103035315337
	.quad	0x3fddb0701707105a              # double 0.46389391182697681
	.quad	0x3fe8163c2f27ee1f              # double 0.75271424493934436
	.quad	0x3fe9bf665997d7be              # double 0.80461423395785636
	.quad	0x3fabd7d3547c95e0              # double 0.05438099294978449
	.quad	0x3fde3f9b08c27970              # double 0.47263217788158496
	.quad	0x3fb3113e6f1dc458              # double 0.074481870773312919
	.quad	0x3fea4da4ab5fffb2              # double 0.8219779345672491
	.quad	0x3fd2efa058f21d92              # double 0.29587563215360391
	.quad	0x3fe8b5c964844fed              # double 0.77219075805851178
	.quad	0x3fb2907899f04500              # double 0.072516954023985392
	.quad	0x3fe3a3c30b90da47              # double 0.61374046572638796
	.quad	0x3fc0592fc72a0380              # double 0.12772176003275248
	.quad	0x3fec56abd5a4f552              # double 0.88557998397269899
	.quad	0x3fec5b1702ef040b              # double 0.88611937115649775
	.quad	0x3fdc20a6012a7412              # double 0.439492703569898
	.quad	0x3fe76144eec59629              # double 0.73062368998643479
	.quad	0x3fea500ab3e1211a              # double 0.82227072842309501
	.quad	0x3fa925f9ab49cdf0              # double 0.049117853316513194
	.quad	0x3feb608ee470d90b              # double 0.85553688638063485
	.quad	0x3fea34acd39ac8ea              # double 0.81893006638554522
	.quad	0x3fbafd0bae019de0              # double 0.1054236697979074
	.quad	0x3fd9a67790347768              # double 0.40078534204973559
	.quad	0x3fe7e5451c3d6569              # double 0.74673705592719586
	.quad	0x3fc0fce41f99c250              # double 0.13271762412070354
	.quad	0x3fe553433bb35290              # double 0.66641389522790639
	.quad	0x3fd4e35054e4f4ba              # double 0.32637413301911133
	.quad	0x3fca7b7d51b63170              # double 0.20689360132054047
	.quad	0x3fe523e7822dee8b              # double 0.66063285279911221
	.quad	0x3fed55d81e1d3dc4              # double 0.9167290294807846
	.quad	0x3fcb187f7ec0a0e8              # double 0.21168512047848442
	.quad	0x3fb1969f3eacb338              # double 0.068704560090463995
	.quad	0x3fe4bf0c81fb062d              # double 0.64832139384106358
	.quad	0x3fe9ce51be82ac81              # double 0.80643546303817015
	.quad	0x3fe270ede4928628              # double 0.57628531115569093
	.quad	0x3fc2631e407e47e8              # double 0.1436498465450875
	.quad	0x3fe3aa8ffa0e98d8              # double 0.61457060660611784
	.quad	0x3fd4c6c8ee375510              # double 0.32463286650939072
	.quad	0x3f54f03bc26c5e00              # double 0.0012779792393241562
	.quad	0x3fb2feeb75cb7c80              # double 0.074202266939652261
	.quad	0x3fdf2196502fe3e4              # double 0.48642499762314473
	.quad	0x3fe772a09b4f8a2a              # double 0.73274259885903814
	.quad	0x3fbc81392e8dcea8              # double 0.11134679209299725
	.quad	0x3fe5c4bfe602570c              # double 0.68026728557262706
	.quad	0x3fcd0143eb31771c              # double 0.22660111412090422
	.quad	0x3fe935d60f784f04              # double 0.78782179852939338
	.quad	0x3fc6d8bb7b8e1f98              # double 0.17848914654700532
	.quad	0x3fddd216f99284c4              # double 0.46594786045359293
	.quad	0x3fe97c934221fe33              # double 0.79645693699416709
	.quad	0x3fc85320d378c9c8              # double 0.19003687215588472
	.quad	0x3fd3430f749232fa              # double 0.30096804031272451
	.quad	0x3fef3f8e75d499fa              # double 0.9765083600403266
	.quad	0x3fe455554cbf39ae              # double 0.63541665067332587
	.quad	0x3fd36e51ce946bf2              # double 0.30360837148481246
	.quad	0x3fee9384232afee8              # double 0.95550734394779812
	.quad	0x3fd3999fa47611ea              # double 0.30625144062676546
	.quad	0x3fe13cddd9945137              # double 0.53868000503511027
	.quad	0x3fe244864a0f33e5              # double 0.57086481537555456
	.quad	0x3fcff604f17e9584              # double 0.24969541351053348
	.quad	0x3fa71506d49c61b0              # double 0.045082295850252918
	.quad	0x3fe59fa9ad96e769              # double 0.67574008850281786
	.quad	0x3fcdffba02f84404              # double 0.23436665673264667
	.quad	0x3fd4d1c727c1c0d4              # double 0.32530382997994178
	.quad	0x3fe3a6fe4628b0cc              # double 0.61413491919440721
	.quad	0x3feaddd6be4ed1cb              # double 0.83957993669042119
	.quad	0x3fe27c105da5115f              # double 0.57764452257155685
	.quad	0x3fdc30c1ed98d86a              # double 0.44047592356526499
	.quad	0x3fdf84b3bf519570              # double 0.49247449573007085
	.quad	0x3fef00c87b50f27b              # double 0.96884559712596229
	.quad	0x3fe090ad5a8107ba              # double 0.51766078640525071
	.quad	0x3fe09e13e6fd7c08              # double 0.51929659953373264
	.quad	0x3fe152eb38dc01ae              # double 0.54137192826606451
	.quad	0x3fde062d0404e3c6              # double 0.46912694351663864
	.quad	0x3fdff0162290f000              # double 0.49902871490098732
	.quad	0x3feb40cafa0014bc              # double 0.85165928676783364
	.quad	0x3fe1e2878e6c7c5b              # double 0.55890252892630643
	.quad	0x3fe1f598453698ad              # double 0.56122983473030319
	.quad	0x3febb9c4695bd1f5              # double 0.86642666414132796
	.quad	0x3fc26046eb5fb9fc              # double 0.14356314175479656
	.quad	0x3fef60a677cec8b3              # double 0.98054812812758596
	.quad	0x3fd863000bba6642              # double 0.38104249139141555
	.quad	0x3fd6ef459ee11a52              # double 0.35835400119359406
	.quad	0x3fed59c3971a3231              # double 0.91720752250836857
	.quad	0x3fef2c8ddfbc4b16              # double 0.97418874452918902
	.quad	0x3fe6f730b969f3e6              # double 0.71767460073135392
	.quad	0x3fe7cb8bae92a43c              # double 0.74359687896970383
	.quad	0x3fe0cdf44df80c0f              # double 0.52514090755755827
	.quad	0x3fd7d7f0cb940b04              # double 0.37255496864979443
	.quad	0x3fdcb28fdb4af8f6              # double 0.44839855590170374
	.quad	0x3fef7c8fbb698af7              # double 0.98395525554619112
	.quad	0x3fdc7a385703b6f0              # double 0.44495972154150731
	.quad	0x3fe8a2399e040945              # double 0.76980286467031844
	.quad	0x3fdb9831ccf8e8f0              # double 0.43116421715571018
	.quad	0x3fe69edea33a0eff              # double 0.70689327125771217
	.quad	0x3fed1497b8e4e236              # double 0.90876375305294377
	.quad	0x3fc2ec457a4071ac              # double 0.14783543080637906
	.quad	0x3feb12c8231a9157              # double 0.84604269844252655
	.quad	0x3fe0eb97898807af              # double 0.52875878202052273
	.quad	0x3fea5457a719412b              # double 0.82279570232825472
	.quad	0x3fcdb52e0adcf998              # double 0.23209167032650835
	.quad	0x3fdea9fbb61d2a6c              # double 0.47912495407641731
	.quad	0x3fe82d39ff174560              # double 0.75552081892434941
	.quad	0x3fe2cc0094f762c8              # double 0.58740262122145115
	.quad	0x3fd0ce1fd5e7e2f4              # double 0.26258083237875884
	.quad	0x3fc2e18b1f34d27c              # double 0.1475080397009555
	.quad	0x3fdafc519c1e8576              # double 0.42165031667726482
	.quad	0x3fc56d1a7f5a0afc              # double 0.1673920747599239
	.quad	0x3fed5c9c55f2c7eb              # double 0.91755501543798113
	.quad	0x3fe6ca6a6ca65d60              # double 0.71220895023990849
	.quad	0x3fdfc56614ba283a              # double 0.49642326378000556
	.quad	0x3fe0299cf69150fc              # double 0.50507972867720197
	.quad	0x3fef8099fe8dea1d              # double 0.9844484302296369
	.quad	0x3fe99bdce8243a0b              # double 0.80027623500956346
	.quad	0x3fcb5366744c7664              # double 0.21348267248770292
	.quad	0x3fe79b5909cffead              # double 0.73771335522174797
	.quad	0x3feee7c7b6f910fd              # double 0.96579347359559586
	.quad	0x3fc9f306d90b80e4              # double 0.20272908780953636
	.quad	0x3fe9a299cd12552b              # double 0.80109872868584853
	.quad	0x3fea0040c6d338b5              # double 0.81253088791870332
	.quad	0x3fe737a312944875              # double 0.72554162625080088
	.quad	0x3fe973c58e848d8f              # double 0.79538228831772695
	.quad	0x3fe29b6432ee52cd              # double 0.58146867701960903
	.quad	0x3fea9331a7be56e6              # double 0.83046801340489362
	.quad	0x3fdda6e574acc2f0              # double 0.4633115424540355
	.quad	0x3fd9d18abcbcf52a              # double 0.40341442519623405
	.quad	0x3fc07c563c077358              # double 0.1287944596396311
	.quad	0x3fd747bf31547256              # double 0.36375407998437959
	.quad	0x3fb1de3da3e6ec50              # double 0.069797375216624546
	.quad	0x3fbc2d2d2fa0b4e8              # double 0.1100643388060295
	.quad	0x3feb4a5cf7027f83              # double 0.85282753223508256
	.quad	0x3feff4a4c0ac58e7              # double 0.99861371642580543
	.quad	0x3fd031f86a8fe822              # double 0.25304994970758987
	.quad	0x3fe4f426492e11ff              # double 0.65480341237031314
	.quad	0x3fda3cc97c055534              # double 0.40996014701279937
	.quad	0x3fd20459d729d5de              # double 0.28151556026508995
	.quad	0x3fe04d80ef6a3fa8              # double 0.50946089516400139
	.quad	0x3feba7286060064e              # double 0.86415499518643357
	.quad	0x3f9bed97a63e50c0              # double 0.027273530503933996
	.quad	0x3fd6ef3c10d2c628              # double 0.35835172312644881
	.quad	0x3fe3acd8dc033864              # double 0.6148495003815353
	.quad	0x3fe95125313daffb              # double 0.79115543000580091
	.quad	0x3feafebb66884199              # double 0.84359521890478384
	.quad	0x3fe0c8b01ebbb386              # double 0.52449804308490466
	.quad	0x3fd72e218187cc44              # double 0.36219060563525241
	.quad	0x3fb0827e3bd686f0              # double 0.064491166695485935
	.quad	0x3fdf9eb499a84972              # double 0.49406161313631636
	.quad	0x3fdaade152c8d62a              # double 0.41686280331063819
	.quad	0x3fe4e2115f0c0e5c              # double 0.65259617389569824
	.quad	0x3fc3544dc5d766b8              # double 0.15101024780488159
	.quad	0x3fdca55a8ba61458              # double 0.4475923885114006
	.quad	0x3fb71af39d61e7a0              # double 0.090254999087760357
	.quad	0x3fe8b81d4d0fef13              # double 0.77247490931719864
	.quad	0x3fe779a4a33b9b4b              # double 0.73359901315129983
	.quad	0x3fcac6a7f5a0b1fc              # double 0.20918750279942333
	.quad	0x3fa632f1e2048bd0              # double 0.043357428398188014
	.quad	0x3fa1b0bbfc0f6340              # double 0.034551500815445113
	.quad	0x3fdf546c942b9b22              # double 0.48952784032592167
	.quad	0x3fd1c8c80c2e6386              # double 0.27787972631045255
	.quad	0x3fd3f162244d241e              # double 0.31160787148525226
	.quad	0x3fe2c5bc684f1f9f              # double 0.58663769123903708
	.quad	0x3fc8f4788838c9fc              # double 0.19496065761047976
	.quad	0x3feff6f8d641258f              # double 0.99889795157030103
	.quad	0x3fef25814adc6442              # double 0.97332825299520942
	.quad	0x3fe18cc6019a43ef              # double 0.54843426049239763
	.quad	0x3fcd450f7372adfc              # double 0.22867005478961733
	.quad	0x3fea9aa025108c13              # double 0.83137519110857949
	.quad	0x3fed53b6f2688c6e              # double 0.91646907182110993
	.quad	0x3fb9cd58221ba380              # double 0.10078955490793184
	.quad	0x3fca3d3805b412cc              # double 0.20499325064169793
	.quad	0x3fe6b86a812fc7c8              # double 0.71001172286764191
	.quad	0x3feb2aeeaec157b2              # double 0.84899076587566058
	.quad	0x3fd16330dd370b64              # double 0.27167913058308657
	.quad	0x3fdeccbb3e88b736              # double 0.48124581438866032
	.quad	0x3fa5f8691a8142a0              # double 0.042910847173179834
	.quad	0x3fe59c820f812fe4              # double 0.67535498646020331
	.quad	0x3fe39f14e54836e0              # double 0.61316914350183183
	.quad	0x3fe3bf565e4c108a              # double 0.61710661332519234
	.quad	0x3fecae26773d1650              # double 0.89625857628625205
	.quad	0x3fcbee17cc6d0a18              # double 0.21820352060065384
	.quad	0x3fdf88cd5650cd72              # double 0.4927247374464151
	.quad	0x3fedb420510930a8              # double 0.9282380659801861
	.quad	0x3fd069976fb8afe4              # double 0.25644479666038777
	.quad	0x3fe9d2db0dee1694              # double 0.80698921890935304
	.quad	0x3fb229ac49f3be38              # double 0.070948379568783859
	.quad	0x3fe5a46d6969c06b              # double 0.67632170284742921
	.quad	0x3fdf87fa43945c32              # double 0.49267441367686893
	.quad	0x3fea1f91143d547f              # double 0.81635335877457738
	.quad	0x3fcd78334a5124c8              # double 0.23023072365530184
	.quad	0x3fc227c078e95e8c              # double 0.14183813003431955
	.quad	0x3fda34ebadb378ee              # double 0.409480018262811
	.quad	0x3fee6ace4d5ddc54              # double 0.95053782568619249
	.quad	0x3fe17f655e6c1f92              # double 0.54680126611582325
	.quad	0x3fb3bfb85c9276f0              # double 0.077144167519204165
	.quad	0x3fe86d0cbda294c4              # double 0.76331173933126494
	.quad	0x3fed1e8d86531a4e              # double 0.90997959361340874
	.quad	0x3fc6a41b067bcebc              # double 0.17688310448249023
	.quad	0x3fe5113670b3b1c2              # double 0.65835115444274828
	.quad	0x3fba7aaf22033fc0              # double 0.10343451099765755
	.quad	0x3fd784ee0978fe70              # double 0.36748839306890257
	.quad	0x3feac43dfbc3ec85              # double 0.83645533726611687
	.quad	0x3fe2f64c8cc6c2f9              # double 0.59256579871552539
	.quad	0x3fdbbd1d404ef2e4              # double 0.43341761856190275
	.quad	0x3fe42b72a4310738              # double 0.63030368870406672
	.quad	0x3fcb44e823111374              # double 0.21304036819688188
	.quad	0x3feb93021b049fd7              # double 0.86169533993688219
	.quad	0x3fa0b259d3cc19b0              # double 0.032610709289702
	.quad	0x3fc812b069f70530              # double 0.18807034658497335
	.quad	0x3fc6ec65332bfac8              # double 0.17908921240446873
	.quad	0x3fcf84d6034645d8              # double 0.24624133262527326
	.quad	0x3fc4662737a684b8              # double 0.15936746804530855
	.quad	0x3fe2b9f04b39d2c2              # double 0.58519758884957462
	.quad	0x3fdf5aa2709bd7f2              # double 0.48990689274739829
	.quad	0x3fda0c0c5654c24e              # double 0.40698536330004209
	.quad	0x3fedb5e5506029eb              # double 0.92845407198302377
	.quad	0x3fdefce805bf41ea              # double 0.48418617783775508
	.quad	0x3fdd416d3b5ab2b8              # double 0.45711832805936181
	.quad	0x3fcbcabd89933ef8              # double 0.21712464540041032
	.quad	0x3fc1b26d1d699fe4              # double 0.13825763641511835
	.quad	0x3fe8e54ff6762db0              # double 0.77799223076856627
	.quad	0x3fd85f22487a2cc2              # double 0.38080651357513429
	.quad	0x3fe3a1245f481f54              # double 0.61342066392624384
	.quad	0x3fd02c799f7ab43a              # double 0.25271454404975524
	.quad	0x3fdaae8cc3da3b60              # double 0.41690367819039942
	.quad	0x3fd3e0dda9e0aebe              # double 0.31059972371688704
	.quad	0x3fe2fc73414e8760              # double 0.59331667666650034
	.quad	0x3fde1707c0f864ac              # double 0.47015565724138741
	.quad	0x3fe02199efb2c36a              # double 0.5041017228705702
	.quad	0x3fd85d4ebe1d86d2              # double 0.3806950432391264
	.quad	0x3fc228ef3f4c3edc              # double 0.14187422362055357
	.quad	0x3fe824e9c8c39448              # double 0.75450600825991732
	.quad	0x3fe26afc4fea17e9              # double 0.57555976494108763
	.quad	0x3fe17e212071e4e6              # double 0.54664665543455437
	.quad	0x3fecf0f9f872e320              # double 0.90441607022430403
	.quad	0x3fd43d89e8af3644              # double 0.31625602458084168
	.quad	0x3fe720fcba8a94fb              # double 0.72277676042418137
	.quad	0x3fed72dd5c8eb149              # double 0.92027156903854135
	.quad	0x3f9884a98fd01cc0              # double 0.023943566706319031
	.quad	0x3fec9ce0790f64ba              # double 0.89415000576550274
	.quad	0x3fd3c848cc65ea38              # double 0.30909938774826484
	.quad	0x3fe62b81b6beaab1              # double 0.69281087581960865
	.quad	0x3fc6dd4f9aeba988              # double 0.17862887444000486
	.quad	0x3feed19f478cc684              # double 0.96308864569273611
	.quad	0x3fd77d310a07fd20              # double 0.3670160863839147
	.quad	0x3feb33705f312d2b              # double 0.8500291690083136
	.quad	0x3fe8da7e7458f5fd              # double 0.77667162632104658
	.quad	0x3fc36d24c2ebfec8              # double 0.15176829831761141
	.quad	0x3fe8142144da3029              # double 0.7524572701236184
	.quad	0x3fed3614f39bc900              # double 0.91285178737442152
	.quad	0x3f9b94db8e593e80              # double 0.026935034335393571
	.quad	0x3fde7a4d0b79e898              # double 0.47621465798113993
	.quad	0x3fe82fe0ceb4b0df              # double 0.75584450123053759
	.quad	0x3fefc57de1f70555              # double 0.99285787709974704
	.quad	0x3fd327d1da45ba94              # double 0.29930540385877547
	.quad	0x3feae94f8a55a893              # double 0.84098031061627621
	.quad	0x3fc3a48a7ccd9234              # double 0.1534588918103893
	.quad	0x3fe0b05faa7305a0              # double 0.52152999201659966
	.quad	0x3fd688dfe8edadb6              # double 0.35210416552464652
	.quad	0x3fc76ff274bac9e0              # double 0.18310385417642205
	.quad	0x3fd4dec15ec02af4              # double 0.32609590771669095
	.quad	0x3fd0a13ad6cc6b90              # double 0.25984068848054509
	.quad	0x3fbb7e38738240c0              # double 0.10739472217597079
	.quad	0x3fd1232fe5673768              # double 0.26777264979033655
	.quad	0x3fc669ce576bbdd0              # double 0.17510394352528502
	.quad	0x3fef8a5793b25d1e              # double 0.98563746306436761
	.quad	0x3fedbf6ec5c6189a              # double 0.92961825015733557
	.quad	0x3fdd275fe928f514              # double 0.45552823800592646
	.quad	0x3fe720d3f4d82c38              # double 0.72275731869866089
	.quad	0x3febc5fc77ae30a2              # double 0.8679182374485388
	.quad	0x3fc033d222e28830              # double 0.12658144667972371
	.quad	0x3febb97f49a69f5a              # double 0.8663937033170257
	.quad	0x3fe739b5a65a2f7b              # double 0.7257946251934152
	.quad	0x3f6f709b2810f900              # double 0.0038378744507375773
	.quad	0x3fa22e5876c43540              # double 0.035509838579040665
	.quad	0x3fed02da636da150              # double 0.90659827632502221
	.quad	0x3fde37995320c05e              # double 0.47214348905527526
	.quad	0x3fe8534e504bd8e1              # double 0.76016917879931267
	.quad	0x3fcc922b39284224              # double 0.22321071902162359
	.quad	0x3febf24a4df22502              # double 0.87332644676021709
	.quad	0x3fe24e210d246ede              # double 0.57203724448069315
	.quad	0x3fdd9a4bb7b820f2              # double 0.46254246655782005
	.quad	0x3fd83ef5b7a5dd26              # double 0.37884276327482025
	.quad	0x3fba2f0fd8e9e880              # double 0.10228060765976643
	.quad	0x3fc09f59b1587f20              # double 0.12986298713166722
	.quad	0x3fe50a2db2ea6c4e              # double 0.65749249405360799
	.quad	0x3fd7acf3f9d55be6              # double 0.3699312152652382
	.quad	0x3fe5f59181c86601              # double 0.68622660968975435
	.quad	0x3fb09d1ffd3c9d38              # double 0.064897536588081617
	.quad	0x3f89d8735fbb3800              # double 0.012619878157604347
	.quad	0x3fefd2467f2a7943              # double 0.99441838109104485
	.quad	0x3fecc175485ed0f2              # double 0.89861549506033911
	.quad	0x3feb6ff18bf905e0              # double 0.85741498316218311
	.quad	0x3fd89a85a99e86e6              # double 0.38443128170375329
	.quad	0x3fdd2464cba3cd04              # double 0.4553462971372968
	.quad	0x3fbbf13b5c1531b0              # double 0.10914965627779938
	.quad	0x3fe2d92f3bb4104b              # double 0.5890117803651348
	.quad	0x3fda04aeb7e21c7e              # double 0.40653579671238294
	.quad	0x3fe4c84c078f7059              # double 0.64945031620619453
	.quad	0x3fdeed5d4ed9f916              # double 0.48323757839524839
	.quad	0x3fe41348e5b40d15              # double 0.62735409606867398
	.quad	0x3fed9d03ab3e8ba6              # double 0.92541678854137355
	.quad	0x3fe390b9e59941cc              # double 0.61141676753509833
	.quad	0x3fe325aa51969677              # double 0.59834781584932173
	.quad	0x3fc275f13ad66d90              # double 0.14422431347780362
	.quad	0x3feb241534a1beee              # double 0.84815464286472575
	.quad	0x3fecdd7a5685983f              # double 0.90203587435531307
	.quad	0x3fe107ed8a7d6281              # double 0.53221776055131909
	.quad	0x3fe56b25519086e6              # double 0.66932931833818254
	.quad	0x3fe00d30120dd937              # double 0.5016098358744675
	.quad	0x3fe2c8c95b53eb6d              # double 0.58701007688010309
	.quad	0x3fec80618548cb17              # double 0.89067150146579166
	.quad	0x3f670d7fc42b2800              # double 0.0028140540538048597
	.quad	0x3fdc13f4aef6d902              # double 0.43871800505020542
	.quad	0x3fcd86a7a13566d0              # double 0.2306718384887092
	.quad	0x3fdd579b5788c1ae              # double 0.45847209499609221
	.quad	0x3fce4c85baefda94              # double 0.23671027782230125
	.quad	0x3fe21549b03eeabe              # double 0.56509861395837624
	.quad	0x3fd64462ebefc976              # double 0.34792397537889685
	.quad	0x3fe3664ebedbb52a              # double 0.60623872067450191
	.quad	0x3fd1ce48f848f6ae              # double 0.27821563955863382
	.quad	0x3fcbff9e2657a7c0              # double 0.21873833534419695
	.quad	0x3fc860ed06346250              # double 0.19045794299087726
	.quad	0x3fc1a6f47d78871c              # double 0.13790756346230004
	.quad	0x3fc40b93a8a90188              # double 0.15660329566345532
	.quad	0x3fe3bc22c6849bb3              # double 0.6167158009819701
	.quad	0x3fed4914e259b416              # double 0.91517109116614637
	.quad	0x3fe26017b4961eef              # double 0.57423005362303836
	.quad	0x3fe96eda77ae1246              # double 0.79478190779679703
	.quad	0x3fcda53905488c38              # double 0.23160469778039938
	.quad	0x3fd239017aeed19a              # double 0.28472935681500078
	.quad	0x3fdcb1a45b7ec4f6              # double 0.44834240851476126
	.quad	0x3fec9a94479a6a5d              # double 0.89386953339574016
	.quad	0x3fe1f68dd49217cf              # double 0.56134692685804477
	.quad	0x3fe6b39a60653154              # double 0.70942419841007132
	.quad	0x3fd2dfef3ffcbb8a              # double 0.29491788147691322
	.quad	0x3fe3d8722a05a9a4              # double 0.62017162520833269
	.quad	0x3feb59ac743a803b              # double 0.85469649029619832
	.quad	0x3fea4b19451b2305              # double 0.82166732308641655
	.quad	0x3fce2a6cae6d3904              # double 0.23566969410826044
	.quad	0x3fba078bf335c7b0              # double 0.10167765319582034
	.quad	0x3fd071e2993c6446              # double 0.25695099796718457
	.quad	0x3f81b783bf47b580              # double 0.0086508076428468694
	.quad	0x3fc1bc47df6b33bc              # double 0.13855837258452464
	.quad	0x3fe0548b4f7a7617              # double 0.51032033465498017
	.quad	0x3fe081f8b848fd22              # double 0.51586566918550525
	.quad	0x3fe95620121a96e3              # double 0.79176333938513854
	.quad	0x3fdfce5a05e347c6              # double 0.49696970534307316
	.quad	0x3fe209f3f44ebed6              # double 0.56371495930030835
	.quad	0x3fc885510a5dfce4              # double 0.1915684986706544
	.quad	0x3fe8ca39397467d3              # double 0.77468548986075303
	.quad	0x3fb88385cbf8bc38              # double 0.095756876275786662
	.quad	0x3fa1bf1e3613cbb0              # double 0.034661239720569781
	.quad	0x3fe35c89eeb6dc94              # double 0.60504624008071284
	.quad	0x3fef068625862203              # double 0.96954638794801473
	.quad	0x3fed8ec1d5bfb4d7              # double 0.92367641208479767
	.quad	0x3fc4eeb2fde40e68              # double 0.16353452107442767
	.quad	0x3feb00e35f52108c              # double 0.8438584195833001
	.quad	0x3fed3fc914108800              # double 0.91403631132948249
	.quad	0x3fe2a2ab44e88449              # double 0.58235705813070482
	.quad	0x3fdf9339eb0fa518              # double 0.49336097674547963
	.quad	0x3fbe2572eb9bf2a0              # double 0.11775892498185181
	.quad	0x3fe6071dbba32c44              # double 0.68836866996696999
	.quad	0x3feac22a36e574a9              # double 0.83620177003799256
	.quad	0x3fd6ea7c54357c6a              # double 0.35806186889198577
	.quad	0x3fe6a2c8862fa915              # double 0.70737100799786623
	.quad	0x3fef09e5dffc8283              # double 0.96995824572884747
	.quad	0x3fbaa0d4d1803430              # double 0.10401659121289764
	.quad	0x3fccbb5759fae1d4              # double 0.22446720021777244
	.quad	0x3fb8a5149175f498              # double 0.096268926155931189
	.quad	0x3fd1bb77f095ce14              # double 0.27706717009206838
	.quad	0x3fb1f7977de1d000              # double 0.070184200509004313
	.quad	0x3fb9f9a17b5bfb98              # double 0.10146531354619837
	.quad	0x3fdf3859cde41a4e              # double 0.48781437975450082
	.quad	0x3fbfa8c751990f98              # double 0.12366910688530053
	.quad	0x3fc51285c17dd5f4              # double 0.16462776134328261
	.quad	0x3fd0a837ea614fd8              # double 0.26026723755535164
	.quad	0x3fe4426bf69b6cef              # double 0.63310812154250395
	.quad	0x3fe25746d35c50c4              # double 0.5731538894783843
	.quad	0x3fedc8c500c9c233              # double 0.93075800088815297
	.quad	0x3fe50586a8228a90              # double 0.65692456091740503
	.quad	0x3fe03878a48e9bdb              # double 0.50689346447040451
	.quad	0x3fed29c2b626077c              # double 0.91134772849930767
	.quad	0x3fc5d06bf7b70e80              # double 0.17042302699529799
	.quad	0x3fed1df195b12c49              # double 0.90990523564085735
	.quad	0x3fc219f1788f7d00              # double 0.14141672503226488
	.quad	0x3fe4cda7d6595bfc              # double 0.65010444512415644
	.quad	0x3fe6dc455c5b213f              # double 0.7143885425403268
	.quad	0x3fd020bb09192bb8              # double 0.25199771774776591
	.quad	0x3fd60bb95b24dd9e              # double 0.34446557904035469
	.quad	0x3fd3560f39e50356              # double 0.30212765363471783
	.quad	0x3fd58c7e152aa058              # double 0.3366999823288146
	.quad	0x3fd1bb7a82405c42              # double 0.2770677825914768
	.quad	0x3fcd0954d2ae41b8              # double 0.22684726988928872
	.quad	0x3fd1ad6fa998c254              # double 0.27621070444277973
	.quad	0x3fe59a785dc70c51              # double 0.67510622325824887
	.quad	0x3feb8d2e833dfb2d              # double 0.86098409302926415
	.quad	0x3fd89b088c4af488              # double 0.38446248722522869
	.quad	0x3fdb114bdad6cd22              # double 0.42293068285944646
	.quad	0x3fd602532a4cf41e              # double 0.34389189845006907
	.quad	0x3fe1a61cec811624              # double 0.55152746383891271
	.quad	0x3fdab478004223e0              # double 0.4172649385951086
	.quad	0x3fbefa777ca171d0              # double 0.12100931923618607
	.quad	0x3fe905a1a85f6b2c              # double 0.78193743596361775
	.quad	0x3faf859ee512b460              # double 0.061566319907208067
	.quad	0x3fb72ebd38fb6328              # double 0.090556932841889037
	.quad	0x3fe76ecf90f28990              # double 0.73227670965234104
	.quad	0x3fd9a831be0a2a8e              # double 0.40089076574864968
	.quad	0x3fda59d39758613c              # double 0.41173257617767312
	.quad	0x3fe779b4e9f25717              # double 0.73360677426055332
	.quad	0x3fb9030879b67300              # double 0.097702531542790183
	.quad	0x3fef47c54a001ee5              # double 0.97751106694428513
	.quad	0x3fc373255846fa60              # double 0.15195147333538994
	.quad	0x3fe678e49631e6b0              # double 0.70225743613192115
	.quad	0x3fe73b56f33f154c              # double 0.72599360951486736
	.quad	0x3fe1ab82304c8d80              # double 0.55218610223202802
	.quad	0x3fcbaec83529a368              # double 0.21627142520744802
	.quad	0x3fef4e83ffdc1ff0              # double 0.97833442661885606
	.quad	0x3fbf0ccc90451c38              # double 0.12128904840675225
	.quad	0x3fef9599118833f2              # double 0.98701146530367923
	.quad	0x3fddcf629037ae9e              # double 0.46578277667752299
	.quad	0x3fcd4d69ce2c79ac              # double 0.22892496649815308
	.quad	0x3fe29f9913d1b7a8              # double 0.58198217268885788
	.quad	0x3fe7e560c4baa1fe              # double 0.74675024436606896
	.quad	0x3fe2903c339f4e71              # double 0.5801068313835015
	.quad	0x3fda423467519034              # double 0.410290814301564
	.quad	0x3fd6a3d437695982              # double 0.35374932681352089
	.quad	0x3fc2d9963bf4f908              # double 0.14726522376617646
	.quad	0x3fe0ef3e6f011174              # double 0.52920457535269216
	.quad	0x3fec49601a6add5e              # double 0.88395695838600452
	.quad	0x3fbd3051ce1092e8              # double 0.11401854782941323
	.quad	0x3fe0f26a3b195927              # double 0.52959167044426614
	.quad	0x3f7cdf02521c5580              # double 0.0070486155180068399
	.quad	0x3fed1d89e2dc30c0              # double 0.90985578831307379
	.quad	0x3f968bb8e3f2afc0              # double 0.022017373001901097
	.quad	0x3fdd4928b0b7f97a              # double 0.45759026773148259
	.quad	0x3fe3fd19f6a1c71f              # double 0.62464616937925033
	.quad	0x3fed28c67666ae3f              # double 0.91122744679655188
	.quad	0x3fc50c4685aad458              # double 0.16443711783145676
	.quad	0x3fb966d1aab86d20              # double 0.099225143604077192
	.quad	0x3fe35e47c1f42738              # double 0.60525882608019455
	.quad	0x3fd7a052a3adcd86              # double 0.36916032776135699
	.quad	0x3fe34f0fa6db2942              # double 0.60340101803857515
	.quad	0x3fe053bed7d308aa              # double 0.51022283700173898
	.quad	0x3fbd1f8e7a34fa28              # double 0.11376276477401659
	.quad	0x3feacee32b0cdd3c              # double 0.83775480659725287
	.quad	0x3fd0b5456b3f0370              # double 0.26106391404396501
	.quad	0x3fe15a6d4c832061              # double 0.54228844589034619
	.quad	0x3f8cf73817fb3000              # double 0.014143408042762928
	.quad	0x3fc6ec39d1ec1ef4              # double 0.17908404111971488
	.quad	0x3fe054a3dd71d313              # double 0.51033204317954739
	.quad	0x3feba937db356109              # double 0.86440651716387251
	.quad	0x3fd099ce2db508bc              # double 0.25938753570165907
	.quad	0x3fc57a0faa4d3b18              # double 0.16778751197349417
	.quad	0x3fd5fa6c0fc31234              # double 0.34340955294854614
	.quad	0x3fe0ad285423aebe              # double 0.52113739427064565
	.quad	0x3fea9887ff530d1d              # double 0.83111953609514766
	.quad	0x3fd5974264bb123a              # double 0.33735713803278922
	.quad	0x3fe9c80e9f06b7bc              # double 0.80567103442967136
	.quad	0x3fec1ed407eecd2a              # double 0.87876321362856413
	.quad	0x3fe4a3ed901b41b9              # double 0.64501073976321444
	.quad	0x3fb1a3a080067f50              # double 0.068902999168583223
	.quad	0x3fed15f58a04f4c2              # double 0.90893055874735063
	.quad	0x3fd313e7b0eb24a0              # double 0.29808990742874109
	.quad	0x3feaa7c1a88b7d4b              # double 0.83297808569833742
	.quad	0x3fe71282cf1f7657              # double 0.7210096402520304
	.quad	0x3fd9c7fc3dfc80b8              # double 0.40283113530496051
	.quad	0x3fed0c98849fea4c              # double 0.90778757003074295
	.quad	0x3fee3385e550817c              # double 0.94378943241103696
	.quad	0x3fe0ea0cc84a7030              # double 0.52857054824153771
	.quad	0x3fe787278831efab              # double 0.73524834251974391
	.quad	0x3fe37990802ed056              # double 0.60858941112247567
	.quad	0x3fd11dbf2354a31e              # double 0.26744059038405676
	.quad	0x3fec14a817132bbc              # double 0.87752155787290275
	.quad	0x3fe16035eca7681f              # double 0.54299446317168421
	.quad	0x3fb418ad485559e8              # double 0.078501539382478946
	.quad	0x3fda248a9ef98e58              # double 0.40848031544576235
	.quad	0x3fc2d3ca2b5a3274              # double 0.14708830944836715
	.quad	0x3fe6c0838ee39c30              # double 0.71100023181941729
	.quad	0x3fc56e254aa77900              # double 0.16742387910102963
	.quad	0x3fd8ca604ae88bfc              # double 0.38735205950996465
	.quad	0x3fc6537a1b752028              # double 0.1744225153036052
	.quad	0x3fe5a9b1aa7d5087              # double 0.67696460055096075
	.quad	0x3fcc29a620cc7058              # double 0.22002102471822371
	.quad	0x3fe40a1afb7218e0              # double 0.6262335692452119
	.quad	0x3fbe37773f923d10              # double 0.11803384115249949
	.quad	0x3fa814f98920d190              # double 0.047035024632722799
	.quad	0x3fe1d1198ef3769c              # double 0.55677488250849505
	.quad	0x3fec91c3f5d4b5e2              # double 0.89279363645408361
	.quad	0x3fe459902c453c46              # double 0.63593300482342197
	.quad	0x3fd238fa63283032              # double 0.28472766574191433
	.quad	0x3fd9cb2b7114563a              # double 0.40302549403108723
	.quad	0x3fe42828380ba2cd              # double 0.62990199037911909
	.quad	0x3fcb5241855011b4              # double 0.21344775208866695
	.quad	0x3fbd2d4d76a60dd8              # double 0.11397251269050146
	.quad	0x3fc088a5f9049fa8              # double 0.1291701761158468
	.quad	0x3fe73250e938a77f              # double 0.72489209700619017
	.quad	0x3fe7a91b80beb877              # double 0.73939299722202534
	.quad	0x3feb0f848e4780c0              # double 0.84564426220824629
	.quad	0x3fc73680b00154d0              # double 0.18135078996662068
	.quad	0x3fde9d6ec51468b6              # double 0.47835892911974598
	.quad	0x3fd9ef4d67d37af4              # double 0.4052308572699268
	.quad	0x3fc2e30921a1dff0              # double 0.1475535787792519
	.quad	0x3fb7fef7c390de40              # double 0.093734250302866862
	.quad	0x3fd7f9f3b9e464b2              # double 0.37463086274653812
	.quad	0x3fd3390c52a708ca              # double 0.3003569419053177
	.quad	0x3fc74a3d03fa2ee0              # double 0.18195307439997688
	.quad	0x3fdcaa3d1f9c5ce0              # double 0.44789054953566954
	.quad	0x3fe9451fc2d2e9ff              # double 0.78968799640216492
	.quad	0x3fe3452b74e8dba1              # double 0.60219357332140444
	.quad	0x3fe48ed413f963a2              # double 0.64243511105734208
	.quad	0x3fec7755c80455e9              # double 0.88956727090652266
	.quad	0x3fe3a11a735ef518              # double 0.61341593297371144
	.quad	0x3fa4528a39966740              # double 0.039692229776120858
	.quad	0x3fa8e65f3f0583e0              # double 0.0486325992994876
	.quad	0x3fd5565531fd8fe8              # double 0.33339433557398346
	.quad	0x3fdfe6ffa6074b4c              # double 0.49847403730125417
	.quad	0x3fbf8acc6215f040              # double 0.12321164507551519
	.quad	0x3fe240aec350b01b              # double 0.57039583346841327
	.quad	0x3fc1e855f59c0364              # double 0.13990282528541365
	.quad	0x3fd66e21c89166dc              # double 0.35047192179409392
	.quad	0x3fc6bca1bf8291b0              # double 0.17763158656192735
	.quad	0x3fe3da19c061a5b5              # double 0.6203736073923013
	.quad	0x3fe4f41618b062e9              # double 0.65479569265434379
	.quad	0x3fbcf58928a34df8              # double 0.11312157861839711
	.quad	0x3fdaebc2e4631f86              # double 0.42063972762525059
	.quad	0x3fd4d875a7edef14              # double 0.32571164512022333
	.quad	0x3fcf08bdafa6695c              # double 0.24245425297415124
	.quad	0x3fe51852632b02e2              # double 0.65921897286179054
	.quad	0x3fd87f7fe489275e              # double 0.38278195684380545
	.quad	0x3fae14887cf3d370              # double 0.058750405552848828
	.quad	0x3fa1075d57360ca0              # double 0.033259312530412588
	.quad	0x3fdd09c041b35e5a              # double 0.45372015396194387
	.quad	0x3fde49e3bdb2bc20              # double 0.4732598640939063
	.quad	0x3fd1599ee39baefe              # double 0.27109501101834599
	.quad	0x3fd66abba2d2b412              # double 0.35026446247758358
	.quad	0x3fec15125b56c43e              # double 0.87757222976336613
	.quad	0x3fe795b04c1de2cb              # double 0.73702254168082371
	.quad	0x3fe088aacc77e163              # double 0.51668300566874981
	.quad	0x3fe53a285e949dd3              # double 0.66334932778129951
	.quad	0x3fc9131d45f398b8              # double 0.19589582362750035
	.quad	0x3fc78b88ffc787f4              # double 0.18394577492932707
	.quad	0x3fecd5113f9e51a9              # double 0.90100920129275608
	.quad	0x3fd4a0fb86389d60              # double 0.32232559306654274
	.quad	0x3fccaa438a744914              # double 0.22394603977642957
	.quad	0x3fe8c83bfebad8a3              # double 0.77444267036368719
	.quad	0x3fe537de3652a373              # double 0.66306982622073318
	.quad	0x3f9d908e5d73a040              # double 0.028871750310742295
	.quad	0x3fc39a02c68d1398              # double 0.15313753790738072
	.quad	0x3fe00161f44133d6              # double 0.50016877847667263
	.quad	0x3fbc70343c0b0828              # double 0.11108709779640036
	.quad	0x3fdac20e7ae5488c              # double 0.41809427262808962
	.quad	0x3fe74d27f79ed60d              # double 0.72816847194070677
	.quad	0x3fe693ca5ff11634              # double 0.70554083574888304
	.quad	0x3fef27e1e3f062d0              # double 0.97361845511758283
	.quad	0x3fcd1b0966065afc              # double 0.22738759500199268
	.quad	0x3fc8453f370d5150              # double 0.18961324871146212
	.quad	0x3fbf93007f3b6e60              # double 0.12333682161573156
	.quad	0x3fe4e397971f5847              # double 0.65278224483586988
	.quad	0x3fe2826219a37e8b              # double 0.5784159184222103
	.quad	0x3fdec231a420a2d0              # double 0.48060265567850724
	.quad	0x3fdbd1dce4699ed6              # double 0.43468401246944433
	.quad	0x3f9094b201b37ec0              # double 0.01619222770102513
	.quad	0x3fc91628dc4084c0              # double 0.19598875765317381
	.quad	0x3fd7f67ad4c8159a              # double 0.37441893367243895
	.quad	0x3fe9c502f4fbf264              # double 0.80529926155538733
	.quad	0x3fd552a1d1ad7bc4              # double 0.3331684634812826
	.quad	0x3fe642242e2a12c1              # double 0.69557389275049541
	.quad	0x3fe06b5d91ab073a              # double 0.51310614062115367
	.quad	0x3fc14821dffd519c              # double 0.13501380383480643
	.quad	0x3fe3fae7338e220d              # double 0.6243778235376013
	.quad	0x3feddcc4f91012dc              # double 0.9331993927486013
	.quad	0x3fd781a96cf18a7a              # double 0.36728892935767699
	.quad	0x3fd3497568fc0528              # double 0.30135855915439658
	.quad	0x3feb3b7f27b7ef93              # double 0.85101278073806197
	.quad	0x3feab530a0715cee              # double 0.83461791359414206
	.quad	0x3f7770d9affd3380              # double 0.0057228568474102515
	.quad	0x3feb80d965285366              # double 0.85947866208389878
	.quad	0x3fcb30c7808a38ac              # double 0.2124261262546886
	.quad	0x3fc2c64600859ee0              # double 0.14667582536207302
	.quad	0x3fc67d03fac00c68              # double 0.1756901716581496
	.quad	0x3fe41e4bed3618dc              # double 0.62869831400237386
	.quad	0x3feac4c27b311f6a              # double 0.83651851712145953
	.quad	0x3fb34f2a3b75f298              # double 0.075426711575298788
	.quad	0x3fee332baa4da5f3              # double 0.9437464071499434
	.quad	0x3fe6f8a1ac108d1d              # double 0.71785052877786237
	.quad	0x3fbd8baa85690c40              # double 0.11541238553131539
	.quad	0x3fe0f32060b5d84d              # double 0.52967852486359279
	.quad	0x3fe8776539711d99              # double 0.76457463473427645
	.quad	0x3fe65f20a877030f              # double 0.69911225226687346
	.quad	0x3fd356bd64c8c1ea              # double 0.3021691784115591
	.quad	0x3fe200c3081f452e              # double 0.56259299837453169
	.quad	0x3fdbf8ee9f05848a              # double 0.43706861047218892
	.quad	0x3fe59b19a1cc122a              # double 0.67518312073713571
	.quad	0x3fd8844c48715842              # double 0.38307482790458292
	.quad	0x3fec029b8354968c              # double 0.87531829500649527
	.quad	0x3fec457325797a4c              # double 0.88347775763743063
	.quad	0x3fef4b19cdb08326              # double 0.97791757749300667
	.quad	0x3fb10aa3e774ae28              # double 0.066568607337722185
	.quad	0x3fd7b18df4158ab8              # double 0.37021206699698039
	.quad	0x3fc21ea589ae6678              # double 0.14156026098935448
	.quad	0x3fd61f215c8a818c              # double 0.34565004384241926
	.quad	0x3fe0fe6c805f3b02              # double 0.53105759689955812
	.quad	0x3fd181246c80af98              # double 0.27350721927609234
	.quad	0x3fb58c21b7422cb0              # double 0.084169490090220788
	.quad	0x3fefa8d69993f58d              # double 0.98936014171310804
	.quad	0x3fe29b408845e961              # double 0.5814516698440394
	.quad	0x3fe3a3b66f754b29              # double 0.61373445290732775
	.quad	0x3fde634b05ead6e2              # double 0.4748103673731362
	.quad	0x3fe24f7d6e8e1c65              # double 0.57220336525723481
	.quad	0x3fe6b41f7193c0bc              # double 0.70948764975584977
	.quad	0x3fef0e6b5138e29c              # double 0.97051015723907907
	.quad	0x3fcbd349acb0d174              # double 0.21738549167788401
	.quad	0x3fe8d4bb0cb075eb              # double 0.77596809843424575
	.quad	0x3fee0a98d9b07a61              # double 0.93879358785109102
	.quad	0x3fd99dd0ccb26cfc              # double 0.40025730123461734
	.quad	0x3fcbc6a61f9ba0f0              # double 0.21699978392940222
	.quad	0x3fec85af1dfe8a0d              # double 0.89131885393391175
	.quad	0x3fcd80882d17c844              # double 0.23048498346139656
	.quad	0x3fe8d35d7284a3a6              # double 0.77580139509983748
	.quad	0x3fdb9d37be203ec4              # double 0.43147080962169704
	.quad	0x3fe4a420c37c59a7              # double 0.64503515415963342
	.quad	0x3fe4167c2d1386fc              # double 0.62774475864372858
	.quad	0x3fe5535e39f73c9a              # double 0.66642676660002853
	.quad	0x3fe2adb22bcb36d6              # double 0.5837031226489795
	.quad	0x3fce85bb8e5f3288              # double 0.23845619632483683
	.quad	0x3fd419feb9e23a8a              # double 0.3140866103430332
	.quad	0x3fd44a0a6efb9c6e              # double 0.3170190891091299
	.quad	0x3fe35f63cedaa8d3              # double 0.60539427186201988
	.quad	0x3fce6dcf517caa3c              # double 0.23772613028389056
	.quad	0x3fb720a9a300ab00              # double 0.090342142386969471
	.quad	0x3fe41b8e1a11785c              # double 0.62836365786985082
	.quad	0x3fe93f3b575b599f              # double 0.7889687257946213
	.quad	0x3fd27d5c280f8a9a              # double 0.28890136634996966
	.quad	0x3fe86db53dd6fa32              # double 0.76339208677365478
	.quad	0x3f7bc06c54000880              # double 0.0067753058974650004
	.quad	0x3fd50f9184da42b8              # double 0.32907522176632709
	.quad	0x3fded6f14990ebc4              # double 0.4818690508288308
	.quad	0x3fe2ae9d60c76b71              # double 0.58381527807374145
	.quad	0x3fe7157abb4cdfef              # double 0.72137199956978104
	.quad	0x3fede0994b220273              # double 0.93366684603104344
	.quad	0x3fe20ffd3882333b              # double 0.56445179974398429
	.quad	0x3fcc5a5fbb218d9c              # double 0.2215079940534509
	.quad	0x3fd46c7e2ba4651e              # double 0.31912187826090299
	.quad	0x3fedf37b902f6422              # double 0.93597200547367643
	.quad	0x3fe6c3e609e30911              # double 0.71141340189959312
	.quad	0x3fed614b0c14ed3f              # double 0.91812660560336912
	.quad	0x3fa47450ac565450              # double 0.039949914014109411
	.quad	0x3fd92457c6b64814              # double 0.39284319310638804
	.quad	0x3fd265801c96b7ce              # double 0.28744509498471593
	.quad	0x3fda355c22ab289e              # double 0.40950683007816646
	.quad	0x3fe52a9c0c8bf304              # double 0.66145136309168651
	.quad	0x3fc64a1421c9ca68              # double 0.17413570070091855
	.quad	0x3fe2f88fbb3dba51              # double 0.5928419739773948
	.quad	0x3febc62efe165816              # double 0.86794232965871987
	.quad	0x3fe6cd41ef8e7601              # double 0.71255585468651372
	.quad	0x3fd3aca066baa966              # double 0.30741128952163022
	.quad	0x3fbfca18e5517cf8              # double 0.12417750929443006
	.quad	0x3fa6580d7959f320              # double 0.043640538276099372
	.quad	0x3feec8ba172d69f4              # double 0.96200279738269367
	.quad	0x3fe7f26b457d7d5b              # double 0.74834216663650055
	.quad	0x3fe01c9b2e00ab11              # double 0.50349196419606035
	.quad	0x3fea71cbef3435c3              # double 0.8263911888076837
	.quad	0x3fe908bd2f58c9f4              # double 0.78231677291324652
	.quad	0x3fe09b98ab4131de              # double 0.51899369667222195
	.quad	0x3fe7c46df8728e25              # double 0.74272821926974031
	.quad	0x3fe0047fc9b0604c              # double 0.50054921524407225
	.quad	0x3fc61d6f8d2e2f34              # double 0.17277330773901556
	.quad	0x3fe1126a19e01570              # double 0.53349785856032206
	.quad	0x3fd29ba9f6968a5c              # double 0.29075097161163455
	.quad	0x3fe5f0d25e63645b              # double 0.68564718661503876
	.quad	0x3f83d014afcb3b00              # double 0.0096742263935118977
	.quad	0x3fe860c2adbc6336              # double 0.761811580017002
	.quad	0x3fedf0534cdf0846              # double 0.93558659566793589
	.quad	0x3fe6070f679b506b              # double 0.68836183772738246
	.quad	0x3fcea5d00392b68c              # double 0.23943519758670495
	.quad	0x3fe565b9b9978bf4              # double 0.66866766212876749
	.quad	0x3fe85bddeea90989              # double 0.76121422398891625
	.quad	0x3fceb3a406486b88              # double 0.23985719973356034
	.quad	0x3fe26e70c9d79848              # double 0.57598151609705273
	.quad	0x3fe499ec90a09a0d              # double 0.64378956077126903
	.quad	0x3fa566b7cb86cf70              # double 0.041799300760799407
	.quad	0x3fee7501db9874bf              # double 0.95178311242820957
	.quad	0x3fe7388533ac5a49              # double 0.72564945309097439
	.quad	0x3feef272fc983d63              # double 0.96709584555530303
	.quad	0x3feb5f8657b83054              # double 0.85541073925697697
	.quad	0x3fe4c547681bc3c9              # double 0.64908190091784335
	.quad	0x3fe0e30553cd9c03              # double 0.52771250121884383
	.quad	0x3fb1840e081e5468              # double 0.068421246511506717
	.quad	0x3fdb8b18926d70dc              # double 0.43036474513588785
	.quad	0x3fe42392df377698              # double 0.62934249493601424
	.quad	0x3fa2b3790c6a8120              # double 0.036525519147519114
	.quad	0x3f57b5f614419400              # double 0.0014471915356122356
	.quad	0x3fd14b69c5d7d346              # double 0.27022785492527068
	.quad	0x3fe3dc68bc1115f4              # double 0.62065541011605641
	.quad	0x3fd85c9cf16c269e              # double 0.38065265251553082
	.quad	0x3fe72d7c4e6979d6              # double 0.72430243792387716
	.quad	0x3fb53c7ebd0fa908              # double 0.08295433154822629
	.quad	0x3fa3aa64e5495dc0              # double 0.038409378995023058
	.quad	0x3f9c41dc5212ef80              # double 0.027594988355061911
	.quad	0x3fd76e2c36f1998e              # double 0.36609940877533453
	.quad	0x3fa559f5928e5400              # double 0.04170195974362656
	.quad	0x3fbae8e8c00c0bc0              # double 0.10511641205452715
	.quad	0x3fc2de0c0153f570              # double 0.14740133347360596
	.quad	0x3fd2c94322d96e08              # double 0.29353407290702238
	.quad	0x3fec976374960c7c              # double 0.89348004122474788
	.quad	0x3fd9d9608b950d70              # double 0.40389264708593142
	.quad	0x3fe345670856ac64              # double 0.60222198132158811
	.quad	0x3fcb013f3e0cf3c8              # double 0.21097555665792656
	.quad	0x3fd66d1575e696ea              # double 0.35040794862503211
	.quad	0x3fe15d9678abc628              # double 0.54267428940346907
	.quad	0x3fdec9b35e3f77c6              # double 0.48106083110712594
	.quad	0x3feb56dd1cc2e771              # double 0.85435348145914081
	.quad	0x3fc8a3dc33ce4414              # double 0.19250061540199737
	.quad	0x3feccc216665e16b              # double 0.89991827010730441
	.quad	0x3fcdf0cc5680ac9c              # double 0.23391107772599617
	.quad	0x3fe8ecd57f8618a4              # double 0.77891039759630986
	.quad	0x3fef0a4fa5e0e75e              # double 0.97000868223333803
	.quad	0x3feb51643f3ee94e              # double 0.853685496832705
	.quad	0x3fd1bd50cce17bc4              # double 0.27717990882768739
	.quad	0x3fa35458586c4010              # double 0.03775287703876995
	.quad	0x3fb691dcd6ba76b8              # double 0.088163187431258616
	.quad	0x3fd0eced82685190              # double 0.26446092352969064
	.quad	0x3fe14ff4ca145ecb              # double 0.54101027935663504
	.quad	0x3fed960a6aed5b6b              # double 0.92456551441396806
	.quad	0x3fe705c2a71726ed              # double 0.71945316920138469
	.quad	0x3fdeb1ecd023d600              # double 0.47960968328638387
	.quad	0x3fbcff2546e6f080              # double 0.11326821309097745
	.quad	0x3fe66309e1b050a3              # double 0.69958967284994278
	.quad	0x3fe82346cfef8e69              # double 0.75430622684912152
	.quad	0x3fef63384732a2c3              # double 0.98086179643458881
	.quad	0x3fc58b0e24915774              # double 0.16830612931760991
	.quad	0x3fec9cb43847dca2              # double 0.89412890426946867
	.quad	0x3fd02f8f44c086ee              # double 0.25290281023090599
	.quad	0x3fe45a576dde14bd              # double 0.63602801760193695
	.quad	0x3fd415df4ebb671c              # double 0.31383497894931778
	.quad	0x3fb99d1f9e2a9e48              # double 0.10005376445280334
	.quad	0x3fe798da1369f730              # double 0.73740867416174716
	.quad	0x3fd9639c4030d55e              # double 0.39670473354938973
	.quad	0x3fe936f4b1e46301              # double 0.78795847649152517
	.quad	0x3fd2bd30dfbc5448              # double 0.29279729699311874
	.quad	0x3fd5ceeb9d76c64a              # double 0.34075441720333244
	.quad	0x3fe4b241aa833c30              # double 0.64675982764481965
	.quad	0x3fadfaeb3bd96bb0              # double 0.058554984145949063
	.quad	0x3fe2adcdfaee8c97              # double 0.58371638307689266
	.quad	0x3fc251a42bbc2c14              # double 0.14311649451732988
	.quad	0x3fdc5ef92841e2f4              # double 0.44329670840629309
	.quad	0x3fee1462e02baffc              # double 0.93998855384188528
	.quad	0x3fe25b02ed85cadf              # double 0.57360979453218508
	.quad	0x3fe3407303c8cdb4              # double 0.60161734332216676
	.quad	0x3fcdc035570a6208              # double 0.23242823362376464
	.quad	0x3fe41d20e09590ca              # double 0.62855571617230876
	.quad	0x3fe11537e270bfba              # double 0.53384012438436135
	.quad	0x3fdb8fe7bf6e0af6              # double 0.43065828031846765
	.quad	0x3fef865d5dfa1b31              # double 0.98515194277647399
	.quad	0x3fef4293414f2023              # double 0.97687685733490459
	.quad	0x3fec26ef63169abe              # double 0.87975282052214943
	.quad	0x3fd38da4e4237e84              # double 0.30552027014889682
	.quad	0x3fee30509c412d63              # double 0.94339781301952674
	.quad	0x3fe96734bad24a46              # double 0.7938483857017864
	.quad	0x3feaf68c2632b491              # double 0.84259612522659399
	.quad	0x3fb1a56974d31828              # double 0.068930235883357782
	.quad	0x3fe87fe244faf9b4              # double 0.76561082337121044
	.quad	0x3fbd7f8fe57dc188              # double 0.11522769310773218
	.quad	0x3fcd54202d5168d8              # double 0.22912981236260666
	.quad	0x3fa9b9fe563e99e0              # double 0.050247142818353074
	.quad	0x3fef6b75f9995635              # double 0.98186777829932359
	.quad	0x3fba5ec230fff010              # double 0.10300840088160634
	.quad	0x3fc7bbd73c84e9ec              # double 0.18541994528807437
	.quad	0x3fc9c0d0003dac98              # double 0.20119667064441127
	.quad	0x3fa54b10afc5de30              # double 0.041588326889663185
	.quad	0x3fcca4dc1089d00c              # double 0.22378111655746158
	.quad	0x3fb37c9735828180              # double 0.076119852603829585
	.quad	0x3fe74148b015969a              # double 0.72671923057051235
	.quad	0x3fe74440c3c70e8e              # double 0.72708166349225833
	.quad	0x3fa4464c22912030              # double 0.039598826617805449
	.quad	0x3fe50fc514bf7835              # double 0.65817503025369339
	.quad	0x3fedb410a1d5fa43              # double 0.92823058708729211
	.quad	0x3fbaf26dcffc3b00              # double 0.10526167228475103
	.quad	0x3fd02732fd413aea              # double 0.2523925278846223
	.quad	0x3fe5d03aff62fe93              # double 0.68166875724996812
	.quad	0x3fc9080d8430c4a8              # double 0.1955582519017629
	.quad	0x3fcb368f4be12038              # double 0.21260253148125385
	.quad	0x3fe038bf0c2e81e1              # double 0.50692703608734402
	.quad	0x3fd6755bbc240a72              # double 0.35091298459170794
	.quad	0x3faabafa4cf46080              # double 0.052207776922103655
	.quad	0x3feb83d4cf60c81f              # double 0.85984268668676467
	.quad	0x3fef4ba7b3f8ca44              # double 0.97798524046658785
	.quad	0x3fe9c85a5420b83e              # double 0.80570713454449794
	.quad	0x3fd7eac96dde03e6              # double 0.37370525101874674
	.quad	0x3fec682ca8a0f8a6              # double 0.88771660743056624
	.quad	0x3fc9794834b6a104              # double 0.19901373456855975
	.quad	0x3fa6484e50035610              # double 0.043520400302139106
	.quad	0x3fd73315bd58a48c              # double 0.36249297610135822
	.quad	0x3faa24bac9754d30              # double 0.051061474887911351
	.quad	0x3fc7c44b2ea15d20              # double 0.18567790772315451
	.quad	0x3fda235a8fd13c4e              # double 0.40840782208119186
	.quad	0x3fd262397165f8fe              # double 0.28724514078193397
	.quad	0x3fd271253e03a63a              # double 0.28815585189895254
	.quad	0x3fecc91a643a100f              # double 0.89954871726559016
	.quad	0x3fe4b21995d9c059              # double 0.64674071567243197
	.quad	0x3fc67b9c6f3a1778              # double 0.17564731055261595
	.quad	0x3fc79291fae5dfdc              # double 0.18416046858669588
	.quad	0x3fe664266d261d65              # double 0.69972535436765482
	.quad	0x3fdbae6bc9e49974              # double 0.43252081600294123
	.quad	0x3fc279af818ce588              # double 0.14433854890539188
	.quad	0x3fe8f5554ecb51cb              # double 0.779947904486613
	.quad	0x3fec113298aa7140              # double 0.87709932153260439
	.quad	0x3fe8760c638df6ae              # double 0.76441020435568929
	.quad	0x3f9c408f6786e700              # double 0.027590027517113036
	.quad	0x3fee67b594c2bc7f              # double 0.95015982680151001
	.quad	0x3fd8add522d7dc82              # double 0.38560989763886522
	.quad	0x3f81a7c07290c080              # double 0.0086207423174473607
	.quad	0x3fe54b960e107cde              # double 0.66547682520822682
	.quad	0x3fe7ee571bd8c194              # double 0.74784427107629137
	.quad	0x3fe8c8b695b98ea7              # double 0.77450112574702679
	.quad	0x3fca2835b119e3cc              # double 0.20435210368648737
	.quad	0x3fe4613c06d57d0e              # double 0.63686944327119632
	.quad	0x3fecedb8f799bab9              # double 0.90401886329148973
	.quad	0x3fe60921ef04cbb1              # double 0.68861481364580446
	.quad	0x3fbec7751afe6128              # double 0.12023097905182978
	.quad	0x3fc871c17fe35bcc              # double 0.19097155327355464
	.quad	0x3fe7d1e58c0cabc7              # double 0.74437215188424311
	.quad	0x3fe3f2968c11c3e9              # double 0.62336280209831074
	.quad	0x3fe35b3764830322              # double 0.60488481169895558
	.quad	0x3fefd2c10841b137              # double 0.99447681057566839
	.quad	0x3fc44a9fa688b6e4              # double 0.15852733260674434
	.quad	0x3fec6592f0475dbf              # double 0.88739916734169089
	.quad	0x3fddfd5d188d549e              # double 0.46858909032500573
	.quad	0x3fd92f4052728124              # double 0.3935089879178284
	.quad	0x3fe7b68e70ac3230              # double 0.74103471762061268
	.quad	0x3fe1d11a797dd864              # double 0.55677531937432123
	.quad	0x3fdda3dcc376a888              # double 0.46312636459573087
	.quad	0x3fe1a654efe760b2              # double 0.55155417305197418
	.quad	0x3fe6a204ba84cf55              # double 0.70727764539194971
	.quad	0x3f7be99e4ac13300              # double 0.0068145926744136442
	.quad	0x3fd8c949b4834386              # double 0.38728563907812263
	.quad	0x3fe79c651f29b638              # double 0.73784118734847137
	.quad	0x3fed516b2e6e610f              # double 0.91618880337321851
	.quad	0x3fe69a4a53483237              # double 0.70633426919955056
	.quad	0x3fe64f95856d32eb              # double 0.69721485195040367
	.quad	0x3fd9db1995277606              # double 0.40399779859384954
	.quad	0x3fde9dfc673a79ec              # double 0.47839269715214416
	.quad	0x3fce7fe8efa129c0              # double 0.23827850056325239
	.quad	0x3fcb49d49bc830d8              # double 0.21319062811415423
	.quad	0x3fe82f6689b48948              # double 0.7557861985735963
	.quad	0x3fe9ec335ca6919a              # double 0.8100830850203693
	.quad	0x3fdefbe4fe0c8656              # double 0.48412442025628388
	.quad	0x3fddbb5c9c8fc8d8              # double 0.46456065453743411
	.quad	0x3fe5f5b83ef6cfc5              # double 0.68624508187939937
	.quad	0x3fdc4712758aa33a              # double 0.44183789709727572
	.quad	0x3fe211dd18d851ff              # double 0.56468062260188379
	.quad	0x3fd75dacfadd792a              # double 0.36509251116321428
	.quad	0x3fe125bda0010da1              # double 0.53585702181628758
	.quad	0x3feb56634dc3d1db              # double 0.85429539860211479
	.quad	0x3fc965a84001b318              # double 0.19841483235668345
	.quad	0x3fd0fa673eb122e8              # double 0.26528340456256538
	.quad	0x3fb4b7c08a57b6f8              # double 0.080928834700639274
	.quad	0x3feaffa7462e2ecb              # double 0.84370769221410435
	.quad	0x3fe5cd4e56baeb92              # double 0.6813117689083461
	.quad	0x3fe55d6e5c2c474c              # double 0.66765516283542459
	.quad	0x3f7471d1c578fc00              # double 0.0049913591570307503
	.quad	0x3fe6e13d6ffc30a7              # double 0.71499511596768606
	.quad	0x3fa607b98b98dea0              # double 0.043027685442607266
	.quad	0x3fe34c5c69860e36              # double 0.60307140932167758
	.quad	0x3fef9fa195a1f2fc              # double 0.98823622918243314
	.quad	0x3fe71ae7daeaca46              # double 0.72203438527351049
	.quad	0x3fefb5de933490f8              # double 0.99095085860292808
	.quad	0x3fe9a43a30e3fe64              # double 0.80129727887101553
	.quad	0x3fe7070736995e33              # double 0.7196079317463443
	.quad	0x3fccec52eb796664              # double 0.22596203325047093
	.quad	0x3fdc62887d7f59d4              # double 0.44351398711787948
	.quad	0x3fb389fd50d1dcd0              # double 0.076324302894011042
	.quad	0x3fd6704daa88f232              # double 0.35060445455363543
	.quad	0x3fc47215b3ef124c              # double 0.15973159108956947
	.quad	0x3fe883aec23f2c1e              # double 0.76607454241582551
	.quad	0x3fd477df3f89755a              # double 0.31981641011028261
	.quad	0x3fc94632a3d3ed9c              # double 0.19745476722151245
	.quad	0x3fdb5c100b4510e2              # double 0.4274940595680744
	.quad	0x3fe8f7032bc0176a              # double 0.78015287919036536
	.quad	0x3fda24ee2e249222              # double 0.40850405222070851
	.quad	0x3fec4925c01f471b              # double 0.88392913364279779
	.quad	0x3f9e426353fb3380              # double 0.02955012512284183
	.quad	0x3fda3f635d683f8c              # double 0.41011890527533335
	.quad	0x3fd228cf57420c3a              # double 0.28374084016121837
	.quad	0x3fe2a22c4540acc1              # double 0.58229650045304748
	.quad	0x3fe5cff5e25bda3a              # double 0.68163580141737801
	.quad	0x3fde08b6d8bb97d2              # double 0.46928187527953213
	.quad	0x3fd1e6b707dc7a48              # double 0.27970672385882667
	.quad	0x3fd65b2e7266c026              # double 0.34931527301796661
	.quad	0x3fe9f3e620400a91              # double 0.8110228185544931
	.quad	0x3f9eae2f5d775120              # double 0.029961338119236847
	.quad	0x3fefa4a25bcdb2b7              # double 0.98884694986698817
	.quad	0x3fac42f69146bb80              # double 0.055198388322756919
	.quad	0x3fe861e2f00369b4              # double 0.76194903256992185
	.quad	0x3fc23fc72b6b0c70              # double 0.1425713502886512
	.quad	0x3feed6b791585df7              # double 0.96371057880145272
	.quad	0x3fed544141873b2a              # double 0.91653502272115372
	.quad	0x3fcdcadaca2732f4              # double 0.23275313254125474
	.quad	0x3fe12dca969f4eb1              # double 0.53683976572434322
	.quad	0x3fd4f57a5c083756              # double 0.32748278605946746
	.quad	0x3fd6970397f17cea              # double 0.3529671653577241
	.quad	0x3fecbfaa96abd70c              # double 0.89839677265146766
	.quad	0x3fee4ffbc30eb8a6              # double 0.94726360413712452
	.quad	0x3fceaa0416af3d88              # double 0.23956347568171688
	.quad	0x3fd1c3af343097e4              # double 0.27756862732564813
	.quad	0x3feff4716838c717              # double 0.99858923297708457
	.quad	0x3fe174e875e014a2              # double 0.54552100203058651
	.quad	0x3fe1ac4f94e1bc89              # double 0.55228404119942909
	.quad	0x3fe302b5f1983a18              # double 0.59408089815571241
	.quad	0x3faf34ddbcddb980              # double 0.060950211815781863
	.quad	0x3fd1b4fcb64e58a6              # double 0.27667157939266429
	.quad	0x3fea00ae752214e3              # double 0.812583187842986
	.quad	0x3fb093839b980120              # double 0.064750886427650034
	.quad	0x3fda6f3e9c568aea              # double 0.4130398298968162
	.quad	0x3fa7a7d53d73c4d0              # double 0.046202338935367515
	.quad	0x3fdeb77f4e861efc              # double 0.47994978588438619
	.quad	0x3fd04b40b76e70b8              # double 0.25459306634162315
	.quad	0x3fe1067a10565983              # double 0.5320406264388996
	.quad	0x3fe46357a9e8a406              # double 0.63712676224997788
	.quad	0x3fe03b0cdcaf83b4              # double 0.50720828154236708
	.quad	0x3fef87081145e0d2              # double 0.98523333905816401
	.quad	0x3fae334fd643d480              # double 0.058985228448286797
	.quad	0x3fe1baef0512d85a              # double 0.55406905165615261
	.quad	0x3fb38335a4b4d800              # double 0.076220848762062587
	.quad	0x3fe209d76fa906aa              # double 0.56370136078495148
	.quad	0x3fd5ad0a49aaf61c              # double 0.33868653482554278
	.quad	0x3fe26b5ddf272541              # double 0.57560628494790234
	.quad	0x3fe5ed87587db9fd              # double 0.68524520190641136
	.quad	0x3f725d9673cd8680              # double 0.0044837834401235677
	.quad	0x3fec032f3abcb15b              # double 0.87538873169027498
	.quad	0x3fe1fb6fb3fcdf6f              # double 0.56194291261543394
	.quad	0x3fc57586c81c6e1c              # double 0.16764912386939634
	.quad	0x3fe76f5e8733c887              # double 0.73234487921423941
	.quad	0x3fd4c8c1d114331c              # double 0.32475324075567058
	.quad	0x3fd67fa96f620618              # double 0.35154186131703247
	.quad	0x3fd2d9db9f6ac6a8              # double 0.29454699104381143
	.quad	0x3fe32e24ae62ca90              # double 0.5993827253317523
	.quad	0x3fe19f55b481e166              # double 0.55070004706707887
	.quad	0x3fc11fca62746b48              # double 0.13378267104493546
	.quad	0x3fec50f835987faa              # double 0.88488398044500127
	.quad	0x3fd130c2182ecf94              # double 0.26860096322638438
	.quad	0x3fe9dd457e49abe7              # double 0.80826067605573548
	.quad	0x3fe23dc523347a3c              # double 0.57004029155707014
	.quad	0x3fd268e25e0ca5ae              # double 0.28765162643920916
	.quad	0x3fd01309e918f73e              # double 0.25116203082494681
	.quad	0x3fe24819c76636e3              # double 0.57130135483904743
	.quad	0x3fe6b5410a5142c6              # double 0.70962574019548508
	.quad	0x3fec6f0f13173063              # double 0.88855699280385314
	.quad	0x3feb16bda978aaae              # double 0.84652598476289653
	.quad	0x3fe63dd82aebfd74              # double 0.69504936583682175
	.quad	0x3fdaf4b76baaaa14              # double 0.42118630899736442
	.quad	0x3fd4c33a8fed8816              # double 0.32441581778960094
	.quad	0x3fcbee19d8d0eab4              # double 0.21820376478884429
	.quad	0x3fee27b7ec22cefb              # double 0.94234844322497169
	.quad	0x3fe9f7f70efc39bd              # double 0.8115191738777906
	.quad	0x3fef5d14cc963773              # double 0.9801124568782441
	.quad	0x3fe154169736aeaf              # double 0.54151467832476452
	.quad	0x3fe7be10c54e54d0              # double 0.74195135628056086
	.quad	0x3feb1211be4ecb5f              # double 0.84595572633257266
	.quad	0x3fe0aa69eb94b935              # double 0.52080245983032702
	.quad	0x3fe359c3f662d3d7              # double 0.60470769998812102
	.quad	0x3fe76ed7fb0fcd0d              # double 0.73228072200291339
	.quad	0x3fe37adbac047873              # double 0.60874732587013936
	.quad	0x3fd154d2d917e082              # double 0.27080222321047398
	.quad	0x3fef66ee6cadcc4d              # double 0.9813148615488757
	.quad	0x3fa5106f4a09c640              # double 0.041141011989463738
	.quad	0x3fe5b2766b1a32a3              # double 0.67803498190331302
	.quad	0x3fb49f52d6e45948              # double 0.080556085075248807
	.quad	0x3fd83e6a905bfca6              # double 0.37880958650198193
	.quad	0x3fea227a4716992d              # double 0.81670869717053096
	.quad	0x3fee2c0303aa377b              # double 0.9428725310878997
	.quad	0x3fdf49eda19f2c66              # double 0.48888722213150115
	.quad	0x3f7d850da2199380              # double 0.0072069675967200153
	.quad	0x3feea51f04d75556              # double 0.95765639253174117
	.quad	0x3fe9e8ef313735be              # double 0.80968436825212797
	.quad	0x3fb989a0b6a93658              # double 0.09975628337380138
	.quad	0x3fea6069761364ee              # double 0.82426903783485073
	.quad	0x3fea5a10170b6a64              # double 0.82349400044342901
	.quad	0x3f191f9eb75f0000              # double 9.5838606141818161E-5
	.quad	0x3fea1c0455b0a7e8              # double 0.81592003570881122
	.quad	0x3fe63384c5c5670d              # double 0.69378889681976974
	.quad	0x3fdcfacac688dfb4              # double 0.45280713451529242
	.quad	0x3fd1b27d493f97ce              # double 0.27651912835278558
	.quad	0x3fd8fa747c3847ea              # double 0.39028656130642381
	.quad	0x3fdb20071de62dac              # double 0.42382982177579254
	.quad	0x3fdf1d9277ae7cd8              # double 0.48617994010596766
	.quad	0x3fe8ee5a29eb21f1              # double 0.77909572779850411
	.quad	0x3fe9fdabea6bb56c              # double 0.81221576485920143
	.quad	0x3fef12db5a789db5              # double 0.97105186147830713
	.quad	0x3fe00d4a552c9de9              # double 0.50162235866167493
	.quad	0x3fd1f25b3c5f24b4              # double 0.28041726012868229
	.quad	0x3fd4c08bd22700a2              # double 0.32425208590212595
	.quad	0x3fe470a90d7c3a97              # double 0.63875248559800724
	.quad	0x3fe77a9805ad560c              # double 0.73371506794745889
	.quad	0x3feac9ef793cb62c              # double 0.83715032271510869
	.quad	0x3fe94c319ca9453c              # double 0.79055100057499982
	.quad	0x3fe08ff806e767b6              # double 0.51757432316229912
	.quad	0x3fbc35bfa088b860              # double 0.1101951376847139
	.quad	0x3fe64a52cb4595f4              # double 0.69657268239524095
	.quad	0x3fe75f8abc4e75f1              # double 0.73041283396349688
	.quad	0x3fd5f50be9842a3c              # double 0.34308145336459339
	.quad	0x3fe3fa42788c3677              # double 0.62429927391504136
	.quad	0x3fdccc309465f670              # double 0.44996275417347587
	.quad	0x3fe1d88e5d625a98              # double 0.5576850723180824
	.quad	0x3fe2b288fbdf5244              # double 0.58429383462732476
	.quad	0x3fe762a00e05b8a6              # double 0.7307892106889724
	.quad	0x3fede3afad6c277a              # double 0.93404373046472178
	.quad	0x3fdbdc4ec9aa49fe              # double 0.43532151883951531
	.quad	0x3fde516108944642              # double 0.47371698224842274
	.quad	0x3fe09b9f3b5f437b              # double 0.51899682613485199
	.quad	0x3fb267d47dc9b3e8              # double 0.07189682074540793
	.quad	0x3fe81c74bb6d4c17              # double 0.75347363097023645
	.quad	0x3fde1e71af22e2f0              # double 0.47060815909530529
	.quad	0x3fe8a53a3e71366b              # double 0.7701693744254049
	.quad	0x3fede4a4a4d3e8aa              # double 0.93416053955958955
	.quad	0x3fe5aeefaa8d06ab              # double 0.67760451613158545
	.quad	0x3fd91a1b98c15b0a              # double 0.39221849362859074
	.quad	0x3fc89073214e412c              # double 0.19190825582746507
	.quad	0x3f9461be1f4e97c0              # double 0.019904108677699872
	.quad	0x3f72494d04125980              # double 0.0044644363817013533
	.quad	0x3fbe4b8d41ddd380              # double 0.1183403287703424
	.quad	0x3fda91b7c3c6ea3c              # double 0.41514391058777611
	.quad	0x3fd630554e270f9a              # double 0.34670002586448734
	.quad	0x3fe95b9d9a0e24c1              # double 0.79243354882159889
	.quad	0x3fd768c3b0ae1838              # double 0.36576931241905042
	.quad	0x3fe49939ac584de7              # double 0.64370425854798163
	.quad	0x3f80e87c5ce9b680              # double 0.008255931458929
	.quad	0x3fed43bd18baf57e              # double 0.9145188792241894
	.quad	0x3fdaa72f7a0efeee              # double 0.41645419044287635
	.quad	0x3fbb0d345eef7440              # double 0.10567023580320356
	.quad	0x3fe0e7f9dfcff864              # double 0.52831739152294377
	.quad	0x3fba9233cdb75d50              # double 0.10379337093705954
	.quad	0x3fe4885e46253969              # double 0.64164651584887367
	.quad	0x3fe5fdb1913855b9              # double 0.6872184597329386
	.quad	0x3fd77f10cf5a149c              # double 0.36713047265249954
	.quad	0x3fe6d159f71a47ba              # double 0.71305559408414543
	.quad	0x3fe1f7e298dfb51c              # double 0.56150941713500258
	.quad	0x3fe0e67c09c88f6a              # double 0.52813531790569113
	.quad	0x3feed1ddbfa8318e              # double 0.9631184333134557
	.quad	0x3fdc0f26f074e198              # double 0.43842481119238519
	.quad	0x3fe8c46b1cb584b4              # double 0.77397685630071189
	.quad	0x3fd04c9c58327e90              # double 0.25467594731342391
	.quad	0x3fb9b7c853cd3648              # double 0.10046054883897526
	.quad	0x3fecaeb94aeb53fa              # double 0.89632858879724542
	.quad	0x3fc57b0d693171f0              # double 0.16781776081451438
	.quad	0x3fb9aaa2e0a83ae0              # double 0.10025995240014707
	.quad	0x3fe5840cc4747442              # double 0.67236936922166302
	.quad	0x3fe4529a91f12e7f              # double 0.6350834703857372
	.quad	0x3fd74807b1695bd4              # double 0.36377136540744215
	.quad	0x3fc7554290727944              # double 0.18228942921718716
	.quad	0x3fd27488e2b4441e              # double 0.28836271418646386
	.quad	0x3fdc6ebcb6779f5c              # double 0.44425885981626378
	.quad	0x3fe424da0e0000de              # double 0.62949850782754502
	.quad	0x3feaad70a0c4ddd9              # double 0.83367186927983561
	.quad	0x3f75b597d841e780              # double 0.0053001338420645139
	.quad	0x3fb2e6c1a76c7ff0              # double 0.073833564162214094
	.quad	0x3fb6af76e3207188              # double 0.08861487431608428
	.quad	0x3f7a08ba279d9e00              # double 0.0063559791250109576
	.quad	0x3fe33fae790f798c              # double 0.60152362484568433
	.quad	0x3f9bce740c7f9460              # double 0.027154744398917408
	.quad	0x3fa7e0fffa2b1710              # double 0.046638488090634422
	.quad	0x3feb957a9ade38b2              # double 0.86199693916002773
	.quad	0x3fdb6dbbb952158e              # double 0.42857258889883887
	.quad	0x3feddda639c8a113              # double 0.93330680166130475
	.quad	0x3f9169e63f8193c0              # double 0.01700553667651028
	.quad	0x3fc49187fd5935c8              # double 0.16069126005679224
	.quad	0x3fe925489913d24c              # double 0.78580121896681864
	.quad	0x3fe9662118423cfa              # double 0.79371695268665055
	.quad	0x3fdedecf8d03c1e8              # double 0.48234928866352655
	.quad	0x3fe93ab488c76f91              # double 0.78841616358430333
	.quad	0x3fc9ff8f9e5905a0              # double 0.20311160308669418
	.quad	0x3f99103f37823920              # double 0.024476039660435878
	.quad	0x3fe03632578c73de              # double 0.50661580180496535
	.quad	0x3fe9a170da5efb55              # double 0.80095713282194458
	.quad	0x3fe156dbf54e2dae              # double 0.54185293112953103
	.quad	0x3fd0ca3fef400a74              # double 0.26234434475205792
	.quad	0x3fed49b15dc21079              # double 0.91524570762750479
	.quad	0x3fec8025c086702e              # double 0.89064300158088883
	.quad	0x3fbd78baa10c8f08              # double 0.11512342864858394
	.quad	0x3fe9116dc48031ef              # double 0.78337753657393516
	.quad	0x3fc7cb51cf119624              # double 0.18589232073570472
	.quad	0x3fd86df816b73ca4              # double 0.38171198099457571
	.quad	0x3fd55444b45bf026              # double 0.33326833356091112
	.quad	0x3fef952273b086f8              # double 0.98695490451447565
	.quad	0x3feefd907cfe0259              # double 0.96845268642943971
	.quad	0x3fb900e5f4b56368              # double 0.097669956439302319
	.quad	0x3f80d4c39c6c3a80              # double 0.0082183153258743591
	.quad	0x3fbd098df71c8050              # double 0.11342704089156652
	.quad	0x3feaff28d5d59b48              # double 0.84364740147143724
	.quad	0x3fe1a7fb6087027f              # double 0.55175560811046853
	.quad	0x3feb528764b9c601              # double 0.85382432625755211
	.quad	0x3fca20bc957ece90              # double 0.20412404346062774
	.quad	0x3fefe48cec10002b              # double 0.99664922815282375
	.quad	0x3fd15c4fe046188a              # double 0.27125927831401297
	.quad	0x3fcfd166541739b0              # double 0.24857787233345396
	.quad	0x3fe44a059015e11f              # double 0.63403585569088594
	.quad	0x3fa9b5b97850b970              # double 0.050214572846345784
	.quad	0x3fbdbd9f4477fde8              # double 0.11617465421294748
	.quad	0x3fbf0eeaa94f3510              # double 0.12132135995416982
	.quad	0x3fe02ddc9c4b8262              # double 0.50559835935935049
	.quad	0x3fd88a5e83b58350              # double 0.38344538557253305
	.quad	0x3fa739b4b5fb9f80              # double 0.0453621360919092
	.quad	0x3f7e596418af9c00              # double 0.0074094686524182051
	.quad	0x3fe19405dfa9139b              # double 0.54931920703585335
	.quad	0x3fd1749d3dd6373e              # double 0.2727425674319085
	.quad	0x3fe0d4404ee77670              # double 0.52590957079855905
	.quad	0x3feb381495a436e6              # double 0.85059575297210865
	.quad	0x3feeb44475774da8              # double 0.95950529997428635
	.quad	0x3fe053657caa6f5e              # double 0.51018022869855506
	.quad	0x3fead9307a4a2924              # double 0.8390123737783921
	.quad	0x3fd3454d28b17370              # double 0.30110482191030652
	.quad	0x3fed93aa82ed7a01              # double 0.92427564212613345
	.quad	0x3fe5a709586bf8c6              # double 0.67664019842029499
	.quad	0x3fad2f489f4eb190              # double 0.057001370856002542
	.quad	0x3fd96266a2780846              # double 0.39663091531850048
	.quad	0x3fe05c0c208f1544              # double 0.51123625144160956
	.quad	0x3fd4dbb4f6ce5a52              # double 0.3259098444190488
	.quad	0x3fe9f4f7a93c31ae              # double 0.81115325025307583
	.quad	0x3fd68c91ce71b4e8              # double 0.35232968483508253
	.quad	0x3feee56e8e696a12              # double 0.96550681891250378
	.quad	0x3feca1d1dd731b9b              # double 0.89475339176066215
	.quad	0x3fe54706b1806fe4              # double 0.66492018383314333
	.quad	0x3fdd4908d3aa136e              # double 0.45758267088267857
	.quad	0x3fcd7dd13cc03b64              # double 0.23040214029648631
	.quad	0x3fcfd594cafaf904              # double 0.24870548163557527
	.quad	0x3fd728f4397b7bec              # double 0.36187463391791996
	.quad	0x3f9b521bed866c00              # double 0.026680408832913116
	.quad	0x3fe16eb4de309052              # double 0.54476397892404749
	.quad	0x3fe80d88339cf5f1              # double 0.7516518600529577
	.quad	0x3fe044ac1edb4d18              # double 0.50838285471619127
	.quad	0x3fdb440e96eb65c8              # double 0.42602886903986503
	.quad	0x3fd38e1bda953d4e              # double 0.30554863306038704
	.quad	0x3fd458161ef06438              # double 0.31787636777295658
	.quad	0x3fe8fd5f366d2d54              # double 0.78092918996973503
	.quad	0x3fe5953391f29a80              # double 0.67446306710628789
	.quad	0x3fcc588dfaca4df8              # double 0.22145247216813835
	.quad	0x3fee9431e8f7485c              # double 0.95559020520364468
	.quad	0x3fe4a3936ada138b              # double 0.64496775502685588
	.quad	0x3fc3ebfdcdcc6d24              # double 0.15563938664204457
	.quad	0x3fc5073ee469b5a4              # double 0.16428362038588518
	.quad	0x3fcd0d962026b308              # double 0.2269771248806125
	.quad	0x3fd88cc5e42b3090              # double 0.38359210283375322
	.quad	0x3fd831f2e8a15aca              # double 0.37804863660623467
	.quad	0x3fe82e45610c3ed3              # double 0.75564831690459255
	.quad	0x3fd1c8c317777ef8              # double 0.27787854472806783
	.quad	0x3f692cf05d2fda00              # double 0.0030731863603208343
	.quad	0x3fdb0879b7775ebc              # double 0.42239230076436818
	.quad	0x3fd6001e229fba1e              # double 0.3437571848034241
	.quad	0x3fce58c6f1cb4f50              # double 0.23708426290851969
	.quad	0x3fab8cbfd4b8e840              # double 0.053808207242085349
	.quad	0x3fe02b77c87856b9              # double 0.50530614046393574
	.quad	0x3fdfd85ed3c25d82              # double 0.49758120231259551
	.quad	0x3fa3d2efd79cb490              # double 0.038718695707168682
	.quad	0x3feb8529baf10115              # double 0.86000525009152062
	.quad	0x3fdc88a4dfc9ebce              # double 0.44584009031649152
	.quad	0x3fef8491b6a77d0e              # double 0.9849327628579958
	.quad	0x3fea077e9209a2e8              # double 0.81341484568573907
	.quad	0x3fb4a2276c9c51c8              # double 0.080599273697152474
	.quad	0x3fcfea303d4af778              # double 0.24933436386885055
	.quad	0x3fd11f3e50c2b372              # double 0.26753194700977823
	.quad	0x3fb126dc70dd28d0              # double 0.066999223284400999
	.quad	0x3f7b7e9bc6d53400              # double 0.0067125401522618589
	.quad	0x3fd67dacc5b01142              # double 0.35142058663793219
	.quad	0x3fd50614666f430a              # double 0.32849607470875297
	.quad	0x3fd44c8bc24a82dc              # double 0.31717199300514465
	.quad	0x3fd87cbb33e6aa28              # double 0.38261299198589649
	.quad	0x3fde29744ad3f48a              # double 0.47128016765038494
	.quad	0x3fb30e6b9d1b3900              # double 0.074438787323035882
	.quad	0x3fbfd0b28dff1f38              # double 0.12427822081292283
	.quad	0x3fd0a13678dc5708              # double 0.25983964731982256
	.quad	0x3fef97964b8b03e9              # double 0.9872542834710859
	.quad	0x3fcca9b80a39ca34              # double 0.22392940997413435
	.quad	0x3fd39dadf70765f4              # double 0.30649899600902519
	.quad	0x3fe4a7812481412d              # double 0.64544732217658451
	.quad	0x3fdaa49444bce90e              # double 0.41629511559189403
	.quad	0x3fef50743de7d058              # double 0.97857105341837335
	.quad	0x3fbdcf7fc85e8b40              # double 0.11644743577793992
	.quad	0x3fce004c9560e71c              # double 0.23438412946580278
	.quad	0x3fd2c32a5a775fbc              # double 0.29316195330238393
	.quad	0x3fd035c8cae686b4              # double 0.25328273596287976
	.quad	0x3fec2ce216f36c32              # double 0.88047890169707999
	.quad	0x3fd50b24b61e7cfa              # double 0.32880513939922162
	.quad	0x3fe96b3a76a058b7              # double 0.79433940095147804
	.quad	0x3fe8c59e4068bed4              # double 0.77412331180490889
	.quad	0x3fc026d975ba4884              # double 0.12618559120580042
	.quad	0x3fe887d3b6a1922b              # double 0.76658044500488154
	.quad	0x3fe1d557e4e4482d              # double 0.55729288773932739
	.quad	0x3fe9903804d27ae1              # double 0.7988548368628835
	.quad	0x3fcb0370fa605464              # double 0.21104252076534913
	.quad	0x3fea5a0b62acb14f              # double 0.82349175712946898
	.quad	0x3fe0325ba0c528e9              # double 0.50614720726414675
	.quad	0x3fe951d44fbca4a3              # double 0.79123893331156514
	.quad	0x3fed1d38c5a1f59b              # double 0.90981711006286348
	.quad	0x3fede9afe6615b06              # double 0.9347762584319248
	.quad	0x3fe2f36bf27eff06              # double 0.59221455919757271
	.quad	0x3fc795e87e581c5c              # double 0.18426233452939556
	.quad	0x3fbd2052e5a1d8b0              # double 0.11377447229628745
	.quad	0x3fbebd9ab1596a40              # double 0.12008063154045434
	.quad	0x3fa7cd52e5d3f620              # double 0.046488371424839636
	.quad	0x3fe06b618b06bafc              # double 0.51310803559849161
	.quad	0x3fe2e6a9d06e9397              # double 0.59065714558947746
	.quad	0x3fe66108ba467ae9              # double 0.69934498197457373
	.quad	0x3fe34329fbdd530b              # double 0.60194873039526564
	.quad	0x3fdbc1eb42e55496              # double 0.43371087582392798
	.quad	0x3f8ce3e38bcc6540              # double 0.014106538490113452
	.quad	0x3fdfd4e749534082              # double 0.49736959610618936
	.quad	0x3fd515d3a6f03cae              # double 0.32945720007496504
	.quad	0x3feec97575415f0d              # double 0.96209214116513097
	.quad	0x3fdb5471350b7be0              # double 0.42702894382631307
	.quad	0x3fced85dd2347240              # double 0.2409779812231978
	.quad	0x3fc5fec48f7c6ea4              # double 0.17183739668040687
	.quad	0x3fd65f5345d016fe              # double 0.34956819360409941
	.quad	0x3fe47dea5803a88a              # double 0.6403705328969107
	.quad	0x3fcc6097844d6a24              # double 0.22169774971082845
	.quad	0x3feffe86b743a18f              # double 0.99982009691034245
	.quad	0x3fec4ef65337424e              # double 0.88463894131752752
	.quad	0x3fe86ec16140fcfd              # double 0.76351994509596433
	.quad	0x3fe115dfbdd34662              # double 0.53392016482593996
	.quad	0x3fd67a120e295ca8              # double 0.35120059378591373
	.quad	0x3fe97c5ed2606b82              # double 0.79643193329989992
	.quad	0x3fe59a947533855c              # double 0.67511961832876066
	.quad	0x3fdf3f86d600b5b0              # double 0.48825236223896251
	.quad	0x3fe031e9f26af9fb              # double 0.50609299990884382
	.quad	0x3fd8aef47852b2f6              # double 0.38567840338036719
	.quad	0x3fe4a88ab8e6d393              # double 0.64557396043402304
	.quad	0x3fe1090df35f8521              # double 0.53235528501332763
	.quad	0x3fdf27eecc7de88a              # double 0.48681230516343332
	.quad	0x3fea41741348c8ed              # double 0.820489919342689
	.quad	0x3fb0aee1a6dde820              # double 0.065168479193659312
	.quad	0x3fd0af8cfb8336a4              # double 0.26071476518414216
	.quad	0x3fe03937f5658e6e              # double 0.50698469094318255
	.quad	0x3fea4ff7c6da2b5f              # double 0.82226170385670716
	.quad	0x3fe49e54ebe71eb5              # double 0.64432760309951809
	.quad	0x3fed08a540cee6c9              # double 0.90730536134579964
	.quad	0x3fc87ba377fb63dc              # double 0.19127314909454085
	.quad	0x3fe1c45adae5bbc9              # double 0.55521910432241228
	.quad	0x3fe57289d13b4e06              # double 0.67023173204000908
	.quad	0x3fc9fa838f3b5768              # double 0.20295757764568667
	.quad	0x3fef583d8af42611              # double 0.97952153338809655
	.quad	0x3fcc1122772241f8              # double 0.21927290741997729
	.quad	0x3fbcce36751875d0              # double 0.11252155646112461
	.quad	0x3fec5e8bac387f04              # double 0.88654121052601952
	.quad	0x3fe84b705486129d              # double 0.75920883663691863
	.quad	0x3fd1bc1e9a9fed82              # double 0.27710690593786336
	.quad	0x3fd29ad44c9a24a0              # double 0.29070003014255441
	.quad	0x3fe8fc24897809dd              # double 0.780779140943476
	.quad	0x3fe39203f0e3bdd1              # double 0.61157414482834771
	.quad	0x3fdae640a48a6bf4              # double 0.42030349796703992
	.quad	0x3fdd06bba1da12c0              # double 0.45353594594807234
	.quad	0x3fca19a03d3cb8d4              # double 0.2039070414552443
	.quad	0x3fbb96158a0659e8              # double 0.10775885219332049
	.quad	0x3fcdbf3ec783935c              # double 0.23239884130375799
	.quad	0x3fb4a1909a970bf8              # double 0.0805902841012055
	.quad	0x3feb1b56ff258d2c              # double 0.8470873816808413
	.quad	0x3febfa33947b7d41              # double 0.87429217339005316
	.quad	0x3fe23ca281447906              # double 0.56990170714905797
	.quad	0x3fef01cfb0411199              # double 0.96897110390323171
	.quad	0x3fd1c62ac87fc586              # double 0.27772016124716747
	.quad	0x3fe3830b8de8d1a3              # double 0.60974672047318668
	.quad	0x3fd763ee25e8c236              # double 0.36547425939628242
	.quad	0x3fd2d32229626ad8              # double 0.29413656274270528
	.quad	0x3fe17dea329bd2f2              # double 0.54662046322354585
	.quad	0x3fba610e8b309f20              # double 0.10304346941176989
	.quad	0x3fd492179f93aae8              # double 0.32141676505732031
	.quad	0x3fc2d398f67d7f4c              # double 0.14708244357734157
	.quad	0x3fd4c1aa3b2371ce              # double 0.32432037139167569
	.quad	0x3fd0827e7140f962              # double 0.25796471652929231
	.quad	0x3fdc040a367ee810              # double 0.43774657556389318
	.quad	0x3fe10ef19fb1c1e4              # double 0.53307419958406088
	.quad	0x3fdaefc2cf9d5908              # double 0.42088384890429653
	.quad	0x3fee00b26166761c              # double 0.93758505843624417
	.quad	0x3fee0d4c8cdaef3a              # double 0.93912341604980232
	.quad	0x3fc8f0393af7eea4              # double 0.19483104113884508
	.quad	0x3fe868d01e8d7b31              # double 0.76279455153767206
	.quad	0x3fe5e253c76c3a28              # double 0.68387783956297188
	.quad	0x3fd03d159df86da6              # double 0.25372829844283229
	.quad	0x3f9143273c8a0060              # double 0.01685773188592099
	.quad	0x3fd07e5cffde188e              # double 0.25771260249201411
	.quad	0x3fdff9e6d22a68b6              # double 0.49962778591146717
	.quad	0x3fa732cd96ea4e00              # double 0.045309471771499688
	.quad	0x3fe12628cbb4faf8              # double 0.53590812479509875
	.quad	0x3fea11bacbc8c2ac              # double 0.8146642666016155
	.quad	0x3fe13165ed2211fa              # double 0.53728004756027237
	.quad	0x3fea2986fa5ac960              # double 0.81756924531354613
	.quad	0x3fd8c3311def9b7c              # double 0.38691356585916714
	.quad	0x3fece8004f62335b              # double 0.90332046036347025
	.quad	0x3feaee2398e2d3a7              # double 0.84156970844798173
	.quad	0x3fec0e819bd676d4              # double 0.87677078663883856
	.quad	0x3fb6da85a62b0308              # double 0.089271882122386015
	.quad	0x3fca2f8aab4712b0              # double 0.20457585681119417
	.quad	0x3fd58d209f647396              # double 0.33673873487151107
	.quad	0x3fd688b09f289a30              # double 0.35209289114792153
	.quad	0x3fe59f7297945076              # double 0.67571382146208125
	.quad	0x3fdf3109a72c499e              # double 0.48736802411544911
	.quad	0x3fe4794b75e4b722              # double 0.63980649019297098
	.quad	0x3fe71067e9bf5d76              # double 0.72075267461597892
	.quad	0x3feeefdfe561e0ed              # double 0.96678156663167913
	.quad	0x3fa56d5de65e7270              # double 0.041850027438361859
	.quad	0x3fe10549a8ffcc71              # double 0.53189547546061366
	.quad	0x3fd709511447d924              # double 0.35994364719899097
	.quad	0x3fe80d0b3ea64cf4              # double 0.75159227596523559
	.quad	0x3fec449c150cfbda              # double 0.88337520705669736
	.quad	0x3fac09ff50ab81d0              # double 0.054763773534208249
	.quad	0x3fd2b0bb58c1425e              # double 0.2920368544337516
	.quad	0x3fc655c85babc29c              # double 0.17449287868614227
	.quad	0x3fd303d82648ebc6              # double 0.29710963953737879
	.quad	0x3fc419399e3d54b0              # double 0.15701980806867288
	.quad	0x3fdf47cee41c19ba              # double 0.48875782276482094
	.quad	0x3fe7e3eb9e1383ff              # double 0.74657231210960606
	.quad	0x3fe300bdfcfd279f              # double 0.59384059345142137
	.quad	0x3fed1d61bc9a43e2              # double 0.90983664356656058
	.quad	0x3fe145d9ee3b11d6              # double 0.53977676896516402
	.quad	0x3feab5bebf589cb9              # double 0.83468568203252069
	.quad	0x3fe9b0d9524ca7d3              # double 0.80283800195797494
	.quad	0x3fec8a993971b88b              # double 0.89191876620840682
	.quad	0x3fdd9f76e2d7123e              # double 0.46285793449741053
	.quad	0x3fd33e69e765b19c              # double 0.30068442914378024
	.quad	0x3fe6b77f053380d0              # double 0.70989943519455245
	.quad	0x3fcc114eb0a9a298              # double 0.21927817941766103
	.quad	0x3fd11e93a5a6b514              # double 0.2674912564933305
	.quad	0x3fd7133b8abfa032              # double 0.36054886388456275
	.quad	0x3fdb9182303127d6              # double 0.43075613695384385
	.quad	0x3fb014bf860a2140              # double 0.062816591476921424
	.quad	0x3fe9562241e16627              # double 0.79176438205030741
	.quad	0x3fb26e7cfe1f9348              # double 0.07199841694052822
	.quad	0x3feaa468f7da2411              # double 0.83256958397498881
	.quad	0x3fdc99d1534d9584              # double 0.44688828597130503
	.quad	0x3fe770110f513e26              # double 0.73243000976248562
	.quad	0x3fda4a2ae8e8516c              # double 0.41077683205482773
	.quad	0x3fed5a7d04e07b18              # double 0.91729594185366903
	.quad	0x3fe7966c9e60e6db              # double 0.73711234029107275
	.quad	0x3fce419c3e4c4434              # double 0.23637726823702254
	.quad	0x3feb022d0d2c2753              # double 0.84401562283276588
	.quad	0x3fb10f2fcc97aa28              # double 0.066637980889631465
	.quad	0x3fe36e4845a19277              # double 0.60721219634849788
	.quad	0x3fe50ebb267686a7              # double 0.6580482245664897
	.quad	0x3fe958da5421e3f0              # double 0.79209629470926579
	.quad	0x3fea3a3c4f1172b9              # double 0.81960883563041087
	.quad	0x3fdea5101511dccc              # double 0.47882463510127304
	.quad	0x3fdb080c6ea9f33a              # double 0.4223662453367073
	.quad	0x3fd9c0dd1e1761e0              # double 0.40239646853072308
	.quad	0x3fe06116b24576aa              # double 0.51185164278623074
	.quad	0x3fea8ddcf84ad253              # double 0.82981728071770033
	.quad	0x3fc03170d0cd44d4              # double 0.12650880999948433
	.quad	0x3fd416ea3d95a84e              # double 0.31389862074013741
	.quad	0x3fdd3ac80c024d8c              # double 0.45671273396256917
	.quad	0x3fdfb2634cabd5a6              # double 0.49526293265747723
	.quad	0x3fd967cb28f76cda              # double 0.39696005821833824
	.quad	0x3fe8b60bdfbdbdaa              # double 0.77222245883415508
	.quad	0x3fea5941d2258cf8              # double 0.82339564365648155
	.quad	0x3fe66221d2de9cc4              # double 0.69947901902642018
	.quad	0x3fea6b13f4bd6c53              # double 0.82557103920715702
	.quad	0x3fe0c5da9c7ba311              # double 0.52415209353520897
	.quad	0x3fe0d0544f06eb2d              # double 0.5254308265205957
	.quad	0x3fa1cc6abf8bb0c0              # double 0.034762702829398417
	.quad	0x3fed12698ad5d96e              # double 0.90849759212760062
	.quad	0x3fe467d3605a84e1              # double 0.63767403430042802
	.quad	0x3fbd7c7192b7fb90              # double 0.11518010932921485
	.quad	0x3fec5d6b5f3b25c3              # double 0.88640373802007166
	.quad	0x3fb13861e026eb20              # double 0.067266576027503522
	.quad	0x3fe951541b4f72ef              # double 0.79117780050327535
	.quad	0x3fe4aaff05c50a38              # double 0.64587355734722163
	.quad	0x3fe454bb8909801a              # double 0.63534333005009391
	.quad	0x3feea88d88adb2f1              # double 0.95807530112287342
	.quad	0x3fd6e65dca31f478              # double 0.35781044717425159
	.quad	0x3fefcc11302c560b              # double 0.99366053971124423
	.quad	0x3fc7719a5f34cba4              # double 0.18315438889257252
	.quad	0x3fcb3dfe8265b4ec              # double 0.21282941214614171
	.quad	0x3fd4f86adcbf0ea6              # double 0.3276621967054133
	.quad	0x3feb1d15eaf55d6c              # double 0.84730049028705201
	.quad	0x3fe7b81ea8e1a20f              # double 0.74122555718082761
	.quad	0x3fd0994b0863ef9e              # double 0.25935626811382828
	.quad	0x3fecb79212a21363              # double 0.89740852011946648
	.quad	0x3fd35489d69034aa              # double 0.30203481629798523
	.quad	0x3fd2a290e33ebf98              # double 0.29117223922639246
	.quad	0x3fcf123d2c2b2000              # double 0.24274410874045316
	.quad	0x3fbd15b4562f15a0              # double 0.1136124334726305
	.quad	0x3fe7c371fac9176a              # double 0.74260806066079721
	.quad	0x3fe5ea4a43ee20ee              # double 0.68484986560454586
	.quad	0x3fe65bf6b4060ad5              # double 0.69872603569850844
	.quad	0x3fa0e49e5f524e70              # double 0.032994221816946445
	.quad	0x3fece0a12506ced9              # double 0.90242058974987593
	.quad	0x3fda784c1078cf88              # double 0.41359235390267957
	.quad	0x3fdad3d5df24cadc              # double 0.41917940894488281
	.quad	0x3fe5974a93acbfe2              # double 0.67471817820296232
	.quad	0x3fe9e66faac75ee0              # double 0.80937941889984799
	.quad	0x3fd32cf9574bf38c              # double 0.2996199944025697
	.quad	0x3fecdd3242ce2e31              # double 0.90200150535515011
	.quad	0x3fe231ce204ec632              # double 0.56857973394489236
	.quad	0x3fb6aac6b2c503e8              # double 0.088543337483329432
	.quad	0x3fde1c0a4f8bbe80              # double 0.47046144264366063
	.quad	0x3fe9d6aeb2b24f1b              # double 0.80745634938873267
	.quad	0x3fed59f6ce69a99b              # double 0.91723194422711474
	.quad	0x3fee1d2a621b829f              # double 0.94106024896253249
	.quad	0x3fa7268983886bc0              # double 0.045215890222798816
	.quad	0x3fba86e7adcbc910              # double 0.10362098687236121
	.quad	0x3fd955d60c40d764              # double 0.39586402126894016
	.quad	0x3feecd8406e76a1c              # double 0.96258736942701572
	.quad	0x3feded1917fb4bb5              # double 0.93519262966071059
	.quad	0x3feeaa66d77e0348              # double 0.95830099190070772
	.quad	0x3fe24e412dc03780              # double 0.57205256400787619
	.quad	0x3fd15a6db793495e              # double 0.27114432265547872
	.quad	0x3fdc7a5934f5aae8              # double 0.44496755763854745
	.quad	0x3fa7b0ce9a636230              # double 0.04627080568906583
	.quad	0x3fed865e6314ca4a              # double 0.92265242912100942
	.quad	0x3fe314f4a3d1711e              # double 0.59630805965165101
	.quad	0x3fe7c0d2fae6d4d0              # double 0.74228810314402871
	.quad	0x3fe1ba5ae048e175              # double 0.55399841123202853
	.quad	0x3fe74a7b69d09ba6              # double 0.72784205119102263
	.quad	0x3fea331834df74d7              # double 0.81873712851270397
	.quad	0x3fd99afb3ede468a              # double 0.40008431567648783
	.quad	0x3f813561370ed380              # double 0.0084025950362531798
	.quad	0x3fc6cdb5ae723de4              # double 0.17815276162990223
	.quad	0x3fe3574a34438a38              # double 0.60440550048617236
	.quad	0x3fe120d2f3790e71              # double 0.53525683930679524
	.quad	0x3f97a196b7e5a080              # double 0.023077349638157774
	.quad	0x3fe6c7c1eaf9da51              # double 0.71188445943591649
	.quad	0x3fe52faffbc350af              # double 0.6620712201352229
	.quad	0x3fe7eed5b143baa3              # double 0.74790463087068237
	.quad	0x3fcc56addf962478              # double 0.22139523904141689
	.quad	0x3f89f78e064fc200              # double 0.012679204528439847
	.quad	0x3fd818155b4d8d36              # double 0.37646993557264652
	.quad	0x3fbc967d85d07da0              # double 0.11167130009606874
	.quad	0x3feab44edc50390f              # double 0.83451025991397099
	.quad	0x3feaaf7776018acd              # double 0.83391926811267469
	.quad	0x3fcf1ed0f24aea58              # double 0.24312793570227842
	.quad	0x3fe526c4ab1545d5              # double 0.66098245062510819
	.quad	0x3fe77f80e8b01ff2              # double 0.7343143982589011
	.quad	0x3fef42960ce7ef4a              # double 0.97687819023801947
	.quad	0x3fe5e54e4df768ed              # double 0.68424144008466004
	.quad	0x3fea2649d0502fa6              # double 0.81717386900117073
	.quad	0x3fc0dbd354ee367c              # double 0.13170854231832496
	.quad	0x3feaaea2553ecb5c              # double 0.83381764077635578
	.quad	0x3fd1787591740e42              # double 0.27297724918773636
	.quad	0x3fd25db82651f89e              # double 0.28697017423827187
	.quad	0x3fa782df7d33fe60              # double 0.04592035678251416
	.quad	0x3fecfb6ff2d3e938              # double 0.90569302966404219
	.quad	0x3fd5f87d1e87fc70              # double 0.34329154950677943
	.quad	0x3fecb7c599fd89db              # double 0.89743309093710921
	.quad	0x3fee4f15ea46db43              # double 0.94715400464233601
	.quad	0x3fef022f6d9f180f              # double 0.96901675615731786
	.quad	0x3fe6930c03dba775              # double 0.70545006516952802
	.quad	0x3fd415661fa918e8              # double 0.31380608646249053
	.quad	0x3fe946351ab35aed              # double 0.78982024397813932
	.quad	0x3fda8cf7955a1ce4              # double 0.41485395035893036
	.quad	0x3fd7a1286d8a6704              # double 0.36921129891707971
	.quad	0x3fd7b83b93a9974e              # double 0.37061967296755405
	.quad	0x3fe046bd4877054c              # double 0.50863517907434064
	.quad	0x3fc7a54ad0e50588              # double 0.18473181915218739
	.quad	0x3fdf6120ed1a1fe8              # double 0.4903032603692723
	.quad	0x3fcc1a8363242b50              # double 0.21955911961443997
	.quad	0x3fdc1f2ac875f942              # double 0.43940229011777288
	.quad	0x3fde27c797fd7fb4              # double 0.47117795794292339
	.quad	0x3feb53de8e83a331              # double 0.85398795924002091
	.quad	0x3fd4cfa0eafbfedc              # double 0.32517264316264316
	.quad	0x3fefeeedc1eb2f5a              # double 0.99791610598320379
	.quad	0x3fe0913371698c85              # double 0.51772472525443958
	.quad	0x3feb4ac186052449              # double 0.85287548232839427
	.quad	0x3fa67dba05b30ab0              # double 0.043927968211865731
	.quad	0x3fe967ecb0104eca              # double 0.79393610370103684
	.quad	0x3fcd6d8fdc905d80              # double 0.2299060656521128
	.quad	0x3fe4195e54ace17d              # double 0.6280967382254371
	.quad	0x3fc55885c321fa14              # double 0.16676399257626484
	.quad	0x3feb84431d3627bd              # double 0.85989528375034008
	.quad	0x3fd7373a62354e10              # double 0.36274585333487241
	.quad	0x3fee4480651f877f              # double 0.94586200476281579
	.quad	0x3fd012cf5b2ece50              # double 0.25114807037900722
	.quad	0x3fbd2de074657fe0              # double 0.11398127404891012
	.quad	0x3fd0b6946aee64a0              # double 0.26114378397466886
	.quad	0x3fefd7ef50069f16              # double 0.99510923032809973
	.quad	0x3fd0635d4a3fb7b8              # double 0.25606472254628043
	.quad	0x3fe4312117115788              # double 0.6309972239057382
	.quad	0x3fc0fa48a736cf88              # double 0.13263805546523266
	.quad	0x3fd3e535fcb42ccc              # double 0.31086492231470397
	.quad	0x3fe1df4167c7a0f8              # double 0.55850286740772415
	.quad	0x3feafef5e8b7ba4b              # double 0.8436231179492294
	.quad	0x3fec4735739ecf3a              # double 0.88369247991656796
	.quad	0x3fe20aa6c4b98872              # double 0.56380022452164114
	.quad	0x3fcea929cc56cc18              # double 0.23953745343678245
	.quad	0x3fe173d0c15cdc30              # double 0.54538762823256626
	.quad	0x3fe173bf064774d2              # double 0.54537917353050092
	.quad	0x3fe900cad9f439bc              # double 0.78134672707692898
	.quad	0x3fdf326df01491ba              # double 0.48745296902987045
	.quad	0x3fd7a2d18e6a7470              # double 0.36931265743061825
	.quad	0x3feed005e257c843              # double 0.96289343078229483
	.quad	0x3fadb6ad7d85f640              # double 0.058034345219294625
	.quad	0x3fe3d1947e6296a7              # double 0.61933350262252851
	.quad	0x3faae2873624f5e0              # double 0.052509522780819884
	.quad	0x3feda220109114f9              # double 0.92604068027199482
	.quad	0x3fe0f459caec2d60              # double 0.52982797272981585
	.quad	0x3fece553ff9bb594              # double 0.9029941551540781
	.quad	0x3fc5107ca64891c4              # double 0.16456564063368095
	.quad	0x3fe69a4591753da7              # double 0.70633200082550196
	.quad	0x3fe91ce313c0f025              # double 0.78477624757897912
	.quad	0x3fc49241fe00e2c4              # double 0.16071343328964904
	.quad	0x3fee8421f1110c28              # double 0.95362946589773844
	.quad	0x3feef31539a02365              # double 0.96717320685375496
	.quad	0x3fd35c3803e38856              # double 0.30250358943715605
	.quad	0x3feaecd6b6501f5a              # double 0.8414109764862403
	.quad	0x3fc879b5a0453b88              # double 0.19121427846627292
	.quad	0x3fecfa88b834e099              # double 0.90558277108995633
	.quad	0x3fe3e35ad1829128              # double 0.62150326652457455
	.quad	0x3fb480b22d843090              # double 0.080088745224374813
	.quad	0x3fe7276407f6d019              # double 0.72355844073763642
	.quad	0x3fea67ce657bf0f9              # double 0.82517165967104156
	.quad	0x3fd79f7b02603f7c              # double 0.36910891754177277
	.quad	0x3f9c368a140a88a0              # double 0.027551801179136803
	.quad	0x3f93a286eed8f1e0              # double 0.019174679115382065
	.quad	0x3fedbde72720a631              # double 0.92943151132675983
	.quad	0x3fe10a021a398dcb              # double 0.53247170564684987
	.quad	0x3fec894b9617816f              # double 0.89175967516716337
	.quad	0x3fd2de1c7b6996ea              # double 0.29480659534452391
	.quad	0x3face1c0f4e51a90              # double 0.056409864324952541
	.quad	0x3fb6fc8e1adf6530              # double 0.089791184960081649
	.quad	0x3fe32ac28f94a955              # double 0.59896972697360218
	.quad	0x3fecde0618e135a1              # double 0.90210251674004749
	.quad	0x3fb4f0cd67d53278              # double 0.081799352502636924
	.quad	0x3fe163ab2ad3a824              # double 0.5434165798626549
	.quad	0x3fe5532909d8d9e7              # double 0.66640140460259267
	.quad	0x3fcac974d7cf00c4              # double 0.20927296197442591
	.quad	0x3fc2e3c273b8c448              # double 0.1475756707236846
	.quad	0x3fe77ee1b2e4ca5d              # double 0.73423848095110211
	.quad	0x3fe7c1bb0db6ff88              # double 0.74239876440695785
	.quad	0x3feb2ca4fded0968              # double 0.84919976801783736
	.quad	0x3fed794335945936              # double 0.92105255570166977
	.quad	0x3fbc5205ae359398              # double 0.11062655928760845
	.quad	0x3fd23c5695e17cc8              # double 0.28493275296018483
	.quad	0x3fd2f7010a52b75a              # double 0.29632593162647469
	.quad	0x3fe54032265aeaae              # double 0.66408641329993201
	.quad	0x3fee5679934674b0              # double 0.94805601849261301
	.quad	0x3fb94a76880d0368              # double 0.098792465415511566
	.quad	0x3fcd003df50d523c              # double 0.22656988587790916
	.quad	0x3feed3c0616019f5              # double 0.96334857004768414
	.quad	0x3fecc87f6b945808              # double 0.89947482120146649
	.quad	0x3fdb970e336e9e32              # double 0.43109469435373449
	.quad	0x3fd85264dcaa730a              # double 0.38002893018146777
	.quad	0x3fe763d21483c0a6              # double 0.73093513495225149
	.quad	0x3fde9397b2e0fdd6              # double 0.4777583357681271
	.quad	0x3febb3a684425595              # double 0.86567998725756701
	.quad	0x3fe6c1bfdac4df95              # double 0.71115105369880161
	.quad	0x3fee8a64570a96b2              # double 0.95439354896799089
	.quad	0x3fe8f454ccb5d3b8              # double 0.77982559187386524
	.quad	0x3fcd442627a5c7b8              # double 0.22864224372784547
	.quad	0x3fdd9e5e17231f66              # double 0.46279098758213022
	.quad	0x3fe41b52aee91b66              # double 0.62833532488080546
	.quad	0x3fe1c49535ade9f2              # double 0.55524692997215497
	.quad	0x3feff41c75dd17d5              # double 0.99854872722857612
	.quad	0x3fae94a54c1a8810              # double 0.059727826633448555
	.quad	0x3feffcdefb1f5dd6              # double 0.99961804435127521
	.quad	0x3fe28b4f2b02da88              # double 0.57950552368750241
	.quad	0x3fce639473bd5070              # double 0.2374139371046371
	.quad	0x3fe64444539a0ad5              # double 0.69583336189711054
	.quad	0x3fb3197fb19d80d0              # double 0.074607830870721203
	.quad	0x3fea8ca580fd3d29              # double 0.82966876214223817
	.quad	0x3feb0fc26d696338              # double 0.84567376489130819
	.quad	0x3fb5021ae7295778              # double 0.082063371120367878
	.quad	0x3fefb20fced4ee95              # double 0.99048605343655771
	.quad	0x3fe0ecf236f8336a              # double 0.52892409073102198
	.quad	0x3fe1e4b9338048eb              # double 0.55917034205256522
	.quad	0x3fbb5b8e0616c7b8              # double 0.10686576508194789
	.quad	0x3fe1fe2795838c26              # double 0.56227473451543086
	.quad	0x3fbae2cafed14068              # double 0.10502308579566633
	.quad	0x3feb7cee86e4e029              # double 0.85900045725339169
	.quad	0x3fc6321d001688f0              # double 0.17340433601663774
	.quad	0x3fec1eefac2419c2              # double 0.87877639409344277
	.quad	0x3fe9ba1f129976b1              # double 0.80396989472111191
	.quad	0x3fe16ca6a814c599              # double 0.54451306179378201
	.quad	0x3fd7151e36460e22              # double 0.36066394138490143
	.quad	0x3fdb26c8ae7f4032              # double 0.42424218216638387
	.quad	0x3fef19a7edfb2b95              # double 0.97188183289232432
	.quad	0x3fe91c5bff1c1e82              # double 0.78471183611050344
	.quad	0x3fe944b599c7ee5c              # double 0.78963737521503274
	.quad	0x3fde9913614a0cee              # double 0.47809299946693684
	.quad	0x3feb7a4ad297b6e1              # double 0.8586782563340557
	.quad	0x3fdb1ac2ad5ad9c2              # double 0.42350832871616373
	.quad	0x3fd5b95b5f3c8420              # double 0.33943828869274917
	.quad	0x3fe501c63d1266e2              # double 0.65646659782506966
	.quad	0x3fe7c05efed4f28e              # double 0.74223279735413583
	.quad	0x3fb3665ce3e106c8              # double 0.075780683168910845
	.quad	0x3fdfff302605febe              # double 0.49995044434761471
	.quad	0x3fed0dc3a3454c2b              # double 0.90793020142371483
	.quad	0x3fe3597e55a4b464              # double 0.60467449881765534
	.quad	0x3fc3527328919524              # double 0.150953669365813
	.quad	0x3fe5a869c3458da8              # double 0.67680824412348262
	.quad	0x3fe320c6bc8d56b7              # double 0.59775101496298688
	.quad	0x3fe187757a17e6fb              # double 0.54778550955162986
	.quad	0x3fdc2d98e10d1ed4              # double 0.44028303125058454
	.quad	0x3fed47044b4621a1              # double 0.91491903974479183
	.quad	0x3fe47a7e9a2cbdb6              # double 0.63995294677982062
	.quad	0x3fc7c4207991f5a8              # double 0.18567281662028035
	.quad	0x3fc0148c4f503654              # double 0.12562707779618398
	.quad	0x3fdb4095cb049fba              # double 0.42581696344359055
	.quad	0x3fe452264fc7b1d6              # double 0.63502803403894847
	.quad	0x3fd82b7e916459b4              # double 0.37765468786656275
	.quad	0x3fef768629f45fbd              # double 0.98321827120070504
	.quad	0x3fe3f6a038d62c5d              # double 0.62385569668675667
	.quad	0x3fd121aec3ec1752              # double 0.26768082745581012
	.quad	0x3fe4c29f1d95cb7f              # double 0.64875751283976502
	.quad	0x3fda6c031008d474              # double 0.41284252706402147
	.quad	0x3fe7c439f8155381              # double 0.74270342305918302
	.quad	0x3fed324dd83f7778              # double 0.91239063487931471
	.quad	0x3fd4eed5822c6660              # double 0.32707727157830924
	.quad	0x3fdfe85d53391c22              # double 0.49855740668539472
	.quad	0x3fce82d9b1c943f0              # double 0.23836823636022997
	.quad	0x3fdf626f50357292              # double 0.49038298447502726
	.quad	0x3fe75e8ef1e0f29d              # double 0.7302927707856558
	.quad	0x3fd4d19910174070              # double 0.32529284068460296
	.quad	0x3fddb752e242be32              # double 0.46431419463894763
	.quad	0x3fe0b77155d62124              # double 0.52239290966921148
	.quad	0x3fe1646e5bee2464              # double 0.54350965457082312
	.quad	0x3fda33f3213fa7b8              # double 0.40942075964869273
	.quad	0x3f83d2557eab02c0              # double 0.0096785239487656715
	.quad	0x3fea101d13ac17b5              # double 0.81446698991998423
	.quad	0x3fd2becd41efe920              # double 0.29289561690497301
	.quad	0x3feab068efd48848              # double 0.83403441278302015
	.quad	0x3fe83a47823e1726              # double 0.75711417615886911
	.quad	0x3fc27a9e9cb47348              # double 0.14436705257039706
	.quad	0x3fd7d76989d768e8              # double 0.37252272091940464
	.quad	0x3feb465a56c17d42              # double 0.85233799881454098
	.quad	0x3fcd319a59d95808              # double 0.22807626139791659
	.quad	0x3fe136375693b441              # double 0.5378681841808729
	.quad	0x3fe96d42fde48fdb              # double 0.79458760822717112
	.quad	0x3fd6b6da18a27e48              # double 0.35491039663063306
	.quad	0x3fd381112a442cb4              # double 0.30475262763566069
	.quad	0x3fea803658c2ea6b              # double 0.82815091453751444
	.quad	0x3fe1839fa2b94e04              # double 0.54731733114243797
	.quad	0x3fc0ea60dafe3620              # double 0.1321526593496154
	.quad	0x3fed3811c1d0eb75              # double 0.91309440474229453
	.quad	0x3fef6910f7f55df0              # double 0.98157547406566259
	.quad	0x3fe3d5f840893351              # double 0.61986935238528862
	.quad	0x3fd59cbe00fef8b2              # double 0.33769178483261009
	.quad	0x3fd3838f45460bc6              # double 0.304904763841645
	.quad	0x3fe0ae5b1fed9299              # double 0.52128368602696462
	.quad	0x3faf822884f7ed20              # double 0.061539903861524303
	.quad	0x3fd34fc0d1da4a08              # double 0.30174274915148702
	.quad	0x3fc62102a482b30c              # double 0.17288239510289605
	.quad	0x3f9ee269c5c7b1e0              # double 0.03016057271627115
	.quad	0x3fee8692a15220ed              # double 0.95392734058353101
	.quad	0x3fe863a13a997636              # double 0.76216184086997063
	.quad	0x3fc6e5d6bb0a2914              # double 0.17888912327573137
	.quad	0x3fd8c523ef79870a              # double 0.38703249345972834
	.quad	0x3f9fcad52efd3c80              # double 0.031047183030122216
	.quad	0x3fd1bbd18987ee14              # double 0.27708853178748538
	.quad	0x3fd7cbb6c4b631b0              # double 0.37180871210218935
	.quad	0x3fcbc87488c35a38              # double 0.21705490758786694
	.quad	0x3fe8204c5d5c0754              # double 0.75394266351961869
	.quad	0x3fe774504d937afc              # double 0.73294844771939394
	.quad	0x3fe0eb601cec7637              # double 0.52873235367923754
	.quad	0x3fe49230f4c53ae6              # double 0.64284560972904781
	.quad	0x3fee30b24dcaf510              # double 0.94344439691454518
	.quad	0x3fbc41b21d9c7660              # double 0.11037743781022291
	.quad	0x3feb924978e0f08e              # double 0.86160729989161822
	.quad	0x3fe61089d86b833b              # double 0.68951885480428332
	.quad	0x3fd3c67f7827021e              # double 0.30899035199766611
	.quad	0x3fefea805e4f19e9              # double 0.99737566394543109
	.quad	0x3fe358c08b488ad5              # double 0.60458399966986553
	.quad	0x3fd1d1adb5847cb2              # double 0.27842276312180581
	.quad	0x3fe863692d77a91f              # double 0.76213511352878871
	.quad	0x3fb667de41094870              # double 0.087522402647012276
	.quad	0x3fe5e172d5c97a4c              # double 0.68377057795789531
	.quad	0x3fed6ee1f40caec2              # double 0.91978547731329052
	.quad	0x3fb49743f3f5b3e8              # double 0.080433127460949216
	.quad	0x3fef0e26322675c8              # double 0.97047719759910311
	.quad	0x3fc36caa5f2e6cdc              # double 0.15175370833899293
	.quad	0x3fca91762cbe7294              # double 0.20756413635981075
	.quad	0x3fd01cdd4335d00c              # double 0.25176173747536335
	.quad	0x3fcd98bad4a335d8              # double 0.23122344381992721
	.quad	0x3fe66aac631ebfa6              # double 0.70052165374180642
	.quad	0x3feca7e1443f745a              # double 0.89549315766965809
	.quad	0x3fed5b3feecabc71              # double 0.91738888396311158
	.quad	0x3fd1246d12e2294e              # double 0.2678482708366986
	.quad	0x3fcf4bef2a2cc97c              # double 0.24450482901881887
	.quad	0x3fe7bbc441726ffa              # double 0.74167073042508425
	.quad	0x3fed4431c281d487              # double 0.91457450856854983
	.quad	0x3fb5833717716b78              # double 0.084033435080909658
	.quad	0x3fb3a3bc6d932928              # double 0.076717163802787369
	.quad	0x3fc8bbdfdc96d790              # double 0.19323347350080811
	.quad	0x3f861a37cb01ad00              # double 0.010792194254654053
	.quad	0x3fe67e279e3184d2              # double 0.7028997506824004
	.quad	0x3feb162d32d96544              # double 0.84645709926113754
	.quad	0x3fec7cb863c216c9              # double 0.89022464260116252
	.quad	0x3fc614c34730140c              # double 0.17250863052336773
	.quad	0x3fcc69109909db3c              # double 0.22195632431586343
	.quad	0x3fed3620a8c784e3              # double 0.91285737004014
	.quad	0x3fe55264c8dc56a3              # double 0.6663078234730232
	.quad	0x3fd43d98fa89debe              # double 0.31625961748748554
	.quad	0x3fe6f675cc64ffe4              # double 0.71758546753698882
	.quad	0x3fb8118a0640ee00              # double 0.094017626311078573
	.quad	0x3feec3bce8c73902              # double 0.96139378990645263
	.quad	0x3fe96b941fcb6efd              # double 0.79438215455908756
	.quad	0x3fea6a1859a932fd              # double 0.82545106422330117
	.quad	0x3fe4bae8a6392b80              # double 0.64781601396076383
	.quad	0x3fe552950e82721f              # double 0.66633084138772236
	.quad	0x3fe551435ff959d4              # double 0.6661698221676553
	.quad	0x3fed61021d85435b              # double 0.91809182897314245
	.quad	0x3fb311be1b2bd168              # double 0.074489480622849435
	.quad	0x3fbbb17ac16f1c18              # double 0.10817687246809304
	.quad	0x3fe5df4fe0b7abfb              # double 0.6835097683918997
	.quad	0x3fe5cb9fe55c3400              # double 0.6811065177622595
	.quad	0x3fdf0ee961db1f9e              # double 0.48528513485188707
	.quad	0x3fbdcad0ea920538              # double 0.11637597777191366
	.quad	0x3fdc092550d3caca              # double 0.43805821316997806
	.quad	0x3fe17c8f659d2027              # double 0.54645509573402229
	.quad	0x3fdbb778213239f0              # double 0.43307307473960943
	.quad	0x3fd39e6995eb24e4              # double 0.30654372826081855
	.quad	0x3fcf6dc9cf7c5890              # double 0.24553797370089514
	.quad	0x3fdb2beb494ca140              # double 0.4245556083501647
	.quad	0x3fe7c5ab5a616013              # double 0.74287955906311465
	.quad	0x3fd0d495c4276a28              # double 0.2629751601759005
	.quad	0x3fd730432aa2ddfa              # double 0.36232070125285498
	.quad	0x3fd698ecba448f56              # double 0.35308378401008633
	.quad	0x3fb6241d9025ef98              # double 0.086488578503063684
	.quad	0x3fbefdae96380f48              # double 0.12105837981658596
	.quad	0x3fd09f039e5aa692              # double 0.25970545257823929
	.quad	0x3fd23a15c361983c              # double 0.28479522781561051
	.quad	0x3fe351396a714825              # double 0.60366507329513708
	.quad	0x3fa5ead6352c8100              # double 0.042807287207553557
	.quad	0x3fccc001a18ba384              # double 0.22460956943475818
	.quad	0x3fe2ccf847e2d495              # double 0.58752073326344834
	.quad	0x3fe3c9d8d510b06b              # double 0.61838952650351808
	.quad	0x3fabd31fe1a0eb40              # double 0.054345127384712644
	.quad	0x3fe6a6b2205da8a1              # double 0.70784860917526171
	.quad	0x3fd91a16aabd71fc              # double 0.39221731828527573
	.quad	0x3fd0c8a71ad88c4a              # double 0.26224687215489395
	.quad	0x3fcdd82304c70d70              # double 0.2331584714248538
	.quad	0x3febf7d2648b0b7c              # double 0.87400169026692209
	.quad	0x3fd68a6c653f2fe4              # double 0.35219869506249624
	.quad	0x3fe56da82286daad              # double 0.66963583701620666
	.quad	0x3fd3658f2ef41824              # double 0.30307368836690984
	.quad	0x3feb3355487df2ca              # double 0.85001625212279319
	.quad	0x3fc15ba6fdef99c4              # double 0.13560950659957716
	.quad	0x3fe94417238c5791              # double 0.78956181471834175
	.quad	0x3fe70fc5ed6f1a9d              # double 0.72067543386295407
	.quad	0x3fa7bb56d3c627b0              # double 0.046351159430812472
	.quad	0x3f8f91b0be8c9e00              # double 0.015414601149656981
	.quad	0x3fef9bbca5ff82e8              # double 0.98776085301878158
	.quad	0x3fe28804985992e5              # double 0.57910375362243072
	.quad	0x3fe7d864888937b4              # double 0.74516512553394998
	.quad	0x3fedd39a64fa3226              # double 0.93208045694479291
	.quad	0x3fd4f2413bc212e4              # double 0.32728606067420984
	.quad	0x3fc640dcfa435290              # double 0.17385446758148193
	.quad	0x3fd542fafd6dc376              # double 0.33221316098120413
	.quad	0x3fe79317556a9c57              # double 0.73670546229267131
	.quad	0x3fde9ead63339f76              # double 0.47843489349042245
	.quad	0x3fe6524961c04533              # double 0.69754475681307893
	.quad	0x3fb69deaf6289330              # double 0.088347134682930983
	.quad	0x3fcc7b2d96a3beb8              # double 0.22250909667444829
	.quad	0x3f7fa8ae93bad800              # double 0.0077292270104205585
	.quad	0x3fd3ad43242ba25a              # double 0.30745008976240273
	.quad	0x3f7750e9058df100              # double 0.0056923963937800526
	.quad	0x3fe37c837f8046a3              # double 0.60894942190698875
	.quad	0x3fed4113ef0c03d9              # double 0.91419407547811737
	.quad	0x3fceffafebb4f368              # double 0.2421779538070965
	.quad	0x3fc2a84435311588              # double 0.14576008412602115
	.quad	0x3fb36956fdf28ed0              # double 0.075826107977771117
	.quad	0x3fedb47ba9e08ef8              # double 0.92828162364136713
	.quad	0x3fe94d5d6fe106b3              # double 0.79069396830910532
	.quad	0x3fedd634f754c016              # double 0.93239830309721827
	.quad	0x3fefef99be256e90              # double 0.99799811494763624
	.quad	0x3fb5ec5adedd98f0              # double 0.085637740526724348
	.quad	0x3fe72c433a8f29d8              # double 0.72415315091466947
	.quad	0x3feacf849e74ef36              # double 0.83783179234112626
	.quad	0x3fde88d2db8e7c28              # double 0.47710105362961253
	.quad	0x3fe80ab10da31cda              # double 0.75130512870318999
	.quad	0x3fdbe5c3860e1e4c              # double 0.43589866725276205
	.quad	0x3fc7b2b49b4be594              # double 0.18514115889392413
	.quad	0x3f891618ca4305c0              # double 0.012249177620449525
	.quad	0x3fe85f8cfd6714ae              # double 0.76166390888888258
	.quad	0x3fecd98eb816030c              # double 0.90155731157582996
	.quad	0x3fd266cbfe948be6              # double 0.28752422200540051
	.quad	0x3fe1b57bc36c76d7              # double 0.55340374153794414
	.quad	0x3fe4acfd8b0457d9              # double 0.64611699249030174
	.quad	0x3fef3d7771baf32d              # double 0.97625324452346762
	.quad	0x3fe01ff80597b450              # double 0.50390244571975451
	.quad	0x3fedffc4bdceeb07              # double 0.93747174331596816
	.quad	0x3fe390160d3035ae              # double 0.61133863998263904
	.quad	0x3fdd07c41cc3f7ce              # double 0.45359900292521338
	.quad	0x3fe2e506f5792f32              # double 0.59045741981524302
	.quad	0x3fc7f63e17490c60              # double 0.18720222603778591
	.quad	0x3fecef2cdf094ff8              # double 0.90419620096008568
	.quad	0x3fd808e491d4f57e              # double 0.37554277650254864
	.quad	0x3fedfd8a23df83b4              # double 0.93719965940919403
	.quad	0x3fe024114f53de01              # double 0.50440278524087045
	.quad	0x3fdcb92900e65ab6              # double 0.44880127990601737
	.quad	0x3fb81d8e1e744f50              # double 0.094200975833073075
	.quad	0x3fc15aa44f401244              # double 0.13557866925852313
	.quad	0x3fdf8cf2f2088b02              # double 0.49297784458228489
	.quad	0x3fe2692407f9c5c3              # double 0.57533456380604553
	.quad	0x3fe02ca17ddd4fd2              # double 0.50544809897336962
	.quad	0x3fe96781ecdca212              # double 0.79388519537048041
	.quad	0x3fe0c3bbc6a83b5b              # double 0.5238932495138714
	.quad	0x3fbc296d2fa73ac0              # double 0.11000711835297761
	.quad	0x3fe99e720ee1094c              # double 0.80059149652542194
	.quad	0x3fd9a32d61386658              # double 0.40058454984828051
	.quad	0x3fdf288b9ed0bd10              # double 0.48684969434084824
	.quad	0x3fd80112ad43a784              # double 0.37506548805560436
	.quad	0x3faabe3eb35670e0              # double 0.052232703582576923
	.quad	0x3fef970020bfd150              # double 0.9871826781878017
	.quad	0x3fcfed700b4e13f8              # double 0.24943352272035191
	.quad	0x3fed8d96822b2ef1              # double 0.9235336820943002
	.quad	0x3fe7c127e6d52afa              # double 0.74232859692105468
	.quad	0x3fb6b1233e3d6980              # double 0.088640406317983533
	.quad	0x3fd4f2bda01e927a              # double 0.32731571804678306
	.quad	0x3fc549abed6025a4              # double 0.16631077852825371
	.quad	0x3fecd25b5b2c1f0a              # double 0.90067832762812938
	.quad	0x3fc7cb3930a51a90              # double 0.18588938594094317
	.quad	0x3fe3a3f3d6d4d1c0              # double 0.61376373252146976
	.quad	0x3fc5fec6feb66a2c              # double 0.1718376868928585
	.quad	0x3fc5907cb53c9a74              # double 0.16847189759683412
	.quad	0x3fe10a6d1b54f710              # double 0.53252272928486555
	.quad	0x3fc5f1283eac5514              # double 0.17142203388417754
	.quad	0x3fe8812b105b878a              # double 0.76576760477858952
	.quad	0x3fcd6a223c04ba78              # double 0.22980144434537286
	.quad	0x3fe30c1e70fa9f1a              # double 0.59522935930451415
	.quad	0x3fedeb0a086e9713              # double 0.93494130751489235
	.quad	0x3fe1fe81a8c9277b              # double 0.56231768575638286
	.quad	0x3fc58eafbfcb1790              # double 0.16841694703014953
	.quad	0x3fe649270cba58f9              # double 0.69642975316926858
	.quad	0x3fcc7fdc94f7d0f0              # double 0.22265202783422167
	.quad	0x3feb288c21e00fa3              # double 0.84869963279969729
	.quad	0x3fe1ffdd4c02dab4              # double 0.56248345228126206
	.quad	0x3feedc39f02f4c6f              # double 0.96438309584699577
	.quad	0x3fecfcb30abbee77              # double 0.9058470925951515
	.quad	0x3fe9bea1e5575137              # double 0.80452055733852645
	.quad	0x3fd7adc72a1cbf86              # double 0.36998156654862446
	.quad	0x3fcc6a6c53605644              # double 0.22199777670964427
	.quad	0x3fbd9a4ab961ce10              # double 0.11563555742196052
	.quad	0x3fe53eb694cda335              # double 0.66390542090548499
	.quad	0x3fde857f36753794              # double 0.47689800565864826
	.quad	0x3fd88e3c6d2238e8              # double 0.38368139894090669
	.quad	0x3fef2e049b745ab7              # double 0.97436743128022029
	.quad	0x3fbbde454b38b0d8              # double 0.10886033140622275
	.quad	0x3fe897d9503e8bf8              # double 0.76853624031752954
	.quad	0x3fe9d83f03d7d84d              # double 0.80764723539938077
	.quad	0x3fe89e678819e2a2              # double 0.76933647711037545
	.quad	0x3fee04616a7a5bd3              # double 0.93803473278500815
	.quad	0x3fedb38443d4f5b2              # double 0.92816365478909391
	.quad	0x3fe6d95ee15b5b95              # double 0.71403450026524473
	.quad	0x3fc284f174aeb7c0              # double 0.14468210408580084
	.quad	0x3fd33d4505b1d9fa              # double 0.30061460071684076
	.quad	0x3fe2b92ddc230671              # double 0.58510487552139356
	.quad	0x3fd10bc8f172e6cc              # double 0.2663442953013202
	.quad	0x3fe89f2b673400f7              # double 0.76942987591613032
	.quad	0x3fe2644fcbeb02f2              # double 0.57474508121239709
	.quad	0x3fd14c3df6c05ce6              # double 0.27027844521349065
	.quad	0x3fc9a45883b046ac              # double 0.20032793455225339
	.quad	0x3fe972859d2c4cd9              # double 0.79522972772465572
	.quad	0x3fe08ed4fa6f0dcd              # double 0.51743554032184991
	.quad	0x3fde12ca9db7c0be              # double 0.46989694025161188
	.quad	0x3fc3b8836d3cae00              # double 0.15406840165938718
	.quad	0x3fb5b4a114cf4dd8              # double 0.084787433224213671
	.quad	0x3fe1af08c32277b4              # double 0.55261648285135445
	.quad	0x3fd85ba0043c81d2              # double 0.38059235013682013
	.quad	0x3fe602d31b0dcd3c              # double 0.68784480365722045
	.quad	0x3fc8ad2b9d8560bc              # double 0.19278474036651072
	.quad	0x3fecc03dde87750d              # double 0.89846700155945458
	.quad	0x3feadc5b341374c9              # double 0.83939895793050667
	.quad	0x3feae158a8b2bf1d              # double 0.84000809620735917
	.quad	0x3fed04ed5bffe607              # double 0.90685146301910968
	.quad	0x3fef97708b1ae836              # double 0.98723628205266922
	.quad	0x3fefd35489193694              # double 0.99454714562462465
	.quad	0x3fed8d411dc1bb83              # double 0.92349296390408175
	.quad	0x3fe9eeee9e7fe829              # double 0.81041651684723093
	.quad	0x3fb6935fc4ac5e30              # double 0.088186250225015028
	.quad	0x3fe1e2d90f23dabf              # double 0.55894139248888297
	.quad	0x3feda1c6c57a5b65              # double 0.92599810190118303
	.quad	0x3fe88e880a9e80fa              # double 0.76739885400823415
	.quad	0x3fd7faa77adde902              # double 0.37467371939386862
	.quad	0x3fcb5dd25c222c6c              # double 0.21380071161943037
	.quad	0x3fbe1d9d3b9a6550              # double 0.11763937668947233
	.quad	0x3fe27c35c2b3598e              # double 0.57766235377748543
	.quad	0x3fd002643fc0473c              # double 0.25014597154323659
	.quad	0x3feca235da588c20              # double 0.89480106969529416
	.quad	0x3fec3a0397defdbc              # double 0.88208179151836629
	.quad	0x3fd264288a0ecc66              # double 0.28736318094451574
	.quad	0x3feb0d47db684d00              # double 0.84537117817890817
	.quad	0x3fe9c7ce6d66ba4a              # double 0.80564042441785344
	.quad	0x3fe2b61754db4c1c              # double 0.58472792218742908
	.quad	0x3f9627cea47f7320              # double 0.021636227407600406
	.quad	0x3fe25f72d0cd4b1b              # double 0.57415142804743213
	.quad	0x3fd120946a3c7d9a              # double 0.26761350988996357
	.quad	0x3fd2ee2c8a5d6448              # double 0.29578698646725288
	.quad	0x3fe95dcdbf8fcbee              # double 0.79270064749141311
	.quad	0x3fb7ced032531220              # double 0.092999470030072917
	.quad	0x3fe53d01e7c20015              # double 0.66369719758222578
	.quad	0x3febaab5b0aca9ad              # double 0.86458858973246822
	.quad	0x3fe7dc8b71f6fd4d              # double 0.74567196139097691
	.quad	0x3fc2399303a8d91c              # double 0.1423820274228057
	.quad	0x3fc55037e27e83b4              # double 0.1665105682305047
	.quad	0x3fe668faf407d366              # double 0.7003149763319072
	.quad	0x3fed7b77961f9010              # double 0.92132167168574775
	.quad	0x3fd901a4672851e6              # double 0.39072523187613084
	.quad	0x3fda846ba16f84d4              # double 0.41433230176160163
	.quad	0x3fd63302095febda              # double 0.34686327853677101
	.quad	0x3fd8d08042c425fc              # double 0.38772589225899856
	.quad	0x3fea986b5be40b53              # double 0.8311058802358765
	.quad	0x3fe0747a79a1994f              # double 0.51421855693915031
	.quad	0x3fefc6bc3e2697f0              # double 0.99300968302554615
	.quad	0x3fb16547066b1020              # double 0.067951621119448635
	.quad	0x3fee091ac6a0b073              # double 0.93861140055152104
	.quad	0x3fcca2d01b3866cc              # double 0.22371865586392514
	.quad	0x3feeab1f0b15664b              # double 0.95838882603420338
	.quad	0x3fd6545e96efcf00              # double 0.34889950504224032
	.quad	0x3fd3d07b59872df6              # double 0.30959972136471892
	.quad	0x3fd5d35a001c4bba              # double 0.34102487574380869
	.quad	0x3fe561bd9f084ff0              # double 0.66818123875645874
	.quad	0x3fbd3182dce3e1e8              # double 0.11403673069788278
	.quad	0x3fd0a421aab2b2e4              # double 0.26001779241305045
	.quad	0x3fec350c5e30e914              # double 0.8814756240529129
	.quad	0x3fc9c53458005cf0              # double 0.20133070275253528
	.quad	0x3fed3988bed277d8              # double 0.91327321309995124
	.quad	0x3fcf5c5a17125258              # double 0.24500585676709608
	.quad	0x3fe9abb2f9da1b7a              # double 0.80220936583724201
	.quad	0x3fda7a59b981abaa              # double 0.4137176810824551
	.quad	0x3feec980b2f30c3d              # double 0.96209750128799209
	.quad	0x3fd2cc29f6cd6fe0              # double 0.29371117688947201
	.quad	0x3fb5f7c3d52ebcf0              # double 0.085811843439603796
	.quad	0x3fe67593fba56cc7              # double 0.70185279035231296
	.quad	0x3fac39e28adc8000              # double 0.055129126978727072
	.quad	0x3fc0493ca96d7cc8              # double 0.12723501465641207
	.quad	0x3fc53748f7fb8344              # double 0.16574966534155966
	.quad	0x3fd6126f01ba0e48              # double 0.34487509888296985
	.quad	0x3fc7d395b4cbd754              # double 0.18614455535833463
	.quad	0x3fe76e3a0fe19b59              # double 0.73220542051135873
	.quad	0x3fe87ba1153a2215              # double 0.76509145875849305
	.quad	0x3fce8a92ef0433b4              # double 0.23860394163821541
	.quad	0x3fe491443e7f0473              # double 0.64273273664743014
	.quad	0x3fe210bb1872d08b              # double 0.56454233908745388
	.quad	0x3fbb198a90e875d0              # double 0.10585847890657551
	.quad	0x3feef13f4a98ebc8              # double 0.9669491250018547
	.quad	0x3fdf8b7bac798294              # double 0.49288837283351339
	.quad	0x3fd58669913baa10              # double 0.33632888014713647
	.quad	0x3fb587292f7cf8e8              # double 0.084093641370575178
	.quad	0x3fe18281b5229e02              # double 0.54718099000905362
	.quad	0x3fe94d4e0560c1d8              # double 0.79068661737806689
	.quad	0x3fe80b6272de8069              # double 0.75138971743946315
	.quad	0x3fe5a45846907abe              # double 0.67631162435630876
	.quad	0x3fe1e7d5f8d02cd8              # double 0.55955027195286799
	.quad	0x3fb552ede438e9a0              # double 0.083296650141085227
	.quad	0x3fb1e914220b2918              # double 0.069962747870850328
	.quad	0x3fc3f5b764e72374              # double 0.15593616892717999
	.quad	0x3fefabb13ea7dbf8              # double 0.98970854031983801
	.quad	0x3fd9ad0d76e60f6e              # double 0.40118729220579652
	.quad	0x3fe218ae39096cfa              # double 0.56551276340488177
	.quad	0x3fc0d76b783c1750              # double 0.13157409067951642
	.quad	0x3fe78a34ca798a96              # double 0.73562087579587643
	.quad	0x3fd5ffb9c1ed0912              # double 0.34373325288847056
	.quad	0x3fef780c1cc1c4a0              # double 0.98340421310981085
	.quad	0x3fe19d9366f31662              # double 0.55048532588325494
	.quad	0x3fe90867e6662ccb              # double 0.78227610587910001
	.quad	0x3fefc47285fb78df              # double 0.99273039024754072
	.quad	0x3fead643d109b470              # double 0.83865538432804776
	.quad	0x3fe8d77c5b034107              # double 0.77630441451950183
	.quad	0x3fe3ea8247ee753e              # double 0.62237657593838214
	.quad	0x3f7e87cbbdf94f00              # double 0.0074537237811289625
	.quad	0x3fd0a2e9d4cb4936              # double 0.25994344502136657
	.quad	0x3fd7c7f517a0b21c              # double 0.37157943065065679
	.quad	0x3fc3cb47a817bb08              # double 0.15464111049319507
	.quad	0x3fd2d4cf99bd9de2              # double 0.29423894895304958
	.quad	0x3f853f017c440640              # double 0.010374080281056242
	.quad	0x3fdd1b06ff8e3a62              # double 0.4547746177349038
	.quad	0x3feba703712d7a65              # double 0.86413738350877323
	.quad	0x3fe5548438c953c5              # double 0.66656695452785952
	.quad	0x3fd2da113d982a80              # double 0.29455977454259852
	.quad	0x3fe40e225d287564              # double 0.62672537035875253
	.quad	0x3fe2193dcb610437              # double 0.56558122370200337
	.quad	0x3fe35982e7ef368d              # double 0.60467667865460017
	.quad	0x3fdaca6102847448              # double 0.41860223050918366
	.quad	0x3fe74481674aa30c              # double 0.72711248563891351
	.quad	0x3feb91aa2a723608              # double 0.86153133669148563
	.quad	0x3fc98cbf6a0387b4              # double 0.19960777927832185
	.quad	0x3fa99a7ad4b29480              # double 0.050006712402400844
	.quad	0x3fdff2593e063662              # double 0.49916678483064036
	.quad	0x3fb67ac1c3495548              # double 0.087810621430738256
	.quad	0x3fd8547b1336f9aa              # double 0.38015629650535721
	.quad	0x3fc57cf901690868              # double 0.16787636345731305
	.quad	0x3fe3b5f96f97b511              # double 0.61596366687231996
	.quad	0x3fede4c3ce8f341c              # double 0.93417539924269332
	.quad	0x3fd9ebeed392889e              # double 0.40502520238272577
	.quad	0x3feb4c9a27a6a1ec              # double 0.85310085052793516
	.quad	0x3fec9b8496a4370e              # double 0.89398412153397699
	.quad	0x3fedb12f8d3c6307              # double 0.92787911973127357
	.quad	0x3fdb189abb7411a8              # double 0.42337673479075955
	.quad	0x3fe062b95e201819              # double 0.51205128082142715
	.quad	0x3fe27a4022a861c5              # double 0.57742316025819973
	.quad	0x3fe80b8634ad6071              # double 0.75140676773572868
	.quad	0x3fdc1eb3c19ed6ae              # double 0.43937391193626751
	.quad	0x3fbbaae4a1871c70              # double 0.10807637160825023
	.quad	0x3fae7ad4a4e3ae90              # double 0.059530873420809205
	.quad	0x3f846666c3dbdd40              # double 0.0099609402200103724
	.quad	0x3fe8851442950601              # double 0.76624501232453224
	.quad	0x3fc866dc4c325630              # double 0.19063905449427088
	.quad	0x3fcf4782c8f76c60              # double 0.2443698388368345
	.quad	0x3fec0b71ab95a0bd              # double 0.87639697563738361
	.quad	0x3fa08d9c14ced090              # double 0.032330396213553603
	.quad	0x3fd7994fc630c6ac              # double 0.36873239855331508
	.quad	0x3fdbb5efd3aebb9e              # double 0.43297954246639303
	.quad	0x3fd955ff7c07ac02              # double 0.39587390053083038
	.quad	0x3fe6666dc8aa860a              # double 0.7000035208949964
	.quad	0x3fde63bb20674552              # double 0.4748370949210613
	.quad	0x3fe844b6e1b99a93              # double 0.75838798605839697
	.quad	0x3fd5fdb3ddb53f34              # double 0.3436097779385705
	.quad	0x3fa429d4888cd430              # double 0.03938163916465276
	.quad	0x3feee31d8d9e473a              # double 0.96522405299967962
	.quad	0x3fe45fa5e135258f              # double 0.63667577730045533
	.quad	0x3fe132e0ddb0219d              # double 0.53746074007453937
	.quad	0x3fcb62872ffdc3c8              # double 0.21394433825801529
	.quad	0x3fd10ea1a98ea43a              # double 0.26651803549117725
	.quad	0x3fd4967b708ab34a              # double 0.32168470373544678
	.quad	0x3fe5f6a5630f3604              # double 0.68635815951864787
	.quad	0x3fdff22320edd122              # double 0.49915388313026388
	.quad	0x3fd18920528c3546              # double 0.27399452267930646
	.quad	0x3fa84f4b48cb74e0              # double 0.047479965816572323
	.quad	0x3fba23c6e8f09840              # double 0.10210841357238198
	.quad	0x3fc47c4962f487fc              # double 0.160042928045243
	.quad	0x3fe7786ff18bdcb9              # double 0.73345181633967294
	.quad	0x3fec23f94f020832              # double 0.87939134055364421
	.quad	0x3fcbecd0e5570430              # double 0.21816455076444319
	.quad	0x3fedd99600e2034e              # double 0.93281078503069081
	.quad	0x3fe9c07b4c10e759              # double 0.80474629265448094
	.quad	0x3fe5c5905ed9661c              # double 0.6803666927837102
	.quad	0x3fe57334cb65920c              # double 0.67031326032571448
	.quad	0x3fea16cd591826a2              # double 0.81528346444357092
	.quad	0x3fe757d77e947cfd              # double 0.72947287295019658
	.quad	0x3fdb0e73f1535294              # double 0.42275713507596291
	.quad	0x3fe9306afacab8df              # double 0.78716038687505463
	.quad	0x3fed35d5c21bab59              # double 0.91282165443167707
	.quad	0x3fedbbe997d61c23              # double 0.92918853431263349
	.quad	0x3f975214e5360ea0              # double 0.022774054040850644
	.quad	0x3fc4548f56545450              # double 0.15883056369117066
	.quad	0x3fcc981da172eab0              # double 0.22339220412489658
	.quad	0x3fe9d6b6aec193b3              # double 0.80746015674650662
	.quad	0x3fe82d65880af5aa              # double 0.75554157801496058
	.quad	0x3faa948985bd08c0              # double 0.05191449887799271
	.quad	0x3fc419f8397c0118              # double 0.15704253012518943
	.quad	0x3fc66fb60039ac98              # double 0.17528414736748199
	.quad	0x3fd5dab317e74bb0              # double 0.34147336325002708
	.quad	0x3fbf8fe46f0c4898              # double 0.12328937255031958
	.quad	0x3fd2f63bb130d1bc              # double 0.29627888015536619
	.quad	0x3fe86627e3cbed4e              # double 0.7624701928283828
	.quad	0x3fec39444befea91              # double 0.88199057418326465
	.quad	0x3fd91c87a984bbba              # double 0.39236632875957478
	.quad	0x3fddfefae4ea6184              # double 0.46868774752649522
	.quad	0x3fc49ef15e24041c              # double 0.16110055062020556
	.quad	0x3fd242969803b6b2              # double 0.28531422467390677
	.quad	0x3fc2c3b06a90cd5c              # double 0.14659695819282603
	.quad	0x3febf43fdd3e2c87              # double 0.87356560908791969
	.quad	0x3fe2e853125ff38e              # double 0.59085992420988176
	.quad	0x3fc56368170d9e38              # double 0.16709614873546896
	.quad	0x3fba83a6e285d710              # double 0.10357134847967253
	.quad	0x3fe01642a7cb0c67              # double 0.50271733066655322
	.quad	0x3feb704090ab537e              # double 0.85745266204558823
	.quad	0x3fe6bb9c2330b416              # double 0.71040160058112423
	.quad	0x3fd65db268473370              # double 0.3494688051549053
	.quad	0x3faf53ed10d050b0              # double 0.061187179853875562
	.quad	0x3f8d2d3eac878c40              # double 0.014246453895742417
	.quad	0x3fd50da095674fcc              # double 0.32895674314681567
	.quad	0x3fe045fa1f60629f              # double 0.50854211929534532
	.quad	0x3fe6b546901280e5              # double 0.70962837351910635
	.quad	0x3fef9ae377a0d778              # double 0.98765729298496207
	.quad	0x3fe9d15b57d557c5              # double 0.806806251096298
	.quad	0x3fc9d0226bb54c8c              # double 0.20166425952138345
	.quad	0x3fc7254c9b4cdda8              # double 0.18082578261394855
	.quad	0x3fd13526c457ffc2              # double 0.26886910604661918
	.quad	0x3fe06e0cb3d198e9              # double 0.51343379135940126
	.quad	0x3fee1c5478cf06a9              # double 0.94095824809501949
	.quad	0x3fe9ab821a27ec60              # double 0.80218606098732081
	.quad	0x3fe1cd31ea870254              # double 0.55629821592453732
	.quad	0x3fd490e23463747c              # double 0.32134299388946608
	.quad	0x3fe47ba48c50198b              # double 0.64009311108456879
	.quad	0x3fb7c879949a8780              # double 0.092902754573996659
	.quad	0x3fa1ea2ed0262df0              # double 0.034989798458891275
	.quad	0x3fdfb964029c042c              # double 0.49569034819438929
	.quad	0x3fe623ff9e613c89              # double 0.69189434941826378
	.quad	0x3fdcf1bd34bff1cc              # double 0.45225458289476417
	.quad	0x3fe14b18559e0f12              # double 0.54041687700416419
	.quad	0x3fd6a82cbb91c992              # double 0.35401457135517334
	.quad	0x3fef994d3bd2cb1b              # double 0.98746358570346914
	.quad	0x3fbaa9a3c4078d10              # double 0.10415099655033466
	.quad	0x3fe2f09bb186c45b              # double 0.59187111542827198
	.quad	0x3feca73b3ad16d20              # double 0.8954139851370293
	.quad	0x3fd650f8865adc8c              # double 0.34869206543539444
	.quad	0x3fd9b226c488c1a6              # double 0.40149850075524751
	.quad	0x3fd4fc699133a60a              # double 0.32790602855547546
	.quad	0x3fd87f32cfeca12a              # double 0.3827635794173313
	.quad	0x3fe3c757709cce23              # double 0.61808368677742853
	.quad	0x3fe91e99a7d45b9a              # double 0.78498537806705149
	.quad	0x3feea4e18ec3048f              # double 0.95762708552514819
	.quad	0x3fda6f3f6e95796c              # double 0.41304002570350096
	.quad	0x3fc142ef047f2470              # double 0.13485515327036834
	.quad	0x3fdba09b95d64760              # double 0.43167771942636612
	.quad	0x3fc75c1ff228fae4              # double 0.18249892544004986
	.quad	0x3fe17f651018b8fc              # double 0.54680112022268146
	.quad	0x3fc8697292f3f6a8              # double 0.19071800399244876
	.quad	0x3fee304e7e6bd0c2              # double 0.94339680377608937
	.quad	0x3fef5aa78c9d5a71              # double 0.97981622184563665
	.quad	0x3fee803b07e67237              # double 0.95315314810756646
	.quad	0x3fe3031e55dcef0a              # double 0.59413067598458835
	.quad	0x3fd5f17ce21e2d70              # double 0.34286424714874553
	.quad	0x3fdf8ebd86e739e4              # double 0.49308717893737097
	.quad	0x3fc5e6b9ac14fa54              # double 0.17110367681921679
	.quad	0x3fe0a280a194d78c              # double 0.51983672675008696
	.quad	0x3fc77293f6f54be4              # double 0.18318414267068228
	.quad	0x3fe8ed2893b9abe1              # double 0.77895001270860231
	.quad	0x3fb5f7d7f9be9f80              # double 0.085813044045265129
	.quad	0x3fd95d73c0ec8d82              # double 0.39632886734235495
	.quad	0x3fe6fe00e2a3ad39              # double 0.7185062815237081
	.quad	0x3fbe838d241db7c0              # double 0.11919481403103216
	.quad	0x3feb220ab55ba3ef              # double 0.84790549680212546
	.quad	0x3fb7136fc7856ea8              # double 0.090140329562411581
	.quad	0x3fedbb5e207f1047              # double 0.92912203165952512
	.quad	0x3fd205985804c9b4              # double 0.28159149737907829
	.quad	0x3febdb1058a7e9be              # double 0.87049119296653266
	.quad	0x3fa22da4db8a7530              # double 0.035504485892696613
	.quad	0x3fd75e3281c1803a              # double 0.36512434646101932
	.quad	0x3f9619f6b81194e0              # double 0.0215834188315015
	.quad	0x3fea2830b42de23a              # double 0.81740603629356845
	.quad	0x3fc93c5ffdea1954              # double 0.1971549978081365
	.quad	0x3fd506b2b742adca              # double 0.32853382011918753
	.quad	0x3fdd74f56c6248aa              # double 0.46026359161727248
	.quad	0x3fe764b32e668413              # double 0.73104247152889668
	.quad	0x3fdbce8e38a8d688              # double 0.43448215039402571
	.quad	0x3fda6358f926f6c4              # double 0.41231369334478196
	.quad	0x3fd9640d9612d332              # double 0.3967317548333994
	.quad	0x3fc060be23f59904              # double 0.12795235400989935
	.quad	0x3fcf9b9b8fe77180              # double 0.24693626905981247
	.quad	0x3fde738b4f51c0a2              # double 0.47580225702314227
	.quad	0x3fc4a5fcba6c5a2c              # double 0.1613155279416828
	.quad	0x3fe75840265574d9              # double 0.72952277648041808
	.quad	0x3fef1bd75c166524              # double 0.97214858995281305
	.quad	0x3fea1a8dc627c496              # double 0.81574143125739584
	.quad	0x3fc552ddae02f630              # double 0.16659136768969196
	.quad	0x3fedfd45340f5731              # double 0.93716678779558127
	.quad	0x3fee2ae45431039a              # double 0.94273582881588713
	.quad	0x3feebaafa1929fbc              # double 0.9602888255803843
	.quad	0x3fe3ef494665ce65              # double 0.62295974492594708
	.quad	0x3fdfde95b452984c              # double 0.49796049699432809
	.quad	0x3fd86f4ca662fd80              # double 0.38179317711543348
	.quad	0x3fd4cc5e549394f8              # double 0.32497366198943167
	.quad	0x3fd61683421c830c              # double 0.34512406784237792
	.quad	0x3fdaf28d0725029c              # double 0.42105413148605364
	.quad	0x3fe0fe4b570f1522              # double 0.53104178432173321
	.quad	0x3fe6ee8dcb5eadb4              # double 0.71662034722014889
	.quad	0x3fa96f7e131bb0b0              # double 0.049678745110072753
	.quad	0x3feecfb3b06b3cb7              # double 0.9628542371446177
	.quad	0x3fd5d433e538f0fa              # double 0.34107682595255506
	.quad	0x3fe735ea9cb175cc              # double 0.7253315983213553
	.quad	0x3fd883c1e44322ec              # double 0.38304183284030446
	.quad	0x3fe79503eb638f16              # double 0.73694034551997123
	.quad	0x3fe0d74a25a39179              # double 0.52628047324519323
	.quad	0x3fe82df8f926a07e              # double 0.75561188375742439
	.quad	0x3fdff5f7024c07fe              # double 0.4993875048095332
	.quad	0x3fd0a5c109be147c              # double 0.26011682464042685
	.quad	0x3fd65ef30c672464              # double 0.34954525195332153
	.quad	0x3fe140b35c563fec              # double 0.53914802584222121
	.quad	0x3feb19e5837cfed8              # double 0.8469111984377049
	.quad	0x3fec1b5876b040f1              # double 0.87833808118196377
	.quad	0x3fd6866b1682ad32              # double 0.35195424268995901
	.quad	0x3fcc2f25a2a24104              # double 0.22018881264785517
	.quad	0x3fed905f792a6e33              # double 0.92387365021881462
	.quad	0x3fe81f2065d3e59b              # double 0.75379962814547541
	.quad	0x3fe41317a36ad958              # double 0.62733060758072678
	.quad	0x3fe6d44ead0ad00c              # double 0.71341642186462328
	.quad	0x3fd091c9fd75523c              # double 0.25889825584207293
	.quad	0x3fef97d057bb1edd              # double 0.98728196272801549
	.quad	0x3fcc6d1ccfb28768              # double 0.22207985059236113
	.quad	0x3fde89e5ecb83a40              # double 0.47716663472320775
	.quad	0x3fee23759fa4aae6              # double 0.94182854824370277
	.quad	0x3fd2ee574f37af18              # double 0.2957971833809423
	.quad	0x3fe31714f5ba70d7              # double 0.59656761163526084
	.quad	0x3fe9e76648880ab6              # double 0.80949701467792212
	.quad	0x3fcbebd13c8f7ee0              # double 0.21813407380158534
	.quad	0x3fed33fe2c4e72d4              # double 0.91259678510285846
	.quad	0x3fe7834aa23ec000              # double 0.73477679909228755
	.quad	0x3fea40f565808f17              # double 0.82042951416630927
	.quad	0x3fe0968a53ee2100              # double 0.51837650673499525
	.quad	0x3fe89fc4138908f5              # double 0.76950267615782642
	.quad	0x3fe2ff2bbc041c21              # double 0.59364878389249409
	.quad	0x3fe6ae11a2cdcc0a              # double 0.70874864385257408
	.quad	0x3fcf78e74bfffbc0              # double 0.24587718211111387
	.quad	0x3fce2f2d29430690              # double 0.23581470980393648
	.quad	0x3fead8b6584bf101              # double 0.83895413632811267
	.quad	0x3fd22fe4a6dc8f16              # double 0.28417316718172125
	.quad	0x3fc9e749bd600c2c              # double 0.20237085100970498
	.quad	0x3fd49dfdd8077634              # double 0.32214304062458443
	.quad	0x3fd21d7d312639f0              # double 0.28304986762751039
	.quad	0x3fe9dc121abd0c7b              # double 0.80811410162313224
	.quad	0x3fe04fadda97a821              # double 0.50972645467595978
	.quad	0x3fc352217001c2bc              # double 0.15094392747007201
	.quad	0x3fe729af6386de12              # double 0.72383851469834526
	.quad	0x3fdb8923eab6621c              # double 0.43024537964950738
	.quad	0x3fb4626a5f031778              # double 0.0796267015421942
	.quad	0x3fecf70e3d76497e              # double 0.90515815738972072
	.quad	0x3fe0df7cdd4459ef              # double 0.52728121963701635
	.quad	0x3fe528ca47a08342              # double 0.66122926702164642
	.quad	0x3fdf17abd5cd71f0              # double 0.48581977728988956
	.quad	0x3fd2c3d8c646f544              # double 0.29320353854184966
	.quad	0x3fbd5db32ef9db88              # double 0.11471099755168102
	.quad	0x3fe5a8e962283e74              # double 0.67686909838989928
	.quad	0x3fea4140fcabf67a              # double 0.82046555852839664
	.quad	0x3fe53b783b20fa9a              # double 0.66350947903250135
	.quad	0x3fd2580a27cb3ef6              # double 0.28662351499677585
	.quad	0x3faf451b219625f0              # double 0.061074111795345831
	.quad	0x3fdfc77ec8bf7574              # double 0.49655122379575478
	.quad	0x3fe75dc50e5f507a              # double 0.73019650275320136
	.quad	0x3fdce5a7dc95e3b6              # double 0.45151707212022119
	.quad	0x3fedb63897ac10e5              # double 0.92849378226722179
	.quad	0x3fc25fe21f069320              # double 0.14355112566877271
	.quad	0x3fb13962744c6120              # double 0.067281869309571807
	.quad	0x3fe00d934abcf7ac              # double 0.50165714833541619
	.quad	0x3fd25decb1487d16              # double 0.28698270142372573
	.quad	0x3fe6893fbd9b0b17              # double 0.70425402672148862
	.quad	0x3fe17b763671e0e3              # double 0.5463210166335809
	.quad	0x3fe5da2d3c38fb36              # double 0.68288289797042157
	.quad	0x3fe7e31a07e38ba7              # double 0.74647237339774086
	.quad	0x3fe0f29869d0e77d              # double 0.52961369197076602
	.quad	0x3fdecaac3ff2aa8e              # double 0.48112016911424227
	.quad	0x3fe95d06c1b18938              # double 0.79260576086770751
	.quad	0x3fe3ea91d60142e3              # double 0.62238399312817838
	.quad	0x3fedd46324ef1763              # double 0.93217618192350604
	.quad	0x3fdc19d2908cbd6a              # double 0.43907608143032084
	.quad	0x3fd901b2536837bc              # double 0.3907285513422456
	.quad	0x3fd001a0e5b2cbf2              # double 0.2500993960522343
	.quad	0x3fe9698b3dfaab4c              # double 0.79413377862270229
	.quad	0x3fe28743f5926757              # double 0.57901189769038808
	.quad	0x3fd550c5eff78c9e              # double 0.3330550044467574
	.quad	0x3fec497fb2e48447              # double 0.88397202434510624
	.quad	0x3fc18ff523d81e94              # double 0.13720573663907898
	.quad	0x3fed0acf2ad0d113              # double 0.90756948816718575
	.quad	0x3fec05980c5d5f74              # double 0.87568285384166566
	.quad	0x3fea05d51badac66              # double 0.81321196943225682
	.quad	0x3fe856da4c1404fc              # double 0.76060213908218043
	.quad	0x3fe5d6db04f87f8b              # double 0.68247748347128956
	.quad	0x3fa351dfed478290              # double 0.037734029497873967
	.quad	0x3fc555c7c2ed8df0              # double 0.16668030755964436
	.quad	0x3fd554152f3d79c6              # double 0.33325700391096935
	.quad	0x3fbed28db394e908              # double 0.12040029177015665
	.quad	0x3fe7ed2f5c42f6d4              # double 0.74770324725951776
	.quad	0x3fd22e964e67c9cc              # double 0.28409345299510558
	.quad	0x3fe0008883f1d7fc              # double 0.5000650956196746
	.quad	0x3fd44eeb45b4f3a0              # double 0.31731683547314482
	.quad	0x3fc6ceb8241627b4              # double 0.17818357240713356
	.quad	0x3feb23560c837805              # double 0.84806349224140887
	.quad	0x3fe2faec946a33ef              # double 0.59313038813854557
	.quad	0x3fe85b136e314d64              # double 0.76111766359319377
	.quad	0x3fd46f23b30dc7b6              # double 0.3192834137508912
	.quad	0x3fee7a19abea0f40              # double 0.9524048192692831
	.quad	0x3fb6764f2a34cb08              # double 0.087742755703214326
	.quad	0x3fc2b45e6de5e3d0              # double 0.14612942091096537
	.quad	0x3fe2acf3d6b0146a              # double 0.58361236506665404
	.quad	0x3fdd8d7a5e74f2a4              # double 0.46176013206767608
	.quad	0x3fbf0d3e5219cc48              # double 0.12129582886136447
	.quad	0x3fddbde013574fbe              # double 0.46471406830573503
	.quad	0x3fe358c112882764              # double 0.60458425158979567
	.quad	0x3fdb475c5d8dac06              # double 0.42623051773142639
	.quad	0x3fde18bc5721298e              # double 0.47025974758857891
	.quad	0x3fed457606aef00d              # double 0.91472913079587814
	.quad	0x3fe25c5327351b5a              # double 0.57377011926369481
	.quad	0x3fe521bef8518003              # double 0.66036938190154648
	.quad	0x3fbfb87f141fe150              # double 0.12390894166299415
	.quad	0x3fec7d21f134b8cb              # double 0.8902749739698036
	.quad	0x3fd5033b65d37d3c              # double 0.32832226699789024
	.quad	0x3fa71a18eeacf4d0              # double 0.045120982299047818
	.quad	0x3fdd8c8bd738645e              # double 0.46170326249700178
	.quad	0x3fbda84addf94df8              # double 0.11584918898852681
	.quad	0x3fef5a19f6b77f97              # double 0.97974870859978835
	.quad	0x3fab13c8bc8d2550              # double 0.052885315910837449
	.quad	0x3fce55fca7d95f38              # double 0.23699911304242405
	.quad	0x3febb4a4e873115a              # double 0.86580129051484822
	.quad	0x3fe5fb347e2f6119              # double 0.68691467900774505
	.quad	0x3fe670eaf6577daa              # double 0.70128391374230614
	.quad	0x3fdbae883862ebc0              # double 0.43252759462819412
	.quad	0x3fd741a514832e18              # double 0.36338164332548351
	.quad	0x3fdc5e1ecfeda3a4              # double 0.44324465089317244
	.quad	0x3fd942ed2a136c3a              # double 0.39470986470195479
	.quad	0x3fcf4c8a324bdd1c              # double 0.24452331024051766
	.quad	0x3f791d707d366b80              # double 0.0061315912347720269
	.quad	0x3fd8286e2d1978c0              # double 0.37746767429588246
	.quad	0x3fa3c1f37a37c0f0              # double 0.038589104336894553
	.quad	0x3fc9c833f5f11c04              # double 0.20142220982435799
	.quad	0x3fd49393f250294c              # double 0.32150744117156616
	.quad	0x3fe968a554d7a838              # double 0.794024148662408
	.quad	0x3fdcdd90b26c80ca              # double 0.45102326797679082
	.quad	0x3fe5727feb76332b              # double 0.67022701252571915
	.quad	0x3fef8b00a4d92fc5              # double 0.98571808049154496
	.quad	0x3fd1c521d976ef52              # double 0.27765699612404149
	.quad	0x3fc28c1b8b375a3c              # double 0.14490074441592238
	.quad	0x3feb02fd3b09c9e5              # double 0.844114890393311
	.quad	0x3fe8413de82b0cbc              # double 0.75796408982605312
	.quad	0x3fc965a075426288              # double 0.19841390348007715
	.quad	0x3fe42d9fc4022989              # double 0.63056934626483596
	.quad	0x3fcb02c4c99bb3d8              # double 0.21102199405814193
	.quad	0x3fe057f054e580a5              # double 0.51073471623751188
	.quad	0x3fc8428530040e08              # double 0.1895300373508777
	.quad	0x3f90363b65b036e0              # double 0.015831878739894445
	.quad	0x3fd4dfd480fb28e4              # double 0.32616150470552285
	.quad	0x3fd7ce58878cee74              # double 0.37196934926371417
	.quad	0x3fcc2f95db164324              # double 0.22020219037633482
	.quad	0x3fdfaf7c614ef3c8              # double 0.49508580687307502
	.quad	0x3fd5036ba0ee9426              # double 0.32833376613627008
	.quad	0x3fdd8692f31ed7ca              # double 0.46133874647364037
	.quad	0x3fe08bc9e097412c              # double 0.51706403603933415
	.quad	0x3fdb26a81ab5ca14              # double 0.42423441513452187
	.quad	0x3fe52b8cd039ff3b              # double 0.66156616849182315
	.quad	0x3fbf34aa8d87a5c0              # double 0.12189737277335322
	.quad	0x3fd7ad2e42ff5642              # double 0.36994511168208899
	.quad	0x3fee36fbf59ebd38              # double 0.94421194050474976
	.quad	0x3fd52b3d26f7c500              # double 0.33076409154371333
	.quad	0x3fe636712abfead3              # double 0.69414575910135523
	.quad	0x3fc574ffcaea50a4              # double 0.16763303192113199
	.quad	0x3fe44f74798d2f30              # double 0.63469909420516579
	.quad	0x3fcc2f1fd40d602c              # double 0.22018812040437419
	.quad	0x3fe99270c34ba66b              # double 0.79912603515294955
	.quad	0x3fd1d302297cfd04              # double 0.2785039334448387
	.quad	0x3fef2d7845b5dfc0              # double 0.97430051436730735
	.quad	0x3fcbcf2fffbed5a4              # double 0.21726036059923814
	.quad	0x3f82bebddfbdb080              # double 0.0091528734116865795
	.quad	0x3fe634113f2fd731              # double 0.69385588017641997
	.quad	0x3fea0c6ee7801af4              # double 0.81401772704052044
	.quad	0x3fefc78d1a9299ed              # double 0.99310927572224516
	.quad	0x3fd24f1b9d700bd0              # double 0.28607836127065145
	.quad	0x3fee53d2685e815e              # double 0.94773216614343503
	.quad	0x3fe8a7e90cedeba2              # double 0.77049686932820216
	.quad	0x3fecd54e775f852d              # double 0.90103839221061366
	.quad	0x3fe8be6095759f2a              # double 0.77323941413212549
	.quad	0x3fdad67fad6138e2              # double 0.4193419640695436
	.quad	0x3fe81206247fc653              # double 0.75220019463285792
	.quad	0x3fe80e7528bea7c4              # double 0.75176485021551586
	.quad	0x3fe7fae75ff743cf              # double 0.74937790625892287
	.quad	0x3fb580dd6509f510              # double 0.083997571151446459
	.quad	0x3f986d9405b145c0              # double 0.02385550770515521
	.quad	0x3fed308589bcf26b              # double 0.91217305089919642
	.quad	0x3fb2324ddd8f3e78              # double 0.071080080596624629
	.quad	0x3fe39924fc577913              # double 0.61244439397322237
	.quad	0x3fbfe01385af4610              # double 0.12451288236413682
	.quad	0x3fe8b8d461e41dcb              # double 0.77256220931388364
	.quad	0x3fc25fbfb8371b5c              # double 0.14354702467809488
	.quad	0x3fe6d48dae530ee6              # double 0.71344646499389053
	.quad	0x3feaed1fd8a628dd              # double 0.8414458495547269
	.quad	0x3fcd49bcabf9c9d8              # double 0.22881277463200322
	.quad	0x3fd0bfa64cd54df4              # double 0.2616973638843938
	.quad	0x3fe71ff1526f3cf8              # double 0.72264925098889332
	.quad	0x3fc79886b593b388              # double 0.1843422304731599
	.quad	0x3fe2e4959f624f53              # double 0.59040337686244937
	.quad	0x3fa9fa8b6d6de210              # double 0.050739628894863498
	.quad	0x3fe8c1c6244b1f0b              # double 0.77365405167162871
	.quad	0x3feb2c008e2e1394              # double 0.84912135858086168
	.quad	0x3fe9c7a1992d093f              # double 0.80561904828235942
	.quad	0x3fd35e35fbba1f48              # double 0.3026251753112672
	.quad	0x3fcdf1633f10dc14              # double 0.23392906741511921
	.quad	0x3feff6f2598a2aef              # double 0.99889485824800583
	.quad	0x3fdf74683f64cb8c              # double 0.49147993269723922
	.quad	0x3fdc62d5b2bc40f8              # double 0.44353239493013019
	.quad	0x3fe58efbe852963a              # double 0.67370410323628183
	.quad	0x3fda23b11bfa6d60              # double 0.40842845661400951
	.quad	0x3fc549fe4d3924b8              # double 0.16632059832253332
	.quad	0x3fd4b3edaa8b83ea              # double 0.32348195700438842
	.quad	0x3fd632c342f371e0              # double 0.34684831178836184
	.quad	0x3fd7f4425081e308              # double 0.37428338872955225
	.quad	0x3fd6fa17c04f137a              # double 0.35901445179143077
	.quad	0x3fe75f0e507e5e35              # double 0.73035350533877497
	.quad	0x3fd818d895a9b1ba              # double 0.37651648154749362
	.quad	0x3fe2fcd984e49ed6              # double 0.5933654399459225
	.quad	0x3fd6528a02d9334c              # double 0.34878778722923154
	.quad	0x3fe90d67f325a4e7              # double 0.78288648118646342
	.quad	0x3fd8bb245e20f05a              # double 0.38642224495175059
	.quad	0x3fd2111ec0779a1c              # double 0.28229492946266688
	.quad	0x3fb3a37f453dcf68              # double 0.076713518528604419
	.quad	0x3fac952efaa10d10              # double 0.055825679869054068
	.quad	0x3feecca52e291777              # double 0.96248110786176155
	.quad	0x3fe576c5f191c05d              # double 0.67074868375312813
	.quad	0x3feb347b833db03a              # double 0.85015655167581561
	.quad	0x3fea0e45fbbfb2ed              # double 0.81424235505764175
	.quad	0x3fe66e2b20c4657f              # double 0.70094829940641989
	.quad	0x3fedc010296f295d              # double 0.92969520657178928
	.quad	0x3fd972d93cd5f45e              # double 0.39763480130188167
	.quad	0x3fcf28c411f43d28              # double 0.24343157650626179
	.quad	0x3fe986d15fafc7cc              # double 0.79770725907132478
	.quad	0x3fe02fc01c18971c              # double 0.50582890975485695
	.quad	0x3fdc67c919e07998              # double 0.44383456732784898
	.quad	0x3fcdc67e12c237fc              # double 0.23262000957441831
	.quad	0x3fe28575eba747f1              # double 0.57879158044874945
	.quad	0x3fe8c79e5d52ed9f              # double 0.77436750628787709
	.quad	0x3fd7b71e0283c0ae              # double 0.37055158849308156
	.quad	0x3fed7e120021b8a3              # double 0.92163944268920195
	.quad	0x3fd7a8b79d58f6a2              # double 0.3696726833912668
	.quad	0x3fe862b89c06df3b              # double 0.76205091928475299
	.quad	0x3fe14a0053c6e088              # double 0.54028335917156856
	.quad	0x3feab11e8f974f13              # double 0.83412101788641946
	.quad	0x3f65a494a6b55c00              # double 0.0026419547408909061
	.quad	0x3fb83ffc5720b9c0              # double 0.094726344367450643
	.quad	0x3fe7a9c83b3a8f37              # double 0.73947536056628038
	.quad	0x3feb67db2b8979b1              # double 0.85642775061915277
	.quad	0x3fd2411906e787ac              # double 0.2852232520509641
	.quad	0x3fd56a4b9d772618              # double 0.33461275460703765
	.quad	0x3fcfc7ba8576aa28              # double 0.24828273312353244
	.quad	0x3fc9a617de47d834              # double 0.20038126328989991
	.quad	0x3fb1728cc6ea0118              # double 0.068154142916686644
	.quad	0x3fd7f142f8b81236              # double 0.3741004399201161
	.quad	0x3fd9c634afb6b102              # double 0.40272252234969141
	.quad	0x3fefbf8b04d33b03              # double 0.9921317190399751
	.quad	0x3fde48d134a7ccca              # double 0.47319440977225879
	.quad	0x3f9fb992736d3d20              # double 0.030981338782393952
	.quad	0x3feadd396707662e              # double 0.83950491068680377
	.quad	0x3fd9e92d7836bd80              # double 0.40485703220016234
	.quad	0x3f95dc2ed38f1e40              # double 0.021347743666210173
	.quad	0x3fb98cfe0f038b10              # double 0.099807623544205137
	.quad	0x3fe11fa289e2fb69              # double 0.53511168414102628
	.quad	0x3fd229d765270fee              # double 0.28380379560644442
	.quad	0x3fe4ba0bba30d1a0              # double 0.64771067014094186
	.quad	0x3fe51f7c7ab6246e              # double 0.66009353606308507
	.quad	0x3f9dfcab96757040              # double 0.029284173067353203
	.quad	0x3fe0894134a4211b              # double 0.51675472527952893
	.quad	0x3fde9b9513811666              # double 0.47824599175178262
	.quad	0x3fcd346affd2c6f0              # double 0.22816216937422196
	.quad	0x3feab55369de91a9              # double 0.83463450124377403
	.quad	0x3fbb386ffa38f458              # double 0.10632991656253077
	.quad	0x3fedd2edab078a50              # double 0.93199809459867744
	.quad	0x3fdeb02a79d74d8a              # double 0.47950231455362113
	.quad	0x3fdac9f3c01c63dc              # double 0.4185761810381885
	.quad	0x3fdd4bf64c1532aa              # double 0.45776135854684219
	.quad	0x3fea85c5cdc188c0              # double 0.8288296717330681
	.quad	0x3fad0e95f03d1420              # double 0.056751905036925843
	.quad	0x3fc9c4db5be67868              # double 0.20132009494131187
	.quad	0x3fef3a2abaa495ed              # double 0.97585045293516048
	.quad	0x3fe1f535ebdf791f              # double 0.56118293827947585
	.quad	0x3fd6cb0c76196136              # double 0.35614310773009394
	.quad	0x3fd76822a052a558              # double 0.36573091179396533
	.quad	0x3fe65493898c5678              # double 0.69782425751573296
	.quad	0x3fe85f1215e5489a              # double 0.76160530354015354
	.quad	0x3fe54dbd91575d03              # double 0.66573980700459889
	.quad	0x3fe4e150b3dbd7a4              # double 0.65250430229820156
	.quad	0x3fc9f98efdfe7cd8              # double 0.20292842294745728
	.quad	0x3fe6f360b7ad5dbc              # double 0.71720920443015457
	.quad	0x3fa9c4acb5a1c500              # double 0.0503286334723132
	.quad	0x3fea75f1bba670c2              # double 0.82689749384328359
	.quad	0x3fdf47a18d761e6a              # double 0.48874701323118208
	.quad	0x3fcdd03d90b885ac              # double 0.23291749540753182
	.quad	0x3fd070c4b6b0c224              # double 0.25688283768525566
	.quad	0x3fcff0a89f55a6ac              # double 0.24953182010658759
	.quad	0x3fe31995ba3d18e1              # double 0.59687315344561054
	.quad	0x3fe975143da4b34d              # double 0.79554187812537125
	.quad	0x3fb35c3f01aa3558              # double 0.075626314074005108
	.quad	0x3fd54561ed63bbbe              # double 0.33235977346970091
	.quad	0x3fe3dbe8af7e26cb              # double 0.62059435153897746
	.quad	0x3fe26397e27d4c1f              # double 0.57465738521785059
	.quad	0x3fd0b7c9bac84464              # double 0.26121752968271594
	.quad	0x3fd82173a5c80558              # double 0.37704173268874319
	.quad	0x3feafa9bd198bc8e              # double 0.84309187828866228
	.quad	0x3fe53b9d726f29cf              # double 0.66352722502170447
	.quad	0x3fc1e3c2a52c1e94              # double 0.13976319375091306
	.quad	0x3fcece87a19a1364              # double 0.24067778959956876
	.quad	0x3fb1b428bc86fad8              # double 0.069155260111965489
	.quad	0x3fd69a0331734e36              # double 0.35315017537252247
	.quad	0x3f9967c3baa9a500              # double 0.024809892909989806
	.quad	0x3fe73f7bebc6c4fa              # double 0.72649951982580707
	.quad	0x3fbd1818b967a6f8              # double 0.11364893461691483
	.quad	0x3fe54e65db7f33a2              # double 0.66582005377278031
	.quad	0x3feaa93a99a96415              # double 0.83315782558486495
	.quad	0x3fc4c35908278160              # double 0.16221154115829517
	.quad	0x3fbe35510852a248              # double 0.11800104573433956
	.quad	0x3fe97e51a5590d3b              # double 0.79666979116920034
	.quad	0x3fc6d6443fec06f4              # double 0.17841389771643146
	.quad	0x3fe88004e8cf6b7f              # double 0.76562734099148588
	.quad	0x3fc3cde9a5e9f5c8              # double 0.15472145653977365
	.quad	0x3f8d6a8bc8796c40              # double 0.014363376670351369
	.quad	0x3fe665c21f437d03              # double 0.69992166620423324
	.quad	0x3f7f617ec479fd80              # double 0.0076613380293787392
	.quad	0x3fe771e6c1bd3bc4              # double 0.73265397872625515
	.quad	0x3fe45014d7628cdd              # double 0.63477556292891857
	.quad	0x3fec93d33b8d797d              # double 0.89304505950330759
	.quad	0x3fe96ae35613c30f              # double 0.79429785549118204
	.quad	0x3feb86f744af2510              # double 0.86022532858729228
	.quad	0x3fe5c10ff44b02d5              # double 0.67981717790106677
	.quad	0x3fe1fcbd1c297db8              # double 0.56210189342885197
	.quad	0x3fdea84698a3569c              # double 0.47902073770578979
	.quad	0x3fef8114cc4546f5              # double 0.9845069875393323
	.quad	0x3fcf7ab08d48690c              # double 0.24593169115616609
	.quad	0x3fc12062e08e84ac              # double 0.13380084957774352
	.quad	0x3fe1e1c0a513faad              # double 0.55880768052869245
	.quad	0x3fd5871168bb8c56              # double 0.33636889674943882
	.quad	0x3fd94f2ccefbf314              # double 0.39545746053026787
	.quad	0x3fb1291c38e836e0              # double 0.067033542531329982
	.quad	0x3fd453fd2556b578              # double 0.31762627264364296
	.quad	0x3fc11efbbe1a33a4              # double 0.13375803739873249
	.quad	0x3fe88bf78ed0a182              # double 0.76708581822917687
	.quad	0x3fd23f3f5ce89918              # double 0.28511032174209694
	.quad	0x3fe156cefda72f11              # double 0.54184674779523523
	.quad	0x3fd15589cce71890              # double 0.27084584245711429
	.quad	0x3febfd466acb7339              # double 0.87466736658425426
	.quad	0x3fe2468f49d1b8b0              # double 0.57111324708764322
	.quad	0x3febbbc8ffd2550f              # double 0.86667299237402229
	.quad	0x3fd60db5fd3c457c              # double 0.34458684663794492
	.quad	0x3fd4a7f1905a91c8              # double 0.32275046441125399
	.quad	0x3fb49b935d407758              # double 0.080498895899350997
	.quad	0x3fee9dbb906e2925              # double 0.95675447663351021
	.quad	0x3fe7f97c6aa3aa0b              # double 0.74920483425131701
	.quad	0x3fe86987eb08cd0a              # double 0.76288219361450271
	.quad	0x3fe393a0f7431d2d              # double 0.61177109044448275
	.quad	0x3fe006d578561d50              # double 0.50083421233368064
	.quad	0x3fd3c0522439e954              # double 0.3086133340617796
	.quad	0x3fe507645768e116              # double 0.65715233871654521
	.quad	0x3fad71f0b5b161c0              # double 0.057509920291241468
	.quad	0x3fe59d2d880db82f              # double 0.6754367501541817
	.quad	0x3fd9b9076f62c1be              # double 0.40191827657238466
	.quad	0x3fd260ecba7a7ec6              # double 0.28716581545630182
	.quad	0x3fb9050e6b6a1f28              # double 0.097733403419735354
	.quad	0x3fa547b80a570a50              # double 0.041562796842772642
	.quad	0x3fae834dc9962420              # double 0.059595518930173563
	.quad	0x3fd832d6c2fd420a              # double 0.37810296098635432
	.quad	0x3fb9e003c31e7960              # double 0.10107444299362589
	.quad	0x3fe64279dcd7dea5              # double 0.69561474927373423
	.quad	0x3fd644fadc163f1a              # double 0.34796020024167407
	.quad	0x3fea959e22cf48c5              # double 0.83076388167162263
	.quad	0x3fc16f510fd727a4              # double 0.13620961450061231
	.quad	0x3fc5d2dd1122c578              # double 0.17049754463873135
	.quad	0x3fd61d8730cd7fe2              # double 0.34555225149051527
	.quad	0x3fd4b4e4b65fe708              # double 0.32354085741063487
	.quad	0x3fe797e4f66d357d              # double 0.73729179506487663
	.quad	0x3fe9853408da1eef              # double 0.7975101635829257
	.quad	0x3fe85391f9989a5d              # double 0.76020144223441444
	.quad	0x3fd77ef4a3066d32              # double 0.36712375564976008
	.quad	0x3fedb7a24e61f9cb              # double 0.92866626080631798
	.quad	0x3fa85b8d15b8d800              # double 0.047573479558579379
	.quad	0x3fdc0661d0e0f5e2              # double 0.43788953207316983
	.quad	0x3fe78271ed111f3d              # double 0.73467346479535645
	.quad	0x3fed1e8d0dd6e4ae              # double 0.90997936919224798
	.quad	0x3fdb70318a7875b2              # double 0.42872274897112128
	.quad	0x3fdea5c63a5b4b1c              # double 0.47886806200874488
	.quad	0x3febd2df7e79eaca              # double 0.86949133589163208
	.quad	0x3fec0460c205bb9e              # double 0.87553441901205864
	.quad	0x3fbb2564e1a765f8              # double 0.10603933819893274
	.quad	0x3feccad9c7166262              # double 0.89976204761758205
	.quad	0x3fdd724b3ce110f6              # double 0.46010094590407336
	.quad	0x3febc5add38546bc              # double 0.86788073837870838
	.quad	0x3fee2f75506595ff              # double 0.94329324438575657
	.quad	0x3fcd79586ea1ac98              # double 0.23026566888743072
	.quad	0x3fed167524426867              # double 0.90899140436091563
	.quad	0x3fc9a0af592b25d0              # double 0.20021621564801118
	.quad	0x3fe624f488fc3220              # double 0.69201113467130781
	.quad	0x3fd127ecb638f8ca              # double 0.26806180758638887
	.quad	0x3fba6d5327554620              # double 0.10323066435128014
	.quad	0x3fd67ea07f29bfe2              # double 0.35147869509000718
	.quad	0x3fe0a0c94facb0d5              # double 0.5196272426742562
	.quad	0x3fe766df23c96dcc              # double 0.73130757321944762
	.quad	0x3fe0ffd559102e3e              # double 0.53122966189534515
	.quad	0x3fe318f356986d64              # double 0.59679572022598082
	.quad	0x3fe058c928beafae              # double 0.51083810766202986
	.quad	0x3fdb06fc30bec47c              # double 0.42230133781692536
	.quad	0x3fe60409d85118b2              # double 0.68799297570583051
	.quad	0x3fd3e61f42d18d02              # double 0.31092053914308349
	.quad	0x3fe61af73b2b8263              # double 0.69079171711571197
	.quad	0x3fd41eb53a814cd8              # double 0.31437426293741799
	.quad	0x3fcf1a94871e0dd8              # double 0.24299866292504535
	.quad	0x3fe3cd122255065a              # double 0.61878306107991965
	.quad	0x3fb40cce726fc3c0              # double 0.078320410669916463
	.quad	0x3fe8f445ba58688e              # double 0.77981840510916967
	.quad	0x3fed64580d82c678              # double 0.91849901808582413
	.quad	0x3fede0ec82c54db8              # double 0.93370652714877789
	.quad	0x3fd9c0cfae0dce62              # double 0.40239326474622861
	.quad	0x3faa06c1433e5560              # double 0.05083278604358088
	.quad	0x3fc4f4d305219e84              # double 0.16372144461205462
	.quad	0x3fe71f8c7468a0ec              # double 0.72260115371775901
	.quad	0x3fd869abc599919e              # double 0.38144964501250367
	.quad	0x3fefc0123e56eb3b              # double 0.99219619918526491
	.quad	0x3fd9ac25062fbbaa              # double 0.40113187412401408
	.quad	0x3fbb7de7583dc110              # double 0.10738988785101733
	.quad	0x3f8a2bef64da0100              # double 0.012779112115140823
	.quad	0x3fe467bf6f6d0763              # double 0.63766452563161768
	.quad	0x3fd7467b96929288              # double 0.36367692665434292
	.quad	0x3fb1f78313e0dad8              # double 0.070182983735189608
	.quad	0x3fe8c9cb4146804c              # double 0.77463305234051338
	.quad	0x3fcb33a1f370819c              # double 0.21251320254033323
	.quad	0x3fd54a96b7a011ea              # double 0.33267753536372757
	.quad	0x3fe0f90b387f0100              # double 0.53040085825344363
	.quad	0x3fe2a57b77ef600c              # double 0.58270047592941543
	.quad	0x3fe97c0db8b31bc6              # double 0.79639326166294988
	.quad	0x3fee1cc03093b264              # double 0.94100961196597809
	.quad	0x3fede2b482c23dac              # double 0.93392396487063455
	.quad	0x3fe12e487c80dd16              # double 0.53689979855599534
	.quad	0x3feaab7eb9e3ecf0              # double 0.83343445116716275
	.quad	0x3fe8cee6114f0f13              # double 0.77525618916158334
	.quad	0x3fe3a2c7e6d51f3a              # double 0.61362071117853323
	.quad	0x3fca4f7c6afb48b8              # double 0.20555072044095879
	.quad	0x3fdff186e97b4cc2              # double 0.49911663819257168
	.quad	0x3fe5d0cc1792bbbb              # double 0.6817379436887373
	.quad	0x3fe36d05d921daef              # double 0.60705845268861747
	.quad	0x3fc88d4ef89d2af4              # double 0.19181239261009575
	.quad	0x3fe258bc1e4fe3c4              # double 0.5733318893463708
	.quad	0x3fe5525032cca1a2              # double 0.66629800721880295
	.quad	0x3fefeb57df92e7d9              # double 0.99747842470901126
	.quad	0x3fd6d5c441058de2              # double 0.35679727887892743
	.quad	0x3fe7ef4d5b25a5d4              # double 0.74796169092331377
	.quad	0x3febaa218a46dead              # double 0.86451794631189716
	.quad	0x3fcbd5d7cedafc30              # double 0.21746347046243519
	.quad	0x3fe33e6d8a221379              # double 0.60137059191821074
	.quad	0x3fe1be68d5640d04              # double 0.5544933479108356
	.quad	0x3fee6e7901c7ab35              # double 0.95098543498656929
	.quad	0x3fd2dfa4be3cf11e              # double 0.29490011766371704
	.quad	0x3fe53ce3fbecd6ef              # double 0.66368293003207934
	.quad	0x3fe9ea63008a3c7d              # double 0.80986166100946344
	.quad	0x3fe81cadbd990e36              # double 0.75350081473192776
	.quad	0x3fd24c809bfa3962              # double 0.28591933471843423
	.quad	0x3fe017c7428c354e              # double 0.50290263173671135
	.quad	0x3fed00108d2e43d5              # double 0.90625789236411924
	.quad	0x3fed7fa39f6bb2d0              # double 0.92183095108847546
	.quad	0x3fe394865b693a0e              # double 0.61188047269553336
	.quad	0x3fccf7f68593b6e8              # double 0.22631722948374677
	.quad	0x3fdb54a1c80b98d0              # double 0.42704052482293964
	.quad	0x3fc5fcd9f99b7358              # double 0.17177891433575598
	.quad	0x3fec68c40f59720f              # double 0.88778880117348702
	.quad	0x3fe27031d7fd0497              # double 0.57619564233040677
	.quad	0x3fbee76586e88890              # double 0.120718331753354
	.quad	0x3fd208d5aedf9222              # double 0.28178922727082256
	.quad	0x3fc17b0ea5d29ddc              # double 0.13656790825665055
	.quad	0x3fdd7f74112086a0              # double 0.46090413734973801
	.quad	0x3fe64a17b489bb14              # double 0.69654450665788881
	.quad	0x3fc1476c9fda39ec              # double 0.13499219708724242
	.quad	0x3fdc5cfbe644057c              # double 0.44317529189000715
	.quad	0x3fdf6843e14bc4e6              # double 0.4907388401180256
	.quad	0x3f8e40aa89349f80              # double 0.014771778404408797
	.quad	0x3faac7cab7c47cb0              # double 0.052305540974196929
	.quad	0x3fe92e2ea7a74bf6              # double 0.78688748116326113
	.quad	0x3fe1f7b7125922cc              # double 0.56148866256361307
	.quad	0x3fb86ff495d6d388              # double 0.095458304006411976
	.quad	0x3fe7883bec89704c              # double 0.73538013647658707
	.quad	0x3fd5219cf6cffefa              # double 0.33017658331662825
	.quad	0x3fed304930f76b4c              # double 0.91214427531972708
	.quad	0x3fdff3703e7bac8c              # double 0.49923330404153243
	.quad	0x3fdaa32f889e7636              # double 0.41621006337831845
	.quad	0x3fe6586436a47898              # double 0.6982899729953429
	.quad	0x3fe7be8784f29797              # double 0.74200798002560731
	.quad	0x3fdace61de1dcc4e              # double 0.41884657565168915
	.quad	0x3fc085414a742b3c              # double 0.12906662116469103
	.quad	0x3fdf9cb6e80d7186              # double 0.49394009267214078
	.quad	0x3fed90996948ec8b              # double 0.92390127719353765
	.quad	0x3fe65b265a04ab7a              # double 0.69862668592155264
	.quad	0x3fe40e33e73f5874              # double 0.62673373380199715
	.quad	0x3febe39bb98e0090              # double 0.87153421631957606
	.quad	0x3fd47403b3f20a9c              # double 0.3195809609680198
	.quad	0x3fec70b294d48a71              # double 0.88875702923208
	.quad	0x3fe5e770e4d0bef1              # double 0.68450207415113884
	.quad	0x3fd2ae21fd50ef22              # double 0.29187822091965832
	.quad	0x3faf192dc57c5b80              # double 0.060738973958158304
	.quad	0x3fede8818368e395              # double 0.93463206926309061
	.quad	0x3fdc0c5f798dfe44              # double 0.43825518484661452
	.quad	0x3feef15a96cd4272              # double 0.96696214154697047
	.quad	0x3fe5e9719f7abb04              # double 0.68474656246493781
	.quad	0x3fc58f6572259aec              # double 0.16843860696390978
	.quad	0x3fb186b3fe061468              # double 0.068461656110302749
	.quad	0x3fdbe399e0a853aa              # double 0.43576666773997863
	.quad	0x3fd35d53a58febd8              # double 0.30257121246512275
	.quad	0x3feb3334c28e1178              # double 0.85000074385656799
	.quad	0x3fd1e2feaa2139ce              # double 0.27947966207730424
	.quad	0x3fe0bf4bc2202ebf              # double 0.52335155406168343
	.quad	0x3fed5722913e8408              # double 0.91688660018928747
	.quad	0x3fe558d1a3d6b569              # double 0.66709215163943469
	.quad	0x3feac4029cdd746b              # double 0.83642702710825512
	.quad	0x3fb8847f083f6eb0              # double 0.095771731866473031
	.quad	0x3fe8ef99a8b5dfe6              # double 0.77924807502040205
	.quad	0x3feef6af472ab4fd              # double 0.96761287593622535
	.quad	0x3fed49e8941ad684              # double 0.915272034899957
	.quad	0x3fdf6fd92ed829f0              # double 0.49120168280265286
	.quad	0x3fd62892b269c02a              # double 0.3462263815226857
	.quad	0x3fe2212a6c843559              # double 0.56654854960076328
	.quad	0x3fd209f82022ab70              # double 0.28185847414231713
	.quad	0x3fe9d2e2a8c62771              # double 0.80699284518889958
	.quad	0x3fedf4f73e44d64e              # double 0.93615305101293145
	.quad	0x3fb5a2c386a49ec0              # double 0.084514828082883575
	.quad	0x3fc7944a955a37fc              # double 0.18421299259756541
	.quad	0x3feccb2917189d18              # double 0.89979986678091262
	.quad	0x3fee0aa633c18517              # double 0.93879995449620679
	.quad	0x3fc7a5d6ad6acbbc              # double 0.18474849193225207
	.quad	0x3fd95c8e27991bd0              # double 0.39627412669181883
	.quad	0x3fbc770972d87078              # double 0.11119135907978428
	.quad	0x3fe6384dfa0fa56f              # double 0.69437311973631022
	.quad	0x3fd62eb8802aaabc              # double 0.34660160557056563
	.quad	0x3fe23cc2f22fc822              # double 0.56991717626647564
	.quad	0x3fb60663f8514d28              # double 0.086035011410150575
	.quad	0x3fe719266f47328e              # double 0.72182008489615312
	.quad	0x3fea8b18c3373034              # double 0.82947958114664865
	.quad	0x3fe07072dc79aa2a              # double 0.51372664510319521
	.quad	0x3fc83dfa8626b2dc              # double 0.18939143705701766
	.quad	0x3fd079ce9d471026              # double 0.25743451460971511
	.quad	0x3fc6d0494aa928f4              # double 0.17823139329477267
	.quad	0x3fe23b66e14df0db              # double 0.56975120548988956
	.quad	0x3fdb4153cf37f3cc              # double 0.42586226688564177
	.quad	0x3fec859cc7f6d3a0              # double 0.8913101106214647
	.quad	0x3fef313d7ce8a092              # double 0.97476076503973474
	.quad	0x3fdccda66fc10566              # double 0.45005188859439327
	.quad	0x3fd5d0bc15e982fc              # double 0.34086515560015562
	.quad	0x3fe60680fcda0fef              # double 0.68829392800443923
	.quad	0x3fe31d06f43b664d              # double 0.59729335500305469
	.quad	0x3fc53c38b4971ef4              # double 0.16590031450163389
	.quad	0x3fe26a546fb2a6d6              # double 0.57547971549976284
	.quad	0x3feab8d291bb913b              # double 0.83506134475150107
	.quad	0x3fee1bfbfe3328dc              # double 0.94091605804831202
	.quad	0x3fe14f45860cd75c              # double 0.54092670613929839
	.quad	0x3fda4c11a641cde2              # double 0.41089287982978651
	.quad	0x3fb460edb7a35e78              # double 0.079604012807402813
	.quad	0x3fe880056aad90a5              # double 0.76562758288902855
	.quad	0x3fd6712d4f979e24              # double 0.35065777561837508
	.quad	0x3fbe4f3f65185270              # double 0.11839672296657411
	.quad	0x3fefc308a61e210a              # double 0.99255783505307815
	.quad	0x3fd2cdb3f09056ee              # double 0.29380510799943138
	.quad	0x3fe3781a5908cd75              # double 0.60841100110557866
	.quad	0x3fefb05ea4facd13              # double 0.99027950499149353
	.quad	0x3fa5ed55f7c77f10              # double 0.042826353546614127
	.quad	0x3fdc0c3415583e8a              # double 0.43824483951991822
	.quad	0x3feb37ca1bc44f5e              # double 0.8505602400132195
	.quad	0x3fd8c7888638916a              # double 0.38717854602352608
	.quad	0x3fd89aa7aca66712              # double 0.38443939075806199
	.quad	0x3fe485e127b46dd8              # double 0.64134271387905084
	.quad	0x3fd7fa69396b2356              # double 0.3746588764884583
	.quad	0x3fc425220f38b9e0              # double 0.15738321059457316
	.quad	0x3fe3ad596dd759fc              # double 0.61491080716478974
	.quad	0x3fc4b93ad71256b4              # double 0.16190276624245359
	.quad	0x3fc1466ea73ede7c              # double 0.13496192137039376
	.quad	0x3fa64a7edea7e7f0              # double 0.043537106208489607
	.quad	0x3fcda77dfa397024              # double 0.23167395322786988
	.quad	0x3fb03a6f79dca640              # double 0.063391654254382424
	.quad	0x3fe50443c317f444              # double 0.65677059272969318
	.quad	0x3f7df9abd88f5d00              # double 0.0073181832057891416
	.quad	0x3fd2f4b321542854              # double 0.29618528609046746
	.quad	0x3fe7ee2cd9d9061d              # double 0.74782412098301487
	.quad	0x3fa700d0fb685b10              # double 0.044928103150757903
	.quad	0x3fe589b4efac1402              # double 0.67305990992520059
	.quad	0x3fdcf4f917751410              # double 0.45245196619754413
	.quad	0x3fca8912035c986c              # double 0.20730805553575082
	.quad	0x3fb455b67fc19028              # double 0.079432874861197988
	.quad	0x3fec53f0f5f631d5              # double 0.8852467349948322
	.quad	0x3fe69d078fbb7f0d              # double 0.70666864464507884
	.quad	0x3fe5cdda35139e16              # double 0.68137846342591746
	.quad	0x3fe6e08b1d072c86              # double 0.7149100844338967
	.quad	0x3fe17d0f68b55bc6              # double 0.54651613665452525
	.quad	0x3fde31508ba92294              # double 0.4717599262117258
	.quad	0x3fa4aa41f69dd1e0              # double 0.040361462931205017
	.quad	0x3fd91f2cc909baee              # double 0.39252776749246621
	.quad	0x3fd2da6be6a06034              # double 0.29458138963809977
	.quad	0x3fd30e4660fe8920              # double 0.29774627182099955
	.quad	0x3fcbba1f62d00fc4              # double 0.21661751103249405
	.quad	0x3fe0733e055d77f6              # double 0.51406765983460789
	.quad	0x3fedf715eff7ffe4              # double 0.93641182774444731
	.quad	0x3fd04db800e51f1e              # double 0.25474357688334404
	.quad	0x3fcf6c0de26e6bb0              # double 0.24548505359856909
	.quad	0x3fe9651fde1607be              # double 0.79359429718191854
	.quad	0x3fdb6763d1035990              # double 0.42818541919168585
	.quad	0x3fe19ed19cbd3be8              # double 0.55063706029056636
	.quad	0x3fde3305394d1b28              # double 0.47186403842754254
	.quad	0x3f92d0ca16212640              # double 0.018374593353917001
	.quad	0x3fc7d838c66f6140              # double 0.18628606499874856
	.quad	0x3fe7c2b7c0f4f7f5              # double 0.74251926123520084
	.quad	0x3fef49d64b49a08c              # double 0.97776331619844958
	.quad	0x3fe7978ccf39234f              # double 0.73724976037292744
	.quad	0x3feca178bb72e52b              # double 0.89471088992209979
	.quad	0x3fcef1064d67e208              # double 0.24173048762874338
	.quad	0x3fc0da20db95c820              # double 0.13165674898078894
	.quad	0x3fde408f793bcb2e              # double 0.47269045676437116
	.quad	0x3fed75530804aa0c              # double 0.9205718189817289
	.quad	0x3fe79320a90a4093              # double 0.73670990958818761
	.quad	0x3fc9297a5ba6761c              # double 0.1965783069144188
	.quad	0x3fd2c05789378590              # double 0.29298962020956143
	.quad	0x3fe7a544d12820b6              # double 0.73892441607406201
	.quad	0x3fd3dbfa6c556440              # double 0.31030140475701629
	.quad	0x3fe70b8589e5097e              # double 0.72015644962839054
	.quad	0x3fe66fa721017fc0              # double 0.70112949797111668
	.quad	0x3fdc692e1794921c              # double 0.44391968062180509
	.quad	0x3feb830e6b231f2e              # double 0.85974808621629051
	.quad	0x3fe62a72f56359fb              # double 0.69268176963197392
	.quad	0x3fe61fde6b0293cf              # double 0.69139023685840495
	.quad	0x3fc4f75fb875865c              # double 0.16379925257483563
	.quad	0x3f79fd8bdc423900              # double 0.0063453162475879399
	.quad	0x3fd1d58429c42868              # double 0.27865699843153502
	.quad	0x3fc4e0048fc858dc              # double 0.16308648129115155
	.quad	0x3fe5f4067efa32ec              # double 0.68603825378667471
	.quad	0x3fcef8571e8f1858              # double 0.24195374481331799
	.quad	0x3fe8599e340b2d07              # double 0.76093969502235914
	.quad	0x3fd667539e0a4ba4              # double 0.35005655702223692
	.quad	0x3feb79fcf3a1a699              # double 0.85864112457530262
	.quad	0x3febff195b26aa81              # double 0.87489002039849606
	.quad	0x3fed8feff6ef772e              # double 0.92382047872135842
	.quad	0x3fd53a1f94671ace              # double 0.33167256824928593
	.quad	0x3fdf19ac8ce041a6              # double 0.48594201810285609
	.quad	0x3fdf14733767a706              # double 0.48562317286142365
	.quad	0x3fe9de3f63222fb4              # double 0.80837983476657493
	.quad	0x3fd68651ea7e30aa              # double 0.35194824123096657
	.quad	0x3fd28c48b0225592              # double 0.28981225205037575
	.quad	0x3fe593c4d42024e0              # double 0.67428819113515814
	.quad	0x3fc200192b78ed54              # double 0.14062800047563917
	.quad	0x3fe3244bfe74ac53              # double 0.59818076799764197
	.quad	0x3fecfa15500334f3              # double 0.90552774074026698
	.quad	0x3fe72d4893bd41f4              # double 0.72427777152375805
	.quad	0x3fe832c241cfba77              # double 0.75619614461704898
	.quad	0x3fe50703d14a7d49              # double 0.65710631253379248
	.quad	0x3fece61f0df391a7              # double 0.90309097981348863
	.quad	0x3fdbb52e7fff2580              # double 0.43293344974207315
	.quad	0x3fe22653076d8e0d              # double 0.56717826319476361
	.quad	0x3fb7d869e2a469d0              # double 0.093145959694459934
	.quad	0x3fc6ed1e913929d0              # double 0.17911130991917767
	.quad	0x3fec85de2182e26c              # double 0.8913412718312208
	.quad	0x3fedfaae34c7bc34              # double 0.93685064610133972
	.quad	0x3fdd75a3dbe7e682              # double 0.46030518031293621
	.quad	0x3fefd0ecae19d6e2              # double 0.99425348285759818
	.quad	0x3fd0400353587192              # double 0.25390704287726706
	.quad	0x3fbc13d9427c5be0              # double 0.10967786668002999
	.quad	0x3fe270b3449338e8              # double 0.57625735658237165
	.quad	0x3fe686ad0db80bf2              # double 0.70393994025687179
	.quad	0x3fd995e8bd3f15ae              # double 0.39977472764106892
	.quad	0x3fe0faa34aa710e0              # double 0.53059544163309269
	.quad	0x3fb661edd4dfabd8              # double 0.087431778403398552
	.quad	0x3fd11eb8cfaff018              # double 0.26750011712988586
	.quad	0x3fdd9b84bfaf95e6              # double 0.46261709899257963
	.quad	0x3fe3875436a03679              # double 0.61026964825732855
	.quad	0x3fc52d5589e99cd8              # double 0.16544598802577215
	.quad	0x3fdda406d53fc28e              # double 0.46313639474014046
	.quad	0x3fef098e76e980c6              # double 0.96991656518005054
	.quad	0x3fd56065dbeeba0e              # double 0.33400866010461605
	.quad	0x3fe8fb3f700b89d5              # double 0.78066989787867647
	.quad	0x3fe09e38c86c4cd6              # double 0.51931418557287645
	.quad	0x3fea295eb80c5dd5              # double 0.81755004832205691
	.quad	0x3feb5e2eb97459cf              # double 0.85524688932019355
	.quad	0x3fdd7c3f3b3b9a72              # double 0.46070843491035085
	.quad	0x3fe0d00e025d3eab              # double 0.52539730512395033
	.quad	0x3fc80a880b078858              # double 0.18782139338060477
	.quad	0x3fd01d9a16d806f6              # double 0.25180675726743063
	.quad	0x3fe2e00a21e62d8b              # double 0.58984858151363662
	.quad	0x3fe6ecc5dd61c9b2              # double 0.71640294302624441
	.quad	0x3fe5dd9af0236960              # double 0.68330141927735255
	.quad	0x3fecf6e8febfe8f4              # double 0.90514039760389986
	.quad	0x3fdb1b5b44c8e86e              # double 0.4235447093702821
	.quad	0x3fefc769804dfaf0              # double 0.99309229907507124
	.quad	0x3fe56142dcce5f88              # double 0.66812270284843667
	.quad	0x3fda25474b7bfb84              # double 0.40852529880060495
	.quad	0x3f86bf49ccbfad00              # double 0.01110704094022319
	.quad	0x3feb4f45ab319690              # double 0.8534267753245377
	.quad	0x3fe205bbf3adbba3              # double 0.56319997399792887
	.quad	0x3fd02dab334fe7c8              # double 0.25278739939642181
	.quad	0x3f82a7f8434e4500              # double 0.0091094394245225807
	.quad	0x3febb6a4d6bf623f              # double 0.86604539816750747
	.quad	0x3fee146e94621865              # double 0.93999413472262161
	.quad	0x3fe22e45e909deef              # double 0.56814857020705556
	.quad	0x3fdbea5f27a0b2f0              # double 0.43617991323371452
	.quad	0x3fa17d258f443c20              # double 0.034157918680755239
	.quad	0x3fecc5e7a0bde28e              # double 0.89915830035086386
	.quad	0x3fea1ab0fc6edc79              # double 0.8157582216580429
	.quad	0x3fd58c234467cf26              # double 0.3366783302328592
	.quad	0x3fddee33c5dd5a84              # double 0.467663710810861
	.quad	0x3fe6695c1110dc2e              # double 0.70036128361869543
	.quad	0x3fd6194a5ead90a6              # double 0.34529361005685144
	.quad	0x3f84d9c960325e80              # double 0.010181020019714326
	.quad	0x3fce4097e83db9a8              # double 0.23634623374841834
	.quad	0x3fe70fd2b6679848              # double 0.72068153024589154
	.quad	0x3fed46b72b3f9028              # double 0.91488226363117509
	.quad	0x3fde0ed1c42ef660              # double 0.46965450438060508
	.quad	0x3fc631ab1b99da64              # double 0.17339075896935008
	.quad	0x3fedc7c8338cf18b              # double 0.93063745563954237
	.quad	0x3fe9747c5037942a              # double 0.79546943347361787
	.quad	0x3fd5ffbbbc0dd0d8              # double 0.34373372425694759
	.quad	0x3fcd09865babd8a8              # double 0.22685317493568857
	.quad	0x3fe85c82c8166786              # double 0.76129283027260963
	.quad	0x3fe1047624bd45c0              # double 0.53179461646703174
	.quad	0x3feea82c8297b765              # double 0.95802903658271232
	.quad	0x3fd5bcec579255c6              # double 0.33965595771709578
	.quad	0x3fec3a594f642441              # double 0.88212266450967303
	.quad	0x3fed13121e0ba75a              # double 0.90857797497049408
	.quad	0x3fe0a947d0fc9ff7              # double 0.52066412751901125
	.quad	0x3f916d197bad4ce0              # double 0.017017744229929188
	.quad	0x3fe75267ee1907e9              # double 0.7288093233439642
	.quad	0x3fc7db46906bd538              # double 0.1863792615110158
	.quad	0x3feb78a22a0c4d0b              # double 0.85847576344022636
	.quad	0x3fb7f3cce560dcf8              # double 0.093563848496035606
	.quad	0x3fd88316fe5693c0              # double 0.38300108754839002
	.quad	0x3fb4730838d90418              # double 0.079880250815236642
	.quad	0x3fea2b27788e658d              # double 0.81776784464016006
	.quad	0x3fd2830ba715cc32              # double 0.28924838368328942
	.quad	0x3fe42f2186ee5af1              # double 0.63075329164243332
	.quad	0x3fc72d162f1ea1d4              # double 0.18106343556179516
	.quad	0x3fdb678c8c6f7da6              # double 0.42819513048558588
	.quad	0x3fec9a310c850878              # double 0.8938222164654368
	.quad	0x3fd93c7f2bcf6f72              # double 0.39431742933606195
	.quad	0x3fe261941837cf79              # double 0.57441143732147204
	.quad	0x3fd8a112d838c806              # double 0.38483115306291926
	.quad	0x3feae5d380528179              # double 0.84055495322176832
	.quad	0x3fefffead41313e8              # double 0.99998990460210013
	.quad	0x3fd7e5541ba35394              # double 0.37337210368178231
	.quad	0x3feb152007d0bbf1              # double 0.84632874990881934
	.quad	0x3fe619d0bf967bf3              # double 0.69065129680154624
	.quad	0x3fbcc00a5a581760              # double 0.11230530458132426
	.quad	0x3fd2ffc2d8af5810              # double 0.29686041985166955
	.quad	0x3fe5577e2e344164              # double 0.66693028473131877
	.quad	0x3fed0232bf600b0b              # double 0.90651833894693945
	.quad	0x3fe987c9b78e8ca1              # double 0.79782567835754403
	.quad	0x3fe661fe1ad76702              # double 0.69946198694671602
	.quad	0x3febadb3225fb690              # double 0.86495358194015814
	.quad	0x3fdb1e20ec9784c6              # double 0.42371390442538048
	.quad	0x3feb8a008e7466f0              # double 0.86059596846754793
	.quad	0x3fb76e4f44aacd78              # double 0.091526941551640095
	.quad	0x3fe11ea6dd4d0f71              # double 0.53499167654852731
	.quad	0x3fe9effdbdc96522              # double 0.81054579799380044
	.quad	0x3fe71884f7d2d0aa              # double 0.72174309161211636
	.quad	0x3fd3ce139147567a              # double 0.30945290744180165
	.quad	0x3fe6005a25466fcf              # double 0.68754298477460363
	.quad	0x3fe00776d869d621              # double 0.50091116207358166
	.quad	0x3fe96bd8cd77870b              # double 0.79441490297560458
	.quad	0x3facf1db6ab12670              # double 0.056532723211216829
	.quad	0x3fe08639049d804e              # double 0.51638461018957016
	.quad	0x3fed0bb17b7b417c              # double 0.90767740361665927
	.quad	0x3fef67b9da45849c              # double 0.98141186362422017
	.quad	0x3fc4f8c1987a14d4              # double 0.16384143777046367
	.quad	0x3fe36e4a0c95d373              # double 0.60721304376657625
	.quad	0x3fd0e8d650a8eb7c              # double 0.26421125294626058
	.quad	0x3fdd15ca3744e662              # double 0.45445495030762662
	.quad	0x3fdf8c1419fb71ca              # double 0.49292471444439612
	.quad	0x3f9c91b604c02640              # double 0.027899593391373267
	.quad	0x3fecdfb9032b45d5              # double 0.90230990046455395
	.quad	0x3fd83cfaea6fc952              # double 0.37872193235593443
	.quad	0x3fee85edf7b28e43              # double 0.95384882334150978
	.quad	0x3fe02c0d374b8d21              # double 0.50537739562824779
	.quad	0x3f89a7022c963880              # double 0.012525574670487538
	.quad	0x3fc819216a3fccb0              # double 0.18826692283582735
	.quad	0x3feece29e0373084              # double 0.96266645233255632
	.quad	0x3fdb94e9a242dec4              # double 0.43096390577146004
	.quad	0x3fc4aec32a515d04              # double 0.16158332411098553
	.quad	0x3fa6a7e900e35be0              # double 0.044249802931225934
	.quad	0x3f91293feae74880              # double 0.016758917534226203
	.quad	0x3fef6cab5679d89b              # double 0.98201529397808273
	.quad	0x3fe0f3ea993967a4              # double 0.52977495123490259
	.quad	0x3fe77f5971982f3a              # double 0.73429557978076976
	.quad	0x3fe8a20c4cc04260              # double 0.76978125563080013
	.quad	0x3fe72f958f63f0e5              # double 0.72455862050949504
	.quad	0x3fe2c8f4ac88915f              # double 0.58703073213522916
	.quad	0x3fc540f4ddce3460              # double 0.16604481535287885
	.quad	0x3fe532e77e794cd5              # double 0.66246390058440829
	.quad	0x3fc016978ed8a524              # double 0.12568945383945007
	.quad	0x3fea66c94761518b              # double 0.8250471490996899
	.quad	0x3fede1c1d04cfe30              # double 0.93380823787442147
	.quad	0x3fa42cec7b1438b0              # double 0.039405241035738725
	.quad	0x3fcddd0f3920a82c              # double 0.23330869950706423
	.quad	0x3fe3890ed504d406              # double 0.61048070531126153
	.quad	0x3fdae4053f65d4bc              # double 0.42016726676167671
	.quad	0x3fdbec6069c94a8a              # double 0.43630228357975709
	.quad	0x3f93447b1a4d2080              # double 0.018815921287825166
	.quad	0x3fe695e1a3d9031f              # double 0.70579607011322654
	.quad	0x3f9813bb039d10c0              # double 0.023512765975525651
	.quad	0x3fe4235a8b675a3a              # double 0.62931563594140205
	.quad	0x3fdcb62cfd765492              # double 0.44861912491007516
	.quad	0x3fee40887b60993a              # double 0.94537757966171587
	.quad	0x3fe39db9f48b4dc7              # double 0.61300370943575266
	.quad	0x3fa07faff03ba270              # double 0.032224176478682476
	.quad	0x3fe185dee2d44b13              # double 0.54759163191406157
	.quad	0x3feeb020abb66f13              # double 0.95899995362876422
	.quad	0x3f97d80a17047cc0              # double 0.023285062460783434
	.quad	0x3fed4d4ce4cf92aa              # double 0.91568607987990913
	.quad	0x3fd99c23faf8581a              # double 0.40015506275938295
	.quad	0x3fd75edadfbe4528              # double 0.36516448831487702
	.quad	0x3fe4674a5e759777              # double 0.63760870408144299
	.quad	0x3fe8724057e13f4a              # double 0.76394669689214223
	.quad	0x3fe87613f07fded5              # double 0.76441380474622156
	.quad	0x3fb36e7daf0c8798              # double 0.075904708134230225
	.quad	0x3fe5c6734fc72a0c              # double 0.68047490674627076
	.quad	0x3fd18d1d6c204fb6              # double 0.27423797187043009
	.quad	0x3fe2e22195f4849d              # double 0.59010390556445069
	.quad	0x3fe05546878a443e              # double 0.51040960762669108
	.quad	0x3fd5b360771d71cc              # double 0.33907329208684867
	.quad	0x3fea64b4335e5ffe              # double 0.82479295762004745
	.quad	0x3fd4235f2860bf16              # double 0.31465891783862909
	.quad	0x3fe19faa01f6fc26              # double 0.55074024566409174
	.quad	0x3feba4e074a07e67              # double 0.8638765600080206
	.quad	0x3fd07565fad766a4              # double 0.25716542717200697
	.quad	0x3fdc42572a130328              # double 0.44154910191359642
	.quad	0x3fe48fe2f75e5515              # double 0.64256428064496396
	.quad	0x3fe810186740c8d0              # double 0.75196476141561597
	.quad	0x3fbf1aaca87aeea0              # double 0.12150076974188062
	.quad	0x3fbbc2372ac2c978              # double 0.10843224328963241
	.quad	0x3febdd3f05a9d680              # double 0.87075759035242584
	.quad	0x3fccd986e9fe9848              # double 0.22538839746011008
	.quad	0x3feeb0667dc27f8e              # double 0.95903324663594147
	.quad	0x3fc8beeca193b270              # double 0.19332654847621056
	.quad	0x3fe672f85d3ae8f1              # double 0.70153444489485939
	.quad	0x3fe0572ba1f3634f              # double 0.51064092284205198
	.quad	0x3fe4658fb3dd756f              # double 0.63739762430092906
	.quad	0x3fbab0b0296b36a8              # double 0.10425854693604697
	.quad	0x3fe6bb0e08f42c6b              # double 0.71033384083547213
	.quad	0x3fe1e2b528d0270b              # double 0.55892427417094959
	.quad	0x3fdcba1db5b20854              # double 0.44885962241835853
	.quad	0x3fe80f8795f101f4              # double 0.75189570699154595
	.quad	0x3fbd51f5f013f268              # double 0.11453187094952855
	.quad	0x3fca583747da151c              # double 0.20581713684456637
	.quad	0x3fef8fc3e5d7e2a1              # double 0.98629946604986085
	.quad	0x3fedb5b48f203f29              # double 0.92843082384385867
	.quad	0x3fe7202bf033c7d7              # double 0.72267720140939218
	.quad	0x3fd2866dbed2bb70              # double 0.28945487628055044
	.quad	0x3fea95450a505bbe              # double 0.83072139753755159
	.quad	0x3fd18ff8ab0c7926              # double 0.27441231445290482
	.quad	0x3fd395cb5d3bf8f8              # double 0.30601772408398586
	.quad	0x3fc4067c5f9a4a3c              # double 0.15644793193912843
	.quad	0x3fdd4912424c1456              # double 0.45758491968473913
	.quad	0x3fdd09f4b87e401e              # double 0.453732662362201
	.quad	0x3fce2fc82e416f9c              # double 0.23583318956923172
	.quad	0x3fdc723aaabca714              # double 0.44447199510123991
	.quad	0x3fdd273a7e7f9920              # double 0.45551931718218164
	.quad	0x3fddb6708310cf32              # double 0.46426022338276873
	.quad	0x3faa1e4161b7e4c0              # double 0.051012080362804024
	.quad	0x3fcf15b324414d78              # double 0.24284972448604569
	.quad	0x3fda7e38b087f75c              # double 0.41395394553534515
	.quad	0x3fe5ad911c8ac02d              # double 0.67743735861404775
	.quad	0x3fedcb1896557e89              # double 0.931041997548122
	.quad	0x3fee0222647143af              # double 0.93776054017700072
	.quad	0x3fe088b6f0882701              # double 0.51668879488826758
	.quad	0x3f57315eb094ae00              # double 0.0014155792908451259
	.quad	0x3fe9e614d4984253              # double 0.8093361046067663
	.quad	0x3fe690eb4a89972f              # double 0.70519032056902187
	.quad	0x3fcc086139b98fa8              # double 0.21900573080631358
	.quad	0x3fcf580ccc5f0ed4              # double 0.24487457255428657
	.quad	0x3feb093ee8fe884e              # double 0.84487863070195046
	.quad	0x3fe4e8f4fca7119b              # double 0.65343713136876447
	.quad	0x3fe20229f5c9752f              # double 0.56276414876234593
	.quad	0x3fe2ebc45156617c              # double 0.59128013502326793
	.quad	0x3fe9e2ebaf4f9277              # double 0.80895027389904228
	.quad	0x3fd458dfb2511f8c              # double 0.31792442716368252
	.quad	0x3feb6b67717d4f77              # double 0.85686084905545001
	.quad	0x3fe18d749623161c              # double 0.54851750682491085
	.quad	0x3fca6923a7aff034              # double 0.20633359611372415
	.quad	0x3fefff81a564d71b              # double 0.99993974975106725
	.quad	0x3fd784a8ead0835c              # double 0.36747191363433784
	.quad	0x3f913eb8cb205c60              # double 0.016840827367641586
	.quad	0x3feaa45879e6a7f0              # double 0.83256171997822825
	.quad	0x3fe92430aee4e133              # double 0.7856677451991686
	.quad	0x3fee5a8ebe73838e              # double 0.94855439374451733
	.quad	0x3fe4d76b21c80137              # double 0.65129620168594371
	.quad	0x3fe8d05ec9d89d18              # double 0.77543582366061781
	.quad	0x3fe31b5ce1ff8acc              # double 0.5970901884105273
	.quad	0x3fea4a437c44b692              # double 0.82156538268255219
	.quad	0x3fdb376b43ca85aa              # double 0.42525750751709757
	.quad	0x3fc3dcbae3c87300              # double 0.15517364618508367
	.quad	0x3fc3cd5d26b74834              # double 0.15470470800807024
	.quad	0x3fe26ec128f0d864              # double 0.57601984020471919
	.quad	0x3fd091255bae0bc4              # double 0.25885900452720656
	.quad	0x3fd76739bad2fc3a              # double 0.36567538494631757
	.quad	0x3fda1fb785c429f6              # double 0.40818584502326816
	.quad	0x3fdd3ed9a83d6a06              # double 0.45696107320478097
	.quad	0x3fe16253f0888c43              # double 0.54325291613748339
	.quad	0x3fc70f393a1d6260              # double 0.18015208566318375
	.quad	0x3fe788389ad110b3              # double 0.73537855374936212
	.quad	0x3fe7880de1df55e3              # double 0.73535818210319481
	.quad	0x3fe467288360511a              # double 0.63759256038113965
	.quad	0x3fd7589828d8a472              # double 0.36478237141506675
	.quad	0x3f8fa6143c862880              # double 0.015453489396140663
	.quad	0x3fd7eaa591d4ac9e              # double 0.37369670144352962
	.quad	0x3fd6f6a0051a591a              # double 0.35880280016262278
	.quad	0x3f672ebac44db200              # double 0.0028298995770710267
	.quad	0x3feff3efbd1c9334              # double 0.99852740226615432
	.quad	0x3feac1fcfd9407ab              # double 0.83618020560264961
	.quad	0x3fef5d3076d3b831              # double 0.98012564857868345
	.quad	0x3fe90e766adfc968              # double 0.78301545022831665
	.quad	0x3fded4ec3a58a7a8              # double 0.48174577424890197
	.quad	0x3fe244ab75c2fae4              # double 0.57088253975220171
	.quad	0x3fe9f7980b57f429              # double 0.81147386756459128
	.quad	0x3fe5d5df7e4d9226              # double 0.68235754650647062
	.quad	0x3fe17c32f8fb3e43              # double 0.54641102437194211
	.quad	0x3fef6e30b168517a              # double 0.98220095300580046
	.quad	0x3fe75b3da22bb7c8              # double 0.72988778757075412
	.quad	0x3fd50efb912b62aa              # double 0.329039470450463
	.quad	0x3fee7f041814a1ad              # double 0.95300488188973065
	.quad	0x3fd964a008cb050e              # double 0.39676667078681838
	.quad	0x3fee30cec451b21f              # double 0.94345796912745417
	.quad	0x3fe77bc85cbbe856              # double 0.73386018859970181
	.quad	0x3fefccd72f6913af              # double 0.99375495204787067
	.quad	0x3fe7c9bf098c5cfd              # double 0.74337722649480009
	.quad	0x3f861229d64daec0              # double 0.010776831486246308
	.quad	0x3fb67ef48bd56200              # double 0.087874683512730201
	.quad	0x3fd04e55361da1e0              # double 0.25478105816594443
	.quad	0x3fee89e30fe14f84              # double 0.95433190442643978
	.quad	0x3fe15e3139855834              # double 0.54274808153673471
	.quad	0x3fdc271149b8ee04              # double 0.43988449286891318
	.quad	0x3fd628abbbc8be54              # double 0.34623235071464831
	.quad	0x3fecdbaa7f88295e              # double 0.90181469830103445
	.quad	0x3fa253a6a7840750              # double 0.035794456433008492
	.quad	0x3fb750945bcbf330              # double 0.09107329598550673
	.quad	0x3fd4ebd203a4b758              # double 0.32689333301356305
	.quad	0x3fdf7b772177184e              # double 0.49191072719657292
	.quad	0x3fc30ed1a145048c              # double 0.14888973593227595
	.quad	0x3fbe48c7e74032f0              # double 0.11829804797907761
	.quad	0x3fec7e6cfbf031e7              # double 0.89043282705966653
	.quad	0x3feaeb2f1b5fc93c              # double 0.84120898577228997
	.quad	0x3f6f6700c15df800              # double 0.0038332953217254939
	.quad	0x3fe9b203b2dc1ce7              # double 0.8029802792888433
	.quad	0x3feebcc19694905c              # double 0.96054152879925025
	.quad	0x3fe78bf71ae6f140              # double 0.73583560232467704
	.quad	0x3fd94849378e4530              # double 0.39503698754659222
	.quad	0x3fe39120d125c405              # double 0.61146584366918033
	.quad	0x3fef404a4eb62afc              # double 0.97659793256147464
	.quad	0x3fcbb8527b659c98              # double 0.2165625669979121
	.quad	0x3fc60d35e1c32b9c              # double 0.17227815173677363
	.quad	0x3fde3cb42afec1c0              # double 0.47245506476158639
	.quad	0x3fe7fec908f1e13a              # double 0.74985172030486713
	.quad	0x3fea0cebeca62e41              # double 0.81407734127555653
	.quad	0x3fb35be9523e18c0              # double 0.075621206835509547
	.quad	0x3fd12404d30c4398              # double 0.26782341585299596
	.quad	0x3fe17a21154b35ff              # double 0.54615835341400032
	.quad	0x3fed2a05aba937e5              # double 0.91137965705433699
	.quad	0x3fa5bb28629b70b0              # double 0.042443525349626809
	.quad	0x3feebe80d896badd              # double 0.96075479795930684
	.quad	0x3fecf97bcc861210              # double 0.90545453973806111
	.quad	0x3fd1aeb2e5d57b06              # double 0.27628776974408742
	.quad	0x3fcd7076c8123148              # double 0.22999462861151643
	.quad	0x3fef48becd81b22d              # double 0.97763004434597677
	.quad	0x3fdd5dcf980b82e6              # double 0.45885076378003331
	.quad	0x3fd66419bf6d9ff2              # double 0.34985965437090194
	.quad	0x3fbad74e717b5598              # double 0.10484781523276465
	.quad	0x3fcfc8d59539f9a4              # double 0.24831647669266232
	.quad	0x3fd7ec04942d5878              # double 0.37378038855002371
	.quad	0x3f90e4e6b2883be0              # double 0.016498188635576727
	.quad	0x3fefe2c075ebce0c              # double 0.9964296630045637
	.quad	0x3fdf38e3187e223c              # double 0.48784711257806967
	.quad	0x3fddb98be8cf27d2              # double 0.46444986090920992
	.quad	0x3fe1c64b1261c146              # double 0.55545571890073897
	.quad	0x3fe2242c7726e8c3              # double 0.56691573402283557
	.quad	0x3fe3407ec04d9b4f              # double 0.60162293967446512
	.quad	0x3fe3ad3253fd7f83              # double 0.61489216236439892
	.quad	0x3fe314b20de86f56              # double 0.59627630916973362
	.quad	0x3fd53a31a6a2981e              # double 0.33167687676393764
	.quad	0x3fa2f98b21aa6ef0              # double 0.037060115680302874
	.quad	0x3fe9475776a5bc12              # double 0.78995869801826957
	.quad	0x3fdc8cd1be43b388              # double 0.44609492855561728
	.quad	0x3fc9839b626f62ac              # double 0.19932882601167046
	.quad	0x3fdffd01e461557c              # double 0.49981734564547486
	.quad	0x3fdaf3e1178569c2              # double 0.42113520905482116
	.quad	0x3fede68ea4c44e3d              # double 0.93439418965358068
	.quad	0x3fc3ef6f03441ed4              # double 0.15574443492390933
	.quad	0x3fd7c5206043982c              # double 0.37140664482865549
	.quad	0x3fe08cacabdb81ff              # double 0.51717217985066088
	.quad	0x3fe9622ba9a17653              # double 0.79323371058462511
	.quad	0x3face655d1e96200              # double 0.056444818376522932
	.quad	0x3fe42b4c3a4ce832              # double 0.63028537165451426
	.quad	0x3fcc5b5d0e8b5a8c              # double 0.22153819284604415
	.quad	0x3fe96a2eefd00085              # double 0.79421183431988196
	.quad	0x3fd5e628e47d9078              # double 0.34217283547901145
	.quad	0x3fdb3795ad1c2026              # double 0.4252676191831618
	.quad	0x3fe5c60cdd0ed636              # double 0.68042605567342807
	.quad	0x3fecf49c08d87c87              # double 0.90485955932298701
	.quad	0x3fe66048f072e919              # double 0.69925353014631064
	.quad	0x3fe2da3526fe85b0              # double 0.5891366731267933
	.quad	0x3fea716a4d5e0044              # double 0.82634463415889358
	.quad	0x3fc0a359699e1a34              # double 0.1299850240431667
	.quad	0x3fc044dbc96cd574              # double 0.1271013959427979
	.quad	0x3fdefa381a6609c6              # double 0.48402216508852935
	.quad	0x3fdde141c6b98970              # double 0.46687359244074056
	.quad	0x3feada5f4f948511              # double 0.83915677588461979
	.quad	0x3fcb1b61b86ccd40              # double 0.21177312379004753
	.quad	0x3fa04935be7cced0              # double 0.031808547499534989
	.quad	0x3fb6181fbcbcf1b8              # double 0.086305602625492805
	.quad	0x3fe179e6f4b2f882              # double 0.5461306361464866
	.quad	0x3fefc3ebf853af6c              # double 0.99266623021456501
	.quad	0x3f9b82cb48157720              # double 0.026866127276085838
	.quad	0x3fbb76ab0bd44660              # double 0.10727948225783157
	.quad	0x3f91c15a630759c0              # double 0.017339145941002831
	.quad	0x3fae7133b2e241b0              # double 0.059457412325289893
	.quad	0x3fe00087cf2b8777              # double 0.50006475890061963
	.quad	0x3fe2cf41bb0c5a10              # double 0.58779989750729733
	.quad	0x3fe1adbf6ae51855              # double 0.55245943906698847
	.quad	0x3fe6d41b865f0cb5              # double 0.71339203113929861
	.quad	0x3fed926c584691da              # double 0.92412392846432145
	.quad	0x3fe03ddfa2c994f1              # double 0.50755292696399412
	.quad	0x3fe678c4b22e2d74              # double 0.70224222946983028
	.quad	0x3fece618408294f7              # double 0.90308773612619475
	.quad	0x3feffe852344d252              # double 0.99981934441036402
	.quad	0x3fd41d8d046c8510              # double 0.31430364067098626
	.quad	0x3fba67a078fa2af8              # double 0.10314372018380513
	.quad	0x3fc6094458ba8d0c              # double 0.17215780575234196
	.quad	0x3fd8f01bff45b712              # double 0.38965511254251439
	.quad	0x3fe2853f45346d1a              # double 0.57876552120743274
	.quad	0x3fe127b361925294              # double 0.53609627778003466
	.quad	0x3fd6a6ea60a4a280              # double 0.35393771589091472
	.quad	0x3fe069fdc70b76bf              # double 0.51293839336332059
	.quad	0x3feabd50ffd18298              # double 0.83560991253405614
	.quad	0x3fc6184629cb7640              # double 0.1726157859874764
	.quad	0x3fd0d1e1d461f344              # double 0.26281018963327463
	.quad	0x3fd13e8e794d4368              # double 0.26944314809684622
	.quad	0x3fd46776aba42910              # double 0.3188149143394563
	.quad	0x3fcdfad83fbf0474              # double 0.23421767342191269
	.quad	0x3f955190556056a0              # double 0.020818953715283528
	.quad	0x3fd2ddc88daad72a              # double 0.2947865851850674
	.quad	0x3fecdbd0eea20040              # double 0.90183302505466401
	.quad	0x3fde86251e75fd84              # double 0.47693756079385019
	.quad	0x3fe893a2b39e5759              # double 0.76802191812269449
	.quad	0x3fe45b7d8ad76b65              # double 0.63616826169468921
	.quad	0x3fe5038fe81120e9              # double 0.65668483090942431
	.quad	0x3fe17f4cecc9c096              # double 0.54678961036371976
	.quad	0x3fe3a6abbd642887              # double 0.61409556379773356
	.quad	0x3fedeeed6410511d              # double 0.93541593116472976
	.quad	0x3fedd15ab599e0f8              # double 0.9318059489151258
	.quad	0x3fdf87478e768896              # double 0.49263180649189431
	.quad	0x3fe5131d9683a738              # double 0.65858344456976337
	.quad	0x3fec47d346e0f597              # double 0.88376773684983589
	.quad	0x3f68d19cb5c36000              # double 0.0030296383612089528
	.quad	0x3fd0810385db60da              # double 0.25787437507598343
	.quad	0x3fe715caab50fe36              # double 0.72141011677007927
	.quad	0x3fe87cad00204a56              # double 0.76521921181331254
	.quad	0x3fe7ef0bfcd82869              # double 0.74793052085557321
	.quad	0x3f9c8f9e6618cf80              # double 0.027891612035275681
	.quad	0x3fe6154262e5004d              # double 0.69009513202036887
	.quad	0x3fb22c11d113a138              # double 0.070984948677168869
	.quad	0x3fda1ebc7e852ed6              # double 0.40812599521153226
	.quad	0x3fe3c1ad45f85111              # double 0.61739219347012597
	.quad	0x3fa8d84f6f204de0              # double 0.0485253165390096
	.quad	0x3fd52013805f479a              # double 0.33008277450891799
	.quad	0x3fe771a59b70d0b4              # double 0.7326229129744406
	.quad	0x3fe29b6372c6f7c2              # double 0.58146831910539043
	.quad	0x3fefd10c702281fb              # double 0.99426862622573197
	.quad	0x3fc430f36ac5e878              # double 0.15774386132745
	.quad	0x3fec21ad91148967              # double 0.87911108337384014
	.quad	0x3fe32a0b58adccdd              # double 0.5988823635110766
	.quad	0x3fea7bbd35c73345              # double 0.82760487082996603
	.quad	0x3fb5bae4398f00f8              # double 0.084882988026041661
	.quad	0x3feada0a5505d687              # double 0.83911625486389674
	.quad	0x3fe8bf145780dedf              # double 0.773325129418449
	.quad	0x3fedcf55c9a10a71              # double 0.9315594614093482
	.quad	0x3fd33f5a57366694              # double 0.30074175373884171
	.quad	0x3fdd62b65e9cbb44              # double 0.4591499256084044
	.quad	0x3fe5b2e4ec6f870e              # double 0.67808767489279531
	.quad	0x3fe4504ecf6eaa2c              # double 0.63480320467107765
	.quad	0x3fd767298c020c38              # double 0.36567152664810321
	.quad	0x3fb56e18c2c421d0              # double 0.083711192655875565
	.quad	0x3fcd0da13f1ebce0              # double 0.2269784506038155
	.quad	0x3fe678dc1ec715d0              # double 0.70225339900269468
	.quad	0x3fefa23074c6bea5              # double 0.98854849632148911
	.quad	0x3fec200e8d0c049c              # double 0.87891318844062338
	.quad	0x3feef9251e2885a6              # double 0.96791320696154481
	.quad	0x3feb94b3a21bc4ac              # double 0.86190206205187314
	.quad	0x3fe9a29c0e0b79d2              # double 0.80109980338220965
	.quad	0x3fdb10071a06ed6a              # double 0.42285325566964238
	.quad	0x3fde14843b716622              # double 0.47000222973801631
	.quad	0x3fd3690970d90bb4              # double 0.30328594227119798
	.quad	0x3fe2bf4f65b8abcb              # double 0.58585328929381697
	.quad	0x3febc32757a1b0df              # double 0.86757247081325406
	.quad	0x3fe88e8625242f80              # double 0.76739794973535425
	.quad	0x3fd7a1520a630df6              # double 0.36922122015332037
	.quad	0x3fe191ed11ce6776              # double 0.54906323888574948
	.quad	0x3fd7b0199941639a              # double 0.3701232906947155
	.quad	0x3fc7421882301ff8              # double 0.18170458180270521
	.quad	0x3fd754ef2f5c3c62              # double 0.36455897927311842
	.quad	0x3fd6d0f2ab834c7e              # double 0.35650316952996508
	.quad	0x3fdd7f4a1a2de5f0              # double 0.46089413219996711
	.quad	0x3fe91c71b903f5cf              # double 0.78472219596704373
	.quad	0x3fd0c97d90fd54f8              # double 0.26229800376070456
	.quad	0x3fbe1a9eac3ef150              # double 0.11759368615361621
	.quad	0x3feaf42a2aaab152              # double 0.84230526288369334
	.quad	0x3fec905abecf1a57              # double 0.89262139575368848
	.quad	0x3fc32e6a7c99bc38              # double 0.14985400280008476
	.quad	0x3fd59f4b34ec2a1e              # double 0.33784752052511802
	.quad	0x3fe4ee2feda6fd6e              # double 0.65407558838334778
	.quad	0x3fdca700d5ffea00              # double 0.44769307039646833
	.quad	0x3fe61ea8442ed6df              # double 0.69124234501824933
	.quad	0x3fee717034fbb65a              # double 0.95134744976321461
	.quad	0x3fc1b4de920312f4              # double 0.13833219651691986
	.quad	0x3fd4b107dcc46a3c              # double 0.32330509719182365
	.quad	0x3fd73b7bdc8c0924              # double 0.36300560510439284
	.quad	0x3fe8f3eaa2219a62              # double 0.77977496782552813
	.quad	0x3fbfbd6092cd4d90              # double 0.12398341735870688
	.quad	0x3fdd2df2df317a62              # double 0.45592948719232684
	.quad	0x3fe4cf65e29c1159              # double 0.65031713733382468
	.quad	0x3fef44db9e8bddbe              # double 0.97715550390324046
	.quad	0x3fa5f10c33faf340              # double 0.042854672761200252
	.quad	0x3fdcdc1cc016f4ea              # double 0.45093458899266514
	.quad	0x3fd8913683574dc6              # double 0.38386309458038814
	.quad	0x3fe34b8ba2230a9e              # double 0.60297185580596468
	.quad	0x3fe028404f928209              # double 0.50491347829307742
	.quad	0x3fe67263949579ef              # double 0.70146349926272744
	.quad	0x3fbcc1d2f5aa03a8              # double 0.11233252046260012
	.quad	0x3fd160d1c68356f8              # double 0.27153438936271312
	.quad	0x3f961ccdc0c27a00              # double 0.021594252481571985
	.quad	0x3fd86d5309cd6672              # double 0.38167262990246009
	.quad	0x3fa827fd26f57c50              # double 0.047180090909698991
	.quad	0x3feb9185f2f8d373              # double 0.86151406722511437
	.quad	0x3fdd47ed1b5b46c0              # double 0.45751502677476807
	.quad	0x3fec39135f9239d0              # double 0.88196724573372798
	.quad	0x3fb4fab9548ec0a0              # double 0.081950743812515103
	.quad	0x3fe2e746b49a1215              # double 0.59073195718571248
	.quad	0x3fd24becc1ca15fe              # double 0.28588408398385912
	.quad	0x3fe7edf86b65057d              # double 0.74779911971579305
	.quad	0x3fe2111ef112d891              # double 0.56458994946184948
	.quad	0x3fe4ec5ecd339174              # double 0.65385379866033455
	.quad	0x3fd94f7bdd83e43e              # double 0.39547630913108722
	.quad	0x3fe04ed86402fd09              # double 0.50962466748743041
	.quad	0x3feff2ce28b64390              # double 0.99838931991154034
	.quad	0x3feb5d0b672cb2c3              # double 0.85510797644891345
	.quad	0x3fc70cfb657bb894              # double 0.18008367972601447
	.quad	0x3fe5725b4b43dff5              # double 0.67020954799863708
	.quad	0x3fecff53ef5e7e45              # double 0.90616795303135034
	.quad	0x3fe18320cda9f57d              # double 0.54725685280543213
	.quad	0x3fe501a340acc170              # double 0.65644991523553919
	.quad	0x3feb0879f60f12d0              # double 0.84478471811652334
	.quad	0x3fd1acdb54305fcc              # double 0.27617533895090385
	.quad	0x3fdad7943cbe252e              # double 0.41940790111455584
	.quad	0x3fc0047653210104              # double 0.12513617571858771
	.quad	0x3fe51c9cb8f4112c              # double 0.65974269984920886
	.quad	0x3fbfa92dba6ef358              # double 0.12367521096798606
	.quad	0x3fed8ba694d2d146              # double 0.92329720561114281
	.quad	0x3fec15942aebcc9c              # double 0.87763412840867571
	.quad	0x3fd2b70b383b905a              # double 0.2924221085688764
	.quad	0x3fe9cde7922b11ee              # double 0.80638483570561248
	.quad	0x3fec081a59f542b9              # double 0.87598912782603755
	.quad	0x3fc1edc9e28f5298              # double 0.14006923258297799
	.quad	0x3fc90f7f47420478              # double 0.1957854364336844
	.quad	0x3fee914a3e91597c              # double 0.95523559780376343
	.quad	0x3fe3f27508c70ef9              # double 0.62334682192201207
	.quad	0x3fea95409eeddd1f              # double 0.83071929016924517
	.quad	0x3fe905e3864578d9              # double 0.78196884369733788
	.quad	0x3fd112c7ef1e25e2              # double 0.26677130080551426
	.quad	0x3fefc611f2512c50              # double 0.99292847945742757
	.quad	0x3fee01ebf2e3c875              # double 0.93773457946214356
	.quad	0x3fefdab4f9d83f2c              # double 0.99544762418552101
	.quad	0x3f8a26c68dc6fc00              # double 0.012769271089267065
	.quad	0x3fcc26d1332d202c              # double 0.21993460654107488
	.quad	0x3fe3c3ee851c3210              # double 0.61766744611810687
	.quad	0x3fe8565b8da168f0              # double 0.7605417028637742
	.quad	0x3f947d3a008b3fa0              # double 0.020008951457213819
	.quad	0x3fe7f9854c7cdf74              # double 0.74920906962414202
	.quad	0x3fd61f6706bdb40c              # double 0.34566665323546952
	.quad	0x3fb3e72822f063a0              # double 0.077745922594103067
	.quad	0x3fee722d5b97b785              # double 0.95143764390171326
	.quad	0x3fc8860fb93179fc              # double 0.19159122984542865
	.quad	0x3fdefff99e9c0bb6              # double 0.48437347878660419
	.quad	0x3fe046454ee145f7              # double 0.50857797056431664
	.quad	0x3feb85dda5976c00              # double 0.86009104101265166
	.quad	0x3fd17cfac7689ee4              # double 0.27325314973357551
	.quad	0x3fcc2efa574d4250              # double 0.22018365156920305
	.quad	0x3fd695fc2ad96f94              # double 0.35290435966975875
	.quad	0x3fe9468c69497fb0              # double 0.78986187518966311
	.quad	0x3fee94d4ff74d048              # double 0.9556679715519829
	.quad	0x3fdceac8eee4f4fa              # double 0.45183013276603357
	.quad	0x3fdd84398b6f0c00              # double 0.46119536034183284
	.quad	0x3fe24046f317bfc5              # double 0.57034633139664292
	.quad	0x3fe96704a2751547              # double 0.79382545213653877
	.quad	0x3fd3a8efd82590ba              # double 0.30718608959274329
	.quad	0x3fea29f935bbae66              # double 0.81762371535064626
	.quad	0x3fe3941977655c10              # double 0.61182854957121613
	.quad	0x3fe49139c80ad2be              # double 0.64272774763829665
	.quad	0x3fd8ca1c0cb530c2              # double 0.38733578911775279
	.quad	0x3fb45c1b6f751ce8              # double 0.079530443869873957
	.quad	0x3fe8ea2ec7e07456              # double 0.77858675993378301
	.quad	0x3fea1b1748c582ba              # double 0.81580700123966854
	.quad	0x3fe84130a6a9f11e              # double 0.75795776893167832
	.quad	0x3fba4597a7b3a148              # double 0.10262439579276361
	.quad	0x3fd0c7ec26483ade              # double 0.26220229853144683
	.quad	0x3fd80df020f93ea2              # double 0.37585070819930355
	.quad	0x3fe1322bd43587ee              # double 0.53737441489306348
	.quad	0x3fa6f6202558c480              # double 0.044846539076737635
	.quad	0x3fd6cb8a73e32e90              # double 0.35617314641124498
	.quad	0x3fca395d9ae5733c              # double 0.20487566054625883
	.quad	0x3fdcf2766c500ca8              # double 0.4522987420788902
	.quad	0x3fef3a3d72eaddd4              # double 0.97585937924207621
	.quad	0x3fe9c401718f8e58              # double 0.80517646961056766
	.quad	0x3feabde407279b24              # double 0.83568002126125806
	.quad	0x3fecebe0e4ee9499              # double 0.90379376137993284
	.quad	0x3fe4b0cda9943eba              # double 0.64658244248308638
	.quad	0x3fe4d0f7ff57db35              # double 0.65050887939182778
	.quad	0x3fe384a403c8e5df              # double 0.60994148959360561
	.quad	0x3fe071c3c0153e43              # double 0.51388728634078296
	.quad	0x3fda02708b84a05a              # double 0.40639890312968918
	.quad	0x3fe37df33efd9742              # double 0.60912477782105889
	.quad	0x3feb4e99d2ca2287              # double 0.85334483308641118
	.quad	0x3fd6631138fa41fc              # double 0.3497965866490913
	.quad	0x3f985356b2916a20              # double 0.023755411766936629
	.quad	0x3fe0eb809b4f5dad              # double 0.52874784788121121
	.quad	0x3fb6ac219adff0b0              # double 0.088564014731619122
	.quad	0x3fe9ac540af966d6              # double 0.80228616851237677
	.quad	0x3fc52b42d146874c              # double 0.165382721123985
	.quad	0x3fc8e078de4a8bbc              # double 0.19435034612714996
	.quad	0x3febb3758e669a77              # double 0.86565664112715879
	.quad	0x3fe9d06a2ecb08c1              # double 0.80669125689771459
	.quad	0x3fe62cf276df470d              # double 0.6929867097589707
	.quad	0x3fdf269a94b45470              # double 0.4867311908904588
	.quad	0x3fe180113cc53bf5              # double 0.54688321942546614
	.quad	0x3fcccbb0d5edf390              # double 0.22496614881302124
	.quad	0x3fcdcec55edf5ae0              # double 0.23287264950223285
	.quad	0x3fe6e96bcf853584              # double 0.71599379092519699
	.quad	0x3fd1d921a4851cca              # double 0.27887764994052289
	.quad	0x3fc67ccbec6b4254              # double 0.17568348926444577
	.quad	0x3fce97d2e8d40b20              # double 0.23900829666680412
	.quad	0x3facddabe5430370              # double 0.056378719078117423
	.quad	0x3fced15fa79206c0              # double 0.24076457674168772
	.quad	0x3fe58fdaf8c3c910              # double 0.67381046854851157
	.quad	0x3fe1fe2ce8397934              # double 0.56227727276180994
	.quad	0x3fe6cfae7348db66              # double 0.71285173908732413
	.quad	0x3feba12c13cb62b5              # double 0.86342433801754359
	.quad	0x3fea609c3eb2e65c              # double 0.8242932533823466
	.quad	0x3fe6d7d181e4c7bf              # double 0.71384501809938417
	.quad	0x3fca8ff3b70fa664              # double 0.20751806677371853
	.quad	0x3fb54f93ee194670              # double 0.083245511655400283
	.quad	0x3fde51ae3d5852be              # double 0.4737353896210087
	.quad	0x3fb5a7c871076cc0              # double 0.084591415019008132
	.quad	0x3fddf6caf9f37dfa              # double 0.46818804177561868
	.quad	0x3fe4a6dd26f1a3a8              # double 0.64536912542563574
	.quad	0x3fd2d3f847468038              # double 0.2941876121567506
	.quad	0x3fe94d950309028a              # double 0.7907204684525635
	.quad	0x3fe47a42eb2d3c3e              # double 0.63992448742818175
	.quad	0x3fd90ccb130c89d4              # double 0.39140583858730094
	.quad	0x3fded576debcc8b8              # double 0.48177882911398795
	.quad	0x3fde8d9bd30ff0f2              # double 0.47739310847806771
	.quad	0x3fe99fc1767bc82e              # double 0.80075142995179305
	.quad	0x3fdf24328cea8474              # double 0.48658431779228484
	.quad	0x3fdd5e44bb4e5918              # double 0.4588786915932288
	.quad	0x3fef6f1509fef02f              # double 0.98230983688654827
	.quad	0x3fa0eb9e1318df00              # double 0.033047618704982185
	.quad	0x3fdda14cf4e377a0              # double 0.46297000803849109
	.quad	0x3fdb94a3b0ebe28e              # double 0.43094723012431124
	.quad	0x3fe8bfcb364cfddb              # double 0.77341232877364108
	.quad	0x3f74ea9ff25c3100              # double 0.0051065681380004779
	.quad	0x3fe8e9b9ad3d0af6              # double 0.77853092036852334
	.quad	0x3fd700d7275d22f8              # double 0.35942629665491621
	.quad	0x3f9464d4336bb740              # double 0.019915881765818044
	.quad	0x3fd05bca64da0a44              # double 0.25560245369721124
	.quad	0x3fec729684f2319f              # double 0.88898778883008223
	.quad	0x3fed9ffdbdb5d115              # double 0.92578017285134939
	.quad	0x3fccc61082d40780              # double 0.22479444873902921
	.quad	0x3fe799b1f045bc2f              # double 0.73751160553172734
	.quad	0x3fd17b20a5bd25ee              # double 0.27314010796962307
	.quad	0x3faa255f90fb1490              # double 0.051066385696267536
	.quad	0x3fcbd308b7df06b8              # double 0.21737774828038936
	.quad	0x3fc4be14602a6ed0              # double 0.16205076881020952
	.quad	0x3fc425fbfa67c980              # double 0.15740918852641173
	.quad	0x3fe3883f8b7f530c              # double 0.61038186307504949
	.quad	0x3fea2ddce3287dd9              # double 0.81809849135236867
	.quad	0x3fe3f1cce6e4442b              # double 0.62326665016201355
	.quad	0x3f5ace32d1283e00              # double 0.0016360756168330992
	.quad	0x3fe6d9afaae474b9              # double 0.71407302262709671
	.quad	0x3fd0a0d32dc5f438              # double 0.25981597394985867
	.quad	0x3fe6e7b7b221ac99              # double 0.71578583518329986
	.quad	0x3fdff2b0c2a9a02a              # double 0.49918765077609584
	.quad	0x3fbc02deaedf5af0              # double 0.10941879052493753
	.quad	0x3fe2ba2f7b1022ef              # double 0.5852277186941971
	.quad	0x3fd0683e9d62c8a0              # double 0.25636258477892149
	.quad	0x3fe40ce7b7cdf91a              # double 0.62657533549625843
	.quad	0x3fcbdaafa2a51784              # double 0.21761126939435027
	.quad	0x3fe27d3a74a2993d              # double 0.57778666286757352
	.quad	0x3fee0c43f97c33f6              # double 0.93899725654193733
	.quad	0x3fd5047745423190              # double 0.32839757693798166
	.quad	0x3fea70b7f5e40fef              # double 0.82625959420738393
	.quad	0x3fd48d9db37fe838              # double 0.32114355592023314
	.quad	0x3fe203653ef3e25c              # double 0.56291448874896899
	.quad	0x3fdf380701f601c4              # double 0.48779463950634416
	.quad	0x3feb95a5dbf031c8              # double 0.86201756436053589
	.quad	0x3fc00e7f37996198              # double 0.12544241156389258
	.quad	0x3fcd6c77010469a8              # double 0.22987258481664452
	.quad	0x3fe36d2c9ee1fe6c              # double 0.60707694083971608
	.quad	0x3fe59f26d688f806              # double 0.67567769910215314
	.quad	0x3fe54acd6b9c3b5e              # double 0.66538115518219931
	.quad	0x3fd4b70a655aa228              # double 0.32367191217284352
	.quad	0x3fdccde92659e3a4              # double 0.45006779427745358
	.quad	0x3fe2177594c967bc              # double 0.56536368427190764
	.quad	0x3fd69b049bb50e04              # double 0.35321154790673881
	.quad	0x3fb8a5bfdb077d68              # double 0.096279135679187555
	.quad	0x3fe9c806737e8cd8              # double 0.80566713864791506
	.quad	0x3feeaeff993ae701              # double 0.95886211326362069
	.quad	0x3fe15c05404a47c9              # double 0.54248297268554169
	.quad	0x3fe9be24d1e29fd0              # double 0.80446091645444007
	.quad	0x3fe00a83328b8ce6              # double 0.50128326294034475
	.quad	0x3fe44c492bd2035a              # double 0.6343122344843366
	.quad	0x3fe23fa433793446              # double 0.5702687268582245
	.quad	0x3fa10a307abf2840              # double 0.033280863746384615
	.quad	0x3febe95d5b40f0a9              # double 0.87223689864142273
	.quad	0x3fcd6466a09044f8              # double 0.22962649192826468
	.quad	0x3fe7cfb7f065499c              # double 0.74410626365925081
	.quad	0x3fdec16ffc4ca69a              # double 0.48055648459067302
	.quad	0x3fd530bad8ccfe66              # double 0.3310992352671519
	.quad	0x3fe2e3d7a369c274              # double 0.59031278530717524
	.quad	0x3fd5e1968925cad0              # double 0.34189380067179531
	.quad	0x3fea6d916f5556de              # double 0.82587501282497633
	.quad	0x3fe480069b16f95c              # double 0.64062814990010564
	.quad	0x3fc3fadde9be1cd4              # double 0.15609334862913349
	.quad	0x3fdb25bc739430d2              # double 0.42417823111533182
	.quad	0x3fa28026f3c833e0              # double 0.036133973368215555
	.quad	0x3fe037bcf32cb13d              # double 0.506803965521193
	.quad	0x3fdbc8d613fa85f6              # double 0.43413307143245505
	.quad	0x3fea9c4e573159b3              # double 0.83158032445753916
	.quad	0x3fe76e5a903c4040              # double 0.73222091837852332
	.quad	0x3feb57b7d7cbd8a3              # double 0.85445778033933484
	.quad	0x3fe01632639f2408              # double 0.50270957429268126
	.quad	0x3fd12633d8bb2b5a              # double 0.2679566971316284
	.quad	0x3fec1f9a5521d0d9              # double 0.87885777118074337
	.quad	0x3fde750d9b8bacba              # double 0.47589435758591103
	.quad	0x3fdbe718a9d9d1e0              # double 0.43598000132558745
	.quad	0x3feb8aa079c3d8e4              # double 0.86067222387535169
	.quad	0x3fee2b7673b44de8              # double 0.94280550573824672
	.quad	0x3fb25288135fe550              # double 0.071571831445813361
	.quad	0x3fe37b918b2acdeb              # double 0.60883404904455796
	.quad	0x3fe13926cdf6a779              # double 0.53822651126141274
	.quad	0x3fe7e4c902821173              # double 0.74667788019045955
	.quad	0x3fcaf9818ea006b4              # double 0.21073932136646578
	.quad	0x3fa1a6b054651700              # double 0.034474859525785106
	.quad	0x3fea241f84ca608c              # double 0.81690956054355146
	.quad	0x3fe8885c438aaf1d              # double 0.76664555732483886
	.quad	0x3feacad93f012567              # double 0.83726179414331348
	.quad	0x3fee739b348cecc2              # double 0.95161209357993237
	.quad	0x3f3d03428a8ce800              # double 4.4269918958017573E-4
	.quad	0x3fed077d980d727a              # double 0.90716438005217914
	.quad	0x3fc34af4a1f6b234              # double 0.15072496326810525
	.quad	0x3feb92cd73a444ab              # double 0.86167023264183251
	.quad	0x3fe54da25db4dea8              # double 0.66572683622412843
	.quad	0x3fe75b98366ea44c              # double 0.72993097907340987
	.quad	0x3fecacffeb62c22f              # double 0.89611812566551474
	.quad	0x3fc55d03de7eb97c              # double 0.16690109600081005
	.quad	0x3fd6de4a0cbc8082              # double 0.35731745952399063
	.quad	0x3fe68bf048f1e26e              # double 0.7045823502258608
	.quad	0x3fe8792bb617d6d3              # double 0.76479135098517259
	.quad	0x3fe8d652a7500b78              # double 0.77616245916611515
	.quad	0x3fcb36a5b9c10610              # double 0.21260520524997206
	.quad	0x3fd875c845af4832              # double 0.38218886189600021
	.quad	0x3fa49cdc73e97b60              # double 0.040259255551737594
	.quad	0x3fdb6b9c45bad7d8              # double 0.42844301995807887
	.quad	0x3fee2f220a274e46              # double 0.94325353606331741
	.quad	0x3faf730f07ca0b20              # double 0.061424703312715545
	.quad	0x3fb382e7012a22e8              # double 0.076216161522221548
	.quad	0x3faad0213acdf400              # double 0.052369154384884098
	.quad	0x3fddaf874c37ef22              # double 0.4638384098359315
	.quad	0x3fd93d6024d5e00e              # double 0.39437106702052993
	.quad	0x3fe770dbd2a8f66a              # double 0.73252669472249221
	.quad	0x3fd76a6964466b72              # double 0.36586985390174853
	.quad	0x3fe6cfbaa9f369e2              # double 0.71285756295702307
	.quad	0x3fecd913bb1376fb              # double 0.90149866617477359
	.quad	0x3feeaa99beebf0e4              # double 0.95832526482947999
	.quad	0x3fec92dc56b86072              # double 0.89292733132880486
	.quad	0x3fd266a4c1308840              # double 0.28751486650628877
	.quad	0x3fa1ed7a907ffd60              # double 0.03501494420924689
	.quad	0x3fe7c2b0cb191968              # double 0.74251594226443007
	.quad	0x3fb6a2dab54f9370              # double 0.088422459855406421
	.quad	0x3fd231cf62748078              # double 0.28429016699556753
	.quad	0x3fdf59f08b33733e              # double 0.48986447900624686
	.quad	0x3fa72f7a3b9d8360              # double 0.04528409936643274
	.quad	0x3fc133cc6a93aeac              # double 0.13439326480817237
	.quad	0x3fc5f9fa8eb33798              # double 0.17169124572540961
	.quad	0x3fc3b44a084c3c40              # double 0.15393948941388835
	.quad	0x3fe7444225e79e19              # double 0.72708232310555154
	.quad	0x3fd5cbf924017598              # double 0.34057453647786806
	.quad	0x3fd97be54fe6db9e              # double 0.39818699648770373
	.quad	0x3fe9648e47fad42c              # double 0.79352487619929013
	.quad	0x3fcf30e87c4cf8e0              # double 0.24368005818718697
	.quad	0x3fe28fe7d6c1402e              # double 0.58006660408319077
	.quad	0x3fed0efcc3b4ad8b              # double 0.90807951186927605
	.quad	0x3fdf12e78b479cb8              # double 0.48552883721863394
	.quad	0x3fd0f7d1efc20680              # double 0.26512573636873782
	.quad	0x3fc354bbab3861a8              # double 0.15102334843028342
	.quad	0x3fcaf37b1a4fce78              # double 0.21055544647935043
	.quad	0x3fc79fb62d0b2518              # double 0.18456151198760362
	.quad	0x3fcd1c3ad367cf9c              # double 0.22742400476965663
	.quad	0x3fddd25e16a06842              # double 0.46596481523159039
	.quad	0x3fe8a0d4f0f36659              # double 0.76963278828334147
	.quad	0x3fe2fd2530271b21              # double 0.59340152172885408
	.quad	0x3fea330722b8bd16              # double 0.81872898847169284
	.quad	0x3fe8bb6dcb65973c              # double 0.77287950254387949
	.quad	0x3fe19fd317678cd4              # double 0.5507598359221455
	.quad	0x3fc545e2d8baf468              # double 0.16619525511297017
	.quad	0x3fe8e3cd2f53c31c              # double 0.77780780070870347
	.quad	0x3fe092e9f9124596              # double 0.51793383261444847
	.quad	0x3feae326c0dd8b8a              # double 0.84022843998933294
	.quad	0x3fe2903d98c9b4aa              # double 0.58010749665631534
	.quad	0x3fe05fbbc561f120              # double 0.51168621588979946
	.quad	0x3fe4b22b31518783              # double 0.64674911148561909
	.quad	0x3fec7e0dbc52b0be              # double 0.89038740903699654
	.quad	0x3fe465d49f33853d              # double 0.63743048757547849
	.quad	0x3fbd3aa7a2889768              # double 0.11417625158409594
	.quad	0x3fdd9ce291a85e12              # double 0.46270050262816753
	.quad	0x3fd93f6f781ef9da              # double 0.3944967911774292
	.quad	0x3fe31dca50e27144              # double 0.59738651082765459
	.quad	0x3fbdf05be290fd40              # double 0.11694883614926699
	.quad	0x3fe234197738059c              # double 0.56885979924134089
	.quad	0x3fcdea7b427f8d5c              # double 0.23371830698952578
	.quad	0x3feba20fa1bb4ef6              # double 0.86353284443109035
	.quad	0x3fecbdcdc0d9dbc9              # double 0.89816939989292977
	.quad	0x3fe538eb2864d0d7              # double 0.66319806947151505
	.quad	0x3fe971e61cd38f2e              # double 0.79515367155224737
	.quad	0x3fcb73a62fa1652c              # double 0.2144668324060971
	.quad	0x3fdaafbfd7b375c6              # double 0.41697689117958381
	.quad	0x3fd84467315a5a0a              # double 0.37917499370215124
	.quad	0x3fef3207e063be06              # double 0.97485727144334144
	.quad	0x3fda416cda612fd0              # double 0.41024323774467764
	.quad	0x3fcef1a626331858              # double 0.24174954285826078
	.quad	0x3febf65df03f0dd4              # double 0.87382409022432705
	.quad	0x3fb6dddbd31e3a20              # double 0.089322794954775464
	.quad	0x3fb28498ed93fce8              # double 0.07233577537771263
	.quad	0x3fd63f62450f47da              # double 0.34761864418135036
	.quad	0x3fc914843f6016bc              # double 0.19593861670016632
	.quad	0x3fe94a871c3df8bc              # double 0.79034762874632447
	.quad	0x3fe3f0b6764abfbe              # double 0.62313387969879108
	.quad	0x3fc213efa27be558              # double 0.14123340066707146
	.quad	0x3fc34c5043844bd8              # double 0.15076640412061582
	.quad	0x3fe99d200bced4e3              # double 0.80043031984555701
	.quad	0x3feedd10724aedde              # double 0.96448538134375972
	.quad	0x3fde73739c263556              # double 0.47579660653066946
	.quad	0x3fef6c23aa6b6564              # double 0.98195060048162163
	.quad	0x3fee691a01b78233              # double 0.95032978377645916
	.quad	0x3fc32bbabe3fbc18              # double 0.14977201737880885
	.quad	0x3fe91870e6346ced              # double 0.78423352205154873
	.quad	0x3fdd400d0631300e              # double 0.45703435520840763
	.quad	0x3fc45f9a82872890              # double 0.15916758893428495
	.quad	0x3fbad536a1c24818              # double 0.1048158783835621
	.quad	0x3feaa10b3ab7cf79              # double 0.83215867489205586
	.quad	0x3fb514a2c631a098              # double 0.082346127879306841
	.quad	0x3fe4172cb475fca8              # double 0.62782893415705576
	.quad	0x3fdf6e206cb27050              # double 0.49109659781402559
	.quad	0x3fe9071a9f72b8f3              # double 0.78211718694890775
	.quad	0x3fef8c8f087f1d20              # double 0.98590804728965864
	.quad	0x3febe69d1d56bcf0              # double 0.8719010899566495
	.quad	0x3f90fe0413a87480              # double 0.016593993854361333
	.quad	0x3fea301164705aba              # double 0.81836766831369023
	.quad	0x3fe32b62eaf5dfb4              # double 0.59904619112693647
	.quad	0x3f9f6d684168c8c0              # double 0.030690793030040409
	.quad	0x3fedb405875077f7              # double 0.92822529247837238
	.quad	0x3fe9e48afa2764d1              # double 0.80914830072574706
	.quad	0x3fef784d345ee7aa              # double 0.98343525150925371
	.quad	0x3feb2722ce39baf4              # double 0.84852733877582275
	.quad	0x3fee9c5704cf7282              # double 0.956584462542722
	.quad	0x3fb76178eb1b4fa0              # double 0.091331059836476047
	.quad	0x3fd70909a0c09a44              # double 0.35992661188575803
	.quad	0x3fb90947f573da00              # double 0.09779786818021563
	.quad	0x3f921d074d5423c0              # double 0.017688860029952513
	.quad	0x3fea101f284c804c              # double 0.81446798201432946
	.quad	0x3fee52d5255b1cda              # double 0.94761140152049994
	.quad	0x3fd890171b23e198              # double 0.38379457140356399
	.quad	0x3fe3674ae4fb7b81              # double 0.60635895465007661
	.quad	0x3fd5d9d6e9a92e00              # double 0.34142086809580974
	.quad	0x3fc1c15d192c8688              # double 0.13871349076457684
	.quad	0x3fa179969b5ec620              # double 0.034130770174112479
	.quad	0x3fbb06e2805762c0              # double 0.1055738032658935
	.quad	0x3fdcfd932ace0438              # double 0.45297698192740965
	.quad	0x3fe72dbdc3dc6663              # double 0.72433365110482517
	.quad	0x3fd60bb23ac63910              # double 0.34446387996367012
	.quad	0x3fb27fb8067453c0              # double 0.072261334968358959
	.quad	0x3f969441ecf637e0              # double 0.022049932563781627
	.quad	0x3fee38cb03c7693c              # double 0.94443274248195718
	.quad	0x3f862feef0302c40              # double 0.010833613114320184
	.quad	0x3fd1b290166d9c54              # double 0.27652361097574851
	.quad	0x3fe395df1de08acd              # double 0.61204486689924809
	.quad	0x3f9f3f5e69ba8480              # double 0.03051517029110018
	.quad	0x3fc3bd9951d63990              # double 0.15422359939516328
	.quad	0x3feb960427aa4579              # double 0.86206252810568096
	.quad	0x3fdd932ec7886c1c              # double 0.46210832105288246
	.quad	0x3fd827f876f49a00              # double 0.37743960968728629
	.quad	0x3fd01bd928ce4d02              # double 0.251699724053836
	.quad	0x3feb712f6bb829b5              # double 0.8575665573019281
	.quad	0x3f883ade65292ac0              # double 0.011831033193762663
	.quad	0x3fee83ba6484594d              # double 0.95358008987640519
	.quad	0x3fe345cfa1d090d1              # double 0.60227185825763219
	.quad	0x3fe90c07fc3b155f              # double 0.78271865142657393
	.quad	0x3fe8874207478d3d              # double 0.76651097699906467
	.quad	0x3fe1a35ba86371ba              # double 0.55119116676683366
	.quad	0x3fec95362dbfc927              # double 0.89321431098349968
	.quad	0x3fe893de48f45376              # double 0.7680503296747776
	.quad	0x3fb0b27e30aab308              # double 0.065223585969487741
	.quad	0x3fe0c3af485f38f2              # double 0.52388729224347075
	.quad	0x3fdb67d129a9a1e4              # double 0.42821148937812681
	.quad	0x3feecd1c7a7df285              # double 0.96253799366202541
	.quad	0x3fe691e33f730346              # double 0.70530855553088467
	.quad	0x3fe58304a014280d              # double 0.67224341645601415
	.quad	0x3fe859e2b20a0e6d              # double 0.76097235463426005
	.quad	0x3f594687d7efcc00              # double 0.0015426947209078445
	.quad	0x3fad7cda2aa671f0              # double 0.057593171793289488
	.quad	0x3fd1d767799bee70              # double 0.27877222896470411
	.quad	0x3fd2c7437e5c76c0              # double 0.2934120878215758
	.quad	0x3fdcb2def1e000fc              # double 0.44841741200072227
	.quad	0x3fa965edef39d040              # double 0.049605784847614576
	.quad	0x3fe989b37359f6bc              # double 0.79805920152258336
	.quad	0x3fe5eb8e04a245a7              # double 0.68500424294523021
	.quad	0x3fe37b3fa37e65da              # double 0.60879499370929158
	.quad	0x3fd77b8f4d0044a0              # double 0.36691648978837499
	.quad	0x3fc846924f9c3b8c              # double 0.18965367209645156
	.quad	0x3fed2eb77868e2df              # double 0.91195271985551674
	.quad	0x3fec1b0617f00bf9              # double 0.87829880404785776
	.quad	0x3feeee81eae8dcc6              # double 0.96661468392167005
	.quad	0x3fd547e58f24981a              # double 0.33251322726062116
	.quad	0x3fe14ec4f1a51814              # double 0.54086539455670612
	.quad	0x3fe5740f2012c0a2              # double 0.67041736854846001
	.quad	0x3fecb26595c07d32              # double 0.89677695511264788
	.quad	0x3feaa1c990201313              # double 0.83224943303557308
	.quad	0x3fedf60fdb2e3359              # double 0.93628685768781417
	.quad	0x3feabb9c3868a521              # double 0.83540164010370088
	.quad	0x3fe9dbe0bf3fa9ae              # double 0.80809056618936892
	.quad	0x3fe69ad7741fca8f              # double 0.70640156441216273
	.quad	0x3fea830d7ee07fab              # double 0.82849764614728849
	.quad	0x3fe37b7bef318658              # double 0.60882374494048985
	.quad	0x3fe23e38a0f29387              # double 0.57009536204405797
	.quad	0x3fcfaad93a2590c4              # double 0.24740138377376841
	.quad	0x3fe1e8fa529468e3              # double 0.5596896756062758
	.quad	0x3fed34c6309d5a5c              # double 0.91269216055918489
	.quad	0x3fefcc42b9d001bc              # double 0.99368416110524249
	.quad	0x3feb5b599d1a7b4b              # double 0.8549011295725476
	.quad	0x3f72acbffda73e80              # double 0.0045592784540101627
	.quad	0x3fd2dd5570f4ae40              # double 0.29475914030874506
	.quad	0x3fee80a3aadcdd59              # double 0.95320304271346423
	.quad	0x3fc82df993aebbdc              # double 0.18890304289877136
	.quad	0x3fbfadae7a051740              # double 0.12374392012597202
	.quad	0x3fd6cdd53c35055e              # double 0.35631304626084226
	.quad	0x3fc9186985129e60              # double 0.19605750081722118
	.quad	0x3fee6f1c16d39b27              # double 0.95106319864575972
	.quad	0x3faf6e1e94f2d2e0              # double 0.061387019808000209
	.quad	0x3fec3fafa8c08835              # double 0.88277419051542572
	.quad	0x3fd742c293ffa2c4              # double 0.36344971135126181
	.quad	0x3fd3f348a00da650              # double 0.31172385816771442
	.quad	0x3fdd4ebd6f1fca40              # double 0.45793090679140747
	.quad	0x3fef0d2a031f4b97              # double 0.97035694703878305
	.quad	0x3fec4fcde5134b55              # double 0.88474173299105507
	.quad	0x3fd00cba782d829c              # double 0.25077687965498696
	.quad	0x3fda3232b6c2ad7a              # double 0.4093138489503968
	.quad	0x3fefd68a1b0e8156              # double 0.99493890079979042
	.quad	0x3fed8f4a4fd4d737              # double 0.92374148933479361
	.quad	0x3fd415d3d755d638              # double 0.3138322451480664
	.quad	0x3fef41c85a3d3d64              # double 0.97678010582778229
	.quad	0x3fe288dbcd1ea041              # double 0.5792063719027355
	.quad	0x3fdcc73abeb99454              # double 0.44966000199776102
	.quad	0x3fc85be3ef321c8c              # double 0.190304271502303
	.quad	0x3fafbba82e616450              # double 0.061978583966898371
	.quad	0x3fe44f47434d1a9b              # double 0.63467753548396233
	.quad	0x3fe67a01047f969c              # double 0.70239306334106599
	.quad	0x3fe20519c0396dee              # double 0.5631226305371777
	.quad	0x3fd6fdfa8d3759ea              # double 0.359251630693875
	.quad	0x3fe26cb2b57abe59              # double 0.575768808796009
	.quad	0x3f93cf601bb0a140              # double 0.019345761957226815
	.quad	0x3fe0e107dc8f065e              # double 0.52746956899518316
	.quad	0x3fde35f88e4faf76              # double 0.47204412362656656
	.quad	0x3fdbf2cae7cb14b4              # double 0.43669388423979716
	.quad	0x3fcacb7bf1b89244              # double 0.20933484366209332
	.quad	0x3fe7c7afacc08848              # double 0.74312576046600842
	.quad	0x3fdb7d0a861aa2d0              # double 0.42950690361116717
	.quad	0x3fd9a068719522fa              # double 0.40041552631423338
	.quad	0x3fc544b0b659ab20              # double 0.1661587610609212
	.quad	0x3f8bec141736e600              # double 0.013633877714585019
	.quad	0x3fe2d63fdbcf6410              # double 0.58865349704422165
	.quad	0x3fe1702adfa0b2ef              # double 0.54494231869975163
	.quad	0x3fe99d6e986a50c0              # double 0.80046777504551159
	.quad	0x3fe50e68ed948c2b              # double 0.65800901796717903
	.quad	0x3fe00f58b3bd526e              # double 0.50187335114840237
	.quad	0x3fe05b9cbe17db08              # double 0.51118313911033031
	.quad	0x3fd9267c9e2d3048              # double 0.39297404715467055
	.quad	0x3fefbf6ded40f518              # double 0.99211784685727177
	.quad	0x3fe3934a0d9bd66d              # double 0.61172964723546175
	.quad	0x3fb668db816cc840              # double 0.087537497613795701
	.quad	0x3fb6ea2ff3298ac8              # double 0.089510914674558184
	.quad	0x3fe41f4862f6dc05              # double 0.62881869629825415
	.quad	0x3fea74ec2b584371              # double 0.82677277055527842
	.quad	0x3fdb7d4367d8ec94              # double 0.42952046529144039
	.quad	0x3feeab018f11f9e5              # double 0.95837476676370825
	.quad	0x3fe1641b1069fac6              # double 0.54346993642669683
	.quad	0x3fc0dd929083d320              # double 0.13176185661691253
	.quad	0x3fc0bb2e4f503274              # double 0.13071230766981368
	.quad	0x3fe6fbfd049e9c30              # double 0.71826029684314641
	.quad	0x3fe936c0f93ff6cb              # double 0.78793381387341677
	.quad	0x3fe5cdc0288e153b              # double 0.68136604233647036
	.quad	0x3fe5f30a5a697372              # double 0.68591802271440216
	.quad	0x3feca90a63700655              # double 0.89563483640103903
	.quad	0x3fde317379b82bd6              # double 0.47176825415288925
	.quad	0x3fe6427fb9548049              # double 0.69561754414827093
	.quad	0x3fec01fc60de2792              # double 0.87524241370668876
	.quad	0x3fcf5ced24becaa8              # double 0.24502338689997782
	.quad	0x3febd1bad71cd437              # double 0.86935178770239119
	.quad	0x3fd7e223d455f30a              # double 0.37317748771583636
	.quad	0x3fd55f7e7b68e1ec              # double 0.33395349551895381
	.quad	0x3fe5e489a80af0cf              # double 0.68414767094466267
	.quad	0x3fee80238149fa43              # double 0.95314193012001913
	.quad	0x3fdd328b5cc1d450              # double 0.45620998438181903
	.quad	0x3fe858f8d0803e64              # double 0.76086083147852123
	.quad	0x3fe226291c657495              # double 0.56715827509073569
	.quad	0x3fec965041dbe165              # double 0.89334881651943177
	.quad	0x3fe6743de5f95386              # double 0.70168967167647689
	.quad	0x3fd08f6ee8ed13ee              # double 0.25875447031677268
	.quad	0x3fbd8f1e90f39158              # double 0.11546507872441703
	.quad	0x3fea0fa0d3cf5014              # double 0.81440774315933817
	.quad	0x3fed2b59e974787c              # double 0.9115418967883353
	.quad	0x3fbc3c2dc5f04ef8              # double 0.11029325563896097
	.quad	0x3fe31c912774fe70              # double 0.59723718363234291
	.quad	0x3fda6eb16d49a5d4              # double 0.41300616905809062
	.quad	0x3fe334ee0aee0bea              # double 0.60021116385212037
	.quad	0x3fc2a467c864e148              # double 0.14564225468508085
	.quad	0x3fea29a28ca08206              # double 0.81758239237029851
	.quad	0x3fd57a54a237a86c              # double 0.33559146729988387
	.quad	0x3fc5826e55aef268              # double 0.16804293807753656
	.quad	0x3fed39f31de9136f              # double 0.91332393495450315
	.quad	0x3fec1b92d0261691              # double 0.87836590436991646
	.quad	0x3fc012d479dcb5e4              # double 0.12557464552212061
	.quad	0x3fdff2edd191c99c              # double 0.49920220819253713
	.quad	0x3fe4ff75c7fe00d4              # double 0.65618409214951123
	.quad	0x3fb0fd6e5213a518              # double 0.066367049253717503
	.quad	0x3fd33819fa278b52              # double 0.30029916218898223
	.quad	0x3fec22f9bf9bab7e              # double 0.87926947997526361
	.quad	0x3fea65a89e69eda6              # double 0.82490950527374163
	.quad	0x3fecd66e30f702f2              # double 0.90117559016661475
	.quad	0x3fe8c4849b17324d              # double 0.7739890126336576
	.quad	0x3fed58e384db3ba3              # double 0.9171006769992015
	.quad	0x3fe9ec4b02ed4dea              # double 0.81009436198877194
	.quad	0x3fed8ddc9c15bed7              # double 0.92356710896816707
	.quad	0x3fe1b5f413dfd145              # double 0.55346111184784574
	.quad	0x3fec5484686aef90              # double 0.88531704324803862
	.quad	0x3fdde56401bdaa14              # double 0.46712589426047768
	.quad	0x3fee99ef9a8f61a0              # double 0.95629100978390013
	.quad	0x3fefdbcd7418b6f8              # double 0.99558136630159221
	.quad	0x3f9f25a7769d8860              # double 0.030417076697070278
	.quad	0x3fe2306033f48df6              # double 0.56840524814145854
	.quad	0x3fce73c85ad0b7c0              # double 0.23790840563145643
	.quad	0x3fe448da71aa5a6a              # double 0.63389322471887266
	.quad	0x3f9c889f6e3d2fe0              # double 0.027864924529509838
	.quad	0x3fd4b97d3610e30c              # double 0.32382135658149092
	.quad	0x3fd68b4e9bba0812              # double 0.35225262839969773
	.quad	0x3fb5d32a87ce9040              # double 0.085253389507273347
	.quad	0x3fed1078df3460d4              # double 0.90826076120995447
	.quad	0x3fb2b3c529df6530              # double 0.07305557510644145
	.quad	0x3fe00e49c7572153              # double 0.50174416478788897
	.quad	0x3fe2f4e07c74d825              # double 0.59239219959159028
	.quad	0x3fc344855f53bee8              # double 0.15052859453816514
	.quad	0x3fdb0ae850ef4736              # double 0.42254074004914643
	.quad	0x3fedc005472851c7              # double 0.92969001672695917
	.quad	0x3fd461a64d15aa0c              # double 0.31846005943103317
	.quad	0x3fed90ff88f24427              # double 0.92394997355780084
	.quad	0x3fef8127cdeeaf15              # double 0.98451605054057955
	.quad	0x3fef3fcdbed9b753              # double 0.97653853679160318
	.quad	0x3fe2e95b6f2bb398              # double 0.59098598206547859
	.quad	0x3fe64e777db3fd97              # double 0.6970784621370737
	.quad	0x3fbf953e623f18d0              # double 0.12337102793307797
	.quad	0x3fd01e77c1f75e36              # double 0.25185960714358957
	.quad	0x3fb44f7932fdc4f8              # double 0.079337668370289438
	.quad	0x3fead4436648eafd              # double 0.83841104485995255
	.quad	0x3fd3514c92d0cd26              # double 0.30183710420097254
	.quad	0x3fdc2dac23b2df58              # double 0.44028762327387971
	.quad	0x3f8c2298d3ee5040              # double 0.013737863509767689
	.quad	0x3fe1189930f11c6b              # double 0.53425273474648571
	.quad	0x3fe4a5883287175e              # double 0.6452065455311915
	.quad	0x3fd25f53c04dbb44              # double 0.28706830768253533
	.quad	0x3fecaa6d457588d8              # double 0.89580405775293581
	.quad	0x3fe3c39d151155ea              # double 0.61762861361301913
	.quad	0x3fc1049b82f4e678              # double 0.13295310873381871
	.quad	0x3fde66758883b40e              # double 0.47500360805025899
	.quad	0x3fe523bc25d87364              # double 0.66061217681599915
	.quad	0x3fc8500a4225178c              # double 0.18994262914401039
	.quad	0x3fed7c27d583cd01              # double 0.92140571310156372
	.quad	0x3fe656f3fc123726              # double 0.69811438782355562
	.quad	0x3fef9c868beadf60              # double 0.98785712554579774
	.quad	0x3fef1dba14d58eb4              # double 0.9723787695806636
	.quad	0x3fecca15081fb655              # double 0.89966823183722033
	.quad	0x3fe35127ab86d1ed              # double 0.60365661145493521
	.quad	0x3fc2b0cde2204b84              # double 0.14602063695255307
	.quad	0x3fda4998fb5d96d4              # double 0.41074204013271509
	.quad	0x3febeaa1f5649a79              # double 0.8723916809875184
	.quad	0x3fba3e09908955b8              # double 0.10250911501619597
	.quad	0x3fe03d4704402851              # double 0.50748015241812017
	.quad	0x3fb0ddcbb549f528              # double 0.065884334335312489
	.quad	0x3fdd4a192ed8f288              # double 0.45764760565706597
	.quad	0x3fe790d64e66cd2c              # double 0.73643031418615612
	.quad	0x3fbc8b1d6e29da20              # double 0.11149772586382101
	.quad	0x3fe4ae34e44055a2              # double 0.64626545505841571
	.quad	0x3fd230498e9ad024              # double 0.2841972248672866
	.quad	0x3fe0b679a3eed497              # double 0.52227479952002198
	.quad	0x3fd1ad74cb2b5ee8              # double 0.27621192780269022
	.quad	0x3fddef5765517746              # double 0.46773323912008313
	.quad	0x3fe78490e0623233              # double 0.73493236374776527
	.quad	0x3fec2075f7e22aba              # double 0.87896250166644241
	.quad	0x3fd7e4110072a8dc              # double 0.37329506915797395
	.quad	0x3f98689b78051860              # double 0.023836545181687874
	.quad	0x3feb73de4d1f91a3              # double 0.85789408743999152
	.quad	0x3fb06f7ad3cfaa90              # double 0.064201046668737272
	.quad	0x3fccaff90f756530              # double 0.22412026648343319
	.quad	0x3f9ba643d2473b00              # double 0.027001437863698463
	.quad	0x3fe9bc1e79b3f12e              # double 0.8042137505540603
	.quad	0x3fdbc571e6996ad6              # double 0.43392608184300963
	.quad	0x3fe56a51093ed590              # double 0.66922809415579998
	.quad	0x3fe65c70c771999e              # double 0.69878424600465272
	.quad	0x3fe4485eb059ff44              # double 0.63383421367323267
	.quad	0x3fa17d41d9ead200              # double 0.034158761836270202
	.quad	0x3fe397ae19526b91              # double 0.61226563401884182
	.quad	0x3fa850c2ffe1d0a0              # double 0.047491163001639025
	.quad	0x3fdf771b63d9744e              # double 0.49164471388741482
	.quad	0x3fe45ae93a0721a5              # double 0.63609753926816792
	.quad	0x3fca92d03411fcd8              # double 0.20760538618558289
	.quad	0x3fede3f80f769e24              # double 0.93407824535546923
	.quad	0x3fdc554fe97cf390              # double 0.44270704080172951
	.quad	0x3fe84f7b47a3860b              # double 0.7597023390955554
	.quad	0x3fe185a71e9d6a88              # double 0.54756504039262754
	.quad	0x3fa324198d8b2950              # double 0.037384794739028337
	.quad	0x3fe33e05385e8462              # double 0.60132084855662193
	.quad	0x3fa7e2df0b6aa880              # double 0.046652765411026031
	.quad	0x3fdf75b0dc0abaec              # double 0.4915582798811744
	.quad	0x3fc6ca99f5970c48              # double 0.17805790416432132
	.quad	0x3fc24799d0baa510              # double 0.1428100842652289
	.quad	0x3fa279a926654b70              # double 0.036084447800610486
	.quad	0x3fd9feb135ed382a              # double 0.40617017999909655
	.quad	0x3fe5c0966439b402              # double 0.67975921225809111
	.quad	0x3fe01f96e12181ba              # double 0.5038561246001827
	.quad	0x3fef001bb1f93fb9              # double 0.96876320610498745
	.quad	0x3feca3bcacf40a0b              # double 0.89498742847382695
	.quad	0x3fe7611f612d67a7              # double 0.73060578327134784
	.quad	0x3fec6048b040c078              # double 0.88675341057206847
	.quad	0x3fe7f1cb116bd787              # double 0.74826577570523589
	.quad	0x3fe5692d0d610ef8              # double 0.66908886540519941
	.quad	0x3fedb3a1c785438f              # double 0.92817772835597789
	.quad	0x3fce37d8e9815f90              # double 0.23607932473782656
	.quad	0x3fe81c81fa702739              # double 0.75347994722071754
	.quad	0x3feceace93456edc              # double 0.90366295589361866
	.quad	0x3fc6877ed4942bc0              # double 0.1760099924070726
	.quad	0x3fdf433a7a9bdf7e              # double 0.48847829793475472
	.quad	0x3fe55edb6cad5d08              # double 0.66782923913970738
	.quad	0x3fc4a238d4e144bc              # double 0.16120062250641876
	.quad	0x3f3e3dfbb7903000              # double 4.6145816264764328E-4
	.quad	0x3fefa1af184533bc              # double 0.98848681202218058
	.quad	0x3fc3f60052628630              # double 0.15594486258218998
	.quad	0x3fa49951d0376b30              # double 0.040232235590983101
	.quad	0x3fe501292fcad7a1              # double 0.65639170965618032
	.quad	0x3fe4fe7d2d17d905              # double 0.6560655480123222
	.quad	0x3fec2cd0c34f20a1              # double 0.88047063967043837
	.quad	0x3fe594332dd61579              # double 0.67434081032176529
	.quad	0x3fd0475d7aa3704e              # double 0.25435578323754704
	.quad	0x3fd0ce8ab8f76446              # double 0.26260631621477548
	.quad	0x3fedbc8ec6673b96              # double 0.92926729918132156
	.quad	0x3fd295014180f502              # double 0.29034453770493951
	.quad	0x3fc6d8b3d394a7a8              # double 0.17848823386276291
	.quad	0x3feeb2225d6786bb              # double 0.95924490206763068
	.quad	0x3fe62a9819f17176              # double 0.69269948069590614
	.quad	0x3fc906d15bb1af0c              # double 0.19552056290864817
	.quad	0x3fe038c47351b36b              # double 0.50692961238165191
	.quad	0x3fe8aa401191d738              # double 0.77078250342922328
	.quad	0x3fd011f58b167902              # double 0.25109613974372291
	.quad	0x3fe42d4663fda683              # double 0.63052672891099382
	.quad	0x3fc44c6db88325a0              # double 0.15858241567029285
	.quad	0x3fdf8fb070c019b8              # double 0.49314509402065765
	.quad	0x3fc261bed7d47fbc              # double 0.14360795534684978
	.quad	0x3fd765204074ac58              # double 0.36554724020488072
	.quad	0x3fe97c06e29301ce              # double 0.79639000180037001
	.quad	0x3fc5ba1068b2d130              # double 0.16974072563392317
	.quad	0x3fd1e964c363d21a              # double 0.27987021523520783
	.quad	0x3fdd41116a907d50              # double 0.45709643751793738
	.quad	0x3fec6c900d6fe543              # double 0.8882522833293155
	.quad	0x3fef7c326f7a792c              # double 0.98391076825263246
	.quad	0x3fe329c144bb4736              # double 0.59884704040653136
	.quad	0x3fe7591d86b1f3ed              # double 0.72962833697931517
	.quad	0x3fe56380e7ed8c8d              # double 0.66839642809317612
	.quad	0x3fe8331d992135dc              # double 0.75623969944143309
	.quad	0x3fe6b9e5be29152c              # double 0.71019255772322287
	.quad	0x3fd509e077880bec              # double 0.32872783349028967
	.quad	0x3fc4af8215dfa230              # double 0.16160608356519068
	.quad	0x3fcf4e8e0baffddc              # double 0.2445848042552673
	.quad	0x3feacb1ca538e568              # double 0.83729393262835305
	.quad	0x3fca9430c1362fec              # double 0.20764741357959282
	.quad	0x3fcea26bfa1afa48              # double 0.23933171951462584
	.quad	0x3fbc377b771045a0              # double 0.11022159249139074
	.quad	0x3fd775473b1d26cc              # double 0.36653309605445084
	.quad	0x3fe685e193942a98              # double 0.70384291480998495
	.quad	0x3fe33da8523c5933              # double 0.60127655088107301
	.quad	0x3fd72622b355bf6a              # double 0.36170260918787867
	.quad	0x3fe80e33f58ebb3f              # double 0.75173376045663776
	.quad	0x3fd5a85cf570556a              # double 0.33840106934197556
	.quad	0x3fe25366c7accf3e              # double 0.5726808452513763
	.quad	0x3fe1d0ecf73e7eaa              # double 0.55675361909739718
	.quad	0x3fe8efb8cdde6433              # double 0.77926292618497539
	.quad	0x3fe75ad626817a84              # double 0.72983844299945178
	.quad	0x3fca305abd04499c              # double 0.20460066060384186
	.quad	0x3febdeb71b6c9a0e              # double 0.87093692165655212
	.quad	0x3feca0e4351fdc0b              # double 0.89464006782407191
	.quad	0x3fe03da3a6d239ab              # double 0.507524324247972
	.quad	0x3fbb4befd68ff3d8              # double 0.10662745464647061
	.quad	0x3fe344b5258e2df9              # double 0.60213715872799789
	.quad	0x3fb3a682b2d99e50              # double 0.07675949922997316
	.quad	0x3fe9c1cc98e18e58              # double 0.80490712985597224
	.quad	0x3fc645b74873c028              # double 0.17400256192877461
	.quad	0x3fd71497d7bf1d7a              # double 0.36063190526007072
	.quad	0x3feaca460474a86c              # double 0.83719159002545273
	.quad	0x3fe5afeae17e5c97              # double 0.67772430459708033
	.quad	0x3fe2286e6f39f1ee              # double 0.56743547176261955
	.quad	0x3fe2e1cf69f85b45              # double 0.59006472298902024
	.quad	0x3fd742a2ba97a37a              # double 0.36344211789997127
	.quad	0x3fc3273be7fb8764              # double 0.14963482692024421
	.quad	0x3fd2840b9da95814              # double 0.28930941006308442
	.quad	0x3fea61d5423eac7d              # double 0.8244425100177889
	.quad	0x3fed1cc901b14c40              # double 0.90976381617145563
	.quad	0x3fd044ee69798b12              # double 0.25420723247786825
	.quad	0x3fe87fde429ed869              # double 0.76560891162695299
	.quad	0x3fe7efc92573b961              # double 0.74802071871617326
	.quad	0x3fe13d27cf9610b5              # double 0.5387152723710843
	.quad	0x3f9f06755ca7b980              # double 0.030298074512694395
	.quad	0x3fd727984eed290a              # double 0.36179168422371843
	.quad	0x3fc177396b31d724              # double 0.13645093664279628
	.quad	0x3fde35b33f0b92ec              # double 0.47202759892233703
	.quad	0x3fea11bf5d927bac              # double 0.81466644550152045
	.quad	0x3fe64ab0abb2ddb1              # double 0.69661744627858557
	.quad	0x3fe2ec7c951586ef              # double 0.59136799924837458
	.quad	0x3fce6636803781a8              # double 0.2374942899759962
	.quad	0x3fe177a30450e008              # double 0.54585409968331167
	.quad	0x3fe1fca7292a232e              # double 0.56209142723046113
	.quad	0x3fe0f7cf2f7bf39a              # double 0.53025016092543642
	.quad	0x3fe37279340fce7b              # double 0.60772380989369823
	.quad	0x3fecd907fc03da16              # double 0.90149306508721128
	.quad	0x3fef3f2005de3d03              # double 0.97645569940678489
	.quad	0x3fe35459d11fb914              # double 0.60404673428073119
	.quad	0x3fba439a5849ea18              # double 0.10259403853880433
	.quad	0x3fd3681fff5cba02              # double 0.30323028505054606
	.quad	0x3fefe60d35ccbe21              # double 0.99683247096794869
	.quad	0x3fec520146e629ae              # double 0.88501037452197351
	.quad	0x3fdfbbdde8831d64              # double 0.49584148126856165
	.quad	0x3fc03a04852b1be8              # double 0.12677055837977425
	.quad	0x3f776b7d2e2ae200              # double 0.0057177438599684827
	.quad	0x3fb9008f70d67700              # double 0.097664799736289609
	.quad	0x3fe256dde04ab02e              # double 0.57310384566290451
	.quad	0x3fed4a10477d4b70              # double 0.91529096567897561
	.quad	0x3f9ec8510e1274e0              # double 0.030061022266285486
	.quad	0x3fe26965f3f2026b              # double 0.57536599774910024
	.quad	0x3fefaca3964b67ab              # double 0.98982409815220273
	.quad	0x3fccfcd8d0e0ac08              # double 0.22646627616026671
	.quad	0x3fee7af518b60445              # double 0.95250944925658898
	.quad	0x3fea8c3c1f4e3c39              # double 0.82961851229072814
	.quad	0x3fc1bfe1b3427314              # double 0.13866826298626533
	.quad	0x3fc730b5ee9465a4              # double 0.1811740317287277
	.quad	0x3fe36fe7202099c6              # double 0.60741001391289084
	.quad	0x3fbf0c20b35a59e0              # double 0.12127880457624185
	.quad	0x3fecce66b2b3c8f5              # double 0.90019545462408124
	.quad	0x3fc9a4a912923474              # double 0.20033753783028241
	.quad	0x3fa31597f609bf90              # double 0.037274121078438971
	.quad	0x3fd5a6be8e242a58              # double 0.33830226784690387
	.quad	0x3fe64e388711760f              # double 0.69704843884000123
	.quad	0x3feb5c3c2ad91e04              # double 0.85500915879032435
	.quad	0x3feec5b9d7006742              # double 0.96163646690840943
	.quad	0x3fedb34300e7a814              # double 0.92813253571262288
	.quad	0x3f5c8a5312310c00              # double 0.0017419635048703253
	.quad	0x3fecbc70e1cdb563              # double 0.89800304510360396
	.quad	0x3fcc0b271c671a7c              # double 0.21909035574772762
	.quad	0x3fd90c06cf05315c              # double 0.39135904518913889
	.quad	0x3fe328a2aecebe3e              # double 0.59871038572413915
	.quad	0x3fcc803bd2bcd21c              # double 0.22266338148041676
	.quad	0x3fc5bf3b3255fc38              # double 0.16989841420942908
	.quad	0x3fdc20cb484d1de2              # double 0.43950159130733202
	.quad	0x3fd35bdc90c3444a              # double 0.3024817861269794
	.quad	0x3fe283e505d3efac              # double 0.5786004175019932
	.quad	0x3fd7c487884c504c              # double 0.37137020407067634
	.quad	0x3fb34ebb5c4893c8              # double 0.075420103101875857
	.quad	0x3fec39c5068211fa              # double 0.88205195685492233
	.quad	0x3fe686939028532a              # double 0.70392778545155932
	.quad	0x3fe59da1af186e3a              # double 0.67549213598562763
	.quad	0x3fe00b7e44ef721f              # double 0.50140298332150113
	.quad	0x3fd634bec08ebcf4              # double 0.3469693069882418
	.quad	0x3fe8b824d59d8434              # double 0.77247850152719488
	.quad	0x3fee4ba0a2b68977              # double 0.94673187045945795
	.quad	0x3fde6fbbbdce3f7e              # double 0.47556966338833451
	.quad	0x3fdceddae64980cc              # double 0.45201752175308907
	.quad	0x3fe4c447bbc67caf              # double 0.64895998644705866
	.quad	0x3fe5aec1f151680f              # double 0.67758271343632426
	.quad	0x3feb8b131701ee8f              # double 0.86072687619840049
	.quad	0x3fe1da4ee42d1d13              # double 0.5578989464346783
	.quad	0x3feced0e2a86fc49              # double 0.90393741899595981
	.quad	0x3fe108708fb4106c              # double 0.5322802359301142
	.quad	0x3fdd384e0d79941a              # double 0.45656157794866348
	.quad	0x3fe41cbd880d9e90              # double 0.62850834439173475
	.quad	0x3fee285e2cd3764e              # double 0.94242771868784714
	.quad	0x3fe99c0acd69a7b7              # double 0.80029811973257992
	.quad	0x3fd5666d76713e6e              # double 0.33437668387066466
	.quad	0x3fc2cd6cfc07e5a0              # double 0.1468940954799054
	.quad	0x3fd48e6962f1992c              # double 0.32119211828684757
	.quad	0x3fd00f94158b203e              # double 0.25095083335736834
	.quad	0x3fe2eb3991fef2cc              # double 0.59121397509405815
	.quad	0x3fa40d7c9c50b630              # double 0.039165395814375947
	.quad	0x3fe6f15c014c4026              # double 0.71696281674849582
	.quad	0x3fe5166f48e9f4d3              # double 0.65898861161226774
	.quad	0x3fe493dcc30934cc              # double 0.64304960339509298
	.quad	0x3fe375cc5a078bb8              # double 0.60812966903573962
	.quad	0x3fe93771bc4f86ad              # double 0.78801810054229338
	.quad	0x3feb3e76eae5ac63              # double 0.85137506368972671
	.quad	0x3fd5350594c75f28              # double 0.33136119393519659
	.quad	0x3f82d1eac9e5ef80              # double 0.0091894476761280597
	.quad	0x3fc50032ad806898              # double 0.16406854125745407
	.quad	0x3fef812db61bc30b              # double 0.98451886718803061
	.quad	0x3fe917a65c18a03d              # double 0.78413694369829268
	.quad	0x3feb43e44d371ca0              # double 0.85203757363423804
	.quad	0x3fe6554573844ad5              # double 0.69790909349316144
	.quad	0x3fea5375e5273c94              # double 0.82268805271623302
	.quad	0x3fea2d2e24fdbc87              # double 0.81801516747317826
	.quad	0x3fdb3bc77e514b4c              # double 0.42552363715838193
	.quad	0x3feae904b5f14ac0              # double 0.84094462905553513
	.quad	0x3fe20570bd642d9b              # double 0.5631641100930439
	.quad	0x3fee68da8cb0d3d7              # double 0.95029952505739856
	.quad	0x3faa8a58c17f1e50              # double 0.051836751575646489
	.quad	0x3fd5bca63ce0eb30              # double 0.3396392435567348
	.quad	0x3fead635f8985f32              # double 0.83864878228903295
	.quad	0x3febfc83156ae105              # double 0.87457422431091969
	.quad	0x3fd8b01975b84650              # double 0.38574825759960607
	.quad	0x3fc2ebc50fe884dc              # double 0.14782012249728538
	.quad	0x3fd218a92a3d45d2              # double 0.28275517582832521
	.quad	0x3fe18f359d1f0f2e              # double 0.54873161971815931
	.quad	0x3fde40a617a4fa44              # double 0.47269584950473509
	.quad	0x3fe02e288ed6b7f1              # double 0.50563457391922217
	.quad	0x3feadd9700d4d01b              # double 0.8395495430218064
	.quad	0x3fe219477cdc05db              # double 0.56558584581960802
	.quad	0x3f85a8bee9eb86c0              # double 0.01057576323859466
	.quad	0x3fd4c4086be4c40c              # double 0.32446489845739346
	.quad	0x3fe265f185e2fdcb              # double 0.57494426870101145
	.quad	0x3fead071d56cd729              # double 0.83794490513421238
	.quad	0x3fb407c0abc74a28              # double 0.078243295610527341
	.quad	0x3fea8df34522f463              # double 0.8298279142687871
	.quad	0x3fe5164997beb50d              # double 0.65897063863454408
	.quad	0x3fce7398aba392a4              # double 0.23790272122200407
	.quad	0x3fcf45f71227bc30              # double 0.24432266603932495
	.quad	0x3fe0c94de36c404f              # double 0.5245732728817617
	.quad	0x3fe84c70a00fd5fa              # double 0.75933104765016357
	.quad	0x3fe0cb27b6adfaf2              # double 0.52479921035396004
	.quad	0x3fcb3e78bf16acac              # double 0.21284398394104664
	.quad	0x3fd959ef24c47c7c              # double 0.39611414518908084
	.quad	0x3fcf9ccf1f3c75b0              # double 0.2469729330559125
	.quad	0x3fea7364f42b4ff9              # double 0.82658622445387586
	.quad	0x3fdeb82c56f1959c              # double 0.47999104014010086
	.quad	0x3fc2b13389663cc0              # double 0.14603275498345702
	.quad	0x3fdf405fce53ef2e              # double 0.48830409192281621
	.quad	0x3fd291adbddf952a              # double 0.2901415209037902
	.quad	0x3feffc76636dc82c              # double 0.99956817073530634
	.quad	0x3fe0f1db7ac047e0              # double 0.52952360129188136
	.quad	0x3fd79053f2e2cec0              # double 0.36818407744724979
	.quad	0x3feb42db30051723              # double 0.85191115740665102
	.quad	0x3fef2993b58e66b1              # double 0.97382531604963251
	.quad	0x3fee0b9c30809482              # double 0.93891725037669027
	.quad	0x3fd5eb30f4307aa2              # double 0.34247993322962078
	.quad	0x3fc8653dbfddb810              # double 0.19058963650189797
	.quad	0x3fcc126fbfe48fbc              # double 0.21931263799444689
	.quad	0x3fe8b71342378b29              # double 0.77234805043221855
	.quad	0x3fefcb1dfebedf06              # double 0.99354457621572645
	.quad	0x3fdc6c53b1dbcd06              # double 0.44411175126079205
	.quad	0x3fe839d171a3f2a1              # double 0.75705787845034334
	.quad	0x3fc084f4494772b8              # double 0.12905744150238774
	.quad	0x3fd9cae745304280              # double 0.40300924069109811
	.quad	0x3fc31ac632095a7c              # double 0.14925458377065925
	.quad	0x3fe207054478f45a              # double 0.56335700391322097
	.quad	0x3fdd608a02823ab0              # double 0.45901727910033241
	.quad	0x3fdb66a580ce3b80              # double 0.42814004496261049
	.quad	0x3fcabc60d78166fc              # double 0.20887384913185503
	.quad	0x3fc0b73403e66668              # double 0.13059091749601071
	.quad	0x3feebf61a1a0fad7              # double 0.96086198394899724
	.quad	0x3fbe5bebc2527bf0              # double 0.11859010214037347
	.quad	0x3fe347a5e9c1ad20              # double 0.60249610572410361
	.quad	0x3fe6134e92a88eef              # double 0.68985680240845493
	.quad	0x3fe4b0804fcb6488              # double 0.64654555878509345
	.quad	0x3fb4c909ef4b0a20              # double 0.081192608758137386
	.quad	0x3fc3c13ab1adf38c              # double 0.15433438945538247
	.quad	0x3fbd1ebaf958c8a0              # double 0.11375015819138179
	.quad	0x3fe58e5a7e7eff65              # double 0.67362713533655649
	.quad	0x3f9df567c9b9d660              # double 0.029256459891675468
	.quad	0x3fe637eb1e867abb              # double 0.69432598077749874
	.quad	0x3fecedcfdd549402              # double 0.9040297816142131
	.quad	0x3fe56100812e0632              # double 0.66809106092859438
	.quad	0x3fef7e76a5e1a3b5              # double 0.98418743513786088
	.quad	0x3fc2e1ea3057e2cc              # double 0.14751937256348524
	.quad	0x3fe2d4dd3110931f              # double 0.58848437865217196
	.quad	0x3fd8254a53452978              # double 0.37727602130748705
	.quad	0x3fc8d06b46653ef4              # double 0.19386044442443728
	.quad	0x3fe696eb37556a78              # double 0.70592270667414336
	.quad	0x3f8ad3b506668b80              # double 0.013099111802892471
	.quad	0x3fe1a2ea2910c7f8              # double 0.55113704701056943
	.quad	0x3fbd937874ae5ee8              # double 0.11553147171650446
	.quad	0x3fbb010c67342640              # double 0.10548474807378572
	.quad	0x3feafd5b5f435771              # double 0.84342735868516006
	.quad	0x3fef11164149171a              # double 0.97083580733371666
	.quad	0x3fd9d412c32a43cc              # double 0.40356892642108444
	.quad	0x3fd7ae981815da18              # double 0.37003137924276208
	.quad	0x3fe4af5292f391b4              # double 0.64640167905286328
	.quad	0x3fe0bef57225b483              # double 0.52331039709464766
	.quad	0x3fa87408ae748980              # double 0.047760268493465041
	.quad	0x3fb04ea910468980              # double 0.063700262521285467
	.quad	0x3fea2b7bdb32c17d              # double 0.81780808269654381
	.quad	0x3fcf174c5ac3e31c              # double 0.24289850646871336
	.quad	0x3fdeb0344643ba06              # double 0.47950465070508164
	.quad	0x3fe11db33f8d759d              # double 0.53487551128971556
	.quad	0x3fd1f900bbaeb2ce              # double 0.28082292869912073
	.quad	0x3fdccecc7e0a82e6              # double 0.45012199696252109
	.quad	0x3fc98b7520411c44              # double 0.19956840586584879
	.quad	0x3fe1adcca1cbe4ef              # double 0.55246574021216854
	.quad	0x3fbee5609d4ccaf8              # double 0.12068752136546468
	.quad	0x3fc4e8978aa83d5c              # double 0.16334814329500602
	.quad	0x3feadf98c8886d4f              # double 0.83979453245721369
	.quad	0x3fe4a7d785c4ff88              # double 0.64548851134166885
	.quad	0x3fd702bd48000680              # double 0.35954219847926794
	.quad	0x3fd436b326f169f6              # double 0.3158386116316757
	.quad	0x3fec0c77a71624d8              # double 0.87652189859468432
	.quad	0x3fddedec8998b2b0              # double 0.46764672696262277
	.quad	0x3fab6d5603fa5d70              # double 0.053568542466730373
	.quad	0x3fd7520f96af66c0              # double 0.36438359942767917
	.quad	0x3fe9ff226a664d9c              # double 0.81239434033561819
	.quad	0x3f85cbab1314e7c0              # double 0.010642372627092445
	.quad	0x3fbedc15da0b06c8              # double 0.12054573605839913
	.quad	0x3fd6b40d75a48f06              # double 0.35473953712993056
	.quad	0x3fe0f9db9d93afa9              # double 0.53050022865999324
	.quad	0x3f9e9dfd50183de0              # double 0.029899557126609966
	.quad	0x3fd5feedaf2e061e              # double 0.34368459803963158
	.quad	0x3fcbb15e98829408              # double 0.21635038801937889
	.quad	0x3fecc811bb236b2e              # double 0.89942251730403711
	.quad	0x3fa4f7db8443ea60              # double 0.040953502555528543
	.quad	0x3fc718dbd70adf4c              # double 0.18044612884636491
	.quad	0x3fe59a063d86e3b0              # double 0.67505180375075291
	.quad	0x3fe15e06dbe993e3              # double 0.54272788001673822
	.quad	0x3fe8632f75dd59b0              # double 0.76210759182395371
	.quad	0x3fc5798d29b37978              # double 0.16777195488152663
	.quad	0x3fdbe969a6979820              # double 0.43612138050809968
	.quad	0x3fde4dd77b7b5922              # double 0.47350108202717156
	.quad	0x3fd5fa04ca1f0ec2              # double 0.34338493097696354
	.quad	0x3f935aed2ebf5f40              # double 0.018901544550174565
	.quad	0x3fb38f6ed0da0668              # double 0.076407361973929278
	.quad	0x3f97f66664dc4040              # double 0.023400878816630888
	.quad	0x3fdc8b40ec37e4ec              # double 0.44599936550328212
	.quad	0x3fef92d7293aa0fa              # double 0.98667486240904556
	.quad	0x3fe3cbeffc2a8f7d              # double 0.61864470721455656
	.quad	0x3feca606bb504d3a              # double 0.89526688179686364
	.quad	0x3fd2c7174a0df17c              # double 0.29340154868966528
	.quad	0x3fdda87d8b7e6ec8              # double 0.46340883848618519
	.quad	0x3fdb7ec59bf8170a              # double 0.42961254340512822
	.quad	0x3fd9c3a1a474d218              # double 0.40256539402187874
	.quad	0x3fe14b6b61558311              # double 0.54045647631218874
	.quad	0x3fe560a55270426d              # double 0.66804758168480094
	.quad	0x3fdbda2a936484ec              # double 0.43519081491292755
	.quad	0x3fc55f3d44f1edec              # double 0.16696897379357212
	.quad	0x3fd695a3eae0dada              # double 0.35288331925714334
	.quad	0x3fe9753ea08731d3              # double 0.79556208947320284
	.quad	0x3fd40ea6a40e45da              # double 0.31339422246045745
	.quad	0x3fd26c2affeccbcc              # double 0.28785204880403792
	.quad	0x3fe6427415b108ad              # double 0.69561199413899077
	.quad	0x3feac756d61269e9              # double 0.83683339892314479
	.quad	0x3fb078c3446ed7d0              # double 0.064342693526526107
	.quad	0x3fe5e78a2d957ecf              # double 0.68451413062208555
	.quad	0x3fe68a38ac6550b6              # double 0.7043727271179907
	.quad	0x3fbf382fa366cd70              # double 0.12195108165069768
	.quad	0x3fd229e14bb2eb5e              # double 0.28380615608664594
	.quad	0x3fdea88e356e0f24              # double 0.47903781144872171
	.quad	0x3fcee118efe67e5c              # double 0.24124442781338729
	.quad	0x3fea1f824d8a2da5              # double 0.81634631294712234
	.quad	0x3fd62d2f14ab8faa              # double 0.34650780695505523
	.quad	0x3fda352b1e6b4f64              # double 0.40949514361022055
	.quad	0x3fe8bad99ba669b9              # double 0.77280884170914199
	.quad	0x3fed20a95b71f538              # double 0.91023700580959765
	.quad	0x3fee77b88d5cdaf3              # double 0.95211436853318643
	.quad	0x3fc21671242e5d78              # double 0.14130987421661323
	.quad	0x3fd98ea0f120c71c              # double 0.39933036372814157
	.quad	0x3fe36648049417dd              # double 0.60623551267849118
	.quad	0x3fe16d1ecc4cd5ca              # double 0.54457034971590557
	.quad	0x3fadd0a13f4e9d30              # double 0.058232344606319209
	.quad	0x3fca596fcd361db4              # double 0.20585439224326552
	.quad	0x3fd1c8accc24ffba              # double 0.27787322937001202
	.quad	0x3fdc7317bb29fcc0              # double 0.44452470090613971
	.quad	0x3fd968747a1fee28              # double 0.39700042654269163
	.quad	0x3fc0de47b9440714              # double 0.13178345247438783
	.quad	0x3fec458fcf1357b2              # double 0.88349142498440458
	.quad	0x3fa1151b676584e0              # double 0.033364158984804382
	.quad	0x3fea3b7bf699362f              # double 0.8197612587334272
	.quad	0x3fddc4177013f716              # double 0.46509347863308059
	.quad	0x3fefaa1ac7af7a1d              # double 0.98951472283426122
	.quad	0x3fb5f7f122ec66c0              # double 0.085814543749076044
	.quad	0x3fe9fff3300139a5              # double 0.81249389053282484
	.quad	0x3fd19d4975a2a388              # double 0.27522503364394213
	.quad	0x3fe7f0cd0bbf69b3              # double 0.74814464849924034
	.quad	0x3fcb7699babb4fd4              # double 0.21455690019376894
	.quad	0x3fa2c15c6ef6f880              # double 0.036631477876185592
	.quad	0x3fd9595ac3e0e016              # double 0.3960787690043629
	.quad	0x3fd5415444a61532              # double 0.33211237625103529
	.quad	0x3fbb12005aa29cd8              # double 0.10574342930577829
	.quad	0x3fd8ab81ee60db5c              # double 0.38546798972259011
	.quad	0x3fd360cd4b899298              # double 0.30278332115839524
	.quad	0x3fdd63f4e9efbf9e              # double 0.45922587247241065
	.quad	0x3fe478d8f335f5c0              # double 0.63975188734155353
	.quad	0x3f9e99c73a410d80              # double 0.029883492403553813
	.quad	0x3fe0950962005245              # double 0.51819295063848669
	.quad	0x3fece71d1423fb72              # double 0.9032121079797959
	.quad	0x3fbfdff7bc4f86c8              # double 0.12451122615268695
	.quad	0x3fcd426bcdbc5e7c              # double 0.22858951135343719
	.quad	0x3fe1c8ae2a049336              # double 0.55574711042991143
	.quad	0x3fd18e3ecb0508e4              # double 0.27430696321620318
	.quad	0x3fe38582fc9ddd5f              # double 0.6100478109282611
	.quad	0x3feb379b22be70f3              # double 0.85053784166259871
	.quad	0x3fec7e830c30a390              # double 0.89044334774836109
	.quad	0x3fa94aec04605220              # double 0.049399734052858912
	.quad	0x3feec8a1950c9060              # double 0.96199111090801281
	.quad	0x3fd040fccc018f8c              # double 0.25396652147741672
	.quad	0x3fa3bc8ed25011c0              # double 0.038547957585282955
	.quad	0x3fda05f82ba0b1f0              # double 0.40661434422034315
	.quad	0x3fee250c395997d0              # double 0.94202243043104694
	.quad	0x3fb7a4d03caaed58              # double 0.092358603297659214
	.quad	0x3fc4680254dd6430              # double 0.15942410606183577
	.quad	0x3fd3cf54b4ce21bc              # double 0.30952947289236099
	.quad	0x3fefb201ba581813              # double 0.99047933955512446
	.quad	0x3fedee146e0653c8              # double 0.93531247605516743
	.quad	0x3fe9ea5f22b133bb              # double 0.80985981727427914
	.quad	0x3fd6862ffcd6d276              # double 0.35194015208552487
	.quad	0x3feb38b7a8b74d38              # double 0.85067351295803117
	.quad	0x3fdfe19a3ef6434c              # double 0.4981446852553304
	.quad	0x3fe10df247b50b71              # double 0.53295244221986426
	.quad	0x3fe306491fccb011              # double 0.59451729021884792
	.quad	0x3feec8fcf17fcd62              # double 0.9620346752912321
	.quad	0x3fedee57686f3350              # double 0.93534441373194888
	.quad	0x3fe3380a12de408f              # double 0.60059074101629217
	.quad	0x3fee80c7ba2a6afb              # double 0.95322023735511097
	.quad	0x3fe7f48ed31e894c              # double 0.74860326036677227
	.quad	0x3fec8f799733a0ea              # double 0.8925140336187074
	.quad	0x3fe9a18bbbb97d1f              # double 0.80096995034174145
	.quad	0x3fe4211b7c61d956              # double 0.62904142659571494
	.quad	0x3f5a1ac317ac7a00              # double 0.0015932946395832426
	.quad	0x3fe4e22501e73687              # double 0.65260553714479463
	.quad	0x3febe4e463568344              # double 0.87169093515340323
	.quad	0x3fcfa8725944ff2c              # double 0.24732808455336774
	.quad	0x3fa6c834551a8cb0              # double 0.044496188534389858
	.quad	0x3fd319057f80b40c              # double 0.29840218974533239
	.quad	0x3fdefd612b350ed0              # double 0.48421506137331694
	.quad	0x3fec80df508d3f51              # double 0.89073148472560082
	.quad	0x3fd208986dc24f48              # double 0.28177462309507861
	.quad	0x3f72bdfd07532c80              # double 0.0045757183008375835
	.quad	0x3fbaeee9be9b00c8              # double 0.10520802405790441
	.quad	0x3fd980298e9924e2              # double 0.39844740796668365
	.quad	0x3fe6f6068f34c844              # double 0.71753242464024725
	.quad	0x3fadc510d0332d50              # double 0.058144116797473999
	.quad	0x3fe478cc4cc5602f              # double 0.63974585527740213
	.quad	0x3fed339aabc23d7e              # double 0.91254933878546729
	.quad	0x3fbc48c34a266c28              # double 0.11048527298264388
	.quad	0x3fbbc81130ff5250              # double 0.10852153249954566
	.quad	0x3fe9fa2faf4fbd41              # double 0.81179031601451623
	.quad	0x3fe45f9fb3ce161f              # double 0.636672831708612
	.quad	0x3fd9431c519b29c0              # double 0.39472110719057341
	.quad	0x3fde1de27d73e512              # double 0.47057401896707163
	.quad	0x3fd169b0e5fdf674              # double 0.27207586727295241
	.quad	0x3fe20835963d804e              # double 0.5635021147136372
	.quad	0x3feec8454b76d8e8              # double 0.96194710482703005
	.quad	0x3fe78bc92300156d              # double 0.73581368289948801
	.quad	0x3fe65793df00981f              # double 0.69819062762394768
	.quad	0x3fe2e3fce568bfaf              # double 0.59033055120925393
	.quad	0x3feab8a102df4c0e              # double 0.83503771363246115
	.quad	0x3fae726c3f5b4d10              # double 0.059466727003064546
	.quad	0x3fd759ea599e507a              # double 0.3648630023174132
	.quad	0x3fefa607949d3b4f              # double 0.9890172865506005
	.quad	0x3fcda0467d76103c              # double 0.23145371557268557
	.quad	0x3fed7efd43bced58              # double 0.92175162534787614
	.quad	0x3fe8e159f02e6d19              # double 0.77750870619221069
	.quad	0x3fc2b62fbd8addd4              # double 0.14618489031793891
	.quad	0x3fcd7772fea9ff90              # double 0.23020780024307586
	.quad	0x3fd55052ebfff304              # double 0.33302758261542942
	.quad	0x3f90038fce450e00              # double 0.015638586964326961
	.quad	0x3fed567826b233c1              # double 0.91680533941109144
	.quad	0x3fec5df3875e9cc6              # double 0.88646866263743429
	.quad	0x3fc3bd49b3cff918              # double 0.15421410827543336
	.quad	0x3fca719fa085cd10              # double 0.20659251535435219
	.quad	0x3fea1e4fdd1db1be              # double 0.81620019137113053
	.quad	0x3fc720fe72233e84              # double 0.18069439480904148
	.quad	0x3fb17975310f2a98              # double 0.068259548642496504
	.quad	0x3fd644cc00d964ae              # double 0.34794902880600886
	.quad	0x3fe8b701905e239c              # double 0.77233961293051178
	.quad	0x3fe4d02b4816f7f0              # double 0.65041126327537135
	.quad	0x3fec6966b4b15862              # double 0.88786635676912007
	.quad	0x3fb986340962d888              # double 0.099704029361278868
	.quad	0x3fd537be2c1b0d1c              # double 0.3315272742003843
	.quad	0x3fe68691fd6d534d              # double 0.70392703530760914
	.quad	0x3fe5b74c553e840a              # double 0.67862526559122327
	.quad	0x3fe867f6d234e93f              # double 0.76269093566887836
	.quad	0x3fe8ba0bdc0b9773              # double 0.77271073320001304
	.quad	0x3fe59c2ed841adff              # double 0.67531530606851209
	.quad	0x3febd75bcf132c2c              # double 0.87003889507594101
	.quad	0x3fe10b8470bebc95              # double 0.5326559259464313
	.quad	0x3fedfb0edc0399b2              # double 0.93689673396584383
	.quad	0x3fc25233f33226d4              # double 0.14313363432693527
	.quad	0x3fe310470b3b928c              # double 0.59573700136077568
	.quad	0x3fc658bb0021ee50              # double 0.17458283907386596
	.quad	0x3fec0ce2045b5d80              # double 0.87657261706310408
	.quad	0x3fe3a76e0c5d0bdb              # double 0.61418821730364515
	.quad	0x3fd78768eb52e76c              # double 0.36763976078838456
	.quad	0x3fe4b473ecb9ae3c              # double 0.64702793345845278
	.quad	0x3fdea99b04f159c6              # double 0.47910190088932969
	.quad	0x3fda9f214221e726              # double 0.41596251924748839
	.quad	0x3febc2e793189349              # double 0.86754206399619094
	.quad	0x3fd862fd252dd8c8              # double 0.38104179983873765
	.quad	0x3fea2678049d5398              # double 0.81719590092926619
	.quad	0x3fe3f99553a61928              # double 0.6242167123571436
	.quad	0x3fe33a8191ca16fe              # double 0.60089186167235176
	.quad	0x3fe022cd203fe21c              # double 0.50424820231188816
	.quad	0x3fe446c6cde2048c              # double 0.63363971911907546
	.quad	0x3fe1ecfdfde03d85              # double 0.56017970643181114
	.quad	0x3fe1e1355f1cbf55              # double 0.55874126984233874
	.quad	0x3fd31bed66ff0b6e              # double 0.2985795503447467
	.quad	0x3fe7188a426fafdc              # double 0.7217456147750414
	.quad	0x3feb641c94fdd5c9              # double 0.85597066020880519
	.quad	0x3fd73fdfb66f45fa              # double 0.3632735520924083
	.quad	0x3fdcc8dafd0c6a5e              # double 0.44975924217002283
	.quad	0x3fdf68e3321527a0              # double 0.49077682391054545
	.quad	0x3fd4fd31d9d02228              # double 0.32795377989580965
	.quad	0x3fefa6f9d16e651e              # double 0.98913279442345803
	.quad	0x3fd0f4e26e8ee5e4              # double 0.26494656368922009
	.quad	0x3fd00dcc8b257c30              # double 0.25084222401159462
	.quad	0x3fd9b448354fc81c              # double 0.40162854391303582
	.quad	0x3fe70faf0134dc30              # double 0.7206645034374386
	.quad	0x3fefb2ea95ff012f              # double 0.99059037490954959
	.quad	0x3fe2edc604e08deb              # double 0.59152508690425287
	.quad	0x3fab169205e3dcb0              # double 0.052906573504452381
	.quad	0x3fb32e9ae5db5b70              # double 0.074929886929891997
	.quad	0x3f5f29f8ac1fd000              # double 0.0019020965996761063
	.quad	0x3fc55d321bc47338              # double 0.1669066081602979
	.quad	0x3fee3931b24e6590              # double 0.94448170495449979
	.quad	0x3fe0bf0ce0639e18              # double 0.52332156969072496
	.quad	0x3fd5d8d38fc07620              # double 0.34135903394948919
	.quad	0x3fe7e09b419515bb              # double 0.74616778191619149
	.quad	0x3fef1a656bd7f38b              # double 0.97197218955226227
	.quad	0x3fd017114e4ba69e              # double 0.25140793462797173
	.quad	0x3fdf8097fff327d0              # double 0.49222373957729548
	.quad	0x3fcb7e2857e55c5c              # double 0.21478752414506885
	.quad	0x3fefcc51964c3910              # double 0.99369124751118143
	.quad	0x3fecc05219a51da9              # double 0.89847664841447739
	.quad	0x3f92e9a8de774440              # double 0.01846946580719
	.quad	0x3fe4bec404aa1f2d              # double 0.64828682814638727
	.quad	0x3fd7b39fb4a649c8              # double 0.37033836976584356
	.quad	0x3fe6ece7fde85bee              # double 0.71641921607340264
	.quad	0x3fe2df8fb33681b3              # double 0.58979020121119274
	.quad	0x3fe2d85d466e475f              # double 0.58891166454325716
	.quad	0x3fb57acdff953fe0              # double 0.083905100725359727
	.quad	0x3fe459dd782a47ba              # double 0.63596986264950961
	.quad	0x3fec19861bb939eb              # double 0.87811570563081653
	.quad	0x3fc1f4717b57feb0              # double 0.14027231714861932
	.quad	0x3fdbaad51ba5c268              # double 0.43230178546858733
	.quad	0x3fea5ce998651a72              # double 0.82384185566554735
	.quad	0x3fe4d5f1b1fe1a2e              # double 0.65111622585465567
	.quad	0x3fb76aeaa2029980              # double 0.091475166848431044
	.quad	0x3fe2ee0ad50b591c              # double 0.59155789957256699
	.quad	0x3fe25858ee28aa34              # double 0.57328459277534316
	.quad	0x3fe2873ea47c675d              # double 0.57900936247026957
	.quad	0x3fda063ba78a702a              # double 0.40663043366817198
	.quad	0x3fd11ea5f792ded4              # double 0.26749562432403917
	.quad	0x3fe3e6c31119bd9b              # double 0.621919186973105
	.quad	0x3fd230b1380ab500              # double 0.28422193978151711
	.quad	0x3fe972fb35ffa806              # double 0.7952858023320466
	.quad	0x3fe89cc510d492b9              # double 0.76913693701916153
	.quad	0x3fe7db1c472fb795              # double 0.74549688247292301
	.quad	0x3fe83054090dd8bb              # double 0.7558994461858427
	.quad	0x3feaff1402068117              # double 0.84363747020327906
	.quad	0x3fbec2da53a3d2a8              # double 0.1201607183646255
	.quad	0x3fdbff2fbedf6080              # double 0.43745034828089757
	.quad	0x3fec7ca6d4757680              # double 0.89021626945368837
	.quad	0x3fe32e1ebe1c277d              # double 0.59937989359717359
	.quad	0x3fdb1dcfbed410de              # double 0.4236945498999044
	.quad	0x3fe142ba7727ba00              # double 0.53939555428024732
	.quad	0x3fe4f5c1f503f61c              # double 0.65499971251091749
	.quad	0x3fc3a50161fe7a00              # double 0.15347306523194959
	.quad	0x3feea6aeb2e51cec              # double 0.9578469747583802
	.quad	0x3fe3506fe2f75e22              # double 0.60356897668220122
	.quad	0x3fb28b8d3f373a18              # double 0.072441890653159979
	.quad	0x3feaafde7ef2a49a              # double 0.8339683989953699
	.quad	0x3fd78b263cf42f50              # double 0.36786800339244952
	.quad	0x3fe56c0fc7feab1d              # double 0.66944111882671431
	.quad	0x3fa3a4b9eef37ed0              # double 0.038366136950342189
	.quad	0x3fec2b1a335fb26b              # double 0.88026151689480281
	.quad	0x3fee1bb5d850e112              # double 0.94088260888296049
	.quad	0x3fd7f263187c38ce              # double 0.37416913405548946
	.quad	0x3fe5151379c996de              # double 0.6588227633153243
	.quad	0x3fde22415a00f39c              # double 0.47084077634263521
	.quad	0x3fd9b06a2aa99c62              # double 0.40139249960197365
	.quad	0x3fc2e9de187076a0              # double 0.14776207154584586
	.quad	0x3fa295022bb91db0              # double 0.036293094479840859
	.quad	0x3fe4af1d12221a03              # double 0.64637616674082243
	.quad	0x3fe10124cca37053              # double 0.53138961761897929
	.quad	0x3fd65eea003565e6              # double 0.34954309482927071
	.quad	0x3fec6733d3000838              # double 0.88759795390092844
	.quad	0x3feb58527e6b9098              # double 0.85453152362289853
	.quad	0x3fa2b93c7b8159d0              # double 0.036569490505531044
	.quad	0x3fa731cbc477f700              # double 0.045301788075432725
	.quad	0x3fd558938dffdb6a              # double 0.33353127352841361
	.quad	0x3fcf6bcf0754e1f8              # double 0.24547756059634174
	.quad	0x3fed595850ef090a              # double 0.91715637023324459
	.quad	0x3fc2c024edc5ddfc              # double 0.14648877725606713
	.quad	0x3fd016b64f6e93a2              # double 0.25138623959565554
	.quad	0x3fd74c10cb1f76b8              # double 0.36401767574521271
	.quad	0x3feaa038e7df7e24              # double 0.83205838477801252
	.quad	0x3fe23cf3c72650dd              # double 0.56994046112461272
	.quad	0x3fdccb8d16d7e74e              # double 0.44992377501295244
	.quad	0x3fe24ba1c7d18d4d              # double 0.57173241641104655
	.quad	0x3fceb50a93f9aab0              # double 0.23989994263987091
	.quad	0x3fe31db6fe5f0f42              # double 0.5973772972288105
	.quad	0x3fe2d8541751cf45              # double 0.58890728525737102
	.quad	0x3fd537e15d1c6462              # double 0.33153566449033722
	.quad	0x3fe0f3ac05d8d64e              # double 0.52974511281963443
	.quad	0x3fdb5de4dcabc482              # double 0.42760583448313849
	.quad	0x3fecf725a443a6d2              # double 0.90516931612838847
	.quad	0x3fbd03fb2cf34b08              # double 0.11334199759884822
	.quad	0x3fbc454fe9635768              # double 0.11043261955214023
	.quad	0x3fe267697e3c04c3              # double 0.57512354521909292
	.quad	0x3fde4bbe07b3f572              # double 0.47337294342272351
	.quad	0x3fe254a7b4292f94              # double 0.5728338736312133
	.quad	0x3fc3d5fbcfee74d4              # double 0.15496776249793831
	.quad	0x3fba615eed8f8e00              # double 0.10304826068709616
	.quad	0x3fd6895e27cd767a              # double 0.35213426482173527
	.quad	0x3fd9c87456cb4b06              # double 0.40285976863849304
	.quad	0x3fdad68613c0602c              # double 0.41934348992208714
	.quad	0x3fedd0a44ddd4709              # double 0.93171897132762738
	.quad	0x3fedf7afdeeae76e              # double 0.93648522890656039
	.quad	0x3fe262758dcf477f              # double 0.57451894471363107
	.quad	0x3fecac4c53e127b3              # double 0.89603248961178961
	.quad	0x3fb767070264aeb8              # double 0.091415823063182411
	.quad	0x3fe5e329d1635c48              # double 0.68397990127676511
	.quad	0x3fd096429cfa37ae              # double 0.2591711552603283
	.quad	0x3fe271d289b7a316              # double 0.57639433763424353
	.quad	0x3fe147f8c0217b3e              # double 0.54003560567421238
	.quad	0x3fdd1c64ab5a2ef2              # double 0.45485798581715564
	.quad	0x3fe5fc88487fbbcb              # double 0.68707670364335038
	.quad	0x3febc2bb17b8889e              # double 0.86752085335708151
	.quad	0x3fa7e3ca258b9fe0              # double 0.046659771998576849
	.quad	0x3fc72f53699f2210              # double 0.18113176972680423
	.quad	0x3fd6d1e324c986ce              # double 0.35656050293446817
	.quad	0x3fa4c4270dcddcf0              # double 0.040559025225712975
	.quad	0x3fc1cca28d3c6298              # double 0.13905746361048865
	.quad	0x3fdba6b093843422              # double 0.4320489349927944
	.quad	0x3feab8e4119ee15c              # double 0.83506968919304425
	.quad	0x3fdd0aa17a7285fa              # double 0.45377385099172296
	.quad	0x3faa389a25e22f10              # double 0.051213090061621114
	.quad	0x3fe313c54560e384              # double 0.59616340208513963
	.quad	0x3fc94e024058bfc4              # double 0.19769313947608513
	.quad	0x3fe3586d1f7a837b              # double 0.6045442213836475
	.quad	0x3fd03650413c86d6              # double 0.25331503267999034
	.quad	0x3fdf65353748def2              # double 0.4905522384537867
	.quad	0x3fe0089907a42b8b              # double 0.50104953281821574
	.quad	0x3fe996675bf926dc              # double 0.79960983241582139
	.quad	0x3fab033067f821c0              # double 0.052758705798683803
	.quad	0x3fc84ee7a692e1d8              # double 0.18990798600658709
	.quad	0x3feb90581af63005              # double 0.86137013688994613
	.quad	0x3fb7353c904aa1d0              # double 0.090656075694489191
	.quad	0x3feabc5bbfbaa7f2              # double 0.8354929680547214
	.quad	0x3fef45572a66f942              # double 0.97721441537559195
	.quad	0x3fed6e5fd35a2eac              # double 0.91972342757931846
	.quad	0x3fe8ed989536df8e              # double 0.77900342124392963
	.quad	0x3fea4d9eb055bf05              # double 0.82197508278292786
	.quad	0x3fe1f76260032a9d              # double 0.56144827606597725
	.quad	0x3fef0ca919e5b0a9              # double 0.97029547746708033
	.quad	0x3fee303865a1bf02              # double 0.94338626718487739
	.quad	0x3fe31b22f7d59dce              # double 0.59706257252849482
	.quad	0x3fe06fdde1649b42              # double 0.51365560552662992
	.quad	0x3fe54a8f5f93a82b              # double 0.66535156886425761
	.quad	0x3fa8893d923a3040              # double 0.047922062015544942
	.quad	0x3fd708e765820200              # double 0.35991845047831816
	.quad	0x3fd6ab263915c0ba              # double 0.35419612478927898
	.quad	0x3faad61a73eb8040              # double 0.052414728784925035
	.quad	0x3fe4b20c5638a8d9              # double 0.64673439827063384
	.quad	0x3fdc384002f923cc              # double 0.44093323030807308
	.quad	0x3fc18c2d76932f94              # double 0.13709038057129119
	.quad	0x3fdf0ccac58db420              # double 0.48515576641404046
	.quad	0x3fe8977c77d11f71              # double 0.76849196817145871
	.quad	0x3fe57b4f73bc9f15              # double 0.67130253414959162
	.quad	0x3fcfb7d4bbc3530c              # double 0.24779757660021351
	.quad	0x3fd9e4f5f0836862              # double 0.40459965217235638
	.quad	0x3fc8b007177e6e7c              # double 0.19287193915521417
	.quad	0x3fe3a87f1cedf444              # double 0.61431842470450038
	.quad	0x3fd1e21c115c471a              # double 0.27942563720090308
	.quad	0x3fe3b91fa054f74d              # double 0.61634808840583732
	.quad	0x3fd60c20420e39b8              # double 0.34449011278857311
	.quad	0x3fdf6525ee948b6c              # double 0.49054859446385168
	.quad	0x3f864ba979be3440              # double 0.010886501338769006
	.quad	0x3fcc4649d3113694              # double 0.22089503103272945
	.quad	0x3fc0d8e077fb5a40              # double 0.13161855562676017
	.quad	0x3fe74bc616a7e41a              # double 0.72799972939458546
	.quad	0x3fea85ece9af4c2f              # double 0.82884832040361356
	.quad	0x3fd809507bf00c9e              # double 0.37556850531854902
	.quad	0x3fe4506a7087843c              # double 0.63481637934103885
	.quad	0x3feb9a2b0aa36a9b              # double 0.86256935193826523
	.quad	0x3fec8d436ea602c4              # double 0.89224406825095359
	.quad	0x3fedfa6d9c070e36              # double 0.93681984399922302
	.quad	0x3fb9292ce074b790              # double 0.098284535216150326
	.quad	0x3fe25eecfe8a39af              # double 0.57408761706192546
	.quad	0x3fd579c745cee362              # double 0.3355577642174038
	.quad	0x3fb1a7054c374c48              # double 0.068954783542083509
	.quad	0x3fba6c445e0263f8              # double 0.10321452422284938
	.quad	0x3fc2f705fec2cd5c              # double 0.14816355647563284
	.quad	0x3fe1a1728d7e9730              # double 0.55095794330256886
	.quad	0x3feaade7085d7824              # double 0.83372832902728477
	.quad	0x3fd8a866d78d7db0              # double 0.38527842569416304
	.quad	0x3fe687500c0df1e1              # double 0.7040176616133601
	.quad	0x3fda285ce08337ea              # double 0.40871354985290387
	.quad	0x3fe9ffe8ec075946              # double 0.81248899554592735
	.quad	0x3fe95205a0352f35              # double 0.79126244822098235
	.quad	0x3fe0580aaabc50d6              # double 0.51074727389143493
	.quad	0x3fea921940004f13              # double 0.83033430576549205
	.quad	0x3fb7ba278b3e92e0              # double 0.092684241767141184
	.quad	0x3fdd1222d4c8bbb6              # double 0.45423193721483857
	.quad	0x3fd3b3c4bb86efc6              # double 0.3078471976584719
	.quad	0x3feb3daff4b985f8              # double 0.85128019140046174
	.quad	0x3fdd5fd9cfb4b66e              # double 0.45897527011661665
	.quad	0x3fb38b51793a5258              # double 0.076344577881465425
	.quad	0x3fda885627966510              # double 0.41457132211651615
	.quad	0x3fed990f8108cc1c              # double 0.92493415071510609
	.quad	0x3fea8d69e54a6b30              # double 0.82976240905131782
	.quad	0x3fee0ad6abc09bb1              # double 0.93882306619058487
	.quad	0x3f938085fe9172a0              # double 0.019044965422255644
	.quad	0x3fe896d5ca93a93f              # double 0.76841249051839344
	.quad	0x3fd4c95ef295e32e              # double 0.32479070367803586
	.quad	0x3fb25520a0b567a0              # double 0.071611441836834988
	.quad	0x3fe071849d74c797              # double 0.51385718110235501
	.quad	0x3fdfa53090adbacc              # double 0.4944573796155225
	.quad	0x3fdecd41b9d23aa0              # double 0.48127787729837657
	.quad	0x3fd0e48c46387014              # double 0.26394945962397398
	.quad	0x3fe38beb7bda2619              # double 0.61083006086227265
	.quad	0x3fd98f297017ec7c              # double 0.39936290690065568
	.quad	0x3fd41520b6d47e02              # double 0.31378953794953202
	.quad	0x3fd63f3114dc8476              # double 0.34760691678281519
	.quad	0x3fda0dde20d4a44e              # double 0.40709641653171935
	.quad	0x3fe569577b546d15              # double 0.66910909736489776
	.quad	0x3fd932d7a4374638              # double 0.39372817074499578
	.quad	0x3fd0328dbb13dd54              # double 0.25308554906174163
	.quad	0x3feec3e887384cd7              # double 0.96141458902493581
	.quad	0x3fd8414604cfa602              # double 0.37898397893749813
	.quad	0x3feab73a444d96b5              # double 0.83486665096707802
	.quad	0x3fe8c3b8d091ef81              # double 0.77389183746662138
	.quad	0x3fbbb46d9fd5ec40              # double 0.10822186615216456
	.quad	0x3fec7bf83bcf20a8              # double 0.89013301545584955
	.quad	0x3feca2985732200c              # double 0.89484803228788356
	.quad	0x3fccfb11e8eadaa0              # double 0.22641204712791296
	.quad	0x3fd9a7dc87c37ce2              # double 0.40087044962088048
	.quad	0x3fe3c2aafa30a418              # double 0.61751316895709163
	.quad	0x3fe96169447c7ff5              # double 0.79314101577983698
	.quad	0x3fabdb195f319580              # double 0.054405968542407201
	.quad	0x3fd2d0de795933fe              # double 0.29399835443911104
	.quad	0x3fea70e9edc49b4e              # double 0.82628342093526341
	.quad	0x3feb61e061830e91              # double 0.85569781346608143
	.quad	0x3fed7e354ec40627              # double 0.92165627845696896
	.quad	0x3fe44ce2ad49f4b4              # double 0.63438543172346451
	.quad	0x3febbe229e2702fa              # double 0.86695986642015943
	.quad	0x3fda0c4470d782fa              # double 0.406998739430534
	.quad	0x3fe119c7a1de5609              # double 0.5343969499105593
	.quad	0x3fde0a23d6871cfa              # double 0.46936889600733844
	.quad	0x3fce5e0f33acc878              # double 0.23724546454610951
	.quad	0x3fe4a939a033da4f              # double 0.64565736093102
	.quad	0x3fe85d66c08ba784              # double 0.76140153509662455
	.quad	0x3feab3bc407a6db7              # double 0.83444035142331685
	.quad	0x3fd73e9848718242              # double 0.36319548677969149
	.quad	0x3fa751abc1c5db40              # double 0.045544974712291353
	.quad	0x3fe87b9a5f746952              # double 0.76508825915815692
	.quad	0x3fe320fbf0fc8282              # double 0.59777638499879537
	.quad	0x3fe65bb9f8fb5e58              # double 0.69869707707671136
	.quad	0x3fa8a82566143c20              # double 0.048157852850742922
	.quad	0x3fcbd05638921664              # double 0.217295434591665
	.quad	0x3fd0ed0b9bf1da92              # double 0.26446809987047815
	.quad	0x3fe5e7c52d6e04cf              # double 0.68454226372718974
	.quad	0x3fd1a0c3b56fb696              # double 0.27543728559872116
	.quad	0x3fec0e3982044c0f              # double 0.87673640626815252
	.quad	0x3fef88339a877586              # double 0.98537616902801584
	.quad	0x3fd6402a429bf14e              # double 0.34766632561492805
	.quad	0x3fe9baceb6ae70a4              # double 0.80405364685022506
	.quad	0x3fdc8bb07a768576              # double 0.44602596244120407
	.quad	0x3fe12ae5dc1654b0              # double 0.53648655877863938
	.quad	0x3fe22e72d187aa05              # double 0.56816998409095787
	.quad	0x3fd67d7029a162d8              # double 0.35140613618345418
	.quad	0x3fe2e0b42aee957b              # double 0.58992966065549923
	.quad	0x3fe10ac4c2f8aff6              # double 0.53256452637060536
	.quad	0x3fddc7a77fba9a04              # double 0.46531093095327969
	.quad	0x3fea9e450f81a24b              # double 0.83182004002180443
	.quad	0x3fe9758ea405d930              # double 0.79560024295532195
	.quad	0x3fe2784e13752b94              # double 0.57718566704112328
	.quad	0x3fe536887d53f181              # double 0.66290688016992771
	.quad	0x3fe6082bd077fa98              # double 0.68849745480095503
	.quad	0x3fe18c2b424b0e80              # double 0.54836047122849152
	.quad	0x3fd4f220ae72da0a              # double 0.32727829967498734
	.quad	0x3fea08ba156155db              # double 0.81356529403518196
	.quad	0x3fe1307e7d359cd8              # double 0.53716968970266077
	.quad	0x3fe2cf45d8d697ce              # double 0.58780186034413773
	.quad	0x3fe04f35746cb60c              # double 0.50966904391469958
	.quad	0x3fc3c985ff46675c              # double 0.15458750691032719
	.quad	0x3fe9ad76a1d7e671              # double 0.80242473230391742
	.quad	0x3fd60c5f3f59065c              # double 0.34450513063720734
	.quad	0x3fe45c527f55ce8d              # double 0.63626980657723353
	.quad	0x3fe4530d0ea5a254              # double 0.63513806210273538
	.quad	0x3fd467c225a8a722              # double 0.3188329093705865
	.quad	0x3fd8c60d0205d6c6              # double 0.38708806226291548
	.quad	0x3fe0492ca5d427cf              # double 0.508932422527545
	.quad	0x3fcae154319069fc              # double 0.21000149173853788
	.quad	0x3fd86f33e2251a0a              # double 0.3817872723051613
	.quad	0x3fe5fa456855e2a1              # double 0.68680067422890911
	.quad	0x3fce12f7e07981f0              # double 0.23495386562991838
	.quad	0x3fe2004d063c8cb8              # double 0.56253672807760946
	.quad	0x3fd367152266e614              # double 0.30316665992322211
	.quad	0x3fec64e4e0a135bf              # double 0.88731616852754047
	.quad	0x3fe45db934dccbc0              # double 0.63644085240081694
	.quad	0x3feab609700e20ac              # double 0.83472129712847253
	.quad	0x3feae8142c508079              # double 0.84082993178527865
	.quad	0x3fd857acada447f8              # double 0.38035122830581214
	.quad	0x3fde7d1fc818acc8              # double 0.47638697186148393
	.quad	0x3fe3a7a2fdbb2f72              # double 0.61421346241830421
	.quad	0x3fe935c4cf6cce29              # double 0.78781357300471655
	.quad	0x3fe35dfa6a67cb2a              # double 0.6052219465476345
	.quad	0x3fe2ea0191a0a28c              # double 0.59106520121447792
	.quad	0x3fd75c3b439ca534              # double 0.36500436403965186
	.quad	0x3fd6d0af7b3f3cf6              # double 0.35648715053407842
	.quad	0x3fe15661ff05dd25              # double 0.54179477509652385
	.quad	0x3fe2569d9fc371cb              # double 0.57307320789146254
	.quad	0x3fefed8f46cfaa7d              # double 0.99774898367225228
	.quad	0x3fce8571ad79421c              # double 0.2384473893203144
	.quad	0x3feee3b9f8c5160d              # double 0.96529863918175495
	.quad	0x3fe6b7ea5781b2b0              # double 0.70995061007632465
	.quad	0x3fe90f465572c895              # double 0.78311459244857196
	.quad	0x3fde59a7b15049b6              # double 0.47422210994514147
	.quad	0x3fdc89dac0bb8b14              # double 0.44591397115270692
	.quad	0x3fcf4722b938a82c              # double 0.24435838741311622
	.quad	0x3fe60d0f376af806              # double 0.68909416984365701
	.quad	0x3fe339d84dddc94e              # double 0.60081114967605642
	.quad	0x3fe0dab1efdebc6b              # double 0.52669617509481037
	.quad	0x3f74b255d2b25600              # double 0.0050528862440351041
	.quad	0x3fdad05bef7bdc14              # double 0.41896723162739247
	.quad	0x3fe281348e0645f8              # double 0.57827213038598213
	.quad	0x3fea4e134f347f4c              # double 0.82203069181194043
	.quad	0x3febf6970a31d309              # double 0.87385131827486007
	.quad	0x3fe0911cd387192c              # double 0.51771394075402588
	.quad	0x3f9261462ca853e0              # double 0.017949196315459548
	.quad	0x3fec9d934bc0610d              # double 0.89423527522288426
	.quad	0x3fe22938e086e41d              # double 0.56753200390733449
	.quad	0x3fe7a432eff0be86              # double 0.73879382003174565
	.quad	0x3fc6049bfc04bdd8              # double 0.17201566510764965
	.quad	0x3fdee0b63b097b06              # double 0.48246532216391846
	.quad	0x3fccc57633039df4              # double 0.22477605334209694
	.quad	0x3f9edc12aa56ae80              # double 0.030136386534350468
	.quad	0x3fd547d2335d93c0              # double 0.33250861183324432
	.quad	0x3fc3b8d52e1a1398              # double 0.15407814742152648
	.quad	0x3fd937469b20983a              # double 0.39399876736786477
	.quad	0x3fc6a4ddc0e76118              # double 0.17690631789333433
	.quad	0x3f78903041907a00              # double 0.0059968838695838578
	.quad	0x3fe5e0a229043f5b              # double 0.68367107401898453
	.quad	0x3fea101f2fe61e64              # double 0.81446799617056031
	.quad	0x3fd52430e3b4013e              # double 0.33033392178187515
	.quad	0x3fef1e44e55f95d7              # double 0.97244496154297166
	.quad	0x3fb1686022fe95d8              # double 0.067998894256184328
	.quad	0x3fac761242c77f90              # double 0.055588312770623038
	.quad	0x3fcaca99c5d6d5a4              # double 0.20930788192860661
	.quad	0x3fe1dbc71a14ccf0              # double 0.55807833761210013
	.quad	0x3fd7b18ae8703c98              # double 0.37021134089531804
	.quad	0x3fef37dd61c2a63f              # double 0.97556943029230314
	.quad	0x3fe444869c46306d              # double 0.63336496851253588
	.quad	0x3fcd1cd4734be55c              # double 0.22744231824598671
	.quad	0x3fc2f00b5f6e6ac4              # double 0.1479505744908548
	.quad	0x3fc275f0b49cca84              # double 0.14422425097435021
	.quad	0x3f958bfb05b20a40              # double 0.021041795942901453
	.quad	0x3fa2baef6233ad50              # double 0.036582451570064678
	.quad	0x3fe4f8806953407c              # double 0.65533466883972791
	.quad	0x3fe3beb72b528b2a              # double 0.61703070126927639
	.quad	0x3fcda03878270cf4              # double 0.23145204417060194
	.quad	0x3fe5e8a4a4af5e71              # double 0.68464882054372656
	.quad	0x3fa010b38d229d80              # double 0.031377421358508961
	.quad	0x3fddf3aef5d233be              # double 0.4679982567402553
	.quad	0x3fd21e58bff9d4ce              # double 0.28310221431395355
	.quad	0x3fe7f40bc186937f              # double 0.74854076192842445
	.quad	0x3fe778ee23836f32              # double 0.73351199089254338
	.quad	0x3fd4b87ce8c9da82              # double 0.32376024945498483
	.quad	0x3fe35494ee81a44c              # double 0.60407492240222771
	.quad	0x3fe529c077149f96              # double 0.66134665735170262
	.quad	0x3fe8ef41290e58de              # double 0.77920587557562349
	.quad	0x3fe1620563657417              # double 0.54321545995083198
	.quad	0x3fe906849f122fed              # double 0.78204566067279091
	.quad	0x3fdc2f63a01bf0c8              # double 0.44039240489634013
	.quad	0x3feaa3ce44e2f293              # double 0.83249581770322079
	.quad	0x3fd77c61c847202c              # double 0.36696667250044146
	.quad	0x3fdab7dab8c37f0a              # double 0.41747158091855907
	.quad	0x3fc93c0d1eef1110              # double 0.19714511881296248
	.quad	0x3fe911c08e81f6aa              # double 0.78341701348809534
	.quad	0x3fda0b12e9b3fc00              # double 0.40692589590611306
	.quad	0x3fefe94a2d26be80              # double 0.99722775286313947
	.quad	0x3fe2ee8328454a31              # double 0.5916152750526803
	.quad	0x3fafd439350b3c00              # double 0.062166011548121958
	.quad	0x3fe7b69a16e751d7              # double 0.7410402724586288
	.quad	0x3fc7c400549a5374              # double 0.18566898470876547
	.quad	0x3fed767e7b19b517              # double 0.92071460764933277
	.quad	0x3fc0dc7011d58930              # double 0.13172722693259109
	.quad	0x3fd8de05bd47836a              # double 0.38855117306052611
	.quad	0x3fe02c5eb2f979da              # double 0.50541624980888433
	.quad	0x3fdb5fd02d2f2fc8              # double 0.427722972989383
	.quad	0x3fbad6d6053b6470              # double 0.10484063747152716
	.quad	0x3fe90b16702ffae8              # double 0.78260347282033838
	.quad	0x3feaac26fc0bf9d8              # double 0.83351468303572585
	.quad	0x3fb8d43164f8f068              # double 0.09698780741831714
	.quad	0x3fefd2f68bd2508e              # double 0.99450232800383431
	.quad	0x3fb3c5f3db690150              # double 0.077239266459405486
	.quad	0x3fd64fb7f11b128c              # double 0.34861563249095506
	.quad	0x3fe53caefeec4dfb              # double 0.66365766324673758
	.quad	0x3fe6988170cb7ae3              # double 0.70611640959017696
	.quad	0x3fe12d547e8a431f              # double 0.53678345408306771
	.quad	0x3fc13c3aca2d7c78              # double 0.13465056297261291
	.quad	0x3fd72b903cd218b2              # double 0.36203390063782159
	.quad	0x3fd0b458503b5988              # double 0.26100738368167997
	.quad	0x3fae424fa9b1ca50              # double 0.059099664177570177
	.quad	0x3fed294d87212ad2              # double 0.91129185097210041
	.quad	0x3fcd12eb0cc77720              # double 0.22713983654005521
	.quad	0x3fd6bea519d520ae              # double 0.35538604281147002
	.quad	0x3fe8a5a5e7d1d7e7              # double 0.77022071149144444
	.quad	0x3fc6fb34abb25570              # double 0.17954119094489895
	.quad	0x3fe8df8fbdb2dec8              # double 0.77729022074250853
	.quad	0x3fdf6b2a0c838950              # double 0.49091578695346971
	.quad	0x3feb23722598c340              # double 0.84807689040290057
	.quad	0x3f7d8a3f246e7180              # double 0.007211920404099792
	.quad	0x3fe0a6efe50231bb              # double 0.52037806251751506
	.quad	0x3fef9d3e47c94194              # double 0.98794473667844551
	.quad	0x3fc3549283328cc0              # double 0.15101844221235261
	.quad	0x3feefd83f1876eed              # double 0.96844670461311255
	.quad	0x3fd5093a31ad3386              # double 0.32868819094874657
	.quad	0x3fc86879f423f2f4              # double 0.19068836613578066
	.quad	0x3fd05e677fa6055e              # double 0.25576198068309519
	.quad	0x3fe90b3c66f147ac              # double 0.78262157541234023
	.quad	0x3fc6a36c023c0c04              # double 0.1768622408781938
	.quad	0x3fd8f075f6d9014a              # double 0.38967656236856796
	.quad	0x3fe799db15e69a85              # double 0.73753122594355658
	.quad	0x3fefdb70f099a804              # double 0.99553725235205137
	.quad	0x3fe1e03dfa25c51b              # double 0.5586233030027502
	.quad	0x3fefdbdc3ed4c8f4              # double 0.99558841964451838
	.quad	0x3fd97855d45ace12              # double 0.39796968209995598
	.quad	0x3fe5f45ce8599d9e              # double 0.68607945805426929
	.quad	0x3fe84d7a19fffe5b              # double 0.75945763662452792
	.quad	0x3fef73fb9afcb07e              # double 0.98290806075011949
	.quad	0x3feca821a6a4d129              # double 0.89552385852451721
	.quad	0x3fc741675a80a05c              # double 0.18168346327843465
	.quad	0x3fe4c1e75b958ce1              # double 0.64866989028487521
	.quad	0x3fca0a24d5241028              # double 0.20343456656712644
	.quad	0x3fef2915766eb818              # double 0.97376511699053747
	.quad	0x3fea483ba8b3294c              # double 0.82131751012028919
	.quad	0x3fe120e41de597c3              # double 0.53526502455928726
	.quad	0x3fe3bf372d60fba4              # double 0.61709174025587687
	.quad	0x3feb808d82cef214              # double 0.85944247768890358
	.quad	0x3fef865406afc5f3              # double 0.98514748865107859
	.quad	0x3fd41904a1816532              # double 0.31402698299423826
	.quad	0x3fc169f04783690c              # double 0.1360454892336026
	.quad	0x3fe98fbb14e4aae3              # double 0.7987952621527622
	.quad	0x3fcc15facae90ca0              # double 0.21942076595050697
	.quad	0x3fc2c2f0cdcaffa4              # double 0.14657411621555838
	.quad	0x3fe498e120292b72              # double 0.64366203576478953
	.quad	0x3fe0a342a433544d              # double 0.51992923803721569
	.quad	0x3fe6c9ed45925f5b              # double 0.71214927280650941
	.quad	0x3feef2b03e19324f              # double 0.96712505463217179
	.quad	0x3fc9ae58851778d0              # double 0.20063311098687686
	.quad	0x3fa69691405fd6a0              # double 0.044117488010596562
	.quad	0x3fd3a57852907cda              # double 0.3069744879048365
	.quad	0x3fc7cfd06ce2c8b8              # double 0.18602948490803839
	.quad	0x3fdc4670f963ddac              # double 0.4417993960809905
	.quad	0x3fed850ccd34da57              # double 0.92249145583520942
	.quad	0x3fe1a637eb784767              # double 0.55154033651545553
	.quad	0x3fd4655e3e24d7da              # double 0.31868702000371985
	.quad	0x3fed15b24cd17e52              # double 0.90889849666195688
	.quad	0x3fdbd0ca3743ddce              # double 0.43461852452261673
	.quad	0x3fbed78b266c6ab0              # double 0.1204764336402302
	.quad	0x3fe188999fc93814              # double 0.54792481620984512
	.quad	0x3fe0b40f0dec3bc7              # double 0.52197983474058496
	.quad	0x3fe69c41d5d5f557              # double 0.70657436146545194
	.quad	0x3fdeb5aa74ad0bf2              # double 0.47983800310265601
	.quad	0x3feae1f28f48054a              # double 0.84008148178706077
	.quad	0x3fee64b95c699560              # double 0.94979541825584234
	.quad	0x3fc51e8aae403e5c              # double 0.16499455936763041
	.quad	0x3fdb898237ec0e3e              # double 0.4302678629030402
	.quad	0x3fd8608ca0966884              # double 0.38089290315986823
	.quad	0x3fac782012565df0              # double 0.055603983152817338
	.quad	0x3fc3bf28584e87c4              # double 0.15427116691449616
	.quad	0x3fe7566bcd0a2c40              # double 0.72929945036720056
	.quad	0x3fc14e7fdc5a31b8              # double 0.13520811328306848
	.quad	0x3fd192d43c2bd560              # double 0.27458673359008934
	.quad	0x3fdaa15cf9a2dc12              # double 0.41609882715732838
	.quad	0x3fe805b0d5e6475b              # double 0.75069467332125883
	.quad	0x3fd858c87ca99244              # double 0.38041889356671654
	.quad	0x3fbb3bd83f697d78              # double 0.10638190792223223
	.quad	0x3fd8ddbe616f057e              # double 0.38853415980346273
	.quad	0x3f97fc183bc59a40              # double 0.023422602317987762
	.quad	0x3fa0178849f2d130              # double 0.03142953779880242
	.quad	0x3fe2c58cf64cf6a8              # double 0.58661506753533832
	.quad	0x3fee9fe75a323d88              # double 0.95701949707465505
	.quad	0x3fe0335c6bd502d6              # double 0.50626965580894523
	.quad	0x3f93ff767dc7e940              # double 0.019529200961167392
	.quad	0x3fc73feb9536df20              # double 0.18163819108826207
	.quad	0x3fd82fcf096a9cbe              # double 0.37791801375938039
	.quad	0x3fad713b228ada00              # double 0.057504508940315446
	.quad	0x3feace46b5f126be              # double 0.83768020186945313
	.quad	0x3fc6925877fd80b4              # double 0.17634111269854247
	.quad	0x3fd169537de82528              # double 0.27205359740817636
	.quad	0x3fe48008ea267d58              # double 0.64062925083627942
	.quad	0x3feff95624a82903              # double 0.99918658408685734
	.quad	0x3feb39317d612b06              # double 0.8507316063708863
	.quad	0x3fd3ec707a9c46ba              # double 0.31130611394574326
	.quad	0x3fea4a8789b754bd              # double 0.82159783265765152
	.quad	0x3fdb1d09edcb5cee              # double 0.42364738676174241
	.quad	0x3fee19c1cfc31b43              # double 0.94064417437116565
	.quad	0x3fe517c47bb40efe              # double 0.65915130768595964
	.quad	0x3fde9c1dc4491f26              # double 0.47827858131903367
	.quad	0x3fe7cc100741e7d6              # double 0.74365998666257371
	.quad	0x3fe1e708dc13ce28              # double 0.55945246681080096
	.quad	0x3fc4bfb0b4975a54              # double 0.16209992235117687
	.quad	0x3fed0071c2b6be73              # double 0.90630424528167308
	.quad	0x3fe97ff2058fedcd              # double 0.79686833464023155
	.quad	0x3fd2171b1311d80c              # double 0.28266026365543051
	.quad	0x3fcf215c0d92f91c              # double 0.24320555365370289
	.quad	0x3fe4725cfd506625              # double 0.63896035647775717
	.quad	0x3fe3f896dcc33949              # double 0.62409537427610318
	.quad	0x3fd6edd60ee56942              # double 0.35826636748028673
	.quad	0x3fba4898536dbcc0              # double 0.10267021214325478
	.quad	0x3fe0781373e7e509              # double 0.5146577132974538
	.quad	0x3fe66a5e6ee69b62              # double 0.70048448238672401
	.quad	0x3fe2e5f36bf269a6              # double 0.59057017405875878
	.quad	0x3fa3c61884076050              # double 0.038620725743101603
	.quad	0x3fc599f034a8f628              # double 0.16876032420434339
	.quad	0x3fdc3ce053ffcabc              # double 0.44121559336705807
	.quad	0x3fec4f58f8828a12              # double 0.88468597924321757
	.quad	0x3fa321faac050540              # double 0.037368615625846591
	.quad	0x3fd5278d38fa22c0              # double 0.33053904117745603
	.quad	0x3fbef3869587eba0              # double 0.1209034075799722
	.quad	0x3fb9860785627278              # double 0.099701376022901189
	.quad	0x3fe7c9c66b320918              # double 0.74338074623691153
	.quad	0x3fd57946638844ee              # double 0.33552703590346666
	.quad	0x3fe8768c29bc83ca              # double 0.76447113181722526
	.quad	0x3fc6dba27c3b96c0              # double 0.17857771936467337
	.quad	0x3febb8e8274c8c7c              # double 0.86632163692082952
	.quad	0x3fe1bc63877986ff              # double 0.55424667796998495
	.quad	0x3feff78ae59711c8              # double 0.99896759836024617
	.quad	0x3feb6be5a836f552              # double 0.85692103247098772
	.quad	0x3fe806431c0ad246              # double 0.75076442219739969
	.quad	0x3fe91c8eed880bbf              # double 0.78473612206322929
	.quad	0x3fe3ea4bf55b1191              # double 0.62235067292253821
	.quad	0x3fe02d0c32bd8ef6              # double 0.50549898061987508
	.quad	0x3fde5f8561c290ee              # double 0.47458014056088771
	.quad	0x3fd43fd0ce0c2fc0              # double 0.31639499780498781
	.quad	0x3fbb141e1c308a60              # double 0.10577572048399864
	.quad	0x3fddd94706ff617c              # double 0.46638656314237159
	.quad	0x3fc05a7d900514b4              # double 0.12776155025691127
	.quad	0x3fe16c731e0b0ce6              # double 0.54448848598294997
	.quad	0x3fea455620347e15              # double 0.82096391954468351
	.quad	0x3fe4dd9c61e3eecc              # double 0.65205210799418856
	.quad	0x3fe428cc60710682              # double 0.62998026691657594
	.quad	0x3fe1b6041f2d2fcd              # double 0.55346876229440911
	.quad	0x3fe0e68aae91610e              # double 0.52814230056086031
	.quad	0x3fc0c03fec1600ec              # double 0.13086699512132982
	.quad	0x3fdd1981557a561e              # double 0.45468171451043016
	.quad	0x3fe7a33dea608ccc              # double 0.73867698456560893
	.quad	0x3fd7b8b8ec19b57c              # double 0.37064955765421082
	.quad	0x3fdd8c88023baf7a              # double 0.46170234888153738
	.quad	0x3fed5d8bd27f4192              # double 0.91766921150888181
	.quad	0x3fa457dceef912b0              # double 0.039732841655255924
	.quad	0x3feaae6bd43759c0              # double 0.83379165123442789
	.quad	0x3fe1261dea86d7a3              # double 0.5359029369926599
	.quad	0x3fe6a78af69548c4              # double 0.70795200501222455
	.quad	0x3fe9ea43e7157cbc              # double 0.80984683164196935
	.quad	0x3fee1d41c0cc1101              # double 0.94107139259043049
	.quad	0x3fecc08f6fcbd325              # double 0.8985058959502551
	.quad	0x3fd19f145b78d492              # double 0.27533444340526458
	.quad	0x3fc181eba6c5c1d8              # double 0.13677735942066138
	.quad	0x3fef9f94f1423bf3              # double 0.98823020096631208
	.quad	0x3fee2ff6616297b4              # double 0.94335478802235295
	.quad	0x3fec28bf7badb9a7              # double 0.87997411876658738
	.quad	0x3f84118c7aa77f40              # double 0.0097990965777509098
	.quad	0x3fd0c7f37cc48ba8              # double 0.26220404800749941
	.quad	0x3fe4d606f8065c9a              # double 0.65112636988023387
	.quad	0x3fd3125c5070d282              # double 0.29799564223802844
	.quad	0x3feaf3e05ddee745              # double 0.84227007230877204
	.quad	0x3fe59283dba392ce              # double 0.67413514040216582
	.quad	0x3fee4b502cbcf562              # double 0.94669350374139705
	.quad	0x3fdb3afec280ea02              # double 0.42547577852715801
	.quad	0x3fe1829321606c8f              # double 0.54718929785612314
	.quad	0x3fe0ea72e2753606              # double 0.52861923437166136
	.quad	0x3fe148554baeda11              # double 0.5400797346290479
	.quad	0x3fbad7ce1e93b7d8              # double 0.10485542532452941
	.quad	0x3fedc7f0c623b459              # double 0.9306568021689926
	.quad	0x3fe4ca38001bb154              # double 0.6496849062073502
	.quad	0x3fe815ed21a21712              # double 0.7526765496156449
	.quad	0x3fe98a485cf53042              # double 0.79813020854772554
	.quad	0x3fe43610498110b6              # double 0.63159956318170063
	.quad	0x3fe5211b16d797f6              # double 0.66029123746261464
	.quad	0x3fe709cd7622eb6e              # double 0.71994660447613312
	.quad	0x3fe49de520cc5d4d              # double 0.64427429586332041
	.quad	0x3fdb6a587a7a7f24              # double 0.42836582146445523
	.quad	0x3fdc75c3405697a6              # double 0.44468766482384081
	.quad	0x3fee6d3f7e87c724              # double 0.95083594048466979
	.quad	0x3fd619274a2bef82              # double 0.34528524630854218
	.quad	0x3fca471956a89ee8              # double 0.20529476863270379
	.quad	0x3fe94292a54612bd              # double 0.78937656669639689
	.quad	0x3fe9b45d22b5d260              # double 0.8032670667585755
	.quad	0x3fd8febc7d40c974              # double 0.39054786903138639
	.quad	0x3fef19f3e809a933              # double 0.97191806144591053
	.quad	0x3fd09069b5b82bd4              # double 0.25881426569020261
	.quad	0x3fc60b745f91d75c              # double 0.17222456614006887
	.quad	0x3fb515da58cc3ed0              # double 0.08236469905773025
	.quad	0x3fc97c59708fbf78              # double 0.19910734172981015
	.quad	0x3fe8c0fa9baea1d2              # double 0.77355699927016475
	.quad	0x3fa4c4a5a6e9c1b0              # double 0.040562798142562584
	.quad	0x3fe890c7c1cc3bd5              # double 0.76767337657099211
	.quad	0x3fee777aa2a80525              # double 0.95208484429182205
	.quad	0x3fcebcb7917c0490              # double 0.24013418773396156
	.quad	0x3fc15e0f6e53af70              # double 0.13568299185805754
	.quad	0x3fdcc320a18fdb88              # double 0.44940963532956646
	.quad	0x3fef617fc58e8219              # double 0.98065174660956977
	.quad	0x3fd0a14a99a8c256              # double 0.25984444623739955
	.quad	0x3fe76989337d1ab4              # double 0.73163280540833009
	.quad	0x3fca583a54107a60              # double 0.20581750015931544
	.quad	0x3fd8cb0d07d64b18              # double 0.38739324345913095
	.quad	0x3f7eecb3c37c7d80              # double 0.0075499555603352197
	.quad	0x3fe9d3f93955bef2              # double 0.80712567518454947
	.quad	0x3fe79eedea9fdfb5              # double 0.73815055680369446
	.quad	0x3f91d2328021b700              # double 0.017403401442087407
	.quad	0x3fe1403a7238541e              # double 0.53909036930656717
	.quad	0x3fd184acef1696ba              # double 0.27372287128887829
	.quad	0x3fdb3b589ede361a              # double 0.42549720301107785
	.quad	0x3fb43f0cfefcf528              # double 0.079087078335721928
	.quad	0x3f8fcda4e973f980              # double 0.015528953909321741
	.quad	0x3fee511d33275894              # double 0.94740161887127039
	.quad	0x3fe00a504a657710              # double 0.50125898867165297
	.quad	0x3fe4203591b426c7              # double 0.62893179376370589
	.quad	0x3fc2f57c87f9bc68              # double 0.14811665191107015
	.quad	0x3fe32709d637e78e              # double 0.59851543273474461
	.quad	0x3fed4b146f8bbb64              # double 0.91541501795095969
	.quad	0x3fb143d3f345ddf0              # double 0.06744122208862513
	.quad	0x3fee15ffd863f2d1              # double 0.94018547309641509
	.quad	0x3fea0e985338ac9f              # double 0.81428161863495407
	.quad	0x3fd6f923b0432302              # double 0.35895626271353376
	.quad	0x3fb5435ad9a955a0              # double 0.083059003963475764
	.quad	0x3feff01dbb044b45              # double 0.99806105162347391
	.quad	0x3fc21bdd658946e0              # double 0.14147536714386089
	.quad	0x3fe77b0620cea117              # double 0.73376757056851971
	.quad	0x3fd72f8c6e56b4f6              # double 0.36227713370574521
	.quad	0x3fef969900b4c064              # double 0.98713350427534551
	.quad	0x3fe63baa906d2204              # double 0.69478347976934218
	.quad	0x3fd9b0a7b6693f8a              # double 0.40140717328630926
	.quad	0x3fc5040d8da6eb6c              # double 0.16418618599513068
	.quad	0x3fe228b960f66d20              # double 0.567471207981189
	.quad	0x3f81932067ff9680              # double 0.0085814029443540552
	.quad	0x3fe1cff9f5d49233              # double 0.55663774503461239
	.quad	0x3fd575831d13ac52              # double 0.33529737319503738
	.quad	0x3fb19a16511d2600              # double 0.068757433703602544
	.quad	0x3fd488f7e091ef44              # double 0.3208598797862019
	.quad	0x3fea81d7b2c5fcce              # double 0.82834992329289903
	.quad	0x3fd84f293bf45328              # double 0.37983160834237362
	.quad	0x3fe4d81ef09a44af              # double 0.65138194077203149
	.quad	0x3fc0fe4d721a5f10              # double 0.13276069709240135
	.quad	0x3fcb7462e92b846c              # double 0.21448933015111338
	.quad	0x3fed573a96c15bb0              # double 0.9168980545463139
	.quad	0x3fddfc75e95af768              # double 0.46853397167784872
	.quad	0x3fee7efb82b2b4de              # double 0.95300078894583939
	.quad	0x3fd9640c133eafa2              # double 0.39673139457112871
	.quad	0x3fe6f93c1fcbdf8c              # double 0.71792417726736479
	.quad	0x3fda0b0aa814983a              # double 0.4069239274416564
	.quad	0x3fd8f77affe67aca              # double 0.39010500898613698
	.quad	0x3fb33005c6474a20              # double 0.074951516063528789
	.quad	0x3fe7c4eb7b48fb09              # double 0.74278806761853489
	.quad	0x3fdeec8a01cc37bc              # double 0.4831872003131783
	.quad	0x3f9054a44aedfe00              # double 0.015947882722228357
	.quad	0x3fea0b4f9b5fe854              # double 0.81388073298081531
	.quad	0x3feee0e38ad50244              # double 0.96495225062978606
	.quad	0x3fdf73bf2799f8ba              # double 0.49143961779908418
	.quad	0x3fee6cc2aa6f0397              # double 0.9507764176161001
	.quad	0x3fe7dd98aeb9ec87              # double 0.74580034376357751
	.quad	0x3fe265e9363969f2              # double 0.57494030562094012
	.quad	0x3fe9e48cbecee67c              # double 0.80914914386012481
	.quad	0x3fe5c86f7817f238              # double 0.68071721511620975
	.quad	0x3fc8ad115305aff0              # double 0.19278160623377927
	.quad	0x3fcc2d782783c520              # double 0.22013761453084957
	.quad	0x3fd6320e0978c650              # double 0.34680510449388624
	.quad	0x3fde0d0316bf898a              # double 0.46954419347289245
	.quad	0x3fe6b3cef634c28a              # double 0.70944927298667548
	.quad	0x3f627afb73e7b700              # double 0.0022559081255540958
	.quad	0x3fe054775ecb997d              # double 0.51031082644185199
	.quad	0x3fee8233cb9190bd              # double 0.95339383849616122
	.quad	0x3febf68a55eb8382              # double 0.87384526044125743
	.quad	0x3fd587d22ad76da8              # double 0.33641485389463321
	.quad	0x3fefbc294d755093              # double 0.99171891335073991
	.quad	0x3feae171fff60210              # double 0.8400201796758342
	.quad	0x3fe7e2447f5face8              # double 0.74637055280382203
	.quad	0x3fb26b075f298210              # double 0.071945629818863432
	.quad	0x3fc108d0b834eff4              # double 0.13308152193519585
	.quad	0x3fe18f0a8041b916              # double 0.54871106195585884
	.quad	0x3fd5ac671dbd1b94              # double 0.33864763168497203
	.quad	0x3fd425e5e61fa082              # double 0.31481311295511472
	.quad	0x3fd160ba66e83f96              # double 0.2715288166955302
	.quad	0x3fd505d34242a548              # double 0.32848054381118574
	.quad	0x3fe7a95cf80d9bc7              # double 0.7394242138660666
	.quad	0x3f9cb0e6ff2a10a0              # double 0.028018578838342578
	.quad	0x3fe910c5ab37f207              # double 0.78329738083954303
	.quad	0x3fec01a33732f52a              # double 0.87519989758553618
	.quad	0x3fe7a33eb983d1ea              # double 0.73867737038977777
	.quad	0x3fafe63ac3b1da50              # double 0.062303387058751825
	.quad	0x3fd85093a2de1f7a              # double 0.37991801171346362
	.quad	0x3fe7c446055b73b2              # double 0.74270916982970037
	.quad	0x3fc25d20b391ace0              # double 0.14346703308124287
	.quad	0x3fef557d80685ded              # double 0.97918582038522361
	.quad	0x3fe5fdc171a44c80              # double 0.68722603030836638
	.quad	0x3fd944197cb961f0              # double 0.39478146724789465
	.quad	0x3fe1850fd3ce5856              # double 0.54749289863935746
	.quad	0x3fd8a3d9348b4ad6              # double 0.38500051623593146
	.quad	0x3fb9a73f2d84ac88              # double 0.10020823346410357
	.quad	0x3fe4689c0f2082d5              # double 0.63776972727290604
	.quad	0x3fdb8cc504f52504              # double 0.43046689495220414
	.quad	0x3fac42a727b32870              # double 0.055196021648570404
	.quad	0x3fcc1ee517857030              # double 0.21969283722398947
	.quad	0x3fe23a17fe6533d9              # double 0.56959151922785189
	.quad	0x3fe60531af9d0f78              # double 0.68813404368891806
	.quad	0x3fe84fc0e02d7b09              # double 0.75973552498530339
	.quad	0x3fe96e0abc82be20              # double 0.79468285387514825
	.quad	0x3fe75c48ba76b47f              # double 0.73001514834108139
	.quad	0x3fa11e9c0360b640              # double 0.033436656391455433
	.quad	0x3feb172a87088512              # double 0.84657789586722942
	.quad	0x3fd0c4694d2ff02a              # double 0.26198799646204185
	.quad	0x3fb4c33336541be8              # double 0.0811035163534225
	.quad	0x3fe14bdb746f741d              # double 0.54050991765291523
	.quad	0x3fcca02b7ee186d8              # double 0.22363799758300362
	.quad	0x3fd360d5d4d5549c              # double 0.30278535637382631
	.quad	0x3fd5f97ced622d10              # double 0.34335253889067108
	.quad	0x3fe555886a7ef2a3              # double 0.66669102478006825
	.quad	0x3fecde6d546a4136              # double 0.90215174186054159
	.quad	0x3fc234ff4fdd2180              # double 0.14224234962081184
	.quad	0x3fd75d4e7d8804e8              # double 0.36506998309057659
	.quad	0x3fe945f83d8c9b5b              # double 0.78979122182213801
	.quad	0x3fea5c45e68fbbff              # double 0.82376379996810545
	.quad	0x3fcf889a025b1d34              # double 0.24635624995264893
	.quad	0x3fddf5b893cd6504              # double 0.46812261995144433
	.quad	0x3fc38fd4e13337a0              # double 0.15282689090821311
	.quad	0x3fed984d1571fa46              # double 0.92484144390602618
	.quad	0x3fed1f72b8f520b0              # double 0.91008888363378126
	.quad	0x3fe488eae90028bd              # double 0.64171357639249715
	.quad	0x3fd9a1554b9e0a64              # double 0.40047199615961504
	.quad	0x3fe5e2a1ef1769ef              # double 0.68391510675001921
	.quad	0x3fd7abe67662ef62              # double 0.36986695824793092
	.quad	0x3fe14c02c90d17ef              # double 0.54052867191125908
	.quad	0x3fd41e00aff79c3a              # double 0.31433121856975144
	.quad	0x3fe4b483a2e3c9c6              # double 0.64703542532361591
	.quad	0x3f8d847cda1c6e00              # double 0.014412856489392389
	.quad	0x3fa2ffb7d1535f20              # double 0.037107223799180966
	.quad	0x3f3567b7750c6000              # double 3.2661656318699883E-4
	.quad	0x3fe6e3cb9ae8f1cd              # double 0.71530704742286277
	.quad	0x3fe8a71ad3d9c67a              # double 0.77039853455626361
	.quad	0x3fea5335ec83ca23              # double 0.8226575488500355
	.quad	0x3fe66340bcf105ad              # double 0.69961583044658016
	.quad	0x3fe78c472eef4472              # double 0.73587378661080849
	.quad	0x3fd3d090e5d256b4              # double 0.30960485881346789
	.quad	0x3feebdc749bc0378              # double 0.96066631699805693
	.quad	0x3fe6294762509023              # double 0.69253892137613027
	.quad	0x3fee2face4df901a              # double 0.94331974698843912
	.quad	0x3fc4c199bb09ef20              # double 0.16215821869615699
	.quad	0x3fe6aaa8dd3512c3              # double 0.7083324737983151
	.quad	0x3fea0a6a74724511              # double 0.813771464762029
	.quad	0x3fa90bee19df75a0              # double 0.04891914430457267
	.quad	0x3fd4a18717bc314e              # double 0.3223588687694886
	.quad	0x3fefe6c35e3ade34              # double 0.99691933063781457
	.quad	0x3fa9ea96170ced30              # double 0.050617876352101354
	.quad	0x3fe2146081f016a9              # double 0.56498742464528562
	.quad	0x3fe3498b65582393              # double 0.60272760194594566
	.quad	0x3fe8937a16683c28              # double 0.7680025518074034
	.quad	0x3fef15d43124d93a              # double 0.9714146575777598
	.quad	0x3fe7e4a81af65fb1              # double 0.74666219011395729
	.quad	0x3fe8b466ee487710              # double 0.77202173747693514
	.quad	0x3fe4c8ce84f709f0              # double 0.64951253862119351
	.quad	0x3fe153311aa5bb68              # double 0.54140525059288525
	.quad	0x3fde4d2c42cf4c34              # double 0.47346025967016492
	.quad	0x3fe9763573521239              # double 0.79567978404572337
	.quad	0x3feda8077e8cf92a              # double 0.92676138607911196
	.quad	0x3fee90ae9a80ecc7              # double 0.95516138245093252
	.quad	0x3fe8fd339edf62ea              # double 0.78090840368085179
	.quad	0x3fe1f3a575ce11e5              # double 0.56099198349744184
	.quad	0x3fe5fbca85cf0f4d              # double 0.68698621878181998
	.quad	0x3fe3dc33e7d9f88e              # double 0.62063021930204498
	.quad	0x3fd65ff1a6c54d06              # double 0.34960595403863726
	.quad	0x3fccd843dbd5bb60              # double 0.22534988626599795
	.quad	0x3fee6c134f252e93              # double 0.9506928010755068
	.quad	0x3feb77f6ac05effa              # double 0.85839398954658397
	.quad	0x3fd6e67a448b4d30              # double 0.35781723684086142
	.quad	0x3fd8691521b42496              # double 0.3814137295854122
	.quad	0x3fb45ff81399cf48              # double 0.079589371476513127
	.quad	0x3fdcef63138ca880              # double 0.45211102398992153
	.quad	0x3fd3ff2e1b77574c              # double 0.31244995767825823
	.quad	0x3fea3d7217389213              # double 0.82000069175097889
	.quad	0x3fecb615f787b18f              # double 0.89722727151597492
	.quad	0x3fe7be8c05604d63              # double 0.74201012659106558
	.quad	0x3fd6e4d9d713756e              # double 0.35771795276180895
	.quad	0x3fe0b29e0fdaf70e              # double 0.52180388542885381
	.quad	0x3fecf5dfa20b89fc              # double 0.90501386308125075
	.quad	0x3fe595e77e2d394c              # double 0.67454886096838029
	.quad	0x3fe3d5dfb1fcb578              # double 0.61985764277566968
	.quad	0x3feab2d0044d362c              # double 0.83432770576627524
	.quad	0x3fe74d5efea2e97d              # double 0.72819471105258027
	.quad	0x3fe8760fa442bed1              # double 0.76441175539181405
	.quad	0x3feb0bb33054a05d              # double 0.84517821731152376
	.quad	0x3fe3a3e6e0d69b58              # double 0.61375755227787021
	.quad	0x3fc5e6ef333d25ac              # double 0.17111005784890432
	.quad	0x3fee9380e5073ef9              # double 0.95550579769221067
	.quad	0x3fecd924211041e9              # double 0.90150648553577384
	.quad	0x3feb107450a3c678              # double 0.84575858831358541
	.quad	0x3fd0e141ac36f5d2              # double 0.26374856775131861
	.quad	0x3fee5dd9f141c4ad              # double 0.94895646210183815
	.quad	0x3fc832e3342a6f5c              # double 0.18905296370655378
	.quad	0x3fd3643aa5554910              # double 0.30299249788107918
	.quad	0x3fded2f4ff43bd50              # double 0.48162579467949218
	.quad	0x3fd823c9913a797c              # double 0.3771842878576519
	.quad	0x3fd98b4feb95832c              # double 0.39912794119122696
	.quad	0x3fd5ad67b86a8436              # double 0.33870881089575577
	.quad	0x3fe20d698752aa2b              # double 0.56413723402267146
	.quad	0x3fdae60dfcf15968              # double 0.42029142095034056
	.quad	0x3fe854907c949688              # double 0.76032280284989984
	.quad	0x3fcbfc40fec93354              # double 0.2186356777259798
	.quad	0x3fee356445013d20              # double 0.94401753880984884
	.quad	0x3f32e043d2bf5000              # double 2.8802543488137822E-4
	.quad	0x3fc7f10740599b24              # double 0.18704310075846664
	.quad	0x3fd40b5021162fd6              # double 0.31319049101943841
	.quad	0x3feb66a61a9f3ba6              # double 0.85628037643060817
	.quad	0x3fcb516215fe8004              # double 0.21342111658032092
	.quad	0x3feb373bc03473b4              # double 0.85049235858934091
	.quad	0x3fe275ea5b524ef8              # double 0.57689397655710106
	.quad	0x3fe651b752c0188f              # double 0.69747511064703527
	.quad	0x3fb0c272b9ef8b40              # double 0.06546704329916242
	.quad	0x3fefa663143bfe38              # double 0.98906091644307192
	.quad	0x3fe1c7816b981a61              # double 0.55560370459063446
	.quad	0x3fdd6777c38e8e8a              # double 0.45944017503118373
	.quad	0x3fca882a1f7e3a28              # double 0.20728041208026693
	.quad	0x3fd42058891fcb36              # double 0.3144742335418188
	.quad	0x3fd4706b479bfa80              # double 0.3193615149793132
	.quad	0x3fe7738f2cb28305              # double 0.73285635690635387
	.quad	0x3fe03bb37b2e6760              # double 0.50728773173180386
	.quad	0x3fdc2d2b924e43c2              # double 0.4402569702879725
	.quad	0x3feab62f1baf0d27              # double 0.83473925978652097
	.quad	0x3feaca3ebbdc95aa              # double 0.83718811694841588
	.quad	0x3fe5965c5dce052c              # double 0.67460459061854783
	.quad	0x3fd7b53a0f7d3852              # double 0.37043620598422422
	.quad	0x3fedb73fefb46f07              # double 0.92861935441348542
	.quad	0x3fed1dda0b2898ae              # double 0.90989401034746265
	.quad	0x3fc2872cd036a45c              # double 0.14475021521255627
	.quad	0x3fe828cf27262290              # double 0.75498159071237758
	.quad	0x3febc241296c70fe              # double 0.86746271219774918
	.quad	0x3fe9030e6c41fac2              # double 0.78162308830345517
	.quad	0x3fcded1cdc5e004c              # double 0.23379860649220274
	.quad	0x3fa9eec0b7e8e4c0              # double 0.050649664354247559
	.quad	0x3fde107d5cc82a46              # double 0.46975645123226106
	.quad	0x3fcb4abedda51b40              # double 0.21321855375773602
	.quad	0x3febe7c200b0f49e              # double 0.87204074988371238
	.quad	0x3f7b611a59ecc600              # double 0.0066844014498186333
	.quad	0x3fd4113e409e63a8              # double 0.31355243978901592
	.quad	0x3fe9f2d0f523cf21              # double 0.81089065436251329
	.quad	0x3fef11b220124bec              # double 0.97091013206442999
	.quad	0x3fe7340287063078              # double 0.72509886142644486
	.quad	0x3fccbb7b60fac374              # double 0.22447149501160946
	.quad	0x3fe9a06ebbb26e31              # double 0.80083405170029753
	.quad	0x3fd23951a16537b8              # double 0.28474846612231941
	.quad	0x3fe6ddf1ab892ab4              # double 0.71459277632796736
	.quad	0x3fe7b1f53733e778              # double 0.74047337323939555
	.quad	0x3fef757fa602290d              # double 0.98309309409640521
	.quad	0x3fdb61fdcd290f9c              # double 0.42785592112726945
	.quad	0x3fd214798419f67e              # double 0.28249967480210347
	.quad	0x3fe19b906de0422f              # double 0.55023976764829807
	.quad	0x3fc440ebf157cbc0              # double 0.15823125156711448
	.quad	0x3fb8927faf8b7f20              # double 0.095985393865245516
	.quad	0x3fdf44f80352ad18              # double 0.48858452152735898
	.quad	0x3fe788071521531e              # double 0.73535493971812449
	.quad	0x3fcb4102a6d3fc88              # double 0.2129214586820789
	.quad	0x3fe2c6f57fc70e62              # double 0.58678698498301807
	.quad	0x3fbab6bf6e5acc50              # double 0.10435100979047829
	.quad	0x3fe77f4589e5fbb4              # double 0.73428608830714959
	.quad	0x3fdcaccff441f954              # double 0.44804762700359402
	.quad	0x3fef5d076086cf5d              # double 0.98010605671741368
	.quad	0x3fe1639ce94b4e71              # double 0.54340978207842572
	.quad	0x3fdf16528176a8b0              # double 0.48573744433327715
	.quad	0x3feeae50f89c59a2              # double 0.95877884442125016
	.quad	0x3fe59a0161355a26              # double 0.6750494860269256
	.quad	0x3fe2725b460f5bfd              # double 0.57645953830331076
	.quad	0x3fe49767210afc74              # double 0.64348179296201957
	.quad	0x3fd5092c9bc61342              # double 0.32868495189932301
	.quad	0x3fe0c5511e320ca8              # double 0.52408653161582652
	.quad	0x3febf44ba56ae0f8              # double 0.87357122715096036
	.quad	0x3fe266462084ca53              # double 0.5749846110468958
	.quad	0x3fa79c2b6b764df0              # double 0.046113354556975739
	.quad	0x3fe016e2da43002a              # double 0.50279371861689026
	.quad	0x3fe33d114eb0a357              # double 0.60120454186572203
	.quad	0x3feee9e490790aa0              # double 0.96605137078616465
	.quad	0x3fc3e84987644c98              # double 0.15552634344985417
	.quad	0x3fde944c20d12fac              # double 0.47780135350034914
	.quad	0x3fd42b3a68f682a2              # double 0.31513843775068484
	.quad	0x3fe041658f4756c6              # double 0.5079829977427941
	.quad	0x3fe6bdb8389905b1              # double 0.71065913252112101
	.quad	0x3fde8507da231faa              # double 0.47686954786740421
	.quad	0x3fe3ad02c3cf2039              # double 0.61486948245965956
	.quad	0x3fe55cc5f03534e5              # double 0.66757485309213094
	.quad	0x3fe3d5d2f7cd94c1              # double 0.61985157393487367
	.quad	0x3f9427021839bc60              # double 0.019680054405793235
	.quad	0x3f7942f6cad3d080              # double 0.0061673775028233679
	.quad	0x3fe1bc80cf7bc09f              # double 0.5542606403742133
	.quad	0x3fe8ef3a725124b0              # double 0.77920267417461808
	.quad	0x3fd331e6ceda71ea              # double 0.29992075157659193
	.quad	0x3fe3a58053e73a01              # double 0.61395279300069217
	.quad	0x3fd766c6d9cc0800              # double 0.36564799565542216
	.quad	0x3fd4acc3071030a0              # double 0.32304454507608149
	.quad	0x3fe83c34c5f76155              # double 0.75734938302324883
	.quad	0x3fe2230ebed7a48a              # double 0.56677949212930057
	.quad	0x3feeaf11b8686df5              # double 0.95887075440572167
	.quad	0x3fece5941dd179a7              # double 0.9030247290027561
	.quad	0x3fe515fb6ed7e165              # double 0.65893336915091238
	.quad	0x3fe4438d5acbb23a              # double 0.63324611409695497
	.quad	0x3fe1b7d3318e2a29              # double 0.55368957213187742
	.quad	0x3fca87115d93458c              # double 0.20724694317918269
	.quad	0x3fe6df6f176c4171              # double 0.71477465224056236
	.quad	0x3fa2d79416e95f90              # double 0.036800983235195095
	.quad	0x3fda9468de859622              # double 0.41530820589682282
	.quad	0x3fe0c0dbea704b73              # double 0.52354236401366305
	.quad	0x3fdf7c26e4dcddee              # double 0.49195263242606202
	.quad	0x3fcaf33f9685b604              # double 0.21054835176202868
	.quad	0x3fe0fd4520a0df5d              # double 0.53091675160156238
	.quad	0x3fd497d68de32d40              # double 0.32176746231262499
	.quad	0x3feda084b82978de              # double 0.92584453553333979
	.quad	0x3fe9d6381ba0e576              # double 0.80739980121795329
	.quad	0x3fc3bc5e82605984              # double 0.15418607107194415
	.quad	0x3fd4644e18f06904              # double 0.31862213550051899
	.quad	0x3fc539a214a0cad4              # double 0.16582132346373746
	.quad	0x3feb360d75037026              # double 0.85034821371255442
	.quad	0x3fcf2e87873406bc              # double 0.24360746480674844
	.quad	0x3fc7a896d9bc1c20              # double 0.18483243590910181
	.quad	0x3fc5d66532d59eb0              # double 0.17060532552863128
	.quad	0x3fcabd0f202a9a94              # double 0.20889462538362535
	.quad	0x3fe562979def26ca              # double 0.66828518721123342
	.quad	0x3fd099e04bc63a90              # double 0.25939185523831387
	.quad	0x3fe6bc592849782b              # double 0.71049173229744633
	.quad	0x3fe35d00257f8320              # double 0.60510260890814394
	.quad	0x3fc52b38eed03050              # double 0.1653815427856693
	.quad	0x3fb527985f7ebb00              # double 0.082635424913615196
	.quad	0x3fe47273d5020e80              # double 0.63897124865657418
	.quad	0x3feb1219911b688b              # double 0.84595945683692386
	.quad	0x3fc8ca0224d4ec94              # double 0.19366480635094219
	.quad	0x3feae8ccb25d5c70              # double 0.84091791951040129
	.quad	0x3fed1fb0e3dcee25              # double 0.91011852745527178
	.quad	0x3fe945bf59e5713c              # double 0.78976409490454768
	.quad	0x3fe224e54c70d37d              # double 0.56700386934117797
	.quad	0x3fca538452c18f74              # double 0.20567373314690551
	.quad	0x3fddd11c5a3e3542              # double 0.46588810742180808
	.quad	0x3fd4eae36e8d10de              # double 0.32683645053863397
	.quad	0x3fdb898f709b11d4              # double 0.43027101513532995
	.quad	0x3fdf631b48f7a764              # double 0.49042398572657064
	.quad	0x3fdeb6f77b255e7a              # double 0.47991740251516257
	.quad	0x3fefadfae0b753d4              # double 0.98998779191844699
	.quad	0x3fdad75624820bf0              # double 0.41939309659227231
	.quad	0x3fc9c87bd1ba60d8              # double 0.20143077602984394
	.quad	0x3febce25b53a3ad7              # double 0.8689144649123034
	.quad	0x3fe00df6b83b4fc5              # double 0.50170455916167411
	.quad	0x3febdf8e10d59618              # double 0.87103942192033212
	.quad	0x3f9e5422b5a89740              # double 0.029617826783712831
	.quad	0x3fd5208c3c93a162              # double 0.33011156001750497
	.quad	0x3fef7253f6c67c68              # double 0.98270605276401301
	.quad	0x3fd4f3606a9047b4              # double 0.32735453039742457
	.quad	0x3fe6033456e17944              # double 0.68789116829774644
	.quad	0x3fe523136e826f79              # double 0.66053172668351501
	.quad	0x3fb07d6a49acaa50              # double 0.064413683878833838
	.quad	0x3fe83f6d3d5141b6              # double 0.75774251915031843
	.quad	0x3fd203bfb1ce2b56              # double 0.28147880901149358
	.quad	0x3fdc92ed7adb7c06              # double 0.44646775243558101
	.quad	0x3fe28e17e22109f4              # double 0.57984537282783188
	.quad	0x3febeee7d54e6b9d              # double 0.87291328107254496
	.quad	0x3fd1a9274ef35a32              # double 0.27594931325930638
	.quad	0x3fe02b35ea386cdc              # double 0.50527473207639728
	.quad	0x3fe4c7e79c935d26              # double 0.64940243321590141
	.quad	0x3fe5d1bf944eaf37              # double 0.68185404745370348
	.quad	0x3fe37c2795aa44a3              # double 0.60890559417216072
	.quad	0x3fe1312f86229efb              # double 0.5372541065052866
	.quad	0x3fe2b1db8617db38              # double 0.58421112241817408
	.quad	0x3fd699332bf41d7a              # double 0.3531005791887406
	.quad	0x3fbeebac3fe05540              # double 0.1207835823009491
	.quad	0x3fdae6d6f88327ee              # double 0.4203393389585689
	.quad	0x3fc13e83612bc754              # double 0.13472025150945888
	.quad	0x3fcdbb0e92f4ea48              # double 0.23227102447147474
	.quad	0x3f9a62d3e7d5da20              # double 0.02576762297163715
	.quad	0x3f8d5a474c92d000              # double 0.01433234884675727
	.quad	0x3fdd41d504e9fbd0              # double 0.45714307289011646
	.quad	0x3fe383c16dfe7739              # double 0.60983344538883621
	.quad	0x3fcac6c8e5c72ef8              # double 0.20919142932540757
	.quad	0x3feeefa46eb1858b              # double 0.96675321216405174
	.quad	0x3fecec46d1d823ec              # double 0.90384236321653821
	.quad	0x3fe38c7886173035              # double 0.61089731397215152
	.quad	0x3fe7eb419fbcd1ce              # double 0.74746781538720497
	.quad	0x3fdb70fa92ff30da              # double 0.4287706790462501
	.quad	0x3fc77f31e603ec04              # double 0.18356918078629303
	.quad	0x3fd690ce4a4f9b64              # double 0.352588245934774
	.quad	0x3fc67a73f45be964              # double 0.17561196738808882
	.quad	0x3fee3e08783f919f              # double 0.94507239805220766
	.quad	0x3fef9c9e04b45231              # double 0.98786831778358508
	.quad	0x3fdde5a601cec4a2              # double 0.46714162994892139
	.quad	0x3fe868e71221b070              # double 0.76280549565627886
	.quad	0x3fd8d815b49e21ba              # double 0.3881887687535045
	.quad	0x3fea2384cd8eb60b              # double 0.81683578632299836
	.quad	0x3fd97f46158c8ef0              # double 0.39839317421340947
	.quad	0x3fe50f0c307a2d78              # double 0.65808686702932473
	.quad	0x3fef6329d30f575c              # double 0.98085490439073508
	.quad	0x3feb38db577c7966              # double 0.85069052779344356
	.quad	0x3fe5be30ecb5b1ec              # double 0.67946668846485414
	.quad	0x3fe85b2ef9c6ea02              # double 0.76113079819271001
	.quad	0x3fefb9d54b26a82c              # double 0.99143471410684957
	.quad	0x3fc465c464a0f940              # double 0.15935568727031502
	.quad	0x3fb4036c3a485b28              # double 0.078177227238808045
	.quad	0x3fd0cec2e7a147ae              # double 0.26261971111409366
	.quad	0x3fe42341c566c4b7              # double 0.62930382304161625
	.quad	0x3feba74c5f5f0c7b              # double 0.8641721594543833
	.quad	0x3fd7b08bdebfac6c              # double 0.3701505351334109
	.quad	0x3fe3be63ccf2c739              # double 0.61699094799971654
	.quad	0x3febd00a4a09eb5d              # double 0.86914553127949612
	.quad	0x3fe7b53c2223961f              # double 0.74087340038085248
	.quad	0x3fe5ca908d8b38ae              # double 0.68097713132171633
	.quad	0x3fe14cfd89e2a167              # double 0.54064824038236459
	.quad	0x3fd785a2619b9cb8              # double 0.36753139049546801
	.quad	0x3fdda0238ebb1df6              # double 0.46289910257880196
	.quad	0x3f8a7b806e62d680              # double 0.012930873268810261
	.quad	0x3fe0c2588ec759f8              # double 0.5237238682410057
	.quad	0x3fe9dd565d37ab5b              # double 0.80826872068915223
	.quad	0x3fe311fb926c3b22              # double 0.59594515417288485
	.quad	0x3fe7eb32a9c4f688              # double 0.74746068151553491
	.quad	0x3fdf8afd198619fe              # double 0.49285819523393559
	.quad	0x3fd83b8135dc2bf6              # double 0.37863188037653062
	.quad	0x3fdde43089e85000              # double 0.46705258815313755
	.quad	0x3fdcca50bb8425ee              # double 0.44984834968690179
	.quad	0x3fd35271e8209614              # double 0.30190704029732385
	.quad	0x3fee2a4c0cdc3d1e              # double 0.94266321670321296
	.quad	0x3fd8d4d62f59a9c8              # double 0.38799051879928159
	.quad	0x3fea1d57a2884b92              # double 0.81608182663545592
	.quad	0x3fe5fbb093a1dc19              # double 0.68697384676386541
	.quad	0x3fe7acfcd9840e19              # double 0.73986666186869166
	.quad	0x3fec16ec148e4927              # double 0.87779811873250402
	.quad	0x3fed5562a766a7db              # double 0.91667301841266224
	.quad	0x3face9da0a70c1f0              # double 0.056471647047491191
	.quad	0x3fd27b681a2907a0              # double 0.28878214411462899
	.quad	0x3fd723231ffe48f4              # double 0.36151960491510171
	.quad	0x3fe0271e3e168c4a              # double 0.50477516295030367
	.quad	0x3fe7ee2678a7eaad              # double 0.74782107892618443
	.quad	0x3fc7df630e2cf56c              # double 0.18650472824257791
	.quad	0x3fea8a25f4fa574f              # double 0.82936380240674079
	.quad	0x3fe59dc1752e031d              # double 0.6755072868982982
	.quad	0x3fe23c62dac5ddbb              # double 0.56987135628781205
	.quad	0x3fa6eba991b9f210              # double 0.044766711272107185
	.quad	0x3feaec227499419e              # double 0.84132502339530268
	.quad	0x3fefdc6a2421523e              # double 0.99565608078643897
	.quad	0x3fe367536a75ff6f              # double 0.60636301797056358
	.quad	0x3fec8c0cc1633446              # double 0.89209592600821774
	.quad	0x3fa5cd9bee3f6580              # double 0.042584297974552321
	.quad	0x3fc9ae7971a91d74              # double 0.2006370358451296
	.quad	0x3fe1e1d536955bda              # double 0.55881748829676359
	.quad	0x3fe6ff864b1e459a              # double 0.71869196578534233
	.quad	0x3fde745165eecac8              # double 0.47584948496220791
	.quad	0x3fba57bef0987788              # double 0.10290139554896716
	.quad	0x3fb44f4fef8a3dc0              # double 0.079335208875128238
	.quad	0x3fe599f41346f531              # double 0.67504314198564519
	.quad	0x3fd9b893ebb40a98              # double 0.4018907357969197
	.quad	0x3fdf137995c1dff0              # double 0.48556365608919716
	.quad	0x3fca44d13a3fa83c              # double 0.20522513717816249
	.quad	0x3fdc2254622f1d26              # double 0.43959531391415607
	.quad	0x3fea680e44b8c080              # double 0.82520211622433237
	.quad	0x3fe95f6dafc432ef              # double 0.79289898232818057
	.quad	0x3fd3308af5b75f28              # double 0.29983781810504917
	.quad	0x3fea14dfad63fba1              # double 0.81504806390136164
	.quad	0x3fdf14d330c70082              # double 0.48564605487263901
	.quad	0x3fcdd08bae5ff510              # double 0.23292680754085682
	.quad	0x3fe0cc9cf0c2d985              # double 0.52497717879923356
	.quad	0x3fd08f5a913b003c              # double 0.25874962027228654
	.quad	0x3fac26f9f88c8820              # double 0.054984866705368285
	.quad	0x3fd52c78f4807156              # double 0.33083938481447228
	.quad	0x3fe5437cc0a4af1c              # double 0.6644881975712198
	.quad	0x3fee2b75e9c63039              # double 0.94280524882333971
	.quad	0x3fd67e87f8da2e06              # double 0.35147284795741063
	.quad	0x3fd18a4cdb2959b4              # double 0.27406617548458745
	.quad	0x3fd725794e73b26a              # double 0.36166222249338509
	.quad	0x3fe87454f34547eb              # double 0.76420066369814543
	.quad	0x3fea9edf10ae5352              # double 0.83189347513198642
	.quad	0x3fecbef46ddaa786              # double 0.89830991226084289
	.quad	0x3fd36b7e60c06f30              # double 0.30343589256675596
	.quad	0x3fefc9ee989b1d4d              # double 0.99339990430682123
	.quad	0x3fcde1456f634f34              # double 0.23343723238814962
	.quad	0x3fd1498b6d5b6f3a              # double 0.27011380843554245
	.quad	0x3fe38bf673ebb4d5              # double 0.61083529129759973
	.quad	0x3fe0d0dc8ef3e55d              # double 0.52549579544499248
	.quad	0x3fe929875efe68c1              # double 0.78631943276857197
	.quad	0x3fd6953c7da4b5f2              # double 0.35285866041053204
	.quad	0x3fdd00ea7d1ee6f2              # double 0.45318090647525289
	.quad	0x3fda6f552966cbee              # double 0.41304520648117105
	.quad	0x3fe1e26c12d67ab4              # double 0.55888942412624099
	.quad	0x3fd33920d3509cd8              # double 0.30036183010311168
	.quad	0x3fac9ecb67289110              # double 0.055899006216607927
	.quad	0x3fce30a3b4b52244              # double 0.23585935901270905
	.quad	0x3fd7da992fe8db4c              # double 0.37271718672439103
	.quad	0x3fcd517d62a500dc              # double 0.22904937092426436
	.quad	0x3fe0e11e532d2cbe              # double 0.52748028035548322
	.quad	0x3fe1402938fcd20d              # double 0.53908215647112601
	.quad	0x3feb648cc278537d              # double 0.85602415068079518
	.quad	0x3fea3230d033f94f              # double 0.8186267916169444
	.quad	0x3fe6f0356aa23aee              # double 0.7168223459901506
	.quad	0x3fbeec45f7ed7f98              # double 0.12079274466441203
	.quad	0x3fe4fe4b5c60c77e              # double 0.6560417942293808
	.quad	0x3fe8cba2fd5ad00b              # double 0.77485799296710078
	.quad	0x3fea5631ff56d20b              # double 0.82302188750196714
	.quad	0x3fd15db5d5b8240a              # double 0.27134462233567602
	.quad	0x3fed1257b30976c4              # double 0.90848908394010452
	.quad	0x3fe2f9e46fc394ce              # double 0.5930044348612229
	.quad	0x3fe683c7a20bbc0a              # double 0.70358640336587652
	.quad	0x3fe15d3082e68100              # double 0.5426256710670998
	.quad	0x3fd12e4beb237670              # double 0.26845071757075001
	.quad	0x3fee9706cda1e4cd              # double 0.9559358612306369
	.quad	0x3f53d8109709c200              # double 0.0012111818324705981
	.quad	0x3fcaadee8da33fc0              # double 0.20843297878172784
	.quad	0x3fca81f087b135d0              # double 0.20709044099423446
	.quad	0x3fe7cbdb77cd112e              # double 0.74363492392197883
	.quad	0x3fe61eea7c1eb534              # double 0.69127392046144687
	.quad	0x3fe9738fb2ac7d90              # double 0.79535660645699302
	.quad	0x3feb136f1c130d95              # double 0.84612231715475394
	.quad	0x3fe939b4ccd75480              # double 0.78829422004731953
	.quad	0x3feae0d461974b4c              # double 0.8399450212549282
	.quad	0x3fe55ed2a11aad97              # double 0.6678250452582003
	.quad	0x3fd3bf1ee2e5a380              # double 0.30854007871544553
	.quad	0x3fcc820909bd0cac              # double 0.22271836257468658
	.quad	0x3fca63fc303504a4              # double 0.206176303423523
	.quad	0x3fc9ecf071e89370              # double 0.2025433117097708
	.quad	0x3fd2c45d90889910              # double 0.29323519816024746
	.quad	0x3f8335adc9e64340              # double 0.0093797280540300898
	.quad	0x3fc68c011c66e0f4              # double 0.1761475933724409
	.quad	0x3fea9cf22d622158              # double 0.8316584478753084
	.quad	0x3fe599600fd1d036              # double 0.67497256364595759
	.quad	0x3fe44e2e56705cca              # double 0.63454357988930465
	.quad	0x3fe1cc9f0bfb4538              # double 0.55622818317548361
	.quad	0x3fec15727af7800b              # double 0.87761806504204409
	.quad	0x3fd95f801cdd008c              # double 0.39645388430290818
	.quad	0x3fef53f45a16b471              # double 0.97899835200736451
	.quad	0x3fde7da396aad320              # double 0.47641839707948641
	.quad	0x3fd75c8f0e7c8f14              # double 0.3650243417234702
	.quad	0x3fedbf0e5525276f              # double 0.92957226400288373
	.quad	0x3fe079911d45b8ca              # double 0.51483970372444188
	.quad	0x3fc2c8d0917a70b0              # double 0.14675337890083062
	.quad	0x3fdd77888dfa8a04              # double 0.46042074074844686
	.quad	0x3fe427f4adb2670a              # double 0.62987741398976138
	.quad	0x3fec39049077a4a0              # double 0.88196018425255218
	.quad	0x3fc3a72b3c6c4dd8              # double 0.15353908968300689
	.quad	0x3f79c09821d5df80              # double 0.0062871878302458439
	.quad	0x3fcd257b3f3d83e0              # double 0.22770634258179623
	.quad	0x3fd06b28c7e1c216              # double 0.25654048461640977
	.quad	0x3fec4bb1f441e0fd              # double 0.88424012857925016
	.quad	0x3fe162a2ae960c35              # double 0.54329046343662546
	.quad	0x3fc25a6802f445e4              # double 0.14338398117301587
	.quad	0x3fe76d63494f185e              # double 0.73210300748975121
	.quad	0x3fe7600d7e601b1a              # double 0.73047518427560765
	.quad	0x3fe3a3346ac00534              # double 0.61367245530724412
	.quad	0x3feffb87afb62cb7              # double 0.99945434874225369
	.quad	0x3fe2b21bcc2c0195              # double 0.58424177052806903
	.quad	0x3fe8372de8ed56c4              # double 0.75673575872016174
	.quad	0x3fe7704e27374ce6              # double 0.73245914134386392
	.quad	0x3fe14d75f240b978              # double 0.54070565524106851
	.quad	0x3fd09397caa3bc7e              # double 0.25900835789702359
	.quad	0x3fdd7bd9cd0e8802              # double 0.46068425202440733
	.quad	0x3fe00e82ff891362              # double 0.50177144917743655
	.quad	0x3fceaa1fae375544              # double 0.23956676489494033
	.quad	0x3fe4006ceda62268              # double 0.62505194106877315
	.quad	0x3fe5ffb3ed729e8f              # double 0.6874637258196844
	.quad	0x3fccdebbb694f4c4              # double 0.22554727950219988
	.quad	0x3fce22018ce5aa50              # double 0.23541278247587849
	.quad	0x3fd68a979cef2ed4              # double 0.35220899892440838
	.quad	0x3fe2d64488b520d3              # double 0.58865572643937936
	.quad	0x3fee178064d5996d              # double 0.94036884016240452
	.quad	0x3fe26dc0e55c3ee1              # double 0.5758976440137894
	.quad	0x3fc1be992086d150              # double 0.1386290940114443
	.quad	0x3fe8e282cc87ab0f              # double 0.7776502604222929
	.quad	0x3fec1d26bc880a32              # double 0.87855851004161978
	.quad	0x3fd6b1e89f34d08e              # double 0.35460868403902956
	.quad	0x3fd0f9acbc840868              # double 0.26523893747083216
	.quad	0x3fc5376a896d7d30              # double 0.1657536669763231
	.quad	0x3fd131121c2d44be              # double 0.26862004043239185
	.quad	0x3feaa1121ea6ce17              # double 0.83216196047436852
	.quad	0x3fe1db1b63e78541              # double 0.55799645912717477
	.quad	0x3fe78c2e9ae41332              # double 0.73586206676609422
	.quad	0x3fd81158ede56e2e              # double 0.37605880004932402
	.quad	0x3fd09190f8e3e284              # double 0.2588846617286793
	.quad	0x3fd1ee3af34042e2              # double 0.28016542201025463
	.quad	0x3fe6d3529b3ac2a8              # double 0.71329622572200879
	.quad	0x3faf6ce6e3e07270              # double 0.061377730671868913
	.quad	0x3fe939a4c24bd231              # double 0.78828657101127508
	.quad	0x3fd12133456c0bfa              # double 0.26765138415811374
	.quad	0x3fcd89566ce58280              # double 0.23075371091092123
	.quad	0x3fe6b815e2b87199              # double 0.70997137338013083
	.quad	0x3fd1f36e0e91b112              # double 0.28048278258099046
	.quad	0x3fdfdcb2c4fc0f22              # double 0.49784535633829041
	.quad	0x3fe20e9e03f779f6              # double 0.56428433203455941
	.quad	0x3fd44dc040d2e0c8              # double 0.31724554377025216
	.quad	0x3fe2dda1bddae3e3              # double 0.5895546634775396
	.quad	0x3feb817fc607e76c              # double 0.85955799749284045
	.quad	0x3fd87e962542f326              # double 0.38272622717686244
	.quad	0x3fc731eedf7020e4              # double 0.18121133718546567
	.quad	0x3fed5fcf65f0a3dd              # double 0.91794557485729522
	.quad	0x3fbe1664c58d1440              # double 0.11752919981980003
	.quad	0x3fe76b517403c211              # double 0.73185036334149534
	.quad	0x3fef4efcbfdc6e4d              # double 0.9783920047079363
	.quad	0x3fb7d8a631b00478              # double 0.093149554377321198
	.quad	0x3fda19b4e657d456              # double 0.40781900877420207
	.quad	0x3fc7aedc68982ee0              # double 0.18502383334304451
	.quad	0x3fdd80299c4b46ec              # double 0.46094742072192108
	.quad	0x3feab6b3d97a0cd0              # double 0.83480255580834672
	.quad	0x3fd4afade0e6e966              # double 0.3232226082142432
	.quad	0x3fe058fe9a4cdd84              # double 0.51086359154480521
	.quad	0x3feb49c9d5545915              # double 0.85275737443842792
	.quad	0x3fea9bf6113087e8              # double 0.83153823239649416
	.quad	0x3fe6324d84eec27d              # double 0.69364047969254694
	.quad	0x3fb9f5cfbb5a7628              # double 0.10140703510338567
	.quad	0x3fe096c63b21ebce              # double 0.5184050707751966
	.quad	0x3fc8061f8897c33c              # double 0.18768686456271577
	.quad	0x3fd50ce25514987e              # double 0.32891138371122242
	.quad	0x3fe1a94786105834              # double 0.55191398796410462
	.quad	0x3fed68e0b11618ee              # double 0.91905245387240853
	.quad	0x3fd77a21d240a2c6              # double 0.36682935268849481
	.quad	0x3fd9192379d1d54e              # double 0.3921593370099189
	.quad	0x3fed92560ad1b61a              # double 0.92411329377290774
	.quad	0x3fbbdbe390b1fea8              # double 0.10882398874854948
	.quad	0x3fef4452986bb317              # double 0.97709016580265284
	.quad	0x3fe3b5a015483ad7              # double 0.61592106014890191
	.quad	0x3fe7cb037dc60ca5              # double 0.74353193822061725
	.quad	0x3fe9bae069cb2de7              # double 0.80406208670450219
	.quad	0x3fc80c56ddff7970              # double 0.18787656631225103
	.quad	0x3fe3822e87252187              # double 0.60964132686153583
	.quad	0x3fc52fdc94cf299c              # double 0.16552312151027315
	.quad	0x3feb67fc0da631b3              # double 0.85644343057497563
	.quad	0x3fe64b59bde122f1              # double 0.69669806562259684
	.quad	0x3f9f8f5132837c40              # double 0.03082014914332043
	.quad	0x3fd55189f55984a0              # double 0.33310173950128252
	.quad	0x3fee9c1352159c5c              # double 0.9565521815501472
	.quad	0x3fccd999141d9348              # double 0.2253905628414492
	.quad	0x3fe28ce7af5e906e              # double 0.57970031978449099
	.quad	0x3fdf2caaec386b14              # double 0.48710129803082336
	.quad	0x3fe1301ca5c9f2da              # double 0.53712303524624905
	.quad	0x3fe8c32753542636              # double 0.77382246279848377
	.quad	0x3feedc55ebcda80a              # double 0.9643964391264046
	.quad	0x3fa7f7ddd4bb7100              # double 0.046812946527753141
	.quad	0x3fe3c4d24e04e513              # double 0.61777606237515881
	.quad	0x3fee45b4770c074c              # double 0.9460089039932682
	.quad	0x3fe131abbe4e996f              # double 0.53731333894101663
	.quad	0x3fe91135172bab09              # double 0.78335051084045049
	.quad	0x3fa1f4100bc969b0              # double 0.035065175474943699
	.quad	0x3fc6192616d95280              # double 0.17264248004598315
	.quad	0x3fd3eea6239ecaf8              # double 0.31144097784560598
	.quad	0x3fdc17fb4881a51e              # double 0.43896371918397559
	.quad	0x3fe278e61963d34f              # double 0.577258157338841
	.quad	0x3fe7643d4c0fa81d              # double 0.73098625999159916
	.quad	0x3fe591b2cf2b5d9c              # double 0.67403545820973276
	.quad	0x3fb98effd11b23a0              # double 0.09983824591758017
	.quad	0x3fee4ef98d7eb1ab              # double 0.94714048038217891
	.quad	0x3fccc3d623c939b8              # double 0.22472645518651091
	.quad	0x3fda8a0a046c0342              # double 0.41467523986652932
	.quad	0x3fe2aea945e74f36              # double 0.58382095006024914
	.quad	0x3fc40164fa124ce0              # double 0.15629255495568994
	.quad	0x3fc73436fcf8dc90              # double 0.18128096916345671
	.quad	0x3fe66b6707a55c68              # double 0.70061065190647032
	.quad	0x3fe5eafd22a39bf6              # double 0.68493515744637423
	.quad	0x3fd4a524ff0cbcf6              # double 0.32257962138369523
	.quad	0x3fe0d58e3e3dd1c2              # double 0.52606880337275919
	.quad	0x3fd51c99658e8064              # double 0.32987055699960011
	.quad	0x3fe6705e33f349fe              # double 0.70121679445793439
	.quad	0x3fc8942286e24154              # double 0.19202071748851302
	.quad	0x3fe194e14aa38447              # double 0.54942383363607739
	.quad	0x3fdac584d5765942              # double 0.41830559583594973
	.quad	0x3faaed744cae9120              # double 0.052592882500251514
	.quad	0x3fe69254d2846a1d              # double 0.70536271206521273
	.quad	0x3fec0ae12a4768d5              # double 0.87632807023626447
	.quad	0x3fe885966a09f10f              # double 0.7663070746489512
	.quad	0x3feb83b9d7f38d84              # double 0.85982982805255447
	.quad	0x3fe5e1b5e10530e0              # double 0.68380254697106224
	.quad	0x3fe0b1a5a459df69              # double 0.52168542957131792
	.quad	0x3fd556f31908bc54              # double 0.33343198246706618
	.quad	0x3fc05fff7ee88fc4              # double 0.12792962738705971
	.quad	0x3fb3826ad144a570              # double 0.076208759394509106
	.quad	0x3fcdaa6a9a8858e8              # double 0.2317631964257949
	.quad	0x3fc7ad366b7cfb60              # double 0.1849735283703593
	.quad	0x3fe2f96ff44cacfa              # double 0.59294889178036603
	.quad	0x3fd3411809434eee              # double 0.30084801582891785
	.quad	0x3fe5b97382421ad0              # double 0.67888808671053802
	.quad	0x3feed2c24e12767b              # double 0.9632274174543477
	.quad	0x3fbb80d7df97f3d8              # double 0.10743474205806025
	.quad	0x3fe50ce75ae0c013              # double 0.65782516240688194
	.quad	0x3f9bbf84e5d62fc0              # double 0.027097775009266689
	.quad	0x3fe661122f1bcf85              # double 0.69934949112801859
	.quad	0x3fd704777bcbcd62              # double 0.35964762773001813
	.quad	0x3fe53da56b946dc1              # double 0.6637751675765956
	.quad	0x3f94cd9da682e5a0              # double 0.020315612113994796
	.quad	0x3fc2f6dc6376da3c              # double 0.14815859657911001
	.quad	0x3fe75d60f57639aa              # double 0.73014877263795097
	.quad	0x3fdb47143ff30d8c              # double 0.42621332402287559
	.quad	0x3fe65afd80b7716a              # double 0.69860720767932816
	.quad	0x3fd94cd4eb80aae0              # double 0.39531443594266413
	.quad	0x3fe5bae01df8b18a              # double 0.67906194547463028
	.quad	0x3fef712fa301a8bd              # double 0.98256666028216665
	.quad	0x3feff41b2aa99f0d              # double 0.99854811031852508
	.quad	0x3fda29c7aea1f560              # double 0.40880004934282077
	.quad	0x3f9bb91453a3ca80              # double 0.027073209385842123
	.quad	0x3fef0a72a345f12d              # double 0.97002536668109018
	.quad	0x3fe4758dd633122f              # double 0.63934985957945922
	.quad	0x3fec7ba447fdac12              # double 0.89009298382495872
	.quad	0x3fe2612626e2d225              # double 0.57435901255536648
	.quad	0x3fd49cb31449cea6              # double 0.32206418019561978
	.quad	0x3fa278976b2db510              # double 0.03607628997165524
	.quad	0x3feafa6cdf4839e1              # double 0.84306949243346818
	.quad	0x3fd483c7f89170fc              # double 0.32054328226310225
	.quad	0x3fe5cdd69120e15d              # double 0.68137672753713796
	.quad	0x3fd8cd13d35e4904              # double 0.3875169338363238
	.quad	0x3fe7d6de30c5cf65              # double 0.74497899557034641
	.quad	0x3fe25041b32d2024              # double 0.5722969531570965
	.quad	0x3fde238e341b5f18              # double 0.47092013443533309
	.quad	0x3fde3c240c5316d2              # double 0.47242070392199509
	.quad	0x3fc3d4551a13ba54              # double 0.15491737149519003
	.quad	0x3fda629a4ad7f84a              # double 0.41226823147724601
	.quad	0x3fd2af7181950a3e              # double 0.29195821432600499
	.quad	0x3fde834476263a94              # double 0.47676192796726835
	.quad	0x3fedea82f581e6ff              # double 0.9348768992487918
	.quad	0x3fdb67592c25f460              # double 0.42818288146356132
	.quad	0x3fdc7c4fb7ab63fc              # double 0.44508736549829542
	.quad	0x3fe71b484fcb3520              # double 0.72208037934038671
	.quad	0x3fdab2e0e2db15da              # double 0.4171678748501485
	.quad	0x3fb5c3a4c71d64b8              # double 0.085016535388961922
	.quad	0x3fdcb39ddb1447f8              # double 0.4484629287190951
	.quad	0x3fccfc91f309f124              # double 0.22645782820826199
	.quad	0x3fefc86e6aaa87aa              # double 0.99321671326855676
	.quad	0x3fec92f5c31120ca              # double 0.89293945406918707
	.quad	0x3fb0e9bf48c9c078              # double 0.066066699286013164
	.quad	0x3fe34030620b099e              # double 0.60158557080312725
	.quad	0x3fea09a6190fd97d              # double 0.8136778344622112
	.quad	0x3fd7dd915e03532c              # double 0.37289842778163762
	.quad	0x3fd4215244b4a450              # double 0.31453377446684261
	.quad	0x3fe5c138dbc2ffd3              # double 0.6798366825314538
	.quad	0x3fce159a29877f10              # double 0.235034246709795
	.quad	0x3fe396ffb16fcf58              # double 0.61218247085205757
	.quad	0x3fe46adb34aa6c80              # double 0.63804397856019079
	.quad	0x3fe0532ceb7e0dc0              # double 0.51015325541123246
	.quad	0x3fef310a5426f5c2              # double 0.97473637042974581
	.quad	0x3fe705745f8db925              # double 0.71941584265531289
	.quad	0x3fc8631dfaff9f50              # double 0.19052481418406808
	.quad	0x3fd052528bdb51a6              # double 0.25502456338770185
	.quad	0x3fc4331db96924f4              # double 0.15780993989236658
	.quad	0x3fbdf1230a093280              # double 0.11696070666330094
	.quad	0x3fb37106c4dfd6d8              # double 0.075943396630317905
	.quad	0x3fae41b81f40d2c0              # double 0.05909514791020376
	.quad	0x3fb06c27e3a3b700              # double 0.064150326801350133
	.quad	0x3fe67378f659bcc0              # double 0.70159576526011591
	.quad	0x3fe7b0fa57191527              # double 0.74035374652217889
	.quad	0x3faf6b599bc37f40              # double 0.061365890754812913
	.quad	0x3fd1521dd3836364              # double 0.27063699393834484
	.quad	0x3fcd80452c9f6bfc              # double 0.23047699622006224
	.quad	0x3fcd0ab7e5e7f8a8              # double 0.22688959813962595
	.quad	0x3fed29d9a11f8651              # double 0.91135865659107129
	.quad	0x3fef0df0873ebfb0              # double 0.97045160689412135
	.quad	0x3fe61b36e5cf5166              # double 0.69082207569821885
	.quad	0x3fee7820683fbb1e              # double 0.95216389046786154
	.quad	0x3fe5ebc30446d931              # double 0.68502951464942019
	.quad	0x3fee98edc76dc52e              # double 0.9561680693715624
	.quad	0x3fe02fe3116757dc              # double 0.50584557913930039
	.quad	0x3f901140d3880da0              # double 0.015690815840583405
	.quad	0x3fe2642ad2e346f4              # double 0.57472745121978486
	.quad	0x3fe0a45500d866c5              # double 0.520060063982975
	.quad	0x3fdab7cba890a7de              # double 0.41746798955375464
	.quad	0x3fedf82d2c69403a              # double 0.93654497789430668
	.quad	0x3fedd6cfdaa7c86a              # double 0.93247215944417161
	.quad	0x3fd6fb415f48f10a              # double 0.35908541016739604
	.quad	0x3fea0a98b96332a0              # double 0.81379352768415813
	.quad	0x3fcdacee5d907a34              # double 0.23183993881771559
	.quad	0x3fde9eeeaa74a466              # double 0.47845045705850564
	.quad	0x3fe2485a68585f14              # double 0.57133217220232035
	.quad	0x3fd7d54364bdb076              # double 0.37239155614839292
	.quad	0x3fb8b961bb12fde0              # double 0.096578701183708925
	.quad	0x3fe891b35fd656c4              # double 0.76778572767462849
	.quad	0x3fe58b917088ad61              # double 0.67328712443615413
	.quad	0x3f976afee3e3a880              # double 0.022869093570001997
	.quad	0x3fe30a2cadc51c71              # double 0.59499200763174376
	.quad	0x3fe57feb93662a6d              # double 0.67186526097186816
	.quad	0x3fec99ecfac0cec8              # double 0.89378975844598418
	.quad	0x3fe7f7555bc6b132              # double 0.74894206929233165
	.quad	0x3fe3377844eff1c5              # double 0.6005212160521799
	.quad	0x3fe06709b6665d2d              # double 0.51257787346813688
	.quad	0x3fee7df480355801              # double 0.95287537613580764
	.quad	0x3fdf6a274c71a068              # double 0.49085409608097175
	.quad	0x3fd04e60c1544238              # double 0.2547838104228819
	.quad	0x3fee84b59d93cf91              # double 0.95369988228638836
	.quad	0x3fe80c5fd0c3fbe1              # double 0.7515105321361909
	.quad	0x3fe307044892a4ca              # double 0.59460653471355696
	.quad	0x3fd7791cc3d2d616              # double 0.36676711200138479
	.quad	0x3fd80b6349b49578              # double 0.37569505880158927
	.quad	0x3fb294266c005fd0              # double 0.072573090903801374
	.quad	0x3fef16edd305815f              # double 0.97154895033967736
	.quad	0x3fefca42bf776c1b              # double 0.9934400310115764
	.quad	0x3feca6cb2ae4a1f9              # double 0.89536054971273338
	.quad	0x3fdcd0e460c5dd74              # double 0.45024976206283118
	.quad	0x3fefe2b0fc64346e              # double 0.99642228408050726
	.quad	0x3feb7764b0e8134e              # double 0.85832438041743742
	.quad	0x3fc6a51ebe265238              # double 0.17691406521466191
	.quad	0x3fe97a4113b1bc62              # double 0.7961736092237397
	.quad	0x3fe0e9c37bc4df9c              # double 0.52853559659614602
	.quad	0x3fe8b64cf8671b26              # double 0.77225349918521569
	.quad	0x3fb6dd1e15cdb548              # double 0.089311485598689733
	.quad	0x3fb9193ef62b44b0              # double 0.098041472530229212
	.quad	0x3fee501134de2c13              # double 0.94727382970575247
	.quad	0x3feb8f15ca2872eb              # double 0.86121644481644688
	.quad	0x3fd40c4ab4d39fd8              # double 0.31325023325780199
	.quad	0x3feae2391331ab2c              # double 0.84011510609466233
	.quad	0x3fdcbca6b54f9aae              # double 0.44901435571811532
	.quad	0x3fef1b823bd7cb6f              # double 0.97210799873424302
	.quad	0x3fe1955ccffe0d36              # double 0.54948273299706929
	.quad	0x3fe3df05a326bbad              # double 0.6209743677662708
	.quad	0x3fd2ea3cec98be2c              # double 0.29554675202504899
	.quad	0x3fe56ce6d7f3689f              # double 0.66954366853612501
	.quad	0x3fa2a07eddfbbb20              # double 0.036380734059880959
	.quad	0x3fdbf872ba88207a              # double 0.43703907218924309
	.quad	0x3fecd32ff81a2d76              # double 0.90077970941039953
	.quad	0x3fdeff95b2ae4850              # double 0.48434965562149035
	.quad	0x3fe0e93afa78b570              # double 0.52847050590723477
	.quad	0x3fe264038853f905              # double 0.57470871569219695
	.quad	0x3fe622acdc7efaba              # double 0.69173281732204051
	.quad	0x3feb922f26a4a67b              # double 0.86159474894993993
	.quad	0x3f9fe46621d18580              # double 0.031144710363496753
	.quad	0x3fdd7319092496fe              # double 0.46015001194824368
	.quad	0x3fbf594b0d5ee308              # double 0.1224562556880181
	.quad	0x3fb8a016eb759f90              # double 0.096192772374364077
	.quad	0x3fba38cd5ad1f6a0              # double 0.10242923228539746
	.quad	0x3fc0833efd230540              # double 0.12900531158633477
	.quad	0x3fe09b4964e4a3db              # double 0.51895589547813914
	.quad	0x3fe70b663835878d              # double 0.72014151552524341
	.quad	0x3fd8371d47e1782a              # double 0.37836391467669961
	.quad	0x3fe321b4e0df36a0              # double 0.59786456985758107
	.quad	0x3f75ae24a55a5e80              # double 0.0052930289727083357
	.quad	0x3fe5a65a55fccab6              # double 0.67655674738337868
	.quad	0x3fe2173fe5998011              # double 0.56533808559106735
	.quad	0x3fa6fb9f51063da0              # double 0.044888476029082414
	.quad	0x3fd7646c9824fcf0              # double 0.36550440652713601
	.quad	0x3fe949c1f4fdfc61              # double 0.79025361871743993
	.quad	0x3fddeaaf6a68027e              # double 0.46744904891242089
	.quad	0x3fe22e2d660899c1              # double 0.56813688209950197
	.quad	0x3fed909bca0e1229              # double 0.92390241111622118
	.quad	0x3fd4ad3f45dfbc4a              # double 0.32307416747693607
	.quad	0x3fab039261a1ced0              # double 0.052761625688530267
	.quad	0x3fde3870b7292522              # double 0.47219484221257535
	.quad	0x3f7ce9b1271f1180              # double 0.0070588035613962097
	.quad	0x3fd329fecd160e74              # double 0.29943819072671052
	.quad	0x3fc5dd8aedcfe684              # double 0.17082344638747682
	.quad	0x3f967ab23f643140              # double 0.021952424162962503
	.quad	0x3fd2c61cb6d4f5a2              # double 0.29334180693316558
	.quad	0x3fd071dfda81c5dc              # double 0.25695034349982193
	.quad	0x3fd2925cba1aa208              # double 0.29018324064466627
	.quad	0x3fd16405234d0242              # double 0.27172974059434207
	.quad	0x3fab45e6c248b520              # double 0.053267680374441406
	.quad	0x3fd3a25eb44a7006              # double 0.30678527456780136
	.quad	0x3fe6051a2ecf0bf6              # double 0.68812283651675332
	.quad	0x3fed701bd29c6042              # double 0.91993514189653802
	.quad	0x3fdb7f2ef08e924a              # double 0.42963765613447846
	.quad	0x3fda4d556b464572              # double 0.41097007251763451
	.quad	0x3fe3aa6c51b017a2              # double 0.61455360369358325
	.quad	0x3f70f0c60664d180              # double 0.0041358695364589471
	.quad	0x3fe0a706b3ba0f39              # double 0.5203889379776917
	.quad	0x3fde74b1ce9f7efa              # double 0.47587247064619442
	.quad	0x3fe98d730fb60df7              # double 0.79851677959999179
	.quad	0x3fb53f05d42d9d88              # double 0.082992901135744757
	.quad	0x3fc469ccbcba0924              # double 0.15947875228091235
	.quad	0x3fea8e3700e5657a              # double 0.8298602120877796
	.quad	0x3fdaa6874c4f92de              # double 0.41641409351568182
	.quad	0x3fdc20fd89f681fc              # double 0.43951357338849539
	.quad	0x3fe8b1d8de39371f              # double 0.77170985606219122
	.quad	0x3fecb5ae450d1835              # double 0.89717782484581809
	.quad	0x3fe4a92f29664acb              # double 0.64565237127166009
	.quad	0x3fc60f0ded13aab8              # double 0.17233442379013808
	.quad	0x3fe343be67563010              # double 0.60201950247710734
	.quad	0x3feb3f1c48e13bfe              # double 0.85145391687717598
	.quad	0x3fe19ad0a8b62e06              # double 0.55014832450382367
	.quad	0x3fd90ee18844745c              # double 0.39153326327670412
	.quad	0x3fce46d599a78870              # double 0.23653669359834195
	.quad	0x3fef76bf0e70d796              # double 0.98324539967028346
	.quad	0x3fee3db49e39d9b5              # double 0.94503241446982733
	.quad	0x3fe47f905868386b              # double 0.64057175890935747
	.quad	0x3fd54d1ca58b3da4              # double 0.33283153692624468
	.quad	0x3fcab20e400d8690              # double 0.20855882766322908
	.quad	0x3fa1a017c6c1ae00              # double 0.034424536716723964
	.quad	0x3fb7e3839b23c788              # double 0.093315339446944034
	.quad	0x3fe516f38dd35b33              # double 0.6590516824752285
	.quad	0x3fd0afe4ca696892              # double 0.26073570029041904
	.quad	0x3febf579058ad82b              # double 0.87371493418209434
	.quad	0x3fefb0a2406689c8              # double 0.99031174257498211
	.quad	0x3fd84f93fd2967aa              # double 0.37985706065011959
	.quad	0x3fd05f3aaa98bd88              # double 0.25581232700184175
	.quad	0x3fe20140e5fb8771              # double 0.56265301626647901
	.quad	0x3fef046ea1c9f999              # double 0.96929103469283284
	.quad	0x3fefbb407aa35e05              # double 0.99160789444698649
	.quad	0x3fedcced182b489f              # double 0.93126539917490792
	.quad	0x3fe6c73cf58416a7              # double 0.71182105972612397
	.quad	0x3fdb48e99bfc72be              # double 0.42632522805233097
	.quad	0x3fd2f756ca2a1a20              # double 0.29634637587187918
	.quad	0x3fea779c54197cc2              # double 0.82710091043181699
	.quad	0x3feff9f4893f48df              # double 0.99926211172194345
	.quad	0x3fb79313d4481d98              # double 0.092087973906123444
	.quad	0x3feb4f6f4ff9f1f3              # double 0.85344663257961739
	.quad	0x3fe17271388179e3              # double 0.54522000347406807
	.quad	0x3fe55b9ed0117b38              # double 0.6674341262658805
	.quad	0x3fda9364b761df02              # double 0.41524618061474439
	.quad	0x3fe52bec33b030c9              # double 0.66161165328369365
	.quad	0x3fee19ac966c101f              # double 0.94063405398674493
	.quad	0x3fe699529782f27c              # double 0.7062161406716565
	.quad	0x3fcc2a49d8a6e5fc              # double 0.22004054144581164
	.quad	0x3fdcef1eb11eba1e              # double 0.452094719857003
	.quad	0x3feceaa7adf30f9b              # double 0.90364440893653197
	.quad	0x3fabeb4cd738e510              # double 0.054529572746512156
	.quad	0x3fdbf408b218904c              # double 0.43676965133841317
	.quad	0x3fe07d5684794a25              # double 0.51530004380976335
	.quad	0x3fd2de338889e75c              # double 0.29481209119659524
	.quad	0x3fd6d60c222adb1e              # double 0.35681441628132571
	.quad	0x3fe2934af9e83ae5              # double 0.58048008737554524
	.quad	0x3fe6c8df54a3138b              # double 0.71202055483500837
	.quad	0x3fd12d0dff0861a0              # double 0.26837491899052601
	.quad	0x3fe3bda05f982535              # double 0.61689776106610472
	.quad	0x3fe4e28f107bdfb8              # double 0.65265610904224669
	.quad	0x3fde860c4faf67a4              # double 0.47693164617305173
	.quad	0x3fee271db9f034ce              # double 0.94227491680217113
	.quad	0x3fd2928231c4288e              # double 0.29019217357620952
	.quad	0x3fd9a902e3e25b7e              # double 0.40094063047711603
	.quad	0x3fe09623200c1c79              # double 0.51832729586830262
	.quad	0x3fc2ce924c725780              # double 0.14692906124826877
	.quad	0x3fddb62563821858              # double 0.46424231259914484
	.quad	0x3fa837b0adce90b0              # double 0.047299882141744631
	.quad	0x3fcd39e6d5143fbc              # double 0.22832951931240852
	.quad	0x3fd76eb728d8a10a              # double 0.3661325358284705
	.quad	0x3fea6511960b407b              # double 0.82483748727283002
	.quad	0x3fb1ffe1ac6e0470              # double 0.070310692402942854
	.quad	0x3fedab3bb8e996f3              # double 0.9271525012561298
	.quad	0x3fef084d3dd9c71f              # double 0.9697633941670779
	.quad	0x3fdfb96886e56258              # double 0.49569142507019626
	.quad	0x3fd74356958a571a              # double 0.36348499873689522
	.quad	0x3fd4abb4565fbfda              # double 0.32298000750506406
	.quad	0x3f9fe3a3e2ed4800              # double 0.031141815877454349
	.quad	0x3f8ca75267f0e800              # double 0.013991016194371042
	.quad	0x3feebd6ced651673              # double 0.96062322965799606
	.quad	0x3fefcf3de1db29ea              # double 0.99404806244393495
	.quad	0x3fe539ef1bf84d67              # double 0.66332202399136697
	.quad	0x3fda3c9dd995430c              # double 0.40994974373192927
	.quad	0x3fd87f4b7de02c5e              # double 0.38276946346804219
	.quad	0x3fef942dc4c39d1a              # double 0.98683823042384522
	.quad	0x3fd6da39110cfd80              # double 0.35706926980125075
	.quad	0x3fe60f36b0111661              # double 0.68935713184391656
	.quad	0x3fe56e28de36894b              # double 0.66969722176535507
	.quad	0x3fb9bbef8e181ce8              # double 0.10052392214867079
	.quad	0x3fec8890648432e6              # double 0.8916704142771692
	.quad	0x3fd1b2e49c0b6ce4              # double 0.27654376257642199
	.quad	0x3fed59dbc5fa8131              # double 0.91721905391390213
	.quad	0x3fc8b9cac28ee43c              # double 0.19316992282782219
	.quad	0x3fe9f87b13359a15              # double 0.81158212425072185
	.quad	0x3fccc978bf8140cc              # double 0.22489842749428701
	.quad	0x3fe1fc7bc71c438d              # double 0.5620707405924904
	.quad	0x3fee2e4cd9b05f2f              # double 0.94315187947629464
	.quad	0x3fd6724e032a7f4c              # double 0.35072660741024175
	.quad	0x3fe779f76f1a2797              # double 0.73363849353448785
	.quad	0x3feca900600fedea              # double 0.89563006174233561
	.quad	0x3fe3c471dc62b020              # double 0.6177300743488594
	.quad	0x3fea4694ed43627a              # double 0.82111593571160246
	.quad	0x3fe71ad84334d41a              # double 0.72202695013277496
	.quad	0x3fcf1a4bad7c2b5c              # double 0.24298997851323179
	.quad	0x3fefa6d6a5a08f7e              # double 0.9891160235315366
	.quad	0x3fd03db93d223fa0              # double 0.25376730890365629
	.quad	0x3fde0a7c9ae39496              # double 0.46939005971791781
	.quad	0x3fe048576d7b3007              # double 0.50883075125739274
	.quad	0x3fe1ad92cabb580f              # double 0.55243815990502465
	.quad	0x3febc73398f21281              # double 0.8680665957659387
	.quad	0x3fd3645981d10f90              # double 0.30299985577971089
	.quad	0x3fe64fb995b2fde8              # double 0.69723204839823172
	.quad	0x3fe19f7bc815b47b              # double 0.5507182033449135
	.quad	0x3fe5af92aa75ec3a              # double 0.67768224042027403
	.quad	0x3fe82f933ad70471              # double 0.75580750934763163
	.quad	0x3fd31cb75eac5bce              # double 0.29862770314633458
	.quad	0x3fef58312ed7b1f2              # double 0.97951563977181721
	.quad	0x3fee314774c34608              # double 0.94351551823837187
	.quad	0x3fde7cdc917678ba              # double 0.47637094693517279
	.quad	0x3fe7a16e6f632cd6              # double 0.73845597987510803
	.quad	0x3fe0642a22716383              # double 0.51222712256559111
	.quad	0x3fe8bcc6f518f43b              # double 0.77304408903695021
	.quad	0x3feea7371ad5471e              # double 0.9579120182117753
	.quad	0x3feb96537a8807a3              # double 0.86210035259158635
	.quad	0x3fe4af85ff797c03              # double 0.64642619988796957
	.quad	0x3febc30a0ea51af2              # double 0.86755850658741296
	.quad	0x3fd8d967a2bd1b0e              # double 0.38826933758211701
	.quad	0x3fd3a3b2a13cf58c              # double 0.30686631914053275
	.quad	0x3fdd75e907b3c5ee              # double 0.46032167198344964
	.quad	0x3fea4115bb60f69e              # double 0.82044493291296638
	.quad	0x3fc47c4098299b4c              # double 0.16004187993822894
	.quad	0x3fdb45507da6b060              # double 0.42610561628931087
	.quad	0x3fe08e3950d8af0e              # double 0.51736131468121171
	.quad	0x3fca3fc790ca3378              # double 0.20507139749352254
	.quad	0x3fd0528d07e68a6c              # double 0.25503850719011356
	.quad	0x3fe948c09ad4a010              # double 0.79013090362878025
	.quad	0x3fdb04b7306949e6              # double 0.4221628163114971
	.quad	0x3fe5f65e14c025ae              # double 0.68632415821882886
	.quad	0x3fe46177da948274              # double 0.63689797107151813
	.quad	0x3fe10ae14810bb5a              # double 0.53257812571778662
	.quad	0x3fe086f9e38e9427              # double 0.51647657818523818
	.quad	0x3fd6382ac80de8e6              # double 0.3471781686454406
	.quad	0x3fed49da4c0442e9              # double 0.91526522490502515
	.quad	0x3fe581959b34ecc1              # double 0.67206840814414914
	.quad	0x3fdda3262c880eb4              # double 0.4630828318479232
	.quad	0x3fd60a29d7998e40              # double 0.34437032751722896
	.quad	0x3fe7d26585af5893              # double 0.74443317518559338
	.quad	0x3feb61e9c029f064              # double 0.85570228130337655
	.quad	0x3fc32af524014a50              # double 0.1497484613233433
	.quad	0x3fb8ffe51073dc60              # double 0.097654644505256182
	.quad	0x3fecd4f9bcc00977              # double 0.9009979902769335
	.quad	0x3fd26dc0829eb38c              # double 0.28794873004772437
	.quad	0x3fbcb2e492eb14d8              # double 0.11210468851921307
	.quad	0x3fd6c89469539406              # double 0.35599241529263315
	.quad	0x3fe7aa0492c1687c              # double 0.73950413382705404
	.quad	0x3fe5c5936974e461              # double 0.68036814305299853
	.quad	0x3fd1aaca012b2068              # double 0.2760491382036947
	.quad	0x3fe4de418b078c9d              # double 0.65213086275288712
	.quad	0x3fa7681befaa2eb0              # double 0.045716164594606368
	.quad	0x3f43e5bcb9182000              # double 6.0722079268860085E-4
	.quad	0x3fe6bee3608909ae              # double 0.71080178122092774
	.quad	0x3fc6727c75ed0ee8              # double 0.17536884077173132
	.quad	0x3f94c339f6f6bc80              # double 0.020275979708170855
	.quad	0x3fe0fb6a7ab48fde              # double 0.53069042173273906
	.quad	0x3fe3ad3cb61df849              # double 0.61489711351146881
	.quad	0x3fefed565eb2d7f7              # double 0.99772184844800804
	.quad	0x3fee2fc47641a837              # double 0.94333098504035362
	.quad	0x3feb9310e28b1e5f              # double 0.86170238730205628
	.quad	0x3f8c1d4775d18880              # double 0.013727720530543275
	.quad	0x3fe38b8ba1906ce1              # double 0.61078435473919168
	.quad	0x3fcba51ca205c204              # double 0.21597631369833448
	.quad	0x3fe68cb0e42037b1              # double 0.70467419200735126
	.quad	0x3fab5289db55c090              # double 0.053364093803680679
	.quad	0x3fde087b95375128              # double 0.46926774570353524
	.quad	0x3fc736d6c36f6598              # double 0.18136105101329458
	.quad	0x3fd13e75a687ab10              # double 0.26943722975436035
	.quad	0x3fccc896c53ff974              # double 0.22487148887007502
	.quad	0x3fd6676b446d01c2              # double 0.35006219560821361
	.quad	0x3fea737291093e2b              # double 0.82659271552433233
	.quad	0x3fdf33d3bcd7e6c4              # double 0.48753827516302928
	.quad	0x3fee83c94b222a65              # double 0.9535871951532725
	.quad	0x3fab80b102dcd4d0              # double 0.053716212844315714
	.quad	0x3fe16c0ec4e385c8              # double 0.54444063620410876
	.quad	0x3fcb4f5e054f05d8              # double 0.2133595968171409
	.quad	0x3fd410196467f804              # double 0.31348261647497133
	.quad	0x3fe2ec241edbc6e7              # double 0.59132581736613765
	.quad	0x3fee8ed4f212227a              # double 0.9549355247446123
	.quad	0x3fec4d3200cdc5c6              # double 0.88442325741760253
	.quad	0x3fb01255ca7815b0              # double 0.06277977173893734
	.quad	0x3fef5ea88e0d47be              # double 0.9803049826098158
	.quad	0x3fd2608917f2d6a2              # double 0.28714206064919712
	.quad	0x3fef9fd8f8fb47af              # double 0.98826264027797161
	.quad	0x3fe2248e9a21f05d              # double 0.56696252922075596
	.quad	0x3fdb5966996064f8              # double 0.42733159044435309
	.quad	0x3fdb5ee55f955fda              # double 0.42766699156117982
	.quad	0x3fe9c7d481374497              # double 0.80564332234839042
	.quad	0x3fe6e6eb31f96239              # double 0.71568832169129515
	.quad	0x3fbcd4a8751f3288              # double 0.11261990413113143
	.quad	0x3fedcea644d99a5b              # double 0.93147576758640172
	.quad	0x3fe1ed669b8b5351              # double 0.56022959117636095
	.quad	0x3fb24d8a0dd66108              # double 0.071495655420566462
	.quad	0x3fb35021e6036b50              # double 0.075441473632435362
	.quad	0x3fcfe871cc8e19a4              # double 0.24928114402810053
	.quad	0x3fd1c7af11ac69c0              # double 0.27781273580481169
	.quad	0x3fef724e16166483              # double 0.9827032500644609
	.quad	0x3feb7663f46be982              # double 0.85820195902424268
	.quad	0x3fea90a4e6a55c54              # double 0.83015675590548676
	.quad	0x3fd19dcd34be8a92              # double 0.27525644446192488
	.quad	0x3fb035958c34d8e0              # double 0.063317629556738364
	.quad	0x3fd3c0e7edd55f0a              # double 0.30864904619146272
	.quad	0x3fe6c8de2604ab1f              # double 0.71201999116360415
	.quad	0x3fd49afdb7eeb91e              # double 0.32195990526351348
	.quad	0x3fcb62521aa9080c              # double 0.21393801023265302
	.quad	0x3fe94b6a3de0a7b9              # double 0.7904559334322051
	.quad	0x3fd25f93683e8a92              # double 0.28708348445994958
	.quad	0x3fec68b5a7baba63              # double 0.88778193244600023
	.quad	0x3fee2b205989ffe0              # double 0.94276444900605937
	.quad	0x3fc9913c3cc7632c              # double 0.19974472968785884
	.quad	0x3fef0ddafcc3cf82              # double 0.97044133537427535
	.quad	0x3fee6bf1229d0b33              # double 0.95067650566520567
	.quad	0x3fede65ca5a90290              # double 0.93437034945971398
	.quad	0x3fdbc95fe567432a              # double 0.43416592981980051
	.quad	0x3fec55c5e17c790d              # double 0.88547033348348381
	.quad	0x3fee024ecbe0e759              # double 0.93778171367669494
	.quad	0x3fd65b24c2b0e810              # double 0.34931296360775921
	.quad	0x3fd36741c73b4cae              # double 0.30317730385031438
	.quad	0x3fe1ca66dcc83f1d              # double 0.55595725175405486
	.quad	0x3fe87bd526f674f7              # double 0.76511628732592285
	.quad	0x3fe851d1b8a84876              # double 0.75998769822969225
	.quad	0x3fdfaf3dd893c624              # double 0.49507089758034994
	.quad	0x3fe9aab41f9f45f4              # double 0.80208784271434163
	.quad	0x3fc53b33fc5c2534              # double 0.16586923429739786
	.quad	0x3fc7f3e1cdca87d8              # double 0.18713018940348891
	.quad	0x3fd16127119ff192              # double 0.27155472489519028
	.quad	0x3fc52e0f08c1505c              # double 0.1654681008100195
	.quad	0x3fe9591713063791              # double 0.79212526050263155
	.quad	0x3fea5f6322bf03a8              # double 0.824143951285909
	.quad	0x3fb56a8ec44df3f0              # double 0.083657191205886993
	.quad	0x3fe9f214c5bbe86b              # double 0.81080092067646825
	.quad	0x3fd2d78efeffbabc              # double 0.29440665151825463
	.quad	0x3fe861499591c73d              # double 0.76187590801985261
	.quad	0x3fe281bced92b09d              # double 0.57833715821245202
	.quad	0x3fe12ee1f5c391c1              # double 0.53697298050661157
	.quad	0x3fe32dc68db74307              # double 0.59933784178619554
	.quad	0x3fd740763407fbb0              # double 0.36330943185015041
	.quad	0x3fa21a5f45ae0ba0              # double 0.035357453590243226
	.quad	0x3fe7f4d91f3fcb4d              # double 0.74863868811949319
	.quad	0x3fd6ca76eba5be44              # double 0.35610745441860936
	.quad	0x3fddabda5a7ab78c              # double 0.46361407123446763
	.quad	0x3fec905cd6809b76              # double 0.89262239356035766
	.quad	0x3fd2d73b5730d8ba              # double 0.29438670649268384
	.quad	0x3fc4c1c8985a45a4              # double 0.1621638053807547
	.quad	0x3fd725f2a15bb800              # double 0.36169114835399796
	.quad	0x3fdc47ff354bd006              # double 0.44189434246732195
	.quad	0x3feb90d67d34687a              # double 0.86143040136381832
	.quad	0x3fcaf9a6703e9070              # double 0.21074371796305824
	.quad	0x3fe8f813401a45af              # double 0.78028261680645083
	.quad	0x3f940dc858b67b40              # double 0.019583826460457532
	.quad	0x3fd5d82e403631d4              # double 0.3413196208064424
	.quad	0x3fe39ff5c97049bd              # double 0.61327637999993778
	.quad	0x3fe0da1cb0ef0726              # double 0.52662500913013299
	.quad	0x3fda4057acedef98              # double 0.41017715346947048
	.quad	0x3fdb5341d95950ae              # double 0.42695661759831693
	.quad	0x3fdbcb4a106c4938              # double 0.43428279498870692
	.quad	0x3fe6764490133e1b              # double 0.70193699016266764
	.quad	0x3fd665a48ae4da98              # double 0.34995378078330353
	.quad	0x3fd210a512759eec              # double 0.28226591875726004
	.quad	0x3fd8babdca824d0a              # double 0.3863977887751423
	.quad	0x3fbb574b1a09b598              # double 0.10680074105922299
	.quad	0x3fee8ba2b620bb07              # double 0.95454536029669235
	.quad	0x3f955777d8289a40              # double 0.020841476982378149
	.quad	0x3fe0eb858045521a              # double 0.52875018170249466
	.quad	0x3fb684b588155530              # double 0.087962480281323918
	.quad	0x3fe8a88a44470d5a              # double 0.77057374320467464
	.quad	0x3fcc96ce44ada7d4              # double 0.22335222581324266
	.quad	0x3fcdc3b876d6c92c              # double 0.23253541758237739
	.quad	0x3fd55bf9f3716424              # double 0.33373879216884661
	.quad	0x3fe2b25729e0cf36              # double 0.58427007846191858
	.quad	0x3fe826677ae27c94              # double 0.75468801499291027
	.quad	0x3fc9af894060fdf4              # double 0.20066943782329327
	.quad	0x3fde8fe4a772da84              # double 0.47753254272848999
	.quad	0x3fed036b3798f47e              # double 0.90666733607180539
	.quad	0x3fcaebe6778fff18              # double 0.2103241046715929
	.quad	0x3feca448ef033697              # double 0.8950543087209607
	.quad	0x3fef8e9ec1efd100              # double 0.9861596858814039
	.quad	0x3fe687b16a317061              # double 0.7040640901646037
	.quad	0x3fe6e00dfd5b857f              # double 0.71485042079818573
	.quad	0x3fea26be5b582fd4              # double 0.8172294410774108
	.quad	0x3fe2e85af08e5da1              # double 0.59086367591492117
	.quad	0x3feae7aeb1e88a27              # double 0.84078154323316745
	.quad	0x3fd2e79bac17aca6              # double 0.29538623624712057
	.quad	0x3fe8e1e3d95fa67c              # double 0.77757446723735723
	.quad	0x3feceb2549ff594d              # double 0.90370430424335668
	.quad	0x3fc76fa36913272c              # double 0.18309443121534608
	.quad	0x3fe2a7e7fbafba4e              # double 0.58299636037356506
	.quad	0x3feb136839279e8e              # double 0.84611903346099537
	.quad	0x3fe0c24afe38ad0b              # double 0.52371740009894674
	.quad	0x3fdd0f9ebed62a82              # double 0.45407837520966876
	.quad	0x3fd307d28d198038              # double 0.29735244540461592
	.quad	0x3fd753030a7f55ca              # double 0.3644416430009555
	.quad	0x3fa5802204e6eab0              # double 0.041993201349631248
	.quad	0x3fd67f2b758bf7aa              # double 0.35151182631659117
	.quad	0x3fe1c959436b7b9d              # double 0.55582869689884584
	.quad	0x3fec73bb554b997e              # double 0.889127413360981
	.quad	0x3fd2e61eeb7d817e              # double 0.29529545781226563
	.quad	0x3fee70dc2ce15973              # double 0.95127686277082402
	.quad	0x3f8dd683f7562740              # double 0.014569312081920693
	.quad	0x3fec4a879ba978f5              # double 0.8840978660844302
	.quad	0x3fece24d03433df7              # double 0.9026246131633674
	.quad	0x3fdb6111ac3b941e              # double 0.42779962367632318
	.quad	0x3fd7e330cf32366c              # double 0.37324161752699214
	.quad	0x3fdc6aedf5ac41fa              # double 0.44402646056644779
	.quad	0x3fe4df629d74e0f3              # double 0.65226870301469686
	.quad	0x3fe9cff3cf0248ce              # double 0.8066348117011104
	.quad	0x3fe370f2773d9e5b              # double 0.60753749169539206
	.quad	0x3fe321f954550145              # double 0.59789720984557759
	.quad	0x3fad6e1fb6130760              # double 0.057480803466673391
	.quad	0x3fa59eb631ac3270              # double 0.042226499141268969
	.quad	0x3fd196272e0eb9ca              # double 0.27478961465649532
	.quad	0x3fd763d300fed97a              # double 0.36546778771607757
	.quad	0x3fc68c7becca6c68              # double 0.17616223394438468
	.quad	0x3fe5ab7c6ae17b09              # double 0.67718335032609034
	.quad	0x3fdb895b97d112f6              # double 0.43025865388726403
	.quad	0x3fea054601924e5a              # double 0.81314373309073606
	.quad	0x3fe1f4100e04f5c1              # double 0.56104281175765192
	.quad	0x3fe3cea4dc887f29              # double 0.61897509644402249
	.quad	0x3fd6006f6ac7cebc              # double 0.34377656390936884
	.quad	0x3fe9361c4c8a5dc1              # double 0.78785529088320783
	.quad	0x3fbf729184c091c8              # double 0.1228419255354033
	.quad	0x3fd6dae849bb5056              # double 0.35711104584084319
	.quad	0x3fcf7fe88bbbe07c              # double 0.24609095404571579
	.quad	0x3fdc8b75efbe2db4              # double 0.44601200497046567
	.quad	0x3fe4b9c3bb1647e3              # double 0.64767633953510673
	.quad	0x3fe6dec897fee914              # double 0.71469525992077587
	.quad	0x3fe64b3eaff9b282              # double 0.69668516512099665
	.quad	0x3f9fc59b99a86aa0              # double 0.031027251485378771
	.quad	0x3fd98caa17044fba              # double 0.39921047446955138
	.quad	0x3f720d58dff1c180              # double 0.0044072601004788714
	.quad	0x3fc5e50039209da8              # double 0.17105105199264625
	.quad	0x3fcc10c495c35604              # double 0.21926171600959787
	.quad	0x3fd29e1ba477a15a              # double 0.2909001451612504
	.quad	0x3fe45a77a67b20cb              # double 0.63604338184179576
	.quad	0x3fd4ba5ad267465c              # double 0.32387419268807149
	.quad	0x3fe7f6986d0e5581              # double 0.74885197925566171
	.quad	0x3fe8e2bfb0cf36e1              # double 0.77767929585544604
	.quad	0x3fafebef58660730              # double 0.062346915760839727
	.quad	0x3feddd032688b389              # double 0.93322904134912321
	.quad	0x3fc11ce1335c1ecc              # double 0.13369383819394043
	.quad	0x3fef3747cded9fb9              # double 0.97549810619692955
	.quad	0x3fd06e7167b8e32e              # double 0.25674090508578018
	.quad	0x3fda5ec654e9795e              # double 0.41203459064663217
	.quad	0x3fe8dc0139f97cd3              # double 0.77685605357319287
	.quad	0x3fcf60a916229884              # double 0.24513734417741173
	.quad	0x3fb830668d9abe08              # double 0.094488534518625156
	.quad	0x3fe0fd3aa6f410f0              # double 0.5309117565925856
	.quad	0x3fd434138f2b7f20              # double 0.31567849141537074
	.quad	0x3fdbbe02ca478aec              # double 0.43347234491208897
	.quad	0x3fe943d78048b498              # double 0.7895314698740945
	.quad	0x3fec0150932bafb5              # double 0.87516049141185326
	.quad	0x3faf3576878a7680              # double 0.060954765363232077
	.quad	0x3f9903d4567b24c0              # double 0.024428670671828412
	.quad	0x3fe7a90b4e21b790              # double 0.73938527355288564
	.quad	0x3fd8572e95416d24              # double 0.38032116485347189
	.quad	0x3fd5ff9b46338da6              # double 0.34372598510364083
	.quad	0x3fe4362a16b6a8cc              # double 0.6316118663428596
	.quad	0x3fdbdf1aef297614              # double 0.4354922614637371
	.quad	0x3fb6339f98c48090              # double 0.086725210949682329
	.quad	0x3fd68ef0c9080c5a              # double 0.35247439987160123
	.quad	0x3fdda92035ea7cca              # double 0.4634476210139381
	.quad	0x3fe816fe246e12bf              # double 0.7528067313692971
	.quad	0x3fe16d42e0a64002              # double 0.54458755375708301
	.quad	0x3f78c670df387080              # double 0.0060486229954471726
	.quad	0x3fdf3b390a23958e              # double 0.48798967352043909
	.quad	0x3fe0fc82e8f0eb4e              # double 0.53082414146715862
	.quad	0x3fbfb43a6c329500              # double 0.12384381429236058
	.quad	0x3fe6ceaf826a11ff              # double 0.71273017379331793
	.quad	0x3fef0371cfc95c57              # double 0.96917048056901478
	.quad	0x3fe08fbaa16ac159              # double 0.51754504706154159
	.quad	0x3fe9e7ebcb66ff6f              # double 0.80956067778605056
	.quad	0x3fe0c858ddc67c5d              # double 0.52445643725867408
	.quad	0x3fe468f59c70e821              # double 0.6378124289979078
	.quad	0x3fc371f3ab6bd008              # double 0.15191503400967599
	.quad	0x3fe845f4ee2c8a22              # double 0.75853964346271519
	.quad	0x3fe6aaef5059dbfd              # double 0.70836606687123516
	.quad	0x3f6a213ef85e0400              # double 0.0031896810423295285
	.quad	0x3fd905d9d82fe13e              # double 0.39098211395277704
	.quad	0x3fe9670d35842935              # double 0.79382954075234713
	.quad	0x3fdbe71b89ff7d14              # double 0.43598068691604053
	.quad	0x3fec2e80d7bf0e05              # double 0.88067667139006345
	.quad	0x3fdf1e2dfec75cea              # double 0.48621702080477169
	.quad	0x3fe24bc86c44cf07              # double 0.57175084253546593
	.quad	0x3fdac57e116a5e60              # double 0.41830398274166747
	.quad	0x3fea7632b1c06608              # double 0.82692846982098533
	.quad	0x3fed93495c4d7879              # double 0.92422931697707533
	.quad	0x3fe6f17c87ca6281              # double 0.71697832604975542
	.quad	0x3fda0efc8bd4999c              # double 0.40716470389670589
	.quad	0x3fe6aeccee4a6c1b              # double 0.70883795300631236
	.quad	0x3fd53f1801e40dd8              # double 0.33197593865062691
	.quad	0x3fef07613d4c73f6              # double 0.96965085956946839
	.quad	0x3fb8ffb56b2b7b90              # double 0.097651804604067971
	.quad	0x3fdd4c62a4279a30              # double 0.4577871897767265
	.quad	0x3fe9a161ec94e2ff              # double 0.80095001418439427
	.quad	0x3fe46570caef5ce7              # double 0.63738288532013321
	.quad	0x3fd43143f7c52ef6              # double 0.31550692745507491
	.quad	0x3fdb5c36ca18ec9e              # double 0.42750329719610558
	.quad	0x3fe2042580eed7de              # double 0.56300616438124584
	.quad	0x3fe2f6ad386ed790              # double 0.59261189481797949
	.quad	0x3fe1edbd3e13ef8c              # double 0.56027090191445117
	.quad	0x3fe2af8fa795f302              # double 0.58393080455388735
	.quad	0x3fea41d636168821              # double 0.82053671421113361
	.quad	0x3fee6bf5f0ad4a42              # double 0.95067879683694678
	.quad	0x3fe3bc5c8374fcce              # double 0.61674333262626546
	.quad	0x3fede7a75acf6348              # double 0.93452804313992832
	.quad	0x3fc340711db545ec              # double 0.15040410948363048
	.quad	0x3fdf3aa08333d95a              # double 0.4879533082270392
	.quad	0x3fae556f513b5c70              # double 0.059245566049576648
	.quad	0x3fe6133579baa518              # double 0.68984483504496819
	.quad	0x3fb8b9171be48c18              # double 0.096574253377682218
	.quad	0x3fb19ffe84d5c610              # double 0.068847567968781442
	.quad	0x3fe63cf60c16fc68              # double 0.69494154320990464
	.quad	0x3fe14f3917a8ee6a              # double 0.54092077847549302
	.quad	0x3fe5fd3fcdca3aad              # double 0.68716421311713349
	.quad	0x3f93424e232ab0c0              # double 0.018807621857079182
	.quad	0x3fe97f0db9fd2db6              # double 0.79675947500202571
	.quad	0x3fe74abc0106e047              # double 0.72787285042341743
	.quad	0x3fe3d3df024337f7              # double 0.61961317483814937
	.quad	0x3fdf203332ebd984              # double 0.48634033177167901
	.quad	0x3fea07e82e1eecef              # double 0.81346520431489278
	.quad	0x3fc5787f722a1464              # double 0.16773980211670214
	.quad	0x3fe4580864f252f7              # double 0.63574619022492029
	.quad	0x3fe8d910b3ec0c42              # double 0.77649722233798735
	.quad	0x3fee54db9769da9c              # double 0.94785861561725281
	.quad	0x3fee5ec469283a28              # double 0.94906826532843968
	.quad	0x3fe25adf5a9e014f              # double 0.57359283159898122
	.quad	0x3fe8eb05b84f569c              # double 0.77868925092726071
	.quad	0x3fd32b3ff5cd5b86              # double 0.29951476101035046
	.quad	0x3fbd1370ec7ab0d8              # double 0.11357789777202087
	.quad	0x3f835026226b59c0              # double 0.0094302157644222672
	.quad	0x3fe19f6684c45ff3              # double 0.55070806437561115
	.quad	0x3fe17caf2db63f07              # double 0.54647025039773289
	.quad	0x3fcd7e5b3cb83db0              # double 0.23041859116390873
	.quad	0x3feff0985007998c              # double 0.99811950331495458
	.quad	0x3fdb0b1096926798              # double 0.42255034164701888
	.quad	0x3fd4f61aac168274              # double 0.32752100758992886
	.quad	0x3fdd417dcbcd59e8              # double 0.45712227728418364
	.quad	0x3fe5ef06c046f85c              # double 0.6854280238546937
	.quad	0x3fbb12afb8c80ed8              # double 0.1057538820387508
	.quad	0x3fe7bf58b8552c78              # double 0.74210773470384961
	.quad	0x3fe03068214d027a              # double 0.50590902809206217
	.quad	0x3f89497a09908d80              # double 0.012347176949396355
	.quad	0x3fd3add8b4ac0ba4              # double 0.30748574870829715
	.quad	0x3fee36022a36e03c              # double 0.9440928291796875
	.quad	0x3fc82aeb4d7b15cc              # double 0.18880978854410413
	.quad	0x3fd2773192aa1f8a              # double 0.28852500269612646
	.quad	0x3fe8814905dc7dad              # double 0.76578189034255717
	.quad	0x3fd957cd6da84528              # double 0.39598403652878966
	.quad	0x3fe00fa295c337f6              # double 0.50190858126165838
	.quad	0x3fe072c86fbac0cb              # double 0.51401159116905981
	.quad	0x3fe3bc100e827556              # double 0.61670687517077272
	.quad	0x3f9f35053b022520              # double 0.030475694395623809
	.quad	0x3fdb41b2cdf16460              # double 0.42588491546263718
	.quad	0x3fec6ba3299e5c1d              # double 0.88813932541495755
	.quad	0x3fd275e6d6b92424              # double 0.288446149531014
	.quad	0x3f858f3708bb3980              # double 0.010527067140540636
	.quad	0x3fecb7c3275e91ce              # double 0.89743192376459446
	.quad	0x3fe180751bcb1306              # double 0.54693084171648887
	.quad	0x3fe01b19b374a86f              # double 0.50330815362873504
	.quad	0x3fbf9cfecc71bd38              # double 0.1234893082744194
	.quad	0x3fcb751005d9ad68              # double 0.21450996671351708
	.quad	0x3fc88799e33fa8b0              # double 0.19163821788908342
	.quad	0x3fe7390fdcc29c7d              # double 0.72571557156778932
	.quad	0x3fd71a802f794924              # double 0.36099247585402083
	.quad	0x3fe6015554b6b2fa              # double 0.68766275926245091
	.quad	0x3feb0e7be2cfeb5e              # double 0.84551805781607547
	.quad	0x3feac019c9c9a3f5              # double 0.83594979678775749
	.quad	0x3fc4def1cb6a1574              # double 0.16305372650473837
	.quad	0x3fcc52863a16bae0              # double 0.22126844250075006
	.quad	0x3fec16966c3c9f76              # double 0.87775727405549619
	.quad	0x3fef3e52e6d75fe2              # double 0.97635788999741302
	.quad	0x3fe705947e931ec9              # double 0.7194311592256436
	.quad	0x3fd5b4259eda16de              # double 0.33912029755479789
	.quad	0x3fc960a54d93b614              # double 0.19826189315738019
	.quad	0x3f640975f093c800              # double 0.0024459174643363113
	.quad	0x3fe1b48827ba3fb3              # double 0.553287580101815
	.quad	0x3fe2276245a2a245              # double 0.56730760193483631
	.quad	0x3fe708e1f33c9738              # double 0.71983430392422232
	.quad	0x3feb58b311bd7948              # double 0.85457757439488891
	.quad	0x3fed99d31c2f480b              # double 0.92502742295096263
	.quad	0x3fc57d8d87d80ea0              # double 0.16789406903273107
	.quad	0x3fd03377617d8c30              # double 0.25314125557469236
	.quad	0x3fe1d35aefe4d79e              # double 0.55705019811897549
	.quad	0x3febb7a02006841d              # double 0.86616522078486791
	.quad	0x3fe419632dfa5621              # double 0.62809905033163116
	.quad	0x3fe788a2a9e34a35              # double 0.7354291265604106
	.quad	0x3fe1a213550893bb              # double 0.55103460891824996
	.quad	0x3fd2ad8484ab7f56              # double 0.29184067684217518
	.quad	0x3fbe6fac1e6f2eb8              # double 0.11889148467087807
	.quad	0x3fc5f87b783a6908              # double 0.1716455781032169
	.quad	0x3f9d3652ceb6c4c0              # double 0.028527540079896552
	.quad	0x3fefc27f43550b9c              # double 0.99249232436010315
	.quad	0x3fcc64af5019dd90              # double 0.2218226567381234
	.quad	0x3fea6f85e039c0af              # double 0.82611364168226042
	.quad	0x3fe31ec821465366              # double 0.59750753878561791
	.quad	0x3fcc9649358fd58c              # double 0.22333636393856826
	.quad	0x3fe31b6ebd4166ab              # double 0.59709870304069079
	.quad	0x3fdf4b26e47945cc              # double 0.48896190940749018
	.quad	0x3fe3cbdf471b1ae9              # double 0.61863674056880058
	.quad	0x3fd1c2534e301d1a              # double 0.27748568187276279
	.quad	0x3fec75333fbbc490              # double 0.88930666397040348
	.quad	0x3fe7d13823769501              # double 0.74428946424873754
	.quad	0x3fc8819d41f1a688              # double 0.19145551414412787
	.quad	0x3fe4ce40542f500e              # double 0.65017715875956283
	.quad	0x3fd8d9f60eae004e              # double 0.38830329354823767
	.quad	0x3fd1b99e19753fb6              # double 0.27695419775136132
	.quad	0x3fe905eda444583a              # double 0.78197366794007128
	.quad	0x3fc018c0cf8a7724              # double 0.12575540670234731
	.quad	0x3fe94efd31633ba6              # double 0.79089221616765282
	.quad	0x3fe0d2e5f21dddb4              # double 0.52574441231165858
	.quad	0x3fe4272d390f0bea              # double 0.62978230613987063
	.quad	0x3fe9c78210a79b3d              # double 0.80560401203988585
	.quad	0x3fdb51859b089144              # double 0.42685070171343775
	.quad	0x3fe6e52ea7672034              # double 0.71547634788385617
	.quad	0x3fdcff8aea00c52a              # double 0.45309708453995035
	.quad	0x3fe77c703b1ceacc              # double 0.7339402346181827
	.quad	0x3fdfc8787b3c4736              # double 0.49661075625145956
	.quad	0x3fe99a25e836ee13              # double 0.80006690363319632
	.quad	0x3fe0eb22ebe0dd89              # double 0.52870317525859989
	.quad	0x3fe6ad3788288414              # double 0.70864464372073366
	.quad	0x3fe999ba15651a56              # double 0.80001548937509415
	.quad	0x3fdcfb7f7a1fd278              # double 0.45285021711541829
	.quad	0x3fdac0ac79f84a08              # double 0.41800987158890779
	.quad	0x3feced0f35500d36              # double 0.90393791592251804
	.quad	0x3fe318a83351a43c              # double 0.59675989173150112
	.quad	0x3fe3332150231aac              # double 0.59999147083074922
	.quad	0x3fdf609a558728ce              # double 0.49027117111530749
	.quad	0x3fe48e7563b341bd              # double 0.64238996002864435
	.quad	0x3fec978fe48ddb15              # double 0.89350123061635378
	.quad	0x3fe2f29000f0bb0f              # double 0.5921096819273276
	.quad	0x3fcbbacc8d5f7f24              # double 0.21663815405826725
	.quad	0x3fe3cdef79f4c3bf              # double 0.6188886053042707
	.quad	0x3fe59fc86c568713              # double 0.67575474891438814
	.quad	0x3fe605116da1293e              # double 0.68811866199511207
	.quad	0x3fe6bcc19aba9b6c              # double 0.71054153652663166
	.quad	0x3fd4ae2ea5381c8e              # double 0.32313123831449608
	.quad	0x3fd45e0e9e54a86e              # double 0.31824079000455796
	.quad	0x3fe14dd432788b8a              # double 0.54075059754937738
	.quad	0x3fe41459f3755d46              # double 0.62748429823378937
	.quad	0x3fd59ea265f860e2              # double 0.33780727346449002
	.quad	0x3fef473133864f44              # double 0.97744045318038574
	.quad	0x3fecbde7b4f16648              # double 0.89818177547858458
	.quad	0x3fe5c6b90b9e3242              # double 0.68050815838939394
	.quad	0x3fc84b109fffd2f8              # double 0.18979080021349382
	.quad	0x3fe618beec676a97              # double 0.69052072689676691
	.quad	0x3fc0a40259aa8554              # double 0.13000516298510922
	.quad	0x3fe6d5ddfc8bbf40              # double 0.71360682797783426
	.quad	0x3fe42aa4f19b9f1a              # double 0.63020560444872165
	.quad	0x3fed4f30df9db2a5              # double 0.91591685938836476
	.quad	0x3fc2ed0b0efac128              # double 0.14785898429318789
	.quad	0x3f9e69c92220b380              # double 0.029700415332786445
	.quad	0x3fc9fda09a5f52a0              # double 0.20305259263718245
	.quad	0x3fe330bb9f46ec84              # double 0.59969884022520192
	.quad	0x3fea20fc027ccdf4              # double 0.81652641759722976
	.quad	0x3fe6bee10de54e34              # double 0.7108006736183996
	.quad	0x3fa70c48c14fbd90              # double 0.045015596006005798
	.quad	0x3fd3b574be3f776a              # double 0.3079501970186046
	.quad	0x3fed851ee81b5a26              # double 0.92250008900993374
	.quad	0x3fd3f1c368e21732              # double 0.3116310619592354
	.quad	0x3fefb1c436e0aeac              # double 0.99045000761312484
	.quad	0x3feca238c1af04aa              # double 0.89480245426979832
	.quad	0x3fe6dc9a0db229b0              # double 0.71442892718305551
	.quad	0x3fcbf724acc883d8              # double 0.21847971378977493
	.quad	0x3fdbff7894f52676              # double 0.4374677138008346
	.quad	0x3fb754e29fe73838              # double 0.091138996161334584
	.quad	0x3fd71951f64d5320              # double 0.36092042019781623
	.quad	0x3fa2c78d64990a60              # double 0.036678713350302372
	.quad	0x3fe37ba8cf8c7df2              # double 0.60884514366983766
	.quad	0x3fde778676d8cb98              # double 0.47604524236811008
	.quad	0x3fdc58a2713f457a              # double 0.44290982302944537
	.quad	0x3fe4ab54a812a2e7              # double 0.64591439081877133
	.quad	0x3fc54a28fb3cc32c              # double 0.16632568614434129
	.quad	0x3fcc83ffe2f946ac              # double 0.2227783067960919
	.quad	0x3fd011f34b3afeba              # double 0.25109560343478743
	.quad	0x3fd1b71437200508              # double 0.27679925330456046
	.quad	0x3fd2238404394e82              # double 0.28341770565496216
	.quad	0x3fea1ddcf17a3135              # double 0.81614539302385103
	.quad	0x3fe0bc6acddf651f              # double 0.52300014695643771
	.quad	0x3fd03e0ed4c3baae              # double 0.25378771570005199
	.quad	0x3fece1d8d181dce8              # double 0.90256920737638513
	.quad	0x3fe390e3107d31e1              # double 0.61143639774814684
	.quad	0x3fdb18323d5e564e              # double 0.4233518218328286
	.quad	0x3fe31ee9819b5425              # double 0.59752345384425054
	.quad	0x3fcdb4fb23b9db14              # double 0.23208560223039199
	.quad	0x3fc41095fdb56b70              # double 0.15675616157644923
	.quad	0x3fd7a5069a39a73e              # double 0.36944737492614255
	.quad	0x3fc392553a7158d0              # double 0.15290322641039333
	.quad	0x3fb209edd3dd2920              # double 0.070464004730784513
	.quad	0x3fe4a561dca1416f              # double 0.64518826572206744
	.quad	0x3fd768a326df3160              # double 0.36576155468062233
	.quad	0x3feec89ffe43339e              # double 0.96199035320897841
	.quad	0x3fecd6048fb528a0              # double 0.90112522189999211
	.quad	0x3feeec1934693045              # double 0.96632061230185029
	.quad	0x3fd748835501c61e              # double 0.36380084325273454
	.quad	0x3fed90e434dd5f0a              # double 0.92393694234030588
	.quad	0x3fa214be57c083b0              # double 0.035314510547557076
	.quad	0x3fe555e4997238ad              # double 0.66673498125034814
	.quad	0x3fc9a76e3c561584              # double 0.20042207666498879
	.quad	0x3fcce44e8c8761f4              # double 0.22571737157592475
	.quad	0x3fdefc0933381b98              # double 0.48413305284378216
	.quad	0x3fca508dfed9aa14              # double 0.20558333343372281
	.quad	0x3fedc52e68369da6              # double 0.93031998018425521
	.quad	0x3fb5d62e876294f8              # double 0.085299404194831285
	.quad	0x3fea03e4b976485b              # double 0.81297527525954238
	.quad	0x3fd8b62c65dd5fd2              # double 0.38611898372391551
	.quad	0x3fe23004e6f7f6e9              # double 0.56836171256119628
	.quad	0x3fdaae08ef845e3e              # double 0.41687224760378061
	.quad	0x3fd1e75407adff5c              # double 0.27974415540665176
	.quad	0x3fea38e2547bb991              # double 0.81944386006016334
	.quad	0x3fbb735c4b5a6518              # double 0.10722901191401879
	.quad	0x3fea336ec4a65133              # double 0.81877840431346838
	.quad	0x3fda8d42c7d52b58              # double 0.41487187876616849
	.quad	0x3fb61b72eca5ddd8              # double 0.08635633733307857
	.quad	0x3fd8e24095d5c808              # double 0.38880934364635822
	.quad	0x3fc6fa5d54644b2c              # double 0.17951552029315943
	.quad	0x3fefdd7630a9fc0f              # double 0.9957838964909359
	.quad	0x3fe9df2491743509              # double 0.80848911675426038
	.quad	0x3fbd7c4e2e39f4f0              # double 0.11517799976896348
	.quad	0x3fddd15be24d3d8a              # double 0.465903254506849
	.quad	0x3fe4217b6eeca4e8              # double 0.62908717789573831
	.quad	0x3fb61a5afaddab30              # double 0.086339651342922207
	.quad	0x3feec259026dd7dd              # double 0.96122408365658495
	.quad	0x3fabdc73fb174570              # double 0.054416298294777898
	.quad	0x3fe7d640e909f7ff              # double 0.74490399852197686
	.quad	0x3fd20272bf2f205e              # double 0.2813994280845743
	.quad	0x3fd36f513c3d599e              # double 0.30366927035120195
	.quad	0x3fa72e2c185fecc0              # double 0.045274141288211833
	.quad	0x3fec72ab093c8cc0              # double 0.88899757198341689
	.quad	0x3fdb943c92544a2e              # double 0.43092264451948636
	.quad	0x3fe3d5ab8a5fd24e              # double 0.61983277345877652
	.quad	0x3fe7be2bb7e1f53b              # double 0.74196420588092538
	.quad	0x3fe4bb3b74586123              # double 0.64785549853971636
	.quad	0x3fe2c62cc90e1b4a              # double 0.58669127720427494
	.quad	0x3fd9525e2fef5e52              # double 0.39565233880191386
	.quad	0x3feaf887e9f671d8              # double 0.8428382463057984
	.quad	0x3fd04ef6ca6c9bf4              # double 0.254819581680237
	.quad	0x3fef585fb6bc1fac              # double 0.97953782740022665
	.quad	0x3fd56cad01c5becc              # double 0.33475804493990036
	.quad	0x3feb8fa1563aacb0              # double 0.86128298608436715
	.quad	0x3fe4ee958d12667e              # double 0.65412404587841855
	.quad	0x3fdfa2ef6a759d5c              # double 0.49431977650097791
	.quad	0x3fe6a2e9b324d617              # double 0.70738682736436231
	.quad	0x3fee23a561b690d4              # double 0.94185132107352353
	.quad	0x3fb8abdc6302f508              # double 0.096372389004461323
	.quad	0x3fc1b493bef93c84              # double 0.1383232767570669
	.quad	0x3fe980b61ddae64d              # double 0.7969618399722066
	.quad	0x3fd962ec1ac9f896              # double 0.39666273704632127
	.quad	0x3f85af018d0ad000              # double 0.010587703816192118
	.quad	0x3fe833d9c14599d0              # double 0.75632941959775657
	.quad	0x3fdf4a56777b8100              # double 0.48891221683699371
	.quad	0x3fe528d7bf45f5bc              # double 0.66123568876326244
	.quad	0x3fcc67ab6a23c3e8              # double 0.22191374476054126
	.quad	0x3fdf99680cc5b044              # double 0.49373818633353417
	.quad	0x3fb2c033e89bd6e8              # double 0.073245281495328052
	.quad	0x3fe00693e5a16fb9              # double 0.50080294465759956
	.quad	0x3fe1ae70dc1cb834              # double 0.55254405012761376
	.quad	0x3fe13b2b52caecd2              # double 0.53847280664867925
	.quad	0x3fdb2a28fd09e9ea              # double 0.42444824896634137
	.quad	0x3fed02383228cc09              # double 0.90652093693495417
	.quad	0x3fe724e263028f6e              # double 0.72325248086825211
	.quad	0x3fc9f01f256887d8              # double 0.20264043165758383
	.quad	0x3fe163f309e0a4a6              # double 0.5434508507652438
	.quad	0x3fd11071a3ce2bae              # double 0.2666286563550625
	.quad	0x3fe0b650d96fe8fe              # double 0.52225534885590696
	.quad	0x3fe62a1677ef7747              # double 0.69263766693959716
	.quad	0x3fe4dd5d17277534              # double 0.65202192804614478
	.quad	0x3fea7ed8ea5e3084              # double 0.8279842927454557
	.quad	0x3fdeec03fb32258a              # double 0.48315524607513594
	.quad	0x3fe392ce04e1d4b5              # double 0.6116705031733064
	.quad	0x3fe2e47be3f3c798              # double 0.59039110681463836
	.quad	0x3fdd5dd898d33cc6              # double 0.45885291027384445
	.quad	0x3fd3af3aa53107a0              # double 0.30757013446793202
	.quad	0x3febab848ca4b6d2              # double 0.86468722791115682
	.quad	0x3febbbd176e75d29              # double 0.86667702887908604
	.quad	0x3feb5e99c1eac1e3              # double 0.85529792665880355
	.quad	0x3fc03697c18288f0              # double 0.12666603993154224
	.quad	0x3fe23456748ccf18              # double 0.5688888813369628
	.quad	0x3fe84ff26065e9ad              # double 0.75975912883523267
	.quad	0x3fc88a23f763a800              # double 0.19171571330599591
	.quad	0x3fcd770414c01e24              # double 0.23019457829671908
	.quad	0x3feca1e10cad1510              # double 0.89476063228417679
	.quad	0x3fe02ecba434808e              # double 0.50571233817392325
	.quad	0x3fbc41d92d050eb8              # double 0.11037976597895749
	.quad	0x3fe75f2d2b99017b              # double 0.73036821856662415
	.quad	0x3fbae53115c7f3e8              # double 0.10505968839420599
	.quad	0x3fdfc1c2831ccbde              # double 0.49620116046861351
	.quad	0x3fdb6cc6cedc1e2c              # double 0.42851419640689659
	.quad	0x3fe80ead53546556              # double 0.75179163241697711
	.quad	0x3fecba0bf2422151              # double 0.89771077457502646
	.quad	0x3fe64c026930f247              # double 0.69677849335818898
	.quad	0x3fec225e23be5f59              # double 0.87919527989559321
	.quad	0x3fec60430c338f79              # double 0.88675072081649298
	.quad	0x3febb2cd369ad9bb              # double 0.86557636895195544
	.quad	0x3f9d8d5faec14980              # double 0.02885961059684794
	.quad	0x3fe131c0daadf3f0              # double 0.53732340536919132
	.quad	0x3fd420985376684c              # double 0.31448944235456078
	.quad	0x3fd81b04a94eacde              # double 0.37664906057280045
	.quad	0x3fee73b06e9b85a6              # double 0.95162221529988211
	.quad	0x3fe071c46d2390d8              # double 0.5138876086826043
	.quad	0x3fb6ee0470f1ebe8              # double 0.089569356512512521
	.quad	0x3fe5fb00c658fe7a              # double 0.68689001788875648
	.quad	0x3fd3b269ee82c124              # double 0.30776451389376036
	.quad	0x3faa6747a6eaf810              # double 0.051569213033403227
	.quad	0x3fea43c5d9206afd              # double 0.82077305228753483
	.quad	0x3fef0f2559c1a108              # double 0.9705988648466084
	.quad	0x3fd837961a0d6f1e              # double 0.37839272064387497
	.quad	0x3fabf81d974ab610              # double 0.054627346723787551
	.quad	0x3fe41f9bf9a772a4              # double 0.62885855446400685
	.quad	0x3fd3cea92c024ec4              # double 0.30948857591395673
	.quad	0x3fdcfde3019bf46e              # double 0.4529960170473889
	.quad	0x3fe2889f0ed60841              # double 0.57917740724247591
	.quad	0x3f96f2a4dd94c600              # double 0.022409988426437266
	.quad	0x3feeca1988d148e2              # double 0.96217037889644197
	.quad	0x3fe109860324f5b1              # double 0.53241253484855211
	.quad	0x3fe43abd7a3de5cf              # double 0.63217042804097356
	.quad	0x3fe86ae7b6fe38c0              # double 0.76304994335966825
	.quad	0x3fca77679ae1c2e0              # double 0.20676894247619426
	.quad	0x3fde1bc98d72342c              # double 0.47044600308510343
	.quad	0x3fe9cc495cb4fee8              # double 0.8061873255428198
	.quad	0x3fdd193d7a47cdac              # double 0.45466553632214857
	.quad	0x3fc07e1a02a8d8f4              # double 0.12884831552373266
	.quad	0x3feadeee0c7f0b93              # double 0.83971311989476971
	.quad	0x3fd7697d12913420              # double 0.36581351102069171
	.quad	0x3fd3574858f48de6              # double 0.30220230757751521
	.quad	0x3fda3add07aa52b8              # double 0.40984273670737137
	.quad	0x3fc8112d5ebacd94              # double 0.18802420735810854
	.quad	0x3fd2905e30f50c70              # double 0.29006151944140068
	.quad	0x3fcf2ba86e0cd6fc              # double 0.24351983426611656
	.quad	0x3fc71d08328e0774              # double 0.18057348698135522
	.quad	0x3fe4f90db76b9452              # double 0.65540204834236193
	.quad	0x3fc76724efc7c61c              # double 0.18283521373773304
	.quad	0x3fa895da39960100              # double 0.048018283395323991
	.quad	0x3fea5200ad306654              # double 0.82251008821476512
	.quad	0x3fc9172e75480cc8              # double 0.196019942537623
	.quad	0x3fe5fe7db352f6d0              # double 0.68731579803690046
	.quad	0x3feda286509ac246              # double 0.92608943694183021
	.quad	0x3fe3310c8ff88987              # double 0.59973743552500103
	.quad	0x3fd27cb97bcd1e64              # double 0.288862582111028
	.quad	0x3fe102778c459ba2              # double 0.53155114552361149
	.quad	0x3feb9215dea79f32              # double 0.86158269393215492
	.quad	0x3fe74e16ece5c170              # double 0.72828241604842781
	.quad	0x3fe12ba41d81dfaa              # double 0.53657727969311009
	.quad	0x3fc1acaf0d3e2578              # double 0.1380823912298117
	.quad	0x3fb97b8df3495db8              # double 0.099541541954173307
	.quad	0x3fe7265acab9c77c              # double 0.72343196482528027
	.quad	0x3fcbb1002e1afd74              # double 0.21633913279763883
	.quad	0x3fbbe8cfc9b7ebb0              # double 0.10902117419020274
	.quad	0x3fdd2534882d5998              # double 0.45539582537221568
	.quad	0x3fe348ee4ef682fe              # double 0.60265269682358258
	.quad	0x3fc4629fba87b35c              # double 0.15925976379312601
	.quad	0x3fd899a08496efc6              # double 0.38437664936259031
	.quad	0x3fd37747348f5826              # double 0.30415516026312372
	.quad	0x3fe7c48f02766956              # double 0.74274397355047017
	.quad	0x3fe8982f09a00160              # double 0.76857711677443418
	.quad	0x3fc605a189a5ec98              # double 0.17204684468365339
	.quad	0x3fcb9eb4584a32f4              # double 0.21578077612902968
	.quad	0x3f9ec41b3e944160              # double 0.030044961637999079
	.quad	0x3fde059a87c5520e              # double 0.46909201868882711
	.quad	0x3fd8dbaa30341fea              # double 0.38840727527030927
	.quad	0x3feb500625583bff              # double 0.8535185555828092
	.quad	0x3fe3aa1747510544              # double 0.61451305321694649
	.quad	0x3fed71699b2e543b              # double 0.92009430226119748
	.quad	0x3fed29d1095db0a8              # double 0.91135455922405573
	.quad	0x3f7c999371747800              # double 0.0069823989390709329
	.quad	0x3fe19492898172d4              # double 0.54938628059934524
	.quad	0x3fe718cdc8b5b4e7              # double 0.72177781296855137
	.quad	0x3fda71b33bf111de              # double 0.41318970540694788
	.quad	0x3fef272cba3e91a5              # double 0.97353206992970753
	.quad	0x3fe3929cae359f18              # double 0.61164697671208312
	.quad	0x3fb63e3f41cc3628              # double 0.086887315334217008
	.quad	0x3fde07f2572e332a              # double 0.46923502458303068
	.quad	0x3fe2e88faf762e5f              # double 0.59088882703640511
	.quad	0x3fe1cc67db9b703e              # double 0.55620186702754615
	.quad	0x3fe6d8fe9ae0a447              # double 0.71398859262002012
	.quad	0x3fec23f0aced4498              # double 0.87938722395678592
	.quad	0x3febad80d136323d              # double 0.86492958890591576
	.quad	0x3fbb526648c7a0d0              # double 0.1067260673222592
	.quad	0x3fc27884bc79d564              # double 0.14430293276715667
	.quad	0x3faa5e207a2e20f0              # double 0.051499380983900056
	.quad	0x3fe5448436e58ae1              # double 0.66461382600786234
	.quad	0x3fbc84fdbcbaa310              # double 0.11140428407328451
	.quad	0x3fdfcc1972960a18              # double 0.49683223905609131
	.quad	0x3fd876175ba91eea              # double 0.38220771743043136
	.quad	0x3fe5f7f3483602e2              # double 0.68651737312037775
	.quad	0x3fc27fac7a857a94              # double 0.14452129347315135
	.quad	0x3f9b8b282056dbe0              # double 0.026898028348764202
	.quad	0x3fed0b32d2d64912              # double 0.90761700801002321
	.quad	0x3fad5458753853a0              # double 0.05728413039120217
	.quad	0x3fc3e92f36a7138c              # double 0.15555372398935352
	.quad	0x3fec2679d283b993              # double 0.8796967612850487
	.quad	0x3fe27c2c64ac09e2              # double 0.57765788710122146
	.quad	0x3fdca26a7be8fa04              # double 0.44741308308212546
	.quad	0x3fe79852035051a4              # double 0.73734379431930508
	.quad	0x3febc11036786634              # double 0.867317301165889
	.quad	0x3f956cbdf7f6e000              # double 0.020922630557578259
	.quad	0x3fea4f45fdf6f4a2              # double 0.82217692949747723
	.quad	0x3fd5fb056a48b168              # double 0.34344611529629399
	.quad	0x3fe45b8e705ac789              # double 0.63617631859072887
	.quad	0x3feb28782a2ac4eb              # double 0.84869011150126761
	.quad	0x3fece6600ed33525              # double 0.9031219758559571
	.quad	0x3fe8c4046b6ffc4b              # double 0.77392788871646567
	.quad	0x3fb22b2dfc510300              # double 0.070971368885704322
	.quad	0x3fe366b31550cde3              # double 0.60628656542979475
	.quad	0x3fedcf3c974a4204              # double 0.93154744671670686
	.quad	0x3fe267eb238f7d11              # double 0.5751853651562745
	.quad	0x3fece3e386fc94a9              # double 0.9028184544046286
	.quad	0x3fd90e930100264e              # double 0.39151454065049485
	.quad	0x3fed5040a9f10f89              # double 0.91604645911910254
	.quad	0x3fcd4873f4a93c0c              # double 0.22877358862248831
	.quad	0x3fd63b2110c4815c              # double 0.3473589576479037
	.quad	0x3feccfb7806cc8b8              # double 0.90035605509753847
	.quad	0x3fecfccb998ef1fd              # double 0.90585880271788677
	.quad	0x3fb9b6ede0d49b60              # double 0.10044752825761583
	.quad	0x3fedd9487060c945              # double 0.93277379940835969
	.quad	0x3fc4b87f15ab00f8              # double 0.16188038404471405
	.quad	0x3fb56499a3b0d170              # double 0.083566286529110689
	.quad	0x3fe7859e43e476c0              # double 0.73506081829301451
	.quad	0x3fe514e0a345884d              # double 0.6587985218905118
	.quad	0x3fc18c351fb5b2f4              # double 0.13709129379585472
	.quad	0x3fd80e1c53a59a4c              # double 0.37586124580994773
	.quad	0x3fee63073e669a3f              # double 0.94958841502813829
	.quad	0x3fc96c0277c9648c              # double 0.19860869263610359
	.quad	0x3fecca5590f2932f              # double 0.89969900426931371
	.quad	0x3fe75c4a1a5096d9              # double 0.73001580371484487
	.quad	0x3fb5e734f5991cf0              # double 0.085559186897729011
	.quad	0x3fe4b9f9c2ecfad7              # double 0.64770210334230682
	.quad	0x3fd27d771c84c2e4              # double 0.28890779290217794
	.quad	0x3fe99c5995ffb3e8              # double 0.80033568665168975
	.quad	0x3fe8736f62f4d2d4              # double 0.76409119918261092
	.quad	0x3fee222b16f0fd4f              # double 0.94167093735442531
	.quad	0x3feee1ebc5b1b5ff              # double 0.96507824527878927
	.quad	0x3febaeca5e540327              # double 0.86508673118087109
	.quad	0x3fedc9967071d62a              # double 0.9308578678307573
	.quad	0x3feabfddbffb38fd              # double 0.83592116829257146
	.quad	0x3f874f1595c089c0              # double 0.011381310112544507
	.quad	0x3fe1f577825087a5              # double 0.56121421291412743
	.quad	0x3fe4a3a53ba5a55a              # double 0.6449762501698999
	.quad	0x3fd7f5d1485d92fe              # double 0.37437851015992851
	.quad	0x3fd3c327dbb7155e              # double 0.30878635841903257
	.quad	0x3fdb5285a48e0ccc              # double 0.42691174573719759
	.quad	0x3f990d7c80c8a8c0              # double 0.024465508804646374
	.quad	0x3fa527f53186c840              # double 0.041320478721346365
	.quad	0x3fec7f58f87aac25              # double 0.89054535418597836
	.quad	0x3fb5eaaa709db678              # double 0.085611965650707833
	.quad	0x3fea5e994f2ae08e              # double 0.82404771292114432
	.quad	0x3fd706a57ae8ad56              # double 0.3597806644708802
	.quad	0x3fea13f8f0b71b41              # double 0.81493803991984504
	.quad	0x3fe176c0428a3801              # double 0.54574597354962873
	.quad	0x3fda48a04b20a620              # double 0.41068274819062545
	.quad	0x3feb6b309c9111d6              # double 0.85683470324925781
	.quad	0x3fe02dbe3f268dfd              # double 0.50558388074972493
	.quad	0x3feb40b7bc6ca818              # double 0.85165011216782016
	.quad	0x3feac0aab29e4c1b              # double 0.83601889501949544
	.quad	0x3fe8dd0b192df8ba              # double 0.77698283117185629
	.quad	0x3fedf8093af6116c              # double 0.93652783885822321
	.quad	0x3fcf0f5c39704cb8              # double 0.24265625767347898
	.quad	0x3fee3a4c6be8ed7e              # double 0.94461651874682651
	.quad	0x3fc911512c7134c4              # double 0.19584097547559598
	.quad	0x3fb457e42625a478              # double 0.079466113389246362
	.quad	0x3fe934b06ae7fc81              # double 0.78768177871815237
	.quad	0x3fe7e2a0aa85c107              # double 0.7464145021931764
	.quad	0x3fc6745044cbdc34              # double 0.17542460784145109
	.quad	0x3fed00f9933f0bc2              # double 0.90636900671994902
	.quad	0x3fefe2643a749646              # double 0.99638568322252108
	.quad	0x3fd43246dbcd177a              # double 0.31556865181880023
	.quad	0x3fe5a2cd469f25e2              # double 0.67612327378554604
	.quad	0x3fd8c14bf4f73bc2              # double 0.3867978946918208
	.quad	0x3fc4f2c5a19ce2b8              # double 0.16365881339313204
	.quad	0x3fed2ed6d86928d0              # double 0.91196768062334321
	.quad	0x3fdab96b7e22b2e8              # double 0.41756713216709196
	.quad	0x3fe2dcb6898a868d              # double 0.58944250930308473
	.quad	0x3fcc6c036638d268              # double 0.22204630366617839
	.quad	0x3fe4ceef25c3b4c0              # double 0.65026051879763003
	.quad	0x3fd6e5e0eca255bc              # double 0.35778067692566728
	.quad	0x3fe4a64ce2678047              # double 0.64530033320989666
	.quad	0x3fe1e45dd1e50d6a              # double 0.55912676806512462
	.quad	0x3fe9cba4c02d77df              # double 0.806108832690139
	.quad	0x3fdf8f33cd5abdba              # double 0.49311537794252625
	.quad	0x3fe41ce650b9036c              # double 0.62852779165414807
	.quad	0x3fef5609d73069fd              # double 0.97925273923038924
	.quad	0x3fef127cbd9055b5              # double 0.97100674652272422
	.quad	0x3fc5c3e751cda82c              # double 0.17004100317291326
	.quad	0x3fe3c535d6f8e930              # double 0.61782352434901178
	.quad	0x3fe851918a212125              # double 0.75995709398651867
	.quad	0x3fe103a0f342473a              # double 0.53169295798782135
	.quad	0x3fcd5b2097b83af4              # double 0.22934348495660795
	.quad	0x3fed44138a4d27d4              # double 0.91456009876241717
	.quad	0x3fe2d5947805b922              # double 0.58857177202097355
	.quad	0x3fbd7433764b3840              # double 0.11505433691056144
	.quad	0x3feeee41993580eb              # double 0.96658401416428085
	.quad	0x3fe08d81eb8240cc              # double 0.5172738647252344
	.quad	0x3fd43e0d9c008988              # double 0.3162874244173044
	.quad	0x3fc2f39b4a718370              # double 0.14805928358967035
	.quad	0x3fe71d2bae6cb587              # double 0.72231086795152144
	.quad	0x3fbc8392bffad728              # double 0.11138264834411571
	.quad	0x3fe68a181fe5bd1b              # double 0.7043572066303655
	.quad	0x3fe6423aaae21fa7              # double 0.69558461547511719
	.quad	0x3fca9166c76e2a0c              # double 0.20756230104264295
	.quad	0x3fb65ab9c8617540              # double 0.08732186452967472
	.quad	0x3fe504196f10810a              # double 0.65675040905264948
	.quad	0x3fe44b9ca080ab8f              # double 0.63422995899360213
	.quad	0x3fcb7ab34281ff14              # double 0.21468201396418662
	.quad	0x3fc56ceed55da6c4              # double 0.16738686960461824
	.quad	0x3fda65caf573e950              # double 0.41246293992994243
	.quad	0x3fdd25bb2ece3556              # double 0.45542792864656201
	.quad	0x3fa402b108ff7b80              # double 0.039083034847627651
	.quad	0x3fbe8b100b9080d8              # double 0.11930942804656597
	.quad	0x3fdbf24b0ac4bc32              # double 0.43666339923487663
	.quad	0x3fef77c3ea9a4e18              # double 0.98336978741503155
	.quad	0x3fdd85f7b255f6b8              # double 0.46130173125844065
	.quad	0x3fec659706108da8              # double 0.887401115269701
	.quad	0x3fc1cb3729d7a4ac              # double 0.13901414435466586
	.quad	0x3f804408da049a40              # double 0.007942265656834313
	.quad	0x3fd34c819a955dda              # double 0.30154457183877315
	.quad	0x3fdbc0c1e3e818dc              # double 0.4336399770403554
	.quad	0x3fce56b1de8b46d4              # double 0.23702071539314906
	.quad	0x3fe126d4a0d5d9d9              # double 0.53599006093173351
	.quad	0x3fe053394f3de0cf              # double 0.51015916325470723
	.quad	0x3fe0f3e5b2beb3cc              # double 0.52977261458510716
	.quad	0x3feed486f1c68c6a              # double 0.9634432527713106
	.quad	0x3fece3080ad226ff              # double 0.90271379579027655
	.quad	0x3fef8cd73d2a213d              # double 0.98594247766690268
	.quad	0x3feb0539f8724d61              # double 0.844387994048173
	.quad	0x3fd1fcb5b339547a              # double 0.28104918005312352
	.quad	0x3fdfeefe23ec9178              # double 0.49896195896351214
	.quad	0x3fef2aaa63a077e3              # double 0.9739582010113249
	.quad	0x3fb2fff6500a92d0              # double 0.074218172589620268
	.quad	0x3fd3135a1624febc              # double 0.29805614626455301
	.quad	0x3fe774052c39084f              # double 0.73291262280714331
	.quad	0x3fd078840bf845fc              # double 0.25735570115020301
	.quad	0x3fe9b43a20e96182              # double 0.80325037410789002
	.quad	0x3fed0a8ee5a1436a              # double 0.90753884172054922
	.quad	0x3fec5fadf6df95ea              # double 0.88667963235337521
	.quad	0x3fdcf08c45ca61ba              # double 0.45218188109859236
	.quad	0x3fda2a8d2be3b9fc              # double 0.40884713445748821
	.quad	0x3fe80aa6ba2c619c              # double 0.75130020486817583
	.quad	0x3fe864791e1a0d05              # double 0.76226478461504199
	.quad	0x3fe2c607ec2b0692              # double 0.58667369963241556
	.quad	0x3fb117b5d3ae0fb0              # double 0.066768039874715468
	.quad	0x3fed88ec21262bf5              # double 0.92296415781436159
	.quad	0x3faf930b997788e0              # double 0.061668741687542328
	.quad	0x3fd6a8190b846158              # double 0.3540098774406224
	.quad	0x3fe59598a024e969              # double 0.67451125410233914
	.quad	0x3faaf849cbaa5b70              # double 0.052675539123064108
	.quad	0x3fd5148316f594d2              # double 0.32937695734137862
	.quad	0x3fceed4603e4e7a0              # double 0.2416160124792528
	.quad	0x3fe2769d1637219c              # double 0.57697920168816408
	.quad	0x3f8371f8db21d400              # double 0.0094947282670805321
	.quad	0x3fd2a790edda8a44              # double 0.29147742488763506
	.quad	0x3fe2c5165e6e3817              # double 0.586558517870574
	.quad	0x3fd8811ae2a7dcc8              # double 0.38287994512888845
	.quad	0x3fd048d7edcf23b6              # double 0.25444601272152612
	.quad	0x3fd9b3ebc07592fe              # double 0.4016065005765056
	.quad	0x3fd3d4cd615a73f6              # double 0.30986341960107155
	.quad	0x3fe60b2a52828be7              # double 0.68886295428489752
	.quad	0x3feee5074661a00a              # double 0.96545757051808434
	.quad	0x3fe0de72f92e9083              # double 0.52715443294847864
	.quad	0x3febc43544c116ca              # double 0.86770118168416244
	.quad	0x3fc9634b09354520              # double 0.1983426852189405
	.quad	0x3fe5cc17e797fa26              # double 0.68116374238144739
	.quad	0x3fde9e8c37ba9dfc              # double 0.47842698519022497
	.quad	0x3fd175a72adaad56              # double 0.27280596909505073
	.quad	0x3fe49ea082801f7c              # double 0.64436364639639931
	.quad	0x3fd2f4275f76bc6c              # double 0.29615196535718868
	.quad	0x3fec71174463d85e              # double 0.88880503995347815
	.quad	0x3fb63f96889c7648              # double 0.086907776214922738
	.quad	0x3fed52047e4d2c1d              # double 0.91626190822842413
	.quad	0x3fb11e0bf0f30078              # double 0.066864725423330884
	.quad	0x3fec007c176857a2              # double 0.87505917140764589
	.quad	0x3fe4f2e003494819              # double 0.65464783326956699
	.quad	0x3feae1851cd786f7              # double 0.84002929337677201
	.quad	0x3fd2b03eb3f8c1d4              # double 0.29200713706361836
	.quad	0x3fe0246367a0ca19              # double 0.50444193115100966
	.quad	0x3fe0888133adf268              # double 0.51666317075394108
	.quad	0x3fd74bdd9d51b37c              # double 0.36400547373960257
	.quad	0x3fc7a2318e06e288              # double 0.18463725504786432
	.quad	0x3febe348e6d8330f              # double 0.87149472319433297
	.quad	0x3fd944ec2bd1e7a0              # double 0.39483169822016784
	.quad	0x3fd47082d384508a              # double 0.31936712890570418
	.quad	0x3fea5405099852d6              # double 0.82275630830789726
	.quad	0x3fa48483074f2ee0              # double 0.040073485033273348
	.quad	0x3fe7406b5cec79d1              # double 0.72661369465986969
	.quad	0x3fdc56003db6cc74              # double 0.44274908091319465
	.quad	0x3fdc505ce4529e94              # double 0.44240495965139215
	.quad	0x3fec8d2d2156e55e              # double 0.89223343383416043
	.quad	0x3fdd69ae7098f902              # double 0.45957528110365342
	.quad	0x3fbaed013cf2ab68              # double 0.10517890680300257
	.quad	0x3fe7cd12be5d8dc0              # double 0.74378335171461885
	.quad	0x3fd17fff6dfa5d3e              # double 0.27343736400640128
	.quad	0x3fe3e4a284cbc147              # double 0.62165952622130127
	.quad	0x3fd166f2c0f9e00c              # double 0.27190846295661752
	.quad	0x3f96830763138700              # double 0.021984210416923666
	.quad	0x3fec5a2bc4947bab              # double 0.88600719828160857
	.quad	0x3fbaaf47d9a8df40              # double 0.10423707069355448
	.quad	0x3fdd0a89ee54d164              # double 0.45376823687117551
	.quad	0x3fee4e2175e0b985              # double 0.94703743956579045
	.quad	0x3fe82d4c8912adcd              # double 0.75552965900481583
	.quad	0x3fef436b2ac93660              # double 0.97697981220853691
	.quad	0x3fe1348ebfd0f4ba              # double 0.53766572441204308
	.quad	0x3feae7c4a8cd8945              # double 0.84079201669036563
	.quad	0x3feedae69f50f033              # double 0.96422129742086892
	.quad	0x3f93eba3c9898040              # double 0.019453581977700418
	.quad	0x3fc60a3fa5b1e3a4              # double 0.17218776312418271
	.quad	0x3febec8aaa8c0477              # double 0.87262471494626836
	.quad	0x3fd214d8a5487bfe              # double 0.28252235547000726
	.quad	0x3fd95d57d4127f86              # double 0.39632220945531349
	.quad	0x3fe2ad930d7effcc              # double 0.58368828426318364
	.quad	0x3fd036439f74d530              # double 0.25331202098762429
	.quad	0x3fe1c580bbd611bd              # double 0.55535923659095199
	.quad	0x3fc58ff91063bbc4              # double 0.16845620441696785
	.quad	0x3fcc17858d1ac85c              # double 0.21946782483934413
	.quad	0x3fd0d132d0f0f06a              # double 0.262768463176832
	.quad	0x3fec7d674e54e0eb              # double 0.89030804919368955
	.quad	0x3feaf65347f0308c              # double 0.84256900835454606
	.quad	0x3fdb5a85aca96bb4              # double 0.42740003453735231
	.quad	0x3feaa4e3b87a51ad              # double 0.83262811690160776
	.quad	0x3feaee52fd4ce4d2              # double 0.84159230683067165
	.quad	0x3fecfff1aa553a79              # double 0.90624316471242061
	.quad	0x3fdf0d9e7485ac6a              # double 0.48520623568646803
	.quad	0x3fd9d9f69711e6e4              # double 0.40392842057154454
	.quad	0x3f6fdc2e669f9300              # double 0.0038891702906646008
	.quad	0x3fee5ab036669cc1              # double 0.9485703527942847
	.quad	0x3fda40ccae43a300              # double 0.41020504968632565
	.quad	0x3fd1d9c431424434              # double 0.27891640482363589
	.quad	0x3fee7e40b230be67              # double 0.95291170885861909
	.quad	0x3fe22427647cb3ec              # double 0.56691331507101728
	.quad	0x3fe4cf7e90a250d2              # double 0.65032890557133727
	.quad	0x3fdd34f009a48aac              # double 0.45635605756448672
	.quad	0x3fb96d4093631bc8              # double 0.099323307021321416
	.quad	0x3fec4706be2b7707              # double 0.88367020742927671
	.quad	0x3fd1d13bda93931e              # double 0.2783956179176118
	.quad	0x3fdfb5953d81063e              # double 0.49545794492960116
	.quad	0x3fce12dc7667bc54              # double 0.23495059758667713
	.quad	0x3fda893c4d97d764              # double 0.41462619378523002
	.quad	0x3fd2c4f24c0cc0ba              # double 0.2932706587480528
	.quad	0x3fbd3502cb09b438              # double 0.11409013230304843
	.quad	0x3fd9fa598f16c16c              # double 0.40590514157795243
	.quad	0x3fef559220853afe              # double 0.97919565536162145
	.quad	0x3fdf87dda9a3337e              # double 0.49266759458696885
	.quad	0x3fe42b460af176b4              # double 0.63028242242190524
	.quad	0x3fdd8cb262b76bc0              # double 0.46171245231897373
	.quad	0x3fcafead4e40f274              # double 0.21089712449056075
	.quad	0x3fea581dfbd2daef              # double 0.82325648483569391
	.quad	0x3fec69f9f4a11d53              # double 0.88793657092257161
	.quad	0x3feb4612e64456b7              # double 0.85230393384946168
	.quad	0x3fec23ff21ea924b              # double 0.8793941175868637
	.quad	0x3fe73affa603e620              # double 0.72595198082780499
	.quad	0x3fd5ab2631bbf012              # double 0.33857111794327566
	.quad	0x3fbced39ebc4a110              # double 0.11299478536659913
	.quad	0x3f849a273117f600              # double 0.010059648690908141
	.quad	0x3fe355c58de69737              # double 0.60422017779340009
	.quad	0x3fe19669ec85b2b3              # double 0.54961105533364785
	.quad	0x3fddc2ebf6a899b4              # double 0.46502207839730691
	.quad	0x3fe3567c1b1910b7              # double 0.60430722515641022
	.quad	0x3fdaf9da5e4289cc              # double 0.42149981694288097
	.quad	0x3feddb9891a26eb1              # double 0.93305614895094469
	.quad	0x3f911a3f18313400              # double 0.01670168481023282
	.quad	0x3fc14a78d4253d0c              # double 0.13508520468392538
	.quad	0x3feef0e0fb29c11a              # double 0.9669041543511725
	.quad	0x3fde16b8c81bbaf2              # double 0.47013682882145169
	.quad	0x3fd25643e53087c6              # double 0.28651521093172183
	.quad	0x3fe38f9c5d1aa7e6              # double 0.61128061470412542
	.quad	0x3fd1a09d36b70b42              # double 0.27542810767424808
	.quad	0x3febd9d43e799cfa              # double 0.87034046365889073
	.quad	0x3fec610c3f354204              # double 0.88684666009254486
	.quad	0x3fe40f55b49414f8              # double 0.62687192219951182
	.quad	0x3fb7e09b83e267f0              # double 0.093270988176669566
	.quad	0x3fd753c92b4812f2              # double 0.36448888041222383
	.quad	0x3fb7ae0aea374510              # double 0.092499429875960936
	.quad	0x3fe0f3e855b6e743              # double 0.52977387181383795
	.quad	0x3fe9c4f9e8f31890              # double 0.80529494760482301
	.quad	0x3fe1d4bbb8e31dcc              # double 0.5572184191777807
	.quad	0x3fe1bfe6d901d4dc              # double 0.55467550644120989
	.quad	0x3fe9e5462a41a5dc              # double 0.80923755887232173
	.quad	0x3fe080a3880f5b94              # double 0.51570297788826958
	.quad	0x3fe0f912890b1cfa              # double 0.5304043461445922
	.quad	0x3fc723f3427b46b0              # double 0.18078461404961876
	.quad	0x3fd365b863c34134              # double 0.30308351271107203
	.quad	0x3fe314b9a33731a0              # double 0.596279925137015
	.quad	0x3f996a983cd1bbc0              # double 0.024820688926805223
	.quad	0x3fd336d0db8bae50              # double 0.30022069396975315
	.quad	0x3fe0debce98bc5f8              # double 0.52718968977404668
	.quad	0x3fe2bc442ef8289d              # double 0.58548173116402646
	.quad	0x3fe3ba0602a3ebb0              # double 0.61645794406591925
	.quad	0x3fec628846f541c8              # double 0.8870278726481553
	.quad	0x3fed7e019c8b55d2              # double 0.92163162779859875
	.quad	0x3fe61722ad233d5d              # double 0.69032415214489229
	.quad	0x3faf9993ddba2610              # double 0.061718579117108985
	.quad	0x3fe564158e7e8c29              # double 0.66846731024668771
	.quad	0x3fb05316b6489188              # double 0.063767833235550353
	.quad	0x3fe1d883a0a350ee              # double 0.55767995237922974
	.quad	0x3fdd5f6702963292              # double 0.45894789936645808
	.quad	0x3fd9973e025d871a              # double 0.39985609274855138
	.quad	0x3fe053f7dd8197a1              # double 0.51025002730306224
	.quad	0x3fe95a725ea768ea              # double 0.79229086386774594
	.quad	0x3fe6a171f66a1f8b              # double 0.70720766189423168
	.quad	0x3fc24471a7b24a88              # double 0.14271374405196391
	.quad	0x3fec9056f6700a92              # double 0.89261959202151986
	.quad	0x3fc74b8004c40c14              # double 0.18199157936769039
	.quad	0x3f54774fdf239000              # double 0.0012491493221711281
	.quad	0x3fe8161ed9c7aaf0              # double 0.75270025763651738
	.quad	0x3feb554a2ec49849              # double 0.85416134962429979
	.quad	0x3fde96edadde5b3c              # double 0.47796194056848029
	.quad	0x3fd8e764b720af8a              # double 0.38912313350260119
	.quad	0x3fd7effbb4f21a0c              # double 0.37402241392592894
	.quad	0x3fed3fc0a1fecf8f              # double 0.91403228416173643
	.quad	0x3febc6112131401d              # double 0.86792808993232351
	.quad	0x3fe8d7264b0210e9              # double 0.77626337671293044
	.quad	0x3fdcd32627ee34e2              # double 0.45038751506292674
	.quad	0x3fed9d225e04bfac              # double 0.9254314266490744
	.quad	0x3fe6a4e0ffc8d2ae              # double 0.70762681920912995
	.quad	0x3fb1adc6a1a2d7b8              # double 0.069057859861316184
	.quad	0x3fe80bf29805f826              # double 0.75145845119528043
	.quad	0x3fe388cd47e9ff42              # double 0.61044944806779022
	.quad	0x3fe3b97b98a5dad0              # double 0.6163919431117737
	.quad	0x3f82b1da3ba64140              # double 0.0091282891706049307
	.quad	0x3fd3f21c1cfa7456              # double 0.31165221052089487
	.quad	0x3fa175e92c5470d0              # double 0.034102713261945916
	.quad	0x3fc76b4b81f01d30              # double 0.18296188206316222
	.quad	0x3fbf9578bf617040              # double 0.12337450668695826
	.quad	0x3fec89e4bbce794b              # double 0.89183270150150784
	.quad	0x3fd76a3d29062bc8              # double 0.3658593083025008
	.quad	0x3fedbc68353ebd01              # double 0.92924890899112722
	.quad	0x3fd6f4772cd99194              # double 0.35867099170561656
	.quad	0x3fe2f63b91ebefc6              # double 0.59255770206754543
	.quad	0x3fc649bb388b4974              # double 0.17412510167066453
	.quad	0x3fd7de992aba7744              # double 0.3729613225240096
	.quad	0x3fc7ac365fa94cd0              # double 0.18494300528491303
	.quad	0x3fec739229b3af25              # double 0.88910778183842309
	.quad	0x3fd26c4255f82aaa              # double 0.28785761256646458
	.quad	0x3fe14dbd736cbcc8              # double 0.54073975128076146
	.quad	0x3fe5bd66dd83e8d3              # double 0.67937033905698241
	.quad	0x3fe477b7986e3891              # double 0.63961391231147691
	.quad	0x3fee5875e1fa8086              # double 0.9482983983653106
	.quad	0x3fa7437dc57e1af0              # double 0.045436792715056629
	.quad	0x3fe042eae5c60cf7              # double 0.5081686485067668
	.quad	0x3fdcf23411a3043a              # double 0.45228292200414766
	.quad	0x3fc7f3a952cf421c              # double 0.18712345641553518
	.quad	0x3fdd3092a1926eca              # double 0.45608964708820265
	.quad	0x3fea73f8ebb160fd              # double 0.82665678056494551
	.quad	0x3fef4e2f1fd696fb              # double 0.97829395502478122
	.quad	0x3fdb4a326bfec204              # double 0.42640362306977431
	.quad	0x3fe05934f8d8896c              # double 0.51088951685623618
	.quad	0x3fae2f7ce7719a70              # double 0.058956053974544953
	.quad	0x3fd0e04623cbc644              # double 0.26368859763815444
	.quad	0x3fccbc14608fe918              # double 0.22448973383854631
	.quad	0x3fec72374659ade7              # double 0.88894237270636445
	.quad	0x3febc07b0e23e1f1              # double 0.86724617730857123
	.quad	0x3fec8275a046d1a0              # double 0.89092522911100857
	.quad	0x3fc48bfd2153d144              # double 0.16052211882891687
	.quad	0x3fa4bae0864b0290              # double 0.040488258736791072
	.quad	0x3fe9f58151b71753              # double 0.81121889076232845
	.quad	0x3fd667a10c0998e0              # double 0.35007501769577054
	.quad	0x3fa3fa1ac56d85d0              # double 0.03901752147681814
	.quad	0x3fdf204f3e055b8a              # double 0.48634701782923939
	.quad	0x3fd57981d94d0df8              # double 0.33554121228027567
	.quad	0x3fe90da02a420e2f              # double 0.78291328671952509
	.quad	0x3fcfc975358ef060              # double 0.24833550563005513
	.quad	0x3fc2a450a4eaf2b4              # double 0.14563949635148321
	.quad	0x3fe8da4c1760fc84              # double 0.77664761129553072
	.quad	0x3fce29ace6439640              # double 0.2356468319259637
	.quad	0x3fe0749c3eb15a40              # double 0.5142346596210885
	.quad	0x3fdc2e0c5be300b8              # double 0.44031056378663491
	.quad	0x3fe35da62a58cda9              # double 0.60518177290798747
	.quad	0x3fdf8e71967ca194              # double 0.4930690736387302
	.quad	0x3fdae7917a7d35a8              # double 0.42038380586458368
	.quad	0x3fc301ec70db2328              # double 0.14849620352313164
	.quad	0x3fec0453f5d26034              # double 0.87552831661287777
	.quad	0x3faba3fac7e75bc0              # double 0.053985440161049336
	.quad	0x3fbe7396b3617888              # double 0.11895124320423822
	.quad	0x3fed888a1c56a261              # double 0.92291741881224365
	.quad	0x3fee94b16dd9ee59              # double 0.95565101104098027
	.quad	0x3fd82ec444234e20              # double 0.37785441068737846
	.quad	0x3f9f6d7fe58092c0              # double 0.030691145308213263
	.quad	0x3feadb61a699a918              # double 0.83927996195896792
	.quad	0x3fe34660b65e824e              # double 0.60234103793124816
	.quad	0x3fd4e31d67bca694              # double 0.32636199122007636
	.quad	0x3fba053378a80868              # double 0.10164186187469826
	.quad	0x3fe75b0d5803f4a3              # double 0.72986476126211064
	.quad	0x3fe69074af69487f              # double 0.70513376483928869
	.quad	0x3feb51e6d17d363d              # double 0.85374775806275915
	.quad	0x3fd03dd9af86641e              # double 0.25377504483327751
	.quad	0x3fb0b99ca5abd020              # double 0.065332212874466666
	.quad	0x3fec7dd4a533d5b8              # double 0.89036018625363678
	.quad	0x3fd63ee8a274139e              # double 0.34758964409439297
	.quad	0x3fdc0ec073c91f48              # double 0.43840037638846185
	.quad	0x3fe38ff06fcc70b6              # double 0.61132070384657911
	.quad	0x3fee8c9e0def40e3              # double 0.9546652099761811
	.quad	0x3fe2faf4fb0c1453              # double 0.59313439400342316
	.quad	0x3fe98c8c70e34d8e              # double 0.79840681122225177
	.quad	0x3fbf1bd0728a0378              # double 0.12151816173901675
	.quad	0x3fe76c1ea6c7a6be              # double 0.73194820951649553
	.quad	0x3fc5e97fc886d730              # double 0.17118832866042899
	.quad	0x3fec7b32dc79d828              # double 0.89003890096387739
	.quad	0x3fe703ee8bceb661              # double 0.71922995859285888
	.quad	0x3fefa099bda60321              # double 0.98835455933303617
	.quad	0x3febc81d459d9537              # double 0.86817802044666947
	.quad	0x3fedb76dbfe72bcc              # double 0.92864119988495863
	.quad	0x3fdc9f8848900ce4              # double 0.44723708234978532
	.quad	0x3fcd6ca7d9ddcd9c              # double 0.22987840784081193
	.quad	0x3fd23f6912654d2a              # double 0.28512026592689443
	.quad	0x3fe856230be976fa              # double 0.76051475836331339
	.quad	0x3fd27e14c4bda738              # double 0.28894538128826097
	.quad	0x3fe2200811fe438f              # double 0.56641009821224653
	.quad	0x3feca4e64034252f              # double 0.89512932338508289
	.quad	0x3fb38655048372c0              # double 0.076268495180054963
	.quad	0x3fe9092a1c5c9d14              # double 0.78236871280106123
	.quad	0x3fe0650c83354bbb              # double 0.51233506800269113
	.quad	0x3fd6402d03121656              # double 0.34766698169582833
	.quad	0x3fed7ae0221305c7              # double 0.92124945311677997
	.quad	0x3fa476b370e8a5b0              # double 0.039968116314706648
	.quad	0x3fe55d8486c8b3d2              # double 0.66766573262213513
	.quad	0x3fe7da7e85c1e0f4              # double 0.74542165874939181
	.quad	0x3fc04598cb6b8640              # double 0.12712392742746381
	.quad	0x3fa23c4f1bd2d720              # double 0.0356163712944364
	.quad	0x3fe8a4bc56a732f9              # double 0.77010933803975867
	.quad	0x3fe5a41b81296381              # double 0.67628264643563807
	.quad	0x3fe4fde5dd8c4c8f              # double 0.65599339743711649
	.quad	0x3fee7d7e5e17b005              # double 0.95281904580542742
	.quad	0x3fbc512223295ca8              # double 0.11061299665867586
	.quad	0x3fe470f0efea11e3              # double 0.63878676279324187
	.quad	0x3fcee4efddc9eefc              # double 0.24136160211116209
	.quad	0x3fa2aad943073970              # double 0.036459721977382453
	.quad	0x3fd2a8d59de56780              # double 0.29155483645956082
	.quad	0x3fd35a79ef639a76              # double 0.30239723565902155
	.quad	0x3fd426013e3e1ef2              # double 0.31481963232407317
	.quad	0x3fc30fc960b7edd0              # double 0.14891926977712311
	.quad	0x3fd3eddf9841d8dc              # double 0.31139364117497137
	.quad	0x3fd8770aabec9886              # double 0.38226572789643176
	.quad	0x3fe9484bbc127377              # double 0.79007517559840224
	.quad	0x3fe83b7815d6ef1c              # double 0.75725940957588333
	.quad	0x3fe24d0a04c0e737              # double 0.57190419128821801
	.quad	0x3fbb45031d67e7f8              # double 0.10652179210583756
	.quad	0x3fdd883c888ed32a              # double 0.46144021354421005
	.quad	0x3feff26e5698dcd4              # double 0.99834362901210704
	.quad	0x3fe07b82dc6c109e              # double 0.51507704783627495
	.quad	0x3fd3d86d541b4860              # double 0.31008465970547228
	.quad	0x3fe4251827cb23c2              # double 0.62952811977549339
	.quad	0x3fa494dfbbb9aab0              # double 0.0401983181626141
	.quad	0x3fe405ec5e25179c              # double 0.62572306049036142
	.quad	0x3fdc1c4b47779ce0              # double 0.43922693232748422
	.quad	0x3fefb76ebca3eefe              # double 0.99114167064496406
	.quad	0x3f88d8c8dcc54600              # double 0.012132233846076979
	.quad	0x3fd6db0b6704ee76              # double 0.35711941776728595
	.quad	0x3fc7ca6aaf1e56ac              # double 0.18586476851185318
	.quad	0x3faeacd72344a020              # double 0.059912417464431877
	.quad	0x3fed2134950d4e06              # double 0.91030339347565881
	.quad	0x3fb1504471633770              # double 0.067631032640944388
	.quad	0x3fe559c33548c549              # double 0.66720734030801865
	.quad	0x3fd4154eb9f26574              # double 0.31380050810692883
	.quad	0x3fe34d2d1b9f50f6              # double 0.60317092318521648
	.quad	0x3fae2b85c856ac00              # double 0.058925800996199484
	.quad	0x3fe8819cb8d7df1f              # double 0.76582180120655952
	.quad	0x3fe74b6e9c2e0fbf              # double 0.7279580164326872
	.quad	0x3fd79f1b3fc3431c              # double 0.36908608652906749
	.quad	0x3f9d5834281365a0              # double 0.028656783052473878
	.quad	0x3fb16a85150055d8              # double 0.068031613948128622
	.quad	0x3fe0d15889bbeed6              # double 0.52555491353219952
	.quad	0x3fe98341754f81a3              # double 0.79727242386075081
	.quad	0x3fd7ae642ba05f96              # double 0.37001899967571583
	.quad	0x3fe939fd29f0eb99              # double 0.78832872573490242
	.quad	0x3fdbfd8561724f34              # double 0.43734869495641537
	.quad	0x3fc6b1d0998a3fcc              # double 0.17730147835800236
	.quad	0x3fd9dcf632412b34              # double 0.40411143214867029
	.quad	0x3fceb8701f99ca54              # double 0.2400036005306726
	.quad	0x3fe9c5825d7e14fe              # double 0.80536001453643258
	.quad	0x3fe8c6389fda0a62              # double 0.77419692250289196
	.quad	0x3fe5ee9ee0b43739              # double 0.68537849318975141
	.quad	0x3fea3f52a03682cc              # double 0.82022982875431571
	.quad	0x3fef592a8eb11ab7              # double 0.9796345507573595
	.quad	0x3fc9632ac9171520              # double 0.19833884066444174
	.quad	0x3fea605791d9f10e              # double 0.8242605065020443
	.quad	0x3fc65d6750dfa454              # double 0.17472545098215397
	.quad	0x3fe2cf2207bf951c              # double 0.5877847815833408
	.quad	0x3fd223b4243a773a              # double 0.28342917955329805
	.quad	0x3fe8798f278bdad3              # double 0.76483876918686133
	.quad	0x3fe5cd377fd16a8d              # double 0.68130087818583862
	.quad	0x3f9efbad133754c0              # double 0.030256943033084793
	.quad	0x3fd4c0875c9d50a8              # double 0.32425102276216444
	.quad	0x3fe84d50ea4710d7              # double 0.75943799741119278
	.quad	0x3fc96d795c35f7f8              # double 0.19865338327866744
	.quad	0x3fe4385d130412a4              # double 0.63188031877560435
	.quad	0x3fee1fcab503a872              # double 0.94138083795884442
	.quad	0x3fefa9acfdd7358d              # double 0.98946237161878658
	.quad	0x3fd7a14636291b38              # double 0.36921839989775007
	.quad	0x3fce2f0ac31f1f84              # double 0.23581060912533414
	.quad	0x3fe45574d0fb1202              # double 0.63543167892981978
	.quad	0x3fe7b8e33d0db7e5              # double 0.74131929325608026
	.quad	0x3fdb40cd87073a12              # double 0.42583025156355447
	.quad	0x3fe3e6663bc0a3bd              # double 0.62187492056283811
	.quad	0x3fc3854ce53a5e7c              # double 0.15250550453923839
	.quad	0x3fde1f47d93597ec              # double 0.47065921985483672
	.quad	0x3fec7f71ce1747ea              # double 0.89055719616066864
	.quad	0x3fdc2c376508417a              # double 0.44019875399046493
	.quad	0x3fe85b7d2fdfad63              # double 0.7611680922540639
	.quad	0x3fe899f5d39b10a3              # double 0.76879397706263253
	.quad	0x3fddcf34a21de6b0              # double 0.46577182609290002
	.quad	0x3fe40307f329fa51              # double 0.62537000172580737
	.quad	0x3fe9b74256fda5ce              # double 0.80362050047295397
	.quad	0x3fe1ee40ddb56d62              # double 0.56033366491776015
	.quad	0x3fe8da228b326ce9              # double 0.77662779986294794
	.quad	0x3fee66b22dabe135              # double 0.95003613395878139
	.quad	0x3fd1b58acf8177a4              # double 0.27670545829993842
	.quad	0x3fb8bd69e133b640              # double 0.09664022205444045
	.quad	0x3fea59985a33ac13              # double 0.82343690507457479
	.quad	0x3fe8ce6efd3cf349              # double 0.77519940815509714
	.quad	0x3fdaac9b34e3bc76              # double 0.416785051012034
	.quad	0x3fb5ab4f9cbd1338              # double 0.084645248190167943
	.quad	0x3f91b0028ebbf160              # double 0.017272987329293499
	.quad	0x3fe0c6be19f6aaa5              # double 0.52426056929592291
	.quad	0x3fdbc7e0bcbe23de              # double 0.43407457763583845
	.quad	0x3fb2c5ab792b8558              # double 0.073328702051658978
	.quad	0x3fd25979858f85ea              # double 0.28671110194235772
	.quad	0x3fc789c1ff26954c              # double 0.18389153440981898
	.quad	0x3fcd4ec7db266108              # double 0.22896669579200357
	.quad	0x3fe073ae5e2bec2e              # double 0.51412123101125018
	.quad	0x3fd61332f0f1c080              # double 0.34492181329461147
	.quad	0x3fe622c02752c8a7              # double 0.69174201660486723
	.quad	0x3febd88ca7afa3d0              # double 0.87018425704183677
	.quad	0x3fc2c4de9f3d1a90              # double 0.14663298392607205
	.quad	0x3fefdf0b6abfad7f              # double 0.99597712373126501
	.quad	0x3fcec8bc5d950a30              # double 0.24050097054903707
	.quad	0x3fe14362a9e59c20              # double 0.53947575743666576
	.quad	0x3fb37568687603c0              # double 0.076010251525089778
	.quad	0x3fe09062ba2c83fa              # double 0.5176252018173948
	.quad	0x3fa2e1e94743dcf0              # double 0.036879816006995969
	.quad	0x3fe2faff8fb9811b              # double 0.59313943930831969
	.quad	0x3fef1a8fbd1356f4              # double 0.9719923680192708
	.quad	0x3fce0a1cf42ccc50              # double 0.23468362734419879
	.quad	0x3fc203ba1ad050b0              # double 0.14073873814834803
	.quad	0x3fb9baa87b6b4880              # double 0.10050442708168994
	.quad	0x3fa4629f445f3280              # double 0.039814927192854732
	.quad	0x3fe1145dc49b6d0a              # double 0.53373611831503465
	.quad	0x3fdb75e1fa2da094              # double 0.4290699904581825
	.quad	0x3fec871142a69c7f              # double 0.89148772256602615
	.quad	0x3fe6ef6856188c3b              # double 0.71672455611804453
	.quad	0x3fe4e3fbcc52b90c              # double 0.6528300276457073
	.quad	0x3fe68f971bfe9994              # double 0.70502810924226589
	.quad	0x3fc023a304f4fa98              # double 0.12608754865683092
	.quad	0x3fd919a3dd864924              # double 0.3921899474454611
	.quad	0x3fd3ae646097c8ba              # double 0.30751904900456462
	.quad	0x3fea566a0b6cb5ca              # double 0.82304861289383635
	.quad	0x3fe6a54c2294c70e              # double 0.70767790559895771
	.quad	0x3fe061a01b580add              # double 0.51191716518982455
	.quad	0x3fba5d2356be76a0              # double 0.10298367374204043
	.quad	0x3fb72674edb10ff8              # double 0.090430553465068786
	.quad	0x3fdf1c6e6baace0e              # double 0.48611031069160127
	.quad	0x3fd63b777bcaa5ec              # double 0.34737956131956937
	.quad	0x3fe4e0ea610a4461              # double 0.65245551064630203
	.quad	0x3fb2b1fe317d2bb0              # double 0.073028456766379035
	.quad	0x3fe687bfa367308a              # double 0.70407087244667932
	.quad	0x3fde66cdaeeb2e20              # double 0.4750246246519243
	.quad	0x3fe79c4809f0edda              # double 0.73782731954218694
	.quad	0x3fdca75ace5f2e16              # double 0.44771452096458242
	.quad	0x3fee9c472345ec22              # double 0.95657688988956502
	.quad	0x3feb15b922a3076f              # double 0.84640175595289502
	.quad	0x3fc22e6ef175e8b0              # double 0.14204203405444593
	.quad	0x3fdadd98d91885d0              # double 0.41977521134148521
	.quad	0x3fed9ff7a23dfdc3              # double 0.9257772606651361
	.quad	0x3faf822636a5b5b0              # double 0.061539835139096666
	.quad	0x3fe103cb23d83cee              # double 0.53171307564653403
	.quad	0x3fe0072ea7f9bcf5              # double 0.50087673957560119
	.quad	0x3fe60e064aed15df              # double 0.68921198495871383
	.quad	0x3fbf212d35c91718              # double 0.12159998477099199
	.quad	0x3fe6b79f2298cb9c              # double 0.70991474873732185
	.quad	0x3fe49f2fcd29587a              # double 0.64443197317702006
	.quad	0x3fe6d604e09d1996              # double 0.71362537259919878
	.quad	0x3fccb310297980c0              # double 0.22421457314613313
	.quad	0x3fe5fa2d824fc301              # double 0.68678927852133154
	.quad	0x3fe06c1b4c6ec70b              # double 0.5131966107203153
	.quad	0x3f49cbc9211f3c00              # double 7.8723259707114135E-4
	.quad	0x3fdefcc5be06aebc              # double 0.48417800481068318
	.quad	0x3fd016eb6d741d92              # double 0.25139890374017526
	.quad	0x3fe9ce2180745adb              # double 0.80641245926639316
	.quad	0x3fb4befe4cf4d338              # double 0.081039327419443974
	.quad	0x3fedaffdf9a683c5              # double 0.92773340949872163
	.quad	0x3fda9fab2570e98e              # double 0.41599539429048427
	.quad	0x3fe75cf321baaa8f              # double 0.73009640300490897
	.quad	0x3fc8e51b40633c10              # double 0.19449177402427198
	.quad	0x3fefd3a69cb1c276              # double 0.99458628277177641
	.quad	0x3fa7c10979fa7d00              # double 0.046394630565595563
	.quad	0x3fde77d4a79b72b6              # double 0.47606388442890635
	.quad	0x3fea90650e4cfdf5              # double 0.83012631219020128
	.quad	0x3fc2bc42453c9af8              # double 0.14637020474147966
	.quad	0x3fcaceba3a33fa18              # double 0.20943382112450659
	.quad	0x3fe389b6bf3f9870              # double 0.61056077340323434
	.quad	0x3fd147aa21f6604a              # double 0.26999905888215336
	.quad	0x3fd5523e806cc412              # double 0.33314478436938189
	.quad	0x3fda89814d369026              # double 0.41464264431329168
	.quad	0x3fd4396054e88956              # double 0.31600197116690276
	.quad	0x3fd15a41c3687638              # double 0.27113384325807344
	.quad	0x3fcdac33c406c70c              # double 0.23181769439320765
	.quad	0x3fe37fe7388f4e57              # double 0.60936318442186177
	.quad	0x3fe8a2c8744cd4b2              # double 0.76987097468249588
	.quad	0x3fe815087241fe4a              # double 0.75256750408147721
	.quad	0x3fc6ab122065a694              # double 0.17709566671264965
	.quad	0x3fe62b0bcf5a9559              # double 0.69275465487286703
	.quad	0x3fda2f7488c8288a              # double 0.40914643628696779
	.quad	0x3fcb05ba5ba8e550              # double 0.21111230350087817
	.quad	0x3fe4331c7477e0cf              # double 0.6312391543169954
	.quad	0x3fdd48266f80fd52              # double 0.45752869500207283
	.quad	0x3fc0cc3a1ddc4f80              # double 0.13123251398121383
	.quad	0x3fc2bb792a5337b8              # double 0.14634623114255674
	.quad	0x3fe0f55d0c5f9dd2              # double 0.52995159546565618
	.quad	0x3fc1f71d3f588c34              # double 0.14035382836400034
	.quad	0x3fe58c7cdb59a98f              # double 0.67339938012928424
	.quad	0x3feb50bb84fbf01a              # double 0.85360504125083314
	.quad	0x3fa6fa078fce9b90              # double 0.044876323990414524
	.quad	0x3fee927c75666c6e              # double 0.95538161210732908
	.quad	0x3fecf85b84bc3f67              # double 0.90531707692023822
	.quad	0x3fdb3d2304127ca0              # double 0.4256064929740635
	.quad	0x3fb37d65836f1580              # double 0.076132149303779428
	.quad	0x3feacc2180e946f2              # double 0.83741831949211432
	.quad	0x3fde149aa6eec1d4              # double 0.47000757505432245
	.quad	0x3fef9c18d9e92eb9              # double 0.98780481873242031
	.quad	0x3fef6a688e539a3b              # double 0.98173930929335229
	.quad	0x3fd2826d512076ae              # double 0.28921063349285248
	.quad	0x3feaac956f962ad3              # double 0.83356735033279461
	.quad	0x3fc8c988a1e439cc              # double 0.19365032105311142
	.quad	0x3fe4c5bb9a34b499              # double 0.64913730734191966
	.quad	0x3fd9699e5bf19b2a              # double 0.39707144717106024
	.quad	0x3feb3200d10802a7              # double 0.84985390497611923
	.quad	0x3fe0201979e4c33e              # double 0.50391839797348559
	.quad	0x3fe47e5d03d08edd              # double 0.64042521233610794
	.quad	0x3fdf254641cb8658              # double 0.4866500513581733
	.quad	0x3fd085c0e7c2d3fa              # double 0.25816366799273249
	.quad	0x3fa6c45bb324fde0              # double 0.044466844194626765
	.quad	0x3fe1a220b96358cf              # double 0.551040994726259
	.quad	0x3fe00d4077cf5ba7              # double 0.5016176548041259
	.quad	0x3fceb2caf336e668              # double 0.23983132243829464
	.quad	0x3fe3953873d860ae              # double 0.61196539522190618
	.quad	0x3fe79c9b82762c6d              # double 0.73786712151321654
	.quad	0x3fe66dc19ab032fd              # double 0.7008979817634039
	.quad	0x3fd32c97ccd59772              # double 0.29959673884729121
	.quad	0x3fda306280f03406              # double 0.40920317260389572
	.quad	0x3febc1172fd2a23e              # double 0.86732062664402299
	.quad	0x3fc652d7e0f3c518              # double 0.17440317615504664
	.quad	0x3fd7c07a866db232              # double 0.37112296226294739
	.quad	0x3fd00c7bb5e6ccb8              # double 0.25076191676925985
	.quad	0x3fe63bf3289f0470              # double 0.69481809552975271
	.quad	0x3fd46d6c1c0ca3b2              # double 0.31917860736080705
	.quad	0x3fe227a2b3645280              # double 0.56733832395055117
	.quad	0x3fe6976d44ae6927              # double 0.70598472036661952
	.quad	0x3febbac2a7c20e96              # double 0.86654789700738166
	.quad	0x3fee17747f4f2764              # double 0.94036316742970571
	.quad	0x3fec2ff91ce73f24              # double 0.88085609097649752
	.quad	0x3fe623ab0fe3ba84              # double 0.69185402968817344
	.quad	0x3fe70a602ed43003              # double 0.72001656671773195
	.quad	0x3fc67a31030956ac              # double 0.1756039872004086
	.quad	0x3fc5586caecd68f4              # double 0.16676100287697404
	.quad	0x3fe100e07ac8ac23              # double 0.53135704022622965
	.quad	0x3fb6de61a20f7aa8              # double 0.089330770555060668
	.quad	0x3fceade409da3c18              # double 0.23968172532156085
	.quad	0x3fb9bc8869e5fb50              # double 0.10053303323182416
	.quad	0x3fa4aa6ec45a09b0              # double 0.040362798184122695
	.quad	0x3fcefdc89dcf5c20              # double 0.24211986260954266
	.quad	0x3fe720cdde4200d9              # double 0.72275441560489206
	.quad	0x3fd20bd0698687ea              # double 0.28197107606149407
	.quad	0x3fe93a7c266f9762              # double 0.78838927752506671
	.quad	0x3fd8fbd299a09488              # double 0.39037003519690261
	.quad	0x3fb302271ab34040              # double 0.074251598375895789
	.quad	0x3fd5319e97b2467c              # double 0.33115353407001868
	.quad	0x3fa2385ba45e6f80              # double 0.035586227240144375
	.quad	0x3fe61ac12ca661cf              # double 0.69076594086350862
	.quad	0x3fd95215b797291e              # double 0.3956350605846114
	.quad	0x3fe596a40d2d0536              # double 0.67463877271089845
	.quad	0x3febaf8acedcf20e              # double 0.86517849352782306
	.quad	0x3fd1a4e7cf0c66a8              # double 0.27569003314565999
	.quad	0x3fe28449c2bbf79c              # double 0.57864845308334933
	.quad	0x3fed3d33cebb5eb9              # double 0.91372099282576535
	.quad	0x3fd9ecccdf74b05e              # double 0.40507814237458273
	.quad	0x3fc7e1bf150fdf84              # double 0.18657673386018925
	.quad	0x3f8b4c297e222ec0              # double 0.013328861390866975
	.quad	0x3fe643da08417077              # double 0.69578267681528316
	.quad	0x3fc1df79f9efd714              # double 0.13963246063183787
	.quad	0x3fec02e39399bee8              # double 0.87535265758739644
	.quad	0x3fd24079fae90bbe              # double 0.28518533232653087
	.quad	0x3fe30a5efe8a1ef1              # double 0.59501599993470056
	.quad	0x3fe5790bb8ac851e              # double 0.67102609700319582
	.quad	0x3feee2e7990ba054              # double 0.96519832507784508
	.quad	0x3fed545a56f9b141              # double 0.91654698359847242
	.quad	0x3fd421337a90567a              # double 0.31452643365023614
	.quad	0x3fd1250adc06af20              # double 0.26788588988232398
	.quad	0x3fe1606fcca0fe03              # double 0.54302206007554366
	.quad	0x3fef088e44051d5b              # double 0.96979440007354911
	.quad	0x3fdc24b562e2d610              # double 0.43974051148265492
	.quad	0x3fef18e53a4588c9              # double 0.97178899174857591
	.quad	0x3fe54d24a7248284              # double 0.66566689152757919
	.quad	0x3fc40140bae9bc90              # double 0.15628823401082004
	.quad	0x3fe8a1b9c4165164              # double 0.76974190042760115
	.quad	0x3fe299e8e8535ad9              # double 0.58128781677336427
	.quad	0x3faf0e061861d6a0              # double 0.060653868175831294
	.quad	0x3fed12e6d5ff05eb              # double 0.9085573367703409
	.quad	0x3fdcc76337634d24              # double 0.44966965111707879
	.quad	0x3fc6524db25a35a0              # double 0.17438670357334463
	.quad	0x3fd0321c099b7f16              # double 0.25305844248031073
	.quad	0x3fe3ed15499f4dbb              # double 0.62269081477500465
	.quad	0x3fe31526ed5e41da              # double 0.59633203850722372
	.quad	0x3fe96ec3d5df2d16              # double 0.79477111598808636
	.quad	0x3fdb56c09d263444              # double 0.42716994616131765
	.quad	0x3fe2e17794776041              # double 0.59002284047438291
	.quad	0x3fe2b1146a0cee73              # double 0.58411617959013851
	.quad	0x3fd416b396466b16              # double 0.31388559031772567
	.quad	0x3fedfeb0f5c18424              # double 0.93734024047092079
	.quad	0x3fe987a555b17157              # double 0.79780832993450701
	.quad	0x3fe5dea1bf9ee528              # double 0.68342673707880852
	.quad	0x3fd15157b98c0854              # double 0.27058976287674352
	.quad	0x3fe96850d29d6231              # double 0.7939838517732537
	.quad	0x3fba0ec3d4760bb8              # double 0.10178779542006466
	.quad	0x3feae80dc08204a0              # double 0.84082686995693123
	.quad	0x3fc18ebfb6f1ae28              # double 0.13716885025802239
	.quad	0x3fe6c776a0ea2985              # double 0.71184855869914598
	.quad	0x3fe40e2d355be9c8              # double 0.62673054143606866
	.quad	0x3fdd7af325d48fb8              # double 0.46062926000945081
	.quad	0x3fdde77e84a7145e              # double 0.46725428537712854
	.quad	0x3fe83d8a3e0bd779              # double 0.75751220816049092
	.quad	0x3fd8e731d0cab252              # double 0.3891109980566273
	.quad	0x3fe3ba611da8a147              # double 0.61650138657299969
	.quad	0x3fd258297b34373e              # double 0.28663098365437978
	.quad	0x3feff3f773ddb65b              # double 0.99853108053293782
	.quad	0x3fef77536282cc66              # double 0.98331612816253933
	.quad	0x3fc11978e81403f8              # double 0.13358985263769774
	.quad	0x3fe94c128d296417              # double 0.79053618975297268
	.quad	0x3fd63c1c7e12507c              # double 0.34741890250848662
	.quad	0x3fe86c7f91e22e2a              # double 0.76324442379831692
	.quad	0x3fb885110b513300              # double 0.095780434859261021
	.quad	0x3fd85e5f2b8ce6ee              # double 0.3807599950119841
	.quad	0x3fc240494e48b1ac              # double 0.14258686373194729
	.quad	0x3fe14d7ae086e994              # double 0.54070800640993122
	.quad	0x3fcbb9536310f4d0              # double 0.21659319245546849
	.quad	0x3fce7071c5996820              # double 0.23780653141403807
	.quad	0x3fce80b39a408734              # double 0.23830266029204383
	.quad	0x3fcc0ad13e3cd11c              # double 0.2190801195043911
	.quad	0x3fc7f22f44db9294              # double 0.1870783888072266
	.quad	0x3fce1409f4ebf65c              # double 0.23498653849667306
	.quad	0x3fc498d8b4c3ecac              # double 0.16091450525695927
	.quad	0x3fef1d0496466be2              # double 0.97229222632028844
	.quad	0x3fd576b42bd752ae              # double 0.33537010461194938
	.quad	0x3f563df87b1e1800              # double 0.0013575483867227511
	.quad	0x3fee664c98e2c031              # double 0.94998769627091495
	.quad	0x3fe0bd0145c4b285              # double 0.52307189585333502
	.quad	0x3fc4acc438fc83d8              # double 0.16152241499460618
	.quad	0x3fe21c843843dde3              # double 0.56598101605680673
	.quad	0x3fd05bb1ae2dceb8              # double 0.25559656152402566
	.quad	0x3fd802f0228ba84c              # double 0.37517932294452261
	.quad	0x3fef556bf92e8c40              # double 0.97917746227575008
	.quad	0x3fd54bf7deba0a3c              # double 0.33276173353820915
	.quad	0x3fcbba449c320520              # double 0.21662194849708616
	.quad	0x3fc3ad7800675720              # double 0.15373134631834606
	.quad	0x3fe93e5c58d674e8              # double 0.78886239386670542
	.quad	0x3fe8d74ad10fd5c7              # double 0.7762807925452585
	.quad	0x3fec67bac415740f              # double 0.88766229913346872
	.quad	0x3feb7e7994c89b23              # double 0.85918883380222544
	.quad	0x3fd6d92e52aa45e8              # double 0.35700567314878962
	.quad	0x3fe87fd6c7c81ad7              # double 0.76560534496169452
	.quad	0x3fc787390e37b388              # double 0.18381417459695748
	.quad	0x3fe7b8c36395872c              # double 0.74130410623567888
	.quad	0x3fdfd11edae90bde              # double 0.49713870408976202
	.quad	0x3fa122ad64854b30              # double 0.033467691917982711
	.quad	0x3fea4fa9677b98f9              # double 0.82222433291897723
	.quad	0x3fe4e81e3e505a03              # double 0.65333473368338024
	.quad	0x3feaaae4b3584468              # double 0.83336100605278052
	.quad	0x3fe414112096361c              # double 0.62744957317926575
	.quad	0x3fe2ea449090755b              # double 0.59109714732373264
	.quad	0x3fe7c87cfa1993d6              # double 0.74322365615500519
	.quad	0x3fea1bd1e0d1fabb              # double 0.81589597616387921
	.quad	0x3fe294140c57e263              # double 0.58057596598434846
	.quad	0x3fbad2d488ba7ca8              # double 0.1047795137223938
	.quad	0x3fec65d7bb82a1e3              # double 0.88743197081663217
	.quad	0x3feeede34e17e150              # double 0.96653905155748454
	.quad	0x3fee45420af6603b              # double 0.94595434323401351
	.quad	0x3fdbd4da55a00d76              # double 0.43486650811993088
	.quad	0x3fc6ec04e3159b44              # double 0.17907773101907243
	.quad	0x3fe1c821955053fb              # double 0.55568007624481142
	.quad	0x3fe5f0c7880a5fbe              # double 0.68564201898970345
	.quad	0x3febe5ef4cda4c22              # double 0.87181820879266447
	.quad	0x3fd2f22835964a02              # double 0.29603009446250905
	.quad	0x3fe8a89d12dd8707              # double 0.77058271107327492
	.quad	0x3fd622b9ff22aa66              # double 0.3458695403630031
	.quad	0x3fd59c0555d5b492              # double 0.33764775640776989
	.quad	0x3fe101461d4d0b29              # double 0.53140550349084947
	.quad	0x3fe8d6abf3595738              # double 0.77620503930186313
	.quad	0x3fd9d256866e9718              # double 0.40346301200985257
	.quad	0x3fc73c2c36bf4e2c              # double 0.18152382538993217
	.quad	0x3fb624cb3158d490              # double 0.08649892763863165
	.quad	0x3fee0f8ffc9adf91              # double 0.93939971291455227
	.quad	0x3fc7823c76f86970              # double 0.1836619931135135
	.quad	0x3fcc6426328ff04c              # double 0.22180631131039019
	.quad	0x3fe07f1a21b01d9d              # double 0.51551539020231341
	.quad	0x3fe2e4c55554da20              # double 0.59042612711238363
	.quad	0x3fecaba2099ce45d              # double 0.89595128896247511
	.quad	0x3fa4b9ef20a53660              # double 0.04048106454375211
	.quad	0x3fe39bcdabe1dd99              # double 0.61276897021064081
	.quad	0x3fe6f3fc27b9aa88              # double 0.71728332289542696
	.quad	0x3fc19e4207a5467c              # double 0.13764214871712344
	.quad	0x3fbf71961890bea0              # double 0.12282693958035873
	.quad	0x3fceeeb8a6d04bac              # double 0.24166019578168851
	.quad	0x3fe71ceed550a519              # double 0.7222818533238381
	.quad	0x3fdad0d1d716227a              # double 0.41899534229791124
	.quad	0x3f9eedb7766c6700              # double 0.030203692057603426
	.quad	0x3feb008f0799c6f0              # double 0.84381820187101475
	.quad	0x3fe9a812a6fcbbb6              # double 0.80176670660681881
	.quad	0x3fcfbaa87436e12c              # double 0.24788385080842923
	.quad	0x3fe1cfa13f4db561              # double 0.55659544338201894
	.quad	0x3fd53ab9d2ae39e8              # double 0.33170934271120567
	.quad	0x3fe578bae2d48277              # double 0.67098755171544056
	.quad	0x3fb3734e99477a90              # double 0.075978195592578012
	.quad	0x3fe3d286b9a44277              # double 0.61944900758869792
	.quad	0x3fa8524fd9fa4dd0              # double 0.047502990110981025
	.quad	0x3fd5b0647072ae70              # double 0.338891134083247
	.quad	0x3fabf66cc9b119a0              # double 0.054614448185520859
	.quad	0x3fc12b25cf4a80f8              # double 0.13412926313049645
	.quad	0x3fe05bcf92a27a21              # double 0.51120737685761608
	.quad	0x3fd48546ffd615d6              # double 0.32063460334788141
	.quad	0x3fc1022d2bbbd6e8              # double 0.13287891993939316
	.quad	0x3fefe376e8ec725f              # double 0.9965166615762192
	.quad	0x3fd4e1d4b432283c              # double 0.32628362271555367
	.quad	0x3fd39b37ca9bd6d2              # double 0.30634875093470015
	.quad	0x3fe70c620fba3e16              # double 0.72026160308627385
	.quad	0x3fbd5001cbb0b890              # double 0.1145020601549922
	.quad	0x3fef4e2b67c5b4d6              # double 0.97829218166375642
	.quad	0x3fd41a39ce43b2b0              # double 0.31410069602024304
	.quad	0x3fd4b2efe82f3944              # double 0.32342145609154138
	.quad	0x3f9924a4e3c1c400              # double 0.024553848649194521
	.quad	0x3fe7ca20e07a2e09              # double 0.74342388003555115
	.quad	0x3fefc4400d9b54a0              # double 0.99270632417269055
	.quad	0x3fc6c247a213c718              # double 0.17780394948891209
	.quad	0x3fe02c442a9f87c0              # double 0.50540359806858959
	.quad	0x3fc46df52817bdb0              # double 0.159605640961201
	.quad	0x3fe64bdd908874bf              # double 0.69676092366321274
	.quad	0x3fd24db751bfa8c6              # double 0.2859934137656065
	.quad	0x3fdef53ad919a5a8              # double 0.48371764374914017
	.quad	0x3fef3eeaca08b93b              # double 0.9764303155878119
	.quad	0x3fbb3b6399ab4b10              # double 0.10637495519339901
	.quad	0x3fefe2c92330e615              # double 0.99643380044216434
	.quad	0x3fd0ca705f187f40              # double 0.26235589300812379
	.quad	0x3feaf44eabd20ba4              # double 0.8423226695889423
	.quad	0x3fd1cf275ddad274              # double 0.2782686630774045
	.quad	0x3fed5c19219d06ac              # double 0.91749245228875997
	.quad	0x3fec79ac88b159a7              # double 0.8898527784138438
	.quad	0x3fec5e7f5bc71a12              # double 0.8865353386434569
	.quad	0x3fcb0251b0c4d804              # double 0.21100827342314699
	.quad	0x3fd9dc6253ff3470              # double 0.40407617762395542
	.quad	0x3fd29136595abd24              # double 0.29011305547733657
	.quad	0x3fc4b2bbdf6af6e4              # double 0.16170452508043021
	.quad	0x3fefb7478567bd5c              # double 0.99112297111234282
	.quad	0x3fe95f58b35f3e2c              # double 0.79288897546388659
	.quad	0x3fe25e013dfbe115              # double 0.57397520166617488
	.quad	0x3fed1672de714e89              # double 0.9089903206426736
	.quad	0x3fe7895cd24a5db6              # double 0.73551789352762031
	.quad	0x3fbb14e6205a68c0              # double 0.10578764238235561
	.quad	0x3fd83836ff0b0010              # double 0.37843108088054667
	.quad	0x3fb6a8c1837bfe18              # double 0.08851251087252654
	.quad	0x3fdd3e167fc3ef98              # double 0.45691454388701791
	.quad	0x3fe4deea0e8a5ce8              # double 0.65221121635377433
	.quad	0x3fef21afb6f3db30              # double 0.97286210759089009
	.quad	0x3fb5a9a8b9f5cc80              # double 0.084620042229106573
	.quad	0x3fefe09c43ab97b7              # double 0.99616826264240543
	.quad	0x3fef78f820af0b6c              # double 0.98351675399349636
	.quad	0x3fe20a01d3043dd8              # double 0.56372157301114623
	.quad	0x3fd43f49a0452d54              # double 0.31636276866330104
	.quad	0x3fe499540fa0f4a9              # double 0.64371684124457318
	.quad	0x3fd9b99774d2351e              # double 0.40195261390984338
	.quad	0x3fe8590f73e864da              # double 0.76087162626495375
	.quad	0x3fea09d0bd3e23dc              # double 0.81369816743346801
	.quad	0x3fdb61b22b88fe4a              # double 0.42783788920857957
	.quad	0x3fe3c68c18db7f01              # double 0.6179867253776764
	.quad	0x3fab4daffd47c710              # double 0.053327083271041187
	.quad	0x3fee8d5d5b67233a              # double 0.9547564301693463
	.quad	0x3fbb75bbbc11e260              # double 0.10726521817731216
	.quad	0x3fcccee62f09ce8c              # double 0.22506406113426569
	.quad	0x3fecfbe60e3e6b7a              # double 0.90574934751508285
	.quad	0x3fb2187fe3366d78              # double 0.070686333629444209
	.quad	0x3fdb992b84f7a8ac              # double 0.43122375474070895
	.quad	0x3fb764bc0e676ab8              # double 0.09138083793315388
	.quad	0x3fefc9058e7f0407              # double 0.99328878241806328
	.quad	0x3fd3f74ad68d68fe              # double 0.31196852638608152
	.quad	0x3fc63bd1bf368d84              # double 0.17370054089142795
	.quad	0x3fc6cd82f12aaad0              # double 0.17814671302524809
	.quad	0x3fdcd3cb901f7d5a              # double 0.45042695116531706
	.quad	0x3fef11601a00d20e              # double 0.97087102011443149
	.quad	0x3fc3fef5ba93dd4c              # double 0.15621825800165323
	.quad	0x3fe2539a7d7876d4              # double 0.57270550256699915
	.quad	0x3fe4e2a74fef0600              # double 0.65266767131851111
	.quad	0x3fe511a97f6b29aa              # double 0.65840601812788191
	.quad	0x3fe840f5dabfaf60              # double 0.75792973255509465
	.quad	0x3fd1d8ba5c85a18e              # double 0.27885302577353677
	.quad	0x3fe3d5fa02e63ade              # double 0.61987019125248444
	.quad	0x3fd7b390197c27a8              # double 0.37033464897887791
	.quad	0x3fef5e745fbc25e3              # double 0.98028010080559757
	.quad	0x3fab86fd24d74350              # double 0.053764258143593424
	.quad	0x3fc0a0c39870fa6c              # double 0.12990612929748424
	.quad	0x3fed767e37c4821e              # double 0.92071448223220265
	.quad	0x3faba51662b772a0              # double 0.053993892240872698
	.quad	0x3fe0969959e01d8a              # double 0.51838367036627742
	.quad	0x3fe9f2c91a0712fb              # double 0.81088690837404387
	.quad	0x3fddbf9e0e9c6b3e              # double 0.46482039858681279
	.quad	0x3fe5b43319e7c836              # double 0.67824702319763364
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
