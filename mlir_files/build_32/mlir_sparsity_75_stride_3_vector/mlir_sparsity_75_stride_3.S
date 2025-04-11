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
	.quad	2500                            # 0x9c4
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	2500                            # 0x9c4
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
	lui	a7, %hi(.L__constant_2500xindex)
	addi	a7, a7, %lo(.L__constant_2500xindex)
	lui	t0, %hi(.L__constant_2500xf64)
	addi	t0, t0, %lo(.L__constant_2500xf64)
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
	.quad	58                              # 0x3a
	.quad	75                              # 0x4b
	.quad	115                             # 0x73
	.quad	131                             # 0x83
	.quad	144                             # 0x90
	.quad	190                             # 0xbe
	.quad	209                             # 0xd1
	.quad	227                             # 0xe3
	.quad	271                             # 0x10f
	.quad	286                             # 0x11e
	.quad	303                             # 0x12f
	.quad	348                             # 0x15c
	.quad	356                             # 0x164
	.quad	365                             # 0x16d
	.quad	412                             # 0x19c
	.quad	432                             # 0x1b0
	.quad	447                             # 0x1bf
	.quad	489                             # 0x1e9
	.quad	500                             # 0x1f4
	.quad	520                             # 0x208
	.quad	559                             # 0x22f
	.quad	579                             # 0x243
	.quad	593                             # 0x251
	.quad	637                             # 0x27d
	.quad	656                             # 0x290
	.quad	672                             # 0x2a0
	.quad	715                             # 0x2cb
	.quad	727                             # 0x2d7
	.quad	744                             # 0x2e8
	.quad	786                             # 0x312
	.quad	804                             # 0x324
	.quad	817                             # 0x331
	.quad	861                             # 0x35d
	.quad	879                             # 0x36f
	.quad	891                             # 0x37b
	.quad	936                             # 0x3a8
	.quad	949                             # 0x3b5
	.quad	959                             # 0x3bf
	.quad	1004                            # 0x3ec
	.quad	1019                            # 0x3fb
	.quad	1026                            # 0x402
	.quad	1071                            # 0x42f
	.quad	1083                            # 0x43b
	.quad	1099                            # 0x44b
	.quad	1144                            # 0x478
	.quad	1157                            # 0x485
	.quad	1169                            # 0x491
	.quad	1212                            # 0x4bc
	.quad	1230                            # 0x4ce
	.quad	1245                            # 0x4dd
	.quad	1292                            # 0x50c
	.quad	1306                            # 0x51a
	.quad	1319                            # 0x527
	.quad	1367                            # 0x557
	.quad	1386                            # 0x56a
	.quad	1393                            # 0x571
	.quad	1438                            # 0x59e
	.quad	1455                            # 0x5af
	.quad	1466                            # 0x5ba
	.quad	1509                            # 0x5e5
	.quad	1521                            # 0x5f1
	.quad	1545                            # 0x609
	.quad	1591                            # 0x637
	.quad	1606                            # 0x646
	.quad	1618                            # 0x652
	.quad	1663                            # 0x67f
	.quad	1680                            # 0x690
	.quad	1692                            # 0x69c
	.quad	1732                            # 0x6c4
	.quad	1753                            # 0x6d9
	.quad	1774                            # 0x6ee
	.quad	1823                            # 0x71f
	.quad	1843                            # 0x733
	.quad	1858                            # 0x742
	.quad	1902                            # 0x76e
	.quad	1916                            # 0x77c
	.quad	1927                            # 0x787
	.quad	1969                            # 0x7b1
	.quad	1982                            # 0x7be
	.quad	1993                            # 0x7c9
	.quad	2037                            # 0x7f5
	.quad	2061                            # 0x80d
	.quad	2086                            # 0x826
	.quad	2128                            # 0x850
	.quad	2144                            # 0x860
	.quad	2160                            # 0x870
	.quad	2202                            # 0x89a
	.quad	2218                            # 0x8aa
	.quad	2229                            # 0x8b5
	.quad	2275                            # 0x8e3
	.quad	2290                            # 0x8f2
	.quad	2302                            # 0x8fe
	.quad	2343                            # 0x927
	.quad	2368                            # 0x940
	.quad	2385                            # 0x951
	.quad	2427                            # 0x97b
	.quad	2446                            # 0x98e
	.quad	2461                            # 0x99d
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
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
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
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
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	32                              # 0x20
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
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
	.quad	2                               # 0x2
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	61                              # 0x3d
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
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
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
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
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	91                              # 0x5b
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	96                              # 0x60
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
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
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	85                              # 0x55
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	81                              # 0x51
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	6                               # 0x6
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	45                              # 0x2d
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	31                              # 0x1f
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	11                              # 0xb
	.quad	29                              # 0x1d
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	0                               # 0x0
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
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	54                              # 0x36
	.quad	72                              # 0x48
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
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
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	56                              # 0x38
	.quad	71                              # 0x47
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	64                              # 0x40
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
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
	.quad	44                              # 0x2c
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
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	89                              # 0x59
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
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
	.quad	42                              # 0x2a
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	31                              # 0x1f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	97                              # 0x61
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
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
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
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
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	75                              # 0x4b
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	99                              # 0x63
	.size	.L__constant_2500xindex, 20000

	.type	.L__constant_2500xf64,@object   # @__constant_2500xf64
	.p2align	6, 0x0
.L__constant_2500xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_2500xf64, 20000

	.type	.L__constant_100x100xf64,@object # @__constant_100x100xf64
	.p2align	6, 0x0
.L__constant_100x100xf64:
	.quad	0x3fdd5beda046c74c              # double 0.4587358536910997
	.quad	0x3fefa6d7f878e1d5              # double 0.98911665467954412
	.quad	0x3fd720bf8cbb60bc              # double 0.36137379401544556
	.quad	0x3fed435a6065474e              # double 0.91447180583257093
	.quad	0x3fde88cab8490cce              # double 0.47709911343208666
	.quad	0x3fecbf4dcde0d985              # double 0.89835252962693402
	.quad	0x3fe814b6c38603f7              # double 0.75252855480368808
	.quad	0x3fc360a2259c121c              # double 0.15138651691826588
	.quad	0x3fe8fcd8e18e2f68              # double 0.7808651357058638
	.quad	0x3fe08a2126da9302              # double 0.51686151112207335
	.quad	0x3fd9fc39b652ee6e              # double 0.40601961903641992
	.quad	0x3fe8876f2cbbe018              # double 0.76653250443542031
	.quad	0x3fe6fd85182ed1b5              # double 0.71844725344867888
	.quad	0x3fe97d58c222353a              # double 0.79655111233447617
	.quad	0x3fe73991d7bdb824              # double 0.72577755104953612
	.quad	0x3fcd62d54f3b5838              # double 0.22957865113011322
	.quad	0x3fea06b49d3b724b              # double 0.81331854543129489
	.quad	0x3fee6b5765843d9d              # double 0.9506031973596013
	.quad	0x3fb64f6afd975f28              # double 0.087149321472108299
	.quad	0x3fd7d5c482ead658              # double 0.37242234024902166
	.quad	0x3fdd525ad85a7514              # double 0.45815154197937713
	.quad	0x3fd447a4ea33fd4a              # double 0.31687281485934149
	.quad	0x3fc40899c7be9cb0              # double 0.15651247265961876
	.quad	0x3f79124fce6b4f00              # double 0.0061209790644232154
	.quad	0x3fe7d65f4fd70245              # double 0.74491849511839148
	.quad	0x3fda81ec301c1998              # double 0.41417984674662867
	.quad	0x3fd38c35015a05f4              # double 0.30543255931851765
	.quad	0x3fb3f7b94521d9a0              # double 0.077998713853821844
	.quad	0x3fdaf30b74ab721c              # double 0.42108427423025474
	.quad	0x3fe3381d282b28de              # double 0.60059984059742155
	.quad	0x3fe396e9d507ceb8              # double 0.61217204673308512
	.quad	0x3fad5e95786ec360              # double 0.05736224265218115
	.quad	0x3fe45a33bc52a2f2              # double 0.63601099759861612
	.quad	0x3fe4ebe9c41bb6bc              # double 0.65379799177545506
	.quad	0x3fec4229e6d90275              # double 0.88307662093582329
	.quad	0x3fd001394aecf062              # double 0.25007469479510835
	.quad	0x3fdee85633a406fe              # double 0.48293070834198193
	.quad	0x3fb0a55f38207150              # double 0.065023375704588604
	.quad	0x3fbf843226d49070              # double 0.12311089942937925
	.quad	0x3fd4e20d1fc965bc              # double 0.32629707435770761
	.quad	0x3fde30bb9a2e4c74              # double 0.47172441536640197
	.quad	0x3fe5279202d2e682              # double 0.66108036567239048
	.quad	0x3fb57cfb99e8b240              # double 0.083938336444313144
	.quad	0x3fede711dd85a02d              # double 0.93445676103602227
	.quad	0x3fdc4976ad989460              # double 0.44198386147247071
	.quad	0x3fe7fc9db379bcfc              # double 0.74958691648308173
	.quad	0x3fe08a923390001b              # double 0.51691541739274116
	.quad	0x3fe1dda50b69301d              # double 0.55830623844804317
	.quad	0x3fe583081608e419              # double 0.67224506667764949
	.quad	0x3fe98088db28afc4              # double 0.79694025806883717
	.quad	0x3fea14defd476e8b              # double 0.81504773586807866
	.quad	0x3fee2207e94db8c2              # double 0.94165416304692706
	.quad	0x3fdac7fed205cc10              # double 0.41845675001167226
	.quad	0x3fd09009809221c4              # double 0.25879132800812621
	.quad	0x3fdac44be4686bea              # double 0.41823098473986298
	.quad	0x3fd2111970441ce8              # double 0.28229366267664924
	.quad	0x3fd2eb704faf27d6              # double 0.29562003881130516
	.quad	0x3fb8fd74e1828d98              # double 0.097617440277238621
	.quad	0x3fc00f1609d03d24              # double 0.12546039084598093
	.quad	0x3fe80490cd2daa0e              # double 0.75055732797528818
	.quad	0x3fc738b86679764c              # double 0.18141846660266692
	.quad	0x3fecc30ad69dfadf              # double 0.8988088790645995
	.quad	0x3fe4ace92fe2780c              # double 0.6461072859999617
	.quad	0x3fe5fae1a7f32242              # double 0.68687517931636699
	.quad	0x3fbc9c9644370038              # double 0.11176432767297306
	.quad	0x3fe46ddcdfad6049              # double 0.63841098486865022
	.quad	0x3fe986a755e4f12b              # double 0.79768721367103035
	.quad	0x3fe4e36dd016f71a              # double 0.6527623237850293
	.quad	0x3fe20beb16f9c052              # double 0.56395487296505054
	.quad	0x3fd71dd76a8a8de6              # double 0.36119637875000732
	.quad	0x3fed295d0f3bc692              # double 0.91129925704281534
	.quad	0x3feab961e7ac493c              # double 0.83512969254142133
	.quad	0x3fe3b43f32317796              # double 0.61575279048314502
	.quad	0x3fd1e90543eaef6e              # double 0.27984744675244755
	.quad	0x3fb33750ee0e3de0              # double 0.075062807196665471
	.quad	0x3fe8ae530e1fc75e              # double 0.77127983816738399
	.quad	0x3fe77b5802b2c507              # double 0.73380661513343248
	.quad	0x3febe58a5227f4d4              # double 0.87177005811795504
	.quad	0x3f8601e33f1d9cc0              # double 0.010745787967336162
	.quad	0x3feacff28a199743              # double 0.83788420651101381
	.quad	0x3fd23aafe69b7dea              # double 0.284831977083711
	.quad	0x3feebeba5312cc75              # double 0.96078220582275142
	.quad	0x3fe8477e3e6f52c4              # double 0.75872718996341648
	.quad	0x3fea7f3416387c4a              # double 0.82802776660890598
	.quad	0x3fea5754256dd43b              # double 0.82316024122577092
	.quad	0x3fdc89576caa38ca              # double 0.44588266002473331
	.quad	0x3fc3a2472e462384              # double 0.15338983306380893
	.quad	0x3fe6746cb75cfa57              # double 0.70171199620365143
	.quad	0x3fc15825aee29388              # double 0.13550253905591725
	.quad	0x3fe685161a1a98dd              # double 0.70374589060227388
	.quad	0x3fdef92dfb91124c              # double 0.48395871703204274
	.quad	0x3fd366065f97ed6a              # double 0.30310210547732785
	.quad	0x3febcfb2c16a4a8c              # double 0.86910379196554421
	.quad	0x3fd5d3dd5980e64a              # double 0.34105619183137448
	.quad	0x3fdca4c485d4e4f4              # double 0.44755662030691146
	.quad	0x3fd332d86d8c20ee              # double 0.29997835824953156
	.quad	0x3fe17f9f3dfc2ea7              # double 0.54682886225187566
	.quad	0x3fe59256edd2270b              # double 0.6741137165965666
	.quad	0x3fc8ee47d57898ac              # double 0.19477174685852583
	.quad	0x3fe590ff4b14784e              # double 0.67394985832266641
	.quad	0x3fe99af479d95bb0              # double 0.80016540335315334
	.quad	0x3fd43ca28ef63e62              # double 0.31620086632844935
	.quad	0x3fe37a439421610f              # double 0.60867480212894687
	.quad	0x3fee7b73e5b22dbf              # double 0.95256991255285317
	.quad	0x3fb260ca150dbb38              # double 0.071789388790176711
	.quad	0x3fea95ef34a81d40              # double 0.83080253872405052
	.quad	0x3fd435cf35ec3662              # double 0.3157842661465563
	.quad	0x3fdf1459618b3396              # double 0.48561701322324191
	.quad	0x3fe32a239c335f18              # double 0.59889393337195695
	.quad	0x3fb10a81d57ef500              # double 0.066566576598194871
	.quad	0x3feb9ac9db8c19f5              # double 0.86264508133245832
	.quad	0x3fd233e40affaab6              # double 0.28441716264812145
	.quad	0x3fefde5ae1875591              # double 0.99589294479908307
	.quad	0x3fec8b3f76a55cd1              # double 0.89199803517376541
	.quad	0x3fca46884ef57fcc              # double 0.20527747970026977
	.quad	0x3fe87cd692e5a6ed              # double 0.76523903551898587
	.quad	0x3fe20f56a96313cf              # double 0.56437237819101849
	.quad	0x3fa7dedc09d78c90              # double 0.046622158242621059
	.quad	0x3fe3587d446fe82f              # double 0.60455191961887589
	.quad	0x3f82c5e36e90bd80              # double 0.009166504680335974
	.quad	0x3fd16c633bd7f834              # double 0.27224045604805558
	.quad	0x3fe710ff80c4ae94              # double 0.7208249583249704
	.quad	0x3fd25dda394e7a7a              # double 0.28697829815238374
	.quad	0x3fed61843a30c2d5              # double 0.91815387120558489
	.quad	0x3fef54cdfd25d99c              # double 0.97910212939204965
	.quad	0x3fece0634a570572              # double 0.90239109534756623
	.quad	0x3fe7d4552d61d5ad              # double 0.7446695219393199
	.quad	0x3fe8c8a50dcdf6db              # double 0.77449276634407782
	.quad	0x3fd0bcb6eaf296c8              # double 0.26151822036841255
	.quad	0x3fedd7b63a16318a              # double 0.93258200974519068
	.quad	0x3fe1362010541e5c              # double 0.53785708607842819
	.quad	0x3fea1c6c753f5c52              # double 0.81596968555357763
	.quad	0x3fda861c1d4a80a2              # double 0.41443541393710792
	.quad	0x3fe2a585b2754a3c              # double 0.58270535330877449
	.quad	0x3fb420d39ab0fb60              # double 0.078625893846930861
	.quad	0x3fb8537b5124c648              # double 0.095023829756223255
	.quad	0x3febd248f2437178              # double 0.86941954915123087
	.quad	0x3f96ae806a9589e0              # double 0.022150045876864755
	.quad	0x3fefbbf7cd2f528d              # double 0.991695309402148
	.quad	0x3fd9886b0390cd30              # double 0.39895129535871643
	.quad	0x3fe63bbc3cac8f62              # double 0.69479190683749104
	.quad	0x3feb6651ab7d4e18              # double 0.85624011510884923
	.quad	0x3fe4b6de4d708bdb              # double 0.64732279896667977
	.quad	0x3fe9046f25486d82              # double 0.78179127961941242
	.quad	0x3fec59acddd02b05              # double 0.88594668696291079
	.quad	0x3fe2e93c826d63a9              # double 0.59097123598177348
	.quad	0x3fc13128df951074              # double 0.13431273381332043
	.quad	0x3fb7b5a90c3629e0              # double 0.092615666848508749
	.quad	0x3fe2989f410c8307              # double 0.58113062577112451
	.quad	0x3fde93de115e16fc              # double 0.47777511306809095
	.quad	0x3feeb9ac0f619b9c              # double 0.96016505245357874
	.quad	0x3fde96f801764dca              # double 0.47796440260682671
	.quad	0x3fde1593d8175dcc              # double 0.47006698706306049
	.quad	0x3fd29fef50c0a30a              # double 0.2910116470907701
	.quad	0x3fe149132ee31457              # double 0.5401702800524032
	.quad	0x3fb614f18f2cd188              # double 0.086257073836185083
	.quad	0x3fe3ea8f7dc9f145              # double 0.62238287513859147
	.quad	0x3fe18e21f0ceb941              # double 0.54860016854016902
	.quad	0x3fed4ac58db5c966              # double 0.91537740400080447
	.quad	0x3fc6b548d3fa3eac              # double 0.17740736341919694
	.quad	0x3fe453f7b23102b5              # double 0.6352499466230116
	.quad	0x3fd3acc62e044e7c              # double 0.30742029661016779
	.quad	0x3fe178d3c5a39da0              # double 0.54599941827193632
	.quad	0x3fde45743d52d654              # double 0.47298913944846288
	.quad	0x3fed36a859ac5456              # double 0.91292207254685809
	.quad	0x3fe819d0e29cdd5c              # double 0.75315136204055077
	.quad	0x3fe0668a24f1277f              # double 0.51251704421268574
	.quad	0x3fee49f036f149ad              # double 0.94652567606890659
	.quad	0x3fdf7edf8245dcb0              # double 0.49211871835673104
	.quad	0x3fea366756a8bc5b              # double 0.81914107251749202
	.quad	0x3fc5c3227c2d9368              # double 0.17001753867512126
	.quad	0x3fe5ecd20d747023              # double 0.6851587546148078
	.quad	0x3fd323cbac3cfdf8              # double 0.29905978984967829
	.quad	0x3fe88b5fb734d01c              # double 0.76701341421585622
	.quad	0x3fe8206c38e92059              # double 0.75395785441743179
	.quad	0x3fe3cf19c1535b58              # double 0.61903083571346951
	.quad	0x3fd33ca9628cdc0c              # double 0.30057749389692456
	.quad	0x3fbb0462acabb2c0              # double 0.10553566661446734
	.quad	0x3fe835118ea15a53              # double 0.75647809846379699
	.quad	0x3feae29ec85403c0              # double 0.84016360403631296
	.quad	0x3fe6c45c0b2ed3dc              # double 0.71146967109836678
	.quad	0x3fd9cf6ef7814b8e              # double 0.40328573389450006
	.quad	0x3fe1339d5eb6a5fe              # double 0.53755062578892399
	.quad	0x3fb5c9db16119f98              # double 0.085111325157070872
	.quad	0x3fd3b67cfdeafb14              # double 0.30801319882077505
	.quad	0x3fe21eef3fe15f8e              # double 0.56627619244226124
	.quad	0x3f7fd04d54114a80              # double 0.0077670117035092411
	.quad	0x3facbb0644b730a0              # double 0.056114383590825101
	.quad	0x3fe5b16b8e3a83b7              # double 0.67790773180978803
	.quad	0x3fdea234e2d9af84              # double 0.47865030434945077
	.quad	0x3fb533e1744d82f8              # double 0.082822886366113013
	.quad	0x3fe0aafc5df8087a              # double 0.52087229111954447
	.quad	0x3fe9de6e4ce100a0              # double 0.80840220466054191
	.quad	0x3fd088b0938241d8              # double 0.25834288029821328
	.quad	0x3fe83752fdf2e549              # double 0.75675344085099383
	.quad	0x3fd01df49077bd2c              # double 0.2518283282106093
	.quad	0x3fe684e35d7129dc              # double 0.70372169733428391
	.quad	0x3fe31ff2c2ea9eae              # double 0.59764993734002814
	.quad	0x3fe5d60bf9091036              # double 0.68237875594832675
	.quad	0x3fd379b4d927b7b6              # double 0.30430337149197884
	.quad	0x3fef732fadd0c4eb              # double 0.98281082104054229
	.quad	0x3fec70241b298a1d              # double 0.88868909173135402
	.quad	0x3facd9f44bf60ad0              # double 0.05635035922298004
	.quad	0x3fb9b0dc7afd02c0              # double 0.10035493853230104
	.quad	0x3fec1299b74e948a              # double 0.87727056314601382
	.quad	0x3fdc4172a9997e38              # double 0.44149462282618712
	.quad	0x3fd0564842ed597c              # double 0.25526625190595786
	.quad	0x3fe687685d141ae7              # double 0.70402925662423577
	.quad	0x3fac0f34d253ae80              # double 0.054803515124004498
	.quad	0x3feb52af5a7119e2              # double 0.85384338058866782
	.quad	0x3fdb7aa2a3e4575c              # double 0.42936006550859473
	.quad	0x3fef402731addb6f              # double 0.97658118918375957
	.quad	0x3fed128975e32c24              # double 0.90851281189805321
	.quad	0x3fea7432b8c5f1bb              # double 0.82668434227485166
	.quad	0x3fef6a4c90fae8da              # double 0.98172596279553237
	.quad	0x3f89201b0014c680              # double 0.012268267574288005
	.quad	0x3fce134f4bc8c488              # double 0.23496428680804038
	.quad	0x3fda2cc13621c446              # double 0.40898161207502814
	.quad	0x3fe1b92ee671006b              # double 0.55385537155235676
	.quad	0x3febef66200c222a              # double 0.87297350177056399
	.quad	0x3febb3c77c0edc97              # double 0.86569570760811387
	.quad	0x3fba470d2c4a6f20              # double 0.1026466591960653
	.quad	0x3fec3c26fa7f02e9              # double 0.88234280514742836
	.quad	0x3fdaf12b018b0ba8              # double 0.42096972609231864
	.quad	0x3fe53c4c60ae314c              # double 0.66361063845537549
	.quad	0x3fd123fc02cabfb2              # double 0.26782131455092462
	.quad	0x3fee55dd6eb1bd40              # double 0.94798156375865261
	.quad	0x3fe14bbac4861d4f              # double 0.54049433120318635
	.quad	0x3fc56b8d233ea6d8              # double 0.16734470578130956
	.quad	0x3fe4406af17895bf              # double 0.63286349451362145
	.quad	0x3fd3b98d28a90e06              # double 0.30820015879382401
	.quad	0x3fc80e30b83f7d18              # double 0.18793305393681048
	.quad	0x3fc4aa2b2f9a2ff0              # double 0.16144313644724617
	.quad	0x3fd36032d51a37c6              # double 0.30274649439604351
	.quad	0x3fe29e81f822649c              # double 0.58184908355464726
	.quad	0x3fd5143958f215b6              # double 0.32935937582109476
	.quad	0x3fdb811a01d2558e              # double 0.42975473573582057
	.quad	0x3fe9d128b712e375              # double 0.80678210980032239
	.quad	0x3feef3806028806c              # double 0.96722430020237259
	.quad	0x3feb28250ee3c584              # double 0.84865048320914171
	.quad	0x3fd501573065b854              # double 0.32820682264617074
	.quad	0x3fec967860fc140f              # double 0.89336794798203012
	.quad	0x3fcbd27a8d7fdbd8              # double 0.21736080083039044
	.quad	0x3fe9b76d8ea673d9              # double 0.80364110814445688
	.quad	0x3fd45e2e0c18dd68              # double 0.31824828320846743
	.quad	0x3fc3b94c33eebc48              # double 0.15409233604211381
	.quad	0x3fd98aac8d791492              # double 0.39908899131507625
	.quad	0x3fdc94648cc4954c              # double 0.44655717608323608
	.quad	0x3fce83d24c9eb528              # double 0.23839787236412602
	.quad	0x3fe199a5ac0b4ff8              # double 0.55000575640087757
	.quad	0x3fe26d02df9da676              # double 0.57580703425374113
	.quad	0x3fc38ec641324e50              # double 0.15279462989257064
	.quad	0x3fe0280b64c90370              # double 0.50488824543582034
	.quad	0x3feb6e749f286930              # double 0.8572333439399582
	.quad	0x3fed48d3afcc842f              # double 0.91514000259133421
	.quad	0x3fdb07c3eebae0cc              # double 0.42234896005130618
	.quad	0x3fe6f65d03c4dc38              # double 0.71757364975099502
	.quad	0x3fee37649150dc9e              # double 0.94426182157521388
	.quad	0x3fd488962aa30082              # double 0.32083658374541113
	.quad	0x3fc72da3460aafc8              # double 0.18108025474555078
	.quad	0x3fcdf18bb075d05c              # double 0.23393388859006137
	.quad	0x3fe86d7b8e51ddf0              # double 0.76336458012423059
	.quad	0x3fef142b98011870              # double 0.97121219337783593
	.quad	0x3feb6c46f0ed20fb              # double 0.85696742111124935
	.quad	0x3fe8c9c5d5011fbd              # double 0.77463046648426082
	.quad	0x3fe9c08c9ce758c1              # double 0.80475454945806046
	.quad	0x3fc8dc2606bb7bb4              # double 0.19421840027550064
	.quad	0x3fe00a2c3fd60d06              # double 0.50124180286403042
	.quad	0x3fe938af76d4295e              # double 0.7881696053384919
	.quad	0x3fa56b1aa9f27540              # double 0.041832764859672356
	.quad	0x3feddb2811d8fabc              # double 0.9330025051675288
	.quad	0x3fc60c3584cfac08              # double 0.17224759087488928
	.quad	0x3fe9ecc2543d55f9              # double 0.81015125706716085
	.quad	0x3fe8eb918ce86d43              # double 0.77875592728688792
	.quad	0x3fe460d48165ef03              # double 0.63682008050042815
	.quad	0x3f52baa8ddc35800              # double 0.001143135937174744
	.quad	0x3fdf0f062a327856              # double 0.48529199715438176
	.quad	0x3f845fd3c4bab440              # double 0.0099484009181997068
	.quad	0x3fe203f02d20bb25              # double 0.56298073591265008
	.quad	0x3fde647a881083e8              # double 0.4748827294116027
	.quad	0x3fed4147f6ea9952              # double 0.91421888566837084
	.quad	0x3fee500ab95609c9              # double 0.9472707385869451
	.quad	0x3fe80ac85c36e58c              # double 0.75131624231942017
	.quad	0x3fea8d51c35afb56              # double 0.82975090175009814
	.quad	0x3fda6a8289179962              # double 0.41275084865482914
	.quad	0x3fe85f8548165200              # double 0.76166023330239341
	.quad	0x3fe2d78e8179017c              # double 0.58881306922562215
	.quad	0x3fe6ba5effa04fdb              # double 0.71025037695880699
	.quad	0x3fee24b906fccee5              # double 0.94198275913956009
	.quad	0x3fe9454d5110fb2e              # double 0.78970971902149301
	.quad	0x3fe0e9a646f03bef              # double 0.52852166991385541
	.quad	0x3fe5b45aa8e6ac25              # double 0.67826588619698625
	.quad	0x3feacbd6e07f02c6              # double 0.83738273474599434
	.quad	0x3fe69395f17d5d09              # double 0.70551583448369215
	.quad	0x3fec599ab76cffa0              # double 0.88593803239199431
	.quad	0x3fc6d7cd6b7f27a4              # double 0.17846076725828397
	.quad	0x3fbb341f84e4bcd0              # double 0.10626408571691859
	.quad	0x3fe1e0c589bf93d6              # double 0.55868794349646111
	.quad	0x3fe5378854a5f290              # double 0.66302887471063521
	.quad	0x3fed391caf3a49bc              # double 0.913221685639932
	.quad	0x3fd1782cf3558136              # double 0.2729599357899305
	.quad	0x3fc745f19f38d04c              # double 0.18182201647289487
	.quad	0x3fcd646789ed1188              # double 0.22962660059614515
	.quad	0x3fdd8f5bd5cbca98              # double 0.46187492254754536
	.quad	0x3fcbadf16e5f7560              # double 0.21624582185078634
	.quad	0x3fd49d94ec0fb78e              # double 0.32211802533026279
	.quad	0x3fcbb877e58b666c              # double 0.21656702717045861
	.quad	0x3fdd365e48830aaa              # double 0.45644337731588769
	.quad	0x3feac2c83e81163a              # double 0.83627712447987013
	.quad	0x3fdfb4bff91b322e              # double 0.495407098071868
	.quad	0x3fbdb5d100916aa8              # double 0.11605554832332621
	.quad	0x3fe5e247b5283c4d              # double 0.68387208349475659
	.quad	0x3fcd391755f7e66c              # double 0.22830478379892172
	.quad	0x3fedf2dc30bdd962              # double 0.93589601058810623
	.quad	0x3fe51be582e0388b              # double 0.65965533792201947
	.quad	0x3fe8e93cf9c7e18b              # double 0.77847145829496023
	.quad	0x3fe382757a3602dc              # double 0.60967515820820095
	.quad	0x3fd9bca32c3538f4              # double 0.40213851277520907
	.quad	0x3fcedfe19a094f1c              # double 0.24120731374079518
	.quad	0x3fe9273fdfd9893c              # double 0.78604119988111831
	.quad	0x3fc3ff6019193278              # double 0.15623093820103739
	.quad	0x3fd6fc1523525a06              # double 0.35913589906104482
	.quad	0x3fc9c879c2206dc8              # double 0.20143053034631309
	.quad	0x3fe27358bc1d13e9              # double 0.57658039799627858
	.quad	0x3fe5d7afa931d159              # double 0.68257887883968771
	.quad	0x3fd886d1be55469e              # double 0.38322871768205313
	.quad	0x3fe178223156c93e              # double 0.54591474186444322
	.quad	0x3fb1123d06f06ec0              # double 0.066684545702112352
	.quad	0x3feb6dd9e4b25b19              # double 0.85715956370663371
	.quad	0x3fd25642eebe9a5a              # double 0.2865149814119029
	.quad	0x3fc5d7f47a8a4c20              # double 0.17065292342576388
	.quad	0x3fe4cdfdda03b858              # double 0.65014545994723516
	.quad	0x3fe9aa6d5924c42a              # double 0.80205409441817221
	.quad	0x3fec3e0e7035ac1a              # double 0.88257524410198873
	.quad	0x3fdfa157300514e4              # double 0.49422244729460219
	.quad	0x3fd76de34e992826              # double 0.36608202624904818
	.quad	0x3f8661fc5f3d44c0              # double 0.010929080635522559
	.quad	0x3fde72958ca125da              # double 0.47574366315219907
	.quad	0x3fe54aa2177ce2d3              # double 0.66536049449413281
	.quad	0x3fee44bc501e5d41              # double 0.94589057586828329
	.quad	0x3fd27ce6ced800c6              # double 0.28887338828645814
	.quad	0x3fe4761e25359f5b              # double 0.63941867129777152
	.quad	0x3fd0ef6ea152aa02              # double 0.2646137786311159
	.quad	0x3fe323b22650f567              # double 0.59810740932122719
	.quad	0x3fe4045a9daa6134              # double 0.62553149026920218
	.quad	0x3feec93d6f239db2              # double 0.96206542689190244
	.quad	0x3feba32deda5c405              # double 0.86366936126262372
	.quad	0x3fd537551827dbaa              # double 0.33150222166971821
	.quad	0x3fde3353834a611a              # double 0.47188270398466303
	.quad	0x3fe2b3f0b95f98b3              # double 0.5844653721403773
	.quad	0x3fecc4fc97f88170              # double 0.89904622728140104
	.quad	0x3fe77ec0da386142              # double 0.73422281857623539
	.quad	0x3fd0f0e4f275032a              # double 0.2647030227417867
	.quad	0x3fea365a17cd8faa              # double 0.8191347565557312
	.quad	0x3faa815f5ed2bcf0              # double 0.051768284154030897
	.quad	0x3fdf6a5ca5e726e2              # double 0.49086681558092782
	.quad	0x3fd6ae74d91f7fd4              # double 0.35439797595426836
	.quad	0x3fe7b1f16f612f8c              # double 0.74047157052835777
	.quad	0x3fdfebc0784b7a7e              # double 0.49876415011923558
	.quad	0x3fe9ae6c96823cbd              # double 0.8025420131324591
	.quad	0x3fefe3c1a927b00d              # double 0.99655230558482943
	.quad	0x3fe383e02304196a              # double 0.60984808768334386
	.quad	0x3fe57356adb73a96              # double 0.67032941750388164
	.quad	0x3fef161dcb29ced0              # double 0.97144975357374541
	.quad	0x3fcf4f49e0a09b88              # double 0.24460719555028398
	.quad	0x3fe738e407531203              # double 0.72569467001500276
	.quad	0x3fec908cc920c72d              # double 0.89264525683231499
	.quad	0x3fb26e20fc39a470              # double 0.071992932871255411
	.quad	0x3f90471567672da0              # double 0.015896162449093532
	.quad	0x3fdcdd1fd35bc644              # double 0.45099635735013899
	.quad	0x3fe049d41d530539              # double 0.50901227691080131
	.quad	0x3fd21c863ef65334              # double 0.28299099110272441
	.quad	0x3fc0d11171cdfe5c              # double 0.13138025338047299
	.quad	0x3fc15b510a2d0a94              # double 0.13559926030037117
	.quad	0x3fedc1760841c12d              # double 0.92986585247675679
	.quad	0x3fe752d2a76e2d00              # double 0.72886021329159689
	.quad	0x3fc0f03c10b6f6c8              # double 0.1323313790907632
	.quad	0x3fe059c19045afca              # double 0.51095655611197199
	.quad	0x3fe84c63bc8d46b2              # double 0.75932490183386947
	.quad	0x3fdba7d8c2fd388c              # double 0.43211955110462763
	.quad	0x3fc82102dfa9dd7c              # double 0.18850742264815412
	.quad	0x3fe224b013fe24db              # double 0.56697849182924231
	.quad	0x3febd103c7d348ff              # double 0.86926449802766104
	.quad	0x3fa2e4c874621a40              # double 0.036901725966391741
	.quad	0x3febfa56d642ad7e              # double 0.87430898521181155
	.quad	0x3feab2f8c54db65e              # double 0.8343471387467607
	.quad	0x3fd9b1c17b1c2a4a              # double 0.40147435209715765
	.quad	0x3fefd055605fcc58              # double 0.99418133566940536
	.quad	0x3fe6f9d0729c2d51              # double 0.71799490341929062
	.quad	0x3fec4a545207c773              # double 0.88407341023979169
	.quad	0x3fe8446b5ec38e0e              # double 0.75835197933742093
	.quad	0x3fd82a05630b5a94              # double 0.37756476089763535
	.quad	0x3fe8c3cc6dddd10c              # double 0.7739011903600228
	.quad	0x3fd7074c11b53588              # double 0.35982038239748038
	.quad	0x3fd874e92dc4124c              # double 0.38213567227675038
	.quad	0x3fe879cfdb8102c7              # double 0.7648696219622132
	.quad	0x3fdcd33f42d34228              # double 0.45039350057507699
	.quad	0x3fe7a2b5287c40d1              # double 0.73861177356050167
	.quad	0x3fe5c24ee178b0a2              # double 0.67996925389663354
	.quad	0x3fd6484dcd548838              # double 0.34816308070924462
	.quad	0x3fee1ac9a04e7380              # double 0.94076997098783011
	.quad	0x3fe92ce31138cc1f              # double 0.78672936786313474
	.quad	0x3fe6defa83bed118              # double 0.71471906405944008
	.quad	0x3fe2ca887efea1f5              # double 0.58722328952450076
	.quad	0x3fd4c2498ad5638e              # double 0.32435835416759395
	.quad	0x3fbc9837bf958278              # double 0.11169765879959381
	.quad	0x3fe1f5d9b3d35b4f              # double 0.56126103517713399
	.quad	0x3fcf5a854be8b1e0              # double 0.24494997221462622
	.quad	0x3fed02e65c3b4861              # double 0.90660398496607908
	.quad	0x3fe4f63c964507f7              # double 0.65505818700353202
	.quad	0x3fe2cb920764d9e3              # double 0.58734990543490218
	.quad	0x3fd91300d2225c6c              # double 0.39178486367149534
	.quad	0x3fe22b0df9a271fc              # double 0.56775568730114356
	.quad	0x3fdb3b07cd3203bc              # double 0.42547793425188352
	.quad	0x3fea762baacbcd83              # double 0.82692511900533849
	.quad	0x3fdffcdd3127355c              # double 0.49980859565842706
	.quad	0x3fe73d739172339c              # double 0.72625139625016599
	.quad	0x3fd546c73732e570              # double 0.33244495764264226
	.quad	0x3fe0f92e51cdb39b              # double 0.53041759469271044
	.quad	0x3fe09679673de6d7              # double 0.51836843647398723
	.quad	0x3fcf3efeccad5550              # double 0.24410996431348986
	.quad	0x3fdca0112d8a266c              # double 0.44726972052794767
	.quad	0x3fd36d09fc606910              # double 0.30353021284248971
	.quad	0x3feaebc8121675ea              # double 0.8412819245601757
	.quad	0x3fefe77aa4c3d48a              # double 0.99700672321945771
	.quad	0x3fe9ad7601550f58              # double 0.80242443332870561
	.quad	0x3feed6677ea479ef              # double 0.96367239699230633
	.quad	0x3fdf4d44d2f2f16a              # double 0.48909111595619115
	.quad	0x3feb1cf9244421e1              # double 0.84728676875334596
	.quad	0x3fdc0cf2e22743de              # double 0.43829032979289007
	.quad	0x3fddfdf3c8dad10e              # double 0.46862501730653683
	.quad	0x3fefd0eb6743de9a              # double 0.99425287407844398
	.quad	0x3fee75f3b6ed17d9              # double 0.95189843871844027
	.quad	0x3fe1699fb37bfd2d              # double 0.54414353423627448
	.quad	0x3fecf71e8824a4a1              # double 0.9051659258885999
	.quad	0x3fbcb0fff9120888              # double 0.11207580405064921
	.quad	0x3fd6bfdc3701cfc4              # double 0.35546021816048445
	.quad	0x3fe0c2b8f25eaf56              # double 0.52376983011115885
	.quad	0x3fcde9ac1e953b00              # double 0.23369361394221499
	.quad	0x3feab67f812d2c16              # double 0.83477759580398714
	.quad	0x3fd530b45341dedc              # double 0.33109768038364762
	.quad	0x3fd86cf9a8769bb6              # double 0.38165131999488311
	.quad	0x3fd51fbc3cb40fb4              # double 0.33006196907103491
	.quad	0x3fd368278b121032              # double 0.3032320840941366
	.quad	0x3fbac80d36d97bd0              # double 0.10461504544353706
	.quad	0x3fd81ae78a18f936              # double 0.37664211736764075
	.quad	0x3fa5245b5ce01200              # double 0.041293006026567269
	.quad	0x3fdcacf83840e38e              # double 0.44805722707274576
	.quad	0x3fef62acdcee2c76              # double 0.98079531813108534
	.quad	0x3fe422106a2a6ef5              # double 0.62915821776866088
	.quad	0x3fc4824807192ce0              # double 0.16022587153052026
	.quad	0x3fe606e8440fb663              # double 0.68834317486989638
	.quad	0x3fd4871ae1233f5a              # double 0.32074615465261547
	.quad	0x3fdcc8066ea24208              # double 0.44970856479724874
	.quad	0x3fdbc1f857b37160              # double 0.43371399464174054
	.quad	0x3fdfadd960023f0a              # double 0.494985908278054
	.quad	0x3fe1f667d9bad4e0              # double 0.56132881665567069
	.quad	0x3fe688b86ebc3d1e              # double 0.70418950679769288
	.quad	0x3fc59b42e1242cd8              # double 0.16880069726207725
	.quad	0x3fef748d593e2e73              # double 0.98297755651715446
	.quad	0x3fe88b7f56f47ba7              # double 0.7670284937229227
	.quad	0x3fdf7ede18e7f260              # double 0.4921183818076198
	.quad	0x3fe41a63bbc4a58b              # double 0.62822138474909772
	.quad	0x3fefea02e2ca1681              # double 0.99731582922750316
	.quad	0x3fe0977b540b156c              # double 0.5184914247007959
	.quad	0x3fd3e23cd33d04d6              # double 0.31068344715829477
	.quad	0x3fee7c31d30e12a8              # double 0.95266047689127208
	.quad	0x3fc0d123e83b1ab8              # double 0.13138245429418816
	.quad	0x3fd1e01fbfafbe10              # double 0.27930444449791114
	.quad	0x3fd647c5d50936d6              # double 0.34813066295906248
	.quad	0x3fd33eff4d25cec8              # double 0.3007200482745529
	.quad	0x3fe7a4e9bdc62dc5              # double 0.73888098778973499
	.quad	0x3fe5d579b2c8c9ba              # double 0.68230900687040408
	.quad	0x3fedf815481fc625              # double 0.9365335854219593
	.quad	0x3fc82b46ee7d6d10              # double 0.18882071156517855
	.quad	0x3fe4a1bcfe49a8bd              # double 0.64474343934605083
	.quad	0x3fee43ef8667a4c7              # double 0.94579292536686743
	.quad	0x3fecb939377dd32e              # double 0.89761029089149758
	.quad	0x3fe65cd6e91a01e7              # double 0.69883294608740421
	.quad	0x3fce752ecbdf4bdc              # double 0.23795113520335931
	.quad	0x3fc5440eb1cc3608              # double 0.16613944703605932
	.quad	0x3fd2f194d7ee9062              # double 0.29599495970820133
	.quad	0x3fe71f5ca43115d4              # double 0.72257835453700148
	.quad	0x3fdcb2690323c4b0              # double 0.44838929468739774
	.quad	0x3fdd14d32a0a5c04              # double 0.45439604859842597
	.quad	0x3fe7cbaf35607084              # double 0.74361381936206827
	.quad	0x3fdd46848b62fb84              # double 0.45742906200387545
	.quad	0x3fdb85e7e5f9211e              # double 0.43004796465221939
	.quad	0x3f94e762cdc121a0              # double 0.020413917358639844
	.quad	0x3fe268d887c21308              # double 0.5752985621953437
	.quad	0x3fd7e28c8660e9f8              # double 0.37320244906337008
	.quad	0x3fc5eb69df6fd030              # double 0.17124675188063199
	.quad	0x3fb71d6f2a049710              # double 0.090292880781444262
	.quad	0x3fddc48d12722576              # double 0.4651215248237216
	.quad	0x3fece60c6356c99c              # double 0.90308207895423064
	.quad	0x3fe2cb3516ee371a              # double 0.58730558851832204
	.quad	0x3fda0204fc03a26a              # double 0.40637325869332719
	.quad	0x3fc179057a093f60              # double 0.13650577982707102
	.quad	0x3fe7772dd657b0ef              # double 0.73329822410371814
	.quad	0x3fc0529a0775c0e8              # double 0.12752080311066227
	.quad	0x3fdfacc77b8f4c18              # double 0.49492060724623022
	.quad	0x3fea92c60f6c9648              # double 0.83041670811207613
	.quad	0x3fef573e1349c099              # double 0.97939971701818528
	.quad	0x3fba75b793365388              # double 0.10335872024582049
	.quad	0x3fa4a2ccf3591090              # double 0.040304569917254729
	.quad	0x3fe4a2e31d9a12b5              # double 0.6448836877976506
	.quad	0x3fe99589e72510d3              # double 0.79950423379389191
	.quad	0x3fda4915079d5d90              # double 0.41071058028816143
	.quad	0x3fec1c164eb72992              # double 0.87842860578648385
	.quad	0x3fe44e9aced907af              # double 0.63459530258136521
	.quad	0x3fe6517906702f93              # double 0.69744540460077287
	.quad	0x3fde6f41b7bf1c2e              # double 0.47554057067867717
	.quad	0x3fea4a1996aafeac              # double 0.82154540469487846
	.quad	0x3fb7bafa8e8f1510              # double 0.092696819118902817
	.quad	0x3fe9c91ce5b85a34              # double 0.80579991214000878
	.quad	0x3fe8f6691fafa3f1              # double 0.78007942379656303
	.quad	0x3fe18cd8bf830ea1              # double 0.5484431972949616
	.quad	0x3fd3ed376e0fc77e              # double 0.31135354755598843
	.quad	0x3fec787f7e88bb5b              # double 0.8897092315072358
	.quad	0x3f93f544c65ac4c0              # double 0.019490313154794547
	.quad	0x3fdf965157b3929e              # double 0.49354966702075298
	.quad	0x3fe08acf70d5e8d5              # double 0.51694461858940122
	.quad	0x3fd0a3625c2bbed8              # double 0.25997218133032396
	.quad	0x3fdfe64fc3970920              # double 0.49843210316261555
	.quad	0x3fe5812fdd60ed87              # double 0.67201989400875639
	.quad	0x3fe03b94907ba200              # double 0.50727298945736266
	.quad	0x3febeb45e2874247              # double 0.87246984714335774
	.quad	0x3fe3933c770f8681              # double 0.61172316793472714
	.quad	0x3fcf05e63d115ed0              # double 0.24236753446415671
	.quad	0x3fe94de838d93c96              # double 0.79076014617193624
	.quad	0x3fe6f0d368325523              # double 0.71689768172169399
	.quad	0x3fe5f5f9941dde15              # double 0.68627623490368939
	.quad	0x3fd75c8e9f51d0e8              # double 0.36502423819116681
	.quad	0x3fe8960dec54b327              # double 0.76831718595858411
	.quad	0x3fec0eeb331ccc2c              # double 0.87682113631161007
	.quad	0x3fab5e0f2df5d970              # double 0.053451990471262145
	.quad	0x3fa6cf565c0ac870              # double 0.044550608382807222
	.quad	0x3fc34f450d37f148              # double 0.15085662026820956
	.quad	0x3fee9b42c1542107              # double 0.95645272979257434
	.quad	0x3fe3741b0ba49223              # double 0.60792305253977863
	.quad	0x3fed35bbf343cb8d              # double 0.91280934822712967
	.quad	0x3feb900ea30106e5              # double 0.86133510433884608
	.quad	0x3fd140cdb907a306              # double 0.26958029813117468
	.quad	0x3fd64c431ede09f0              # double 0.34840467466724956
	.quad	0x3fec773bed3190cb              # double 0.88955494238737154
	.quad	0x3fcd3f92a3ffea28              # double 0.22850258834644532
	.quad	0x3fdb22f841100c90              # double 0.42400938371447072
	.quad	0x3fe42c4f0efe2e6b              # double 0.63040879181194265
	.quad	0x3fe454c0a470aac1              # double 0.63534576527793984
	.quad	0x3fe025bc3ec809b2              # double 0.50460636388770852
	.quad	0x3fd5d6ee440185a0              # double 0.34124333039479815
	.quad	0x3fdb73422df7f544              # double 0.42890982140655276
	.quad	0x3fec4f34f0ec0049              # double 0.88466879897169648
	.quad	0x3fe2fa53b9d775a3              # double 0.59305750176615779
	.quad	0x3fc09070277ac2c4              # double 0.12940790107452049
	.quad	0x3fc95a63513275a8              # double 0.19807092156126527
	.quad	0x3fd58722123a5a66              # double 0.33637286930153321
	.quad	0x3fe4084cdd453c88              # double 0.62601321427236289
	.quad	0x3fe3799ca29f2a47              # double 0.60859519731577272
	.quad	0x3fefb82576740576              # double 0.99122880111114742
	.quad	0x3fd16731176c9aa4              # double 0.27192332541964448
	.quad	0x3fed04284c41ee77              # double 0.90675749677707429
	.quad	0x3feb88d9f091f704              # double 0.86045548426020035
	.quad	0x3fc28ed904cbeecc              # double 0.14498436674317927
	.quad	0x3fd19f5d818dab90              # double 0.27535188342761163
	.quad	0x3fdb40e56df10c7a              # double 0.42583595024570509
	.quad	0x3fee76c0974e3aca              # double 0.95199613143798811
	.quad	0x3fe5fc8a396c3f5d              # double 0.68707762923620985
	.quad	0x3fe16f966f84481a              # double 0.54487153797731769
	.quad	0x3fd3dce7a47d3e2c              # double 0.31035796225930556
	.quad	0x3fe86272b5fcf38e              # double 0.76201758904027073
	.quad	0x3fe501991f5c81cf              # double 0.65644508481278219
	.quad	0x3fd0bf1ef8247d78              # double 0.26166509850187181
	.quad	0x3feb1c94211be20a              # double 0.84723860231957926
	.quad	0x3fb23c3d359267a8              # double 0.0712316757002599
	.quad	0x3fbc0779e93e9200              # double 0.10948907799190266
	.quad	0x3fcb5af8d620f464              # double 0.21371374564651824
	.quad	0x3fe1e5489005db0b              # double 0.55923870210139748
	.quad	0x3fe91afe14c600d0              # double 0.78454498345674928
	.quad	0x3fe370454046dade              # double 0.60745489648874318
	.quad	0x3fe33d5608729bcf              # double 0.60123731279315418
	.quad	0x3fcc624d3ddb2a94              # double 0.22174993057554515
	.quad	0x3fb525a6a22066a8              # double 0.082605757314378025
	.quad	0x3fe94b071e946d78              # double 0.79040866825691491
	.quad	0x3fd8f9b8f6424db4              # double 0.39024185227136887
	.quad	0x3fe199c43b7dc558              # double 0.55002032870667517
	.quad	0x3fddf119404588d0              # double 0.46784049297833707
	.quad	0x3fb7cd33276538a0              # double 0.092974850767151285
	.quad	0x3fd02f3636f06606              # double 0.25288157811300527
	.quad	0x3fbfde1f14ce4260              # double 0.12448305376006763
	.quad	0x3fdea5bb1a73884e              # double 0.4788654096902335
	.quad	0x3faf2ab1c8c8f640              # double 0.060872607955826386
	.quad	0x3fcc6fc3930a5174              # double 0.22216076545431529
	.quad	0x3feaed6508703852              # double 0.84147884033314768
	.quad	0x3fd290f46904952c              # double 0.29009733443884289
	.quad	0x3fee76717d0b8f1c              # double 0.95195841238862355
	.quad	0x3fe4214007855d95              # double 0.62905885189950317
	.quad	0x3fa72d22c71d0de0              # double 0.045266234212728795
	.quad	0x3f92693127766c00              # double 0.017979400666813916
	.quad	0x3fe382076e81e8d7              # double 0.60962268432129008
	.quad	0x3feb100d42990d41              # double 0.8457094479312347
	.quad	0x3fd94cea01457118              # double 0.39531946300646004
	.quad	0x3fd2850102c9e506              # double 0.28936791679696261
	.quad	0x3fc92f660737d58c              # double 0.19675898888059995
	.quad	0x3fed68f4b0646998              # double 0.91906198932274474
	.quad	0x3fed1ff8ee3911eb              # double 0.91015287902751874
	.quad	0x3fc9bc3b46fce43c              # double 0.20105687109188064
	.quad	0x3febb3e73bf9ffb0              # double 0.86571084703608925
	.quad	0x3fee095c207ab867              # double 0.93864256232860732
	.quad	0x3fe9c9b69bebd4c8              # double 0.80587320760118875
	.quad	0x3fcc3368309e3da0              # double 0.22031881689006827
	.quad	0x3fe716e07fb77fd9              # double 0.72154259628950534
	.quad	0x3fbb25c72fe5de60              # double 0.10604519767172738
	.quad	0x3f9f06bdd62ceac0              # double 0.030299154469711764
	.quad	0x3fe70113fdabe2d9              # double 0.71888160271836477
	.quad	0x3fd6806b34773adc              # double 0.35158805965049367
	.quad	0x3fcd690122c4500c              # double 0.22976698110198901
	.quad	0x3fea404efb7e341b              # double 0.82035016174052389
	.quad	0x3fe329115faad1b3              # double 0.59876316723835143
	.quad	0x3fe7ae77d8dcdd4f              # double 0.74004738193517905
	.quad	0x3fe24f7a8f5780f9              # double 0.57220199581573106
	.quad	0x3fcca2095730a658              # double 0.22369496114088139
	.quad	0x3fe6a2fa110bcc25              # double 0.70739463166535599
	.quad	0x3fc5718cb8ae40ac              # double 0.16752776162730265
	.quad	0x3fd9bfdccd689c98              # double 0.40233535823285527
	.quad	0x3fe99a9ad8a582b2              # double 0.80012266458296311
	.quad	0x3fea780f773ac7ca              # double 0.82715581213982969
	.quad	0x3fe5ee0abc9c537a              # double 0.68530785406129202
	.quad	0x3fd6cf4afe31db1e              # double 0.35640215705591227
	.quad	0x3fef94de68c74335              # double 0.98692245926404231
	.quad	0x3fd943183b4338fc              # double 0.39472013270723472
	.quad	0x3fec453edbd0a0fa              # double 0.88345282490357069
	.quad	0x3fe26140d0802111              # double 0.57437172625307842
	.quad	0x3fc9a589752fb490              # double 0.20036428663243955
	.quad	0x3feed8879cdc899b              # double 0.96393185269362235
	.quad	0x3fe138c57f8da38c              # double 0.53818011200665827
	.quad	0x3fd2c06dbf7c83c2              # double 0.29299491596071559
	.quad	0x3fd8a3026d1bb34e              # double 0.38494930892084234
	.quad	0x3fef018b05be1fcd              # double 0.96893836137405175
	.quad	0x3fbb0db08f761ae0              # double 0.10567763807749087
	.quad	0x3fd24d2e0a82d00c              # double 0.28596068407500819
	.quad	0x3fdd3c8e81a161fa              # double 0.45682108554095147
	.quad	0x3fe43deaad25d81b              # double 0.63255819147048287
	.quad	0x3fb66ae65cf28c58              # double 0.087568662349938875
	.quad	0x3fe68fda607b89a1              # double 0.70506018490077704
	.quad	0x3fd4ae2498c14e9c              # double 0.32312884252062601
	.quad	0x3fd04fa9032c8dd6              # double 0.25486207303967257
	.quad	0x3fdd3cd30924a650              # double 0.45683742421042428
	.quad	0x3fe4cf41eff7502e              # double 0.65029999607441424
	.quad	0x3fe9e61f210008a5              # double 0.80934101529443991
	.quad	0x3fe08a3c3ad19641              # double 0.51687442291285646
	.quad	0x3fe11143deae1241              # double 0.53335755817585817
	.quad	0x3feeda6aff7ef480              # double 0.96416234876200235
	.quad	0x3fe8b2bf23da1b02              # double 0.77181965830172339
	.quad	0x3fc0144d78da917c              # double 0.12561958695472331
	.quad	0x3fac62106b56eec0              # double 0.055435669997192516
	.quad	0x3fc8e007cfb58f20              # double 0.19433686868716737
	.quad	0x3feab14c549ad26d              # double 0.83414284252519411
	.quad	0x3fe60ba729037c7e              # double 0.68892248163673719
	.quad	0x3fde03cd44af42d0              # double 0.46898204524499665
	.quad	0x3fc770e08336d844              # double 0.1831322327322501
	.quad	0x3fd59d4048de8ac8              # double 0.33772284618514137
	.quad	0x3fdd614ba802cec4              # double 0.45906344802208943
	.quad	0x3fee7a3e1ffa373e              # double 0.9524222015913677
	.quad	0x3feb73cfaafd0eae              # double 0.85788710972015791
	.quad	0x3feec593096d64df              # double 0.96161796418450851
	.quad	0x3fe523618cd69a2e              # double 0.66056897647360358
	.quad	0x3fad16f7a7f9e310              # double 0.05681585240831144
	.quad	0x3fe32f04f47057ae              # double 0.59948966733894848
	.quad	0x3fb9a2dae252d870              # double 0.10014122033575901
	.quad	0x3fe9582f84fd4a4f              # double 0.7920148465585245
	.quad	0x3fd540822c136872              # double 0.33206228546408234
	.quad	0x3fee051d1ff53ae2              # double 0.93812423936637068
	.quad	0x3fe8dd76f5922b89              # double 0.77703426325875669
	.quad	0x3fbcb32276b17ab0              # double 0.11210837743554225
	.quad	0x3fee12c942ddd15a              # double 0.93979323444231544
	.quad	0x3fe5c1e34c73fb6d              # double 0.67991795475232453
	.quad	0x3fe8199ca5cbcb65              # double 0.75312645322842953
	.quad	0x3fda20ff2d876440              # double 0.40826396413973853
	.quad	0x3fd74aa7e54c7f08              # double 0.36393163101637116
	.quad	0x3fb8d45165ae4490              # double 0.096989714931867476
	.quad	0x3fbe146252bdf910              # double 0.11749853630133011
	.quad	0x3fc214e5f24e9984              # double 0.14126276332281062
	.quad	0x3fcd46aac35fe694              # double 0.22871908702636701
	.quad	0x3fc0ef183a6cdb60              # double 0.13229658940118849
	.quad	0x3fb09e86514c5fa0              # double 0.064918894623018364
	.quad	0x3fd8aa310fdbeca4              # double 0.38538767384279482
	.quad	0x3fed58a042fd0fac              # double 0.91706860622115504
	.quad	0x3fea6eae81f8b62b              # double 0.82601094613136661
	.quad	0x3fed01d1d06f0707              # double 0.90647211751658652
	.quad	0x3fec1b5024da3bfc              # double 0.87833411405324524
	.quad	0x3feb9cf3c4d8520c              # double 0.86290920683183136
	.quad	0x3fe7f513faeb4c47              # double 0.74866675384181114
	.quad	0x3fe1e48e0b2a6755              # double 0.55914976292408858
	.quad	0x3fc61d659b9b0b4c              # double 0.17277212236339279
	.quad	0x3fd30d34dc03cdb0              # double 0.29768105970216663
	.quad	0x3fa47e2fba291b30              # double 0.040025226092032518
	.quad	0x3fe9cb4112da16e2              # double 0.80606130296720502
	.quad	0x3fe4c69714902d37              # double 0.64924196258781464
	.quad	0x3fe70717c6091f8f              # double 0.71961582831225879
	.quad	0x3fe6fadd712a0277              # double 0.71812316992152503
	.quad	0x3fbb04c68e056bb0              # double 0.10554161994279698
	.quad	0x3fc6df3115bf9614              # double 0.17868627130444337
	.quad	0x3fdd2cdb87457066              # double 0.45586288652498863
	.quad	0x3fea2e5d02e4750b              # double 0.81815958561824809
	.quad	0x3fd939ece26d8282              # double 0.39416048156821415
	.quad	0x3fd1c61f6266c6a8              # double 0.27771744355696137
	.quad	0x3fe7d5fa37ed8c24              # double 0.74487029002591898
	.quad	0x3fd1d2400b52ab50              # double 0.27845765214685958
	.quad	0x3fa700faaceb03f0              # double 0.0449293457109049
	.quad	0x3fc00b17abdcd85c              # double 0.12533851520282979
	.quad	0x3fdcc0b7a8a380cc              # double 0.44926253765698898
	.quad	0x3f77ea548106f280              # double 0.0058387089670161041
	.quad	0x3fc934b9b7b68f74              # double 0.19692155332915784
	.quad	0x3fd3dc355f70e424              # double 0.31031545944603267
	.quad	0x3fe1589bd4dbf67e              # double 0.54206649374073357
	.quad	0x3fe717205585cb01              # double 0.72157303527487227
	.quad	0x3feb23aa0112e0c4              # double 0.84810352525439514
	.quad	0x3fee7cc6d04a80d9              # double 0.95273152047959819
	.quad	0x3fedf4b7c07b3312              # double 0.93612277597421412
	.quad	0x3fd050445d814d86              # double 0.25489911204677929
	.quad	0x3fd1e119d2a9efd8              # double 0.27936406681669501
	.quad	0x3fe92a9a5c7f99a2              # double 0.78645055833913013
	.quad	0x3fe45a0244e9c915              # double 0.63598741016019977
	.quad	0x3fe0feb175987f8a              # double 0.53109047859105485
	.quad	0x3fd1d881b2f49078              # double 0.27883951641184224
	.quad	0x3fc5e02e9d0ef628              # double 0.17090399426335634
	.quad	0x3fae68e037b9a580              # double 0.059393889238729791
	.quad	0x3fb8ced24f3636b8              # double 0.096905845965205795
	.quad	0x3febbaad12b2e008              # double 0.86653760578246963
	.quad	0x3febb8a9b5c0edea              # double 0.86629186152225413
	.quad	0x3fe298e079c26275              # double 0.58116172581783465
	.quad	0x3feefed70940f637              # double 0.96860839660047914
	.quad	0x3fd9c5edc49a51fc              # double 0.4027056140851355
	.quad	0x3fa2da71cc1997c0              # double 0.036822849430606208
	.quad	0x3fbde2aff630dd18              # double 0.11674022446174026
	.quad	0x3fe2f4f4e434a553              # double 0.59240192958274418
	.quad	0x3fa1d36f048afe00              # double 0.034816235832746401
	.quad	0x3fe4bde105d1416a              # double 0.64817858825885577
	.quad	0x3fef244c02593747              # double 0.97318077524844504
	.quad	0x3fc25e9728a7f030              # double 0.14351167187840153
	.quad	0x3fb212f67051a6a8              # double 0.070601847097032988
	.quad	0x3fe1d0bf67314121              # double 0.55673189310804017
	.quad	0x3fc3dc685c1b43cc              # double 0.15516380784404615
	.quad	0x3fe493f90636e75a              # double 0.64306307996524059
	.quad	0x3fe6edce2b067071              # double 0.71652897265768278
	.quad	0x3fe229a49ff571a2              # double 0.56758338205286329
	.quad	0x3feb4db69283d15e              # double 0.85323647133058578
	.quad	0x3fe0adf57a43c36a              # double 0.52123521690201113
	.quad	0x3fefc121082004f3              # double 0.9923253210728532
	.quad	0x3fcd08b4131fa848              # double 0.22682810720226798
	.quad	0x3fce05deba30be00              # double 0.23455413905456624
	.quad	0x3fd0e2687cb4cd48              # double 0.26381885698647922
	.quad	0x3fb85c001d400d60              # double 0.095153815404093844
	.quad	0x3fb2a941974a07f8              # double 0.072895144878231011
	.quad	0x3fe68dbf1ac1bb84              # double 0.70480303979808001
	.quad	0x3f89eb8d30eb0080              # double 0.012656310134275595
	.quad	0x3fe9f25e5a8c8950              # double 0.81083600697847125
	.quad	0x3fd4e52d49f83216              # double 0.32648784850678803
	.quad	0x3fde06eb8b77d970              # double 0.46917236919343619
	.quad	0x3fb5d0736650f398              # double 0.085211956481499818
	.quad	0x3fe4b8b533f60991              # double 0.64754734181069484
	.quad	0x3fc117dab7422b98              # double 0.1335404772583757
	.quad	0x3fda854598aaa4da              # double 0.41438426884503843
	.quad	0x3fd83c98091eccf8              # double 0.37869835749297875
	.quad	0x3fe6ad6f812f6e93              # double 0.70867133361339751
	.quad	0x3fe046cb736a1a6c              # double 0.50864193479430986
	.quad	0x3fb60d7868ed4c98              # double 0.086143041245394847
	.quad	0x3f9b4f92ea92eae0              # double 0.026670737807516498
	.quad	0x3fd4343f862d48ae              # double 0.31568897345745028
	.quad	0x3fe251798d170e56              # double 0.5724456554093631
	.quad	0x3fba04ce1304ad68              # double 0.10163581814111
	.quad	0x3fd6e01cb69de9cc              # double 0.35742872079540855
	.quad	0x3fd1a3fcd0cba154              # double 0.27563400640658142
	.quad	0x3fddd539cb75d074              # double 0.46613926762734725
	.quad	0x3fbc8daa8c3aa868              # double 0.11153665469706342
	.quad	0x3fdd110b6f3453c4              # double 0.45416532382779118
	.quad	0x3fea96c6a72b55a5              # double 0.83090527200936448
	.quad	0x3f7dbf9e0ca5dd00              # double 0.0072628186993519694
	.quad	0x3fe6be7627286ecf              # double 0.71074969909701646
	.quad	0x3fc4f197880c4984              # double 0.16362280028313247
	.quad	0x3fce3510d31f6fb0              # double 0.23599443730097169
	.quad	0x3fc4fdf3789c9474              # double 0.16399997128715749
	.quad	0x3fed835b691d8283              # double 0.92228479891134929
	.quad	0x3fe9628e4be4d3df              # double 0.79328074286479111
	.quad	0x3f86ff1645dbf5c0              # double 0.011228727347311174
	.quad	0x3fb972e032cc4d38              # double 0.099409115220898125
	.quad	0x3fef7bcc356e09be              # double 0.98386202273859857
	.quad	0x3feb68c598b6f502              # double 0.85653953387341653
	.quad	0x3fe4c6d98b6ef848              # double 0.64927365525341774
	.quad	0x3fdbfd709f94b0ee              # double 0.43734374603333392
	.quad	0x3fed83b256f9a19e              # double 0.92232624995544987
	.quad	0x3fef95779cd79ce5              # double 0.98699551232575954
	.quad	0x3fedb7f10a765686              # double 0.92870380443010059
	.quad	0x3fbedf4612f78c10              # double 0.12059438670216616
	.quad	0x3fed4f453abfa0a5              # double 0.91592656587910837
	.quad	0x3fd2665db8f9097c              # double 0.28749793113470168
	.quad	0x3fe69e02522d0a50              # double 0.70678821611392983
	.quad	0x3fea5bf47177ea8a              # double 0.82372495805550838
	.quad	0x3fda08449879b25c              # double 0.40675463571714032
	.quad	0x3feb603c67c79932              # double 0.8554975535342122
	.quad	0x3fd618e345aedeb4              # double 0.34526902966488682
	.quad	0x3fd8edb5b14e83ba              # double 0.38950865092379738
	.quad	0x3fdb2750c75bb87c              # double 0.42427463024694823
	.quad	0x3f963e32cdce7dc0              # double 0.021721643268049595
	.quad	0x3feb536972184e37              # double 0.85393211635750432
	.quad	0x3fdd8539fda11780              # double 0.46125650185091871
	.quad	0x3fe00601c2811655              # double 0.5007332610045504
	.quad	0x3fe4aa649a167347              # double 0.64579992385152074
	.quad	0x3fef82924bd8f5b1              # double 0.98468890012707366
	.quad	0x3fe35771df507ef5              # double 0.60442441574193018
	.quad	0x3fcbbff2dae6bdf8              # double 0.21679530800382429
	.quad	0x3fe3a36010fbeb30              # double 0.61369326893995968
	.quad	0x3fcf6801ed9a43b4              # double 0.24536155797662007
	.quad	0x3fd400d4c8ac6c66              # double 0.31255073163055724
	.quad	0x3fd3f0f78fe5dec8              # double 0.31158246090442931
	.quad	0x3fea49435d6356c0              # double 0.82144325485088387
	.quad	0x3fdd5ae7234316e4              # double 0.45867327159463245
	.quad	0x3fc0a0dd9ca338bc              # double 0.12990923069304994
	.quad	0x3feaee2fb24237a3              # double 0.8415754777540666
	.quad	0x3fd972e9123863ce              # double 0.39763857631038213
	.quad	0x3fea5425105b478f              # double 0.82277157969132186
	.quad	0x3fe1b89cca72bc35              # double 0.55378570118580817
	.quad	0x3fd52ebbe21a4a30              # double 0.33097741203633557
	.quad	0x3fe45a9fc328f7de              # double 0.63606250874704151
	.quad	0x3fe8e30367264492              # double 0.77771158357986025
	.quad	0x3fc30697654bc420              # double 0.14863865324107994
	.quad	0x3fe3fab0908825d7              # double 0.62435177067635095
	.quad	0x3f60a8fc33dd6700              # double 0.0020337034065222026
	.quad	0x3feb722f6bb2c25b              # double 0.85768862757511088
	.quad	0x3fc0e14909e6bc98              # double 0.13187516196692139
	.quad	0x3fc01b14f6d325c8              # double 0.12582647373191791
	.quad	0x3fb784e51857ed28              # double 0.091871565287807599
	.quad	0x3feb1e7d2270766b              # double 0.84747177816798336
	.quad	0x3fd228a4f1516f8c              # double 0.2837307316419746
	.quad	0x3fbfa0883e4ca570              # double 0.12354327698689871
	.quad	0x3fdaf25b8d533b5e              # double 0.42104233552247716
	.quad	0x3fe592b74269d193              # double 0.67415965052946303
	.quad	0x3fd7fe7d18699f9a              # double 0.37490775474588534
	.quad	0x3fef06d84c6457a2              # double 0.96958556099228965
	.quad	0x3fce60182f200778              # double 0.23730757046729045
	.quad	0x3fb94636c4e9cfe0              # double 0.098727629732649813
	.quad	0x3fb1d97208af03b0              # double 0.069724204177886717
	.quad	0x3fed325f04c4d766              # double 0.91239882403781958
	.quad	0x3f91070677ec03e0              # double 0.016628361768201816
	.quad	0x3fe838c0fb1fba56              # double 0.75692795798915813
	.quad	0x3fec6ae0bf1ebfc2              # double 0.88804662063738982
	.quad	0x3face56af5a5dc80              # double 0.056437818991008193
	.quad	0x3fe711124a0689d1              # double 0.72083391626466142
	.quad	0x3fe625f79144032e              # double 0.6921346509189783
	.quad	0x3fecb3281929dfd3              # double 0.89686970629463258
	.quad	0x3fdeec6cd2655b46              # double 0.48318024202801657
	.quad	0x3fa6175d115ed9c0              # double 0.043146999712394329
	.quad	0x3fddf12307ecee14              # double 0.46784282468772287
	.quad	0x3fe637ba3d0c4add              # double 0.69430267260971912
	.quad	0x3fe3d88aea48352c              # double 0.62018342741217714
	.quad	0x3fcacef1ba1a6c58              # double 0.20944043719359473
	.quad	0x3fea4d58f4cbdb33              # double 0.8219418317010877
	.quad	0x3fc932f459edc8a4              # double 0.19686750784928109
	.quad	0x3fdd3e68ede76ac6              # double 0.45693419678506719
	.quad	0x3fe2bdafa0fea893              # double 0.58565503544129383
	.quad	0x3fc7b428bd38f8dc              # double 0.18518552054769699
	.quad	0x3fc42325422dac38              # double 0.15732255679481155
	.quad	0x3fd6507d9634614c              # double 0.34866275471133146
	.quad	0x3fde522c38961096              # double 0.47376542592997717
	.quad	0x3fecd005c7d6d0b4              # double 0.90039338141516234
	.quad	0x3fc754958eda6880              # double 0.18226880526782807
	.quad	0x3fcc08e0700f57b4              # double 0.21902089568783156
	.quad	0x3f97943ae31e15e0              # double 0.02302639018264141
	.quad	0x3fe613775bc77d43              # double 0.68987625051151047
	.quad	0x3fef15acf4f829d1              # double 0.97139594884475333
	.quad	0x3feae9c71ff29123              # double 0.84103733291388882
	.quad	0x3fda0a6712fa6938              # double 0.40688492635094375
	.quad	0x3faa9b46f9084ce0              # double 0.05196592130610056
	.quad	0x3fd870d92cbb8846              # double 0.38188771599209692
	.quad	0x3fd1272f1005bcd0              # double 0.26801659168900205
	.quad	0x3fef3e43b1183b88              # double 0.97635063732910598
	.quad	0x3fe4b0d1fb99c271              # double 0.64658450260874478
	.quad	0x3fe72702d1bb0dfd              # double 0.72351208651565424
	.quad	0x3fd062029b2e8210              # double 0.25598206667385259
	.quad	0x3fdf6f272c40b64a              # double 0.49115924188194937
	.quad	0x3fd44323d22ddbfa              # double 0.31659789586359433
	.quad	0x3fe88b6ceef03576              # double 0.76701971690788073
	.quad	0x3fef44272542be67              # double 0.9770694473026652
	.quad	0x3fe9c6e923e32085              # double 0.80553109177800819
	.quad	0x3fe6d55714b39469              # double 0.71354249995478114
	.quad	0x3fc97db3e086e670              # double 0.19914864028196488
	.quad	0x3fd9ed9315a30860              # double 0.40512539971326156
	.quad	0x3fe282f4edab1744              # double 0.57848593158335193
	.quad	0x3fe9e49a20129bc7              # double 0.80915552391240275
	.quad	0x3fd074e3040e40d8              # double 0.25713420291959954
	.quad	0x3fdda292f6d4fd6a              # double 0.46304773430525492
	.quad	0x3fe9f216f921bc02              # double 0.81080197008657273
	.quad	0x3fc398f33173dad8              # double 0.15310516276050268
	.quad	0x3fc1c6b443ecbc90              # double 0.13887646977079671
	.quad	0x3fd4abc13861c150              # double 0.32298307901421186
	.quad	0x3fe28fcb6b932394              # double 0.58005305300422316
	.quad	0x3fe3d78a5a861535              # double 0.62006108932897652
	.quad	0x3fcd3db33b08a940              # double 0.22844543821822505
	.quad	0x3faf9d0702fa1310              # double 0.061744898904214307
	.quad	0x3fe9e20a15f67944              # double 0.80884269990546231
	.quad	0x3fefda554d757a57              # double 0.9954020035618879
	.quad	0x3fd4b3b2f4bdb862              # double 0.32346795940873652
	.quad	0x3fd79d1c9e39a346              # double 0.36896434261011668
	.quad	0x3fe0725f19731212              # double 0.51396136255840674
	.quad	0x3fcd86fbf84a4df0              # double 0.23068189261958549
	.quad	0x3fd92cb9fdfe7832              # double 0.39335489086249986
	.quad	0x3fe92ca6ca323129              # double 0.78670062533777696
	.quad	0x3f9a02bdce989ec0              # double 0.025401082739476832
	.quad	0x3fb561c6b1b33d90              # double 0.083523195632770219
	.quad	0x3fc8c37c0f0e730c              # double 0.19346571669748192
	.quad	0x3fd34683a0b2fb22              # double 0.30117884343410328
	.quad	0x3fcc14abe0593708              # double 0.21938084082142262
	.quad	0x3fe1263dcdb1ab11              # double 0.53591814207661248
	.quad	0x3fcddd6ed1088dbc              # double 0.23332009512624363
	.quad	0x3fe1c52ad555f2d5              # double 0.55531827609191942
	.quad	0x3fdd60117c24d930              # double 0.45898854373389764
	.quad	0x3fe0a1cc23938da5              # double 0.51975066135894521
	.quad	0x3fe22564b38e8bb8              # double 0.56706461972895905
	.quad	0x3fad5a5e6b61bea0              # double 0.05733008442700549
	.quad	0x3fa64238465be680              # double 0.043473967159980198
	.quad	0x3fe4d27cdfcb7908              # double 0.65069431028294478
	.quad	0x3fca8cfab12f04a0              # double 0.20742734576746091
	.quad	0x3fc236fdb3e751bc              # double 0.14230319294314409
	.quad	0x3fdb01b64800be7a              # double 0.42197949439557869
	.quad	0x3fe332db9c274342              # double 0.59995823382096369
	.quad	0x3fe9f1b7ebb0a0aa              # double 0.81075664551919613
	.quad	0x3fea0131360f21e7              # double 0.81264553602619294
	.quad	0x3fc7c2abe585eae4              # double 0.18562840182479257
	.quad	0x3f97ff1f29723260              # double 0.023434149651210823
	.quad	0x3fe18b88f03d3cbf              # double 0.54828307077141136
	.quad	0x3fd98e967223d4b0              # double 0.39932786127549047
	.quad	0x3fe54865c90ae539              # double 0.66508759752392799
	.quad	0x3feb19d7578c37fa              # double 0.84690444087186667
	.quad	0x3fe113d2e5a9b7e9              # double 0.53366989952132571
	.quad	0x3fde098255382aee              # double 0.46933039018828893
	.quad	0x3fe13bbcbe1e7354              # double 0.53854214794737709
	.quad	0x3fb1a0385c2453a8              # double 0.068851015563565654
	.quad	0x3fd7c75eb6ddb178              # double 0.37154357774740943
	.quad	0x3fd67832a33c6e62              # double 0.3510862917043821
	.quad	0x3fd57fc3fbfb2f1a              # double 0.33592319114244307
	.quad	0x3fd6215bcecb0126              # double 0.34578604883792463
	.quad	0x3fe4fe6c98c69a5e              # double 0.65605764235517561
	.quad	0x3fbc03164551f228              # double 0.10942210380921635
	.quad	0x3fe2841a1ea07623              # double 0.57862573606297862
	.quad	0x3fcbda569d5b6a5c              # double 0.21760065730525724
	.quad	0x3fd759faba21c3d4              # double 0.36486690689986045
	.quad	0x3fe217d52888294d              # double 0.56540925899870731
	.quad	0x3fe84a6bc027af00              # double 0.75908458261753253
	.quad	0x3fef1a13bcd542de              # double 0.97193323975997337
	.quad	0x3fc770b582472528              # double 0.1831271062967883
	.quad	0x3fad44b24e856130              # double 0.05716473778255915
	.quad	0x3f9b9a4f9ecb44a0              # double 0.026955837313668796
	.quad	0x3fd152ff87f3105e              # double 0.27069080616297991
	.quad	0x3fe57836619adcb1              # double 0.67092436850989234
	.quad	0x3feba09e8dfe7b98              # double 0.86335685475556811
	.quad	0x3fe0cfb6cd9425f6              # double 0.5253557219704692
	.quad	0x3fb8387844e650f8              # double 0.094611660786828256
	.quad	0x3fd6f4d0bd0da130              # double 0.35869234525900406
	.quad	0x3fd925677384d056              # double 0.39290796548016738
	.quad	0x3fe74798819e97ff              # double 0.72748971287069242
	.quad	0x3fd5810dbd256208              # double 0.33600181075374325
	.quad	0x3fed767d287c7d33              # double 0.92071397693135848
	.quad	0x3feb5a12857caf2b              # double 0.85474515983284982
	.quad	0x3fe4a85ca1ee6e7e              # double 0.645551983139242
	.quad	0x3fe6d99792e3708b              # double 0.7140615338244215
	.quad	0x3fd722bf9c3772ec              # double 0.36149587874915201
	.quad	0x3fc84206dfee74bc              # double 0.1895149796882033
	.quad	0x3fc0726c99ef5284              # double 0.12849195019102322
	.quad	0x3fec331f6ba18779              # double 0.8812405683677148
	.quad	0x3febb43cb217d89a              # double 0.86575159820383196
	.quad	0x3fbd5da53159bb60              # double 0.1147101636395127
	.quad	0x3fe04d280a9dc310              # double 0.50941850732314897
	.quad	0x3fee77a8976c2e8c              # double 0.95210675787662202
	.quad	0x3fe5f33c3f52de32              # double 0.68594181411658028
	.quad	0x3fe90650556b97bd              # double 0.78202072795533406
	.quad	0x3febe93ed1a35422              # double 0.87222233719751707
	.quad	0x3fed3fe5e09904e0              # double 0.91405004374260201
	.quad	0x3fe5ead3622e3506              # double 0.68491524864080655
	.quad	0x3fd471262bb77daa              # double 0.31940607327666248
	.quad	0x3fda389eec764a90              # double 0.40970585910796675
	.quad	0x3fce23ab2cd346a8              # double 0.23546352089629363
	.quad	0x3fae7eaf560bc0c0              # double 0.059560279134417637
	.quad	0x3fcbc375e312fd3c              # double 0.21690248096090581
	.quad	0x3fe5ce8c45871fca              # double 0.68146337108282151
	.quad	0x3fe0f994d9fdcaac              # double 0.530466485752489
	.quad	0x3fe75084c1ae6a37              # double 0.72857892826443205
	.quad	0x3fece854ed04b2b2              # double 0.90336080830237209
	.quad	0x3fd4fd539234fd9c              # double 0.32796181943919023
	.quad	0x3fef5989ce048fc2              # double 0.97967996824126424
	.quad	0x3f826c2212c5d2c0              # double 0.0089953100184428924
	.quad	0x3feef3de9c977279              # double 0.96726923546118748
	.quad	0x3fe483feff51d6e0              # double 0.64111280314565633
	.quad	0x3fec2fc6869fc54a              # double 0.88083196920175877
	.quad	0x3fd6246f043e5478              # double 0.34597373403932563
	.quad	0x3fb7c47189e74bb0              # double 0.092841240089269971
	.quad	0x3fe6d5e585fa3906              # double 0.71361042182414347
	.quad	0x3fbb83598895da08              # double 0.10747298798182936
	.quad	0x3fdab48f3465393c              # double 0.41727047077883461
	.quad	0x3fd402c8a1cf7002              # double 0.31266990472590817
	.quad	0x3fe3e2babf30d0e6              # double 0.6214269384568325
	.quad	0x3fe3dc31b88c598a              # double 0.62062917751863833
	.quad	0x3fe72373ba99eaab              # double 0.7230776447825823
	.quad	0x3fe647a947bea40e              # double 0.69624771130213658
	.quad	0x3fe585db59baaf55              # double 0.67258994603387612
	.quad	0x3feb7160c221d33e              # double 0.85759008327895692
	.quad	0x3fe705d51f796a86              # double 0.71946197650261534
	.quad	0x3fe0a6acca217a71              # double 0.52034606436411768
	.quad	0x3fef44e6e62105b9              # double 0.97716088244504029
	.quad	0x3fee42f351891199              # double 0.9456726639260068
	.quad	0x3f6e526603205700              # double 0.0037014000345249043
	.quad	0x3fa607e605aef1c0              # double 0.043029010957500002
	.quad	0x3fcfdec2ce6fe39c              # double 0.24898562507567312
	.quad	0x3fd5802f81726960              # double 0.33594882623005695
	.quad	0x3fc5814bffc1a5a4              # double 0.16800832737071147
	.quad	0x3fdefa67fa407a1e              # double 0.48403357924135715
	.quad	0x3fd086e9d0f87270              # double 0.25823445708537118
	.quad	0x3fe21e02173f5874              # double 0.56616310635105416
	.quad	0x3fe0a14037f2c067              # double 0.51968394210235835
	.quad	0x3fe42c59065a837e              # double 0.63041354409152439
	.quad	0x3fdad0d7cb24325e              # double 0.41899676168467248
	.quad	0x3fe09a3c1c2f047c              # double 0.51882749085065383
	.quad	0x3fe11a3c3d3b4965              # double 0.53445255240721379
	.quad	0x3fdec249ce5607ac              # double 0.48060841703419999
	.quad	0x3fbcee3f9c0238e8              # double 0.11301038321309742
	.quad	0x3fe5aff047d95b6a              # double 0.67772687943475529
	.quad	0x3fe31dcc34e7b925              # double 0.59738741238632953
	.quad	0x3fb8afc91fb38b58              # double 0.096432276000581907
	.quad	0x3feb692eb325d057              # double 0.85658965101039086
	.quad	0x3fde8a29a6bfc38a              # double 0.47718278202142328
	.quad	0x3fd7b8c667b8909c              # double 0.37065277222633042
	.quad	0x3fd2ab52c7dac93a              # double 0.29170674817136766
	.quad	0x3fbe66df9c424450              # double 0.11875722470200967
	.quad	0x3fb572134ed9ebf0              # double 0.083771902800364506
	.quad	0x3fe689dbc9ee7720              # double 0.70432843627688513
	.quad	0x3fd5c604d51c08aa              # double 0.34021111308551133
	.quad	0x3fe413c159c90600              # double 0.6274115327470895
	.quad	0x3fe0b1e2090e1a26              # double 0.52171422737666684
	.quad	0x3fe0e0f20cf0d270              # double 0.52745916869623777
	.quad	0x3fee7f05e8df1498              # double 0.95300574763008949
	.quad	0x3fe2040e19e47e83              # double 0.56299500519885759
	.quad	0x3fe0c89f99416784              # double 0.52449016506874147
	.quad	0x3fd58e7b9987748a              # double 0.33682146065786667
	.quad	0x3fde13a09147eda6              # double 0.46994795024485325
	.quad	0x3fd613e0be011cb8              # double 0.34496325068580402
	.quad	0x3fa1a64917571de0              # double 0.034471782778890292
	.quad	0x3fcc858c31afdde8              # double 0.22282555032846507
	.quad	0x3f975570cc44a340              # double 0.022786867587601067
	.quad	0x3fcb257fe2ec95f0              # double 0.21208189564019575
	.quad	0x3fd756116967d166              # double 0.36462817471990261
	.quad	0x3fa9b171635f3d60              # double 0.050181907062887943
	.quad	0x3fc690b0994c9738              # double 0.17629058347045556
	.quad	0x3fe15f6662a2c999              # double 0.54289550080129623
	.quad	0x3fe33cc58b5bcf9f              # double 0.60116841524585485
	.quad	0x3f9f65b36558d3e0              # double 0.030661395130852642
	.quad	0x3fedb821c620276a              # double 0.92872704216391111
	.quad	0x3fd418cb1c9870dc              # double 0.31401326935316631
	.quad	0x3fe8c2f31299c202              # double 0.77379754670079159
	.quad	0x3fd4944742459a94              # double 0.32155019256462336
	.quad	0x3fdeacbf4cd2f0d0              # double 0.47929365637152177
	.quad	0x3fdbb47f82e4baa6              # double 0.4328917291885922
	.quad	0x3fa5ee07450ab440              # double 0.042831637552219082
	.quad	0x3fe46a484463de53              # double 0.63797391278689941
	.quad	0x3fb79d9bd4083a90              # double 0.092248667970333153
	.quad	0x3fefecb170b17e0d              # double 0.99764320383468574
	.quad	0x3fb2e213c84d1318              # double 0.07376216545260339
	.quad	0x3fd85844c70b8a4e              # double 0.38038749158855445
	.quad	0x3fe7e53934613dfd              # double 0.74673137884559504
	.quad	0x3fe854eed93ce3f7              # double 0.76036779813068633
	.quad	0x3fed5d39376ada83              # double 0.91762982200346277
	.quad	0x3fd2004e4a90b25e              # double 0.28126866609344414
	.quad	0x3f9dc200d07ec9e0              # double 0.029060375905553104
	.quad	0x3fc8096fe84a4ac0              # double 0.18778799860282014
	.quad	0x3fcecc2afe73e808              # double 0.24060571121646057
	.quad	0x3fd01d292025b360              # double 0.25177982463246984
	.quad	0x3fcf301605558fac              # double 0.2436549688383115
	.quad	0x3feba407c249aaaf              # double 0.8637732309992624
	.quad	0x3feb1e1c8e986522              # double 0.8474257264198608
	.quad	0x3fdb12e964d7038a              # double 0.42302927825590386
	.quad	0x3fa4cf517c11d0e0              # double 0.040644213099683801
	.quad	0x3fe33ccb484e79e3              # double 0.6011711513745549
	.quad	0x3fe7b30602bd88fc              # double 0.74060345206478884
	.quad	0x3fee199820ab5225              # double 0.94062429791171509
	.quad	0x3fec76dffe42fce1              # double 0.88951110516054765
	.quad	0x3fe8465830ee0916              # double 0.75858697468382519
	.quad	0x3fd1c77bb4aa968c              # double 0.27780048983763872
	.quad	0x3fcb70d73c7ecf24              # double 0.21438112691759514
	.quad	0x3fa7ecff66b1f610              # double 0.046730023656874065
	.quad	0x3fe5fd80d978ad5e              # double 0.68719522929078969
	.quad	0x3fe78efb7c80c9c7              # double 0.73620390240676492
	.quad	0x3fe0c1c085519cbf              # double 0.52365137137248741
	.quad	0x3fed9532f4d3d29a              # double 0.92446277444703928
	.quad	0x3fc1036f27e997cc              # double 0.13291730355120845
	.quad	0x3feee7ecff8a32b8              # double 0.96581125173687265
	.quad	0x3fbfa350931643f8              # double 0.12358573523512451
	.quad	0x3fd46d1d5cb83d0c              # double 0.31915983252197644
	.quad	0x3fdf9d7db2447e4e              # double 0.49398748787823343
	.quad	0x3fcb667a2a06d2ac              # double 0.21406485607226011
	.quad	0x3fd67acfecb5c6e0              # double 0.35124586216180198
	.quad	0x3feb7ec76ff5bf29              # double 0.8592259585111367
	.quad	0x3fea2d6e715f16b7              # double 0.81804582732066577
	.quad	0x3f9e413ae90ae140              # double 0.02954570815447366
	.quad	0x3feb42bab0204cfe              # double 0.85189566039699094
	.quad	0x3fe3409b6ef94b29              # double 0.60163661646433753
	.quad	0x3fb2ae68b26551b8              # double 0.072973769715935499
	.quad	0x3fc92ba48641ffa8              # double 0.19664436870152469
	.quad	0x3fd8adb88d649af0              # double 0.38560308273228738
	.quad	0x3fdd9c52cbbb2026              # double 0.46266622443772787
	.quad	0x3fa41001686582e0              # double 0.039184612268177821
	.quad	0x3fe6b1be8ea8d635              # double 0.70919731009661879
	.quad	0x3fe6d54a196c3c07              # double 0.71353630986584526
	.quad	0x3fd7fcf3916874d8              # double 0.37481393051150524
	.quad	0x3fe3077bed2b46a0              # double 0.59466358491973281
	.quad	0x3fd5e72ed1e12596              # double 0.34223528381388613
	.quad	0x3fe6596ab3ef9441              # double 0.69841513770791874
	.quad	0x3fc09842e7c8debc              # double 0.12964664762124822
	.quad	0x3fe582085569d14b              # double 0.67212311441702732
	.quad	0x3fc4296a4c74784c              # double 0.15751389248993275
	.quad	0x3fcecb1da6f0bec4              # double 0.24057360316645859
	.quad	0x3fea7ef4df2085d9              # double 0.82799762324810466
	.quad	0x3fd4617ed9167cce              # double 0.3184506530760246
	.quad	0x3fc27d5be8f4e3a0              # double 0.14445065378984356
	.quad	0x3fb57e4d6a9b35d0              # double 0.083958471800733791
	.quad	0x3fde242ecc28e402              # double 0.47095842301820323
	.quad	0x3fdb4d0b99a578b2              # double 0.42657747272995572
	.quad	0x3fc3fa28566607cc              # double 0.15607170313529506
	.quad	0x3fd74bedb58dce0e              # double 0.3640093110072663
	.quad	0x3fe60d60224a96da              # double 0.6891327543023309
	.quad	0x3fd20122214c49f0              # double 0.28131917239912152
	.quad	0x3fdbbe836ad20f80              # double 0.43350301200575103
	.quad	0x3fd7e87dbe64ea30              # double 0.37356513589080276
	.quad	0x3fe91af8e3cb2dfb              # double 0.78454250803900949
	.quad	0x3fe77efcba2cb183              # double 0.73425136911605227
	.quad	0x3fe425ddb23e25b3              # double 0.6296223145774803
	.quad	0x3fd4f20695325dc4              # double 0.32727207727426966
	.quad	0x3fc9a2c52b27d588              # double 0.20027985198218468
	.quad	0x3fd73d3fd9b98762              # double 0.36311336767368207
	.quad	0x3fdc991107576e24              # double 0.4468424388594221
	.quad	0x3fe76256f55ba446              # double 0.73075435563544811
	.quad	0x3fe22a81353d694d              # double 0.56768856428542736
	.quad	0x3fc3177d4aa8edac              # double 0.14915434022428309
	.quad	0x3fd04429ed6c2e40              # double 0.25416038690375231
	.quad	0x3fe6a601889d5033              # double 0.70776440317650324
	.quad	0x3fee43ffe2b2fee4              # double 0.9458007266730104
	.quad	0x3fd08807e1ef002a              # double 0.25830266059711227
	.quad	0x3fe8e11066f0f47e              # double 0.77747364145001518
	.quad	0x3fdd281bbcd3dfb6              # double 0.45557301941107242
	.quad	0x3fd0dad349782c3e              # double 0.26335603880642455
	.quad	0x3fdfaa396129947e              # double 0.49476465691106586
	.quad	0x3fe4b64190dcbae9              # double 0.64724806111720767
	.quad	0x3fe2d55632bce962              # double 0.5885420790648761
	.quad	0x3feeb89378a497f3              # double 0.96003125727724947
	.quad	0x3fe1b6013335a3a6              # double 0.55346736909733774
	.quad	0x3fc86790cdf85e1c              # double 0.19066057259691227
	.quad	0x3fe5e0eeeca8f69b              # double 0.68370767805727739
	.quad	0x3fc36d238475d2ec              # double 0.15176815002236965
	.quad	0x3feba1b6233e68a5              # double 0.86349017032195674
	.quad	0x3fd99e4f2d5544e2              # double 0.40028743197497196
	.quad	0x3fd710436249ba90              # double 0.36036762808263578
	.quad	0x3fc6143ea58ba93c              # double 0.17249281962660656
	.quad	0x3fd2be390c14750a              # double 0.29286028079680249
	.quad	0x3fe3e84b20a2a0a2              # double 0.6221061360747806
	.quad	0x3fdcf75d810ae086              # double 0.45259797670178903
	.quad	0x3fe5e039b837a96e              # double 0.68362127284971819
	.quad	0x3fb2caa8073aca38              # double 0.073404790654230889
	.quad	0x3fe6d8410cecbe06              # double 0.71389820598955178
	.quad	0x3fddecd28e2d09f0              # double 0.46757949718826719
	.quad	0x3fe903b8e11cf2aa              # double 0.78170436828039169
	.quad	0x3f908dac16089500              # double 0.016165436596698335
	.quad	0x3fe3b351e510f7de              # double 0.61563963641651376
	.quad	0x3fe0dc1d08d485ef              # double 0.52686931347505872
	.quad	0x3fe9c5eb09a9dd5e              # double 0.80540992629441255
	.quad	0x3f73ec59f061f900              # double 0.0048640740625371937
	.quad	0x3febe4f7744e6442              # double 0.87170002666528767
	.quad	0x3fea10757c5ad491              # double 0.81450914657638596
	.quad	0x3fe15604cdacdb7e              # double 0.54175033732359146
	.quad	0x3fe6780f3cadfcbd              # double 0.70215570308200592
	.quad	0x3fe5ab27e83a5f6f              # double 0.67714305264506247
	.quad	0x3fd129d872250ec4              # double 0.26817904612492449
	.quad	0x3fd9d11e285586fa              # double 0.40338853777767236
	.quad	0x3fcbd9dedbcec1a4              # double 0.21758638127131491
	.quad	0x3fe0d323fe775ea7              # double 0.52577399921843415
	.quad	0x3fe18a8e2bd73607              # double 0.5481634956610727
	.quad	0x3fe8123909d4c381              # double 0.75222446365488349
	.quad	0x3fef3019297ea9ab              # double 0.9746213732189991
	.quad	0x3fcc08728120979c              # double 0.21900779061359976
	.quad	0x3fd2f56e3fed027c              # double 0.29622989886050966
	.quad	0x3feb0313f79fdc50              # double 0.84412573207999664
	.quad	0x3fd2c851924d2cf6              # double 0.29347647940876642
	.quad	0x3fe0ae3ca3421844              # double 0.52126914869655439
	.quad	0x3fe1241bc9f8af96              # double 0.53565778205437442
	.quad	0x3f94b3a189adafa0              # double 0.020216487911440262
	.quad	0x3fe238d068f845e3              # double 0.56943531515042556
	.quad	0x3fca6f8c38f85380              # double 0.20652916700114687
	.quad	0x3fdf1a8aa0791930              # double 0.48599496527858133
	.quad	0x3fd01a13e0db831c              # double 0.25159165343034018
	.quad	0x3fe206818a640ba9              # double 0.56329419164136596
	.quad	0x3fe86ae588f7405b              # double 0.76304890395295943
	.quad	0x3fed96da7448ce72              # double 0.92466471397206207
	.quad	0x3fe6c6c4a5dc0d9a              # double 0.71176369089555469
	.quad	0x3fd1741cfabd9fe0              # double 0.27271198736570845
	.quad	0x3fc2c333c52a6ee8              # double 0.14658209922060128
	.quad	0x3fe2695a897fbb52              # double 0.57536055426849431
	.quad	0x3fae4266f8fb95d0              # double 0.059100358861353564
	.quad	0x3fd39ade454d8f48              # double 0.30632740753047871
	.quad	0x3fde4654012ceb90              # double 0.47304248919288572
	.quad	0x3fe1164ed7b19834              # double 0.5339731419342173
	.quad	0x3fee4905caa2168d              # double 0.94641389443195723
	.quad	0x3fed5d2c09b7e863              # double 0.91762353799937235
	.quad	0x3fe8c3575fdfcde6              # double 0.77384537434994338
	.quad	0x3fb831a00263ae28              # double 0.094507217963546553
	.quad	0x3fee3ce3a525e94c              # double 0.94493276839720286
	.quad	0x3fd34f810c7270aa              # double 0.30172754493265563
	.quad	0x3fdba69dd543cd7e              # double 0.43204446627279214
	.quad	0x3fc37020f1fc202c              # double 0.15185939613024979
	.quad	0x3fd0a36a9659b4a8              # double 0.25997414286286835
	.quad	0x3fe7dc585d11aa22              # double 0.7456476037744475
	.quad	0x3fd8c8a89909c97c              # double 0.38724722809924805
	.quad	0x3fd9da9a542f8e14              # double 0.40396745892778196
	.quad	0x3fda66536bbd0424              # double 0.41249547501871775
	.quad	0x3fe8ffe1a0e03cd7              # double 0.78123551770286326
	.quad	0x3fd80a5bf3f5cc78              # double 0.37563227485879436
	.quad	0x3fb70ab58a86a8f8              # double 0.090007158584430758
	.quad	0x3fc51ac8539535a4              # double 0.16487983781045756
	.quad	0x3fef4fd827393481              # double 0.97849662457305452
	.quad	0x3feed193ea137047              # double 0.96308322637515508
	.quad	0x3fe2aa2e94ba415e              # double 0.58327416466094539
	.quad	0x3fe1bc7debdfaee0              # double 0.55425926274389425
	.quad	0x3fd93bc065e37c90              # double 0.39427194547710886
	.quad	0x3fd15c5c350f1326              # double 0.2712622182992156
	.quad	0x3fec86214a32d6eb              # double 0.89137329570686796
	.quad	0x3fe723b55b99c6fd              # double 0.72310893908272045
	.quad	0x3fe89abc24177bd0              # double 0.76888854073683355
	.quad	0x3fe57fab10558cfa              # double 0.67183449926633831
	.quad	0x3fd001d798417468              # double 0.25011243694991103
	.quad	0x3fa6d358ed334300              # double 0.044581202464206271
	.quad	0x3fd5fcb06c28f96c              # double 0.34354792177682358
	.quad	0x3feb3798d462b367              # double 0.85053674203446128
	.quad	0x3feef24de031a476              # double 0.96707814967989125
	.quad	0x3fd0f7c6211b6ef8              # double 0.26512292130585946
	.quad	0x3fe9ae33e98c77fe              # double 0.80251498808843258
	.quad	0x3f8aeb156ac567c0              # double 0.013143698998351883
	.quad	0x3fc9d4d5c39f1dc4              # double 0.20180770923455615
	.quad	0x3fe9f8bef119e50d              # double 0.81161448564594851
	.quad	0x3fc2577772673bb0              # double 0.14329426847549831
	.quad	0x3fe4ff6d96aa482c              # double 0.65618018557348057
	.quad	0x3fd53619fa4bd3cc              # double 0.33142709200847942
	.quad	0x3fe7f2a4d96795aa              # double 0.74836962186662004
	.quad	0x3fc06a794f5cb890              # double 0.12824932456118576
	.quad	0x3fb5839669ef8528              # double 0.084039116728963692
	.quad	0x3febfa4a72070829              # double 0.87430307646741767
	.quad	0x3fe0f7b02db337fd              # double 0.53023537565036316
	.quad	0x3fe119c5a4fe5c3f              # double 0.53439600205718552
	.quad	0x3febab35f4491060              # double 0.86464975082391148
	.quad	0x3fe68982319f51cc              # double 0.70428571407188079
	.quad	0x3fe02a0fd882dbfe              # double 0.50513450896585232
	.quad	0x3fe3f3234eff02a5              # double 0.6234299223798031
	.quad	0x3fe2bcbfce412270              # double 0.58554067882603356
	.quad	0x3fe652ef5a61ad78              # double 0.69762389805457214
	.quad	0x3fe8d24a9e31cf9d              # double 0.77567034623506326
	.quad	0x3fd58a84212eac0e              # double 0.33657935371837844
	.quad	0x3fa64a67bdfc17e0              # double 0.043536416951653001
	.quad	0x3fe8363b6f632fba              # double 0.75662013774262182
	.quad	0x3fc2aba1034a615c              # double 0.14586270008727353
	.quad	0x3fcb081a2b49b2c8              # double 0.21118476022402022
	.quad	0x3fdf12cf98448266              # double 0.485523127268641
	.quad	0x3feee31a934acb14              # double 0.9652226330566429
	.quad	0x3fef28c31205b72e              # double 0.97372582931504836
	.quad	0x3fec60f953ea31ff              # double 0.88683763875593502
	.quad	0x3fe2264e1427abe9              # double 0.56717590271489116
	.quad	0x3fe57bbf40dec00f              # double 0.67135584516472757
	.quad	0x3fe6f0ee17de5e0a              # double 0.71691040670242612
	.quad	0x3fe3cbccb99cbc8c              # double 0.61862789394753426
	.quad	0x3fe56529da94da2d              # double 0.66859905902567152
	.quad	0x3fcd63238fa73308              # double 0.22958797945320719
	.quad	0x3fe6bb70b6b71cda              # double 0.71038089453295616
	.quad	0x3fa566f56004b8d0              # double 0.041801135989190663
	.quad	0x3fe315cc1edfbdd4              # double 0.5964108088500617
	.quad	0x3fe68768906ba589              # double 0.70402935225608687
	.quad	0x3f9a64249f37d240              # double 0.025772640436075855
	.quad	0x3fd97d3121a15100              # double 0.39826610836213661
	.quad	0x3fdd595b71175c9c              # double 0.45857893032138874
	.quad	0x3fefbb3290fa1efe              # double 0.9916012603361819
	.quad	0x3fef692d9d56f171              # double 0.9815891335525021
	.quad	0x3fdbd26edb35dff4              # double 0.43471881301184045
	.quad	0x3fef07dda0ed5fed              # double 0.96971017294981509
	.quad	0x3fd4cce4870ddf08              # double 0.32500565709004592
	.quad	0x3fa3f1777be23070              # double 0.038951619980338914
	.quad	0x3febec88cae454a3              # double 0.87262382151915963
	.quad	0x3fea8dc0058ae891              # double 0.82980347712079283
	.quad	0x3feb5c3f4426c501              # double 0.85501063643292252
	.quad	0x3fd2ea3f80739934              # double 0.29554736656281766
	.quad	0x3fd08abf1373b3ba              # double 0.25846840762715895
	.quad	0x3fe060341abbf0a5              # double 0.51174359532844405
	.quad	0x3fc9bf7b0392cbf8              # double 0.20115602182849535
	.quad	0x3fe3219b74535b2f              # double 0.59785244674535487
	.quad	0x3fb2b455111020a0              # double 0.073064152398844673
	.quad	0x3fc9e9310883f0cc              # double 0.20242894092360186
	.quad	0x3feec136f635de2f              # double 0.96108577812169027
	.quad	0x3fe47926ec266be1              # double 0.63978906748831943
	.quad	0x3fd512ae784ea29c              # double 0.32926522969004579
	.quad	0x3fe5977e6cef6572              # double 0.67474290157694683
	.quad	0x3fe1ddceab3c63dd              # double 0.5583260864688061
	.quad	0x3fe683254fa8af97              # double 0.70350900228867175
	.quad	0x3fbab8833a7bc6c8              # double 0.10437793901271697
	.quad	0x3feb276f092cfee6              # double 0.84856368820325367
	.quad	0x3fe7cfc3f91fdfd9              # double 0.74411200196390859
	.quad	0x3fe9cab856ac68ab              # double 0.80599610260403176
	.quad	0x3fd879ccf4674ade              # double 0.38243411891487067
	.quad	0x3fd166906e78360a              # double 0.27188502109569923
	.quad	0x3fe91faf0439e5d4              # double 0.78511763406202783
	.quad	0x3fe1e4d98c070bb5              # double 0.55918576573491541
	.quad	0x3fbe9942f564bdd8              # double 0.1195260857682493
	.quad	0x3faf0903c8b43da0              # double 0.06061565232277677
	.quad	0x3fefeffcc9deb330              # double 0.99804534366339759
	.quad	0x3fec258c57961383              # double 0.87958352190672462
	.quad	0x3fb9faebc911ca40              # double 0.10148500117228654
	.quad	0x3fe3f06e68c1eb26              # double 0.623099522213441
	.quad	0x3fda7a91bf8aeb28              # double 0.41373103814446432
	.quad	0x3fe1bb7cd60c4e62              # double 0.55413667494071839
	.quad	0x3fec02b734f9a4f9              # double 0.87533150049890118
	.quad	0x3fe953b29a608550              # double 0.79146700050129404
	.quad	0x3fddc963670018de              # double 0.46541676577215962
	.quad	0x3fe0f68e90c54a88              # double 0.53009727740784829
	.quad	0x3fdfae96b70fc14e              # double 0.4950310504637131
	.quad	0x3fca325fd78442e0              # double 0.20466230414651587
	.quad	0x3fd0379058dc89fa              # double 0.25339134862784329
	.quad	0x3fec38e88736ac10              # double 0.88194681557559029
	.quad	0x3fd10b6e17c23a74              # double 0.26632263488946895
	.quad	0x3fdb5deeeaa86804              # double 0.42760823169521722
	.quad	0x3fdad5e375a9defc              # double 0.4193047188814345
	.quad	0x3fdd909b8b5135aa              # double 0.46195114712903751
	.quad	0x3fe7097eacb0dce2              # double 0.71990903595624567
	.quad	0x3fe4dd32ed097130              # double 0.65200182243601112
	.quad	0x3fcd2b7836ad6880              # double 0.22788908643525829
	.quad	0x3fd01eded6ae9ca8              # double 0.25188418355032605
	.quad	0x3fd596b1427b6806              # double 0.33732253544224056
	.quad	0x3fdb27565e172c42              # double 0.4242759627201772
	.quad	0x3fe9d6137039e0be              # double 0.80738231581837971
	.quad	0x3fed95310f5bf2d2              # double 0.9244618701919427
	.quad	0x3fec6242e5fe06ac              # double 0.88699479027146344
	.quad	0x3fcb583b8e3da5bc              # double 0.21363014645912226
	.quad	0x3fefbfeb87e60dbc              # double 0.99217773955063348
	.quad	0x3fe09cea0551ceef              # double 0.51915455855347925
	.quad	0x3f6d28266ae9f500              # double 0.0035591841072447616
	.quad	0x3fb8d7083092a1a8              # double 0.097031127794827143
	.quad	0x3fc9220322b9a8a0              # double 0.19635047145431361
	.quad	0x3fefdb1f64f5aee4              # double 0.99549836844149952
	.quad	0x3fe911f14573a672              # double 0.78344024243160804
	.quad	0x3fe7f7864545ce82              # double 0.7489653923971249
	.quad	0x3f7e2f8a0c612000              # double 0.0073695557130761813
	.quad	0x3fc31689270fa744              # double 0.149125236580682
	.quad	0x3fd5ee802d7e30e0              # double 0.34268192713422074
	.quad	0x3fbbe2baf86c4380              # double 0.10892838063251808
	.quad	0x3fe0b0bba29e6450              # double 0.52157384644955052
	.quad	0x3fe7b6b321486916              # double 0.74105221272046395
	.quad	0x3fe139f3d81d45ed              # double 0.53832428178628577
	.quad	0x3fe066907af2b93b              # double 0.51252006543453577
	.quad	0x3fe56fee9c203ef7              # double 0.66991358273841584
	.quad	0x3fe26c89adc24f4c              # double 0.57574924409207417
	.quad	0x3fd35ebd9d9ede20              # double 0.30265751259455165
	.quad	0x3fc6360c4f6792b0              # double 0.17352441670586449
	.quad	0x3fd4afc2c2808852              # double 0.32322758669227369
	.quad	0x3fea6f11b21f4547              # double 0.82605824269754968
	.quad	0x3fe18b23fa661629              # double 0.54823492914210192
	.quad	0x3fe9e2217b6be8de              # double 0.80885385614172001
	.quad	0x3fc851cd1e16abbc              # double 0.18999637574355954
	.quad	0x3fe3017de9dcc547              # double 0.5939321105599128
	.quad	0x3fee4179262b8723              # double 0.94549233870586524
	.quad	0x3fe9dc1b81b8644a              # double 0.80811858497612232
	.quad	0x3fd61b4d0bed3826              # double 0.34541631855688804
	.quad	0x3fb28daa20270728              # double 0.072474129533500631
	.quad	0x3fec2ae88e37fd4b              # double 0.880237844248691
	.quad	0x3fd436efdeab80e6              # double 0.31585308785544297
	.quad	0x3fc119ba33b1b280              # double 0.13359763645293654
	.quad	0x3fe7f8775253c753              # double 0.74908033446829803
	.quad	0x3fed38b8fe43d870              # double 0.91317414914261796
	.quad	0x3fa17a978fb8b8d0              # double 0.034138428014885869
	.quad	0x3fcea16fcb2eee7c              # double 0.23930165692387451
	.quad	0x3fe42cb1563b59d3              # double 0.63045565454631924
	.quad	0x3fea90cd7a6a75b2              # double 0.83017610463473646
	.quad	0x3fd964ab64aefed2              # double 0.39676937897091336
	.quad	0x3fea19db62ff7d19              # double 0.81565636954829579
	.quad	0x3fe06a341f60177b              # double 0.51296430709838547
	.quad	0x3fe5ebdee3478e51              # double 0.68504280462770784
	.quad	0x3feb2f8b2ec9c446              # double 0.84955367220221301
	.quad	0x3fbcbe6b945cd918              # double 0.11228058216224601
	.quad	0x3fa80cd51e0308f0              # double 0.046972904122883352
	.quad	0x3fc89174b6f001b4              # double 0.19193896229263674
	.quad	0x3fe8335b96c5562b              # double 0.75626925895148156
	.quad	0x3fd2215fc20b9470              # double 0.28328699063997131
	.quad	0x3fa16aa9d3a76e60              # double 0.034016902052567799
	.quad	0x3fe6cdd4f0220223              # double 0.71262595082231817
	.quad	0x3fbba96a0694bc68              # double 0.10805380497616712
	.quad	0x3fe12386453b06d4              # double 0.53558648606869008
	.quad	0x3fd8da8c42f79bae              # double 0.38833910503165725
	.quad	0x3fec09651a698c7d              # double 0.87614684256222086
	.quad	0x3fe66adac6a78f6e              # double 0.70054377364838927
	.quad	0x3fd2b381573ea3aa              # double 0.29220613021839859
	.quad	0x3fecf544ebfb0b8b              # double 0.90494009103746131
	.quad	0x3fc17ac42b984a04              # double 0.13655902985244961
	.quad	0x3fbd3bb19b281d88              # double 0.11419210470204721
	.quad	0x3fc6a738240aa234              # double 0.1769781280502386
	.quad	0x3fed613d45f6c161              # double 0.91812003769704742
	.quad	0x3fdf0b934537a20c              # double 0.48508149871352724
	.quad	0x3fea5ed560d5884c              # double 0.82407635605728435
	.quad	0x3fe21325025f2f55              # double 0.56483698333020504
	.quad	0x3fea2a0331b0fd13              # double 0.81762847619384826
	.quad	0x3faac5bce3ffc3e0              # double 0.05228987010185171
	.quad	0x3fe9da29a09d91a7              # double 0.80788117761817524
	.quad	0x3feddbc02ae31c0b              # double 0.93307503105541068
	.quad	0x3fe3a5136f6e6a6c              # double 0.61390086902549745
	.quad	0x3fe00f94a1930283              # double 0.50190192754242025
	.quad	0x3fde2805cdcd961c              # double 0.47119279001194214
	.quad	0x3fabd2b0ce8d0940              # double 0.054341817105994838
	.quad	0x3fe59fd0f570cd5e              # double 0.67575881898521195
	.quad	0x3fc41f7dad99bf2c              # double 0.15721102692213529
	.quad	0x3fee762be372a879              # double 0.95192522452749906
	.quad	0x3fe768fac9dc8b46              # double 0.73156489778589484
	.quad	0x3f8e1754bd7f1300              # double 0.014692937882395452
	.quad	0x3fbf535c44d68e28              # double 0.12236572914712751
	.quad	0x3fe92896afc3ea87              # double 0.78620466546210899
	.quad	0x3fef6c2f167fc34a              # double 0.9819560470042259
	.quad	0x3fe5fcce9ec13f9f              # double 0.68711024290859146
	.quad	0x3fd9d5adf439a22c              # double 0.40366696214781217
	.quad	0x3fda23f516bd0b8c              # double 0.40844466419746861
	.quad	0x3fe3f62f0cb12ea9              # double 0.623801731862348
	.quad	0x3feb9045e2197693              # double 0.86136144790698876
	.quad	0x3fedcb20b27d778a              # double 0.93104586469029127
	.quad	0x3f98766ba6daf460              # double 0.023889238413847713
	.quad	0x3fe272fa6c740d2c              # double 0.57653542692461235
	.quad	0x3fe1ce4b831a103b              # double 0.55643249135801598
	.quad	0x3fe3d159c19aadb9              # double 0.61930549443552885
	.quad	0x3fc6abf7191bf7cc              # double 0.17712296224629964
	.quad	0x3fdec3eea6dda41c              # double 0.48070875449644901
	.quad	0x3faa1139c51f0d90              # double 0.050912671387347008
	.quad	0x3fea517ce3134fb7              # double 0.82244724608107489
	.quad	0x3fecedfb09beb33c              # double 0.90405036834054142
	.quad	0x3fb2628f429beca0              # double 0.071816400300962702
	.quad	0x3fafea16b2527ed0              # double 0.062332829730846862
	.quad	0x3fdcb49489ed2562              # double 0.44852174252863197
	.quad	0x3fdf21bd85703e16              # double 0.48643434554193854
	.quad	0x3fbc9375038fd8b0              # double 0.11162501656494572
	.quad	0x3fe49c3494af4313              # double 0.6440680412289076
	.quad	0x3feb86c3ba2c2199              # double 0.8602007518939444
	.quad	0x3fecc4f585a138ff              # double 0.89904285525861372
	.quad	0x3fe6e528f4e5595b              # double 0.71547363120297847
	.quad	0x3fb26ac252437768              # double 0.071941514095184567
	.quad	0x3fbe1ba02daecb20              # double 0.11760903468420425
	.quad	0x3fb55cab8b9de0e8              # double 0.083445283495055755
	.quad	0x3fc920dea8451294              # double 0.19631560531901882
	.quad	0x3fee7d910b957ea1              # double 0.95282795202725279
	.quad	0x3fdd036842275a8a              # double 0.4533329626114343
	.quad	0x3fee01421746092c              # double 0.93765358491535755
	.quad	0x3fd79cf24d6b778e              # double 0.36895425377394353
	.quad	0x3feec412550deb85              # double 0.96143452274496665
	.quad	0x3fc91a2aa732f284              # double 0.19611104167951876
	.quad	0x3fe5d95c0e66003f              # double 0.68278315365024145
	.quad	0x3fc1543b0795713c              # double 0.13538301344204651
	.quad	0x3fe22dbcdfb2f242              # double 0.5680832261201163
	.quad	0x3fe5185d0a9cad5f              # double 0.65922405312214127
	.quad	0x3fe3cf10c80cdbf9              # double 0.61902655670462459
	.quad	0x3fe0c5e643ca36ae              # double 0.52415765037740925
	.quad	0x3fe9df2f8f583794              # double 0.80849435803405578
	.quad	0x3fe7faf959439355              # double 0.74938647684448745
	.quad	0x3fe1a0b5a3024e8c              # double 0.55086786115357844
	.quad	0x3fe02c81bf97dd6b              # double 0.50543296261359438
	.quad	0x3fc1a2815272f228              # double 0.13777176404791303
	.quad	0x3fed059b42ce4581              # double 0.90693438575742402
	.quad	0x3fdba03f451c08ee              # double 0.43165570973373135
	.quad	0x3fe0bb83fe19f6b0              # double 0.52289008740600273
	.quad	0x3feabeb641b713ae              # double 0.83578026614178724
	.quad	0x3fdcb12ffc419308              # double 0.44831466326131464
	.quad	0x3fe84583e5939d42              # double 0.75848574484999909
	.quad	0x3fc22b7266394f8c              # double 0.1419508933200827
	.quad	0x3fb7b4d76d527550              # double 0.09260317248341221
	.quad	0x3fce863d12fedd4c              # double 0.23847163608091149
	.quad	0x3fdded34aafba6a0              # double 0.46760288903770153
	.quad	0x3fc5e6d08aaec598              # double 0.17110640308014236
	.quad	0x3feb2a62f557ff8e              # double 0.84892414015483708
	.quad	0x3fc076d71543cb88              # double 0.12862671411820892
	.quad	0x3fe4beadda2193b8              # double 0.64827625850431669
	.quad	0x3fe418d18d2d70e6              # double 0.62802960942965735
	.quad	0x3fdf3c7e4d8339cc              # double 0.48806722230520161
	.quad	0x3fef64162bc7a1a0              # double 0.9809676032137311
	.quad	0x3fe7066e12c303ad              # double 0.71953490890893124
	.quad	0x3fa0968f6d9b1850              # double 0.032398683671588047
	.quad	0x3fecda1b75887768              # double 0.90162442165067791
	.quad	0x3fdfa7ccade1b08c              # double 0.49461667042374624
	.quad	0x3fd3444ff19d650a              # double 0.30104445071408803
	.quad	0x3fb5a9bc93636478              # double 0.084621225341281803
	.quad	0x3feaf739dc98dc55              # double 0.84267895779965818
	.quad	0x3fe4006f1689cc96              # double 0.62505297090537471
	.quad	0x3fde8f1dfb093d76              # double 0.4774851752781254
	.quad	0x3fe21748374ed507              # double 0.56534205248195313
	.quad	0x3fe51dc75e5deff3              # double 0.65988510542911027
	.quad	0x3fc7e01a1d9b5570              # double 0.18652655072825608
	.quad	0x3fd771333094f06a              # double 0.36628417724910511
	.quad	0x3feab1a82a28b9d7              # double 0.83418663248249458
	.quad	0x3feb9de623f95fe2              # double 0.86302477861590554
	.quad	0x3fb12a0647caa8b8              # double 0.067047493483786691
	.quad	0x3fe881147b5559ea              # double 0.76575683678202933
	.quad	0x3fc83a90b81e024c              # double 0.18928727140520818
	.quad	0x3fd290d42208c590              # double 0.29008963893564843
	.quad	0x3fed0ce85d563137              # double 0.90782564382383313
	.quad	0x3fa5cd4888f9bf40              # double 0.042581812592173751
	.quad	0x3fdebf16d84f5024              # double 0.48041316150670554
	.quad	0x3fd8f5d33818c98e              # double 0.39000397184568036
	.quad	0x3fc6320fe7fe44d0              # double 0.17340277507586288
	.quad	0x3fec8f03ce807666              # double 0.89245786983856301
	.quad	0x3fea719cb8eedb67              # double 0.82636867637380085
	.quad	0x3feb0ddec6cc2cbd              # double 0.84544314220092753
	.quad	0x3fb60434d65067b8              # double 0.086001684496664121
	.quad	0x3fee7fa90dca6312              # double 0.95308354085418245
	.quad	0x3f7106e0f8999880              # double 0.0041569507535311745
	.quad	0x3fe5514f4556276f              # double 0.66617549459736647
	.quad	0x3fda42a6005c5a0a              # double 0.41031789813260444
	.quad	0x3fd65d2525ce129a              # double 0.3494351262273
	.quad	0x3fca6c55aa1e78b8              # double 0.2064311104449581
	.quad	0x3faa355381065320              # double 0.051188096523367088
	.quad	0x3f8454ef9deb3340              # double 0.0099276275699594629
	.quad	0x3fc0e69e74f1f184              # double 0.13203793249330087
	.quad	0x3fc6866c043b28e8              # double 0.17597723204227766
	.quad	0x3feaf27fb2971510              # double 0.84210190659419659
	.quad	0x3fde970544986338              # double 0.47796756457096334
	.quad	0x3fbf34e0ebaa5458              # double 0.12190061334179469
	.quad	0x3feb9e3c902bd7bf              # double 0.86306598814439173
	.quad	0x3fe2cdc7cac09956              # double 0.5876196823126445
	.quad	0x3fce6312c7a7a324              # double 0.2373984789731135
	.quad	0x3f9801fe5df41b20              # double 0.023445105061024596
	.quad	0x3fc7b127c6d09878              # double 0.18509385307078552
	.quad	0x3fdca0bc650cad1e              # double 0.44731054180256702
	.quad	0x3fb9da224ad4e2b8              # double 0.10098470999663334
	.quad	0x3fed9c875ebbc734              # double 0.92535751822126721
	.quad	0x3fcc0a1bea3a3bf0              # double 0.21905850350273637
	.quad	0x3fea423a73e7153a              # double 0.82058451306571745
	.quad	0x3fc5327f103ac12c              # double 0.1656035260434775
	.quad	0x3fe68ab940a55212              # double 0.70443403841142271
	.quad	0x3f819b39144ed540              # double 0.0085968455622188466
	.quad	0x3fe76964afb4a795              # double 0.73161539380565677
	.quad	0x3fdd073697e6e01a              # double 0.45356526216665005
	.quad	0x3fe7920f0cf033f4              # double 0.73657944228182126
	.quad	0x3fbed68fa64b9408              # double 0.12046144304220274
	.quad	0x3fa8a7fe9db508d0              # double 0.048156697036135676
	.quad	0x3fe019f3f6811c9d              # double 0.50316808839206184
	.quad	0x3fc64dfee19c0810              # double 0.17425523773278018
	.quad	0x3fdf332fe51f20bc              # double 0.48749921202807989
	.quad	0x3feeb8b3228a7098              # double 0.96004635568853569
	.quad	0x3fe8f0265f7134c6              # double 0.77931517258698402
	.quad	0x3fe66c011e8ffb39              # double 0.7006841275141148
	.quad	0x3fefe8d3a2753979              # double 0.99717122774181554
	.quad	0x3fd15796b293bde2              # double 0.2709709876935148
	.quad	0x3fb729c6de1ba938              # double 0.090481213784788461
	.quad	0x3fec16fd71c7a0b7              # double 0.87780639860741061
	.quad	0x3feca7ab53b23fe7              # double 0.89546743723803679
	.quad	0x3fe203cb244e6a87              # double 0.56296307650639299
	.quad	0x3fded5774d12dc12              # double 0.48177893187261234
	.quad	0x3fdeefdf1efdc726              # double 0.48339059854980559
	.quad	0x3fbd432aeb9f6d48              # double 0.11430614712246723
	.quad	0x3fe5888b0be47496              # double 0.67291786501631878
	.quad	0x3fb703b73030b360              # double 0.089900445237345306
	.quad	0x3f2ae5822f569000              # double 2.0520414515801111E-4
	.quad	0x3fc98e294f500b38              # double 0.19965092060746215
	.quad	0x3fe57d3e0f07b71e              # double 0.67153838096212204
	.quad	0x3feb4ad64f411942              # double 0.85288539389947737
	.quad	0x3fd5f51ef4d41ba4              # double 0.34308599385297556
	.quad	0x3fd80d9e12d0d728              # double 0.37583114469031154
	.quad	0x3fdac314e88a7ea4              # double 0.41815684041101009
	.quad	0x3fd38455dae52880              # double 0.30495211006621759
	.quad	0x3fedd6ecf721a4b3              # double 0.93248604076247543
	.quad	0x3fdce26551f0fd16              # double 0.45131810190282928
	.quad	0x3fe513e4bebcd45f              # double 0.65867841008606465
	.quad	0x3fe22e030feff897              # double 0.56811669457217107
	.quad	0x3fda719227838358              # double 0.41318181856882097
	.quad	0x3fd6e422152803e4              # double 0.35767414156003796
	.quad	0x3fe8127ec9ac5596              # double 0.7522577227525058
	.quad	0x3fec5573d50d22cf              # double 0.88543120967468691
	.quad	0x3fd7cbf4205d989c              # double 0.37182334099487391
	.quad	0x3fe2849ab82b4568              # double 0.57868705721390956
	.quad	0x3fe62763dc6e50cf              # double 0.692308359650747
	.quad	0x3febec5aae67afac              # double 0.87260183394891077
	.quad	0x3fe2d4504f9a2c21              # double 0.58841720149337473
	.quad	0x3fd53623f382368a              # double 0.33142946987286648
	.quad	0x3fdf7f2069f7a6aa              # double 0.49213419292810079
	.quad	0x3fe4eb002279c44b              # double 0.65368658765340493
	.quad	0x3fe61771289b4ccb              # double 0.69036157542213894
	.quad	0x3fec709f3f603b60              # double 0.88874781015497816
	.quad	0x3fd72ba0000a5c2a              # double 0.36203765872909577
	.quad	0x3fec54e323ab70b8              # double 0.88536221472488474
	.quad	0x3fe22bbb28ddd167              # double 0.56783826810582816
	.quad	0x3fd24eefc12e7b3a              # double 0.28606790414226035
	.quad	0x3fcef2ae819e66a8              # double 0.24178105668106764
	.quad	0x3feb646671e22298              # double 0.85600588076438822
	.quad	0x3fdc5b1ae6140750              # double 0.4430606123788623
	.quad	0x3f964de112cf9d80              # double 0.021781460545665876
	.quad	0x3fe5064a596ce929              # double 0.65701787439255555
	.quad	0x3fdf8d9e927cc94e              # double 0.49301876359381402
	.quad	0x3fe20935c9cbcec2              # double 0.56362428105645557
	.quad	0x3fdee7f798ee22a2              # double 0.48290815291015055
	.quad	0x3fbf6291542278b0              # double 0.12259777359074309
	.quad	0x3fe889a0fc33e19b              # double 0.76680039652187604
	.quad	0x3fcfba8f03d7b304              # double 0.24788081824899433
	.quad	0x3feaa60acc4c264a              # double 0.83276882078025349
	.quad	0x3fe658f16bd8db08              # double 0.69835730613599001
	.quad	0x3f94434989a89fa0              # double 0.019787930514354124
	.quad	0x3fe05ffe24579725              # double 0.51171786401821306
	.quad	0x3fd27804b68f82da              # double 0.28857534244711547
	.quad	0x3feef2ffb8085bc4              # double 0.96716295188786505
	.quad	0x3f8b9ad2583bddc0              # double 0.013478892629321559
	.quad	0x3fd0e5d9cc979790              # double 0.26402897815420889
	.quad	0x3fd47229655a79da              # double 0.31946787736697291
	.quad	0x3fd23d10e81f4e5a              # double 0.28497717540924372
	.quad	0x3fe1addb9a4457ec              # double 0.55247287874476347
	.quad	0x3fe5b74f842ae059              # double 0.67862678350412431
	.quad	0x3fd880f01fa84b88              # double 0.38286974994223799
	.quad	0x3fbde5db714c0198              # double 0.1167885924915083
	.quad	0x3fda3e8e9864b1b6              # double 0.41006817705308707
	.quad	0x3f83c85c9e4a8700              # double 0.0096595035368554072
	.quad	0x3fe9fe7e9113b498              # double 0.81231621108385621
	.quad	0x3fe10d04db8ea692              # double 0.53283923036834069
	.quad	0x3febb5b295c08604              # double 0.8659298825115802
	.quad	0x3fe5a16d4a38064d              # double 0.67595543380611789
	.quad	0x3fd6df8ad46100d0              # double 0.35739393940094732
	.quad	0x3fe6908b579f4069              # double 0.70514456857382612
	.quad	0x3fe852fe93991d24              # double 0.76013115718607027
	.quad	0x3fe5e2aa7d93add1              # double 0.68391918684704411
	.quad	0x3fe350ded9c22a31              # double 0.60362188845585341
	.quad	0x3fd6f78f8455c43e              # double 0.35885990069715834
	.quad	0x3fe9b2f8849adffe              # double 0.80309701823625779
	.quad	0x3fef463ff8db0d57              # double 0.97732542614577766
	.quad	0x3fd8ff55d6dcf69e              # double 0.39058443052986458
	.quad	0x3fdfbe23f594981e              # double 0.49598025305238191
	.quad	0x3fd98868889fd48a              # double 0.3989507040235557
	.quad	0x3fea82191036fecc              # double 0.82838109175642093
	.quad	0x3feb69fcc88f16f9              # double 0.85668791934651189
	.quad	0x3fdef4abbd446c3a              # double 0.48368352397091352
	.quad	0x3fed1627271bd630              # double 0.90895421636986917
	.quad	0x3fd12f936a73858a              # double 0.26852879901533611
	.quad	0x3feb46ae00561ef3              # double 0.85237789216713933
	.quad	0x3fd7c2d976feca24              # double 0.37126766796714805
	.quad	0x3fea1617b398332e              # double 0.81519684865052056
	.quad	0x3fbe4e58080a4c88              # double 0.11838293262762722
	.quad	0x3fe4ce7d0f0f306a              # double 0.650206117069968
	.quad	0x3fdf5a4a0d31d966              # double 0.48988581932589736
	.quad	0x3fd06dd60925a15c              # double 0.25670386212597918
	.quad	0x3fe5e1ef4d49b94a              # double 0.68382992835339818
	.quad	0x3fe4ab29a85f2446              # double 0.64589388737761833
	.quad	0x3fd5e905cfcbb5d2              # double 0.34234757702401197
	.quad	0x3fe6610afd0b32de              # double 0.69934606001478605
	.quad	0x3fec474f29e7258c              # double 0.88370474037326252
	.quad	0x3fe46aba2e7faee7              # double 0.63802823144712029
	.quad	0x3fc9afd3bfdcac78              # double 0.20067831867467922
	.quad	0x3fd0c13ca379e808              # double 0.26179424252006855
	.quad	0x3fe6a895514e939f              # double 0.70807901268254969
	.quad	0x3fdf6077ea831cdc              # double 0.49026296521738089
	.quad	0x3fed6f9fc8fb990f              # double 0.91987599615529969
	.quad	0x3fc616870d2bf4ac              # double 0.17256248610639113
	.quad	0x3fe670978a4b2a2c              # double 0.70124413500281468
	.quad	0x3fea3812771aea02              # double 0.81934474241944621
	.quad	0x3fd5a35e408382ca              # double 0.33809620189826417
	.quad	0x3fdb66ea235d118a              # double 0.42815640881988115
	.quad	0x3fe6c767a8b58251              # double 0.71184142065983214
	.quad	0x3fc4ae82223ca250              # double 0.16157557174416803
	.quad	0x3febc29e07ed5b0c              # double 0.8675069956615018
	.quad	0x3fed4205a9af3bfb              # double 0.91430934087281857
	.quad	0x3fee4413de070494              # double 0.94581025471429081
	.quad	0x3fe53ca8bb130b52              # double 0.66365467584578597
	.quad	0x3fb5b7acdad34e18              # double 0.084833911346600011
	.quad	0x3fdcc75ac7fd0ab2              # double 0.44966764001962212
	.quad	0x3feaffe009b9d5e9              # double 0.84373475932687569
	.quad	0x3fd421c62e7b994a              # double 0.3145614103254003
	.quad	0x3fe2cbefacae5334              # double 0.58739455916165761
	.quad	0x3fd4f1234b046fb8              # double 0.32721788717185119
	.quad	0x3fe79b6ce0c886b0              # double 0.73772281554211894
	.quad	0x3fe4f3441a9c768e              # double 0.65469556043145061
	.quad	0x3feffae0fdc44f34              # double 0.99937486232599903
	.quad	0x3feeb6288d09cdd9              # double 0.95973613306562832
	.quad	0x3fec704bfcfd82d6              # double 0.8887081090179787
	.quad	0x3fef5d115c84cbcc              # double 0.98011081762376184
	.quad	0x3fe1bae175c39b2d              # double 0.55406258583830026
	.quad	0x3fbd5514c1351000              # double 0.1145794841477823
	.quad	0x3fde34b6c005c84c              # double 0.47196739914136709
	.quad	0x3fc40788b39a2a48              # double 0.15647991914404913
	.quad	0x3fc0713388bb11c4              # double 0.12845462967210441
	.quad	0x3fefb1574adc4698              # double 0.99039806958372178
	.quad	0x3fc67537002cfbec              # double 0.17545211323337584
	.quad	0x3fe9030b71d14022              # double 0.78162166814764
	.quad	0x3feeb1c3d6b28bee              # double 0.95919982846350904
	.quad	0x3fd20ee8df575920              # double 0.2821600133005564
	.quad	0x3fc37b8cf1c040d4              # double 0.15220796398398895
	.quad	0x3fd2d0dc33925e30              # double 0.29399781261733704
	.quad	0x3fbedfb00eb11fe8              # double 0.1206007037991409
	.quad	0x3fc72911fd17640c              # double 0.18094086511590068
	.quad	0x3f9d1dfd53be8220              # double 0.028434713589037597
	.quad	0x3fdefcc8ac33bb5c              # double 0.4841787034665026
	.quad	0x3fdd010766ed4eb8              # double 0.45318779994452596
	.quad	0x3fd0538b363cb120              # double 0.25509910866345997
	.quad	0x3feb11e67a7c8f95              # double 0.84593509600789452
	.quad	0x3fdc4b67172ce9ee              # double 0.44210221541621209
	.quad	0x3fb120a478bdb948              # double 0.066904334523973152
	.quad	0x3f91b05e7fd47780              # double 0.017274357368584514
	.quad	0x3fe56ef511ebaf97              # double 0.66979459285856791
	.quad	0x3fdb01284315ad74              # double 0.42194563437688903
	.quad	0x3fe389905ee594de              # double 0.61054247412235063
	.quad	0x3fdfe74321889e82              # double 0.49849012636921242
	.quad	0x3fe5c20f844fa050              # double 0.67993903963088975
	.quad	0x3fd4ae17d731d05a              # double 0.32312580123039469
	.quad	0x3fed0eadb9071482              # double 0.90804182184423632
	.quad	0x3fe121bab37e3778              # double 0.53536734635575467
	.quad	0x3fdf50b28d8749d0              # double 0.48930038281573918
	.quad	0x3fe290d894dcaa93              # double 0.58018139910321265
	.quad	0x3fd8ca62d0c3b67e              # double 0.38735266101034671
	.quad	0x3fe886012e08c9e2              # double 0.76635798445778058
	.quad	0x3fd2f224e3e9e284              # double 0.29602930314244014
	.quad	0x3fe6bc7fb00fb390              # double 0.7105101050088809
	.quad	0x3fe69e6f2405e6fb              # double 0.70684010539773057
	.quad	0x3fd2192f5a1fe200              # double 0.28278716851448849
	.quad	0x3feec93a35cb0653              # double 0.96206388956506783
	.quad	0x3fe8aeba62cbd92a              # double 0.77132911010884198
	.quad	0x3fe6ba78f2a39824              # double 0.71026275053441568
	.quad	0x3fcc238bdcdc5444              # double 0.21983478817188218
	.quad	0x3fd7797dcd97bb94              # double 0.36679024770176594
	.quad	0x3fe07e6c86ebcf7e              # double 0.51543260909828326
	.quad	0x3fe95d18eb922aba              # double 0.79261442193941112
	.quad	0x3fef4d25e152d881              # double 0.97816747673529402
	.quad	0x3fe777fdd3b710b7              # double 0.73339740133862719
	.quad	0x3fdccd6f94646e96              # double 0.45003880969464072
	.quad	0x3fd6f696e6054622              # double 0.35880062544774394
	.quad	0x3fc24faf6c34505c              # double 0.14305680068412385
	.quad	0x3f9bbd2ed44779e0              # double 0.027088863092893933
	.quad	0x3fb52a93f0a468c8              # double 0.082680937052290848
	.quad	0x3fd54d8e9c6377ee              # double 0.33285870811766827
	.quad	0x3fed8b7f9a99e7de              # double 0.92327861972375636
	.quad	0x3fc98bc7d1492c88              # double 0.19957826346430729
	.quad	0x3fe446c95b9fb789              # double 0.63364093680660105
	.quad	0x3fe2eefb27d0dd5c              # double 0.5916724946645604
	.quad	0x3febd5c4149bb951              # double 0.86984447503145124
	.quad	0x3fd4876009532002              # double 0.32076264296165402
	.quad	0x3fe76a21f1fc22dc              # double 0.73170563948323375
	.quad	0x3fc19991f31e9428              # double 0.13749908801142507
	.quad	0x3fe22025792c85f9              # double 0.56642411867886644
	.quad	0x3fd0cb4976a25c66              # double 0.26240765176175385
	.quad	0x3fca7830e7d3c558              # double 0.20679293937386478
	.quad	0x3fcb6d9d4bff5890              # double 0.21428266726315259
	.quad	0x3feeff194ec0f30c              # double 0.96863999730666838
	.quad	0x3fcd51508e6c8b48              # double 0.22904402689263237
	.quad	0x3fbb4891438185a8              # double 0.10657604120344522
	.quad	0x3fdd67703d5ae57a              # double 0.45943838111596558
	.quad	0x3fd8fd283e7b7710              # double 0.39045148946557706
	.quad	0x3fda300d1b864fd8              # double 0.40918281257586164
	.quad	0x3fde3632d6097702              # double 0.47205801870391906
	.quad	0x3fdd493ae84104b8              # double 0.45759461098721088
	.quad	0x3fd95c6d51216c92              # double 0.39626629755884679
	.quad	0x3fdfcf7b782b69ee              # double 0.49703871474562689
	.quad	0x3fe7d6d23b42f874              # double 0.74497329306156113
	.quad	0x3fe2f9a663736f4a              # double 0.59297484802252964
	.quad	0x3fd0dd47603bca28              # double 0.26350578687484694
	.quad	0x3fe1edd79bda8c22              # double 0.56028347435165338
	.quad	0x3fdaeb055fedd9e4              # double 0.42059454315258749
	.quad	0x3fe3e665d45263f8              # double 0.62187472790821996
	.quad	0x3fdbefc6dac06ab6              # double 0.43650981295074176
	.quad	0x3fe6235d2728d791              # double 0.69181687973353878
	.quad	0x3fbfe63cfafa0048              # double 0.12460690619809711
	.quad	0x3fcccfe92edeacd8              # double 0.22509493626180332
	.quad	0x3fe603e56ab4bd2c              # double 0.68797560540216329
	.quad	0x3fd9f328d7cd79d8              # double 0.40546628069378476
	.quad	0x3fc6aeb89e52681c              # double 0.17720706682740761
	.quad	0x3fe6aac664c1f996              # double 0.70834655455819262
	.quad	0x3fd3b5ffc8161780              # double 0.30798334636380531
	.quad	0x3fdd65b77b8ab850              # double 0.45933329643856258
	.quad	0x3fe936d056a4f9de              # double 0.78794114039174779
	.quad	0x3fbac79d4120bf18              # double 0.10460837211644181
	.quad	0x3fd2e94d261b1c60              # double 0.29548958512572732
	.quad	0x3fb82401a3c58fb8              # double 0.094299414141970739
	.quad	0x3fe9096ce0b9f3b7              # double 0.78240054981107832
	.quad	0x3fe77714a98755f4              # double 0.7332862197023915
	.quad	0x3fe492a222adafbe              # double 0.64289957783829954
	.quad	0x3fe79ecb58030127              # double 0.73813407125274899
	.quad	0x3fd684b597ce4804              # double 0.35184993576797319
	.quad	0x3fdd717f39ca6726              # double 0.4600523056375202
	.quad	0x3fe4745664a39f62              # double 0.63920135170063141
	.quad	0x3fb79163b862f590              # double 0.09206221820473659
	.quad	0x3fe35b38a001c62b              # double 0.60488539935449148
	.quad	0x3fd2a4cdcf08bf2c              # double 0.29130883424930931
	.quad	0x3fef3fe80ddfc32f              # double 0.97655108175067606
	.quad	0x3fdb570e4db3c4be              # double 0.42718846881968975
	.quad	0x3fe9a6f5982a5f5e              # double 0.80163078040912317
	.quad	0x3fee6177bc2021b6              # double 0.94939791434540299
	.quad	0x3fe2db210ae09c07              # double 0.58924915432442126
	.quad	0x3fd968343dd6d178              # double 0.39698511160829453
	.quad	0x3fe760a23ab76a94              # double 0.73054610698757694
	.quad	0x3fefdb176520b294              # double 0.99549455405720488
	.quad	0x3fee4fdf31ac27f7              # double 0.94724998189599219
	.quad	0x3fe14c0cfa6a0d49              # double 0.54053353222881484
	.quad	0x3fd78374527e1820              # double 0.36739833885110507
	.quad	0x3fcdbd76967c921c              # double 0.23234445903757794
	.quad	0x3fd304eb8a0ef820              # double 0.29717529756806194
	.quad	0x3fef5e025cd212cf              # double 0.9802257359411558
	.quad	0x3fd2f694a96b2e54              # double 0.29630009217064424
	.quad	0x3fe1c3708b7632a6              # double 0.55510737646689701
	.quad	0x3fd31ff1738f93ea              # double 0.29882465634574251
	.quad	0x3fcb748b60977e7c              # double 0.21449415413279727
	.quad	0x3fe89cfd86cd3697              # double 0.76916385963859824
	.quad	0x3fe5046c4080d4fe              # double 0.65678989980975166
	.quad	0x3fea560503431f2d              # double 0.82300043713710169
	.quad	0x3fe33bc35adde20a              # double 0.60104530093582409
	.quad	0x3f87ac791e894040              # double 0.011559435123814521
	.quad	0x3fe1cf5554d3de29              # double 0.55655924384968103
	.quad	0x3fd84d92fd6f885a              # double 0.37973475217416353
	.quad	0x3fd4a5dc6394ecb8              # double 0.32262334561137207
	.quad	0x3fefca8b8d7aad22              # double 0.99347474701554384
	.quad	0x3fe72df251ece67b              # double 0.72435871125271889
	.quad	0x3fe9644fcab5a75f              # double 0.79349507896152349
	.quad	0x3fedce4966a563d9              # double 0.9314314846807249
	.quad	0x3fe78dbb12364893              # double 0.73605111653366107
	.quad	0x3fecb00fd62214f0              # double 0.89649192641141262
	.quad	0x3fe12392b663abb4              # double 0.53559241888921472
	.quad	0x3fc3ce7564501a04              # double 0.15473811529246018
	.quad	0x3f84c09a21b92500              # double 0.010132984308386828
	.quad	0x3fdf18749f89e5ce              # double 0.48586764888713396
	.quad	0x3f9a80aa8acfe6e0              # double 0.025881447527331569
	.quad	0x3fe2210fb05bef4b              # double 0.56653580136433257
	.quad	0x3fe1e5a3064e66f5              # double 0.55928183776560891
	.quad	0x3fe4414075111922              # double 0.63296530594451306
	.quad	0x3fdfd9669c1df144              # double 0.49764409299656998
	.quad	0x3fe9f249c84af8fe              # double 0.81082619781207632
	.quad	0x3fb575451b0e1358              # double 0.083820647340031029
	.quad	0x3fc49cb9b4a8693c              # double 0.16103288003143656
	.quad	0x3fc14a84e921d054              # double 0.13508664496805756
	.quad	0x3fe991a0c214d385              # double 0.79902685076250235
	.quad	0x3fdd66ba5b609436              # double 0.45939501689491935
	.quad	0x3fea156fc3450465              # double 0.81511676920503062
	.quad	0x3fd407095b606a5c              # double 0.31292947696207363
	.quad	0x3fe04223df53d040              # double 0.50807374590522869
	.quad	0x3fc3d700dea8b038              # double 0.15499888298052311
	.quad	0x3fde71559cf7d11e              # double 0.47566738442334777
	.quad	0x3fd9a0db640620d2              # double 0.40044293182337498
	.quad	0x3fc2ff54c645888c              # double 0.14841708832961265
	.quad	0x3fd28d1e7b050ba6              # double 0.28986322415965515
	.quad	0x3fe3670c2086e6c9              # double 0.60632902481958084
	.quad	0x3feeca797d1e610d              # double 0.9622161334728233
	.quad	0x3fecbea60518b694              # double 0.89827252383629963
	.quad	0x3fc649e078708710              # double 0.17412954216802534
	.quad	0x3fe143cac0147eb4              # double 0.53952538982044596
	.quad	0x3fb837049946ad98              # double 0.094589507504386439
	.quad	0x3fe7731beb05be7d              # double 0.73280139830417534
	.quad	0x3fcad75a61da1c38              # double 0.20969705369881964
	.quad	0x3fefe3aef34e1bd3              # double 0.99654338379411411
	.quad	0x3feb3603bf98c14c              # double 0.85034358426313749
	.quad	0x3fdb26ca85827608              # double 0.42424262083099551
	.quad	0x3fc0960022f1252c              # double 0.12957765298987434
	.quad	0x3fad2f871ecbc320              # double 0.057003233441611068
	.quad	0x3fb365ab0f3d9778              # double 0.075770083638046049
	.quad	0x3fd394761bba1d3a              # double 0.30593636234012289
	.quad	0x3fdab1f22625df78              # double 0.41711095548043131
	.quad	0x3fd4b315f73e91f8              # double 0.32343053002321609
	.quad	0x3fe29216aa891ff4              # double 0.58033307368987019
	.quad	0x3fe1ad167a0f2aae              # double 0.55237888183304107
	.quad	0x3fe279110bb2da29              # double 0.57727863583460703
	.quad	0x3fe3274e027301c6              # double 0.59854794004791567
	.quad	0x3fdc87e4204dd88c              # double 0.44579413561530923
	.quad	0x3fec6ddd718034c7              # double 0.88841125648618735
	.quad	0x3fe54b51dbff45c0              # double 0.66544430702395374
	.quad	0x3feb47a200f2fe29              # double 0.85249424157513431
	.quad	0x3fe96da5a675b600              # double 0.79463465224915808
	.quad	0x3feb3c3ad4d65d01              # double 0.85110227174564568
	.quad	0x3fc21cc9749b8b68              # double 0.14150350755434293
	.quad	0x3fe48980740f6b4f              # double 0.64178488414777657
	.quad	0x3fde2682c70d54fc              # double 0.47110051573447698
	.quad	0x3fd05ff534e7c80e              # double 0.25585680166761982
	.quad	0x3fe1f3f015e91725              # double 0.56102756766697282
	.quad	0x3fe15322cfd693cb              # double 0.54139843552968026
	.quad	0x3feb61730c8e3966              # double 0.85564567997225249
	.quad	0x3fe930aa91bccc10              # double 0.78719070877412101
	.quad	0x3fde368b0ba7e1aa              # double 0.47207904947529278
	.quad	0x3fece112ad037a81              # double 0.90247472564426812
	.quad	0x3feccb638874bf93              # double 0.89982773448535835
	.quad	0x3fd3be2f775a9f40              # double 0.30848299651778532
	.quad	0x3fe2279035433c1d              # double 0.56732950594767184
	.quad	0x3fb44624a7746740              # double 0.079195299990172607
	.quad	0x3fc6ba3c255c785c              # double 0.17755843948629291
	.quad	0x3fd9bac58a0222ae              # double 0.40202463605286709
	.quad	0x3fe7a7ee3060bcd7              # double 0.73924931954197859
	.quad	0x3fea6b8cbb9a2da9              # double 0.82562863007608656
	.quad	0x3fe420e6973c1925              # double 0.62901620424307636
	.quad	0x3fedb6ee42c5e9a1              # double 0.92858040849323598
	.quad	0x3fe8ab01c66878ae              # double 0.77087486983852727
	.quad	0x3febd5b16730c500              # double 0.86983556894679737
	.quad	0x3fe61c9ef0554727              # double 0.69099375667631058
	.quad	0x3fd3222ab76efb5e              # double 0.29896037972860323
	.quad	0x3fe8bed4b7101081              # double 0.77329478983348576
	.quad	0x3fe318b81f469163              # double 0.59676748379255817
	.quad	0x3fece888242d5785              # double 0.90338522973864654
	.quad	0x3fe0ad5f58ed3cc4              # double 0.52116362923143145
	.quad	0x3fefaffb489880d5              # double 0.99023212603426691
	.quad	0x3f73fe9a9c2fe900              # double 0.0048814811188953033
	.quad	0x3fde455cbe776b6c              # double 0.47298353767626256
	.quad	0x3fe83e8404f90556              # double 0.75763131114232851
	.quad	0x3fce4fbf61e25d24              # double 0.23680870322707748
	.quad	0x3fe0c527b51b155e              # double 0.52406678554750008
	.quad	0x3fd1d3c4a8ae99f2              # double 0.27855030510764245
	.quad	0x3fc79c4b051bf9ec              # double 0.18445718526341126
	.quad	0x3fbf9d6a99bbb3d0              # double 0.1234957337689615
	.quad	0x3fbe18d10fe29e48              # double 0.11756617200682584
	.quad	0x3fbaadfd860158f8              # double 0.1042173816834725
	.quad	0x3fb3e903b1ef06f0              # double 0.077774268093914633
	.quad	0x3fcd03b49dd927fc              # double 0.22667558391032105
	.quad	0x3feed7a8c01e8e82              # double 0.96382558368027582
	.quad	0x3fc0aa51b6d742d8              # double 0.13019772937561558
	.quad	0x3fe8c2da74dc1141              # double 0.77378580879352665
	.quad	0x3fe54f8fd4d75539              # double 0.66596213884864774
	.quad	0x3fdf9177c4b871b2              # double 0.49325365267739152
	.quad	0x3fec1f6977057a6b              # double 0.8788344692837432
	.quad	0x3fe7776df684d1da              # double 0.7333288016148416
	.quad	0x3fadb8830d745310              # double 0.058048339264280213
	.quad	0x3fd81b44d24c80da              # double 0.37666435753818706
	.quad	0x3fc606d785a99d3c              # double 0.17208379770748106
	.quad	0x3fed76bd7fd5e026              # double 0.920744657209984
	.quad	0x3fe2859599caa334              # double 0.57880668675816205
	.quad	0x3fc0b437592fb030              # double 0.13049976210402425
	.quad	0x3fecdb82653d35d7              # double 0.90179557584059011
	.quad	0x3fe5285c5cb339f1              # double 0.66117685418595162
	.quad	0x3fbda3c22f09f878              # double 0.11578000687038237
	.quad	0x3fcf7e6a5037c598              # double 0.24604538838279377
	.quad	0x3fb48834f2a4dcc0              # double 0.080203351248985477
	.quad	0x3fd8c0639e637afa              # double 0.38674250095020535
	.quad	0x3fa7dec0382de8e0              # double 0.04662132917197126
	.quad	0x3fe0d40045633315              # double 0.52587903549428694
	.quad	0x3fdfdf15f8afd41c              # double 0.49799107824157018
	.quad	0x3fe1af09b4fa0f5c              # double 0.55261693331747663
	.quad	0x3fcf856186f95cf8              # double 0.24625796404391287
	.quad	0x3fcc57a0e184a904              # double 0.2214242077983003
	.quad	0x3fef7af63960d4e9              # double 0.98375998694123467
	.quad	0x3fec8eaea50ad190              # double 0.89241726145569267
	.quad	0x3fdf6469c0ef86a8              # double 0.49050372926113051
	.quad	0x3fd208ad67dc9f54              # double 0.28177962439302928
	.quad	0x3f9367e556e1cac0              # double 0.01895101874147076
	.quad	0x3fed254e88587000              # double 0.91080404882404764
	.quad	0x3fddc7d04d14facc              # double 0.46532065894636498
	.quad	0x3fe9e8bfedef2006              # double 0.8096618315839812
	.quad	0x3fb5db521a52e120              # double 0.085377818514534187
	.quad	0x3fe41f5c098457c8              # double 0.62882806643278233
	.quad	0x3fe7d538aab601be              # double 0.74477799741730855
	.quad	0x3fd108729bc6aad2              # double 0.26614060604576395
	.quad	0x3fde7c1512a50a0e              # double 0.47632338352937686
	.quad	0x3fc4fe0bf2d7bf2c              # double 0.16400288922840767
	.quad	0x3fcb5dd56e1487e4              # double 0.21380107760438627
	.quad	0x3fe410345921e0bf              # double 0.62697808655413911
	.quad	0x3febeead8e78c583              # double 0.87288549257770887
	.quad	0x3fe8ea35bed9a82c              # double 0.77859008098062565
	.quad	0x3fd294d82eb5516e              # double 0.29033474503855572
	.quad	0x3fb073a9b5fe3328              # double 0.06426487630069444
	.quad	0x3fee4b3aba7c8bea              # double 0.94668327735086888
	.quad	0x3fde3695b7216518              # double 0.47208159335930722
	.quad	0x3fee6f0de85b5c6c              # double 0.95105643636897019
	.quad	0x3fe7bf083bb50253              # double 0.74206935559784382
	.quad	0x3fdd7c6b69d944de              # double 0.46071896874225426
	.quad	0x3fed1492210a5a15              # double 0.90876108601770744
	.quad	0x3fbbc8ebc98c5e70              # double 0.10853456183064636
	.quad	0x3fb4ef39551dc658              # double 0.081775267868374413
	.quad	0x3fef4e069497c4c0              # double 0.97827462217369287
	.quad	0x3fe65effe0c4224d              # double 0.6990966215099178
	.quad	0x3fe05c8f8281d5d4              # double 0.51129889955216834
	.quad	0x3fb83d832a32ef88              # double 0.094688604166490831
	.quad	0x3fde8f40f0171036              # double 0.47749350973413429
	.quad	0x3fe571a13268ca31              # double 0.67012080998967438
	.quad	0x3fe60bc1e04985e4              # double 0.68893522077649694
	.quad	0x3fe454d402996f24              # double 0.63535500056920968
	.quad	0x3fd1292c3f1e6658              # double 0.26813799060764643
	.quad	0x3fde6cfcc4e94caa              # double 0.47540206174489674
	.quad	0x3fe5d65dd7b120c5              # double 0.68241779448819584
	.quad	0x3fe3ed6564a50f4f              # double 0.62272901208096154
	.quad	0x3fd7c689b70a4814              # double 0.37149279475227215
	.quad	0x3fd1772d1b9df096              # double 0.27289893815010069
	.quad	0x3fe7768f624bf8b1              # double 0.73322266768061273
	.quad	0x3fd56ffac8fde86c              # double 0.33495969417675187
	.quad	0x3fd0a6824f0a62b2              # double 0.26016290396504893
	.quad	0x3fe061ebfa65b8de              # double 0.511953343446091
	.quad	0x3fde40d7b9576290              # double 0.47270768260708795
	.quad	0x3fe3391d3d1d0654              # double 0.60072194992262462
	.quad	0x3fecd096a06204b9              # double 0.90046244931013242
	.quad	0x3fef685aa7fab1e5              # double 0.98148854073002367
	.quad	0x3fef067c9fb4a6e9              # double 0.96954184715761215
	.quad	0x3fbee8eb412ef7b0              # double 0.12074156133073077
	.quad	0x3feea42facb6918c              # double 0.95754226429976219
	.quad	0x3fe61727d1b94773              # double 0.69032660447758898
	.quad	0x3fde9fedcb7f0f20              # double 0.47851128456771796
	.quad	0x3fe2188ffee83715              # double 0.56549835001507864
	.quad	0x3fef5d6c37a17380              # double 0.98015414109578103
	.quad	0x3feed8c71e2c5db5              # double 0.96396213429664234
	.quad	0x3fdec57c606d8140              # double 0.4808035794904022
	.quad	0x3fe8a0410af3998e              # double 0.76956226481415668
	.quad	0x3fbf77493e881c78              # double 0.12291391159679843
	.quad	0x3fee49c2b1a199a7              # double 0.94650397008517906
	.quad	0x3fe3319a7665055f              # double 0.59980509876201527
	.quad	0x3feb14f8b467769c              # double 0.84630999789415595
	.quad	0x3fd14f9b976f4980              # double 0.27048387325807965
	.quad	0x3fad98deaa5b59b0              # double 0.057806928916466105
	.quad	0x3fda263f990c8000              # double 0.40858449884581205
	.quad	0x3febef1c4e0e927a              # double 0.87293830152027785
	.quad	0x3fc5c0c439502250              # double 0.16994526670920829
	.quad	0x3fcb775b21f88488              # double 0.21457995566109767
	.quad	0x3fe79d60774fe72b              # double 0.7379610376658311
	.quad	0x3fd30b8fe000e4ca              # double 0.29758068919506953
	.quad	0x3fee0b6677e94e49              # double 0.9388916341799326
	.quad	0x3fe50f93912ccf80              # double 0.65815142015934214
	.quad	0x3fade0822b033d00              # double 0.058353488684241839
	.quad	0x3fe7e5002240eb7e              # double 0.74670416536478945
	.quad	0x3fcf25346ab57ec8              # double 0.24332289896391601
	.quad	0x3fe792bb07079a65              # double 0.73666144726741989
	.quad	0x3fb0892008c9ab18              # double 0.064592363496256744
	.quad	0x3fe169461aea45d0              # double 0.54410081154690637
	.quad	0x3fe2e4ef93cea086              # double 0.5904462706430571
	.quad	0x3fd82202e3f3fb0c              # double 0.37707588444747908
	.quad	0x3fea2545afe211e4              # double 0.81704983093419203
	.quad	0x3fc1b3af3f69971c              # double 0.13829603763877507
	.quad	0x3fdfdf635f630c7c              # double 0.49800953211906296
	.quad	0x3fe80343aa6b6e01              # double 0.75039847645842894
	.quad	0x3fea565f6e81c412              # double 0.8230435522401669
	.quad	0x3fe28d0d378c6c13              # double 0.57971821641274557
	.quad	0x3fc7ea1fd9e72ba4              # double 0.18683241023822206
	.quad	0x3fa99c000170a7d0              # double 0.05001831071452012
	.quad	0x3fd8767a99f244a4              # double 0.38223137887787062
	.quad	0x3fef0df5f228c959              # double 0.97045419022314682
	.quad	0x3fec416f4968487f              # double 0.8829876359689165
	.quad	0x3fd0ff960ec06b06              # double 0.2655997413691441
	.quad	0x3fe5244751811f58              # double 0.66067853850197888
	.quad	0x3fed90f6ff8c0a07              # double 0.92394590293435008
	.quad	0x3fdc202e16bb960c              # double 0.43946411342616964
	.quad	0x3fedb2dd58224d8d              # double 0.92808406079932271
	.quad	0x3fe944dd01960887              # double 0.78965616521624404
	.quad	0x3fec4a10854daeb4              # double 0.88404108081655019
	.quad	0x3fe0d89afa33de00              # double 0.52644108646103405
	.quad	0x3fe1ea745a1029b3              # double 0.55986993399101548
	.quad	0x3fceca78d07bd3a8              # double 0.24055395297878346
	.quad	0x3fda83da97fb0f36              # double 0.41429772226205175
	.quad	0x3fe983eaaaf75827              # double 0.79735310928186187
	.quad	0x3fee9549633a509d              # double 0.95572347050121531
	.quad	0x3fe156573f72e0ae              # double 0.54178964989025302
	.quad	0x3fe858986ec476e0              # double 0.76081487306847961
	.quad	0x3fe700a8ee10068c              # double 0.71883055206872504
	.quad	0x3fc38661adfeacdc              # double 0.15253849979249068
	.quad	0x3fe5bf4ae425e049              # double 0.67960114059588606
	.quad	0x3fc19753b34eb568              # double 0.13743063216444829
	.quad	0x3fe8e29ff23e17d2              # double 0.7776641589450668
	.quad	0x3fdd60617e1cf372              # double 0.45900761905414023
	.quad	0x3fe35234f8e44283              # double 0.60378502475403228
	.quad	0x3feb756465370456              # double 0.85808009880578129
	.quad	0x3fdd0f2e3a475418              # double 0.45405154887458954
	.quad	0x3fbc013e529579a0              # double 0.10939397350509816
	.quad	0x3fefdac38551b28d              # double 0.99545455969708174
	.quad	0x3fdb86542a7d654e              # double 0.43007377766987964
	.quad	0x3fee5ce56d12780a              # double 0.94883986762192873
	.quad	0x3fad40cbd6b71a90              # double 0.057134981117589523
	.quad	0x3fe46c6014ee2705              # double 0.6382294091028774
	.quad	0x3fe8c618a0f473ff              # double 0.77418166576865122
	.quad	0x3fa9e0a967880ce0              # double 0.050542158020130179
	.quad	0x3fe7d3cd0d5901c1              # double 0.74460461241692866
	.quad	0x3feb7f085c3fcd84              # double 0.85925691621234578
	.quad	0x3fe3b91f216d9ba2              # double 0.61634785202919695
	.quad	0x3fef6eec030f9ae0              # double 0.98229027364581256
	.quad	0x3fb93da15ebe50b0              # double 0.098596654539792494
	.quad	0x3fd4a532fbd4ff28              # double 0.3225829562470488
	.quad	0x3fb35e2cebc0c8c0              # double 0.075655753666782566
	.quad	0x3fd4535014729c58              # double 0.31758501049848098
	.quad	0x3fec8c0314aaf202              # double 0.89209131275816866
	.quad	0x3feb94d3e6121cae              # double 0.86191744743054755
	.quad	0x3fe9e9f9e0b2362e              # double 0.80981153379406634
	.quad	0x3fdd325a7a670bb0              # double 0.45619832948085115
	.quad	0x3fe82ad71ec543fb              # double 0.75522953042866392
	.quad	0x3fe7c2ad752fa902              # double 0.7425143517296251
	.quad	0x3fd29f9ba423c5cc              # double 0.2909916975905531
	.quad	0x3fed23ac6d395385              # double 0.91060468037413556
	.quad	0x3fe70c473b201586              # double 0.7202488093177386
	.quad	0x3fe31c52a3014355              # double 0.59720737301732163
	.quad	0x3fb075d87174ab28              # double 0.064298179339556172
	.quad	0x3fe4677b8a6c5c09              # double 0.6376321509914088
	.quad	0x3fe898b1d5af2688              # double 0.76863948569480645
	.quad	0x3fed35e89db394bb              # double 0.91283064652511514
	.quad	0x3fe006006dccb4e7              # double 0.50073262639275817
	.quad	0x3fd3f20fa2edaffa              # double 0.31164923583014537
	.quad	0x3fe8ac0d5020e079              # double 0.77100244188387912
	.quad	0x3fe336307f706d39              # double 0.60036492243253925
	.quad	0x3fd5f91dca7b6ac6              # double 0.34332985662119275
	.quad	0x3fee5e0139626e87              # double 0.94897519309911693
	.quad	0x3fd2a40ef10b8838              # double 0.29126332797580146
	.quad	0x3fe19b34d6434171              # double 0.55019609306513761
	.quad	0x3feb3a41d283b326              # double 0.85086146465400669
	.quad	0x3fe22d09ec1a9936              # double 0.56799789537470846
	.quad	0x3fd828d89cfc45fa              # double 0.37749305086717266
	.quad	0x3febd0fa77fd8c90              # double 0.86926005778913584
	.quad	0x3fd6a5dff4882ae4              # double 0.35387419586247248
	.quad	0x3fe54bf67be65a9b              # double 0.66552280615981674
	.quad	0x3feaded76346b492              # double 0.8397023142803326
	.quad	0x3fc51a81e63ab218              # double 0.16487144223846495
	.quad	0x3feb056241286dcb              # double 0.84440720297009741
	.quad	0x3fea763ec3077413              # double 0.82693422404884342
	.quad	0x3feff5e6359087df              # double 0.99876699888067921
	.quad	0x3fd694b65698d2d6              # double 0.35282667595610684
	.quad	0x3fef7e2b4a41c10a              # double 0.98415150168696752
	.quad	0x3fe8c9a492ea7206              # double 0.77461460775845192
	.quad	0x3f9f660fe43dc960              # double 0.030662773423906997
	.quad	0x3fe33baaffc8c2ae              # double 0.60103368718963224
	.quad	0x3fe0cd0e8470246e              # double 0.52503133646781719
	.quad	0x3fe750e8ecb9fd97              # double 0.72862669215821796
	.quad	0x3fe1d207070ba9f1              # double 0.55688811660848903
	.quad	0x3fd167f21ccbf814              # double 0.27196934520895977
	.quad	0x3fe741c7ac41e90a              # double 0.7267797817615087
	.quad	0x3fc19be51f09dc90              # double 0.13757003799012013
	.quad	0x3fd46235d772d2ae              # double 0.31849428214926945
	.quad	0x3fcfca34e7e00f14              # double 0.24835835763962477
	.quad	0x3fe4475d4b45a83b              # double 0.63371147824842156
	.quad	0x3fcaf42a704c8f58              # double 0.21057634814598702
	.quad	0x3fe8c3bda0531b74              # double 0.77389413178830901
	.quad	0x3fef9877c9c1e09a              # double 0.98736180692414455
	.quad	0x3feebf55200e103c              # double 0.96085602055291685
	.quad	0x3fd968ee7a413960              # double 0.39702951373046425
	.quad	0x3fdbb2a37a9134cc              # double 0.43277823419050487
	.quad	0x3fc174552e02d768              # double 0.13636269327769956
	.quad	0x3fb732bc73fa6098              # double 0.090617922129583639
	.quad	0x3fc3f2b3d9578000              # double 0.15584419357674051
	.quad	0x3fe4fcb0d6d4301d              # double 0.65584604223977616
	.quad	0x3fac05e4078bf2e0              # double 0.054732442780709212
	.quad	0x3fe72ae84c28f757              # double 0.72398772120480259
	.quad	0x3fd36aa96936b076              # double 0.30338511729019702
	.quad	0x3fed61406cc4673b              # double 0.9181215404853228
	.quad	0x3fe079af47fdc17f              # double 0.51485408840930791
	.quad	0x3fefa57c45658be1              # double 0.9889508586314798
	.quad	0x3feac04ad6364531              # double 0.83597318495063722
	.quad	0x3fe8f762a7eb7c24              # double 0.78019841000412215
	.quad	0x3fb8a75c4d934f18              # double 0.096303719462693116
	.quad	0x3fb005a0c0af4968              # double 0.062585875551382508
	.quad	0x3fe2be660034178a              # double 0.58574199714415554
	.quad	0x3fef492d8f87f877              # double 0.97768285783219155
	.quad	0x3febadfff9c8559b              # double 0.86499022279410853
	.quad	0x3fd517baae25c4c2              # double 0.32957331663699219
	.quad	0x3fe6c010fa260c40              # double 0.71094559533265311
	.quad	0x3fda6c85bce1982c              # double 0.41287368245537226
	.quad	0x3fe66c8de052a9a6              # double 0.70075124562327029
	.quad	0x3fb0e743655d4658              # double 0.066028797385365379
	.quad	0x3fd838bbe516239e              # double 0.37846276637770326
	.quad	0x3fd218cea141d906              # double 0.28276410815978215
	.quad	0x3fd89b8bce98236c              # double 0.38449378180717164
	.quad	0x3fd8ae95940345d4              # double 0.38565577940343343
	.quad	0x3fb3f898d3999918              # double 0.078012038860468258
	.quad	0x3fcd43185a0071e0              # double 0.22861008066764921
	.quad	0x3fe2e50e42deac23              # double 0.5904609018374497
	.quad	0x3fb1a77b65915648              # double 0.068961822792823146
	.quad	0x3fb3953a0f0420e0              # double 0.076495770135923902
	.quad	0x3fc32c76b9a460c8              # double 0.14979442658000708
	.quad	0x3fc8b72e0d64e308              # double 0.19309020666130317
	.quad	0x3fd40ffe0799f30e              # double 0.31347609274216459
	.quad	0x3fd1a0b62a63a9ae              # double 0.27543405665951581
	.quad	0x3fc94459f07cefd4              # double 0.19739841692523774
	.quad	0x3fc8b9a176abaeb0              # double 0.193164999909063
	.quad	0x3feb3be4473f18ee              # double 0.85106100001646978
	.quad	0x3fd32b9a3b61cbac              # double 0.29953628348374184
	.quad	0x3fed567f61807798              # double 0.91680878680539291
	.quad	0x3fd3c14f8cba096c              # double 0.30867375128595742
	.quad	0x3fe77da20f30df0c              # double 0.73408606497739148
	.quad	0x3fe845d0ea158f84              # double 0.75852246970724523
	.quad	0x3fe7a323557dc99b              # double 0.73866430947809947
	.quad	0x3fe2c4403ac4e432              # double 0.58645640829411705
	.quad	0x3fbb7f8e7244d000              # double 0.10741510667577359
	.quad	0x3f973e01db11ed80              # double 0.022697476383183979
	.quad	0x3fcf43b440225d70              # double 0.24425366527132608
	.quad	0x3fd27acda588473a              # double 0.28874531903521794
	.quad	0x3fba46b0a4e1ce90              # double 0.10264114404145119
	.quad	0x3fe4bd13930252b3              # double 0.64808062279424516
	.quad	0x3fef53054421782c              # double 0.97888434702668325
	.quad	0x3fee8a9a934576f0              # double 0.9544194103616217
	.quad	0x3fdca2e0c1120cf6              # double 0.44744128088514346
	.quad	0x3fe1000dad1a6b4e              # double 0.53125652131289214
	.quad	0x3fd74780520106e0              # double 0.3637390900440618
	.quad	0x3fce5bc0a95c4e4c              # double 0.23717506665762966
	.quad	0x3fd1120dbafa60dc              # double 0.26672690639089836
	.quad	0x3fef73f352afbf0c              # double 0.98290411138256805
	.quad	0x3fd3625e25d87654              # double 0.30287889190535577
	.quad	0x3fef115b360b9bb0              # double 0.97086868816119498
	.quad	0x3fe9f7163114bbf9              # double 0.81141194902545444
	.quad	0x3fe05bc4b0fdd4d1              # double 0.51120218819291996
	.quad	0x3fe3e1fe13ad84e8              # double 0.62133697360345952
	.quad	0x3fd2a3f83b458f4c              # double 0.291257913477456
	.quad	0x3fc4446bb0f4ab80              # double 0.1583380331079205
	.quad	0x3fc27893aa8c4fd8              # double 0.14430471255820865
	.quad	0x3fe9634b83d99ea3              # double 0.79337096931427131
	.quad	0x3fe3d4e5884bd5b0              # double 0.619738355830739
	.quad	0x3fe75b638ec6f230              # double 0.72990587125929629
	.quad	0x3fd9c5d169395cd4              # double 0.40269885326183652
	.quad	0x3feb284d0476a7f5              # double 0.84866953727509886
	.quad	0x3fe934bd57807ffb              # double 0.78768794145798837
	.quad	0x3feb065e9abf4fe0              # double 0.84452753280720216
	.quad	0x3fce2897896eac44              # double 0.23561376772463138
	.quad	0x3fe23c34e294d9ab              # double 0.56984943632305851
	.quad	0x3fe3b89f4cd513b9              # double 0.61628689771952516
	.quad	0x3fb581e435895908              # double 0.084013236113012479
	.quad	0x3fc99bb6e5fbca8c              # double 0.20006452779451356
	.quad	0x3fda67abe4eecd04              # double 0.41257760388107578
	.quad	0x3fe93802fbff67b7              # double 0.78808736055656581
	.quad	0x3fe856c67c60c95c              # double 0.76059269230453763
	.quad	0x3fe9acf50022347c              # double 0.80236291910263402
	.quad	0x3f855b4abd0b3e00              # double 0.010428031820452155
	.quad	0x3fc9357244402598              # double 0.19694355328128377
	.quad	0x3fe09feb59ed6f69              # double 0.51952140392266444
	.quad	0x3f613056b3e1bd00              # double 0.0020982449923888646
	.quad	0x3fda92295c2636f4              # double 0.41517099379494415
	.quad	0x3fe77e921729a307              # double 0.73420052074388387
	.quad	0x3fcbea2f0a01f4f0              # double 0.21808422077803113
	.quad	0x3fd072e2811e00ac              # double 0.25701201066113799
	.quad	0x3fc7f11b8af4f088              # double 0.18704551968574301
	.quad	0x3fec53f7c211bdf6              # double 0.88524997619782542
	.quad	0x3fe7f116781094de              # double 0.74817965936804476
	.quad	0x3fe42e125e5cedec              # double 0.63062399320864193
	.quad	0x3fe54795081408ae              # double 0.6649880559709993
	.quad	0x3fe05efe8333336c              # double 0.51159597039223348
	.quad	0x3fe4cfac73b2b369              # double 0.6503507861831227
	.quad	0x3f7bb8e9e5813c80              # double 0.0067681442815931137
	.quad	0x3fd1fb4de5979a5a              # double 0.28096339627373867
	.quad	0x3fd0465ddaf566ca              # double 0.25429483778644324
	.quad	0x3fd877b6677ab7f6              # double 0.38230667214781933
	.quad	0x3feddf0624ecfa54              # double 0.93347460948991534
	.quad	0x3fdb6787e8461990              # double 0.4281940239237878
	.quad	0x3fdc2e3757ff51e0              # double 0.44032081216326269
	.quad	0x3fe28621ce333da3              # double 0.5788735415789471
	.quad	0x3fe2cdb2daf3f7b5              # double 0.58760969890840065
	.quad	0x3fa7244f63d320e0              # double 0.045198899207720578
	.quad	0x3fdf590be0512074              # double 0.4898099604220143
	.quad	0x3fd4c62b031f4a7c              # double 0.32459521584420492
	.quad	0x3fec2936bac94447              # double 0.88003097993544876
	.quad	0x3fe7c00044a595ba              # double 0.74218762786465864
	.quad	0x3fd49a82c284cbe4              # double 0.32193058963747334
	.quad	0x3fe925378698b9b9              # double 0.78579307831187528
	.quad	0x3fc9a2124524cc48              # double 0.20025852562102586
	.quad	0x3fc798b3097c9fc8              # double 0.18434751475547118
	.quad	0x3fe5e0e9156eb640              # double 0.68370489297894466
	.quad	0x3feb95ad96cd8e43              # double 0.86202125028325616
	.quad	0x3fedc099c3637e64              # double 0.92976082002492121
	.quad	0x3fd456a76709b7b2              # double 0.31778893530178742
	.quad	0x3fd954af9755ed38              # double 0.39579381731865082
	.quad	0x3fcb2bef701ab860              # double 0.2122782990822456
	.quad	0x3fef62a5b74cb8de              # double 0.98079191017839285
	.quad	0x3fe8f482d5fa1f6b              # double 0.77984754364386555
	.quad	0x3fe4847792c10b4c              # double 0.64117029822259886
	.quad	0x3fd5616b028f5e24              # double 0.3340709233284278
	.quad	0x3fef6b007b94b4ce              # double 0.98181175362483386
	.quad	0x3fea5b76a5a133ba              # double 0.82366497373151693
	.quad	0x3fcaafa2fd81683c              # double 0.20848500612447818
	.quad	0x3fe8585c568fdfc3              # double 0.76078621775285915
	.quad	0x3feb7e2fd53b2c6d              # double 0.85915366789539649
	.quad	0x3fe86205e21c9073              # double 0.76196569597642705
	.quad	0x3feccb1ee8872069              # double 0.89979501166909615
	.quad	0x3fe3922ad6bf0d2d              # double 0.61159269278178885
	.quad	0x3fefda2bbfda9bcb              # double 0.99538218947861289
	.quad	0x3fddb1072df5a0aa              # double 0.46392993438940755
	.quad	0x3fefaeaaf7594227              # double 0.99007175741468678
	.quad	0x3fd8349468f440c8              # double 0.37820921182084222
	.quad	0x3fc91471a132f050              # double 0.19593639727634349
	.quad	0x3fed01c2b7a114b4              # double 0.9064649187572713
	.quad	0x3fb2e6142e731b60              # double 0.073823224392169262
	.quad	0x3fd856581d831b7e              # double 0.38027003175778151
	.quad	0x3fd038b1c30b0d2e              # double 0.25346035048660809
	.quad	0x3f9701dbe2d9b5e0              # double 0.022468028756000069
	.quad	0x3fe3bce167e582d4              # double 0.61680670063295873
	.quad	0x3fe8fd7de357f8d6              # double 0.78094381716780492
	.quad	0x3fd62cfe57a74768              # double 0.34649618682771299
	.quad	0x3fe08a423f2d5aca              # double 0.51687729205408428
	.quad	0x3fe81712bbc13af1              # double 0.7528165499769256
	.quad	0x3fd68b7d05baa3f4              # double 0.35226369437674454
	.quad	0x3fe5d8a4240ad8a0              # double 0.68269545592808711
	.quad	0x3fed795bb2a9f5ab              # double 0.92106423278135219
	.quad	0x3fd4314bd6742424              # double 0.31550880377523272
	.quad	0x3fe889c5e499e8b3              # double 0.76681799553559526
	.quad	0x3fc9db6296e9d55c              # double 0.20200760239428461
	.quad	0x3fac9e51e59bad10              # double 0.055895385053952862
	.quad	0x3fcaa195c536baf0              # double 0.20805618409709536
	.quad	0x3fe217272b1d9baf              # double 0.5653262941458389
	.quad	0x3fed53a592bbe5a8              # double 0.9164607873819266
	.quad	0x3fa1c994f6be8d90              # double 0.034741072769317261
	.quad	0x3fccf37df83c9de8              # double 0.22618078823982946
	.quad	0x3fd272074f13d76a              # double 0.28820975038921992
	.quad	0x3fc875617efb2f60              # double 0.19108217907193659
	.quad	0x3feb2f2c73f31977              # double 0.84950850149543455
	.quad	0x3fb0317ce8682dd8              # double 0.063255125751474295
	.quad	0x3fe58d3153375dd9              # double 0.67348543408564432
	.quad	0x3fec5b66bc424973              # double 0.88615738648722553
	.quad	0x3fd79068c1ef199c              # double 0.36818903864732433
	.quad	0x3fefd903909caf40              # double 0.99524095768490639
	.quad	0x3fefc5d7cab93730              # double 0.9929007491534545
	.quad	0x3fea3e677ff4171f              # double 0.82011771193421967
	.quad	0x3fd0a3266e2539e2              # double 0.25995789295566685
	.quad	0x3fc6f7e51f777718              # double 0.17944015537698799
	.quad	0x3fe2d646f49855d7              # double 0.5886568810698759
	.quad	0x3fabeac46f425c20              # double 0.054525507527778183
	.quad	0x3fd2e28d958807cc              # double 0.29507770159409286
	.quad	0x3fc660dc14624ad4              # double 0.17483092303571957
	.quad	0x3fd284651702133e              # double 0.28933074232945788
	.quad	0x3fe294c4eb68de6d              # double 0.58066030481763919
	.quad	0x3fdab032a98a65f4              # double 0.4170042663259601
	.quad	0x3fda8bdae02e4f18              # double 0.41478607075372187
	.quad	0x3fe125466b1c2750              # double 0.53580017967144933
	.quad	0x3fec35068c17aac7              # double 0.88147284852797092
	.quad	0x3fedcad4b3bafb84              # double 0.93100962737649739
	.quad	0x3fdec9c73f7ef762              # double 0.48106557083871426
	.quad	0x3fe59c61c399aeaf              # double 0.67533958628833612
	.quad	0x3fcff3a74e5195b0              # double 0.24962321590571213
	.quad	0x3fe2d068c0531838              # double 0.5879405742969146
	.quad	0x3fc21598dd1270b8              # double 0.14128409189732394
	.quad	0x3fd84bc3ac04ed32              # double 0.3796242885470803
	.quad	0x3fd18d34c9d2f98e              # double 0.27424354276072271
	.quad	0x3fea01b11cb223e6              # double 0.81270652393970688
	.quad	0x3fe79d2a2ec99e78              # double 0.73793515337179283
	.quad	0x3fc17908c4c40f70              # double 0.13650617225368533
	.quad	0x3fe8cb6152e41cb0              # double 0.77482668103848162
	.quad	0x3fc4d80009df02a8              # double 0.1628418014716051
	.quad	0x3feaf005cef10dd4              # double 0.84179964464459056
	.quad	0x3fb47a253aa55ce8              # double 0.079988791292055716
	.quad	0x3fe88c69e06f7409              # double 0.76714032969505397
	.quad	0x3fbf1e2ed2b335c0              # double 0.12155430454296035
	.quad	0x3fe60272458aba02              # double 0.68779862959291926
	.quad	0x3fe35ac63ef3589e              # double 0.60483085913689982
	.quad	0x3fda797396a756ce              # double 0.4136628123500089
	.quad	0x3fdf409815f24eda              # double 0.48831751006330892
	.quad	0x3fb23f1cdf1245c0              # double 0.071275524578843452
	.quad	0x3fe9144c275e19be              # double 0.78372771920185591
	.quad	0x3fe2b520e2f393ca              # double 0.58461040808162434
	.quad	0x3fe9e9c8deb5cbc0              # double 0.80978816507410301
	.quad	0x3fec5ddf1c5287c2              # double 0.88645892650333047
	.quad	0x3fd6e297ba06be8e              # double 0.35758011976847903
	.quad	0x3fc9500d322a721c              # double 0.19775547933103688
	.quad	0x3fbddff148853130              # double 0.11669834156527226
	.quad	0x3fea0a3f3b738cfd              # double 0.81375085460277286
	.quad	0x3fadd9b45068d760              # double 0.058301577392213089
	.quad	0x3fd0a70c716572b0              # double 0.26019583772521582
	.quad	0x3f8cd3bf5071c240              # double 0.014075750963656763
	.quad	0x3feddf4aa8c0e284              # double 0.93350727996501392
	.quad	0x3fe1e4472a340158              # double 0.55911596529771668
	.quad	0x3fcd9e3a250bbfec              # double 0.23139120873338415
	.quad	0x3fb37b0c1c1aec48              # double 0.076096302854169129
	.quad	0x3fdc2bf231323ef4              # double 0.44018225483249229
	.quad	0x3fc578319034d7b8              # double 0.16773051778153358
	.quad	0x3fbdf2b4aff88e50              # double 0.11698464676060749
	.quad	0x3fd48f6b97e8b058              # double 0.32125367960793971
	.quad	0x3fec3d3819eea651              # double 0.88247304024589301
	.quad	0x3fc02d702eceb964              # double 0.126386664252503
	.quad	0x3fd4374e1625f75c              # double 0.31587555087013697
	.quad	0x3fc8817222acd6c0              # double 0.19145037358400963
	.quad	0x3fae9f9726e3f880              # double 0.059811328408600595
	.quad	0x3fa09ee7d896ca50              # double 0.032462353886690054
	.quad	0x3fc8182283f6d624              # double 0.18823653644146632
	.quad	0x3fee796d4cec80cc              # double 0.9523226263445621
	.quad	0x3fd79ed99ddfd2f2              # double 0.36907043855107624
	.quad	0x3fa62dc59d252090              # double 0.043317962105505647
	.quad	0x3fe26a719f707556              # double 0.57549363270269782
	.quad	0x3fec14b95eb8d849              # double 0.877529797557835
	.quad	0x3fdf917241554890              # double 0.4932523382204943
	.quad	0x3fc761ed3dfcbf58              # double 0.18267598654483197
	.quad	0x3fabe28cdec6d3d0              # double 0.054462816423814453
	.quad	0x3fddb2f1e50fdbe2              # double 0.46404693002062747
	.quad	0x3fe3879572068df9              # double 0.61030075331331013
	.quad	0x3fd1f456e6043c34              # double 0.28053829634240235
	.quad	0x3fdd565c197ec9a0              # double 0.4583959816910923
	.quad	0x3fddc0046fad47a6              # double 0.46484480768151071
	.quad	0x3fee31abeee25434              # double 0.94356342942285786
	.quad	0x3fea01f13cdf7cf1              # double 0.8127371014524255
	.quad	0x3fe6c46f423255d4              # double 0.71147883347537766
	.quad	0x3fd4e596dfff36ac              # double 0.3265130221815109
	.quad	0x3fa84a8c6993e8e0              # double 0.047443759811317099
	.quad	0x3fedec4e3025b487              # double 0.93509587672964833
	.quad	0x3fec914ef8b39b02              # double 0.89273785185363885
	.quad	0x3fd163104b7ab0f2              # double 0.27167136546155668
	.quad	0x3fdeee1aba9ab5c2              # double 0.48328273985938719
	.quad	0x3fd111184e7b0b42              # double 0.26666839279294063
	.quad	0x3fe46c4942f994d0              # double 0.63821852761307163
	.quad	0x3fee7bf8d04e2b30              # double 0.95263329205167757
	.quad	0x3fe16c7ee0bc8e53              # double 0.54449409383637215
	.quad	0x3feeb1de69d506ed              # double 0.95921250028933757
	.quad	0x3fe6916f5a6b8e02              # double 0.70525329265768755
	.quad	0x3f9e59a15d295ac0              # double 0.029638787566308222
	.quad	0x3fc28ebc109e1288              # double 0.14498091517829814
	.quad	0x3fe9220f43bef457              # double 0.78540766936897455
	.quad	0x3fce1f2acbf4085c              # double 0.23532614668517027
	.quad	0x3fde3d414b0c95ea              # double 0.47248871163387085
	.quad	0x3fe2601c95f784c8              # double 0.57423238077549232
	.quad	0x3fd5b2383eb20658              # double 0.33900266764257969
	.quad	0x3fef74f8323426c8              # double 0.98302850537694386
	.quad	0x3fe3f06252ebd49a              # double 0.62309375949429868
	.quad	0x3fedbaafea240fee              # double 0.92903896074903769
	.quad	0x3fe86b312bb80b8f              # double 0.76308496989109809
	.quad	0x3fdff3f2c1209bda              # double 0.49926442012877958
	.quad	0x3fd350bf76ad25c4              # double 0.30180346097457922
	.quad	0x3fd08e52fab9f324              # double 0.2586867760181113
	.quad	0x3fe694c1fe5b2dbc              # double 0.7056589095968131
	.quad	0x3fd26db155542d6e              # double 0.28794511158840563
	.quad	0x3fd52d818429d3e8              # double 0.33090246111470245
	.quad	0x3fdc9c4649355ae8              # double 0.44703824185618979
	.quad	0x3fd0b81bf726d690              # double 0.26123713622960398
	.quad	0x3fc00702c2e3bc6c              # double 0.12521395221799325
	.quad	0x3fd6eadc340f5452              # double 0.35808472713444417
	.quad	0x3feb9da8dc3e2509              # double 0.86299555793917293
	.quad	0x3fe5a3dfc99386ca              # double 0.676254171088851
	.quad	0x3fee1fddf36ee0ff              # double 0.94139001412898426
	.quad	0x3fd384581cd65954              # double 0.30495264831678992
	.quad	0x3fe2531eb5831eb7              # double 0.57264647914504152
	.quad	0x3fd291a486091b60              # double 0.29013932313357849
	.quad	0x3febede3ccf01d5a              # double 0.8727892878240866
	.quad	0x3fedac04c53de9cd              # double 0.92724836849020564
	.quad	0x3fd5f157f0b4ca38              # double 0.34285543924775963
	.quad	0x3fe723f474203134              # double 0.72313902550516795
	.quad	0x3fdaaec761ea89de              # double 0.4169176536762772
	.quad	0x3fb75c916f32fb70              # double 0.091256227157811897
	.quad	0x3fc59c5c274d2a7c              # double 0.16883422774329293
	.quad	0x3fe46311bced7646              # double 0.637093419074241
	.quad	0x3fe69e1fa181f061              # double 0.70680219215820383
	.quad	0x3fc2720615263c54              # double 0.14410472901042459
	.quad	0x3fec6a2e5f753bbe              # double 0.88796156543855154
	.quad	0x3fdc621a29e801e8              # double 0.44348768322382037
	.quad	0x3fe8d69794987ed5              # double 0.7761953260669211
	.quad	0x3fe39db05ca20f1a              # double 0.61299913494483182
	.quad	0x3feab281a82e8f17              # double 0.83429034088155418
	.quad	0x3fe98bc7cf0aac00              # double 0.79831304967717642
	.quad	0x3fe22b9584ef5cd6              # double 0.56782031978482439
	.quad	0x3fe9742d53fdb4dd              # double 0.79543177036762425
	.quad	0x3fef93d6d437372c              # double 0.98679677437187285
	.quad	0x3fddc502db6f07e0              # double 0.4651496069819796
	.quad	0x3fdb40fcedebe848              # double 0.42584155306360971
	.quad	0x3fd1642617f20a6e              # double 0.27173759783196416
	.quad	0x3fd247000b81fca4              # double 0.28558350681118783
	.quad	0x3feb9157a2006868              # double 0.86149198189674525
	.quad	0x3fb783e1180c33f8              # double 0.091856068011295977
	.quad	0x3fd8414422a23816              # double 0.37898352987474604
	.quad	0x3fe51535285a6fb1              # double 0.65883882409570138
	.quad	0x3fd60ae5413f908e              # double 0.34441501018432852
	.quad	0x3feb09d90fe03abb              # double 0.84495213604699104
	.quad	0x3fc4a79d54330f8c              # double 0.16136519061376153
	.quad	0x3fd204cd0d49f772              # double 0.28154302880999815
	.quad	0x3f90991f4c70c220              # double 0.016209115067058133
	.quad	0x3fe26d08c1f97b27              # double 0.57580984006549307
	.quad	0x3fd244ea0263ec62              # double 0.28545618279867402
	.quad	0x3fe1cbbdef24d754              # double 0.55612084110064552
	.quad	0x3fdcad915199f5a4              # double 0.44809372872244979
	.quad	0x3fdadb8d6777bf8c              # double 0.41965041260027003
	.quad	0x3fedb95e3b62fd04              # double 0.92887794112166988
	.quad	0x3fd3f56989f2d674              # double 0.31185377570668682
	.quad	0x3fdea0558cc5f768              # double 0.47853602168458176
	.quad	0x3fefee32e3a381cb              # double 0.99782700024302906
	.quad	0x3fe37d229f10dc01              # double 0.60902529780912584
	.quad	0x3fe0d45fbe458985              # double 0.52592456018855727
	.quad	0x3fb157f666598060              # double 0.067748451221179007
	.quad	0x3faff5adbbd041c0              # double 0.062421254326298747
	.quad	0x3fe42e46b06bbcb1              # double 0.63064894158551088
	.quad	0x3fd5923b425211c8              # double 0.33705026127452387
	.quad	0x3fe39dd1bdf05b62              # double 0.61301505181732474
	.quad	0x3fb97ead4f9c82f0              # double 0.099589187561388348
	.quad	0x3fd0faf1fbf5f170              # double 0.26531648259676555
	.quad	0x3fdb0249caaa6a2e              # double 0.42201466361589979
	.quad	0x3f9f8e04bf3b5040              # double 0.030815195247513083
	.quad	0x3fe8f2b38d2410c1              # double 0.77962663237169505
	.quad	0x3fe9dd5eb92bced5              # double 0.8082727066634684
	.quad	0x3fe63d44abef43e0              # double 0.69497903424246132
	.quad	0x3fec3e1056a9d2d0              # double 0.88257615019264257
	.quad	0x3fdf93b38e69706a              # double 0.49338997752580005
	.quad	0x3fe6bf6016841de4              # double 0.71086124799415673
	.quad	0x3fe49bc44e09ea91              # double 0.64401450387897985
	.quad	0x3fd32da64064c3b0              # double 0.2996612194866044
	.quad	0x3fe31fbf1e33bc67              # double 0.59762531184049983
	.quad	0x3fea05e43c716404              # double 0.81321918301830509
	.quad	0x3fe01b0f42a06248              # double 0.50330317509639944
	.quad	0x3fe513beebe2e295              # double 0.65866037436997493
	.quad	0x3fea7376e5e5099e              # double 0.82659478093437477
	.quad	0x3fa45bde5862d0c0              # double 0.039763401307398194
	.quad	0x3fe2ee63196f768d              # double 0.59159998863079155
	.quad	0x3fe382b0d6368a95              # double 0.60970346296774613
	.quad	0x3fe9df778da5e25e              # double 0.80852868714925896
	.quad	0x3fce988e07bc970c              # double 0.23903060319678848
	.quad	0x3fc3b4d90f930fb0              # double 0.15395653973075474
	.quad	0x3fe3f608afed5420              # double 0.62378343926195967
	.quad	0x3fea526336c255af              # double 0.82255707450047122
	.quad	0x3fe54b48b7489b27              # double 0.66543994710523158
	.quad	0x3fe377b123002423              # double 0.60836083255810924
	.quad	0x3fe4458f30fb11b5              # double 0.63349113050985884
	.quad	0x3fd7c4f9e8323a02              # double 0.37139747310075688
	.quad	0x3fd1c2e1dad3ccea              # double 0.27751966829164465
	.quad	0x3fe3ece6a9cf4069              # double 0.62266858259137081
	.quad	0x3fb9c4088f46b808              # double 0.10064748285250869
	.quad	0x3fd8faf57c9e0576              # double 0.39031731767325739
	.quad	0x3fd1a57c31a434ac              # double 0.27572541091724179
	.quad	0x3fef81ba8f21014a              # double 0.98458602862232536
	.quad	0x3fd8cab289a840b4              # double 0.38737166827287273
	.quad	0x3fc9e061af5243a0              # double 0.20216008244144934
	.quad	0x3fcd99e3ba45a494              # double 0.23125883670153213
	.quad	0x3fd293b78d5930f6              # double 0.2902659302096845
	.quad	0x3fe374ab51bd97d5              # double 0.60799184765778114
	.quad	0x3f9ef80c82f48300              # double 0.030243106358400773
	.quad	0x3fb07592e178b6a8              # double 0.064294033095132819
	.quad	0x3fd632fd094087f6              # double 0.34686208632967863
	.quad	0x3fd13d6c435d8528              # double 0.26937395647662976
	.quad	0x3fe371e18a2c8491              # double 0.6076514910420362
	.quad	0x3fe5e89252db137c              # double 0.68464008505598839
	.quad	0x3fe36880d1197e32              # double 0.60650673713457182
	.quad	0x3fd881956df8f860              # double 0.38290916194444513
	.quad	0x3fc9bba69dfe8494              # double 0.20103914942322787
	.quad	0x3fdead448b76cf3c              # double 0.47932542438069325
	.quad	0x3fd7e325ab5e7402              # double 0.3732389615559556
	.quad	0x3fcd640fd0001eb0              # double 0.22961614280960907
	.quad	0x3fd51067242b55f2              # double 0.32912615329891459
	.quad	0x3fc352130622be48              # double 0.15094220923991686
	.quad	0x3feba0f43d5a115a              # double 0.86339771254328501
	.quad	0x3fee1f4d83afe4fb              # double 0.94132114143499679
	.quad	0x3fe3d096ab17b934              # double 0.6192124692586618
	.quad	0x3fe7553068b26de7              # double 0.72914905975943334
	.quad	0x3fe257e502a6ffa1              # double 0.57322931783709319
	.quad	0x3f92b4dcc15ce4a0              # double 0.018268060018475141
	.quad	0x3fb1125ebe8c7a98              # double 0.06668655540532098
	.quad	0x3fe5ac558b66fd95              # double 0.67728688456547792
	.quad	0x3fe0da1aa80d7d9e              # double 0.52662403891365606
	.quad	0x3fddebb6cc3e81ae              # double 0.46751184411734925
	.quad	0x3fefb6f29e789694              # double 0.99108248664261333
	.quad	0x3fefba4b93a1d6b0              # double 0.99149111589823313
	.quad	0x3fd1b72d124f72d2              # double 0.27680517948264793
	.quad	0x3feb25ca9cb62e55              # double 0.84836321456664143
	.quad	0x3f7b5e0e50810b80              # double 0.0066814955862949388
	.quad	0x3fda5eed0649c7d6              # double 0.41204381574709481
	.quad	0x3fdaa72021994070              # double 0.41645053177945268
	.quad	0x3fd9eb138f8e3ef2              # double 0.4049729253683686
	.quad	0x3fca54168d185314              # double 0.20569116486935768
	.quad	0x3fe565d30e9508ea              # double 0.66867974136428399
	.quad	0x3fe9cca84a2529c9              # double 0.80623259049871721
	.quad	0x3feac998ad026541              # double 0.83710893431558742
	.quad	0x3fbdbc4ec8ecd9c8              # double 0.11615459828758568
	.quad	0x3fed0267669e8eb9              # double 0.90654344599575787
	.quad	0x3fd053fff6943c64              # double 0.25512694435105332
	.quad	0x3fe0e843e79e1c05              # double 0.52835269201102675
	.quad	0x3fb12406ac8700e8              # double 0.066955964203774365
	.quad	0x3fc24a3ebd33c800              # double 0.14289077986137499
	.quad	0x3fea8230d170b15e              # double 0.82839241892137827
	.quad	0x3fccbd05eb857fbc              # double 0.22451852798530847
	.quad	0x3fec421b15ab7afe              # double 0.88306955559150402
	.quad	0x3f97f5dd17079f80              # double 0.023398832827211447
	.quad	0x3fe7a7247df41fec              # double 0.7391531429320799
	.quad	0x3fd61f9185138266              # double 0.34567678447459682
	.quad	0x3fec33d0e818fc01              # double 0.88132520038186624
	.quad	0x3f9232d54e084420              # double 0.017772038352692587
	.quad	0x3fc3a11fef36d3fc              # double 0.15335463695888041
	.quad	0x3fc7f4b35a140ae8              # double 0.18715516947130273
	.quad	0x3fe80aed23b671ee              # double 0.75133378005153673
	.quad	0x3fef1d4cc10b6bc9              # double 0.97232663826013621
	.quad	0x3fe68ad35867f43f              # double 0.70444648043451952
	.quad	0x3feff43e3a4500e5              # double 0.99856482868929374
	.quad	0x3fdf7c9179fc1564              # double 0.49197804367607589
	.quad	0x3fd017c20b0d95c6              # double 0.25145007209206616
	.quad	0x3fe09b3406f67407              # double 0.51894570693878073
	.quad	0x3fdfb0a8d30a8f88              # double 0.4951574383687718
	.quad	0x3fa4c76bf3faf720              # double 0.040583966763263257
	.quad	0x3fe9697986ddf1e4              # double 0.79412533131795415
	.quad	0x3fec5cc6a285d90a              # double 0.88632518522970938
	.quad	0x3fe5b9f12730fb77              # double 0.6789479985671808
	.quad	0x3fe29f6a882bc87b              # double 0.581959978064574
	.quad	0x3fd3169cbc7d5e94              # double 0.29825514228057526
	.quad	0x3fd2eb2b49c34ba6              # double 0.29560358241468021
	.quad	0x3fe2475ead9901c7              # double 0.57121213823125394
	.quad	0x3fd0cb8e3c576572              # double 0.26242404835428268
	.quad	0x3fbd047e943931e8              # double 0.11334982985244546
	.quad	0x3fea4efa32012b17              # double 0.82214078680530889
	.quad	0x3fea957051b9959f              # double 0.83074203454878048
	.quad	0x3fe95760dcac78c3              # double 0.79191630459151729
	.quad	0x3fe6e75871d7d869              # double 0.71574041590680537
	.quad	0x3fe0b56d4b1ce209              # double 0.52214684172128145
	.quad	0x3fd701bd529af97c              # double 0.35948117319994544
	.quad	0x3fbab47a2e1b02e0              # double 0.10431636453268878
	.quad	0x3fcd00affca5ab34              # double 0.22658347927366551
	.quad	0x3fbbd41b46ca2f58              # double 0.10870523908869012
	.quad	0x3fdad8db7babd0b0              # double 0.41948592259655992
	.quad	0x3fd9589046e38ebc              # double 0.39603049204582041
	.quad	0x3fe108c70e90f9fe              # double 0.53232148022635761
	.quad	0x3fee8e5d472b67b7              # double 0.95487846279433242
	.quad	0x3f88034abd69af40              # double 0.011725028901501511
	.quad	0x3fdec9f6d5956bb6              # double 0.48107691629200688
	.quad	0x3fe1c09a7accb836              # double 0.55476116165460243
	.quad	0x3fb2fabe3ea49b90              # double 0.074138536733342031
	.quad	0x3fda7e912eb4cf5c              # double 0.4139750438800911
	.quad	0x3fe69e342bee57b7              # double 0.7068119867351389
	.quad	0x3fe3e9bba9c8c2ad              # double 0.62228186760883875
	.quad	0x3fe135762500383a              # double 0.53777606226663655
	.quad	0x3fce50e5d1da5db8              # double 0.23684380289772178
	.quad	0x3fcb6897fe8b4520              # double 0.21412944725901983
	.quad	0x3fb68e4a7da51ce8              # double 0.088108688044588157
	.quad	0x3fe3991b4970cbdc              # double 0.61243976920956866
	.quad	0x3fd8d3b9f0b319ce              # double 0.38792274957486661
	.quad	0x3fd65904fb69bfc2              # double 0.34918331672724545
	.quad	0x3fc1affdf73e52e0              # double 0.13818335125383552
	.quad	0x3fe9712c5630dfaa              # double 0.79506508669054665
	.quad	0x3fd6f6fc7b2ec984              # double 0.35882484464232101
	.quad	0x3fd6968e29b78436              # double 0.35293916772758693
	.quad	0x3fd4009eab7d1cfe              # double 0.31253782984681766
	.quad	0x3fe26ec4601b975d              # double 0.576021373472695
	.quad	0x3fd68796eea44f80              # double 0.35202573113314628
	.quad	0x3fe177380210dc90              # double 0.54580307391633376
	.quad	0x3fbfa4a7ac9bd588              # double 0.12360618557052849
	.quad	0x3fe5ba6637ea24f9              # double 0.67900381966424483
	.quad	0x3fc1357dbcad0ea4              # double 0.13444492066093006
	.quad	0x3fe7b893f56b4456              # double 0.74128148969078711
	.quad	0x3f9c3c41654fb6e0              # double 0.027573606308513798
	.quad	0x3fe8691187d69fe1              # double 0.76282574206288356
	.quad	0x3fd916fd8691de6e              # double 0.39202821866590554
	.quad	0x3fe460e6c5651a10              # double 0.63682879022309358
	.quad	0x3fe3573ec448b13c              # double 0.6044000466986641
	.quad	0x3fdd7b5e1f5b83d0              # double 0.4606547647691146
	.quad	0x3fd005b624fae6c2              # double 0.25034860240303314
	.quad	0x3fe6922fe528f82f              # double 0.70534510381526683
	.quad	0x3faf8053a4923d80              # double 0.061525930251373318
	.quad	0x3fe64562fbc278e1              # double 0.69597005054290773
	.quad	0x3fd366eeb49a6eba              # double 0.30315749775921186
	.quad	0x3fe94e5be91a384a              # double 0.79081531074349098
	.quad	0x3fe1f9c92c35b32e              # double 0.56174143442840374
	.quad	0x3fd760db875cb9e8              # double 0.36528671473470675
	.quad	0x3fe8232715b6ed19              # double 0.75429109803318106
	.quad	0x3fe903e18186dc13              # double 0.78172374056055316
	.quad	0x3fdf286e02dd5974              # double 0.48684263496161084
	.quad	0x3fec3136073f7a2b              # double 0.88100720801941657
	.quad	0x3fb586dbf8d94770              # double 0.084089039091194583
	.quad	0x3fde4a26fba942fc              # double 0.47327589584624241
	.quad	0x3fca543e8b921e20              # double 0.20569593253115759
	.quad	0x3fd490272106a8a2              # double 0.32129839158245421
	.quad	0x3fd1b58f285aeeb2              # double 0.27670649472177467
	.quad	0x3fccfc28ea7acd30              # double 0.22644530724719791
	.quad	0x3fc393d900ba5304              # double 0.15294945273912941
	.quad	0x3fe533ac621c11bc              # double 0.66255778467216642
	.quad	0x3fd7d6375abf8578              # double 0.37244972097513296
	.quad	0x3fd26176debf9432              # double 0.28719875099915548
	.quad	0x3fd76850e5500392              # double 0.36574194330028675
	.quad	0x3fea604554d2bf84              # double 0.82425180975950285
	.quad	0x3fa2ecd19dc3ded0              # double 0.036963034161031083
	.quad	0x3fc8a6977a2e3e14              # double 0.19258397546626382
	.quad	0x3fd9b8d0562b8b60              # double 0.40190514006660827
	.quad	0x3fead8b7ddf7ff74              # double 0.83895486214895109
	.quad	0x3fef67bdf17e3bc1              # double 0.98141381422635032
	.quad	0x3fc3e7ec429ce0ac              # double 0.15551522495821268
	.quad	0x3fe68961f62cd94c              # double 0.7042703445538705
	.quad	0x3fdc2368c97f3240              # double 0.43966121365955146
	.quad	0x3f811bdc0a586dc0              # double 0.0083539190919087458
	.quad	0x3f8a026d13022640              # double 0.012699939863767828
	.quad	0x3feefad20ccc041b              # double 0.96811773776437648
	.quad	0x3fd387a844e9907a              # double 0.30515486459467633
	.quad	0x3fe5ba8fc1f60925              # double 0.67902362711928232
	.quad	0x3fdc94f8de26c40e              # double 0.44659253782725805
	.quad	0x3fcc0e8eef2a311c              # double 0.21919428518266038
	.quad	0x3fb65f2c81ce35c0              # double 0.087389737788007515
	.quad	0x3fc07469640e5be4              # double 0.12855260263015034
	.quad	0x3fcb7d44afb64ae4              # double 0.21476038531962793
	.quad	0x3fe74d3779a553e5              # double 0.72817586668918166
	.quad	0x3fbf582405d64180              # double 0.1224386705637297
	.quad	0x3faffdaeba64fba0              # double 0.06248231911967328
	.quad	0x3febef888585ee90              # double 0.87298990324730319
	.quad	0x3feb8eebab3dc1e3              # double 0.86119636006884226
	.quad	0x3fc47a71c141ed04              # double 0.1599867051735161
	.quad	0x3fc2206ee66e5500              # double 0.14161478282463946
	.quad	0x3fdb4faa4eba47e6              # double 0.42673738182304388
	.quad	0x3fd4e07f18703d58              # double 0.32620217691961306
	.quad	0x3fd50057d58d5208              # double 0.32814594130221098
	.quad	0x3fedb9188b9218ea              # double 0.92884471187497053
	.quad	0x3fcdbefaf6a26af4              # double 0.2323907570142506
	.quad	0x3fd0c967a3017c16              # double 0.26229277533087847
	.quad	0x3fcd4ddc863aa844              # double 0.22893864206463566
	.quad	0x3fe9888a0ea9421e              # double 0.79791739333638012
	.quad	0x3fe3bdf68acc3e30              # double 0.61693884953451139
	.quad	0x3fe09e34b08035c2              # double 0.51931223366562329
	.quad	0x3fee40d1d3829968              # double 0.94541255293442549
	.quad	0x3fea46b7a6f75446              # double 0.82113249407360267
	.quad	0x3fe0f12b66b76a72              # double 0.52943964063463356
	.quad	0x3fd961201ba3afd0              # double 0.39655306529197976
	.quad	0x3febfc15ae92a3d7              # double 0.87452205749752465
	.quad	0x3fd37af20f34a466              # double 0.30437900051999234
	.quad	0x3fe194d3eb6da8a7              # double 0.5494174574098637
	.quad	0x3fe02a372ff1cc5e              # double 0.50515326847233744
	.quad	0x3f9896b77f2d0880              # double 0.024012438904954525
	.quad	0x3fe2d34ecc5443fd              # double 0.58829440982856307
	.quad	0x3fe2eb2c516a3b89              # double 0.59120765591966162
	.quad	0x3fedbc7bf4f7d754              # double 0.92925832600915692
	.quad	0x3fea620759df78cc              # double 0.8244663958864975
	.quad	0x3fb870f8ff698d50              # double 0.095473825794717415
	.quad	0x3fc168cb51a122c4              # double 0.1360105656224474
	.quad	0x3fcd61d113b78484              # double 0.22954762900102221
	.quad	0x3feda772d9418d56              # double 0.92669050629448679
	.quad	0x3fba9c6673b807d0              # double 0.10394897771041589
	.quad	0x3fa4196be50ded80              # double 0.039256450377219032
	.quad	0x3fabe751e93547e0              # double 0.054499206273831424
	.quad	0x3fe21b334c80b960              # double 0.56582035963019095
	.quad	0x3fef042dd8e1336c              # double 0.96926014289202333
	.quad	0x3fb85022b5058358              # double 0.094972771830282965
	.quad	0x3fc490bf3a43ef90              # double 0.16066732735623335
	.quad	0x3fe156a1ab2c109b              # double 0.54182513649040531
	.quad	0x3faf57289351a960              # double 0.061211841567301972
	.quad	0x3fc9d75c09c4d41c              # double 0.20188475110049431
	.quad	0x3fe9979f608907f3              # double 0.79975861410662075
	.quad	0x3fc8b58af1148f58              # double 0.19304024478435156
	.quad	0x3f702c0b852e4300              # double 0.0039482545861495577
	.quad	0x3feaaca8da479099              # double 0.83357660896992336
	.quad	0x3fd5e41227ff8b3a              # double 0.34204534441066736
	.quad	0x3fdf4e47ece16782              # double 0.48915289051875999
	.quad	0x3fefa929f300b3b8              # double 0.9893998857638655
	.quad	0x3fe44533337cc2e9              # double 0.63344726616022939
	.quad	0x3fef4d399518ef01              # double 0.97817687149606069
	.quad	0x3fd36c983f4d2642              # double 0.30350309545301368
	.quad	0x3fe2f7a9e56a8d93              # double 0.59273237998825079
	.quad	0x3fadbd4105816980              # double 0.058084518358287873
	.quad	0x3fd1d3359ff6e872              # double 0.27851620313197778
	.quad	0x3febba7d53aebf19              # double 0.86651483864077072
	.quad	0x3fe6ee9389d229f6              # double 0.716623086148785
	.quad	0x3fda44d4f4bc891a              # double 0.41045116329236608
	.quad	0x3feea32b1ca09346              # double 0.95741801825770589
	.quad	0x3fe32087cf09513f              # double 0.59772100865169608
	.quad	0x3fe00dff289c904b              # double 0.50170858318279821
	.quad	0x3fca85b2e9bd4c08              # double 0.20720516598757421
	.quad	0x3fd54dd2e9e3933e              # double 0.33287499275893484
	.quad	0x3fddf81328c9941c              # double 0.46826628668924442
	.quad	0x3fe9a841dd0551c4              # double 0.80178921859856489
	.quad	0x3fe6793a11a3929a              # double 0.70229819722279108
	.quad	0x3feaf5041c37ced2              # double 0.84240918647125285
	.quad	0x3fea4e41edfeb5c2              # double 0.82205292209044267
	.quad	0x3fbcaff673bf4f28              # double 0.11205997777807097
	.quad	0x3fd00a84878b5b38              # double 0.25064194905046433
	.quad	0x3fa814961023fac0              # double 0.047032060117989882
	.quad	0x3fe983727bc89436              # double 0.79729580093829244
	.quad	0x3fe9a15158b1c9c4              # double 0.8009421093286666
	.quad	0x3fc21be4168b4d4c              # double 0.14147616482532965
	.quad	0x3fe09e8949181a97              # double 0.51935257221414843
	.quad	0x3fe90637a33ae608              # double 0.78200895195840392
	.quad	0x3fea14be8f85b24b              # double 0.81503227264108469
	.quad	0x3fe2d126a2a9ea16              # double 0.58803111810931585
	.quad	0x3f87d31eabc72080              # double 0.011633147828334467
	.quad	0x3fda555517182e02              # double 0.41145827536885815
	.quad	0x3fecc3f3082a088f              # double 0.89891959757393802
	.quad	0x3febae37ef5e6a2e              # double 0.86501690627784966
	.quad	0x3fe7c37585c7f2f0              # double 0.74260975007163488
	.quad	0x3fef3fb130961239              # double 0.97652492036338067
	.quad	0x3fda2d7445223b4a              # double 0.40902430297221726
	.quad	0x3fd47f159a2900a4              # double 0.32025661520675386
	.quad	0x3fe977727659fda8              # double 0.79583094707043234
	.quad	0x3fe1a4079cc14cae              # double 0.55127316108918989
	.quad	0x3fcf78f8e26c0aec              # double 0.24587927871478799
	.quad	0x3fdfed09a1b7439a              # double 0.49884262840810722
	.quad	0x3fe20c4d8135cecf              # double 0.5640018008839095
	.quad	0x3fe7a623865063d1              # double 0.73903061135490067
	.quad	0x3fb2b0a1f08bb518              # double 0.073007699229226453
	.quad	0x3fda2bd4c6f30fea              # double 0.40892524174364431
	.quad	0x3fdd8eb49cfc2cfe              # double 0.46183505373546996
	.quad	0x3fc364d3a6d40708              # double 0.15151448865804462
	.quad	0x3fec1fef173d72f3              # double 0.87889818705624945
	.quad	0x3fe637c8396c08bb              # double 0.69430934157596569
	.quad	0x3fef4b964508d72d              # double 0.97797692759806909
	.quad	0x3fe72491bd68f657              # double 0.72321402544157365
	.quad	0x3fe5f238c92ccc6d              # double 0.68581809322348664
	.quad	0x3fba27a874620748              # double 0.10216763345127078
	.quad	0x3fc188b0179740d4              # double 0.13698388244529858
	.quad	0x3fb501d33e0f7c08              # double 0.082059099818693082
	.quad	0x3fe9370627caa138              # double 0.78796680232793559
	.quad	0x3feec605211bf824              # double 0.96167236773158437
	.quad	0x3fef2ab58ab6b23b              # double 0.97396351902495525
	.quad	0x3fb5620667c37900              # double 0.083526993115331294
	.quad	0x3fe134e904333775              # double 0.53770876713109195
	.quad	0x3fdfaccf2521a2c6              # double 0.49492243410217573
	.quad	0x3fe986222de90c4d              # double 0.79762371985305835
	.quad	0x3fdd69b473ac8648              # double 0.45957671448022497
	.quad	0x3fca63e2d2a08394              # double 0.20617327961465703
	.quad	0x3fed8c3934c0b299              # double 0.92336712172762525
	.quad	0x3fdbc96586e56838              # double 0.43416727231454244
	.quad	0x3fe4aedc8c585e7a              # double 0.64634539996309504
	.quad	0x3fe9758d792ebaf6              # double 0.7955996863218775
	.quad	0x3fd0478905a2dab0              # double 0.25436616468816009
	.quad	0x3fc000f3abe8f25c              # double 0.12502904790916858
	.quad	0x3fe1e4493590eef0              # double 0.55911694013727065
	.quad	0x3fc07c89899ef6d4              # double 0.12880057544491896
	.quad	0x3fd8892ee4b6d8c4              # double 0.38337299666762825
	.quad	0x3fe1db1aa2ac69d1              # double 0.55799609920659965
	.quad	0x3fbc483103e1e2a8              # double 0.11047655434402748
	.quad	0x3feb077bdc55e2e3              # double 0.84466355356479672
	.quad	0x3fb9b8ea6c278b80              # double 0.10047783985605285
	.quad	0x3fe605a57a9d4dbd              # double 0.68818925808084652
	.quad	0x3fe25ee096416b0f              # double 0.57408170077118992
	.quad	0x3fe9f411e6950c2b              # double 0.8110436919745373
	.quad	0x3fc5da822c7ebd60              # double 0.1707308499585265
	.quad	0x3fa2383aadaee230              # double 0.035585244847826991
	.quad	0x3fea75d83d4a2844              # double 0.82688533754959125
	.quad	0x3fe118eff3b6630d              # double 0.53429410553062129
	.quad	0x3fe85ba16a1fd358              # double 0.76118536689191796
	.quad	0x3fc756fe3bb111e0              # double 0.18234231867439998
	.quad	0x3fd6708cf7f3d330              # double 0.35061954702478015
	.quad	0x3fd07925aff3e4a8              # double 0.25739423926240557
	.quad	0x3fee55e3945a9f67              # double 0.94798449492826087
	.quad	0x3fadc9f5b4c7cb10              # double 0.058181455915379598
	.quad	0x3fed7e2c7fc88915              # double 0.92165207822498252
	.quad	0x3fee57fcf242ace8              # double 0.94824073139662079
	.quad	0x3faabbfa84fcb300              # double 0.052215412839677455
	.quad	0x3fe89ea1b848430d              # double 0.76936422340995281
	.quad	0x3fe4d064321f159b              # double 0.65043840207424652
	.quad	0x3fee7d6b831edf2d              # double 0.95281005486956405
	.quad	0x3fe1fc25f9c5a484              # double 0.56202982696153514
	.quad	0x3fd4d45a77ed1fa6              # double 0.32546102248715625
	.quad	0x3fb4bc776e365848              # double 0.081000770957275425
	.quad	0x3fe79c338df5ba2c              # double 0.73781755186593534
	.quad	0x3fee5787e4ffe489              # double 0.948184916748816
	.quad	0x3fb722293aa4f1e8              # double 0.090365006272754678
	.quad	0x3fe9bf1d86dbd36b              # double 0.80457950915898147
	.quad	0x3fca0ee992e09c4c              # double 0.20358009025332746
	.quad	0x3fa8543893731c80              # double 0.047517555236077591
	.quad	0x3fd96f071f7f6d52              # double 0.39740160060838037
	.quad	0x3fdde4fb63adb964              # double 0.46710095152129427
	.quad	0x3fe479deda907e33              # double 0.63987677276958832
	.quad	0x3fd0be1a91143e0e              # double 0.26160301368597139
	.quad	0x3fe05f8d3a2779c2              # double 0.51166402204744821
	.quad	0x3f909624944d7440              # double 0.016197749663991567
	.quad	0x3fc688b3f5b62ce4              # double 0.17604684350622002
	.quad	0x3fe2c58629aab8e4              # double 0.58661182535231804
	.quad	0x3fe0f61e2d69351c              # double 0.53004368657426282
	.quad	0x3fdb94358680855e              # double 0.43092096457447393
	.quad	0x3fef0a0e70f17832              # double 0.9699775892183935
	.quad	0x3fe4872592056f05              # double 0.64149740714808046
	.quad	0x3fe6a39129cf45e3              # double 0.7074666802020001
	.quad	0x3fd286b547cf8fc8              # double 0.28947193157932505
	.quad	0x3fec16eaf2cd4946              # double 0.87779757902379951
	.quad	0x3fe9d9dca196d7cc              # double 0.80784446297070067
	.quad	0x3fc03d625b3b2cf8              # double 0.12687329725881802
	.quad	0x3fda4d035a2e48de              # double 0.41095050627440155
	.quad	0x3fe16fce34659c2e              # double 0.54489813073894822
	.quad	0x3fcbba9712063f78              # double 0.21663177852724025
	.quad	0x3fcc117a8d9a4e90              # double 0.21928340830037429
	.quad	0x3fcfff972e27c114              # double 0.24998750451732887
	.quad	0x3fdab1972a53701c              # double 0.41708926328078788
	.quad	0x3fef1d504f052916              # double 0.97232833322167056
	.quad	0x3fd8c5e4de73888c              # double 0.38707849239120473
	.quad	0x3fee00ea14ca3c82              # double 0.93761161861938569
	.quad	0x3fc0a552358b5d8c              # double 0.13004520048592061
	.quad	0x3fdf83259229f698              # double 0.49237956308193409
	.quad	0x3fef0585982a7651              # double 0.96942405433555667
	.quad	0x3fe9ea10945ab0da              # double 0.80982235885087595
	.quad	0x3fe6b180f79305d7              # double 0.70916794161183361
	.quad	0x3f72907677ac2f80              # double 0.0045323016772832458
	.quad	0x3fe204e56c3babff              # double 0.56309767855907455
	.quad	0x3fe2026255187338              # double 0.56279102916923929
	.quad	0x3fe7e3e5c46818d3              # double 0.7465695224825829
	.quad	0x3fecc3eb571c94e0              # double 0.89891592992776381
	.quad	0x3fe027018f3ec243              # double 0.50476148583954517
	.quad	0x3fca2651ec2bd504              # double 0.20429443389699753
	.quad	0x3fe89fd1f414a68b              # double 0.76950929328923345
	.quad	0x3fecf981716b3db5              # double 0.90545723106509135
	.quad	0x3fdd061c97859ee8              # double 0.45349802777353299
	.quad	0x3fdf7c6125fc81d4              # double 0.49196652135472374
	.quad	0x3feaabc0d8a93cd5              # double 0.83346597973459302
	.quad	0x3fc5295f35c88bec              # double 0.16532507063047264
	.quad	0x3fc6526aee7d0258              # double 0.17439018864571909
	.quad	0x3fea5a045b6f1db9              # double 0.82348840578281746
	.quad	0x3fe77033f2454420              # double 0.73244664495917177
	.quad	0x3fd3fb3b31f6b592              # double 0.3122089374472462
	.quad	0x3fd33de7a1962078              # double 0.3006533697121152
	.quad	0x3fe05088e68b020a              # double 0.50983090427331601
	.quad	0x3fd5e1b0ebde060c              # double 0.34190009149469414
	.quad	0x3fe26487a25b4543              # double 0.57477170667895228
	.quad	0x3fddfe75377edd64              # double 0.46865587634552797
	.quad	0x3faae5e1476300d0              # double 0.052535095180702762
	.quad	0x3feb940793d11129              # double 0.86182001944010722
	.quad	0x3fd4085d995481f4              # double 0.31301059697764733
	.quad	0x3fd6e3ce73c94914              # double 0.35765420253041325
	.quad	0x3fd9cc5ace0db7de              # double 0.40309782144947615
	.quad	0x3fedc496bf26b0cc              # double 0.93024766287046523
	.quad	0x3fbe73227bfd6718              # double 0.11894431616874745
	.quad	0x3fd2ea41485ddf38              # double 0.29554779116687113
	.quad	0x3fe31bdc83840ad5              # double 0.59715104757955351
	.quad	0x3fbce15358675a58              # double 0.11281319530767442
	.quad	0x3fedd03f189efec9              # double 0.93167071160129311
	.quad	0x3fde908c60f1fe6a              # double 0.47757253138840972
	.quad	0x3fe1ff32ec7a6692              # double 0.56240221202024743
	.quad	0x3fe403aa14e5bcc4              # double 0.62544731217885685
	.quad	0x3fcb11cc5e74b1bc              # double 0.21148066150762002
	.quad	0x3fd727a3e9f10dfa              # double 0.36179445119725495
	.quad	0x3fedaaf79f7a820b              # double 0.92712002895501777
	.quad	0x3fddab50bb45c568              # double 0.46358125961622543
	.quad	0x3fd453c37a1bbb50              # double 0.31761252331391621
	.quad	0x3fd6296eacd3b8c2              # double 0.3462788284076731
	.quad	0x3feaa7ce56a450da              # double 0.83298413202512767
	.quad	0x3fe769c4fa730003              # double 0.73166130939353058
	.quad	0x3fe43740ea58fdf4              # double 0.63174482127209197
	.quad	0x3fefb30a3db779a6              # double 0.99060546926539383
	.quad	0x3fdcfc154827de60              # double 0.45288593336542782
	.quad	0x3fe776af872e0a56              # double 0.73323799516976851
	.quad	0x3fe2c04a3c176ff9              # double 0.58597289787894546
	.quad	0x3fe639d70e19c9d3              # double 0.69456055406618089
	.quad	0x3fb98c8ddbb7ac10              # double 0.099800935880623109
	.quad	0x3feb420e89052a17              # double 0.85181357156517634
	.quad	0x3feb4a772fcf1926              # double 0.85284003579798617
	.quad	0x3fb1ed0153a8d2e8              # double 0.070022662090945098
	.quad	0x3fd0cc220eeb107c              # double 0.26245929200036477
	.quad	0x3fe307347c4f97e9              # double 0.59462951926684326
	.quad	0x3fe46472f1835aa5              # double 0.63726184053924284
	.quad	0x3fdb978fa61e453e              # double 0.43112555716023226
	.quad	0x3fc82fe6d1151fc4              # double 0.18896184167010521
	.quad	0x3fe15d94918152f1              # double 0.54267338198641657
	.quad	0x3fe77a67c6bdbc90              # double 0.73369206253654973
	.quad	0x3fdcba15928a6fec              # double 0.44885768232938861
	.quad	0x3fc80cc3b70bdd14              # double 0.18788954198655772
	.quad	0x3fd86ba8a2920ad6              # double 0.38157096744559504
	.quad	0x3fca0ef4dc360d6c              # double 0.20358143570420439
	.quad	0x3fe0fe64f230fafa              # double 0.53105399420732557
	.quad	0x3feec64c23d58e9d              # double 0.96170622824543594
	.quad	0x3fcda911edf1f704              # double 0.23172210806290405
	.quad	0x3fb7386122ea3880              # double 0.090704031967307585
	.quad	0x3fc3cd6aa91d4598              # double 0.15470631845032012
	.quad	0x3fe1b8272d9fda7f              # double 0.55372961913128893
	.quad	0x3fc873c836443fc0              # double 0.19103338861213892
	.quad	0x3fd8c7e53c26d782              # double 0.38720064996902448
	.quad	0x3fdeb9cef7734ad8              # double 0.48009084858965201
	.quad	0x3fc6c129976e8654              # double 0.17776985067489426
	.quad	0x3fe8f39179cb23ca              # double 0.77973245418353909
	.quad	0x3fb201c2e9d0ed38              # double 0.070339376529706565
	.quad	0x3fc3f723e1657458              # double 0.15597961908034352
	.quad	0x3fe613f5c626e2f0              # double 0.68993653012793565
	.quad	0x3fe15b821f120162              # double 0.54242044514107257
	.quad	0x3fef850994ed50f7              # double 0.98498992049510902
	.quad	0x3fd0cc27d1189986              # double 0.26246066493549625
	.quad	0x3fd9965b6bdd9554              # double 0.39980206998582912
	.quad	0x3fb954a567506ae8              # double 0.098947847102333619
	.quad	0x3fe81fb015fcb373              # double 0.75386814398153346
	.quad	0x3fe8b7841af4eaf7              # double 0.77240185990316845
	.quad	0x3fd59132bedd7632              # double 0.33698719634216723
	.quad	0x3fe0dee3f2431a28              # double 0.52720830265827079
	.quad	0x3fe50210943e2abb              # double 0.65650204614333718
	.quad	0x3fefa0ad4dd2b4f6              # double 0.98836388778513995
	.quad	0x3fc2607e07a0f734              # double 0.1435697114229072
	.quad	0x3fd9251e97f835e4              # double 0.39289059487131639
	.quad	0x3fc91c1e5af25f8c              # double 0.19617061081657672
	.quad	0x3fe2e391e57e3b9e              # double 0.59027952978964371
	.quad	0x3fbc5bff08da41f8              # double 0.11077875105025459
	.quad	0x3fdfae20a5e040b0              # double 0.49500290106608258
	.quad	0x3fd396383515bb9c              # double 0.30604367431708979
	.quad	0x3fe1c56f26da36fa              # double 0.55535085285529751
	.quad	0x3fed5b285dfb4a10              # double 0.91737764697819735
	.quad	0x3fe332deede0d66c              # double 0.5999598165569302
	.quad	0x3fe5b2f2945bd028              # double 0.67809418655679554
	.quad	0x3fe8b2b5b66bc360              # double 0.77181516293613228
	.quad	0x3fd551426fc092e0              # double 0.33308468735985564
	.quad	0x3fe9932b9da87eff              # double 0.79921513359656149
	.quad	0x3fd9140325a7214c              # double 0.3918464534476882
	.quad	0x3fda23f9b30bdb1a              # double 0.40844576344481853
	.quad	0x3fe897f257e06a12              # double 0.76854817546274234
	.quad	0x3fef69745b9a77a1              # double 0.98162286654745767
	.quad	0x3fbd2c9771b987d8              # double 0.11396166349871295
	.quad	0x3fea8b61384b2fb7              # double 0.82951413149702702
	.quad	0x3fe1f4f88c1d317c              # double 0.56115367284796447
	.quad	0x3fee088daad46c3b              # double 0.93854411473456112
	.quad	0x3fe8dee4d981563c              # double 0.77720873338211715
	.quad	0x3fcc16eff6b9a578              # double 0.21944999262931808
	.quad	0x3fed49d17eaaf3e0              # double 0.91526102771569739
	.quad	0x3fed7ab502eaa59a              # double 0.92122889108320583
	.quad	0x3fe2e71ccabdece6              # double 0.59071197126413888
	.quad	0x3fe7eac90b6e7023              # double 0.74741031868643792
	.quad	0x3fe8cce0b0e359d3              # double 0.7750094847531791
	.quad	0x3fec1d370115f3a4              # double 0.87856626712856611
	.quad	0x3fd6c2b9fb0e8bf2              # double 0.35563516156452046
	.quad	0x3fe3d4cccea7bce2              # double 0.61972656595562747
	.quad	0x3fee561a881bf3af              # double 0.94801069816423034
	.quad	0x3fefa51d184e5c51              # double 0.98890547511371995
	.quad	0x3fcc7a47c8cd85a4              # double 0.22248170189690797
	.quad	0x3fa297b0cfc34ad0              # double 0.03631355796973923
	.quad	0x3fe0bf6663e74e8b              # double 0.52336425316248503
	.quad	0x3fbe84e4d1816e20              # double 0.11921529879457937
	.quad	0x3fe77b968841a043              # double 0.73383642780846292
	.quad	0x3fdbdf6b8b3e46f6              # double 0.43551148031211484
	.quad	0x3fa2c30a6037fdf0              # double 0.03664429115815071
	.quad	0x3fee391af820f742              # double 0.94447086775446842
	.quad	0x3fd4b71a844456a4              # double 0.32367575566000029
	.quad	0x3fbddfd04b552de0              # double 0.11669637526681909
	.quad	0x3fcfc59ca91e12e4              # double 0.24821813829125638
	.quad	0x3fed873d99fadd61              # double 0.92275886606413959
	.quad	0x3fe3436483d81315              # double 0.60197664023198405
	.quad	0x3fc185bd2b4e8d8c              # double 0.13689388861267238
	.quad	0x3fcaae5705be5708              # double 0.20844543247647374
	.quad	0x3fe5f49e929ef029              # double 0.68611076962361495
	.quad	0x3fee26f87e4e1ec5              # double 0.94225716275192239
	.quad	0x3fb78191facaf788              # double 0.091820834854813183
	.quad	0x3fd3fab75cad0cf2              # double 0.31217750597370675
	.quad	0x3fea67ea5374f5f4              # double 0.8251849775330684
	.quad	0x3fdb3e1233849ca4              # double 0.42566351920181433
	.quad	0x3fe2442b8a10faab              # double 0.57082154241637306
	.quad	0x3fe84de428c0327e              # double 0.75950820883879522
	.quad	0x3fd39774f27aae24              # double 0.30611919097529694
	.quad	0x3fcd128992d1c064              # double 0.22712821644700221
	.quad	0x3fddded2ea660c86              # double 0.4667250908898456
	.quad	0x3fc58561b02e1118              # double 0.16813298323189296
	.quad	0x3fe55958d2c5e620              # double 0.66715661207780741
	.quad	0x3fd36d4d2b40f3bc              # double 0.30354623054500585
	.quad	0x3fdf4c1579d489a6              # double 0.48901879212840027
	.quad	0x3fd0ad641fc26828              # double 0.26058295346740801
	.quad	0x3fe5b2a16e55c2a6              # double 0.67805549192242576
	.quad	0x3fd39934e4831074              # double 0.30622598949071933
	.quad	0x3fed325d4950d9f7              # double 0.91239799804208033
	.quad	0x3fe994f44f258627              # double 0.79943290193859162
	.quad	0x3fe98aa39da84291              # double 0.79817372124132835
	.quad	0x3fed880ff0b430f2              # double 0.92285916340327234
	.quad	0x3fd5a5014bae5290              # double 0.33819610968320379
	.quad	0x3fde24cd283f7966              # double 0.47099617891753665
	.quad	0x3fe077f1dd987d65              # double 0.51464169769671442
	.quad	0x3fc004536d19dc18              # double 0.12513201548765163
	.quad	0x3f9b83c4c9fed820              # double 0.026869845227075584
	.quad	0x3fea48887871edc0              # double 0.821354136699874
	.quad	0x3fd0ac8f97974892              # double 0.26053228191188638
	.quad	0x3fcdf120b52ce2c0              # double 0.23392113539173032
	.quad	0x3fde09f696e1aa6e              # double 0.46935810789606236
	.quad	0x3fe4de2d22911dd0              # double 0.65212113143291539
	.quad	0x3fdfb22e692e6888              # double 0.49525032302484151
	.quad	0x3fe1f65e778f8072              # double 0.56132434226675643
	.quad	0x3fee4b180e8e8552              # double 0.94666674464330414
	.quad	0x3feb6180e761b7d6              # double 0.85565228645077229
	.quad	0x3fe3366e0dcaabe9              # double 0.6003942746514187
	.quad	0x3fe25e87d5a1f610              # double 0.5740393803131969
	.quad	0x3fd7e0396deba592              # double 0.37306056723044734
	.quad	0x3fc543c8534c97a8              # double 0.16613105838149278
	.quad	0x3fe90f3e53339559              # double 0.78311077356617453
	.quad	0x3fdf39f82081b692              # double 0.48791316198808332
	.quad	0x3fe7d04f2ae30035              # double 0.74417837501824258
	.quad	0x3fed6984bc4dc784              # double 0.91913067606059017
	.quad	0x3fe3bd536391a45b              # double 0.61686105200818575
	.quad	0x3f9b73f052aba5c0              # double 0.026809458776289707
	.quad	0x3fedfa04455d3534              # double 0.93676961467432429
	.quad	0x3fcf90a05106798c              # double 0.24660114246666998
	.quad	0x3fc293f84c4270d0              # double 0.14514068339929631
	.quad	0x3fdfd88930cb76d4              # double 0.49759130253901884
	.quad	0x3fdf02b523cbf3ae              # double 0.48454025741358009
	.quad	0x3fd146236f47611c              # double 0.26990590922425084
	.quad	0x3fb5fd0da5298d68              # double 0.085892536948042442
	.quad	0x3fe9e0e1c6042162              # double 0.80870140719438788
	.quad	0x3fe4b4bcf7dfdc3d              # double 0.64706276333789214
	.quad	0x3fc8647838359f3c              # double 0.19056608910181605
	.quad	0x3fedcf2532021156              # double 0.93153629080965561
	.quad	0x3feac2f18c3a5a85              # double 0.83629681957502611
	.quad	0x3fd8dbf77a5ff4b2              # double 0.38842570257822751
	.quad	0x3fd5fd7df50b6784              # double 0.34359692506915729
	.quad	0x3fbf1f5c51edb480              # double 0.12157227516373048
	.quad	0x3fd60f1252e8858e              # double 0.34466989609253396
	.quad	0x3fe93cc4eaacdc9a              # double 0.78866811594970732
	.quad	0x3feaf3c11bd3b5a0              # double 0.84225516734084138
	.quad	0x3fa4aaf771c8ac30              # double 0.040366871490128964
	.quad	0x3fb1d17f98c583d0              # double 0.069602942273845558
	.quad	0x3fddcb8289e27b6c              # double 0.46554625954916307
	.quad	0x3fb5ed0abdca3c28              # double 0.085648223243183552
	.quad	0x3fdec2e8a12609e8              # double 0.48064628350417005
	.quad	0x3fe59d2ad3a7db7d              # double 0.67543546046259417
	.quad	0x3fede113c7b1d26c              # double 0.9337252521787156
	.quad	0x3fc469d740f16d10              # double 0.15948000594185219
	.quad	0x3feaddb9ee14bd61              # double 0.83956619739721472
	.quad	0x3fe31403f48492b1              # double 0.59619329221148665
	.quad	0x3fdf4ee33b1fb982              # double 0.48918991826840152
	.quad	0x3fd89b79312ac43c              # double 0.38448934365721121
	.quad	0x3fcdf6eb0344a808              # double 0.23409783992366351
	.quad	0x3fd336eac011b27a              # double 0.30022686726332604
	.quad	0x3fe0ae4f1f72179a              # double 0.52127796308262764
	.quad	0x3fe873800fe4d0c6              # double 0.76409915069827927
	.quad	0x3feed204f5f38201              # double 0.963137131093447
	.quad	0x3fd24e15714ee44c              # double 0.28601585450411871
	.quad	0x3fc0169698b437cc              # double 0.12568933922051284
	.quad	0x3fd204dbef9c6c0a              # double 0.2815465774489786
	.quad	0x3fef7105b1ff6e9e              # double 0.98254666104499555
	.quad	0x3fc38bb1f32a7e64              # double 0.15270065663661392
	.quad	0x3fe8b98f5199a049              # double 0.77265134751815723
	.quad	0x3feb94b8a1e98696              # double 0.86190444587210169
	.quad	0x3fe86fcc9e380220              # double 0.76364737417322103
	.quad	0x3fe292e1f006d7b9              # double 0.58043000107021847
	.quad	0x3fad99afd1b10960              # double 0.057813162181008293
	.quad	0x3fd89dc1745a2702              # double 0.38462864267840768
	.quad	0x3fdbbd04249cef52              # double 0.43341163230410473
	.quad	0x3fba477cc9aecfe0              # double 0.10265331195733962
	.quad	0x3fea8405ff7b857f              # double 0.82861614130904104
	.quad	0x3fe3601cffdcf023              # double 0.60548257802247851
	.quad	0x3febe605608490f2              # double 0.87182873583927134
	.quad	0x3fe9eaa8029ada0c              # double 0.80989456661956316
	.quad	0x3fcecb98283a8ea0              # double 0.24058820690435301
	.quad	0x3fda490547f9c78e              # double 0.41070682553174087
	.quad	0x3fe47576ba4d045f              # double 0.6393388403595387
	.quad	0x3fec3ef9364905d2              # double 0.88268719294154097
	.quad	0x3fc60a644b45b6d0              # double 0.17219213176161086
	.quad	0x3f55d1400b500600              # double 0.0013316274100819703
	.quad	0x3fbe2e1e52552b88              # double 0.11789121160579275
	.quad	0x3fee44a36b4f9d76              # double 0.94587870558909404
	.quad	0x3fe335a987e832f3              # double 0.6003005651888017
	.quad	0x3fd4dd9e5613569c              # double 0.32602651983084185
	.quad	0x3fe901cbd686f42d              # double 0.78146926784359538
	.quad	0x3fe4e9ff9fd866f6              # double 0.6535642740229537
	.quad	0x3fe202d3172ca838              # double 0.56284479643114249
	.quad	0x3fe5246b712f76b6              # double 0.66069576365017357
	.quad	0x3fdaf700653516e4              # double 0.42132577785046821
	.quad	0x3fd32a2db7828e0a              # double 0.29944937630554647
	.quad	0x3fc1dad00981e994              # double 0.13949013199073745
	.quad	0x3fd4fb5dcf0a7638              # double 0.32784218996843917
	.quad	0x3fe2993400d72270              # double 0.58120155491003622
	.quad	0x3fd1640942412f7c              # double 0.27173072309664525
	.quad	0x3fd9e33565fe9a10              # double 0.4044927116432584
	.quad	0x3fea1f014183d60d              # double 0.81628477855582704
	.quad	0x3fea82434514af14              # double 0.82840121738761007
	.quad	0x3fce3835ac794af0              # double 0.23609038278171779
	.quad	0x3fe0df2f5e0bcecb              # double 0.52724426620849252
	.quad	0x3fc3cbb225ad0320              # double 0.15465380515709004
	.quad	0x3fcd786ebe416910              # double 0.230237810991476
	.quad	0x3fb251ca5970ffe8              # double 0.071560522877006982
	.quad	0x3fdd62fa3f36e816              # double 0.45916610883034659
	.quad	0x3fe1ecde61240ca6              # double 0.56016463253799453
	.quad	0x3fe9db2b7220a577              # double 0.80800411501438318
	.quad	0x3fc733a6875034fc              # double 0.18126374823660985
	.quad	0x3fa15699c8cf6520              # double 0.033863836062389518
	.quad	0x3fe181464b0a0db1              # double 0.54703058868510912
	.quad	0x3fe8bd8eb8835b99              # double 0.77313934362142611
	.quad	0x3fcdaec1e4ca2c7c              # double 0.23189567252515875
	.quad	0x3feec0e04522062a              # double 0.96104444029351055
	.quad	0x3fd00dd807f6ac3e              # double 0.25084496286098446
	.quad	0x3fe5e1ddedda91dc              # double 0.68382164436166759
	.quad	0x3fca9af979bdda70              # double 0.207854446834705
	.quad	0x3fe82ed0ada32e39              # double 0.75571473992881188
	.quad	0x3fe26025ce3b1051              # double 0.5742367771094995
	.quad	0x3fdee48706000e40              # double 0.48269820772131666
	.quad	0x3feb93803cae9e5c              # double 0.86175548412297642
	.quad	0x3fb8c17cb58b0ea0              # double 0.096702379533832871
	.quad	0x3febbfb9fd5be51f              # double 0.86715411647961449
	.quad	0x3fccfbfdc14bf608              # double 0.22644016207043216
	.quad	0x3fe11ddd6ca8bc84              # double 0.53489562246785782
	.quad	0x3fef5946e6d45395              # double 0.9796480663668371
	.quad	0x3fef8f0cfbaaed66              # double 0.98621224550099096
	.quad	0x3fd7f1c0879da718              # double 0.37413037532552229
	.quad	0x3fd4e6e1fd078738              # double 0.32659196576979665
	.quad	0x3fe5bc81bb471823              # double 0.67926107957533011
	.quad	0x3fde1badb740a2d6              # double 0.47043936630011041
	.quad	0x3fefc586dd3bc92a              # double 0.99286215982127612
	.quad	0x3fd9d1c3e522e254              # double 0.40342805267895199
	.quad	0x3fe7003aa1fccf09              # double 0.71877795828047042
	.quad	0x3fefa510cc81ca00              # double 0.98889961188098141
	.quad	0x3fd0bcd754ff13d0              # double 0.26152594852856925
	.quad	0x3fee9882058738ec              # double 0.95611668662766424
	.quad	0x3fa81218f452a390              # double 0.047013072800218159
	.quad	0x3fe7ca6619079965              # double 0.74345688713655689
	.quad	0x3fdcc724841d1c32              # double 0.44965470220307957
	.quad	0x3fd081b0d0248f00              # double 0.25791569067426678
	.quad	0x3fb5d72e967c4350              # double 0.085314666499710201
	.quad	0x3fd34de3a9b17186              # double 0.30162898608775668
	.quad	0x3fb25ff3cd707990              # double 0.071776616722195152
	.quad	0x3fdea9121eb56c88              # double 0.47906926154036755
	.quad	0x3fda2acff0314ab8              # double 0.40886305290511471
	.quad	0x3fed4bc0a0ba9e79              # double 0.91549712555293106
	.quad	0x3fc4968bdf194f44              # double 0.16084431069850258
	.quad	0x3fe786f0913d1867              # double 0.73522213332104236
	.quad	0x3fec010cc1e801c6              # double 0.87512815353698481
	.quad	0x3fdb217b775496de              # double 0.42391859677660004
	.quad	0x3fc3709f50ee2db0              # double 0.15187446071318567
	.quad	0x3fcbe73400114540              # double 0.21799325946134651
	.quad	0x3fc8140ae7517210              # double 0.18811165137130148
	.quad	0x3fec5bec0e5c2c63              # double 0.88622095875451767
	.quad	0x3fe3675af16d335f              # double 0.60636660722375868
	.quad	0x3fe2314e0113594d              # double 0.56851864061426627
	.quad	0x3fafa5368d4fb000              # double 0.061807350873863243
	.quad	0x3fba8c7d1352cd78              # double 0.10370618554843769
	.quad	0x3fe83ad9cb3f57a7              # double 0.75718393036617193
	.quad	0x3fe65002f93b3866              # double 0.697267042903843
	.quad	0x3fc3b4c268291388              # double 0.15395383916816407
	.quad	0x3fe4768deca84f4a              # double 0.63947197172317627
	.quad	0x3fd81fe2e215691e              # double 0.37694618299942018
	.quad	0x3fe5f0e40ed1d9c4              # double 0.68565562147596681
	.quad	0x3fdbe01e5488d6f0              # double 0.43555410628628888
	.quad	0x3fe3e685cf164c8b              # double 0.62188997694683346
	.quad	0x3fe0d36e73b6b3d6              # double 0.52580950355843004
	.quad	0x3fe40e6b19e85123              # double 0.62676005420738468
	.quad	0x3fdc25c35ee35068              # double 0.43980488077546065
	.quad	0x3fdc3ffffe6c5706              # double 0.44140624853149324
	.quad	0x3fee12a554d4d104              # double 0.93977610176673964
	.quad	0x3fed7b417a4f459d              # double 0.92129587067227059
	.quad	0x3fe9c7fce61e2e5e              # double 0.80566258377934807
	.quad	0x3febf309c0ec2d0a              # double 0.87341773681819856
	.quad	0x3fb52918299aa660              # double 0.082658300549746766
	.quad	0x3fc74454d805a398              # double 0.18177280948591767
	.quad	0x3fb07c1b327e7d68              # double 0.064393710925732983
	.quad	0x3fdc7efd9e195786              # double 0.44525089682917274
	.quad	0x3fea4e33493eabfc              # double 0.82204593949916171
	.quad	0x3fd856d85cde154e              # double 0.38030060834019686
	.quad	0x3fea78d898974a6a              # double 0.82725171854901913
	.quad	0x3fed29a063ddca3d              # double 0.91133136277341686
	.quad	0x3fdf7856929e620c              # double 0.49171985929709261
	.quad	0x3fc2023db295a53c              # double 0.14069339008282522
	.quad	0x3fe248867fa0812c              # double 0.57135319640295767
	.quad	0x3fdb94fbf9845bbc              # double 0.4309682785691924
	.quad	0x3fe6b390478bf1fa              # double 0.70941938375432234
	.quad	0x3feb48b7cc8ba5f0              # double 0.85262670469563595
	.quad	0x3fea56c60c74af6b              # double 0.82309248383306277
	.quad	0x3fc7e5d37050d150              # double 0.1867012308517908
	.quad	0x3feb1a3c4b6b8c37              # double 0.84695257883539099
	.quad	0x3fe127a9a94eadfc              # double 0.53609164302673618
	.quad	0x3fec03ef30647de6              # double 0.87548026515645172
	.quad	0x3fecef55d60cc29b              # double 0.90421573454485171
	.quad	0x3fd9b371b814b672              # double 0.40157740570689449
	.quad	0x3feea208864d0b69              # double 0.95727945547728865
	.quad	0x3fd24b24df9d7370              # double 0.28583642804533493
	.quad	0x3fd36bca6e527706              # double 0.30345402501721741
	.quad	0x3fd0e9d8606f726e              # double 0.26427277963174489
	.quad	0x3fda5f11dbe6d746              # double 0.41205259775903291
	.quad	0x3fe6717406767f6e              # double 0.70134927046090723
	.quad	0x3fd3cf643c672af8              # double 0.30953317545633707
	.quad	0x3fcb6e7516a88f4c              # double 0.21430839163178417
	.quad	0x3fc5bc856567be58              # double 0.16981570674350865
	.quad	0x3fdcfe6449a95eee              # double 0.45302684014812555
	.quad	0x3fe4702403bcafe6              # double 0.63868904809851013
	.quad	0x3fa17e97b7c003d0              # double 0.0341689502529402
	.quad	0x3fbe5f2083e65e90              # double 0.11863902301990437
	.quad	0x3fec6a30f8b4dadb              # double 0.88796280456048338
	.quad	0x3fe97ec65cce0aad              # double 0.79672544599482864
	.quad	0x3fbbc50570dc34e8              # double 0.10847505574584526
	.quad	0x3fec04508c3b4b96              # double 0.87552668942440692
	.quad	0x3fbcd3737699a0b0              # double 0.11260148664007619
	.quad	0x3fdecbb896c9ffca              # double 0.4811841461705596
	.quad	0x3fd702b2f4783a02              # double 0.35953973649967008
	.quad	0x3fee21a9c07d4a7b              # double 0.94160926433171654
	.quad	0x3fb69e8e52858220              # double 0.088356871744970977
	.quad	0x3fec5b26b55386de              # double 0.88612685599602137
	.quad	0x3fb12c281fe08630              # double 0.067080028326494512
	.quad	0x3fe8842c4384678c              # double 0.76613438784555532
	.quad	0x3fca5c8a6fd88f1c              # double 0.20594912015177946
	.quad	0x3fb645397697a908              # double 0.086993781522014868
	.quad	0x3fe0e67b49f5ff83              # double 0.52813496060842657
	.quad	0x3fd5232865b46396              # double 0.33027086193174549
	.quad	0x3fc8a4c1a4a9d72c              # double 0.19252796688277252
	.quad	0x3fe36444506fcd30              # double 0.60598960600183283
	.quad	0x3fe712d903af1101              # double 0.72105074615004139
	.quad	0x3feebb5f9d13a42a              # double 0.96037274054572674
	.quad	0x3fd0e1408aa8aef2              # double 0.26374829808149436
	.quad	0x3fed77872daf19c8              # double 0.92084082529691447
	.quad	0x3fd79bcaebf774a8              # double 0.3688838295327721
	.quad	0x3fc79b26a1096d50              # double 0.1844223295509928
	.quad	0x3fe45b138887e6b5              # double 0.63611771265205752
	.quad	0x3fe2f25ed4a15d35              # double 0.59208623437272101
	.quad	0x3fd6bda6786a8790              # double 0.35532533416164203
	.quad	0x3fc1ec43157c7540              # double 0.14002264546517473
	.quad	0x3fe4ac9e2ad4c09c              # double 0.64607151380006966
	.quad	0x3fa850b046bf5b20              # double 0.047490605007331377
	.quad	0x3fe3ea699bcd8c69              # double 0.62236481123217147
	.quad	0x3fef4972cfaa4ce5              # double 0.97771587905517931
	.quad	0x3fdb006b516c9458              # double 0.42190058662010221
	.quad	0x3fce8a871d4348a0              # double 0.23860253266190501
	.quad	0x3fe78d7ec742f1e1              # double 0.73602236669790611
	.quad	0x3fd2feb7c8f1f4bc              # double 0.29679674743222129
	.quad	0x3fee508090606c77              # double 0.94732692907872618
	.quad	0x3fe3574be27aa43b              # double 0.6044063018245035
	.quad	0x3fdc69d344051b2e              # double 0.44395906107495164
	.quad	0x3fe0d5cd29193364              # double 0.52609880473174231
	.quad	0x3fbd022f3fcea960              # double 0.11331458385271764
	.quad	0x3fef8d038e2ae3d7              # double 0.98596360938165161
	.quad	0x3faef066d9215720              # double 0.060427869801669809
	.quad	0x3fd40c3bab987cee              # double 0.31324664838207539
	.quad	0x3fd5e1327b341aca              # double 0.34186994582743735
	.quad	0x3fd95272356199b8              # double 0.39565711224568245
	.quad	0x3fb98b4e13647ab8              # double 0.099781875357147665
	.quad	0x3fe5ac070a864c61              # double 0.67724945121370805
	.quad	0x3fe1645ea06ee0c0              # double 0.54350215277283809
	.quad	0x3fdc1cb3523d4ff8              # double 0.43925173789216343
	.quad	0x3fb872e51b2cd7b8              # double 0.095503157743990097
	.quad	0x3faa55b33f4b5660              # double 0.051435090519288407
	.quad	0x3fe451b717b7ef59              # double 0.63497500069159252
	.quad	0x3fb79a386e05e3f8              # double 0.092196966992460605
	.quad	0x3fd8ab95c85d2fb2              # double 0.38547272269056088
	.quad	0x3fc5c6223d6a2b78              # double 0.17010906218305499
	.quad	0x3fe095346ec061a2              # double 0.51821347838545173
	.quad	0x3fe5fb1dd1cc7407              # double 0.68690386749551713
	.quad	0x3fe819ef84294def              # double 0.75316596806299951
	.quad	0x3fd8e959643fb3b6              # double 0.38924250402379401
	.quad	0x3fe02a64f75688a9              # double 0.50517509754378864
	.quad	0x3fa40cd995852550              # double 0.03916053724476376
	.quad	0x3fc5ba2b90bf54d4              # double 0.16974396293395577
	.quad	0x3fecee7d5c6ed9e5              # double 0.90411251118967739
	.quad	0x3fede3b4b13a5980              # double 0.93404612173871726
	.quad	0x3fee6095f908890e              # double 0.94929026259731741
	.quad	0x3fe33f56cc884649              # double 0.60148181865424377
	.quad	0x3fee75ce3e76ba95              # double 0.95188057136495507
	.quad	0x3fd0d2ec44530b4a              # double 0.26287371322921571
	.quad	0x3faab931e53f9a80              # double 0.052194174990110476
	.quad	0x3fde026e5a34e2cc              # double 0.46889838036763076
	.quad	0x3fde9470f8a9c784              # double 0.47781013759151159
	.quad	0x3fcdb4e566239230              # double 0.23208301055196179
	.quad	0x3fef8f80f2338bfb              # double 0.98626754097892843
	.quad	0x3fd799736fdb40dc              # double 0.36874090121729153
	.quad	0x3f986ab2332ebce0              # double 0.023844513296066405
	.quad	0x3fab8add851c54e0              # double 0.053793833254681678
	.quad	0x3fee1c2044a7e657              # double 0.94093335542056422
	.quad	0x3fc4d35998035d8c              # double 0.16269988939778235
	.quad	0x3f74605d96332700              # double 0.0049747138720677153
	.quad	0x3fd75ab10a1ab49c              # double 0.36491037356138079
	.quad	0x3fdba9611dd4693a              # double 0.43221309578952438
	.quad	0x3fe780970164a26c              # double 0.73444700500574589
	.quad	0x3fe8555075984a31              # double 0.76041434257269291
	.quad	0x3fdd61664165bf20              # double 0.45906978975743762
	.quad	0x3fccb69c89646838              # double 0.22432285984615574
	.quad	0x3fed10b9a6774efd              # double 0.90829164994144629
	.quad	0x3fd8c9ec8f8cbf8c              # double 0.38732446688208522
	.quad	0x3fed49aac15525bd              # double 0.91524255523943732
	.quad	0x3feff2f2cb0a2418              # double 0.99840678840803587
	.quad	0x3fbc6d1067b7bd28              # double 0.11103918583079475
	.quad	0x3fdea73eb41720c8              # double 0.47895782076785709
	.quad	0x3fed50192c5715d1              # double 0.91602762851897002
	.quad	0x3fd533213db55536              # double 0.33124571825222249
	.quad	0x3fea1461f91bfa2a              # double 0.81498812345654881
	.quad	0x3feb142fb473a0bc              # double 0.84621415371386587
	.quad	0x3f6eb3522fa1a300              # double 0.003747616309784596
	.quad	0x3feaf151d3006c54              # double 0.84195796214351981
	.quad	0x3fd898b336230f38              # double 0.38432007109462374
	.quad	0x3fe7a5892bf4e9d0              # double 0.73895701012889425
	.quad	0x3fea34205b05a082              # double 0.81886308458071277
	.quad	0x3fecef545ac69a4b              # double 0.90421502809187737
	.quad	0x3fc59be72d021f88              # double 0.16882028291388118
	.quad	0x3fdb28209c001d6e              # double 0.42432418093127111
	.quad	0x3fc32be200fcaee0              # double 0.14977669761844137
	.quad	0x3fe09d619b1da6fd              # double 0.5192115811925927
	.quad	0x3fc190a68f4e929c              # double 0.13722688672455241
	.quad	0x3fcdda96251235e8              # double 0.23323323068727508
	.quad	0x3feb55b8607646f0              # double 0.85421389427412286
	.quad	0x3fee106348eb7566              # double 0.93950046770229956
	.quad	0x3fd24e505e467ac2              # double 0.28602990347455315
	.quad	0x3fd239f158b49252              # double 0.28478654539711556
	.quad	0x3fdd4f6b650e4b9c              # double 0.45797238224730008
	.quad	0x3feac89abe1d37b4              # double 0.83698784953752758
	.quad	0x3fe41a6016526d64              # double 0.62821964607011838
	.quad	0x3fea2df691deddf3              # double 0.81811073770853537
	.quad	0x3fdfae3b81e407be              # double 0.49500930485384831
	.quad	0x3fea34aa46ec4402              # double 0.81892885067111387
	.quad	0x3fe960ae88805fe0              # double 0.79305197391931514
	.quad	0x3fe0359bab8ada27              # double 0.50654395584462442
	.quad	0x3fc24fb6025f9934              # double 0.14305758586778838
	.quad	0x3fefc34f2e758675              # double 0.99259146760978345
	.quad	0x3feaa378c78cd219              # double 0.83245505308747447
	.quad	0x3f51b76bd8b78000              # double 0.001081328696152184
	.quad	0x3fb0396e10b02638              # double 0.063376311372984939
	.quad	0x3feb7c2cff5ca67e              # double 0.85890817523359408
	.quad	0x3fed5366d2b9e081              # double 0.916430865835551
	.quad	0x3fd39d01c4ff840e              # double 0.30645794141861493
	.quad	0x3fe9dcef81237227              # double 0.80821967336993772
	.quad	0x3fa1fce58e26ff10              # double 0.035132573702410963
	.quad	0x3fd81430a906f522              # double 0.3762323046356234
	.quad	0x3fd27688aedcb100              # double 0.28848473621725645
	.quad	0x3fe2815b77df0dfc              # double 0.57829068577160525
	.quad	0x3fe25e8f41e35db3              # double 0.57404291981486322
	.quad	0x3fe556d788ea07bf              # double 0.66685082188654821
	.quad	0x3fedc42bd70bcf7d              # double 0.93019668580244252
	.quad	0x3fdc1af6dda9600a              # double 0.43914577147143119
	.quad	0x3fa3bb4e0e1db8e0              # double 0.038538398001820573
	.quad	0x3fee48a3f0c6222b              # double 0.94636723543323364
	.quad	0x3fe00bfbfdd9aba4              # double 0.50146293239719286
	.quad	0x3fdbcea174207394              # double 0.43448673573021179
	.quad	0x3fec759f14d33bb7              # double 0.88935808246048154
	.quad	0x3fd666e8baf1c8b2              # double 0.35003107315345539
	.quad	0x3fd42fb72ba5ff0e              # double 0.31541232359448734
	.quad	0x3fb7ac6997227ea8              # double 0.092474555395251401
	.quad	0x3fd2dacbf9d7b5ce              # double 0.29460429571812774
	.quad	0x3fedf5d6c7031b57              # double 0.93625964040334508
	.quad	0x3fc17f9afc3934fc              # double 0.13670670810316909
	.quad	0x3fc4fe95f286b15c              # double 0.16401933996292939
	.quad	0x3feee98a0d36ff04              # double 0.96600821095486866
	.quad	0x3fb42aa51edfb670              # double 0.078775711095397715
	.quad	0x3fe7a61d882396b5              # double 0.73902775373127005
	.quad	0x3fe22d7d2b707e14              # double 0.56805284961950742
	.quad	0x3fe9e251fb818be5              # double 0.80887698290132148
	.quad	0x3fd0082e3db40410              # double 0.25049930597020964
	.quad	0x3fedb928f209b646              # double 0.92885253212961838
	.quad	0x3fe3f23e7a84f4f7              # double 0.62332080773890552
	.quad	0x3fb3662f5dbd5c68              # double 0.075777969728152095
	.quad	0x3fe345ac3f990322              # double 0.60225498601366589
	.quad	0x3fe78032bd5d2f22              # double 0.73439919457584701
	.quad	0x3fe2a72ece423cb8              # double 0.58290806088361702
	.quad	0x3fec064fd8cde3d9              # double 0.87577049583989741
	.quad	0x3fd919715e58e384              # double 0.39217790807338582
	.quad	0x3fe7eadf3a95b043              # double 0.7474208969338253
	.quad	0x3fc3cfeefc0803d0              # double 0.15478312784401149
	.quad	0x3fefb63cfc260ccd              # double 0.99099587676792
	.quad	0x3fe09e00938d41a6              # double 0.5192873842116128
	.quad	0x3fea6f20e917c34d              # double 0.82606549764578008
	.quad	0x3fed66acfe84b599              # double 0.91878366194366656
	.quad	0x3fead724618e5a63              # double 0.83876246503752971
	.quad	0x3fe6d935ae1eaaa3              # double 0.71401485450526925
	.quad	0x3fe59c3ca9d01bf9              # double 0.67532189528071662
	.quad	0x3fd328ea088cbab4              # double 0.29937220416006061
	.quad	0x3feddb7a1d01ad6b              # double 0.9330416265997149
	.quad	0x3feb045d5d0acf5f              # double 0.84428280041036519
	.quad	0x3fe68e10cb715d7a              # double 0.70484199271133652
	.quad	0x3fc1cf7531acff90              # double 0.13914360929083758
	.quad	0x3fe125a14a7afe1e              # double 0.53584351107560102
	.quad	0x3fe9c488479e1d88              # double 0.80524076450176185
	.quad	0x3fddda70e0b1449a              # double 0.46645757620451322
	.quad	0x3fea68a06fa99c07              # double 0.82527181443299547
	.quad	0x3fe1b3c3473a8b02              # double 0.55319370185711159
	.quad	0x3fcd48da0b6e5ce4              # double 0.22878575857314509
	.quad	0x3fe3b37cb7cb412f              # double 0.61566005608805152
	.quad	0x3fe477e3939de75d              # double 0.63963488418015013
	.quad	0x3fe207bf323f2678              # double 0.56344566167645294
	.quad	0x3fc6855c88c8c288              # double 0.17594486884037885
	.quad	0x3fd0f18b01e3dd06              # double 0.26474261459902981
	.quad	0x3fa20ced5a270d20              # double 0.03525487637991831
	.quad	0x3fe24975827e9e86              # double 0.57146716582515533
	.quad	0x3fed9dd6b0e1910b              # double 0.92551741168111457
	.quad	0x3fda86ac2235c954              # double 0.41446975079374693
	.quad	0x3fafa843c2ab0780              # double 0.06183063269919753
	.quad	0x3fe3b2a026462a9a              # double 0.61555488086135601
	.quad	0x3fb478496f5e91d8              # double 0.079960431756780692
	.quad	0x3fd786513e127dd6              # double 0.36757308065167871
	.quad	0x3fdd646cf2d18306              # double 0.45925449097380555
	.quad	0x3fe9188e383770a3              # double 0.7842475030879722
	.quad	0x3fcad69719be5130              # double 0.20967377430918921
	.quad	0x3fe382e3c91492f6              # double 0.60972775720128314
	.quad	0x3fe10874a3504621              # double 0.53228217980558068
	.quad	0x3fe759efda40630f              # double 0.72972862841842978
	.quad	0x3fd5aa9a430d3d9c              # double 0.33853775547046339
	.quad	0x3fe012722bcd2f5a              # double 0.5022517066476937
	.quad	0x3fd76dbc2e37e858              # double 0.36607269776835016
	.quad	0x3fd96c45e455ae68              # double 0.39723346041021168
	.quad	0x3fc63e83bbd7db88              # double 0.17378279373198446
	.quad	0x3fe18d9b700bfe03              # double 0.54853603252553318
	.quad	0x3fef63938b06688e              # double 0.98090531495405897
	.quad	0x3fee62a0b0af08b7              # double 0.94953951366939904
	.quad	0x3fc76b4732bd7c64              # double 0.18296136834667032
	.quad	0x3fe704f5e1b75563              # double 0.71935552678284542
	.quad	0x3fc203686ee6af48              # double 0.1407290021428429
	.quad	0x3fe2bb9eab8df814              # double 0.58540280825377744
	.quad	0x3fe2962a59dcc7d7              # double 0.58083074141745328
	.quad	0x3fb822cf2d706590              # double 0.094281147569196699
	.quad	0x3fec2e621341bc47              # double 0.88066200028505015
	.quad	0x3fedc94e6bd00268              # double 0.93082352692733838
	.quad	0x3fe0a7053dd0de8e              # double 0.52038824151436969
	.quad	0x3fe34a9c2e0a869a              # double 0.60285767547994173
	.quad	0x3feb261a9d813a59              # double 0.84840136301665858
	.quad	0x3fe9be5c68053c77              # double 0.80448742214674851
	.quad	0x3feb0615053784e8              # double 0.8444924451725031
	.quad	0x3fc4298f25b6bf8c              # double 0.15751828519341549
	.quad	0x3fc13fd8f0689dac              # double 0.13476096857742215
	.quad	0x3fa0da4b58e23790              # double 0.032915453529411498
	.quad	0x3fd198ef55ce07d8              # double 0.27495940570235922
	.quad	0x3fc4d69f73919674              # double 0.16279976981165911
	.quad	0x3feb6f61c432b929              # double 0.8573464233393554
	.quad	0x3fefce74c404a3ca              # double 0.99395216259755981
	.quad	0x3fdb073e2ee606c6              # double 0.42231707172332411
	.quad	0x3fa2be1f15b1da10              # double 0.036606761358530915
	.quad	0x3fe7932697e5720b              # double 0.73671273867836484
	.quad	0x3fea3114242473ba              # double 0.81849104937611306
	.quad	0x3feccbf952449373              # double 0.89989915912575069
	.quad	0x3fddc8bcef9b8a96              # double 0.46537707709482257
	.quad	0x3fde9ac8917970b0              # double 0.47819723326189045
	.quad	0x3fe7b1b1b036de49              # double 0.74044117371426765
	.quad	0x3fdde09ed3081f7e              # double 0.46683474167411265
	.quad	0x3fc74a1c403c9f78              # double 0.18194916855395227
	.quad	0x3fd86f6d84aac8d2              # double 0.38180101352476215
	.quad	0x3fc2a999bab77160              # double 0.14580079667110635
	.quad	0x3fede870f1eb9e9f              # double 0.93462416887355804
	.quad	0x3fefcd118d314016              # double 0.99378278328549885
	.quad	0x3fedbf771a425a9e              # double 0.92962222222088875
	.quad	0x3fd944d855d402f6              # double 0.39482696897179836
	.quad	0x3fe39773fe7c62d9              # double 0.61223792747758943
	.quad	0x3fe1f890d0a5394c              # double 0.56159249068313377
	.quad	0x3fe7d48d9adfb45b              # double 0.74469642876432418
	.quad	0x3fea34f6807308ce              # double 0.81896519744648244
	.quad	0x3feb910a784f7f95              # double 0.86145518777992669
	.quad	0x3fe14258f4a73748              # double 0.5393490579969944
	.quad	0x3fae184d5c814010              # double 0.058779161016559667
	.quad	0x3feebadd9b145d44              # double 0.96031074799513094
	.quad	0x3fe5ac7d1b26aae5              # double 0.67730574896753792
	.quad	0x3fed621d9701d827              # double 0.9182270001754248
	.quad	0x3feb9ceda2168291              # double 0.8629062810687903
	.quad	0x3fc735fc0540fa5c              # double 0.18133497482809247
	.quad	0x3fd394cd3ee1f9c8              # double 0.30595713749781028
	.quad	0x3fb110af6ac94528              # double 0.066660846300938048
	.quad	0x3fd93cbac60c9ac6              # double 0.39433163967843787
	.quad	0x3fe60b619ef09e22              # double 0.68888932269050351
	.quad	0x3fe627a456254cbe              # double 0.69233910394031972
	.quad	0x3fe8fa23f5dae0fc              # double 0.78053472536615187
	.quad	0x3fe92c9c36274a0b              # double 0.78669558121538452
	.quad	0x3fdde2209ffa1d70              # double 0.46692672369723365
	.quad	0x3febe089385a92a7              # double 0.87115918165780648
	.quad	0x3fd11100d032fb2a              # double 0.26666279155681372
	.quad	0x3fe59dd80e5990c2              # double 0.67551806261737846
	.quad	0x3fdae3a4958e156a              # double 0.42014422039968358
	.quad	0x3feb548e3b53fe5b              # double 0.85407172763366235
	.quad	0x3fe19e19062f8ee0              # double 0.55054904182585673
	.quad	0x3fdb4c42f397f13c              # double 0.42652963436536928
	.quad	0x3fe2ca5abde57f09              # double 0.58720147217897634
	.quad	0x3fd545c04d5838e2              # double 0.33238227418122623
	.quad	0x3fa36a786f893950              # double 0.037921680083501941
	.quad	0x3fdc7dda46539a8e              # double 0.44518143527822296
	.quad	0x3fd899eedbc6b64a              # double 0.3843953272106303
	.quad	0x3fe8460faa694968              # double 0.7585523918481103
	.quad	0x3fe23954a9ef31f3              # double 0.56949837866119279
	.quad	0x3febee58116fc093              # double 0.872844728522994
	.quad	0x3fcb4ad783c80600              # double 0.21322149214397257
	.quad	0x3fd05e860f920958              # double 0.25576926727821592
	.quad	0x3fbed4812588a5c0              # double 0.12043006101943998
	.quad	0x3fde64e98e8e3e34              # double 0.47490919991921321
	.quad	0x3fe88d54d6a346af              # double 0.76725236817784104
	.quad	0x3fd59c456aa81174              # double 0.33766303458857938
	.quad	0x3feb9e5daaa56217              # double 0.86308177308370915
	.quad	0x3fc89ca1dc3f858c              # double 0.19228003744414612
	.quad	0x3fb23248d3acdcc0              # double 0.071079780272031989
	.quad	0x3fdafe7ba7782676              # double 0.42178241114070347
	.quad	0x3fb3ea3f90639658              # double 0.07779309535143264
	.quad	0x3fdc56ce3d0744a2              # double 0.44279819450191316
	.quad	0x3fd6f8c7e3aa0fe0              # double 0.35893437607614764
	.quad	0x3fd247c5647449e0              # double 0.28563055810914584
	.quad	0x3fef2a7e96ada9d1              # double 0.97393731526727311
	.quad	0x3fd9c3f21f7289f8              # double 0.40258458205258263
	.quad	0x3fee8c81aceaba03              # double 0.95465167782623472
	.quad	0x3fd45d964509ca28              # double 0.31821209661498751
	.quad	0x3febd6fe1baec614              # double 0.86999421507624896
	.quad	0x3fe71de21521a1c8              # double 0.72239784362050674
	.quad	0x3fedcee68475364c              # double 0.93150640364337666
	.quad	0x3fd0c4f877c9610e              # double 0.26202212999261654
	.quad	0x3fd5c0e474a3b542              # double 0.33989821806502019
	.quad	0x3feea516dc509f5e              # double 0.9576525023485194
	.quad	0x3fc8af3e2d47df14              # double 0.19284798823331839
	.quad	0x3fb10ca3149fcb50              # double 0.06659907582779323
	.quad	0x3feeabedeae10405              # double 0.95848747134016376
	.quad	0x3fe4972a3aa584d5              # double 0.64345275358587151
	.quad	0x3fe5444a2974b592              # double 0.66458614441732977
	.quad	0x3fe5f0cdb8e9feea              # double 0.68564497104668232
	.quad	0x3fdd7e44de2d03c4              # double 0.46083184906825303
	.quad	0x3fcbf485e6c75030              # double 0.21839975136265499
	.quad	0x3fe3956c9b934179              # double 0.61199026475701068
	.quad	0x3fec36f05fd2abfe              # double 0.88170641627709734
	.quad	0x3febbb90de8210ad              # double 0.86664622744185282
	.quad	0x3fd3d875004860ea              # double 0.31008648898706659
	.quad	0x3fdb0edec7db8436              # double 0.42278260724384908
	.quad	0x3fc641e6c75e54a0              # double 0.17388615355290415
	.quad	0x3fdc7ffdb13b1646              # double 0.44531194980331568
	.quad	0x3fdf09e59c4270c4              # double 0.484979059788895
	.quad	0x3fd835da63a6c4ca              # double 0.37828693133913005
	.quad	0x3fe9181dc4844376              # double 0.7841938818183809
	.quad	0x3fd98a2bf5999d66              # double 0.39905833229427967
	.quad	0x3fe5b3ea93c99cec              # double 0.67821244110828394
	.quad	0x3fe8fb730ed37a62              # double 0.78069451232643083
	.quad	0x3fb38081cb0b0c90              # double 0.076179611273845759
	.quad	0x3fe0e6c8fa12e091              # double 0.52817200510527773
	.quad	0x3fe8c4ee248ed09b              # double 0.77403933658799262
	.quad	0x3f9939fbaf21dae0              # double 0.024635250629638672
	.quad	0x3fe8ce1a9a89b984              # double 0.77515916999054512
	.quad	0x3fd375603c20aa28              # double 0.30403905746303161
	.quad	0x3fb155c7ac4d8d48              # double 0.067715148512026535
	.quad	0x3fd68ed14a921ca4              # double 0.35246689111995466
	.quad	0x3fec4e014c957c39              # double 0.88452210386083785
	.quad	0x3fe82edfbb24232a              # double 0.7557219176388561
	.quad	0x3fbdea6973ac6160              # double 0.11685809206062947
	.quad	0x3fec19a01cc7ae9c              # double 0.87812810536475494
	.quad	0x3fe3d140a34a0914              # double 0.6192935170404632
	.quad	0x3fe16919b3bda028              # double 0.54407963853464469
	.quad	0x3fea19058267e95a              # double 0.8155543848982163
	.quad	0x3f674536e5038c00              # double 0.002840621200549176
	.quad	0x3fe7f47a39074503              # double 0.74859343660696742
	.quad	0x3fd2b04e74cba072              # double 0.29201089292337834
	.quad	0x3fe7cd4c3e1d4806              # double 0.74381076938357249
	.quad	0x3fea946e74ea6116              # double 0.83061907610957308
	.quad	0x3fd3822e5b932a7a              # double 0.30482062285287947
	.quad	0x3fcf34ade2c81384              # double 0.24379514287297976
	.quad	0x3fb919f33a7b1168              # double 0.09805221727134994
	.quad	0x3fd64ce626155066              # double 0.34844354361599128
	.quad	0x3fe8d1dbecd0d6d8              # double 0.77561756375390711
	.quad	0x3fdef0b892389550              # double 0.48344244269749925
	.quad	0x3fdea6e2db0d8214              # double 0.47893592254516304
	.quad	0x3fd00bc93ab7f3f0              # double 0.25071936353907542
	.quad	0x3fdea94fc41a2254              # double 0.47908395910829893
	.quad	0x3fee2b91804eabdf              # double 0.94281840381642812
	.quad	0x3fdf363ab3f44908              # double 0.48768489431053341
	.quad	0x3fc1aaa2039b4118              # double 0.13801980186554696
	.quad	0x3fc3f91f247bf040              # double 0.15604008943035019
	.quad	0x3feb81c458c3fa2f              # double 0.85959069573420332
	.quad	0x3fef2c4a1e8a6982              # double 0.97415643658614237
	.quad	0x3fee6a6b6f61c184              # double 0.95049068216580723
	.quad	0x3f997b3cb2bf1860              # double 0.02488417473775717
	.quad	0x3fec4d1565d98115              # double 0.88440961735253387
	.quad	0x3fe1b3ae2a0ea93a              # double 0.55318363394079673
	.quad	0x3fb7b5f1944ff7c0              # double 0.092619990071368896
	.quad	0x3feff95b8485df6c              # double 0.99918914683710857
	.quad	0x3fe51cc06c8c687d              # double 0.65975972367165492
	.quad	0x3fd566ae14a6a74c              # double 0.33439209000299708
	.quad	0x3fbaa3d810b38528              # double 0.1040625611090219
	.quad	0x3fd9579d555f90f0              # double 0.39597256982075546
	.quad	0x3fcabafba630ec0c              # double 0.20883126845168964
	.quad	0x3fb27d6c48db9708              # double 0.072226302897970496
	.quad	0x3fc082b498a37a38              # double 0.1289888139062485
	.quad	0x3fe6aaf5ca901a32              # double 0.70836915553156232
	.quad	0x3fd614ba93b850ea              # double 0.34501518655566932
	.quad	0x3fefcdd7e874cc80              # double 0.99387736703501162
	.quad	0x3fe4c78cf1b38d40              # double 0.64935919959354038
	.quad	0x3fe7c9706e047c26              # double 0.74333974349781751
	.quad	0x3fe1dee05d97c8d8              # double 0.5584565952288143
	.quad	0x3fea8d928e60af01              # double 0.82978179748667469
	.quad	0x3fe596e5a9d309f7              # double 0.67467005890676901
	.quad	0x3fe484262de74093              # double 0.64113148656362495
	.quad	0x3fd640ae51f5fbfc              # double 0.34769781116477794
	.quad	0x3fb99d54c75cbf10              # double 0.10005693309062402
	.quad	0x3fe6c0113deac868              # double 0.71094572156131353
	.quad	0x3fe01a3119099c98              # double 0.50319723978181496
	.quad	0x3feefff2b545303e              # double 0.96874366192196937
	.quad	0x3fe1138cddae3ae8              # double 0.53363650605191726
	.quad	0x3fe62ab384176d75              # double 0.69271255301593604
	.quad	0x3fcbd42dbc539f5c              # double 0.21741267867696024
	.quad	0x3fdf1ed075cf543e              # double 0.48625575547095312
	.quad	0x3fcd675f61c8b38c              # double 0.22971718096360083
	.quad	0x3fd7ff612ed6d9da              # double 0.37496213506838461
	.quad	0x3fd7d4c58de96c8e              # double 0.37236155375075775
	.quad	0x3fca043cdcd52118              # double 0.20325432570303614
	.quad	0x3fe42fca97dcc940              # double 0.63083390865930511
	.quad	0x3fdee5d249b5407e              # double 0.48277718732879993
	.quad	0x3fdc50b780cf644c              # double 0.44242656306375205
	.quad	0x3fe02258efeda237              # double 0.50419279919612492
	.quad	0x3fac6ceae7a9d140              # double 0.055518475321977068
	.quad	0x3feaaf8028007af4              # double 0.8339234143530505
	.quad	0x3fccea36ebf4d088              # double 0.22589766045860338
	.quad	0x3fe1ff2872e3a7cd              # double 0.5623972171717867
	.quad	0x3fdd1b727f6afe4a              # double 0.45480024760397397
	.quad	0x3fd20d101c8390ae              # double 0.28204729828417896
	.quad	0x3fe17e6df55a4764              # double 0.54668329163017093
	.quad	0x3fe4cfdaaadfa068              # double 0.65037282346476122
	.quad	0x3feedc9fc4dda79d              # double 0.96443165254935403
	.quad	0x3feb0ca9476b4ae7              # double 0.84529556225819824
	.quad	0x3fc9679fa0d68f00              # double 0.19847483971999935
	.quad	0x3fe7d63e816434e4              # double 0.74490285178913185
	.quad	0x3fddceaf76ed47ec              # double 0.46574007619812963
	.quad	0x3fe246c213498c74              # double 0.57113746420908607
	.quad	0x3fd8dfeee18881d0              # double 0.38866779350976532
	.quad	0x3fe4f2e05b608246              # double 0.6546479973513406
	.quad	0x3fddf477339cc296              # double 0.46804599800365432
	.quad	0x3fe960d182c52a97              # double 0.79306865254450798
	.quad	0x3fd7aa23b04b18f6              # double 0.36975948539874481
	.quad	0x3fdc41937944675a              # double 0.44150244562626073
	.quad	0x3fdc62cfc66cd772              # double 0.44353098275620717
	.quad	0x3fe77ca65eddd6d0              # double 0.73396605042099772
	.quad	0x3fee2aeffc71e858              # double 0.94274138742117497
	.quad	0x3fd1127009c69b8c              # double 0.2667503447977928
	.quad	0x3fd4ba576d3bacdc              # double 0.3238733832101397
	.quad	0x3fec524e6853958a              # double 0.88504715324659
	.quad	0x3fef97760dfa32b0              # double 0.98723891000698494
	.quad	0x3febaa2b0020e5e2              # double 0.86452245736216704
	.quad	0x3fc5d2c0ce6532e8              # double 0.17049417570014858
	.quad	0x3fce2bd551415954              # double 0.23571268527548261
	.quad	0x3f6f5c53b006e500              # double 0.0038282045863665681
	.quad	0x3fd5531615ec9f36              # double 0.33319618359608982
	.quad	0x3fe9d60b1df214ec              # double 0.80737834786182594
	.quad	0x3fe9867ad166673e              # double 0.79766598604621897
	.quad	0x3fd9a1d7795d054a              # double 0.40050303317919556
	.quad	0x3fe64362e26349ad              # double 0.69572586265922143
	.quad	0x3faced54b5c7aff0              # double 0.056498191060967318
	.quad	0x3fd6a75cfee80f3a              # double 0.35396504300318876
	.quad	0x3fc8f9d3322d08a4              # double 0.1951240534782005
	.quad	0x3fece35e61ea2a16              # double 0.90275496601072081
	.quad	0x3fc55948ded6aac0              # double 0.16678725128925542
	.quad	0x3fdd70c34f3aa8e6              # double 0.46000750291081116
	.quad	0x3fbaff9a84c24bf0              # double 0.10546270123658963
	.quad	0x3fd5f8d54215f518              # double 0.3433125634545191
	.quad	0x3fcf7217614d5b10              # double 0.24566929102976376
	.quad	0x3fb35015bce10ba0              # double 0.075440748799378898
	.quad	0x3fa4a3babbac18e0              # double 0.040311656388483774
	.quad	0x3fef2ddda829996a              # double 0.97434885830152251
	.quad	0x3feedb609ad3a52f              # double 0.96427946319196233
	.quad	0x3fc6d2641245b67c              # double 0.17829562084391515
	.quad	0x3fd5fadd80938cd6              # double 0.34343659931455528
	.quad	0x3fe51305f74daa32              # double 0.65857218076172885
	.quad	0x3fc9188849a214cc              # double 0.19606116862647693
	.quad	0x3fd822db64fa188a              # double 0.37712750302342413
	.quad	0x3fe998f24942a231              # double 0.79992021855020401
	.quad	0x3fde87bb26fdc998              # double 0.47703436668157329
	.quad	0x3fc45def795b6d80              # double 0.15911668229714948
	.quad	0x3fa6ebe3422863a0              # double 0.044768430543803861
	.quad	0x3fdadeb27264e35c              # double 0.41984234973238244
	.quad	0x3fe45bf70e241627              # double 0.63622620355517234
	.quad	0x3faf7d06600fbed0              # double 0.061500739313371633
	.quad	0x3fea7ddfd06b8699              # double 0.8278655119613233
	.quad	0x3fe7198bc32571a2              # double 0.7218684016657344
	.quad	0x3fa0689aa402e710              # double 0.032048065682330429
	.quad	0x3fed6a9489adc9a4              # double 0.91926028147127114
	.quad	0x3fd9c210fe54e670              # double 0.40246987187456451
	.quad	0x3fe09568b597e22a              # double 0.5182384058708227
	.quad	0x3fc75eeaa1a93318              # double 0.18258412259674439
	.quad	0x3fbf3857b5f86740              # double 0.12195347015986346
	.quad	0x3fe4b4375d377874              # double 0.6469990559233012
	.quad	0x3feb81fcae4b01e0              # double 0.85961755792237326
	.quad	0x3fe8852d0e96e42b              # double 0.7662568364095298
	.quad	0x3fa64f6f882b8bf0              # double 0.043574796078040268
	.quad	0x3fe6639a55e791cb              # double 0.69965855386959086
	.quad	0x3fe3a0abefad445c              # double 0.61336323558692696
	.quad	0x3fc156814036c21c              # double 0.1354524196190291
	.quad	0x3fd9ca54e0e5baee              # double 0.40297433817515482
	.quad	0x3fec5d680b655bbe              # double 0.88640215135352896
	.quad	0x3feb68e0b9b3fb8c              # double 0.85655246992233591
	.quad	0x3fde990c3e04a70c              # double 0.47809129768812464
	.quad	0x3fbc24a6a5aa2a10              # double 0.10993424934910245
	.quad	0x3fd5de509bc36d92              # double 0.34169402323979015
	.quad	0x3fd28e00f3e9365a              # double 0.28991721934730708
	.quad	0x3fe904c251b2f32f              # double 0.78183093983498064
	.quad	0x3fe2c9cbb98e990d              # double 0.58713327638250379
	.quad	0x3fe378286bcfbc0d              # double 0.60841771180082704
	.quad	0x3fc27b756ca16574              # double 0.14439266018124963
	.quad	0x3fe335ea5ea92360              # double 0.60033148277680581
	.quad	0x3fb7bb17550332f0              # double 0.092698534255031495
	.quad	0x3fee5e1c26363c8a              # double 0.94898803199056769
	.quad	0x3f829791ef747e40              # double 0.00907815944680046
	.quad	0x3fdeafc389dc8282              # double 0.47947777236007749
	.quad	0x3fde4b40ce996c62              # double 0.47334308791841384
	.quad	0x3fe782471fabe66c              # double 0.73465305505596978
	.quad	0x3fdd175fad7d3ec8              # double 0.45455161993320958
	.quad	0x3fb32cd3c6875278              # double 0.074902759522339823
	.quad	0x3fb532c4597a1cf0              # double 0.082805892796489422
	.quad	0x3fd927c6cf9996ba              # double 0.39305277131493777
	.quad	0x3fdc97dcf54433ee              # double 0.44676898910330365
	.quad	0x3f74987f8dcd7e80              # double 0.0050282461714626914
	.quad	0x3fb598f59feb8af0              # double 0.084365226309767171
	.quad	0x3fea07fe9a069f7c              # double 0.81347589572122513
	.quad	0x3fda20e271a369e8              # double 0.40825711343282345
	.quad	0x3fc80d2c62f57690              # double 0.18790201980566623
	.quad	0x3fe202384d38e8fd              # double 0.56277098734361142
	.quad	0x3fd4d94737c74582              # double 0.32576160857305336
	.quad	0x3fe8a171ccd9aa79              # double 0.76970758447471532
	.quad	0x3fc1abec9800f2a8              # double 0.13805921003394883
	.quad	0x3fef3dea6d5b0323              # double 0.97630807264804209
	.quad	0x3fc3cbbbd98a09b4              # double 0.15465496179610982
	.quad	0x3febb7979eb22190              # double 0.86616116519239661
	.quad	0x3feff454781a5d92              # double 0.9985754342805413
	.quad	0x3fc52ee95d4f9464              # double 0.16549412780946959
	.quad	0x3fb434950a20d028              # double 0.07892734048147132
	.quad	0x3fb9e2c52983eaf0              # double 0.10111648810918061
	.quad	0x3fdf8251ebbcbaee              # double 0.49232910176480871
	.quad	0x3fedf34f10884f5e              # double 0.93595078686710642
	.quad	0x3fb6b04627c20898              # double 0.088627228457001883
	.quad	0x3fe3778c5249442d              # double 0.60834327765963325
	.quad	0x3fd2ac3780b7df6e              # double 0.29176127977506539
	.quad	0x3fe64e48b11193c4              # double 0.69705614646647307
	.quad	0x3fe3da8dc6c250b1              # double 0.62042893238187535
	.quad	0x3fc98e86a5b101ec              # double 0.19966204729463699
	.quad	0x3fe3aa8cab293876              # double 0.61456902913938793
	.quad	0x3fc1b6129f737a68              # double 0.13836891923616013
	.quad	0x3fe61bd628656d13              # double 0.69089801683313323
	.quad	0x3fd1653ef4a83764              # double 0.27180456058783009
	.quad	0x3feccdf3d6b3abe1              # double 0.9001406854052868
	.quad	0x3fcccdef6328be28              # double 0.2250346407104058
	.quad	0x3fc843261d8b42ac              # double 0.18954922144486852
	.quad	0x3fb151bdb7cc11c0              # double 0.067653519985532817
	.quad	0x3fe1ff93bff5a77a              # double 0.56244838230234895
	.quad	0x3fd75b293c98f9ac              # double 0.36493903081636847
	.quad	0x3fe1f881376a95da              # double 0.56158505271440196
	.quad	0x3fe32c87782e6d44              # double 0.5991856906215749
	.quad	0x3fea466a7d5f0f4f              # double 0.82109570013606425
	.quad	0x3fe42a1400a13887              # double 0.63013649104119984
	.quad	0x3fc940f610add788              # double 0.1972949582520267
	.quad	0x3fb1f5ac65851bc8              # double 0.07015492895617037
	.quad	0x3fa1da8a8b48fd40              # double 0.034870461943223408
	.quad	0x3fcf6b0ae42e3fa4              # double 0.24545417920716972
	.quad	0x3feece5b74dffeee              # double 0.96269009425301788
	.quad	0x3fd17af45898d3ba              # double 0.27312954570816894
	.quad	0x3fee01d64ea32483              # double 0.93772425993769593
	.quad	0x3febb59d45b99ee6              # double 0.86591971986942151
	.quad	0x3fce2dc22a9f5284              # double 0.23577143746537754
	.quad	0x3fe7e38ad1660932              # double 0.74652615450057724
	.quad	0x3fe506c93b7153e7              # double 0.65707837686443049
	.quad	0x3f922345de4eee80              # double 0.017712680524466951
	.quad	0x3fef7d1e54e02a67              # double 0.98402325227045828
	.quad	0x3fa21c6597473480              # double 0.035372900692530074
	.quad	0x3fe0a0f142eb467d              # double 0.51964629240156024
	.quad	0x3fc4d8d55d6fe9fc              # double 0.16286723196374442
	.quad	0x3fd4163c225f8232              # double 0.3138571105646718
	.quad	0x3fecbfe4c5a798ab              # double 0.89842451672008872
	.quad	0x3f7490a219366f80              # double 0.0050207454654830341
	.quad	0x3fe3d2af961ca837              # double 0.6194684917329657
	.quad	0x3fd379e270c541d0              # double 0.30431424153087239
	.quad	0x3fe29bedb66117a0              # double 0.58153424855185065
	.quad	0x3fd61e42bd589c64              # double 0.34559696665605188
	.quad	0x3fa011167836b1a0              # double 0.031380369352834281
	.quad	0x3fa7eec0590b7e90              # double 0.046743403310526621
	.quad	0x3fd033fbe4baaee4              # double 0.25317284905280091
	.quad	0x3fe089884dc9a4c7              # double 0.51678862755684285
	.quad	0x3fe9b85c4f8be8f3              # double 0.8037549546855004
	.quad	0x3fd6bdfeb8824cc2              # double 0.35534637468772357
	.quad	0x3fecd0b1f2caf37c              # double 0.90047547741379174
	.quad	0x3fc20a47c19a0f60              # double 0.14093872979367017
	.quad	0x3fd3a5dd3f61450e              # double 0.30699855031441892
	.quad	0x3fec86fe9ee83856              # double 0.8914788345007405
	.quad	0x3fe89733604d04f9              # double 0.76845711525689275
	.quad	0x3fbead741254f458              # double 0.11983418891482367
	.quad	0x3febc625ff0237f4              # double 0.86793803984050876
	.quad	0x3fea0b1f16386870              # double 0.8138575967780195
	.quad	0x3feda6a6d7661a2c              # double 0.92659322805486032
	.quad	0x3fe06bec3484fda0              # double 0.51317415483201856
	.quad	0x3fe7fc5e1eeda6fd              # double 0.74955659905137362
	.quad	0x3fe8e7c6ac954df6              # double 0.77829297740612335
	.quad	0x3feb323a5d6cc9d6              # double 0.8498813461977146
	.quad	0x3fe4d2954f27b609              # double 0.65070596179947515
	.quad	0x3fe392fa7437b2d7              # double 0.61169169138664869
	.quad	0x3fd3127f7daf8fbc              # double 0.2980040290260566
	.quad	0x3fd84928187d5522              # double 0.37946512595711301
	.quad	0x3fe7ad413611d62f              # double 0.7398992591904
	.quad	0x3fe5b67bc9cc8fd3              # double 0.67852582372551706
	.quad	0x3fe40c43265b8fdc              # double 0.62649686328631615
	.quad	0x3feac1ef2fdf65a7              # double 0.83617362356306024
	.quad	0x3fe227dca608ca7b              # double 0.56736595562536196
	.quad	0x3feddd9b763735c4              # double 0.93330166901585487
	.quad	0x3fc630e6ad2d0d98              # double 0.1733673425279505
	.quad	0x3fd2085cf8fdf2be              # double 0.28176044765113406
	.quad	0x3fe5373d79af5348              # double 0.66299318090987303
	.quad	0x3fba1fc6ff0d59b8              # double 0.10204738356455934
	.quad	0x3fd8a5a79f229c20              # double 0.38511076489015927
	.quad	0x3fee2010bb65080c              # double 0.94141422844427458
	.quad	0x3fe24bef43d52f01              # double 0.57176936386665045
	.quad	0x3fd0910339aa47fc              # double 0.25885086661685341
	.quad	0x3fea502a214eb0d1              # double 0.82228571420048457
	.quad	0x3fef12a00ff81ca8              # double 0.97102358931524168
	.quad	0x3fd2914fa8b229e4              # double 0.29011908983434709
	.quad	0x3fec17ac8ed3def9              # double 0.87788989921588645
	.quad	0x3fd2c6fe0ac569b2              # double 0.29339552928800139
	.quad	0x3fd829a4885e14fa              # double 0.37754166905536091
	.quad	0x3fe1cc8ddbd919d1              # double 0.55621998728821087
	.quad	0x3fe294bb75a33358              # double 0.58065579391550681
	.quad	0x3fe46bbe606e00e0              # double 0.63815230211187313
	.quad	0x3fe3dab0996197e1              # double 0.62044553715963613
	.quad	0x3fea6628fd7f3083              # double 0.82497071753597628
	.quad	0x3fe48e30a20e048a              # double 0.64235717440910034
	.quad	0x3fec9a7a91b24572              # double 0.89385727363894163
	.quad	0x3fb7ccee497e6bc8              # double 0.092970745985822778
	.quad	0x3fd28de8dd0e7eec              # double 0.28991147601662592
	.quad	0x3fe72f93a9a87e9c              # double 0.72455771576274541
	.quad	0x3fb07070a62df610              # double 0.064215698786903141
	.quad	0x3faafde1b0b570f0              # double 0.052718212910550011
	.quad	0x3fdcdffd2ec613ec              # double 0.45117120330570404
	.quad	0x3fe7dd5e5184f157              # double 0.74577251359691388
	.quad	0x3fe128b2defadb2d              # double 0.53621810484660204
	.quad	0x3fd65ba49f4055de              # double 0.34934344818006291
	.quad	0x3fd57097256dff04              # double 0.33499697356454328
	.quad	0x3fb19959956d6878              # double 0.068746184331219484
	.quad	0x3feeed65ca1dee49              # double 0.9664792010875739
	.quad	0x3fb24a2e8e7d4290              # double 0.071444425380159382
	.quad	0x3fc46e8b469d7cf8              # double 0.15962353656775696
	.quad	0x3fabf383a6439090              # double 0.054592241330994828
	.quad	0x3fc6be6e5c750100              # double 0.17768649591926788
	.quad	0x3fe50ea73bb5159a              # double 0.65803872739404601
	.quad	0x3fe2d06296f67629              # double 0.58793763623152018
	.quad	0x3fea693ce6bd38cd              # double 0.82534642282714688
	.quad	0x3fb644101fe172e0              # double 0.086976058753360785
	.quad	0x3fe925f847c64619              # double 0.78588499086817187
	.quad	0x3fdd62e9bc4ac6fa              # double 0.45916217220211275
	.quad	0x3fc289679017e190              # double 0.14481825385861358
	.quad	0x3feeb5f5ea5d949d              # double 0.95971198820611258
	.quad	0x3fe047c150b2a420              # double 0.50875917207043031
	.quad	0x3fedf5be7114d34e              # double 0.93624803625298525
	.quad	0x3fe87bfaf145eb0d              # double 0.76513430713325337
	.quad	0x3fe7b62755c43b2c              # double 0.74098555327677706
	.quad	0x3fcedc3a26f95b50              # double 0.24109579947500004
	.quad	0x3fe641e6918ccd79              # double 0.69554451396690731
	.quad	0x3fe979590ef5546b              # double 0.79606297418162109
	.quad	0x3fe5fe3d3d1034dd              # double 0.68728506018092228
	.quad	0x3fb24a8a9eef3a20              # double 0.071449912836421436
	.quad	0x3fde9b103d07b068              # double 0.47821432075466541
	.quad	0x3fbe72a350a22fc8              # double 0.11893673628418278
	.quad	0x3fd03f4722971b9a              # double 0.25386217477756079
	.quad	0x3fa74e1aa6b94a90              # double 0.045517762043023713
	.quad	0x3fe744645a681c20              # double 0.7270986333613827
	.quad	0x3fed05e25b63c4a5              # double 0.90696828698687126
	.quad	0x3fe04b52f43df98c              # double 0.50919482902081503
	.quad	0x3fb471a2e5b2a788              # double 0.079858952597218757
	.quad	0x3fecfbfbe5b25ecc              # double 0.9057597624077629
	.quad	0x3fdd5d30519859f2              # double 0.4588127896144264
	.quad	0x3fe3f63ce41c88e7              # double 0.62380833199520402
	.quad	0x3fe11c162499709a              # double 0.53467852733912768
	.quad	0x3fe48051dc4407fb              # double 0.64066403408673922
	.quad	0x3fdeba6d70e5117e              # double 0.48012863182909615
	.quad	0x3fd1a1d7a681ab88              # double 0.27550307522204109
	.quad	0x3fdadd1a02972fac              # double 0.41974497082696405
	.quad	0x3fc19d1b3ba6f00c              # double 0.1376070061941167
	.quad	0x3fc0d158c5b30874              # double 0.13138875630653823
	.quad	0x3fd1074360cc3306              # double 0.26606831028838973
	.quad	0x3fdd0da8faccbd40              # double 0.4539587449280198
	.quad	0x3fc688d8b7408468              # double 0.17605122516491467
	.quad	0x3fbd282be6772490              # double 0.11389421822163315
	.quad	0x3fe23ac311592273              # double 0.56967309368435648
	.quad	0x3fda331b54384ac4              # double 0.40936930870627131
	.quad	0x3fdfe55cb56cd1be              # double 0.49837415425579568
	.quad	0x3fcbaf3f50f9dbb0              # double 0.21628562406450902
	.quad	0x3fe50eeca0977086              # double 0.65807181706942752
	.quad	0x3fd967c7d91e51c6              # double 0.39695926859829134
	.quad	0x3fede84727ce712f              # double 0.93460424208345738
	.quad	0x3fec0880db78e3c0              # double 0.87603800645512564
	.quad	0x3fd9d8ff38c5c728              # double 0.40386944336124708
	.quad	0x3fe739d0a9724956              # double 0.72580750555997997
	.quad	0x3f76ad2aa8329700              # double 0.0055362383165282747
	.quad	0x3fde7107372b4264              # double 0.47564869296642187
	.quad	0x3fbc0d38972ca1c0              # double 0.10957673731593953
	.quad	0x3fd6ea60f43423ca              # double 0.35805534217848545
	.quad	0x3fe19d411c74c5f8              # double 0.55044608648148508
	.quad	0x3fc7e44d35144a48              # double 0.18665471164475123
	.quad	0x3fe4b66019de8932              # double 0.64726262142747815
	.quad	0x3fde08698853863e              # double 0.46926344216453575
	.quad	0x3fe4b5b54281eb4e              # double 0.64718115796800091
	.quad	0x3fd4990ac2378bf0              # double 0.32184094397069796
	.quad	0x3fc92a85e3366b1c              # double 0.19661019892085896
	.quad	0x3fea188262fa2e36              # double 0.81549186069009383
	.quad	0x3fd98f89cf32a584              # double 0.39938588365711092
	.quad	0x3fdd6499a1de45ce              # double 0.45926514441916033
	.quad	0x3fee9a961d7e0fc9              # double 0.9563704086326591
	.quad	0x3fc84b44e0d5e160              # double 0.18979702928823894
	.quad	0x3feca52064f540da              # double 0.89515704840053023
	.quad	0x3fe7828bcc0223b5              # double 0.73468580098516745
	.quad	0x3fe3d56d5e1a7585              # double 0.61980312709390317
	.quad	0x3fcd9752b4e7ece8              # double 0.23118051369951975
	.quad	0x3fcb19b12ecd7270              # double 0.21172156129150066
	.quad	0x3fc13f402e002544              # double 0.13474275823709025
	.quad	0x3fedb8b240515b24              # double 0.92879593431539264
	.quad	0x3fd9d8ecc049b7b2              # double 0.40386503961678522
	.quad	0x3fc4563e55d79698              # double 0.15888194266806432
	.quad	0x3fda577ffd0377cc              # double 0.41159057339052363
	.quad	0x3fe8c824b8d4271d              # double 0.77443157290801745
	.quad	0x3feaf84f97ddb6d6              # double 0.84281139050809872
	.quad	0x3fe4fcdb38f5e3eb              # double 0.65586625218486228
	.quad	0x3fe371cd9702c2f7              # double 0.60764197820944232
	.quad	0x3fda8580750e4f2a              # double 0.41439830237617292
	.quad	0x3fdffa87d39d1d48              # double 0.49966617265132074
	.quad	0x3fe028f7252e19f1              # double 0.50500066053137804
	.quad	0x3fdfefe439ff52f2              # double 0.49901681579403523
	.quad	0x3fc22ff2c4f86af4              # double 0.14208826654142792
	.quad	0x3fc4b98d51033ab0              # double 0.1619125981873899
	.quad	0x3fe5b45945e9d80d              # double 0.67826522498103403
	.quad	0x3fd05ad2740b4e30              # double 0.25554334003865886
	.quad	0x3f94fbc861bf9aa0              # double 0.02049172493561946
	.quad	0x3fe4b8f4bd3e89d3              # double 0.64757763826156134
	.quad	0x3feaa42b66fc7a0e              # double 0.83254022707461828
	.quad	0x3faa1d6c7d4a9160              # double 0.051005735678048891
	.quad	0x3fe3d04067041727              # double 0.61917133446033723
	.quad	0x3f61c04879f91900              # double 0.0021668830447963972
	.quad	0x3fbac2a792755068              # double 0.104532693153773
	.quad	0x3fc32673e0c9f320              # double 0.14961098171252107
	.quad	0x3fee313d1d66ad7a              # double 0.9435105871429379
	.quad	0x3fe44ba5718c2e02              # double 0.63423416306744707
	.quad	0x3febb16c6579cd70              # double 0.86540813273897577
	.quad	0x3fd4eafc4d91539a              # double 0.32684238028496682
	.quad	0x3feb33dcf607d71a              # double 0.85008094838005666
	.quad	0x3fe6b2f37c438df7              # double 0.70934461851396591
	.quad	0x3febdf2d9bb1d2c3              # double 0.87099342736345198
	.quad	0x3fea1ba79605ba9d              # double 0.81587580968137596
	.quad	0x3fec5c8ed0f6238a              # double 0.88629856884755154
	.quad	0x3fe4a55dfba7d47d              # double 0.64518641616326955
	.quad	0x3fe3719cc2108db2              # double 0.60761869338278118
	.quad	0x3fefc5378371ffd5              # double 0.99282432244217011
	.quad	0x3fe4391050637e5e              # double 0.63196578694255456
	.quad	0x3fdb5039a5a11dd6              # double 0.42677155661337218
	.quad	0x3fe41d0c9668a3b0              # double 0.62854604126652269
	.quad	0x3faf4e3e8c9f9350              # double 0.061143831888137101
	.quad	0x3feb10a7069656b4              # double 0.84578276907514871
	.quad	0x3fbb087bc471e720              # double 0.10559819742220755
	.quad	0x3fe9edd1ecb04d44              # double 0.81028076389558423
	.quad	0x3feaa76fdb9cc2c8              # double 0.83293908017193363
	.quad	0x3fe0463530dcd9dd              # double 0.50857028525825465
	.quad	0x3fed7c00ec72d5c6              # double 0.92138715916979019
	.quad	0x3fef707d6b6cd20b              # double 0.98248167973957956
	.quad	0x3fe7039e700613f5              # double 0.71919175986897577
	.quad	0x3fe99aca48c11a35              # double 0.80014528474641244
	.quad	0x3fd558780f669522              # double 0.33352471832252395
	.quad	0x3feeba49ba8a0c08              # double 0.96024023469397068
	.quad	0x3fcd894e575f2368              # double 0.23075274721329753
	.quad	0x3fe8a17cd4f02b25              # double 0.76971284474834489
	.quad	0x3fdda153b61593a0              # double 0.46297161847751944
	.quad	0x3fedde1902ca622f              # double 0.93336153550177936
	.quad	0x3fec1bb41650ce03              # double 0.87838177069210166
	.quad	0x3feaa1cf87494836              # double 0.83225227759454046
	.quad	0x3fe0c079537aa1b7              # double 0.52349535278795301
	.quad	0x3fba963de7ed3d10              # double 0.10385500824235216
	.quad	0x3fec4445e2c54bdb              # double 0.88333410540723933
	.quad	0x3fb40303b4212650              # double 0.078170997120787122
	.quad	0x3fbe81ac7bd5c6c8              # double 0.11916616462056162
	.quad	0x3fd4d396c4026f70              # double 0.32541436330369944
	.quad	0x3fd4fd65f69c686c              # double 0.32796620448210123
	.quad	0x3fd66566b5a3b640              # double 0.34993903864128484
	.quad	0x3fa54d9eb84ff330              # double 0.041607818602619751
	.quad	0x3fe66481b6d2d344              # double 0.69976888377878099
	.quad	0x3fd2c31663c1185a              # double 0.29315719358090109
	.quad	0x3fda30c13edb4db4              # double 0.40922576082558781
	.quad	0x3fda78e82c240366              # double 0.41362957296956038
	.quad	0x3fd28512015554b4              # double 0.28937196855742831
	.quad	0x3fe30d81cce44b61              # double 0.59539880769657938
	.quad	0x3fcee4714d33767c              # double 0.2413465144117487
	.quad	0x3fe189bdd797ddec              # double 0.54806415660908447
	.quad	0x3fb12209be24c370              # double 0.066925629541186415
	.quad	0x3fd577c72de784cc              # double 0.33543567164276733
	.quad	0x3fee20df6ac22600              # double 0.94151278353928091
	.quad	0x3fba2e5a10f873c0              # double 0.102269772666161
	.quad	0x3fe5976a3ee144a9              # double 0.67473327904931069
	.quad	0x3fba82fd1993f188              # double 0.10356122850857308
	.quad	0x3febc9a76eb13912              # double 0.86836597079835287
	.quad	0x3fb497e43ee18448              # double 0.080442681648052461
	.quad	0x3fdcf011e8045db6              # double 0.45215270669856567
	.quad	0x3fe8bbc89f75035b              # double 0.77292281288110176
	.quad	0x3fea7e676e0f868a              # double 0.82793017860622453
	.quad	0x3fed200a20d4825c              # double 0.91016107952243485
	.quad	0x3fee54679fd89944              # double 0.94780331821383656
	.quad	0x3fdfffe5351f134a              # double 0.49999361217151217
	.quad	0x3fed5af154312d72              # double 0.91735140270013305
	.quad	0x3fc99ef8608a8bf4              # double 0.20016388620305714
	.quad	0x3fd7375f5088c1d4              # double 0.3627546583620902
	.quad	0x3febed7c068ab17d              # double 0.87273980405511475
	.quad	0x3fe8658bd9bbff83              # double 0.76239578748935377
	.quad	0x3fd9d8fb266fd7b2              # double 0.40386847261049319
	.quad	0x3fdf8d859f7fd5be              # double 0.49301281524762064
	.quad	0x3fc78bd7c5077fd0              # double 0.18395516510554311
	.quad	0x3fa7cc9879f73c30              # double 0.046482815636061381
	.quad	0x3fe05c01ef922fc6              # double 0.51123139182299648
	.quad	0x3fe6e57e25cf7221              # double 0.71551425347167108
	.quad	0x3fec99c981ab9ac8              # double 0.89377284361111098
	.quad	0x3fe9549df53d7350              # double 0.79157922647901025
	.quad	0x3fd1d2c77e6dabd8              # double 0.27848994585536735
	.quad	0x3fcc03f7f4cf8b48              # double 0.21887111142776861
	.quad	0x3fb7d519ad4301c0              # double 0.093095402527075599
	.quad	0x3fd71fd28f61d084              # double 0.36131729128033663
	.quad	0x3fef22f8c560a84b              # double 0.97301901388460387
	.quad	0x3feffc4580775607              # double 0.99954485980077911
	.quad	0x3fe0ea061ae11acd              # double 0.52856736421457529
	.quad	0x3fecce17841e4561              # double 0.90015769771904897
	.quad	0x3fc522fd6a4494b4              # double 0.16513030709135068
	.quad	0x3fe0e2c34a0c0ebf              # double 0.52768101179432125
	.quad	0x3fd0fcb4ea3deff4              # double 0.26542399287404739
	.quad	0x3fdea244b1fc3328              # double 0.47865407353747225
	.quad	0x3fe44679fe20c084              # double 0.63360309252131275
	.quad	0x3fe844ab745dd4fe              # double 0.75838253715360771
	.quad	0x3fc8c5eeaf1ed4e4              # double 0.19354041624834573
	.quad	0x3fe588bbf7707acc              # double 0.67294119194033319
	.quad	0x3fec418bb843c4bd              # double 0.88300119389727849
	.quad	0x3fa1897bad9d5eb0              # double 0.034252037947849145
	.quad	0x3fdf50125126c448              # double 0.48926217961258489
	.quad	0x3feba4523d56d3b7              # double 0.86380874615007641
	.quad	0x3fa1ac9f1e7ed850              # double 0.034520122978776713
	.quad	0x3fdd9e1e756676e4              # double 0.46277581658237765
	.quad	0x3fca5ec163bc8ec4              # double 0.20601670618008516
	.quad	0x3fd61be9d521f432              # double 0.34545369924291258
	.quad	0x3fe395872870e623              # double 0.61200292490611152
	.quad	0x3fe9b3f1bd1ab053              # double 0.80321585592674649
	.quad	0x3fe3e9c801646d38              # double 0.62228775283748572
	.quad	0x3fad3fd8b7ed22e0              # double 0.057127735568945459
	.quad	0x3fec52ce8a4bfa9c              # double 0.88510825167744
	.quad	0x3fc492d76531910c              # double 0.16073124352545454
	.quad	0x3fc6247127a41114              # double 0.17298712192144505
	.quad	0x3fc0ef00b674e628              # double 0.13229378613486742
	.quad	0x3feb2590a1f765d2              # double 0.84833556779920571
	.quad	0x3fd2f1c29c4f3528              # double 0.29600587143507306
	.quad	0x3fc9920afd858030              # double 0.19976937655428761
	.quad	0x3fef2c4e3ad4a3cc              # double 0.9741583966289169
	.quad	0x3fd893011c1d0828              # double 0.38397243256997848
	.quad	0x3fd140c2cb70553c              # double 0.26957769267149323
	.quad	0x3faf59b4df42d600              # double 0.061231281522321268
	.quad	0x3fe717030afcaa5b              # double 0.72155906816380921
	.quad	0x3feac4cf705055ac              # double 0.83652469574251631
	.quad	0x3fe70c3b1045329b              # double 0.72024300744813574
	.quad	0x3feaa813edb79252              # double 0.83301731518856514
	.quad	0x3feb8bb164ecca1d              # double 0.86080236160188728
	.quad	0x3fa1989bc1fff950              # double 0.034367434913280648
	.quad	0x3fe64fa9048737fa              # double 0.69722414860166215
	.quad	0x3fca3a86c71e6298              # double 0.20491108629791621
	.quad	0x3fdf197fa6b7a7e8              # double 0.4859313133334795
	.quad	0x3fe1581c3d0f2e86              # double 0.54200565267224543
	.quad	0x3fd2446d6cda6bd0              # double 0.28542647962757162
	.quad	0x3fe034ff6120e97a              # double 0.50646943064138772
	.quad	0x3fe59bf4b686c055              # double 0.67528758668596345
	.quad	0x3fec3297f3c2cba1              # double 0.88117597207598319
	.quad	0x3fc357a5c5fad7b4              # double 0.15111229102120449
	.quad	0x3fe55de1eb11e08f              # double 0.66771026527477939
	.quad	0x3fe4cb129b3b8535              # double 0.64978914564941326
	.quad	0x3f80679eb2ccda40              # double 0.0080101393046848601
	.quad	0x3fea76645ce570b6              # double 0.82695215362357177
	.quad	0x3fe1beaba76105ce              # double 0.55452521029672552
	.quad	0x3fe3dbc65e4e46d2              # double 0.62057798785300577
	.quad	0x3fbc241ee81ffc18              # double 0.10992615859139254
	.quad	0x3fdfbe4532688cd0              # double 0.4959881775159376
	.quad	0x3fe51d8899e26fb6              # double 0.65985517554826489
	.quad	0x3f82798098fb58c0              # double 0.0090208098112437573
	.quad	0x3fe44906bf8ded2d              # double 0.63391435063332369
	.quad	0x3fcc5ccc931519b0              # double 0.22158200437315889
	.quad	0x3fefede7cb9d6db4              # double 0.99779119270845351
	.quad	0x3fefd84d52b3b1a2              # double 0.99515405800552892
	.quad	0x3fe2fee8aa3683dc              # double 0.59361680264202787
	.quad	0x3fe7862c050a071b              # double 0.73512841209614821
	.quad	0x3fc730cd9fae3c4c              # double 0.18117685601143518
	.quad	0x3fd1780f760983b2              # double 0.27295290495936364
	.quad	0x3fcf231b049da774              # double 0.24325883603460918
	.quad	0x3fe9fd6275effe65              # double 0.81218073877967056
	.quad	0x3feea22964ee7cc1              # double 0.95729512894822488
	.quad	0x3fefd4b49130209e              # double 0.9947150073721962
	.quad	0x3f6a6c2fe2dbf900              # double 0.0032254157330263711
	.quad	0x3fcd209600ca2c38              # double 0.22755694426118267
	.quad	0x3fd265b4093b79f4              # double 0.28745747472376526
	.quad	0x3feb66bc3bc5be94              # double 0.85629092859558619
	.quad	0x3fca736871146ac8              # double 0.20664697190735226
	.quad	0x3fdfc083a3c9ea10              # double 0.49612513537400194
	.quad	0x3fe550c342522391              # double 0.66610873177806884
	.quad	0x3fd92d40306c291a              # double 0.39338688591728188
	.quad	0x3fe7bb0d9d90b7d1              # double 0.74158364080880734
	.quad	0x3fe2d1b486b4095c              # double 0.58809877690536494
	.quad	0x3fdde7f55d42a24a              # double 0.46728262050104219
	.quad	0x3feee2d31f71df00              # double 0.96518856183590174
	.quad	0x3fa89cdde8fbf0e0              # double 0.04807179898304681
	.quad	0x3fe6f0e41c8181f8              # double 0.71690564696842696
	.quad	0x3fe8b41a788c3a20              # double 0.77198527855381726
	.quad	0x3fe0d2cb65f15c4e              # double 0.52573175345140455
	.quad	0x3fe5c3002bc82893              # double 0.68005379248758613
	.quad	0x3fb08d9ed5797898              # double 0.064660956495091404
	.quad	0x3fd098231215dd0a              # double 0.25928570524361361
	.quad	0x3fef55d01bf9e8e9              # double 0.97922521080115842
	.quad	0x3feb9bc6923bc80d              # double 0.86276558457598329
	.quad	0x3fce0f5af38ee22c              # double 0.23484360592353093
	.quad	0x3fc4ecda624c48d0              # double 0.16347818183618879
	.quad	0x3fe2ea2f82874334              # double 0.59108710759946925
	.quad	0x3febc85f1a6ac6be              # double 0.86820941123570328
	.quad	0x3fe13c82d0cf8146              # double 0.53863659652055484
	.quad	0x3fdef332b9ca1212              # double 0.4835936369275099
	.quad	0x3fda633bab3c6698              # double 0.41230670664081392
	.quad	0x3f8b4530b6a8eb80              # double 0.01331556374963383
	.quad	0x3fefd9298f256f28              # double 0.99525907476661235
	.quad	0x3fd002f4136395a6              # double 0.25018026250321623
	.quad	0x3fe426a7cdab061a              # double 0.62971868676703768
	.quad	0x3fe921f70550dbc5              # double 0.78539610899212475
	.quad	0x3feef96849041f70              # double 0.96794523488004636
	.quad	0x3fda8ba695a2d85a              # double 0.41477360356237158
	.quad	0x3fccd4bdf59dac88              # double 0.22524237149204773
	.quad	0x3fece0ab6fce21ef              # double 0.90242549740747602
	.quad	0x3fe0bf59c35f755c              # double 0.52335823210493571
	.quad	0x3fb4f8088cd8d830              # double 0.081909689318167222
	.quad	0x3fba2cd10b56f3d0              # double 0.10224634672972788
	.quad	0x3fe63eb94ad5480f              # double 0.69515671363683562
	.quad	0x3fe22c307802175e              # double 0.56789420546622771
	.quad	0x3fe21e97debe55d0              # double 0.56623452667798269
	.quad	0x3fde2850f61e0bcc              # double 0.47121070895098849
	.quad	0x3fed90b61adae560              # double 0.92391495938424483
	.quad	0x3fc454ea622122b4              # double 0.15884141723133427
	.quad	0x3fd513c6bf9b7a4e              # double 0.32933205329564863
	.quad	0x3feaa6ca8f2a20e1              # double 0.83286025964573807
	.quad	0x3feed64f0e4f4566              # double 0.96366074366430321
	.quad	0x3fe46d4739fcf8c1              # double 0.63833962751211726
	.quad	0x3fe03c120044e5e4              # double 0.50733280232014666
	.quad	0x3fe618642ed1c845              # double 0.69047745842386432
	.quad	0x3fe92c0780593460              # double 0.78662467067773533
	.quad	0x3fe7a846799826ab              # double 0.73929141758818184
	.quad	0x3fe750f670eec6db              # double 0.72863313729450441
	.quad	0x3fed3ee1d5e31749              # double 0.91392604613131667
	.quad	0x3fe29b6837c7e85d              # double 0.58147059340195606
	.quad	0x3fd489a31d41a5aa              # double 0.32090070588182107
	.quad	0x3fe073b559b8e64a              # double 0.51412456058387446
	.quad	0x3f7a64b84c252680              # double 0.0064437102431128546
	.quad	0x3feccf07542498c0              # double 0.90027204927607585
	.quad	0x3fb19ac441433a80              # double 0.068767801221136793
	.quad	0x3fe16cf3d19996c1              # double 0.54454985558978575
	.quad	0x3fd11c5e41286cb6              # double 0.26735645640446692
	.quad	0x3fdb40132abce690              # double 0.42578581975576757
	.quad	0x3fc4ad16509b02f4              # double 0.16153220115486244
	.quad	0x3fce3e3ecb9fc118              # double 0.2362745756395348
	.quad	0x3fcc03732a5e9d40              # double 0.21885528153254974
	.quad	0x3fca1887dde03734              # double 0.20387361844807972
	.quad	0x3fa33a847b37c0f0              # double 0.037555828133806091
	.quad	0x3fd16a4ae7b58720              # double 0.27211258533326266
	.quad	0x3f95a08d9e5491a0              # double 0.021120274342267487
	.quad	0x3fb387095272f6c0              # double 0.076279242161912286
	.quad	0x3fbceba1d3f82808              # double 0.11297046113045905
	.quad	0x3fa1f253771e41f0              # double 0.035051925936503525
	.quad	0x3fb6bb7e352ef460              # double 0.088798416122658264
	.quad	0x3fe4030e328da6d9              # double 0.62537298082062442
	.quad	0x3fdd707ffa9e96b6              # double 0.45999145006713194
	.quad	0x3fecb1f5b540ff5f              # double 0.89672360802795115
	.quad	0x3fe9f09cda360b2f              # double 0.81062166804654179
	.quad	0x3fe8096b1badc6c7              # double 0.75114970594423702
	.quad	0x3fea7a19d2f38fda              # double 0.82740489198158262
	.quad	0x3fe1d7ff09baac04              # double 0.55761672878486523
	.quad	0x3fe09adc910467e8              # double 0.51890400241540835
	.quad	0x3fdceeaec6a32496              # double 0.45206803701564391
	.quad	0x3fdea1e47ab51c30              # double 0.47863113387251399
	.quad	0x3fb6f46ec1a96c58              # double 0.089667246132579037
	.quad	0x3fe65b10075d22c3              # double 0.69861604154819934
	.quad	0x3fd28cdf0077e256              # double 0.28984808965427555
	.quad	0x3fb80dcbf4526688              # double 0.093960520886321786
	.quad	0x3fdda796751b1cf6              # double 0.46335374294399345
	.quad	0x3fe23cefa09493d1              # double 0.56993848193507735
	.quad	0x3fb4d7b157636d10              # double 0.081416210017256185
	.quad	0x3fdce811bfb4859e              # double 0.45166438790519148
	.quad	0x3fda89f005dd8834              # double 0.41466904232777613
	.quad	0x3fc289e2dea664c8              # double 0.14483295318203759
	.quad	0x3fd707f3928fc9b2              # double 0.35986031830466481
	.quad	0x3fec74fad51ba366              # double 0.88927976248406249
	.quad	0x3fe4b4a535d43927              # double 0.64705143464542381
	.quad	0x3fee5d2ffcf68bcd              # double 0.9488754215893721
	.quad	0x3fb4ee1dcbb6ba40              # double 0.081758367762383877
	.quad	0x3fd0650ab5951850              # double 0.25616710407883136
	.quad	0x3fcedcea431f09d4              # double 0.24111679341701964
	.quad	0x3fd815a6bd52636a              # double 0.37632149208507448
	.quad	0x3fb7dd95ff01d638              # double 0.093224882848368718
	.quad	0x3fe53369f3a2507f              # double 0.66252610764287556
	.quad	0x3fd93cb5404ccd5e              # double 0.39433032302186699
	.quad	0x3fda62cf26d93922              # double 0.41228083413888517
	.quad	0x3fe9eb8028ebf47d              # double 0.80999763481635478
	.quad	0x3fcc16e103485ca0              # double 0.21944821033750816
	.quad	0x3fe8936f46b4d591              # double 0.76799739656296329
	.quad	0x3fdc8454a17e94a0              # double 0.44557681818907646
	.quad	0x3fe57418388a531b              # double 0.67042170565636938
	.quad	0x3fe3948c981a0ee6              # double 0.61188344676380946
	.quad	0x3fe83ca9e929c32b              # double 0.75740523852991737
	.quad	0x3f9431b6239528c0              # double 0.019720884248535908
	.quad	0x3fc5a5163032862c              # double 0.16910054543863973
	.quad	0x3fee4ef225107f84              # double 0.94713694800519521
	.quad	0x3fd19f884b6f301e              # double 0.27536208502420034
	.quad	0x3fde9e0f92c54ebe              # double 0.47839726765708324
	.quad	0x3fe8c343409e05e4              # double 0.77383577938615788
	.quad	0x3fe3f599c9113fe0              # double 0.62373055716488679
	.quad	0x3f653dc8ded9fa00              # double 0.0025929377796380937
	.quad	0x3fe94bcbb88292eb              # double 0.79050241505737284
	.quad	0x3fcefc5e464757fc              # double 0.2420766680867813
	.quad	0x3fe366da9e589436              # double 0.60630541731791854
	.quad	0x3fe88f7d2565b7f7              # double 0.76751572899024623
	.quad	0x3fe3dfe3f58dab87              # double 0.62108037910125879
	.quad	0x3fe3679b3ed453da              # double 0.60639726897590696
	.quad	0x3fd0b7562e2053da              # double 0.26118998054999809
	.quad	0x3f8360b11ed5be80              # double 0.0094617688689304646
	.quad	0x3fd64dec1eff733e              # double 0.34850600268491749
	.quad	0x3fdfbd5e56308268              # double 0.49593313614790313
	.quad	0x3fd9971bf0037294              # double 0.39984796942534584
	.quad	0x3fe5cf21a21d678a              # double 0.68153459227618041
	.quad	0x3fdc1cd4b32924b2              # double 0.43925969597018899
	.quad	0x3fef7cd83f30c953              # double 0.98398983327778422
	.quad	0x3febaa6f07ac9e7b              # double 0.86455489634404559
	.quad	0x3fe781757ccb461c              # double 0.73455309270702029
	.quad	0x3fe8d0ab050cc511              # double 0.77547217356019094
	.quad	0x3fc2acb634f5d474              # double 0.14589574418974716
	.quad	0x3fe79741e6488248              # double 0.73721404053873929
	.quad	0x3fb52c0123faff98              # double 0.08270270470074903
	.quad	0x3fe860d3e6ec3f1d              # double 0.76181979276768497
	.quad	0x3fe3fc3e436ce6c5              # double 0.62454140824339588
	.quad	0x3fdfdbda46b338e8              # double 0.49779374031358126
	.quad	0x3fe89d0c96f9fa98              # double 0.76917104232400657
	.quad	0x3fe0d20ce1dcb8b1              # double 0.52564090837201694
	.quad	0x3fc5b9b13a50e88c              # double 0.16972937915290165
	.quad	0x3fc9c63880ec87d0              # double 0.20136171622385612
	.quad	0x3fcaa842dcc12004              # double 0.208259923734886
	.quad	0x3feab2769c07573d              # double 0.83428507303572241
	.quad	0x3fefd0720493cd51              # double 0.99419499296201696
	.quad	0x3fe03858d3574b47              # double 0.50687829282319619
	.quad	0x3fddfaf0c40c2c86              # double 0.46844119210499746
	.quad	0x3fee39d1d08ed5fc              # double 0.94455805524802327
	.quad	0x3fc0c4ff271b68dc              # double 0.13101186189198344
	.quad	0x3fae2d426fb771f0              # double 0.05893905271270572
	.quad	0x3fecfeadb941f087              # double 0.90608869727249519
	.quad	0x3fe8edb1cc2ec875              # double 0.77901544455950378
	.quad	0x3fe983165f91bf98              # double 0.79725187936672892
	.quad	0x3fb242e2486f2070              # double 0.071333067592719734
	.quad	0x3febbdbd9995c4d1              # double 0.86691169735981977
	.quad	0x3fb10711070d1298              # double 0.066514076444102677
	.quad	0x3fea668b31219c69              # double 0.82501754375415459
	.quad	0x3fc62393e1aa77dc              # double 0.17296074408380846
	.quad	0x3feb193f2c39acc6              # double 0.84683188092949346
	.quad	0x3fd900164f6c760a              # double 0.39063031917780278
	.quad	0x3fe19232284fbef2              # double 0.54909618256894377
	.quad	0x3fd6dd8710d65f3c              # double 0.35727097172047073
	.quad	0x3fd50a78fe2c6f08              # double 0.32876419850957506
	.quad	0x3fe7a19caa148a03              # double 0.73847802370829674
	.quad	0x3fe15c263112b5e5              # double 0.54249867996776102
	.quad	0x3fe5209ebf37499e              # double 0.66023194643848959
	.quad	0x3fedd60b03ee1974              # double 0.93237829940407701
	.quad	0x3fdbcd3ab3dd07ee              # double 0.43440120281968475
	.quad	0x3fe081e8a8521f2a              # double 0.51585801005510246
	.quad	0x3fe49046f984da2d              # double 0.64261196836634371
	.quad	0x3fe47a05cf24c2c3              # double 0.63989534814580684
	.quad	0x3fe3d803cc8b9890              # double 0.62011899900677925
	.quad	0x3fe023aab2637673              # double 0.50435385552891743
	.quad	0x3fd0c6ad8a7180d6              # double 0.26212633628712234
	.quad	0x3fb929acc1e661d8              # double 0.098292157496309485
	.quad	0x3fee31f8bcc3f906              # double 0.94360005253091184
	.quad	0x3fdf4eb43ef55fae              # double 0.48917871616640241
	.quad	0x3fa3b8ce903a9200              # double 0.038519339662602903
	.quad	0x3fe9b1bcb4b4f3ba              # double 0.80294642729096855
	.quad	0x3fecbfdab833bb72              # double 0.89841972329109709
	.quad	0x3fe8637b6180220f              # double 0.76214379351682904
	.quad	0x3fda641a655fd25a              # double 0.41235980892023394
	.quad	0x3fd89eff613c6db0              # double 0.38470444198329812
	.quad	0x3fe7f6c89d828fb0              # double 0.74887495769188739
	.quad	0x3fe33c601b7a4def              # double 0.60112004629848836
	.quad	0x3fe6c3c9da1acc0d              # double 0.71139996145791573
	.quad	0x3fd8c3be93a5f4ce              # double 0.38694729250694315
	.quad	0x3fe6c3a839c39588              # double 0.7113839271739133
	.quad	0x3fdfd61674a43494              # double 0.49744187727703459
	.quad	0x3fe0c8a58a5ffb7f              # double 0.52449299837449803
	.quad	0x3fe317ac07e356bc              # double 0.5966396478713345
	.quad	0x3fc23e427c2a3b10              # double 0.1425250154756772
	.quad	0x3fa384cbb300f5a0              # double 0.038122525788348627
	.quad	0x3fb078d7cdcf1aa8              # double 0.064343917604768763
	.quad	0x3feb8c94b97502c6              # double 0.86091076109013254
	.quad	0x3fea2a5aa9fc898c              # double 0.81767018509371913
	.quad	0x3fe16898f52126c8              # double 0.54401824833731727
	.quad	0x3fe639f66136aeae              # double 0.69457549082786385
	.quad	0x3fa54bb5b8252f00              # double 0.04159324524752428
	.quad	0x3feacb355e6c5d5b              # double 0.83730572168398554
	.quad	0x3fe851f183b3ddf2              # double 0.76000285838284598
	.quad	0x3fe3f27dde976352              # double 0.62335103487849097
	.quad	0x3fcc8d53015533d0              # double 0.22306287350730125
	.quad	0x3fdbd5770684de5c              # double 0.43490386616347165
	.quad	0x3fd55a30d6cee84e              # double 0.33362980821005273
	.quad	0x3fdef4d6447d56de              # double 0.48369366348684462
	.quad	0x3fe361a83e686dcc              # double 0.60567104519889758
	.quad	0x3fe3ee4f4fca229d              # double 0.62284055313019204
	.quad	0x3fef81388e2db8b4              # double 0.98452403802163823
	.quad	0x3fe758345f274fe4              # double 0.72951716026954871
	.quad	0x3fb46563b349ee38              # double 0.079672080299069914
	.quad	0x3fee02bd2699d695              # double 0.93783433474773636
	.quad	0x3fe32edfe29665b8              # double 0.59947199111336769
	.quad	0x3fea4a38be100678              # double 0.8215602600250369
	.quad	0x3fe355aed4acf338              # double 0.60420934236717638
	.quad	0x3fd1968e69f7037a              # double 0.27481422756323293
	.quad	0x3fa83edcd8fac3f0              # double 0.0473546042316072
	.quad	0x3fdd996b01c68b92              # double 0.46248889134783966
	.quad	0x3fc61e2d3e7386d4              # double 0.17279592084292139
	.quad	0x3fed58bac14be395              # double 0.91708123925410467
	.quad	0x3fdce8ce9fe376f4              # double 0.4517094193850959
	.quad	0x3feb9ff92df9b3f8              # double 0.86327799777575276
	.quad	0x3fe8553cc04ed1b9              # double 0.76040494499334621
	.quad	0x3fea18fd947eba03              # double 0.81555060389456491
	.quad	0x3feb643c41b5aba3              # double 0.85598576387325342
	.quad	0x3fe4eb50ec95ca14              # double 0.65372511108427256
	.quad	0x3fd8afb03c7e8604              # double 0.38572317035331616
	.quad	0x3fb8edf0de50cb98              # double 0.097380689884444371
	.quad	0x3fdcf803fdb6477a              # double 0.45263767029347657
	.quad	0x3fed1896e54b5b37              # double 0.90925164016775895
	.quad	0x3fde27e39342a7d8              # double 0.47118462925811633
	.quad	0x3fbace57f2ba3900              # double 0.10471105266535474
	.quad	0x3fb31a0dde8e9088              # double 0.074616305194071697
	.quad	0x3fb013ef522968c0              # double 0.062804181632063028
	.quad	0x3fed0b617857c58e              # double 0.90763925079788677
	.quad	0x3fe36d6b2cbaa483              # double 0.60710676895281812
	.quad	0x3faff27728c0fd80              # double 0.062396739697301307
	.quad	0x3fdeb6795e5b7da2              # double 0.47988733496273472
	.quad	0x3fd46a7aa76c2832              # double 0.31899896955349327
	.quad	0x3febe94db4c859d4              # double 0.87222943600755309
	.quad	0x3fd98125b3493466              # double 0.39850752361673469
	.quad	0x3fcc4880811db5b4              # double 0.22096258453841033
	.quad	0x3fde227b4a81ac6c              # double 0.47085459018734954
	.quad	0x3fd0a07de804909a              # double 0.25979564340583183
	.quad	0x3fdc186aaafb3c4e              # double 0.43899027535821211
	.quad	0x3fe99008ac80ca5f              # double 0.7988322610093056
	.quad	0x3fe9c9815b2abd36              # double 0.8058478146175847
	.quad	0x3fd24fc34b2d8bb8              # double 0.28611833898156247
	.quad	0x3fe1fea558e8ce88              # double 0.56233470311276879
	.quad	0x3fc633822c066ab8              # double 0.17344691419278546
	.quad	0x3fd7e4716ae139e4              # double 0.37331805646399929
	.quad	0x3fbf09f900348c50              # double 0.12124592070590379
	.quad	0x3fe6f67c46190db1              # double 0.71758855525006571
	.quad	0x3fefceaa3154e4ee              # double 0.99397763857919386
	.quad	0x3fedd8de7c5d13cb              # double 0.93272327699434621
	.quad	0x3fe444a6ab3bc696              # double 0.63338025516550789
	.quad	0x3fe36ff8898a1efc              # double 0.6074183164900826
	.quad	0x3fe5a30dffd97d18              # double 0.67615413637750788
	.quad	0x3fe6b695466481c4              # double 0.70978797672801663
	.quad	0x3fcf123b942df37c              # double 0.2427439187557886
	.quad	0x3fe9236cff522c3f              # double 0.78557443492298507
	.quad	0x3fd73f96cb3433f2              # double 0.36325616687901097
	.quad	0x3fd741404a3aeea0              # double 0.36335761307757686
	.quad	0x3fd03a55c131b5f0              # double 0.25356048456782698
	.quad	0x3feb6966805ee3ee              # double 0.85661625931163399
	.quad	0x3fe11877eba726c9              # double 0.5342368700596235
	.quad	0x3fd62f71c78ce14c              # double 0.34664577948889952
	.quad	0x3fe66360dd84c300              # double 0.69963114991523412
	.quad	0x3fddcc298891b65c              # double 0.46558607422671172
	.quad	0x3fe88a25f471c70b              # double 0.76686380141311028
	.quad	0x3fb3921623805f88              # double 0.076447852771137303
	.quad	0x3fe14c70118f5682              # double 0.54058078221960693
	.quad	0x3fb555ec94e37ed0              # double 0.083342348432320578
	.quad	0x3fed252150b153b2              # double 0.9107824874905559
	.quad	0x3fe64561606d0262              # double 0.69596928437392713
	.quad	0x3fbd6073c72d1d08              # double 0.11475299465847766
	.quad	0x3fc52bc39d04b800              # double 0.16539807478824287
	.quad	0x3fda8d7f09a4a47e              # double 0.41488624517166517
	.quad	0x3fc08b3133eec120              # double 0.12924780879758035
	.quad	0x3fcbae15b99b1afc              # double 0.21625014841830381
	.quad	0x3fbf6e1712ae1188              # double 0.12277359205297078
	.quad	0x3fd7c41b839664b0              # double 0.37134445047702069
	.quad	0x3fe048857df42fe8              # double 0.5088527164493799
	.quad	0x3fd55f0a514b068a              # double 0.3339257997396109
	.quad	0x3fe8a35e81cf56aa              # double 0.76994252542018171
	.quad	0x3fd7ce148e07a75e              # double 0.37195314283473191
	.quad	0x3fde07e5a65918d2              # double 0.46923199887204448
	.quad	0x3fd36573ed7207a2              # double 0.30306719005613492
	.quad	0x3fe7391de730db8a              # double 0.725722266716603
	.quad	0x3fe0306593fccb6f              # double 0.5059078112011387
	.quad	0x3fee5eb6ca000bf3              # double 0.94906176999245273
	.quad	0x3fe454c4d275b54e              # double 0.63534775834492918
	.quad	0x3fb9abca7ce0b578              # double 0.10027757214330346
	.quad	0x3fb7bd903b220728              # double 0.092736257969616376
	.quad	0x3fa6901df36dfdb0              # double 0.044068275418790548
	.quad	0x3fe6c55e3a329ead              # double 0.71159278265709747
	.quad	0x3fd1eb896d793bf0              # double 0.28000102701929475
	.quad	0x3feb5247023a2b93              # double 0.85379362521176672
	.quad	0x3fc38ad69decd4bc              # double 0.15267451010882904
	.quad	0x3fe99e98ee432a7e              # double 0.80061003242128925
	.quad	0x3fe0c300c6eae848              # double 0.52380408145041546
	.quad	0x3fb6012952191820              # double 0.085955221694434147
	.quad	0x3fea1fc63d9ead17              # double 0.81637870822069913
	.quad	0x3fea6a25bff846f3              # double 0.82545745367153101
	.quad	0x3fd8be0342477efc              # double 0.38659745667062828
	.quad	0x3fce520914e36f00              # double 0.236878524016781
	.quad	0x3fda89053274935a              # double 0.41461305548937377
	.quad	0x3fe5ad2fa1f212c9              # double 0.67739087705612022
	.quad	0x3fd4183df82095c8              # double 0.31397961836986754
	.quad	0x3fc3188b17e6c1b4              # double 0.14918650309620107
	.quad	0x3f8ffb477fe675c0              # double 0.015615995970445051
	.quad	0x3fef145dec859657              # double 0.97123619266194338
	.quad	0x3fd9ba04fcb4a65a              # double 0.40197872808730539
	.quad	0x3fec1b565b1012f5              # double 0.87833707605076816
	.quad	0x3fc18b7b976723e8              # double 0.13706917660445517
	.quad	0x3fb9cc9d41917838              # double 0.10077841616427541
	.quad	0x3feb93aa78b23f6c              # double 0.86177562306873545
	.quad	0x3fd37bfcc9d5252c              # double 0.30444259367193882
	.quad	0x3fedab941926f2f3              # double 0.92719464218643421
	.quad	0x3feeec696c70fd05              # double 0.96635886363938594
	.quad	0x3fd5d3e36d9d4380              # double 0.34105764107248859
	.quad	0x3fed734a7148cac3              # double 0.92032358289574068
	.quad	0x3fec47a87f11976e              # double 0.88374733751400725
	.quad	0x3fd786aaab3b8f38              # double 0.36759440156878354
	.quad	0x3fd662db1e025b8e              # double 0.34978368692957751
	.quad	0x3fd089dbdc2ce950              # double 0.2584142351294263
	.quad	0x3fc365965db40ca0              # double 0.15153770041806514
	.quad	0x3feed090b89ac268              # double 0.96295963340351153
	.quad	0x3fe80acb02f57b46              # double 0.75131750657951879
	.quad	0x3fe678b8e2316bd4              # double 0.70223659685449968
	.quad	0x3fcd681fcbe79048              # double 0.22974011856342913
	.quad	0x3fe00aa1374d4fdd              # double 0.5012975769154725
	.quad	0x3fda144a28fa3eb0              # double 0.40748838426314204
	.quad	0x3fe61de739d654eb              # double 0.69115029617628687
	.quad	0x3fb61e12016c2f70              # double 0.08639633688670556
	.quad	0x3fd92b31ad4ec820              # double 0.39326135563453768
	.quad	0x3fd5757b5358f60e              # double 0.33529551638989197
	.quad	0x3fbf09aaa1cf2e58              # double 0.12124124956533799
	.quad	0x3fbc59abd2166ea0              # double 0.11074327353565616
	.quad	0x3feaa098e6791119              # double 0.83210415853730801
	.quad	0x3fdfa2da9013414a              # double 0.4943148047432443
	.quad	0x3fd3823c82df9a76              # double 0.30482399731264509
	.quad	0x3fe7baeea11a1eca              # double 0.74156886544457135
	.quad	0x3fe83f1f1eb52591              # double 0.7577052688367748
	.quad	0x3fded5fa3fdb36e2              # double 0.48181015239684488
	.quad	0x3fa293783458d850              # double 0.036281353368779024
	.quad	0x3fc82bcd84224288              # double 0.18883675529334121
	.quad	0x3fd63d631cde2af2              # double 0.34749677485585473
	.quad	0x3fec9b959dfbed0f              # double 0.89399224144236367
	.quad	0x3fe9c12b0e3cc706              # double 0.80483010082954887
	.quad	0x3fdc9f060f5c95c8              # double 0.4472060346618858
	.quad	0x3fe9d2cea8f61dda              # double 0.80698330879470892
	.quad	0x3f91cb5e7c118400              # double 0.017377353975806642
	.quad	0x3fdd1e86bfb62e9c              # double 0.45498818132248586
	.quad	0x3fea7f0c828ff411              # double 0.82800889492466656
	.quad	0x3fd6d813fdcfc9d6              # double 0.35693836008354418
	.quad	0x3fd12dec86e43ed8              # double 0.2684279744434952
	.quad	0x3fc7beb050a9517c              # double 0.18550685823960211
	.quad	0x3feea17466180434              # double 0.95720882358739922
	.quad	0x3fdaf9618ac425c0              # double 0.42147100974451845
	.quad	0x3fe9ba231d19c238              # double 0.80397182162966541
	.quad	0x3fd7b411ec486618              # double 0.37036560129635765
	.quad	0x3fd466ba4e1ab316              # double 0.31877000453350612
	.quad	0x3fddcd80ad03bb18              # double 0.46566788574175311
	.quad	0x3fbc312090261640              # double 0.11012462157494785
	.quad	0x3fe7ef6bf58ab875              # double 0.74797628362081403
	.quad	0x3fc77c9d76f98344              # double 0.18349045094785243
	.quad	0x3faa5cf68c0fadd0              # double 0.051490501973457392
	.quad	0x3fda1409886dbe06              # double 0.40747297595132215
	.quad	0x3fc09bf64dc69ccc              # double 0.12975958631179763
	.quad	0x3fec9ba4a361eb1d              # double 0.89399940405505485
	.quad	0x3fe8f31dbc103ff9              # double 0.77967726451060948
	.quad	0x3fe08bc63a8bff94              # double 0.51706229624686495
	.quad	0x3fee4b53effbc72d              # double 0.9466952979257478
	.quad	0x3fee4adff41d69d2              # double 0.94663999251070607
	.quad	0x3fd1d1cb54d7f170              # double 0.27842982564450036
	.quad	0x3fe20266b9d70916              # double 0.56279312416907845
	.quad	0x3feafe6a95d4732c              # double 0.84355668319367316
	.quad	0x3fe84672744afed4              # double 0.75859949792353598
	.quad	0x3fd026030c8ac240              # double 0.25232006287390973
	.quad	0x3fe3750081bdd056              # double 0.6080324682248015
	.quad	0x3fdc6cdd74c1f232              # double 0.44414459611997181
	.quad	0x3fe23f2b4ba197ca              # double 0.57021107455943221
	.quad	0x3fea8755928d266a              # double 0.82902029631914087
	.quad	0x3fbadd7de387e680              # double 0.10494219593956622
	.quad	0x3feed61aabe6050d              # double 0.9636357648270476
	.quad	0x3fef865635672cb5              # double 0.98514852934149266
	.quad	0x3fbdf621bf4ee270              # double 0.11703692360505058
	.quad	0x3fdaea57b5a098f2              # double 0.42055313813251793
	.quad	0x3fecff0bfdf3e02a              # double 0.90613364791989182
	.quad	0x3fed816a4fe85a2e              # double 0.92204776389082155
	.quad	0x3fc6005584da4ef0              # double 0.17188519465400232
	.quad	0x3fb38d60e222b730              # double 0.076376013955010035
	.quad	0x3fc44462abffd018              # double 0.158336957916277
	.quad	0x3fbd7d51001fcf08              # double 0.11519342663796917
	.quad	0x3fd79c63bd3ac9a2              # double 0.3689202640481658
	.quad	0x3fe0bb91f3f6a828              # double 0.52289674424287558
	.quad	0x3fe36af0e1db0850              # double 0.6068043147317983
	.quad	0x3fea3a3a59fec5d1              # double 0.81960790230930958
	.quad	0x3fe07003b9bfcc38              # double 0.51367365149633937
	.quad	0x3f9411a476561000              # double 0.019598550532023751
	.quad	0x3fe6d9acf827d69a              # double 0.71407173602956964
	.quad	0x3fc8207f110b3dd8              # double 0.18849171001646314
	.quad	0x3fcd845a8cba35d0              # double 0.23060161467985418
	.quad	0x3fda8aa1112cce3c              # double 0.41471125294922095
	.quad	0x3fe4e2e6e45bcea1              # double 0.65269798852246563
	.quad	0x3fd2722961785f12              # double 0.28821787375044139
	.quad	0x3fd2b66cf55ac1d0              # double 0.29238437614824608
	.quad	0x3fe1ecdba01168cb              # double 0.56016331923754004
	.quad	0x3fc8279b77569430              # double 0.18870871855793458
	.quad	0x3fb5b4e9e00e0e10              # double 0.08479177208032973
	.quad	0x3fe107f20c2a1a68              # double 0.53221990943786768
	.quad	0x3fd580584c140898              # double 0.33595855168835831
	.quad	0x3f95cb87096ff360              # double 0.021284208251006631
	.quad	0x3fe45ca4c8131578              # double 0.63630904271182853
	.quad	0x3fda39fb0a1677c0              # double 0.40978885636456752
	.quad	0x3fb341ffaecf4f90              # double 0.075225811174560286
	.quad	0x3fa8cb125435c0e0              # double 0.048424313334977986
	.quad	0x3fba264687e9a220              # double 0.10214653795413442
	.quad	0x3fee27dd5cd1d0f6              # double 0.94236629608943079
	.quad	0x3fd5c5d541dcc634              # double 0.34019977027773796
	.quad	0x3fce7e57efda6ed4              # double 0.23823069774231576
	.quad	0x3fe660f38e64d466              # double 0.69933488665868704
	.quad	0x3fd02b9618f200d2              # double 0.25266029773775955
	.quad	0x3fe25382d261efba              # double 0.57269421663612907
	.quad	0x3fd45cf31d94b74c              # double 0.31817319763910201
	.quad	0x3fcd494231aed1bc              # double 0.22879817415163284
	.quad	0x3fe75b837f9dc45b              # double 0.72992110180906467
	.quad	0x3fed3dccc2c880cc              # double 0.91379392665478453
	.quad	0x3fd2a29943c894f4              # double 0.29117423648342755
	.quad	0x3fcf33b342094804              # double 0.24376526569773216
	.quad	0x3fd6595d53097b0c              # double 0.34920437916837055
	.quad	0x3fd1ef96ab46e9c0              # double 0.2802483246447558
	.quad	0x3feb87d30740223a              # double 0.86033011833303097
	.quad	0x3fe8fd3e17cc9dea              # double 0.78091339729593057
	.quad	0x3fd133d34c435eb0              # double 0.26878817031454627
	.quad	0x3fe258248a5fcd98              # double 0.57325961137978521
	.quad	0x3fe96c86ad1a2f73              # double 0.79449781235733352
	.quad	0x3fb6012133856358              # double 0.085954737738018649
	.quad	0x3feaaf03882d37b7              # double 0.83386398884771651
	.quad	0x3fc29533d0a3cb44              # double 0.14517829596987941
	.quad	0x3fecc131051a6a88              # double 0.8985829448386804
	.quad	0x3fe807a94b0d8be9              # double 0.75093521746418646
	.quad	0x3fed56c9410de7f8              # double 0.91684401231691393
	.quad	0x3feeee2d14ac1b1d              # double 0.96657423055225744
	.quad	0x3fe028f699b208d8              # double 0.50500040072099761
	.quad	0x3fef2beb7061c320              # double 0.97411128949724812
	.quad	0x3fd1b428931714ce              # double 0.2766210018565517
	.quad	0x3fede64693c4f672              # double 0.93435982571800325
	.quad	0x3fa49b6bb0b260b0              # double 0.040248265571052655
	.quad	0x3fed65830986fdaa              # double 0.91864158497621884
	.quad	0x3fcbe26e09157318              # double 0.21784758990806874
	.quad	0x3fe7bf2c68498d04              # double 0.74208660477270927
	.quad	0x3fe8c34ceb5a8bb5              # double 0.7738403889419404
	.quad	0x3fe7c477ee510510              # double 0.74273296877086814
	.quad	0x3fe76cfbbb030ca0              # double 0.73205362821353858
	.quad	0x3fcc362dd2b52788              # double 0.22040341175516809
	.quad	0x3fec35da239beb20              # double 0.88157374339002458
	.quad	0x3fe34c5d12dddbc9              # double 0.60307172474755888
	.quad	0x3feb086e03ef8d69              # double 0.84477902191831078
	.quad	0x3fee3f3e1a37ffc4              # double 0.94522004242752943
	.quad	0x3fd1b4636f7726e4              # double 0.27663503537460898
	.quad	0x3fe16e7d0d02c3a5              # double 0.5447373632542748
	.quad	0x3fe0732a9d46ebe3              # double 0.5140584060494543
	.quad	0x3fce2f1161073050              # double 0.23581139791201844
	.quad	0x3fecc47636765d55              # double 0.89898214947872168
	.quad	0x3feeda9a1150f733              # double 0.96418479330143325
	.quad	0x3fc0fd5934c65000              # double 0.1327315814675103
	.quad	0x3fec30ef2bccb859              # double 0.88097342066408679
	.quad	0x3fcf7593b3c66ee8              # double 0.24577566412050733
	.quad	0x3fe71c91fdca9ebd              # double 0.72223758286141726
	.quad	0x3fec9e8fa0d4b95e              # double 0.89435559665961839
	.quad	0x3fe4fb46ad0fd224              # double 0.65567334939129696
	.quad	0x3fe0d85dce9b4390              # double 0.5264119181903073
	.quad	0x3fef516b8340c493              # double 0.97868896136619054
	.quad	0x3fcaacfc1e1ba244              # double 0.2084040781985711
	.quad	0x3feea15c63f9f35e              # double 0.95719737555155482
	.quad	0x3fba7f5e6f125630              # double 0.10350599490842494
	.quad	0x3fe301fb2cd65504              # double 0.59399183995506677
	.quad	0x3fd7e37487e91d4c              # double 0.37325776360053875
	.quad	0x3fde66d1afca9420              # double 0.47502557913895949
	.quad	0x3fe3f16d23ee3492              # double 0.62322098748849641
	.quad	0x3fe89409d0cee944              # double 0.76807108672009194
	.quad	0x3f96c3b2a2b5f3e0              # double 0.022230902844501688
	.quad	0x3fd445ca4f96e550              # double 0.31675966045766746
	.quad	0x3fdc319b829e8f82              # double 0.44052779918478546
	.quad	0x3fd1af0c9cc6c764              # double 0.27630915937617417
	.quad	0x3fe5774997bc17ce              # double 0.67081145892802296
	.quad	0x3fe6ff5480a7b1a6              # double 0.71866822364750216
	.quad	0x3fe74301660818ef              # double 0.72692937782337974
	.quad	0x3fe8e909f4f77c46              # double 0.77844713063303383
	.quad	0x3fce99870c330120              # double 0.23906028838792626
	.quad	0x3fc093b80d7254dc              # double 0.12950802475521683
	.quad	0x3fde4009fa01ed00              # double 0.47265862860486152
	.quad	0x3fa9c95c5a883590              # double 0.050364385653760668
	.quad	0x3fe6f3f6e546d750              # double 0.71728081493959372
	.quad	0x3fe3f5ef07ee870b              # double 0.62377120541734266
	.quad	0x3fe9a75e018e1858              # double 0.80168056777689412
	.quad	0x3fde391ccfcdc2a6              # double 0.47223587315878957
	.quad	0x3fe1dc1c121f4aa2              # double 0.55811885394571825
	.quad	0x3fdb120ec253a096              # double 0.4229771516534212
	.quad	0x3fcebba978e69308              # double 0.24010198977807584
	.quad	0x3fdfc0217f087d8a              # double 0.49610173612196518
	.quad	0x3fd46adc596e6e66              # double 0.31902226193935801
	.quad	0x3fe1003b367ce66c              # double 0.53127823488393977
	.quad	0x3fe380aa2bd3a897              # double 0.60945614395065462
	.quad	0x3fe045e1c6481c3c              # double 0.50853050925150667
	.quad	0x3f6044951cf6f700              # double 0.0019858276716310241
	.quad	0x3fe8c4a8840eebe8              # double 0.77400613587030609
	.quad	0x3fe51ba54b81becc              # double 0.65962471721101101
	.quad	0x3fee80f6fbd75ffc              # double 0.95324277103190935
	.quad	0x3fc1cadef518af08              # double 0.13900362937544508
	.quad	0x3fd0b9133a2b02cc              # double 0.26129608803243509
	.quad	0x3fcac165998772e8              # double 0.20902700420892661
	.quad	0x3fd2925c40154164              # double 0.29018312700374893
	.quad	0x3fee7fbe487366ed              # double 0.95309366369766979
	.quad	0x3fe28765f1fd31eb              # double 0.57902810348019551
	.quad	0x3fb7d53f73d7a878              # double 0.093097654134597252
	.quad	0x3fdd79f226c8aa78              # double 0.46056798732266868
	.quad	0x3fed4d6ac0e4b333              # double 0.91570031809314967
	.quad	0x3fdf7754387edba0              # double 0.4916582633699651
	.quad	0x3fe3918eec78d18a              # double 0.61151834665229043
	.quad	0x3fbb7e17c016cd38              # double 0.10739277305292638
	.quad	0x3fd5a6db5069d132              # double 0.33830912449708983
	.quad	0x3fc456c407ab9d80              # double 0.15889788031129726
	.quad	0x3feb065cadda10c2              # double 0.84452661471780055
	.quad	0x3fe300ecf5e64799              # double 0.59386299159290268
	.quad	0x3fe46027da5cb385              # double 0.63673775338030281
	.quad	0x3fe814911d011abf              # double 0.75251060166268491
	.quad	0x3fe4ce5376f00a85              # double 0.65018628339778728
	.quad	0x3fe072ec4e946161              # double 0.51402869556026698
	.quad	0x3fdc9b3d94068838              # double 0.4469751306115799
	.quad	0x3fdf6cc63129a62a              # double 0.49101404953998673
	.quad	0x3fe649c11b2b7191              # double 0.69650321299154616
	.quad	0x3fefec1c59112161              # double 0.99757211109048793
	.quad	0x3fe54bc1c447393d              # double 0.66549766860570225
	.quad	0x3fe249a1e0853baa              # double 0.57148832179688225
	.quad	0x3fed3b1013129eaf              # double 0.91345981335776638
	.quad	0x3fe8260004c60b88              # double 0.75463868076654794
	.quad	0x3fd8738119b3ff5c              # double 0.38204982290334555
	.quad	0x3fc3a35c3be9d1d4              # double 0.15342286038834507
	.quad	0x3fbd63e574794aa0              # double 0.11480554669950971
	.quad	0x3fc7b7849d2eeeac              # double 0.18528802561728719
	.quad	0x3fe5495f9859f031              # double 0.66520671611897886
	.quad	0x3feac9e91e6c20d2              # double 0.83714729253645204
	.quad	0x3fea788619ab8122              # double 0.82721238149318688
	.quad	0x3fe1386ef4a4f55b              # double 0.53813884527304923
	.quad	0x3fba80ad6a42ea38              # double 0.10352596134445313
	.quad	0x3feabd6a3cccd821              # double 0.83562194705041659
	.quad	0x3fda100255c2b740              # double 0.40722711920794907
	.quad	0x3fe9edd069bc68a3              # double 0.81028004314000091
	.quad	0x3fe6cc76b02cf456              # double 0.71245893868730081
	.quad	0x3fef2f8983bc8ff0              # double 0.97455287675665936
	.quad	0x3fc23f0681ad825c              # double 0.14254838306352979
	.quad	0x3fb6341790767a48              # double 0.086732361573447325
	.quad	0x3fc6897068dde5bc              # double 0.17606930847595759
	.quad	0x3fe7efc4ee7ebdf7              # double 0.74801870900222311
	.quad	0x3feaef23b9984413              # double 0.84169183968527006
	.quad	0x3fca6f0d2094f640              # double 0.2065140160647605
	.quad	0x3fd3466c2f816322              # double 0.301173254386912
	.quad	0x3fec66be82568ac2              # double 0.88754201370860408
	.quad	0x3feb7ba9c190306f              # double 0.85884559445686459
	.quad	0x3fd7c4afbde24530              # double 0.3713797907194758
	.quad	0x3fef1c2abd61de8d              # double 0.97218834866267089
	.quad	0x3fd64966c22563ba              # double 0.34823006591392025
	.quad	0x3fe5d79393ef8bd9              # double 0.68256548780152138
	.quad	0x3fee750c6643e1f2              # double 0.95178813909211457
	.quad	0x3fec5d4166a841bc              # double 0.88638372469181758
	.quad	0x3fec69a7fba76b89              # double 0.88789748335999363
	.quad	0x3fd115ff6d9ae4d2              # double 0.266967637096582
	.quad	0x3fe393c44d304068              # double 0.6117879397952608
	.quad	0x3fee600577607c68              # double 0.94922135654259154
	.quad	0x3fd2b25a3baf7be6              # double 0.29213577107105804
	.quad	0x3fdb57043b7fcda2              # double 0.42718606768104384
	.quad	0x3fea4a2f801ab15d              # double 0.82155585308423051
	.quad	0x3fde6c459ebf45d0              # double 0.47535839560177084
	.quad	0x3fd681a8042ee1be              # double 0.35166359337338438
	.quad	0x3fe64f212395d6c6              # double 0.69715935659652284
	.quad	0x3fb2945601be7870              # double 0.072575927186763201
	.quad	0x3fad55a191750a60              # double 0.057293938642506204
	.quad	0x3fea00c341e5df59              # double 0.81259310599032653
	.quad	0x3fe03a6ab1cfbd17              # double 0.50713095406345843
	.quad	0x3fd3204c14e52858              # double 0.29884626427213368
	.quad	0x3fd72bcce42ac100              # double 0.36204836160597154
	.quad	0x3fe3500056e2084a              # double 0.60351578683208484
	.quad	0x3fe3680c69ef8497              # double 0.60645123186636141
	.quad	0x3fdafc0a028af62e              # double 0.42163324592897566
	.quad	0x3fee6134f72c9f6f              # double 0.94936607624275193
	.quad	0x3fecfd9b7fd6531a              # double 0.90595793693737225
	.quad	0x3fec978e10e82f36              # double 0.89350035955565121
	.quad	0x3fe024915fc4aab9              # double 0.50446385102016855
	.quad	0x3f300bc4b0e76800              # double 2.4484207179187312E-4
	.quad	0x3fef18126949ba70              # double 0.9716884666830321
	.quad	0x3fcfc0904bd75de8              # double 0.24806407645404183
	.quad	0x3fdc5981629dcd80              # double 0.44296297674664942
	.quad	0x3fe678bc71807a90              # double 0.70223829429945006
	.quad	0x3fb828b01753e918              # double 0.094370847411401448
	.quad	0x3fe3285c9e013036              # double 0.59867697582513446
	.quad	0x3fe62e3f549e0542              # double 0.69314543272791007
	.quad	0x3fdee9f257a9887e              # double 0.48302897034421466
	.quad	0x3feb02db34d32350              # double 0.84409866635642494
	.quad	0x3feefc6e421f3dc2              # double 0.96831429399929214
	.quad	0x3fc3b59c32ad5044              # double 0.15397980188811478
	.quad	0x3fbb989ff43eac18              # double 0.10779761994369641
	.quad	0x3fd38d3377b932bc              # double 0.30549322787991762
	.quad	0x3fe6c43333db3139              # double 0.71145019653480468
	.quad	0x3fe2cddee5fff9e6              # double 0.587630700319832
	.quad	0x3fc9afdcce8f7998              # double 0.20067939840278082
	.quad	0x3fe2c86269cb8974              # double 0.58696098960017062
	.quad	0x3fe290c54c97a9a4              # double 0.58017220458468843
	.quad	0x3fb19457ea1c4da0              # double 0.068669790893457705
	.quad	0x3fcd7176700cc328              # double 0.23002510520157071
	.quad	0x3f8cad65ef54aa80              # double 0.014002605787557743
	.quad	0x3fe47bf75858369d              # double 0.64013259177018578
	.quad	0x3fdb5aa53cf8da52              # double 0.4274075599127275
	.quad	0x3febc017925f2ca0              # double 0.86719873989331475
	.quad	0x3fcbd397ed22dcbc              # double 0.21739482001223631
	.quad	0x3fe33824ab2e1c28              # double 0.60060342248551013
	.quad	0x3fe8cb0e20e0fc5c              # double 0.7747870103993466
	.quad	0x3fd40434810ea6f4              # double 0.31275665858502966
	.quad	0x3feb3fad007198c3              # double 0.8515229233423941
	.quad	0x3fc8b9cd40f45c74              # double 0.19317022010429563
	.quad	0x3fe6f2dcf743efe5              # double 0.71714638036746392
	.quad	0x3fdb457990f1ace6              # double 0.42611540941898196
	.quad	0x3fcc4b41122f9118              # double 0.22104657543162243
	.quad	0x3fe7bf56af3dbe61              # double 0.74210676409525089
	.quad	0x3fce07e1533c43f0              # double 0.23461548389653286
	.quad	0x3fe2fd7abf63d43c              # double 0.59344231968737615
	.quad	0x3fe022fc99a19381              # double 0.50427083974919651
	.quad	0x3fe5973450fc53e7              # double 0.67470756356726447
	.quad	0x3fdfd0fd0b964d82              # double 0.49713064319185929
	.quad	0x3fe9c75c9f1ebcd6              # double 0.80558615759027918
	.quad	0x3fd3ab9c4aad5e00              # double 0.30734927456566652
	.quad	0x3fd5e42415f60d2e              # double 0.3420496191467518
	.quad	0x3fe69fd45f9ed2a9              # double 0.70701044727191686
	.quad	0x3fe88aa85553f9b3              # double 0.76692597070341717
	.quad	0x3fc0fe227aae8650              # double 0.13275557508773028
	.quad	0x3fec557dbfff5aec              # double 0.88543593883045224
	.quad	0x3f70ba8fce171e80              # double 0.0040841691383729506
	.quad	0x3fc42bebd0c34868              # double 0.1575903672551846
	.quad	0x3fe9856a2537e6a3              # double 0.79753596562587281
	.quad	0x3fdb9a9b7136c62c              # double 0.43131147438097872
	.quad	0x3febd654acded65b              # double 0.86991342319260967
	.quad	0x3fd9db84f400493e              # double 0.40402339771494045
	.quad	0x3fed1e246de1a7da              # double 0.90992948018287767
	.quad	0x3fe8865990e36ede              # double 0.76640013025777498
	.quad	0x3fcf2eef5d8d1ec0              # double 0.24361984317714835
	.quad	0x3fc87c16a58f13e8              # double 0.19128687938623945
	.quad	0x3fefdc51c1e0ad97              # double 0.99564445368507648
	.quad	0x3fee9656c87dafa9              # double 0.95585192831412258
	.quad	0x3fb98e0535540038              # double 0.099823308486521323
	.quad	0x3f9dbcad8de4e800              # double 0.02904006174615148
	.quad	0x3fb4d1aa4aab3918              # double 0.081324237088868379
	.quad	0x3fd717176255c718              # double 0.36078438380273914
	.quad	0x3fe9f70c84b32626              # double 0.81140733640603879
	.quad	0x3fe5d7698d648709              # double 0.68254544845351106
	.quad	0x3fca68439c103dc8              # double 0.20630688782010353
	.quad	0x3fbc01c887f23b98              # double 0.10940221137046391
	.quad	0x3fca02179585f3e8              # double 0.20318884659710013
	.quad	0x3fcd9cf4f91b84e4              # double 0.23135244525386789
	.quad	0x3fc08a8fadca6510              # double 0.12922855363721242
	.quad	0x3fcebe2d46dac540              # double 0.24017873725601113
	.quad	0x3fde5cc3d21df1ec              # double 0.47441192168460478
	.quad	0x3fd01dc69b32e09a              # double 0.2518173709500019
	.quad	0x3fd9135360cb28a4              # double 0.39180454685686983
	.quad	0x3fe095479e3b8500              # double 0.51822262673172759
	.quad	0x3fe1cf30c8b275a8              # double 0.55654181669858804
	.quad	0x3fe7fa4b4a900558              # double 0.74930347979549605
	.quad	0x3fee4ac38c6ffc05              # double 0.94662644795596462
	.quad	0x3fe3624f1d2823b3              # double 0.60575061506926031
	.quad	0x3fe852ba9f400cc8              # double 0.76009875396302906
	.quad	0x3fdffaa13dcacf48              # double 0.49967223200222977
	.quad	0x3fe9878b6c7bd964              # double 0.79779597461928775
	.quad	0x3fe74b955d02749e              # double 0.72797649541793752
	.quad	0x3fe948ea53c55f09              # double 0.79015079843063163
	.quad	0x3fe504e7afb1a904              # double 0.65684875788909425
	.quad	0x3fe67f1f9c686c62              # double 0.70301800297182759
	.quad	0x3fc70788a0282948              # double 0.17991741008911277
	.quad	0x3faa2424ed3a21f0              # double 0.051057008703597861
	.quad	0x3fdea041d7180c00              # double 0.47853132252947717
	.quad	0x3fe1ee84eedf87f1              # double 0.56036612181583056
	.quad	0x3fd26f42dded72da              # double 0.28804084465609281
	.quad	0x3fd953f26f8fa4d8              # double 0.3957487191642719
	.quad	0x3fdfcdb4ca8a696e              # double 0.49693031100618767
	.quad	0x3fe556b0b0aef0d5              # double 0.6668322993132515
	.quad	0x3fd22b017288533a              # double 0.28387485680405045
	.quad	0x3fdbc0704bfcd3fe              # double 0.43362052364983572
	.quad	0x3fd6789058c19334              # double 0.35110863368599898
	.quad	0x3fe49768e92138bb              # double 0.64348264248999187
	.quad	0x3fe9f3265243f82a              # double 0.81093135898095636
	.quad	0x3fe991a82154ac6a              # double 0.79903036603844879
	.quad	0x3fedd1d31aca8a1e              # double 0.9318633578553237
	.quad	0x3feb51839d666061              # double 0.85370045416039997
	.quad	0x3fd747828953131c              # double 0.36373961840244973
	.quad	0x3fe4739faf9f7e47              # double 0.63911423016902169
	.quad	0x3fd2bd17f5158f16              # double 0.29279135641103105
	.quad	0x3fe0b725bf60deb9              # double 0.52235686663239911
	.quad	0x3fe8ba7ceb3b2621              # double 0.77276464408459244
	.quad	0x3fdb7b7e9c927a36              # double 0.42941251077892006
	.quad	0x3fef629bfacafd15              # double 0.98078726752274525
	.quad	0x3fd4873d498b938a              # double 0.32075435812139885
	.quad	0x3feddc89ab73a3a3              # double 0.93317111479438031
	.quad	0x3febd7057a097b26              # double 0.86999772868498293
	.quad	0x3fe93676f1a0d7dc              # double 0.78789851372743724
	.quad	0x3fa7747c753d3440              # double 0.045810593902026131
	.quad	0x3fdb1de88df1f8c0              # double 0.42370046483837243
	.quad	0x3fc6202b12b96b40              # double 0.17285669721862895
	.quad	0x3fd37f8a407a4d24              # double 0.30465942665724044
	.quad	0x3fdd9a81f2dffbc2              # double 0.46255539625411413
	.quad	0x3fe8c3c711511e35              # double 0.77389863378716106
	.quad	0x3fb2ab4396db93a8              # double 0.072925781565187919
	.quad	0x3fd7837233378650              # double 0.36739783288621641
	.quad	0x3fe9085f71506238              # double 0.78227207309379931
	.quad	0x3fe18381c8de4518              # double 0.5473030970771644
	.quad	0x3fec12b33a69f116              # double 0.87728272828056464
	.quad	0x3f87a4b448a95940              # double 0.0115446171450172
	.quad	0x3fe9f2a2cea08fd1              # double 0.81086864811777037
	.quad	0x3fe921fea83b37ec              # double 0.78539975030593955
	.quad	0x3fd2083968c79f76              # double 0.28175196869278041
	.quad	0x3fed6baf8eeb3188              # double 0.91939523614705454
	.quad	0x3fe45c3be0aa7cfd              # double 0.63625902061531259
	.quad	0x3fe34207725e5901              # double 0.60181019151312409
	.quad	0x3feddfecee50d3b9              # double 0.93358465715447558
	.quad	0x3fee26472fdeb775              # double 0.94217261647803119
	.quad	0x3fc4e7d7aa0939a8              # double 0.16332526972332784
	.quad	0x3fe9e1d9a77e0004              # double 0.8088196059543411
	.quad	0x3fdd7aa5cf2e7404              # double 0.46061082108082041
	.quad	0x3fe5963f8a13e02c              # double 0.67459084480561193
	.quad	0x3fe6c49c1fd37a3e              # double 0.7115002271273807
	.quad	0x3fd9a4c1a09f77b2              # double 0.40068093000251814
	.quad	0x3fe0f4293074064b              # double 0.52980479682464343
	.quad	0x3fc3a37c62522f84              # double 0.1534266929705802
	.quad	0x3fe71bacec31eaa5              # double 0.72212835437615708
	.quad	0x3faf7d6a498e5c90              # double 0.061503716925636387
	.quad	0x3fe3010157228ad2              # double 0.59387270945111426
	.quad	0x3fe27989fd2168e5              # double 0.57733630599548447
	.quad	0x3fe90b23cbf7735b              # double 0.78260984265544253
	.quad	0x3fca43dea018f098              # double 0.20519621674782651
	.quad	0x3fdbd1cb377851f8              # double 0.43467979828827152
	.quad	0x3f7d47d47fc00880              # double 0.0071485806220171755
	.quad	0x3fec0c3320745a13              # double 0.87648922289628428
	.quad	0x3f73295c9eeba480              # double 0.0046781175612774506
	.quad	0x3feea2b64cb5294a              # double 0.95736231786694614
	.quad	0x3fdbca080ce48b60              # double 0.43420602091844351
	.quad	0x3fc3bef660ad2ef8              # double 0.15426521034748197
	.quad	0x3fae6d0f9fbc4730              # double 0.059425819634397192
	.quad	0x3fe16c578132bf20              # double 0.5444753192332179
	.quad	0x3fe62b0f0ec7ac79              # double 0.69275620352472267
	.quad	0x3fd43915d5d2ae36              # double 0.31598420983457076
	.quad	0x3fdcf78197a6af54              # double 0.45260658082655891
	.quad	0x3fea617224c46222              # double 0.82439524823263732
	.quad	0x3fd550c9cf6ddb4c              # double 0.33305592781782845
	.quad	0x3fd3f787f510bb08              # double 0.31198309833682503
	.quad	0x3fdacfde9c3f89d0              # double 0.41893735178578329
	.quad	0x3feffa7d0a5b2189              # double 0.99932720205929215
	.quad	0x3fe2c6e0e5c206b4              # double 0.58677716135590297
	.quad	0x3fe74649ed8457e2              # double 0.72733017339737338
	.quad	0x3fd9c6665717f718              # double 0.40273436074481728
	.quad	0x3fee2d767e192ff3              # double 0.94304966572371851
	.quad	0x3fd2f618c930dd56              # double 0.29627055785700429
	.quad	0x3fe199b82303beee              # double 0.55001456106944402
	.quad	0x3fedddbe5a594600              # double 0.93331830641017177
	.quad	0x3fee98427a5176ee              # double 0.95608638658788236
	.quad	0x3f96eb9afdd53180              # double 0.022383138411258496
	.quad	0x3feaef1bb9a66c29              # double 0.84168802509100715
	.quad	0x3fe7c27486413579              # double 0.74248720380425859
	.quad	0x3fe95e59dcb42f72              # double 0.79276745897503376
	.quad	0x3fe0bab41e65b70b              # double 0.52279096543290515
	.quad	0x3fccd04699541bb4              # double 0.22510607229943747
	.quad	0x3fed0b607cec5b99              # double 0.90763878249241536
	.quad	0x3fb6e03e56142c38              # double 0.089359184279758419
	.quad	0x3fe3d00cc88894c4              # double 0.61914672056868669
	.quad	0x3fd5027b7e5b90d6              # double 0.32827651347748821
	.quad	0x3fee85960f3af4e2              # double 0.95380690550487324
	.quad	0x3fee82d5eb69bcb3              # double 0.95347114543064604
	.quad	0x3fa1ee3e4e0d2a40              # double 0.035020777728807406
	.quad	0x3fd1e50b5660f924              # double 0.279604753832148
	.quad	0x3fe1182caddc45cf              # double 0.53420099217526651
	.quad	0x3fe3ae958bd5da32              # double 0.61506154357522846
	.quad	0x3fec88a8ee2cbdaa              # double 0.89168211477765635
	.quad	0x3fe9de2ccc8933e2              # double 0.80837097118785217
	.quad	0x3fd0fe9fefbfb66a              # double 0.26554106152511869
	.quad	0x3fe5d5eb97a595ac              # double 0.68236331575888221
	.quad	0x3fd6ce3c3ab4b7da              # double 0.35633760197640429
	.quad	0x3fecef1a480852a4              # double 0.90418733662462047
	.quad	0x3fe30579ffe727bc              # double 0.59441852551503116
	.quad	0x3fdb63b759e0b7e8              # double 0.42796119477395544
	.quad	0x3fe6f3e63242abaf              # double 0.71727285210123692
	.quad	0x3fe0e3544a0591de              # double 0.52775015313505569
	.quad	0x3fea8f710c2d4140              # double 0.83000995996739135
	.quad	0x3fe35374ce4979c7              # double 0.60393753328735833
	.quad	0x3fd9e7d6bdcbed18              # double 0.40477531943152334
	.quad	0x3fd6a9ff7e23223c              # double 0.35412585561838106
	.quad	0x3fb2910d8f3897b0              # double 0.072525832620697228
	.quad	0x3fe7422b9bb18c83              # double 0.72682743462463895
	.quad	0x3fdf47114548f8ee              # double 0.48871261373632435
	.quad	0x3fd2a0f5e390b184              # double 0.29107424948849592
	.quad	0x3fc154f3ac3082fc              # double 0.13540502460184445
	.quad	0x3fa8894b037b0ca0              # double 0.047922462630162643
	.quad	0x3f91a57fcebbf000              # double 0.017232892029809932
	.quad	0x3fc0676cfc741c94              # double 0.12815630270799672
	.quad	0x3fe12c18d2e33e5f              # double 0.53663293065069329
	.quad	0x3fe309d00a100c07              # double 0.5949478336846149
	.quad	0x3fe3f13fbb2b7735              # double 0.62319933468436395
	.quad	0x3febaeab0ba0e3a6              # double 0.86507179518877275
	.quad	0x3fbad9782cf20430              # double 0.10488082024859646
	.quad	0x3fecf06d168e00e5              # double 0.90434889226164883
	.quad	0x3fd8d39f5c17217e              # double 0.38791641228865348
	.quad	0x3f9481e8d60bd1a0              # double 0.020026815475789328
	.quad	0x3fc98500b6a5f948              # double 0.19937142294288379
	.quad	0x3feac16901960f1a              # double 0.83610964116857933
	.quad	0x3fdc31efb20e8e08              # double 0.44054787052502364
	.quad	0x3fc530aa4951522c              # double 0.16554764347041961
	.quad	0x3fefcb08c5449586              # double 0.99353445557487485
	.quad	0x3fb8c426d73c3550              # double 0.096743037746098936
	.quad	0x3f92028458ff50a0              # double 0.017587726528134895
	.quad	0x3fd9d6f9e69720fe              # double 0.4037461044176921
	.quad	0x3fc1b2826acd95c0              # double 0.13826017584794492
	.quad	0x3fe3f1f9d2ce4e0b              # double 0.6232880704214393
	.quad	0x3fd5a5b659391536              # double 0.33823927605802184
	.quad	0x3fea01c6471a16da              # double 0.81271661650745419
	.quad	0x3fe1328003b1c490              # double 0.53741455766261659
	.quad	0x3fda7e6a0629b292              # double 0.41396570779651498
	.quad	0x3fd17604e7c65230              # double 0.2728283179688189
	.quad	0x3fcb4eb8764f6454              # double 0.21333986069547228
	.quad	0x3fea5df3e64c1cf4              # double 0.82396883945412335
	.quad	0x3fb91aaf8c973b58              # double 0.098063442062295336
	.quad	0x3fe5d2f4dfecfcfd              # double 0.6820015309857862
	.quad	0x3fca08e2a7eb7e58              # double 0.20339616011823369
	.quad	0x3feabddba0d9853f              # double 0.83567601600604025
	.quad	0x3fca750b1a4c55d8              # double 0.20669688018885668
	.quad	0x3fedf18af9fdcfeb              # double 0.93573521448570085
	.quad	0x3fd50e70c40c4d76              # double 0.32900637765234053
	.quad	0x3fdcd275f30a4b90              # double 0.45034550413509411
	.quad	0x3fdde86459bfb4ac              # double 0.46730908169304075
	.quad	0x3fe0203de9f7323c              # double 0.50393577286155944
	.quad	0x3fe5e600666d539f              # double 0.68432636266026126
	.quad	0x3fc1fa4bd0431490              # double 0.14045093220753246
	.quad	0x3fe886ab686b0ddb              # double 0.76643915552306952
	.quad	0x3fdb726e85f349c0              # double 0.4288593586071805
	.quad	0x3fc2115d6e3309ec              # double 0.14115493660763379
	.quad	0x3fea21edb4c85985              # double 0.81664166745285682
	.quad	0x3fe438034c2ac9f6              # double 0.63183750988383625
	.quad	0x3fb215f4fe634df0              # double 0.070647537332938048
	.quad	0x3fc0bf171ebb5ed0              # double 0.13083161354619799
	.quad	0x3fe3e439026376c7              # double 0.62160921541700354
	.quad	0x3fe770e135a6b98f              # double 0.73252926329387147
	.quad	0x3fee795ad20a3ca2              # double 0.95231381438670248
	.quad	0x3fdc40cbe531301c              # double 0.44145486242337184
	.quad	0x3fa0a04b5a700dc0              # double 0.03247294882751417
	.quad	0x3fd29c127d614b26              # double 0.29077589267869752
	.quad	0x3feae29d6dbaeba3              # double 0.84016295844718447
	.quad	0x3fbba27fa7e94bd0              # double 0.10794828271291057
	.quad	0x3fe356e873f0a88f              # double 0.60435888905091584
	.quad	0x3fe73b7a5966fb66              # double 0.72601048909551191
	.quad	0x3fed85b55514aa23              # double 0.92257181756332718
	.quad	0x3fd5506a2360c7d0              # double 0.33303311781776035
	.quad	0x3fb76fbb8b4705a8              # double 0.091548654082564185
	.quad	0x3fc3d4cb849a3460              # double 0.15493148779606525
	.quad	0x3fda5af8a627ce48              # double 0.41180244661447718
	.quad	0x3fde97cf8dcb203c              # double 0.47801579329507482
	.quad	0x3fed8c094d1c0769              # double 0.92334427891203774
	.quad	0x3fc288dc946cf370              # double 0.14480168578475228
	.quad	0x3fecf9b83ba7c649              # double 0.9054833569663937
	.quad	0x3fd437b5b48729a8              # double 0.31590025548634992
	.quad	0x3fc504e29c38c354              # double 0.16421158435835059
	.quad	0x3fe58a52f5aaee6b              # double 0.67313526136372326
	.quad	0x3fe48cffea9e2bdb              # double 0.64221187423515447
	.quad	0x3fddc68891262dd8              # double 0.46524252104492581
	.quad	0x3fdaa7d45af46020              # double 0.41649350054058409
	.quad	0x3fe3163790c65415              # double 0.59646204258263202
	.quad	0x3fe03ddc7536e92c              # double 0.507551411566316
	.quad	0x3fd365486f984768              # double 0.30305682084973862
	.quad	0x3fe9c6119c22df75              # double 0.80542831893306632
	.quad	0x3fc7f046f20a221c              # double 0.18702017610873234
	.quad	0x3fe9bac60526a1eb              # double 0.80404950147663834
	.quad	0x3fbb994357783bf0              # double 0.10780735860338075
	.quad	0x3fe299a31de42572              # double 0.58125453794597903
	.quad	0x3fcbea9cfe6decbc              # double 0.21809732840833884
	.quad	0x3fd95e032786769c              # double 0.39636305675399242
	.quad	0x3fc3e9a39bf2854c              # double 0.15556759943596388
	.quad	0x3fdc141cb6f9571c              # double 0.43872754925301805
	.quad	0x3fea42f85e0876f9              # double 0.82067507139046747
	.quad	0x3feb984d0e214101              # double 0.86234143028016785
	.quad	0x3fc8df48fcb403a0              # double 0.19431412066481091
	.quad	0x3fefbad28abc5dcc              # double 0.99155547234379914
	.quad	0x3fe7bad99ddd8707              # double 0.74155884583544285
	.quad	0x3fd303828e2e87ec              # double 0.29708923230111739
	.quad	0x3fe3178345eacfc7              # double 0.59662021308621938
	.quad	0x3fe851a856d4a311              # double 0.7599679656896986
	.quad	0x3fe2a4fd60dda5fa              # double 0.58264035147766369
	.quad	0x3fe27308eaee8658              # double 0.57654233822922674
	.quad	0x3fe98eccf9bb0d4a              # double 0.79868172431489737
	.quad	0x3fea80d2a93be239              # double 0.82822545102596401
	.quad	0x3fe4098dd9223c5d              # double 0.62616627129490221
	.quad	0x3fe1c0d5eebbbd3a              # double 0.554789510990225
	.quad	0x3fea6b956f70dd9b              # double 0.82563277974888949
	.quad	0x3fb36932956f6230              # double 0.075823937876869917
	.quad	0x3fd9ee1261a29d2c              # double 0.40515574965179968
	.quad	0x3fecb78e0aa24937              # double 0.89740659787120236
	.quad	0x3fe4327b408a9976              # double 0.63116228681319231
	.quad	0x3fef4aea0d7f7fb2              # double 0.97789480816208241
	.quad	0x3fce8a8e8ea0df68              # double 0.23860341991689471
	.quad	0x3fe2a2fd57a87905              # double 0.58239619370195383
	.quad	0x3fdf6883e4f82454              # double 0.49075410232814431
	.quad	0x3fd4228701a9aa5c              # double 0.31460738336924066
	.quad	0x3fe80f4f856f1d51              # double 0.75186897336326741
	.quad	0x3fde2eccc5f9603c              # double 0.47160643895540821
	.quad	0x3feb466e6b95e4bb              # double 0.85234757435605191
	.quad	0x3f3b69069e9dd800              # double 4.1824733363371447E-4
	.quad	0x3fbd99f237fc4c70              # double 0.11563028208574777
	.quad	0x3fc15ac1db306640              # double 0.13558219149199324
	.quad	0x3fee1f651fe781be              # double 0.94133239966691185
	.quad	0x3fa5a7d929933f60              # double 0.042296205830665512
	.quad	0x3fe41177f26d646d              # double 0.62713239049038594
	.quad	0x3fe78067d86fc42b              # double 0.73442451737185388
	.quad	0x3fedc2c244c1dbe6              # double 0.93002427510407126
	.quad	0x3fd0e5e8b21439da              # double 0.26403252974060154
	.quad	0x3fd4c0f0258c57e4              # double 0.32427600542848567
	.quad	0x3f92e1c4aa4a0d80              # double 0.018439362424499617
	.quad	0x3fdb9612f614d13e              # double 0.43103479415301027
	.quad	0x3fdbc5fa34b08e36              # double 0.43395857949710448
	.quad	0x3fe53fbaf55866a7              # double 0.66402957839018917
	.quad	0x3febf04e355bea3d              # double 0.87308416768730235
	.quad	0x3feafbe4cfca45f8              # double 0.84324875434884827
	.quad	0x3feca23ab4067285              # double 0.89480338250321323
	.quad	0x3fe15e214fd58d80              # double 0.54274049370398814
	.quad	0x3fddd8ede7b2838e              # double 0.46636531473819154
	.quad	0x3fe3cb7b1013faf3              # double 0.61858895435565697
	.quad	0x3fdfc333e2a89776              # double 0.49628922590851887
	.quad	0x3fe5ec9c289e7a5d              # double 0.68513305600556473
	.quad	0x3fe3ff1f43e5a984              # double 0.62489283810764151
	.quad	0x3fe41bc32f16f81f              # double 0.62838896939479472
	.quad	0x3fe9a1f466a7a634              # double 0.80101985978871548
	.quad	0x3fe7981dd0f6f90f              # double 0.73731890500474317
	.quad	0x3fc96dab3b009f90              # double 0.19865932827928789
	.quad	0x3fe44131d2c5265c              # double 0.63295832792318718
	.quad	0x3fdd2ebf4a70e720              # double 0.45597822446471703
	.quad	0x3fd69948a6bff214              # double 0.35310570034178679
	.quad	0x3fe82e7f22970a4c              # double 0.75567585712298912
	.quad	0x3fc61ba8f4990324              # double 0.17271911566970133
	.quad	0x3fd1c1a69c176d86              # double 0.27744450801193243
	.quad	0x3fefc2dec0350f62              # double 0.99253785648805271
	.quad	0x3fbd73d294715ef8              # double 0.11504856227963589
	.quad	0x3fee9d1f73272a83              # double 0.95668003550356706
	.quad	0x3fe707a2428a27b2              # double 0.71968186374691911
	.quad	0x3fef7b899e47233e              # double 0.98383026994370204
	.quad	0x3fd142f8a189253a              # double 0.26971259856198382
	.quad	0x3fed8e66ad3ea18b              # double 0.92363294445844824
	.quad	0x3fee87a4e433a48c              # double 0.95405811854028987
	.quad	0x3fe11a5927eb1bd9              # double 0.53446634098588242
	.quad	0x3fe9b4303bf3f7a7              # double 0.80324565610475396
	.quad	0x3fedbe45639ad98c              # double 0.92947644666746631
	.quad	0x3fe21e342353cb7b              # double 0.56618697070949453
	.quad	0x3fe3fba423dcd994              # double 0.62446791653092015
	.quad	0x3fdd6c548abb8856              # double 0.45973695324039932
	.quad	0x3fdbb5260ed63ecc              # double 0.43293143700519177
	.quad	0x3fe726c3069ed9ef              # double 0.72348166745251585
	.quad	0x3fdf0935185e73a6              # double 0.48493697528629764
	.quad	0x3f9d03de35958460              # double 0.028335067768584188
	.quad	0x3fa1248e97eacc10              # double 0.033482032818391017
	.quad	0x3fe1256cbfba3aa5              # double 0.53581845709580433
	.quad	0x3fb22c4bd82811f8              # double 0.070988407394970809
	.quad	0x3fdf883b6445a016              # double 0.49268994133171995
	.quad	0x3fd2d540cabc58fa              # double 0.29426593588267702
	.quad	0x3fd6cd4b277e0e60              # double 0.35628012520485264
	.quad	0x3fead62f11b55a67              # double 0.8386454912059208
	.quad	0x3fef61a6a6db6652              # double 0.98067028607619933
	.quad	0x3f49fac466707400              # double 7.928332314609543E-4
	.quad	0x3fc64b9b5b8c07bc              # double 0.17418233842914599
	.quad	0x3fc9ab443f48e3d4              # double 0.20053914156031161
	.quad	0x3fc9966d72eecab4              # double 0.19990318405105756
	.quad	0x3fe89575f82ff287              # double 0.76824472879486982
	.quad	0x3fc8d3a9c8dbc1b8              # double 0.19395944888630168
	.quad	0x3fe72d0d1d4b67e3              # double 0.72424941751091543
	.quad	0x3fd0f38ffc2898fa              # double 0.26486587166654341
	.quad	0x3fd1936197054276              # double 0.27462043521976598
	.quad	0x3fd46a596c73adb4              # double 0.31899104681971413
	.quad	0x3fdffdbef47225d6              # double 0.49986242171925477
	.quad	0x3fb30c2ebd496bc8              # double 0.074404641354177348
	.quad	0x3fd02c5f83c32678              # double 0.25270831935322446
	.quad	0x3fda0adfd62b6f4e              # double 0.40691371836668544
	.quad	0x3fee59fe939b35eb              # double 0.9484856493888264
	.quad	0x3fea91c929b3a221              # double 0.83029611725675434
	.quad	0x3fd576f3900d8dc2              # double 0.33538521831198065
	.quad	0x3fed0248a867d151              # double 0.90652878658014846
	.quad	0x3f382fe61dcca800              # double 3.6906593395491516E-4
	.quad	0x3fee2b1ad432cce1              # double 0.94276181645400581
	.quad	0x3fedc6b6a30d8e3b              # double 0.93050700994758218
	.quad	0x3fa6085baee50bf0              # double 0.043032517528011627
	.quad	0x3fc17958a6e71260              # double 0.13651569509069628
	.quad	0x3fb996adf97b9bb0              # double 0.099955438050172373
	.quad	0x3fa84ce3474d8390              # double 0.047461607412294105
	.quad	0x3fe981e250c5ed9f              # double 0.79710498596198309
	.quad	0x3fa2c1454f72b3b0              # double 0.036630788753746812
	.quad	0x3fbfeb029237b3a8              # double 0.1246797186829115
	.quad	0x3fd49e812217e0e6              # double 0.32217434243604115
	.quad	0x3fd68242707baa54              # double 0.35170041069674096
	.quad	0x3fe21bfc8acf9f32              # double 0.56591631995704561
	.quad	0x3fdbbc9ff5ea6a38              # double 0.43338774695590443
	.quad	0x3fd42933a9d009f4              # double 0.31501475890414032
	.quad	0x3fde208c3af92b7a              # double 0.47073655852425811
	.quad	0x3fdbf700f2993b56              # double 0.43695090953126703
	.quad	0x3fdf520ca835c8d0              # double 0.48938290049330835
	.quad	0x3fd7ad92a1405752              # double 0.36996904132080488
	.quad	0x3f9c2f3242915780              # double 0.027523789704296586
	.quad	0x3fe838f49d9284c9              # double 0.75695257926795378
	.quad	0x3fe0794d1ccf9ba3              # double 0.51480727793829251
	.quad	0x3fe29d05125f2679              # double 0.58166745746821313
	.quad	0x3fb5431d6139e110              # double 0.083055340039099201
	.quad	0x3fc58b93a695ce98              # double 0.16832204469721002
	.quad	0x3fea78d87c8ebd84              # double 0.82725166633274271
	.quad	0x3fe757e0a506ad7e              # double 0.72947723609597381
	.quad	0x3fef16adfb0677d3              # double 0.97151850727436295
	.quad	0x3fe986cbf58d2fa4              # double 0.79770467719344084
	.quad	0x3fc4164f0ef3e034              # double 0.15693081121549002
	.quad	0x3fe9cbd4997e1932              # double 0.80613164881723365
	.quad	0x3fddc9d26f9295d2              # double 0.46544323821794109
	.quad	0x3fc0ef9d363fa10c              # double 0.13231244229178463
	.quad	0x3fe7a4c6e9691ada              # double 0.73886437976838271
	.quad	0x3fc465ff144e4a84              # double 0.15936268321509683
	.quad	0x3fdccbc62cc18bee              # double 0.44993738527972382
	.quad	0x3fd0b064f681963e              # double 0.26076625893469785
	.quad	0x3fe1e047b9dbb4e7              # double 0.5586279516261613
	.quad	0x3fe67a09290aa3f1              # double 0.70239694610529402
	.quad	0x3fe8f5b4aadae6c7              # double 0.77999337549336978
	.quad	0x3fe44abb327772be              # double 0.63412246567494157
	.quad	0x3fe07a9ab0ec8129              # double 0.5149663405937065
	.quad	0x3fea1ddb5847ed0e              # double 0.81614463083625011
	.quad	0x3fdfd3859d1ab99a              # double 0.49728527395463973
	.quad	0x3fe243f9a19d4480              # double 0.57079774442003384
	.quad	0x3fd2a7c6ffdb93c2              # double 0.29149031625848576
	.quad	0x3fc4f1f611228ea4              # double 0.16363406979245554
	.quad	0x3fee75e81ae96cd1              # double 0.95189290291036788
	.quad	0x3feedc46f1d90a82              # double 0.96438929782773664
	.quad	0x3fd7147c1a0f1ab6              # double 0.3606252912981448
	.quad	0x3fba956668293cb8              # double 0.10384216349597153
	.quad	0x3fea3a2b86ce05ad              # double 0.81960083321626132
	.quad	0x3fd8ad178d8ff430              # double 0.38556469749875344
	.quad	0x3fd728a8eab25694              # double 0.3618566791495621
	.quad	0x3fdf97b2cee9d456              # double 0.49363393980394699
	.quad	0x3fbaa0ee8e4173f8              # double 0.1040181252769371
	.quad	0x3f8fee74c00afd80              # double 0.015591537581143511
	.quad	0x3fd0ac0aad0c9732              # double 0.26050059222540078
	.quad	0x3fe179e0bb369a92              # double 0.54612766804787527
	.quad	0x3facb13a5399ba20              # double 0.056039641099108417
	.quad	0x3fabc1178bbcfb90              # double 0.054207549865615268
	.quad	0x3fe0d0a65adc966f              # double 0.5254699492113114
	.quad	0x3fe8f1b78a5bf92f              # double 0.77950646422667613
	.quad	0x3fee777c1546d2f6              # double 0.95208553462597822
	.quad	0x3fc0712eba5c84fc              # double 0.12845405673673571
	.quad	0x3fdd21ebaaa90ca8              # double 0.45519534746217483
	.quad	0x3fed1689ae229055              # double 0.90900119791741452
	.quad	0x3fe607a262d31f62              # double 0.68843192388247254
	.quad	0x3fd9239323fb1800              # double 0.39279631150964178
	.quad	0x3fef1ded60f82e97              # double 0.97240323008869011
	.quad	0x3fd7d6c0c10c3b50              # double 0.37248247959444303
	.quad	0x3fecfd63c3094160              # double 0.90593135922430789
	.quad	0x3fec5e1b48684f23              # double 0.88648761884767102
	.quad	0x3fd7daa5a8330efe              # double 0.37272015977599426
	.quad	0x3faf2009017000e0              # double 0.060791284013250069
	.quad	0x3fe0999e3cccea32              # double 0.51875221133315663
	.quad	0x3fcad7efb4d48ac8              # double 0.20971485452272121
	.quad	0x3fa69ed49f6cff90              # double 0.044180530987886546
	.quad	0x3fee7d399f290332              # double 0.95278626523950138
	.quad	0x3fed349800825e7e              # double 0.91267013644660699
	.quad	0x3fed2e98e7e30348              # double 0.91193814554581198
	.quad	0x3fe873c9f26aeaf1              # double 0.76413438174435389
	.quad	0x3fd1686b296db3a8              # double 0.27199820562128219
	.quad	0x3fea7b2178daac04              # double 0.82753060917218634
	.quad	0x3fdd5510336f932e              # double 0.45831685088187413
	.quad	0x3fedb3a39d27b3d1              # double 0.92817860311844858
	.quad	0x3fcafc07aa4ce934              # double 0.2108163434548459
	.quad	0x3fe983d3d83a5ef5              # double 0.79734222633393748
	.quad	0x3fed6824db52b286              # double 0.91896288715868546
	.quad	0x3fe00ec323da881b              # double 0.50180203440345694
	.quad	0x3fc9a09ffd4fe6f4              # double 0.20021438473468545
	.quad	0x3fdf12d8daaaecd8              # double 0.48552533487572935
	.quad	0x3fe5d273f61d2139              # double 0.68194006032084709
	.quad	0x3fefee43ef851583              # double 0.99783512860510403
	.quad	0x3fcbeea4b960d1fc              # double 0.21822032024068949
	.quad	0x3fe38bc7cda092be              # double 0.6108130470425619
	.quad	0x3fe6c2bdb03e890d              # double 0.71127209112845124
	.quad	0x3fc5372fcdf59760              # double 0.16574666554077577
	.quad	0x3fd32e029ae41876              # double 0.29968323827814147
	.quad	0x3fea6d502c2e18c4              # double 0.82584389332694074
	.quad	0x3fef480032156ed4              # double 0.97753915578820249
	.quad	0x3fdf628e021e8b0c              # double 0.49039030272449291
	.quad	0x3feffebc274cb0e0              # double 0.99984557796190287
	.quad	0x3fbd1e5b2712b398              # double 0.11374444679195361
	.quad	0x3fe7f0ce9b655c50              # double 0.74814539290208337
	.quad	0x3fea64862778b7e1              # double 0.82477100095070111
	.quad	0x3fe220fc1ea3865f              # double 0.56652647003302181
	.quad	0x3fe6df5c3542e5d0              # double 0.71476564791299246
	.quad	0x3fe452659b7718a2              # double 0.63505821575451571
	.quad	0x3fd4cb9ec63751e8              # double 0.32492799145737061
	.quad	0x3fbe917ca763bf48              # double 0.11940745436345168
	.quad	0x3fef4ca7943ca93f              # double 0.97810725166826972
	.quad	0x3fefb101cbf13bdc              # double 0.99035730202183058
	.quad	0x3fdf89d59bb2c9ba              # double 0.49278774456902463
	.quad	0x3fa6fa62cb339990              # double 0.044879042916181722
	.quad	0x3fe2cfe16505ceff              # double 0.58787603121751875
	.quad	0x3fc1e07014b1bdcc              # double 0.13966179857696515
	.quad	0x3febe1b4aa1313a2              # double 0.87130196778945312
	.quad	0x3fb56e26a658a958              # double 0.083712020503900475
	.quad	0x3fe55d0313eef055              # double 0.667604006702741
	.quad	0x3fe7e5e06f5017f7              # double 0.7468111204223068
	.quad	0x3fec33ef3a7f64b4              # double 0.88133965897863797
	.quad	0x3fe1ca7b8d59ddbe              # double 0.55596711738228755
	.quad	0x3fc6f41609d00448              # double 0.17932391623620192
	.quad	0x3feb76b4ecf7014a              # double 0.85824056894492995
	.quad	0x3fb4ec2fb767be68              # double 0.081728918339416645
	.quad	0x3fcb4ff0a058dd2c              # double 0.21337707356881574
	.quad	0x3fd12a3d7f8de384              # double 0.26820313888998037
	.quad	0x3fea2c4e9d7b8c24              # double 0.81790858038255409
	.quad	0x3fee1bc3c1a9e7c0              # double 0.94088924241008697
	.quad	0x3fef7c929ab15ee1              # double 0.98395662511299175
	.quad	0x3feea5e1c0ac957f              # double 0.957749248806678
	.quad	0x3fe68d8e39210600              # double 0.70477973135001548
	.quad	0x3fde05f29e5ef89c              # double 0.46911302057186233
	.quad	0x3fef431c3251cbdb              # double 0.97694215610533363
	.quad	0x3fe53d3f2d493f1f              # double 0.66372641415543743
	.quad	0x3fe1f0c17650f881              # double 0.56063912495280033
	.quad	0x3fe88954d0ece621              # double 0.76676407628764676
	.quad	0x3fe21e420cb849e2              # double 0.56619360432005927
	.quad	0x3fb2867ee6d50178              # double 0.072364741664392329
	.quad	0x3fc7c427eb2d1214              # double 0.18567370398717797
	.quad	0x3fed519e8616b95f              # double 0.91621328534328572
	.quad	0x3fdf0fab9e9a9e9a              # double 0.48533144463224576
	.quad	0x3fed5aa599d9d80e              # double 0.91731529282583479
	.quad	0x3fe6476f874a88c8              # double 0.69622017311146411
	.quad	0x3fee17ce12c36f90              # double 0.94040588059168506
	.quad	0x3fecba366d15afd5              # double 0.89773103051765679
	.quad	0x3feb670abbde3366              # double 0.85632836049044836
	.quad	0x3fe31d7d5a8cd381              # double 0.59734981236998419
	.quad	0x3fd5902193560a9c              # double 0.33692206753054577
	.quad	0x3fc4cb651b535564              # double 0.16245712122205724
	.quad	0x3fe7ea604e2b299b              # double 0.74736037509255782
	.quad	0x3fe445f08ae84425              # double 0.63353755121545829
	.quad	0x3fefd8cd786bc35b              # double 0.99521516341892934
	.quad	0x3fd0fbaf336ccc10              # double 0.26536159536334569
	.quad	0x3fea5a433cfd46b0              # double 0.8235183898161349
	.quad	0x3fd76e32ff624eea              # double 0.36610102596135496
	.quad	0x3fe1112adb42e31e              # double 0.53334563087910047
	.quad	0x3fe9c123255912f3              # double 0.80482632917900643
	.quad	0x3fdd10c0e8216828              # double 0.45414755505555826
	.quad	0x3fb531bf3ff1c6a0              # double 0.082790330039439031
	.quad	0x3fbf88606ec00768              # double 0.12317469314441853
	.quad	0x3fc207a0a75cde10              # double 0.14085777446756298
	.quad	0x3fda1ec8348a7182              # double 0.40812878733574831
	.quad	0x3fcb134622ac63b8              # double 0.21152569478070204
	.quad	0x3fe9f1b2f3f6ae11              # double 0.81075427674426426
	.quad	0x3fc96686721489d8              # double 0.19844132013629578
	.quad	0x3fb0207c59442548              # double 0.062995693009857523
	.quad	0x3feb4444a91a4c62              # double 0.85208352115513386
	.quad	0x3fee2bf9e2e964ea              # double 0.94286817854586258
	.quad	0x3fe48854e5a99a8f              # double 0.64164204460105789
	.quad	0x3fe8d5283c29185a              # double 0.77602016210654345
	.quad	0x3feadadf743b1402              # double 0.83921787930796676
	.quad	0x3fe68691ea0a0584              # double 0.70392699919482071
	.quad	0x3fe95e2362415af4              # double 0.79274148169028402
	.quad	0x3fac821e52bbfa80              # double 0.055680224990273253
	.quad	0x3fd581942137e338              # double 0.3360338520429198
	.quad	0x3fb01d80ecaefe88              # double 0.062950189384532007
	.quad	0x3fe54d7d1ce20eca              # double 0.66570907250612632
	.quad	0x3fc8675d4ab83ab0              # double 0.19065443180484953
	.quad	0x3fe1be2178cdbadb              # double 0.55445932001552067
	.quad	0x3fecb8bca052bcbc              # double 0.89755088151095874
	.quad	0x3fafb3a1597fa1d0              # double 0.061917345214002162
	.quad	0x3fc39461b6c5b0c0              # double 0.15296574997353751
	.quad	0x3fe44121ad06037c              # double 0.6329506282200863
	.quad	0x3fda94e2e6a95b5a              # double 0.41533730054418572
	.quad	0x3fd7c05b4bb6e140              # double 0.37111551660520448
	.quad	0x3fd0b8908535b8de              # double 0.26126492508673305
	.quad	0x3fb0d048274a85d8              # double 0.065678128807597047
	.quad	0x3fe334aef60d12be              # double 0.60018108422135419
	.quad	0x3fc9972be7b49f98              # double 0.19992588819263513
	.quad	0x3fdad46d575a74c6              # double 0.4192155221042636
	.quad	0x3fe92e7c1a36d7c9              # double 0.78692441101042576
	.quad	0x3fd17c6005725540              # double 0.27321625263114768
	.quad	0x3fc84b8a2de77990              # double 0.18980529061714124
	.quad	0x3fd1b631becf137e              # double 0.27674525865250377
	.quad	0x3fe59d299651b7e9              # double 0.67543486937733832
	.quad	0x3fee4f5b0f1aef80              # double 0.94718697500455562
	.quad	0x3fe05d93d2a7ccba              # double 0.5114230265011408
	.quad	0x3fe66a0b1332fe9d              # double 0.7004447340950325
	.quad	0x3fef95c215b38ccc              # double 0.98703102339313764
	.quad	0x3fd81a6ca205c71c              # double 0.37661281416431946
	.quad	0x3fb1eaec1de679a8              # double 0.069990880298496649
	.quad	0x3fe8e2d67535d5ba              # double 0.77769015209803816
	.quad	0x3fd73ebf62ca072e              # double 0.36320480964069446
	.quad	0x3fed646e43710f14              # double 0.91850960895723909
	.quad	0x3feb2bbea055901b              # double 0.84908992114333459
	.quad	0x3fda2ab0059f23da              # double 0.40885544346798286
	.quad	0x3fa0b98567395050              # double 0.032665413714000224
	.quad	0x3fe5e03340975c4a              # double 0.68361818900565052
	.quad	0x3fd6b9efeaa74540              # double 0.3550987044846643
	.quad	0x3fe08e1e95b65859              # double 0.51734856835060861
	.quad	0x3fe351450f43eb81              # double 0.60367062551027584
	.quad	0x3fd3eee8e43e7e88              # double 0.31145689286675138
	.quad	0x3fa7582af1a42ad0              # double 0.045594541547037459
	.quad	0x3fd63b62e34c6892              # double 0.34737465092769881
	.quad	0x3fe5fa3ceef28829              # double 0.68679663342868935
	.quad	0x3fd2662656228ba6              # double 0.28748472606292308
	.quad	0x3feecdc17cff0d3a              # double 0.96261667645777682
	.quad	0x3fc44a1369d4cf50              # double 0.15851061503928543
	.quad	0x3fc333b3b6a23a84              # double 0.15001531999265094
	.quad	0x3fc603dc3aa332d4              # double 0.17199280608328726
	.quad	0x3feb649b04333b0c              # double 0.85603094883285413
	.quad	0x3fd835340a54b540              # double 0.37824727066875496
	.quad	0x3fd4dc70700bd5f8              # double 0.32595454160704618
	.quad	0x3fcf4990579b9cec              # double 0.24443249013641066
	.quad	0x3fbac9a88af67ec0              # double 0.10463956253669959
	.quad	0x3fdf4126011baa92              # double 0.48835134609422781
	.quad	0x3fd2baae6b819d46              # double 0.29264412401831341
	.quad	0x3fea7afbf5f5c858              # double 0.82751272238807427
	.quad	0x3fd829ff379cdc1c              # double 0.37756328993731514
	.quad	0x3fea05e8e4c20405              # double 0.81322140387794717
	.quad	0x3fe9197e16fc9f8c              # double 0.78436188211070279
	.quad	0x3fd91d049fd43f0c              # double 0.39239612205800323
	.quad	0x3fdfc0f3392ef344              # double 0.49615173897091247
	.quad	0x3feedde646c799e2              # double 0.96458734344633634
	.quad	0x3fde74ebf7183272              # double 0.47588633661579316
	.quad	0x3fd29b182d69a020              # double 0.29071621355842758
	.quad	0x3fef22a7ca70efda              # double 0.97298039950646431
	.quad	0x3fed0775ba456d28              # double 0.90716062909215101
	.quad	0x3fc0a582ee20d00c              # double 0.1300510084853389
	.quad	0x3fb0c933db126158              # double 0.065570107445073744
	.quad	0x3fdf9604f2ede72a              # double 0.49353145335736548
	.quad	0x3fe0a8fb70cc6ea1              # double 0.52062770873040531
	.quad	0x3fe819a4dd5293af              # double 0.75313037135184924
	.quad	0x3fef5ff69dc23ab0              # double 0.98046427547691017
	.quad	0x3fe0711daa3eaeec              # double 0.51380809069584421
	.quad	0x3fe6bd541462c1cc              # double 0.71061138135524393
	.quad	0x3fe7e0825f76f749              # double 0.74615591664744685
	.quad	0x3fd21d98343cef26              # double 0.28305630780572455
	.quad	0x3fe5a170513d3af8              # double 0.67595687739398524
	.quad	0x3fb49793b2943288              # double 0.080437880609858792
	.quad	0x3fcf1ec7178dda1c              # double 0.24312676096060748
	.quad	0x3fe05a632f286f34              # double 0.51103362284218301
	.quad	0x3fe26d85e1d7c16d              # double 0.57586950406952797
	.quad	0x3fe09d897c014487              # double 0.51923059673039595
	.quad	0x3fedd928dd86d336              # double 0.9327587439243874
	.quad	0x3fb8df93a5a958e0              # double 0.097161510414796037
	.quad	0x3fea6afa2a814914              # double 0.82555874158632258
	.quad	0x3fe57a9610dcf9e8              # double 0.67121413510886629
	.quad	0x3fba5eec637cdb38              # double 0.10301091603183188
	.quad	0x3fe3deac9be02755              # double 0.62093191570714146
	.quad	0x3fe6e6929ed38729              # double 0.71564608593709977
	.quad	0x3fc24bbd998b1590              # double 0.14293642041426979
	.quad	0x3fe721e3673f4d6f              # double 0.7228867546604486
	.quad	0x3fa30a1e20477a30              # double 0.03718656677277854
	.quad	0x3fd4b6089f7cfa16              # double 0.32361045432108548
	.quad	0x3fdf0f7382f11dde              # double 0.48531806742945871
	.quad	0x3fed041ddc6da101              # double 0.90675252010717611
	.quad	0x3fd79dee8e7272a2              # double 0.36901439581724038
	.quad	0x3fdc6e9bd30a7912              # double 0.44425101861442429
	.quad	0x3fea50053415a71a              # double 0.8222681062008832
	.quad	0x3fda7ca5806e8a0a              # double 0.41385781805198063
	.quad	0x3fcbe09c5f8c31ac              # double 0.21779207864200367
	.quad	0x3fd7b22774ca5888              # double 0.37024866490663344
	.quad	0x3fe23de97cdc6e16              # double 0.57005762469219934
	.quad	0x3fe20fb5bf4b8b7b              # double 0.56441771852801936
	.quad	0x3fe916e10e9715a3              # double 0.78404286241191234
	.quad	0x3fbc333f71615b38              # double 0.11015697973321614
	.quad	0x3fe370e8bd3f5571              # double 0.60753285372145005
	.quad	0x3fc65fbf1ae38748              # double 0.17479695141724449
	.quad	0x3fb49adb4673d948              # double 0.080487923336339695
	.quad	0x3fdee3577f504672              # double 0.4826258414551382
	.quad	0x3fe7aa435b63c157              # double 0.73953407144112304
	.quad	0x3fec883277eb8fd4              # double 0.89162562772662079
	.quad	0x3fcdadc9e918d60c              # double 0.23186611062708129
	.quad	0x3fc29f9665714590              # double 0.14549522355313771
	.quad	0x3fe5e9c76eeb8553              # double 0.68478748001158818
	.quad	0x3fd73f2664873d2c              # double 0.36322936837400976
	.quad	0x3febb3195b9449e2              # double 0.86561267744610526
	.quad	0x3fbcc3c460eadb38              # double 0.11236216894290585
	.quad	0x3fe38a178bd4d4d7              # double 0.6106069308358667
	.quad	0x3fdd1dcd5665c446              # double 0.45494397580393231
	.quad	0x3fa71a2e794d2bf0              # double 0.04512162428598987
	.quad	0x3feb742762dbcbee              # double 0.85792893703762529
	.quad	0x3faad10d4adb51b0              # double 0.052376189601690881
	.quad	0x3fc5ff38aacc7830              # double 0.17185123767643651
	.quad	0x3fe81e777d9814ea              # double 0.7537190869340098
	.quad	0x3fdf92fb053d4cf0              # double 0.49334598075547742
	.quad	0x3fd0b09bfb4294f0              # double 0.2607793763839501
	.quad	0x3feb70fc0b761cc9              # double 0.85754205931234495
	.quad	0x3fc6d6c7b232c0f8              # double 0.17842956734740034
	.quad	0x3fe9a68784ba391d              # double 0.80157829211546849
	.quad	0x3fdc50cf39ddb7f0              # double 0.442432219037868
	.quad	0x3fd0d3398cf03aae              # double 0.26289213908686804
	.quad	0x3fd360cce05d1df8              # double 0.30278322134515134
	.quad	0x3fe5a420d11dd188              # double 0.6762851795488567
	.quad	0x3fe4851747310f19              # double 0.64124645142189529
	.quad	0x3feffb5623076853              # double 0.99943072167958246
	.quad	0x3fd578dc20c9e1a2              # double 0.33550170137416491
	.quad	0x3fd8c031b449dbce              # double 0.38673060041713547
	.quad	0x3fd3c333abacf640              # double 0.30878917470167622
	.quad	0x3feac2ea9b808357              # double 0.83629351016507314
	.quad	0x3fc63a394242134c              # double 0.17365184531458977
	.quad	0x3fea3f196a3ed3ec              # double 0.82020254851397345
	.quad	0x3fe8be8fcf895347              # double 0.77326193365534202
	.quad	0x3fcbb21438988604              # double 0.21637203944651173
	.quad	0x3fdc9aed956cf822              # double 0.44695605842923858
	.quad	0x3fd3219c7dae4d84              # double 0.29892647050402155
	.quad	0x3fe789a43784ed9f              # double 0.73555193751910852
	.quad	0x3fe7c0249b9127b7              # double 0.74220495590383606
	.quad	0x3fd5507de9b5ef0e              # double 0.33303783248241892
	.quad	0x3fe38b75ff5e562f              # double 0.61077403904591232
	.quad	0x3fe16678259a8e67              # double 0.54375846237639969
	.quad	0x3fe60f959eda13dd              # double 0.68940239930872915
	.quad	0x3fe99cacf1d34d7e              # double 0.80037543517612142
	.quad	0x3fef8fb0cd7219d2              # double 0.98629036069979237
	.quad	0x3fc31fb2cac4c3c8              # double 0.14940485859690811
	.quad	0x3fee71060815bb5d              # double 0.95129682139473071
	.quad	0x3feceda407cc16ce              # double 0.90400887987990486
	.quad	0x3fe72b4dd2d2dcc3              # double 0.7240361325883885
	.quad	0x3faaee69d5073200              # double 0.052600199942023806
	.quad	0x3fd513d348816fc2              # double 0.32933504181505324
	.quad	0x3fe16b54eaceffe2              # double 0.54435201512387388
	.quad	0x3fa180409368f440              # double 0.034181612009412721
	.quad	0x3fd7ad1f7ba2880c              # double 0.36994158815116474
	.quad	0x3fd38937b704df7e              # double 0.30525009987785967
	.quad	0x3fe88c964bdb4463              # double 0.76716151061749505
	.quad	0x3fee10543459cca8              # double 0.93949327683221373
	.quad	0x3feb046003cde636              # double 0.84428406470323725
	.quad	0x3fd5f79f9151be16              # double 0.34323872748697803
	.quad	0x3fe98bab195cc202              # double 0.7982993598325836
	.quad	0x3fbdb412d9e373e0              # double 0.1160289556459726
	.quad	0x3fe1596a16544a21              # double 0.54216484414275012
	.quad	0x3fda5bd405a72c1e              # double 0.41185474922230181
	.quad	0x3fd1169b2ab01842              # double 0.26700476807343787
	.quad	0x3fe2f72327499e87              # double 0.59266812966684845
	.quad	0x3fc01f7dfe41b534              # double 0.12596106448055766
	.quad	0x3fd4f42869af814c              # double 0.32740221329551811
	.quad	0x3fe4e9c57c93745b              # double 0.65353655177353731
	.quad	0x3f9864e37d59c7c0              # double 0.023822359586524788
	.quad	0x3fe07281ad146e36              # double 0.51397785000467056
	.quad	0x3fbb9e8ad11636f0              # double 0.10788791279466259
	.quad	0x3fdc4d2b6af7138c              # double 0.44221005864920282
	.quad	0x3fc4ed8878cc15d4              # double 0.16349893472958732
	.quad	0x3fdae5f9a300fb80              # double 0.42028656881659998
	.quad	0x3fa866613d5731f0              # double 0.047656096208445464
	.quad	0x3fc3c4af99790f44              # double 0.15443987840455453
	.quad	0x3fd6ecabd2d57074              # double 0.35819526280625458
	.quad	0x3feb90dce557d083              # double 0.86143345635947843
	.quad	0x3fe925b627ee9cf5              # double 0.78585346030459269
	.quad	0x3fe51c1bab37c56d              # double 0.65968116227138085
	.quad	0x3fd1d659ad1e0fdc              # double 0.27870790391921019
	.quad	0x3fe01cffd69ebd5e              # double 0.50353996198638717
	.quad	0x3fd085bf530076a0              # double 0.25816329103131785
	.quad	0x3fe475ec6a477b8c              # double 0.63939495809232616
	.quad	0x3fea6b289f4fb153              # double 0.82558089366424736
	.quad	0x3fc03ccdc19edf70              # double 0.12685558275347431
	.quad	0x3fe15e9268a38964              # double 0.54279442250507914
	.quad	0x3fd08c9f8cad9d36              # double 0.25858296144584203
	.quad	0x3fe06403647bf744              # double 0.51220864892796003
	.quad	0x3fe32104c14e92f1              # double 0.59778058772334763
	.quad	0x3fe78c072d0b697f              # double 0.73584326551217305
	.quad	0x3feba16dd127095b              # double 0.86345568513960858
	.quad	0x3fc4e005fc445598              # double 0.16308665101739162
	.quad	0x3fec983ed6d43cf8              # double 0.89358465155410638
	.quad	0x3fd0aac428fe98ca              # double 0.26042274478312477
	.quad	0x3fe781b086e101d7              # double 0.7345812448839365
	.quad	0x3fd512f189f667c4              # double 0.32928122017767358
	.quad	0x3fec7fcc51ff96ec              # double 0.89060035720168917
	.quad	0x3fe8e9ecda973cfe              # double 0.77855532353888157
	.quad	0x3f934132e59a2ea0              # double 0.018803401244936624
	.quad	0x3fc3580f970b1ab4              # double 0.15112490534939627
	.quad	0x3fd3f5ac09524e0e              # double 0.31186962995818213
	.quad	0x3fca72f0b458c358              # double 0.20663269811623297
	.quad	0x3fe12dc2f209ffcb              # double 0.53683612130407121
	.quad	0x3fcde1c686fa372c              # double 0.23345262137120792
	.quad	0x3feac7963d5ea9ce              # double 0.83686363207135073
	.quad	0x3febb40143dde059              # double 0.86572325949874618
	.quad	0x3fa16396d60aede0              # double 0.0339629303248008
	.quad	0x3f9dedb64b64d740              # double 0.029227112151793522
	.quad	0x3fe7d10331c1c3cd              # double 0.74426421850341173
	.quad	0x3fe81b6880c00361              # double 0.75334572931761212
	.quad	0x3fd8e43688179172              # double 0.38892901697388205
	.quad	0x3fe5a4aff3eedf1a              # double 0.67635343211347565
	.quad	0x3fef07ab49c140d0              # double 0.96968616872075053
	.quad	0x3fe77122b3d2f768              # double 0.73256049272434343
	.quad	0x3fe60de2a2bb96a3              # double 0.68919498237365351
	.quad	0x3fefe5f608b22ad1              # double 0.99682141970091653
	.quad	0x3fe7d26e3c0b76ae              # double 0.74443732955451991
	.quad	0x3fe5e0c53147dd61              # double 0.68368777871266329
	.quad	0x3fe4a4c75c1f0e2e              # double 0.64511459343379385
	.quad	0x3fee88f08372b672              # double 0.95421624825912787
	.quad	0x3fc70834a4023084              # double 0.17993791588049046
	.quad	0x3fe791b0a74b5d8e              # double 0.73653443026243948
	.quad	0x3fb5a0a4c8a66968              # double 0.084482478129222494
	.quad	0x3fceb576bc0ae854              # double 0.23991283590095469
	.quad	0x3feaf4289a5f5b36              # double 0.84230451727748945
	.quad	0x3fe162259e04547f              # double 0.54323082792929245
	.quad	0x3fe044699c9ad02b              # double 0.50835114085066857
	.quad	0x3fe09ef08ce5610d              # double 0.51940181273224229
	.quad	0x3fe51cb631168d37              # double 0.65975484454648992
	.quad	0x3fe7bf0dcd721c8f              # double 0.74207201124308309
	.quad	0x3fe2061219fdb8dd              # double 0.56324105335604779
	.quad	0x3fd4bb369a3173be              # double 0.32392659242560373
	.quad	0x3fd6690e2d01cb30              # double 0.35016207118239873
	.quad	0x3fc69b0fe5a739c8              # double 0.17660711968933485
	.quad	0x3fe84c34c5284c2b              # double 0.75930250651652409
	.quad	0x3fdade7886a2639e              # double 0.4198285403049854
	.quad	0x3fefbc47f6288d93              # double 0.99173353269400121
	.quad	0x3f95e4a6eacd0a40              # double 0.02138005073653404
	.quad	0x3fe572ba132f6581              # double 0.67025474307153854
	.quad	0x3fc6c3922c14708c              # double 0.17784335281692554
	.quad	0x3fddba34184813c2              # double 0.46448995944257032
	.quad	0x3fdde98a9b2b9f62              # double 0.46737923768386314
	.quad	0x3fd23753f7cec57a              # double 0.2846269531247213
	.quad	0x3fd5b626fc9b5992              # double 0.33924269360195425
	.quad	0x3fea13ac6ea62501              # double 0.81490155802853803
	.quad	0x3fd1567f97d99dca              # double 0.27090444401843838
	.quad	0x3fe24c1dba878650              # double 0.57179151946565732
	.quad	0x3fd7f9f0e9c034a4              # double 0.37463019206263426
	.quad	0x3fb0f5aadec42220              # double 0.066248587976709405
	.quad	0x3fb3cc4045875da0              # double 0.077335373854444445
	.quad	0x3febe6c09ac4c5c6              # double 0.87191801288843673
	.quad	0x3fe05489bcdfb215              # double 0.51031958474556183
	.quad	0x3fe4b8caa5e92fb9              # double 0.64755756763906114
	.quad	0x3fa7827ce318f470              # double 0.045917418214664774
	.quad	0x3fd65ec71d7dc322              # double 0.34953477745061623
	.quad	0x3fe2eaca52b7a071              # double 0.59116092830391953
	.quad	0x3feff532e1e6896f              # double 0.99868148919294508
	.quad	0x3fe9b2e5ee1a01d1              # double 0.80308815483300056
	.quad	0x3fde6a011b4ed5de              # double 0.4752199904135902
	.quad	0x3fb23692e72f5bc0              # double 0.071145230714463104
	.quad	0x3fe508b7e9e56992              # double 0.65731425936546573
	.quad	0x3fefcca772b637bd              # double 0.99373218922277539
	.quad	0x3fd0c9c861157d5e              # double 0.26231584053853918
	.quad	0x3fec7a1b3d1c17b2              # double 0.88990556655402586
	.quad	0x3fe177d26c2a4412              # double 0.54587670446392367
	.quad	0x3fc5b84f4a58a99c              # double 0.16968718652908599
	.quad	0x3fe0c1c1f7b038b6              # double 0.52365206123956543
	.quad	0x3fe6f88ee598999a              # double 0.71784157603251519
	.quad	0x3fba0acde9faaaa8              # double 0.10172736132032389
	.quad	0x3fd7afc4a97133da              # double 0.37010304019059748
	.quad	0x3fe783d4af298566              # double 0.73484262668004585
	.quad	0x3fce0da8ca32bf44              # double 0.23479184983215806
	.quad	0x3fe79037aaee49a9              # double 0.736354669427148
	.quad	0x3fe925ad07c4e910              # double 0.78584910886209691
	.quad	0x3fc805d8d08e189c              # double 0.18767843421318708
	.quad	0x3fd6ee58f6a491ec              # double 0.35829757772651649
	.quad	0x3fce7abc6c316f28              # double 0.23812060625902487
	.quad	0x3f9bdf4291a5e3a0              # double 0.027218856944702829
	.quad	0x3fe62514629d8470              # double 0.69202632199097813
	.quad	0x3fe2c4bb225833e2              # double 0.58651501377027793
	.quad	0x3fda8e458006eef4              # double 0.41493356230397116
	.quad	0x3fed0ab782dce85e              # double 0.90755820807613552
	.quad	0x3fef3820587c2091              # double 0.97560136110497996
	.quad	0x3feaa16313ab4f27              # double 0.83220056382785834
	.quad	0x3fe403dc6aff3e2e              # double 0.62547131440982695
	.quad	0x3feff9917cb38951              # double 0.99921488147473713
	.quad	0x3fd7666d9982043a              # double 0.36562671652797329
	.quad	0x3fb4da0f3cd1a3a8              # double 0.081452324245801067
	.quad	0x3fdb832e0898e2e0              # double 0.42988158073016614
	.quad	0x3fe75bc1d90ad51a              # double 0.72995083228184687
	.quad	0x3fe0cafcc0f0aba0              # double 0.52477872546784354
	.quad	0x3fe847db126ce964              # double 0.75877145384519595
	.quad	0x3fe58812a98b19ed              # double 0.67286046136797284
	.quad	0x3fcafeadaa2093c0              # double 0.21089716727251862
	.quad	0x3fcbe063345694dc              # double 0.21778526359154327
	.quad	0x3fe46f04d708ee0d              # double 0.63855211256981337
	.quad	0x3fea26f6d91bb4f4              # double 0.8172563782115092
	.quad	0x3fb43e80c89fbf48              # double 0.079078721027824206
	.quad	0x3fe2b20ffb3cdf36              # double 0.584236136149207
	.quad	0x3fda8fd26fa9b7da              # double 0.41502819923959822
	.quad	0x3f9132b176783360              # double 0.01679494176464702
	.quad	0x3fed19e1bc19cd05              # double 0.9094093965381097
	.quad	0x3fa2b77e837f0f40              # double 0.036556199600026762
	.quad	0x3fe7636cb19308fd              # double 0.73088679010859858
	.quad	0x3feecd50162776d5              # double 0.96256260230048928
	.quad	0x3fca6551970cf098              # double 0.20621700168147039
	.quad	0x3fe54150689bf081              # double 0.66422291213486073
	.quad	0x3fbf04e30aaea700              # double 0.12116831789776583
	.quad	0x3fd442378aeecac6              # double 0.31654156272558642
	.quad	0x3fef7b12b8659aaa              # double 0.98377357497232265
	.quad	0x3fefad8549a60f52              # double 0.9899317205858813
	.quad	0x3fe7c310cba7233a              # double 0.74256171966508266
	.quad	0x3fcb25382829dfd8              # double 0.21207334481346041
	.quad	0x3feaba2cb9380c70              # double 0.83522640395712067
	.quad	0x3fc46c591db075f4              # double 0.15955652188942759
	.quad	0x3fb0965e871ec760              # double 0.064794452656113943
	.quad	0x3fda58ed2a6bf218              # double 0.4116776384614993
	.quad	0x3fd9e614686aec74              # double 0.40466795155561575
	.quad	0x3fc49539cb4f55d0              # double 0.16080400874368062
	.quad	0x3fe26f4f15416d29              # double 0.57608751441458594
	.quad	0x3fe99762d82e3549              # double 0.79972974989656465
	.quad	0x3fd7793052c45b0a              # double 0.36677177508083558
	.quad	0x3fcfa39ca914be58              # double 0.24718054061803474
	.quad	0x3fed4e792ebf47df              # double 0.91582926874457005
	.quad	0x3fbef440582716d8              # double 0.12091447975316372
	.quad	0x3fec0f11c9a42b11              # double 0.87683953650534552
	.quad	0x3fee72162f796ebf              # double 0.95142659447034095
	.quad	0x3fdb7c50c4ba6f34              # double 0.4294626160787971
	.quad	0x3fe0cb4e09111471              # double 0.52481748362391845
	.quad	0x3fef3e7da017b22e              # double 0.97637826221541046
	.quad	0x3fe6c349c19115cd              # double 0.7113388805961961
	.quad	0x3fea860fd7ca0e08              # double 0.82886497637122236
	.quad	0x3fdba320b9eb71fe              # double 0.4318315330145025
	.quad	0x3fe1a132a35cab09              # double 0.55092746645581869
	.quad	0x3fd8eaf43e360fd6              # double 0.38934045863447631
	.quad	0x3fd0f6b4c990f74e              # double 0.26505775150495914
	.quad	0x3fe595066f4f0dae              # double 0.67444154491425024
	.quad	0x3fee8b7fc0239c3c              # double 0.95452868964355941
	.quad	0x3fdb36ca9efe456a              # double 0.42521920706447836
	.quad	0x3fe2e040ac3b5666              # double 0.58987458838482776
	.quad	0x3fe9a5d4e85d225d              # double 0.80149312385135441
	.quad	0x3fd632437254aa60              # double 0.34681783833608471
	.quad	0x3fed41ebfe2928b2              # double 0.91429710045601653
	.quad	0x3fe32a727a7c3450              # double 0.59893154070744892
	.quad	0x3fdd1d1b5164e69e              # double 0.45490153263708943
	.quad	0x3f9df7747048e540              # double 0.029264277795140403
	.quad	0x3fde5d6187eadfc0              # double 0.47444952271643714
	.quad	0x3fc58f2a1fbde738              # double 0.16843153524296794
	.quad	0x3fc80bde8d23293c              # double 0.1878622235438544
	.quad	0x3fcb6847b728b6d4              # double 0.21411987727463233
	.quad	0x3fec9a74afaba170              # double 0.89385446844702976
	.quad	0x3fe5ba56fe983d1d              # double 0.67899656034015587
	.quad	0x3fd2b0f130feaa94              # double 0.29204969200751774
	.quad	0x3fe68a82c11dd8b9              # double 0.70440805166324261
	.quad	0x3faa08c3a798cf80              # double 0.050848116119964537
	.quad	0x3fe507ef778af619              # double 0.65721867893415997
	.quad	0x3fded408b0705ce2              # double 0.48169152479517952
	.quad	0x3fdf2cf082f40f06              # double 0.4871178892937994
	.quad	0x3fc4591e4495ce3c              # double 0.15896967266927386
	.quad	0x3fe3f8ffd217b862              # double 0.62414542230341064
	.quad	0x3fdb4f6b797278d8              # double 0.42672240123819227
	.quad	0x3fea92b03b671310              # double 0.83040629961087298
	.quad	0x3fe7d1b12f80d8b2              # double 0.74434718397130539
	.quad	0x3fee366cc506bf81              # double 0.94414366227827895
	.quad	0x3fe9f4109f4a53a2              # double 0.81104308234590783
	.quad	0x3fdd1414e04fa35a              # double 0.45435068040256044
	.quad	0x3fab0d33fd82a020              # double 0.052835106559826039
	.quad	0x3fd9b990f149235a              # double 0.40195106089645594
	.quad	0x3fe419798163495b              # double 0.62810969611227152
	.quad	0x3fe356b6895fe56b              # double 0.60433508711791484
	.quad	0x3fe06298d3a3e4c2              # double 0.51203576408365614
	.quad	0x3fe9dd9cee456c8f              # double 0.8083023694738517
	.quad	0x3fe5926b82e8800c              # double 0.67412353103645861
	.quad	0x3fd54ae2de74c39e              # double 0.33269569133977395
	.quad	0x3fe66efed577b860              # double 0.70104924862767959
	.quad	0x3fd3c1758f9288d2              # double 0.30868281384222229
	.quad	0x3fed2423e44c365a              # double 0.91066164578814868
	.quad	0x3fd4eb95addb049c              # double 0.3268789480026244
	.quad	0x3fcd37d5074e0d88              # double 0.22826636177715565
	.quad	0x3feb0c0fb762275e              # double 0.84522233788559809
	.quad	0x3fe88f54616a5b01              # double 0.76749629045920653
	.quad	0x3fef69d84a040b58              # double 0.98167051750383915
	.quad	0x3fe71a01eefcbded              # double 0.72192475011064305
	.quad	0x3fc4a8c2652954e4              # double 0.16140012683414462
	.quad	0x3fc6b844dec688e0              # double 0.17749844434462769
	.quad	0x3f837894aab0e680              # double 0.0095073332396282683
	.quad	0x3fbe4ec49c91a010              # double 0.11838940451127677
	.quad	0x3fd36007283820e6              # double 0.30273608138715102
	.quad	0x3fee70db83ef1f5d              # double 0.9512765480840063
	.quad	0x3fdeb7cd60de156a              # double 0.47996839961736859
	.quad	0x3fa472980dc6bb60              # double 0.039936782533337434
	.quad	0x3fbe5e4e60e7b860              # double 0.11862649789665758
	.quad	0x3fd58ffee9797986              # double 0.33691380310292407
	.quad	0x3fe7a6e8dc1383c9              # double 0.73912470801962471
	.quad	0x3fef325ba01022b5              # double 0.97489720594702211
	.quad	0x3fe096276235850d              # double 0.51832932645280183
	.quad	0x3fa6c07d256022e0              # double 0.044437323391383066
	.quad	0x3fe9d8a7768aa9e1              # double 0.80769704010645793
	.quad	0x3fda903f49de6e7e              # double 0.41505415166623283
	.quad	0x3fde4008629c1edc              # double 0.47265824918620836
	.quad	0x3fdcddff5ffc0356              # double 0.45104965566138355
	.quad	0x3fd95b2f77d3bc36              # double 0.39619051648964232
	.quad	0x3fdaa378219ab428              # double 0.41622737199469606
	.quad	0x3fe8c86fbcc04cf4              # double 0.7744673430010196
	.quad	0x3fb097e74421ef38              # double 0.064817861684727585
	.quad	0x3fddfe01867c410e              # double 0.46862829335533795
	.quad	0x3fe849b34216c09e              # double 0.75899660976394379
	.quad	0x3fc0d6fc03f19c5c              # double 0.13156080429618811
	.quad	0x3fb2fdb31e472788              # double 0.074183649913861172
	.quad	0x3fd63a85ee26c726              # double 0.34732197052936653
	.quad	0x3feb7fcfbf898ab3              # double 0.85935199174521981
	.quad	0x3fdcfa656f1628e2              # double 0.45278297279641155
	.quad	0x3fdafb151892ec50              # double 0.42157485389515603
	.quad	0x3fe02a77f956031c              # double 0.50518416117128906
	.quad	0x3fd8d0bae9f1f8fa              # double 0.38773987623416384
	.quad	0x3fd9b7d2cef20d7e              # double 0.40184469422839431
	.quad	0x3feafbd4c4a2b7fb              # double 0.84324110417742248
	.quad	0x3feef4686c389961              # double 0.96733494889194215
	.quad	0x3fe504e6864d2c6e              # double 0.65684820395234822
	.quad	0x3fe94b37c67c024e              # double 0.79043186918722497
	.quad	0x3fd38725a9bd8340              # double 0.30512372566413504
	.quad	0x3fdfbc7be88b6724              # double 0.49587915143421157
	.quad	0x3fd1613a1485840e              # double 0.27155925754601717
	.quad	0x3fef2724bb52347d              # double 0.97352825723795854
	.quad	0x3fce11b1f9351fc8              # double 0.23491501491866829
	.quad	0x3fd8914d3229f060              # double 0.38386850260554262
	.quad	0x3fe4a29a9e5cd3b0              # double 0.64484911852070148
	.quad	0x3fb5197dfd8dfd00              # double 0.082420229342449858
	.quad	0x3fe0ab9a46111da2              # double 0.52094758686955722
	.quad	0x3feebf986c147a72              # double 0.96088811025022225
	.quad	0x3fa4cdfaab840700              # double 0.040633996426562291
	.quad	0x3fd46d60b6dbdfbe              # double 0.31917589051544926
	.quad	0x3fed9f44f69e40c9              # double 0.92569206397640713
	.quad	0x3feec8667ef34e0f              # double 0.96196293635370178
	.quad	0x3fdff0f921da79f8              # double 0.49908283525465391
	.quad	0x3fe94ba115c2f77e              # double 0.79048208475408877
	.quad	0x3fe218cc63875d94              # double 0.56552714766705714
	.quad	0x3fde42c34c250548              # double 0.47282488285062074
	.quad	0x3fe7848811e0544a              # double 0.73492816440069331
	.quad	0x3fee1efbea5fd938              # double 0.9412822320580636
	.quad	0x3fd68a6c53a1350a              # double 0.35219867865528498
	.quad	0x3fe8a3dfab4653b6              # double 0.77000411464779606
	.quad	0x3fd859bebc25d186              # double 0.38047760366250605
	.quad	0x3fd24d717879e79a              # double 0.28597676053288412
	.quad	0x3fe152731e74e398              # double 0.54131465862802752
	.quad	0x3fe39a2897bef24a              # double 0.61256818426006387
	.quad	0x3fdfac483a93c39e              # double 0.49489026756696741
	.quad	0x3fd9231c2fd75be8              # double 0.39276795074459736
	.quad	0x3fd57dc631be69f6              # double 0.33580164773744003
	.quad	0x3feb67c1bab60829              # double 0.85641561953548717
	.quad	0x3fec462bb128dbf4              # double 0.88356575585828389
	.quad	0x3fed63d830d45184              # double 0.91843804871545886
	.quad	0x3feb76708d118531              # double 0.8582079653971616
	.quad	0x3fd8858bb5d1a9ca              # double 0.38315098529588154
	.quad	0x3fe790279b4a62b9              # double 0.73634701090039478
	.quad	0x3fee359c7e694490              # double 0.9440443486183927
	.quad	0x3fe873741731bd61              # double 0.76409344225059439
	.quad	0x3fd685dac15f2d58              # double 0.3519198311230034
	.quad	0x3fe05d77421cf3a7              # double 0.51140940582955785
	.quad	0x3fd18d461883935c              # double 0.27424766916219823
	.quad	0x3fe3be82f8e1b005              # double 0.61700581178365665
	.quad	0x3fc0f541aafe0488              # double 0.13248463486892015
	.quad	0x3fdbf4eeaf070c90              # double 0.43682448475392111
	.quad	0x3faf47156723aec0              # double 0.061089199867493615
	.quad	0x3fe29c7894dbae1b              # double 0.58160046647884955
	.quad	0x3fce4beff6e07088              # double 0.23669242434050752
	.quad	0x3fe2d412e4183395              # double 0.58838791417803071
	.quad	0x3fd61a80c2b2f8e4              # double 0.34536761296830165
	.quad	0x3fe295d3b91f8733              # double 0.58078943402163075
	.quad	0x3fdb405d3b680632              # double 0.42580347825432618
	.quad	0x3fc83cb8f454c8bc              # double 0.18935310297235286
	.quad	0x3fc46f895ddd4698              # double 0.15965382655354143
	.quad	0x3fb3e93f93ac3740              # double 0.077777837326917343
	.quad	0x3fc388059f1abfd4              # double 0.15258856076024918
	.quad	0x3fde3c7d55a5ee18              # double 0.47244199146345656
	.quad	0x3fddf16957a64a5e              # double 0.46785958823708096
	.quad	0x3fefeecb725e8697              # double 0.99789974534742753
	.quad	0x3fe4f5a1613e6a22              # double 0.65498417847567603
	.quad	0x3fb35aff6a217670              # double 0.075607264910525051
	.quad	0x3fe45944942bc06b              # double 0.63589695872907492
	.quad	0x3fd217143cba8f0a              # double 0.28265863352338327
	.quad	0x3fb93de452d2e6b0              # double 0.098600645275747522
	.quad	0x3fdf089167a9aeb8              # double 0.48489794848749623
	.quad	0x3fb5c2ecc39e7a60              # double 0.085005567320402431
	.quad	0x3fde7c9d2390e88a              # double 0.47635582421538258
	.quad	0x3fa0d90373eb43d0              # double 0.03290568151499651
	.quad	0x3fdbcdb8900b0554              # double 0.43443121020034892
	.quad	0x3fe3fbf77a2b3645              # double 0.62450765477269299
	.quad	0x3fec1c5627e4d25c              # double 0.87845905105366339
	.quad	0x3fe8bc05d371c042              # double 0.77295199678156501
	.quad	0x3fe75441ae5d2e97              # double 0.72903522544352739
	.quad	0x3fe815a334bb0912              # double 0.75264129923769674
	.quad	0x3fe65eacde73a1ad              # double 0.69905703971476429
	.quad	0x3f8f3ab40f88a900              # double 0.015248686527304489
	.quad	0x3fd047ca7d0b4dac              # double 0.25438177310317189
	.quad	0x3fec7fbbfdc9cd84              # double 0.89059257095361532
	.quad	0x3fe5e7e160dad15b              # double 0.68455571095413903
	.quad	0x3fe425877a031ee6              # double 0.62958120184427169
	.quad	0x3fedbfdf4bdf1528              # double 0.92967190569530533
	.quad	0x3fe90198bc9020aa              # double 0.7814449007865012
	.quad	0x3fdba2e8b1911e08              # double 0.43181817379488097
	.quad	0x3fa56cdb1c3a4820              # double 0.041846129604110383
	.quad	0x3fcb208decf0e790              # double 0.21193098134409327
	.quad	0x3fecf2e47c350bad              # double 0.90464996585102642
	.quad	0x3fe713fcfbee1bc8              # double 0.72118996815776715
	.quad	0x3feeb610859c1d38              # double 0.95972467513721593
	.quad	0x3fcaffddbce352ec              # double 0.21093341563268753
	.quad	0x3fe16d26ffe4e472              # double 0.54457426051443591
	.quad	0x3fe734ecbdf160e9              # double 0.72521054361552928
	.quad	0x3fe55e802eedf9c2              # double 0.66778573194442736
	.quad	0x3fe3cf9b47d8df3a              # double 0.6190925982727784
	.quad	0x3fde76b1409fa9b0              # double 0.47599440871149579
	.quad	0x3fcd8e47fdcce1ac              # double 0.23090457813829113
	.quad	0x3fec4c3f3fa2fd13              # double 0.88430750302350913
	.quad	0x3fdd16a5314edf1c              # double 0.45450715842479084
	.quad	0x3fe154d6c736ca49              # double 0.54160632046689117
	.quad	0x3fee53ad4b2a1074              # double 0.94771446877031317
	.quad	0x3fbe42969a2dd658              # double 0.11820355667244919
	.quad	0x3fd21642aa7aa2f8              # double 0.28260866783470773
	.quad	0x3feef074faae2d8d              # double 0.96685265503895012
	.quad	0x3feb7fe2412901c2              # double 0.85936081625555283
	.quad	0x3fe0bdedb84eb8cd              # double 0.52318464276847865
	.quad	0x3fe16dbb001026ec              # double 0.54464483272860553
	.quad	0x3fc5d20f3f6bdd10              # double 0.17047300907845697
	.quad	0x3fe08194ba25dd39              # double 0.51581798893940978
	.quad	0x3fc257cd24f18804              # double 0.14330448440438215
	.quad	0x3f8ea6310e123f40              # double 0.014965422861024202
	.quad	0x3fd62f44c7062a84              # double 0.34663505016275331
	.quad	0x3fe7d6abcd117a8a              # double 0.74495496799848238
	.quad	0x3fddc94ba0591920              # double 0.46541109713543172
	.quad	0x3fd28a33ff833edc              # double 0.28968524887475922
	.quad	0x3feb657b2ef44855              # double 0.85613783999202531
	.quad	0x3fefb837ae93ae91              # double 0.99123748871848438
	.quad	0x3fea54c9d3150d67              # double 0.82285014369010134
	.quad	0x3fe01cf981bfa6de              # double 0.50353694287806738
	.quad	0x3fed2a85b7ba3b0a              # double 0.91144071468610943
	.quad	0x3fbfa4cb879dd7c8              # double 0.12360832272483357
	.quad	0x3fed671c4d59ec1a              # double 0.91883673770587682
	.quad	0x3fe2910bb8a131d0              # double 0.58020578442079263
	.quad	0x3f8a5c5568e79300              # double 0.012871424926694797
	.quad	0x3fc9a7253aea8164              # double 0.20041337372550594
	.quad	0x3fc6a5d7e1b44bf8              # double 0.17693613548962595
	.quad	0x3fa3235caed695d0              # double 0.037379165976101469
	.quad	0x3fcbec5d50d412e4              # double 0.21815077254009119
	.quad	0x3fe270ada2563ee3              # double 0.57625467020440302
	.quad	0x3fe3ed5a79c44448              # double 0.6227238062148297
	.quad	0x3fe14871bc478788              # double 0.54009329579661003
	.quad	0x3feeaa4ffd230f62              # double 0.95829009476481652
	.quad	0x3fd9f0e586543c00              # double 0.40532816045828213
	.quad	0x3fe2c3ca4751bedb              # double 0.58640016488603963
	.quad	0x3fe57200fc054bb3              # double 0.6701664850501089
	.quad	0x3fedbc04dfe1299c              # double 0.92920154310677416
	.quad	0x3fbe95e77698b288              # double 0.11947485585614903
	.quad	0x3fcab404bc03561c              # double 0.20861872845004903
	.quad	0x3fe73f777cc56659              # double 0.72649740571359722
	.quad	0x3fd944e6f24d9fd2              # double 0.39483045256065197
	.quad	0x3fdc7edb700f130e              # double 0.44524274771929206
	.quad	0x3fe7b4750eab4297              # double 0.7407784735206232
	.quad	0x3fd6ea864dee5cb8              # double 0.35806424723109442
	.quad	0x3feccc1f05ca13a5              # double 0.89991713648543181
	.quad	0x3fe153a0c20706ca              # double 0.54145849128709611
	.quad	0x3fe9f11ffe4f85d7              # double 0.81068420095487681
	.quad	0x3fe04ef8a8b1adcf              # double 0.50964005420740388
	.quad	0x3fd2ec20d7b203b4              # double 0.29566212715149764
	.quad	0x3fec53c24c707e4f              # double 0.88522448472571991
	.quad	0x3fecddb28692044e              # double 0.90206266673352231
	.quad	0x3fe692c6d720c52e              # double 0.70541708008946613
	.quad	0x3fb0d1682dd0a290              # double 0.065695296464250541
	.quad	0x3fcbbf04469769a8              # double 0.21676686713074145
	.quad	0x3fc9303a87850a60              # double 0.19678432099506704
	.quad	0x3fb11257d4845e70              # double 0.066686143287705724
	.quad	0x3fef3e987c59df47              # double 0.97639107024495153
	.quad	0x3fe23d071c52557a              # double 0.56994967967572951
	.quad	0x3fede9485a81a490              # double 0.93472688366922974
	.quad	0x3fe6c38bca1eb138              # double 0.71137036778012597
	.quad	0x3fe85145b1ad394e              # double 0.75992092802497679
	.quad	0x3fd6dbb298231f94              # double 0.35715927941463943
	.quad	0x3fe56803fd69fb21              # double 0.66894721503181043
	.quad	0x3fea68b7b4f90b9d              # double 0.82528291078812155
	.quad	0x3fec1bcf8d660130              # double 0.87839486710439552
	.quad	0x3fdd739eb963f168              # double 0.46018188576251484
	.quad	0x3fe76fffdf0d6bd3              # double 0.73242181363036207
	.quad	0x3fe1f8616a3db4ca              # double 0.56156988859370327
	.quad	0x3fe09a39d9675d38              # double 0.51882641278908803
	.quad	0x3fc25d264e984420              # double 0.14346770131717879
	.quad	0x3fa68b48bc0fec00              # double 0.044031403500376598
	.quad	0x3fd2663ae440b91e              # double 0.28748962679209622
	.quad	0x3fd3143f98bd5162              # double 0.29811086574524925
	.quad	0x3fe9995413ae77ee              # double 0.79996684879347213
	.quad	0x3fb4fad0599a2c30              # double 0.081952115893884736
	.quad	0x3fece4abe286e743              # double 0.90291399234340763
	.quad	0x3fe10e2940d8c153              # double 0.53297865548487733
	.quad	0x3fcf7e5f2c6d1dfc              # double 0.24604406041383686
	.quad	0x3fdbcf759fd49772              # double 0.43453732117119792
	.quad	0x3fe3c649e7152cd0              # double 0.61795516141264706
	.quad	0x3fdee65ca17025ae              # double 0.48281017079770094
	.quad	0x3f9fb3f7c54ba020              # double 0.030959960381466201
	.quad	0x3fc1aa53e3c56f5c              # double 0.1380104887165271
	.quad	0x3fd504c2594a43ea              # double 0.32841547698723039
	.quad	0x3fc5455ac2131e94              # double 0.16617903209975238
	.quad	0x3f8e4d9b68ef5bc0              # double 0.014796461238729353
	.quad	0x3fef38e4c25800bb              # double 0.97569501836553429
	.quad	0x3fbcd89c770b2c30              # double 0.11268022447909298
	.quad	0x3fee81ca9c00ba63              # double 0.95334368199639774
	.quad	0x3fc6a79f89c528cc              # double 0.17699045397814073
	.quad	0x3fda69b5fcfa526c              # double 0.41270208077302217
	.quad	0x3fea54256e3961af              # double 0.82277175453332585
	.quad	0x3fe43b5fd31318e4              # double 0.63224784112460641
	.quad	0x3fc87f7b39222d18              # double 0.19139042176934917
	.quad	0x3fee86dd847d4b5d              # double 0.95396304966775924
	.quad	0x3fde019cc12f77f6              # double 0.4688484083725365
	.quad	0x3fd59bc78939e1d6              # double 0.33763302231775805
	.quad	0x3fe86918817e5839              # double 0.76282906810479922
	.quad	0x3fe77292054f30ce              # double 0.73273564373951117
	.quad	0x3fd8a5b4e96fcd88              # double 0.38511393353038459
	.quad	0x3fdbb4bd37b6b1ea              # double 0.43290644112383225
	.quad	0x3fe7d339e17a4eac              # double 0.74453443564057897
	.quad	0x3fe5c2da09861c01              # double 0.68003560886506886
	.quad	0x3fe642ab280394bb              # double 0.69563825431091375
	.quad	0x3feff7f4d5e74c14              # double 0.99901811388042682
	.quad	0x3fd5bbf8d25578d0              # double 0.3395978979150529
	.quad	0x3fe91854cbd11067              # double 0.78422012145939568
	.quad	0x3fd0d4fa90077058              # double 0.26299919190728849
	.quad	0x3febf2645838b590              # double 0.87333886366620739
	.quad	0x3fdfa727ffe6ec8c              # double 0.49457740774568815
	.quad	0x3f70fd4d62afe880              # double 0.0041478178854906789
	.quad	0x3feb1d7863a617ed              # double 0.84734744513184312
	.quad	0x3fdcf7fa7a096a90              # double 0.45263540189413565
	.quad	0x3fe0149b257aa99f              # double 0.50251538581987976
	.quad	0x3fe482e3f7fca753              # double 0.64097784457156093
	.quad	0x3fec8f8eda8f8def              # double 0.89252417266510331
	.quad	0x3fd216b6aac74604              # double 0.28263632466868693
	.quad	0x3fe995da7c966c82              # double 0.79954265912546441
	.quad	0x3fe9bb0ca9d1a9da              # double 0.80408318679593127
	.quad	0x3fdec83a63f6893e              # double 0.48097095262541589
	.quad	0x3fe8463c9317c593              # double 0.75857380608629155
	.quad	0x3fe92267ee269166              # double 0.7854499484424593
	.quad	0x3fd566efe466b408              # double 0.33440778069308452
	.quad	0x3fefde90767c1004              # double 0.99591849462058279
	.quad	0x3fda67c4403cfb5a              # double 0.41258341096174933
	.quad	0x3fedbf043023965f              # double 0.9295674267020323
	.quad	0x3fb5b2c9de18d918              # double 0.084759346697726889
	.quad	0x3fd2fa3e1dd2f28c              # double 0.29652359879018131
	.quad	0x3fd45ccf36b0c684              # double 0.3181646379553984
	.quad	0x3fec6c3cc1673cc9              # double 0.88821256422115724
	.quad	0x3fcd2d81c98fa64c              # double 0.22795126287319289
	.quad	0x3fc45c9d70f866d8              # double 0.15907638565186377
	.quad	0x3fe207f2f294bc34              # double 0.56347033862210205
	.quad	0x3fe5f24e003c7d85              # double 0.68582820936346478
	.quad	0x3fe4ffbcca78741e              # double 0.65621795220397749
	.quad	0x3fe2689a82f557ad              # double 0.57526898935133419
	.quad	0x3fe8077cc338f7c5              # double 0.75091398362541695
	.quad	0x3fd60efe39d61d2e              # double 0.34466510437092068
	.quad	0x3fe9f9c682cb4602              # double 0.81174016519270276
	.quad	0x3fde92c83bb7c79e              # double 0.47770887214493907
	.quad	0x3feb2516c43c954e              # double 0.84827745749923067
	.quad	0x3fe3129e7ca9e11f              # double 0.59602283810002976
	.quad	0x3fdc17732e44fabe              # double 0.43893126982213093
	.quad	0x3f69e07de7143400              # double 0.0031588038479015701
	.quad	0x3fe3355543f3a427              # double 0.60026038429089545
	.quad	0x3fc0cb8805fe0d48              # double 0.13121128361317802
	.quad	0x3fdbad30658e7c40              # double 0.4324456207049856
	.quad	0x3fd79510d421c8e0              # double 0.36847325054180935
	.quad	0x3fe709baf51d67be              # double 0.71993778108593864
	.quad	0x3fe47f22e7c40a33              # double 0.64051957384828595
	.quad	0x3fd2a578276760da              # double 0.29134944770841076
	.quad	0x3fc04ec6279000f4              # double 0.12740399295581251
	.quad	0x3fe37fed8d93599e              # double 0.60936620379907303
	.quad	0x3fa58e4cf4caf040              # double 0.042101292497563225
	.quad	0x3fe290cd6306068f              # double 0.58017606106314357
	.quad	0x3fbc48727c2e9ff8              # double 0.11048045665540929
	.quad	0x3fc8039fe3039d5c              # double 0.18761061272310087
	.quad	0x3fed6b855c608816              # double 0.91937511484525447
	.quad	0x3fd651aab7eae966              # double 0.34873455010133225
	.quad	0x3fe4af5732bb59ff              # double 0.64640388401568305
	.quad	0x3fe260af9d2f1bb4              # double 0.57430248928073135
	.quad	0x3fda71761737345c              # double 0.41317512766983611
	.quad	0x3fe33483bb202200              # double 0.6001604704661645
	.quad	0x3fe935938f6132b8              # double 0.7877900886902216
	.quad	0x3fa69c9a9ad7b780              # double 0.044163543130578908
	.quad	0x3fdebd1cdbe2429c              # double 0.48029252503423847
	.quad	0x3fbda51b6b61d000              # double 0.11580058452256026
	.quad	0x3fe345a5c82c6894              # double 0.60225190254574779
	.quad	0x3fc643d438544744              # double 0.17394497633409334
	.quad	0x3fe08011af4a7cab              # double 0.51563343273655471
	.quad	0x3fe50478cc07a3a3              # double 0.65679588174417736
	.quad	0x3fef65f8e992777c              # double 0.9811977922397399
	.quad	0x3fec96ed5865193e              # double 0.89342372192985642
	.quad	0x3fe7f82d153d2b2b              # double 0.7490449347327276
	.quad	0x3fef4bf00dcc1b1e              # double 0.97801974005492176
	.quad	0x3fe12a7b753b16f8              # double 0.53643582245487575
	.quad	0x3fd82b229d362e64              # double 0.37763276436519377
	.quad	0x3fd9879fd63d3070              # double 0.39890285417346316
	.quad	0x3fe9d6007e7bcc95              # double 0.80737328246904616
	.quad	0x3feee3b7abbb50b6              # double 0.96529754201266971
	.quad	0x3fd6bf2ed2a97208              # double 0.35541887829256824
	.quad	0x3fd1594dbf77c448              # double 0.27107566545516137
	.quad	0x3fd7e9407d9594ee              # double 0.37361156715480959
	.quad	0x3febc6c9f747ff96              # double 0.86801622674100787
	.quad	0x3fe58da72fd31aa7              # double 0.6735416349482265
	.quad	0x3fd249e9ae55c03a              # double 0.28576128029726855
	.quad	0x3fca469adcefc274              # double 0.20527969158094417
	.quad	0x3fbd6f538b54a9f8              # double 0.11497995521191473
	.quad	0x3f717a355826c700              # double 0.0042669376147601579
	.quad	0x3fd89ef818147206              # double 0.38470270492123892
	.quad	0x3fe5fdf0cdd63210              # double 0.68724861338120213
	.quad	0x3f929e062b78c4a0              # double 0.018180939105324811
	.quad	0x3fe9dd11723b1106              # double 0.8082358580655018
	.quad	0x3fd856e0b7a3992a              # double 0.38030260022641704
	.quad	0x3fa04ee193313d30              # double 0.031851815431418351
	.quad	0x3fc82cf7129a7cb0              # double 0.18887222679493254
	.quad	0x3fe52fa8f9b699af              # double 0.66206787845731252
	.quad	0x3feb83faf5a2ac89              # double 0.85986087775872122
	.quad	0x3fad405d2bea5240              # double 0.05713168297839788
	.quad	0x3fc0a65695434b3c              # double 0.13007623947359004
	.quad	0x3fe4901f7f6297c3              # double 0.64259314422519542
	.quad	0x3fe8c4f1e4697b3b              # double 0.77404112445569895
	.quad	0x3fbe2d6bffdd25d8              # double 0.11788058277775038
	.quad	0x3f6cd78bb0344c00              # double 0.0035207489287443217
	.quad	0x3fda9b916240227c              # double 0.41574511141565273
	.quad	0x3fede5bd45b56ea7              # double 0.93429435362800894
	.quad	0x3fe39c678d1965fb              # double 0.61284234579505836
	.quad	0x3fe0658b52c3b5b2              # double 0.5123955360883683
	.quad	0x3fe5212a34633920              # double 0.66029844505263569
	.quad	0x3fda20888e7c5a12              # double 0.40823568262695276
	.quad	0x3fe5a0729f403716              # double 0.67583590606384081
	.quad	0x3fe41c4b03795c10              # double 0.62845373800780813
	.quad	0x3fd932f9daf1788e              # double 0.39373632794548363
	.quad	0x3fcfdd2d4e02fbc0              # double 0.24893728551066197
	.quad	0x3fe4b5b19aa151a5              # double 0.64717941476060459
	.quad	0x3fc17cbb0b7b2e80              # double 0.13661897717098626
	.quad	0x3fea34136933e277              # double 0.81885691211125688
	.quad	0x3fe8f15016d0a266              # double 0.77945713478136436
	.quad	0x3fd6e9ef5e403688              # double 0.35802826122458287
	.quad	0x3fdc6e84fbdf5c92              # double 0.44424557301449241
	.quad	0x3fd865d932fd031c              # double 0.38121633509949659
	.quad	0x3fe8ef98d80ce18b              # double 0.77924768636062092
	.quad	0x3fe86c2407ff6977              # double 0.76320077478457804
	.quad	0x3fe30092ba1eb190              # double 0.59381996490042077
	.quad	0x3fe458ae890aa847              # double 0.63582541242545509
	.quad	0x3feb0ba344ef51c5              # double 0.84517062629543516
	.quad	0x3fe7eeabd82a3c90              # double 0.74788467616771648
	.quad	0x3fe9e8bcb57e079b              # double 0.80966029594150102
	.quad	0x3fa57738d56b9460              # double 0.041925216724657544
	.quad	0x3fe8a28156b3e5f2              # double 0.76983706411482289
	.quad	0x3f8818832e3ebf40              # double 0.011765503739155414
	.quad	0x3fd7a234af9faff6              # double 0.36927525664100302
	.quad	0x3fc6b062fae0c628              # double 0.17725789308455941
	.quad	0x3fb82a30e5de5f50              # double 0.094393783684038057
	.quad	0x3f79e34809cb5e80              # double 0.0063202680582531423
	.quad	0x3feb03e3552824c0              # double 0.8442246115893326
	.quad	0x3fe1aaa38e74aba1              # double 0.55207994292628737
	.quad	0x3fecddae3395c617              # double 0.90206060481267769
	.quad	0x3fe7fb1594fd06f1              # double 0.74939993953031891
	.quad	0x3fe9b240c3b7ca93              # double 0.80300939775618685
	.quad	0x3fe099eb1d254c54              # double 0.51878886883276687
	.quad	0x3fdd1c6ae913df8a              # double 0.45485947381484293
	.quad	0x3fde4f89cfcb785e              # double 0.47360463421308008
	.quad	0x3fd43cdef323da22              # double 0.31621526474137529
	.quad	0x3fd4d9a596c119ce              # double 0.32578410837268457
	.quad	0x3fea5e4b644ddf3c              # double 0.82401055899297359
	.quad	0x3fe434b4a57d653c              # double 0.63143379518729814
	.quad	0x3fe0d14b189e4728              # double 0.5255485039544725
	.quad	0x3fd4a74eb6fcdf50              # double 0.32271163816357262
	.quad	0x3fdc1fc9a269f1d2              # double 0.43944016323783075
	.quad	0x3fe2793926e47852              # double 0.57729775997337129
	.quad	0x3fee62e35e4c4cb7              # double 0.94957130830370928
	.quad	0x3fef19074c418b9b              # double 0.97180523771054383
	.quad	0x3fd364bb44cc23ee              # double 0.30302316397188533
	.quad	0x3fcfc5796986f32c              # double 0.24821393635456823
	.quad	0x3fd011f80d5bc814              # double 0.25109673790496001
	.quad	0x3fcc8e8e8c24c028              # double 0.2231004890722954
	.quad	0x3fd9dda80029bb80              # double 0.40415382400436073
	.quad	0x3fca6bc751a444e0              # double 0.20641414152536353
	.quad	0x3fe6376664167dbc              # double 0.6942626910057963
	.quad	0x3fde4ef754ab388e              # double 0.47356971043053242
	.quad	0x3fbb65575aeb3838              # double 0.10701509446809687
	.quad	0x3fdb47360dbd4250              # double 0.42622138349273531
	.quad	0x3fd275cc5283e442              # double 0.2884398275196568
	.quad	0x3fdd913f1416b1a4              # double 0.46199013673574485
	.quad	0x3fe0c12cf4f64dba              # double 0.52358100742497204
	.quad	0x3fbdfb8a2b0044b8              # double 0.11711944150762832
	.quad	0x3fd34015a6221790              # double 0.30078641151373464
	.quad	0x3fc8aed66d978720              # double 0.1928356204144217
	.quad	0x3fe2bceface39895              # double 0.58556350486175524
	.quad	0x3fd1a4e55d8af48a              # double 0.27568945059812988
	.quad	0x3feb83dc68518660              # double 0.85984630942057194
	.quad	0x3fb61d916b693088              # double 0.086388672564853164
	.quad	0x3febfcab404adf44              # double 0.87459337765810873
	.quad	0x3fcc1d9e159fee5c              # double 0.21965385490317402
	.quad	0x3fe0ed3d097d2ca9              # double 0.52895976880372075
	.quad	0x3fd5dcaefb9f3d70              # double 0.34159445354904161
	.quad	0x3fe05d0ed999994c              # double 0.5113596200942907
	.quad	0x3feb2b51e01c1983              # double 0.84903806468427978
	.quad	0x3fe5266b41557713              # double 0.66093981514470312
	.quad	0x3fda966e8c656fba              # double 0.41543163023538521
	.quad	0x3feeb4a3ad378665              # double 0.95955070334839531
	.quad	0x3fd11bc3f6f2ec1c              # double 0.26731967083077435
	.quad	0x3feaacacd63aa7f1              # double 0.8335785087740516
	.quad	0x3fe38a135a19fcb6              # double 0.61060493085815071
	.quad	0x3fe0df46ddb1a46d              # double 0.52725547122566996
	.quad	0x3fc264e306bb3ed0              # double 0.14370382145579308
	.quad	0x3fc6cee551afcb90              # double 0.17818895805939095
	.quad	0x3fe896b1a89ff6c6              # double 0.76839526114027801
	.quad	0x3fd2f8a23a92c704              # double 0.29642539711049687
	.quad	0x3fe6c2559bedbea1              # double 0.71122246222326535
	.quad	0x3fe01aee9aae81f7              # double 0.50328760348571577
	.quad	0x3fd82c85339958ea              # double 0.37771730460134612
	.quad	0x3fee81f1fb163482              # double 0.95336245575312284
	.quad	0x3fac104d844dcb80              # double 0.054811880493523368
	.quad	0x3fe446cbbb73ec08              # double 0.63364206897620168
	.quad	0x3fd994413e560f72              # double 0.3996737583877269
	.quad	0x3fd5a9ae828d82ee              # double 0.33848154782576401
	.quad	0x3fde06b9305a984e              # double 0.46916036340769984
	.quad	0x3fec5b2296f57d2e              # double 0.88612489208381873
	.quad	0x3f96bd8474557900              # double 0.022207326508003611
	.quad	0x3fc7f484e18f589c              # double 0.18714962972325544
	.quad	0x3fa35c9a87eebc10              # double 0.037815884679155087
	.quad	0x3fee09af6683265d              # double 0.93868227025923157
	.quad	0x3fecff7a01e35d69              # double 0.90618610733774319
	.quad	0x3fe4e165691ce871              # double 0.65251417665355238
	.quad	0x3fc315d2168b5468              # double 0.14910341358941825
	.quad	0x3fe6d2911a78c181              # double 0.71320395632032796
	.quad	0x3fd0d3d7fb9bc01a              # double 0.26292991229183971
	.quad	0x3fd9d8a583a14f66              # double 0.40384805540565194
	.quad	0x3fd8f744cbb3f0e8              # double 0.39009208577023324
	.quad	0x3fa73327668dd140              # double 0.045312148350520776
	.quad	0x3fd787a456b39912              # double 0.36765392748783754
	.quad	0x3fe9e83cfa8a7c9a              # double 0.80959938939840304
	.quad	0x3fdda2ee4733683c              # double 0.46306950524524715
	.quad	0x3fec39f8e2635578              # double 0.88207668510828707
	.quad	0x3fe6c90190ae9067              # double 0.71203687914068048
	.quad	0x3fef3c5f500bb414              # double 0.97611966737679489
	.quad	0x3fd12e39ac1a576c              # double 0.26844636732982141
	.quad	0x3fe4cd0d6e8e6f26              # double 0.65003081887286807
	.quad	0x3fe6e0133b7c8c7a              # double 0.71485292070828099
	.quad	0x3fe008455057fbbc              # double 0.50100961391569099
	.quad	0x3fcb44ddd08a299c              # double 0.21303913767435467
	.quad	0x3fec9ff26f637ac8              # double 0.89452478175720618
	.quad	0x3fe0b2f2898009c2              # double 0.52184416633127051
	.quad	0x3fed45792ae06465              # double 0.91473062872240674
	.quad	0x3fe983564a8715a9              # double 0.79728235775171641
	.quad	0x3fec9b85c98ef89a              # double 0.89398469321146767
	.quad	0x3fde92d92d855216              # double 0.47771291203869859
	.quad	0x3fd688121cd5fb42              # double 0.35205509963991599
	.quad	0x3fe945be98db12df              # double 0.78976373533859234
	.quad	0x3fb3f3734f9f4658              # double 0.077933508814817087
	.quad	0x3f8d77945ac4b340              # double 0.014388236064939997
	.quad	0x3fe53ccfd55510a0              # double 0.66367332140409374
	.quad	0x3fe739c84bc670ec              # double 0.72580351638637586
	.quad	0x3fec98d395828481              # double 0.89365557862414857
	.quad	0x3fcf27f2c110bbcc              # double 0.24340662409801295
	.quad	0x3fbb01d478aecd78              # double 0.10549667307241417
	.quad	0x3fef0d466f4bbb9d              # double 0.97037049996821489
	.quad	0x3febb947ac42a17f              # double 0.86636718411050129
	.quad	0x3fe6a53a2f41bb3c              # double 0.70766934614025656
	.quad	0x3fbf56a039bcdee8              # double 0.12241555604566268
	.quad	0x3fd80f7aae48c398              # double 0.3759447767252424
	.quad	0x3fbba7661581c6d8              # double 0.10802305245467936
	.quad	0x3fe4e9f107e09640              # double 0.65355731524022787
	.quad	0x3fe96645be3b6e6a              # double 0.79373442797391403
	.quad	0x3fd4ca470cf3bc94              # double 0.32484604134419581
	.quad	0x3fe6f194e8be0e10              # double 0.71698995072842031
	.quad	0x3fec9380e8bf1cdd              # double 0.89300580461795287
	.quad	0x3fe40911e712f087              # double 0.62610716945302236
	.quad	0x3fd5124ac52831fc              # double 0.32924145940413019
	.quad	0x3fed1f68f18c5eb8              # double 0.91008422067076022
	.quad	0x3fdfec62419a68ca              # double 0.49880272299345718
	.quad	0x3fe5c503be15e0be              # double 0.68029963613573563
	.quad	0x3fd8c64003009ee2              # double 0.38710022252278808
	.quad	0x3fe2175db9063743              # double 0.56535230767779188
	.quad	0x3fd7aebd684cafbc              # double 0.37004027543548168
	.quad	0x3fd511516ef05812              # double 0.3291820128810069
	.quad	0x3fe98b01a39d2356              # double 0.79821855502914718
	.quad	0x3fd57d5fe7bb85a8              # double 0.33577726011398079
	.quad	0x3fcf5465a243e548              # double 0.2447630922613746
	.quad	0x3fdc57814b9b5aa0              # double 0.44284088500482177
	.quad	0x3fd42b1c4ee67306              # double 0.31513126092049537
	.quad	0x3fcd4503a97f27f8              # double 0.22866864944654686
	.quad	0x3fdad1f1b74dbcdc              # double 0.41906397724865285
	.quad	0x3fd52da618fc53fc              # double 0.3309111827850868
	.quad	0x3fcab25bc64ee8b4              # double 0.20856806929606864
	.quad	0x3fdc347d96050018              # double 0.44070377016396511
	.quad	0x3fd94d89dfb0b9bc              # double 0.39535757870444477
	.quad	0x3fdf7680dac7246a              # double 0.49160786976842152
	.quad	0x3fefffafdc830ca5              # double 0.9999617869256282
	.quad	0x3fc26399d8d86320              # double 0.14366458023212036
	.quad	0x3fe8e6810cd06201              # double 0.77813770773633462
	.quad	0x3fe74cda33a831f9              # double 0.72813139046917208
	.quad	0x3fc0c521a372a354              # double 0.13101597290849532
	.quad	0x3fec8d8aa6a8c028              # double 0.89227802801724909
	.quad	0x3fdeba674656ea3e              # double 0.48012716168492264
	.quad	0x3fd7e7ef117af972              # double 0.37353111941401729
	.quad	0x3feb221232243bf3              # double 0.84790906708974345
	.quad	0x3fe80fb437450f98              # double 0.75191698832394405
	.quad	0x3fcf3d40a7ce1344              # double 0.24405677980043994
	.quad	0x3fe470dd77fa89a7              # double 0.63877747948963737
	.quad	0x3feb0aed81b6baca              # double 0.84508395514225154
	.quad	0x3f9003dd1da12a80              # double 0.015639738973087791
	.quad	0x3fe046bda96e9f9f              # double 0.50863535968982265
	.quad	0x3fd896322c721aa4              # double 0.38416723575975653
	.quad	0x3fe2f8d871b03b51              # double 0.59287664608732815
	.quad	0x3fdd6afb0f8885da              # double 0.45965458409236037
	.quad	0x3fe84cccfa1200f5              # double 0.75937508432255518
	.quad	0x3fe7ab1e8a0e8c16              # double 0.73963858570312158
	.quad	0x3fef1e212e096daa              # double 0.97242793075149803
	.quad	0x3fe8d28e8ac3706e              # double 0.77570273496850262
	.quad	0x3fe28fe45d69d3a7              # double 0.58006494755556026
	.quad	0x3fea956911f57d71              # double 0.83073857791525374
	.quad	0x3fe8ab30b140ee1d              # double 0.77089724178171404
	.quad	0x3fd3608fcc20f7e0              # double 0.30276865896655458
	.quad	0x3fee7ea7090c7c3b              # double 0.9529605080350686
	.quad	0x3fccda78f3979270              # double 0.22541725057739681
	.quad	0x3feb15d7cb3ccb34              # double 0.8464163751108118
	.quad	0x3fe06f7963fcb2f2              # double 0.5136076882241396
	.quad	0x3fe13e8a2c59827a              # double 0.53888424551048719
	.quad	0x3fcbad5962d27404              # double 0.21622769666001329
	.quad	0x3fc5e14bc1ecc66c              # double 0.17093798607816113
	.quad	0x3fb82bc3972fff88              # double 0.094417786036499973
	.quad	0x3fd322a368c291fa              # double 0.29898915510628365
	.quad	0x3fd971e21978c134              # double 0.39757587897749436
	.quad	0x3fc48723d7187f94              # double 0.16037414553374829
	.quad	0x3fb779fef09a9908              # double 0.091705259076295786
	.quad	0x3fea6d76f54a6caa              # double 0.82586238773673881
	.quad	0x3fe0914f19ba35b6              # double 0.51773791336898145
	.quad	0x3fdb2c1641660aaa              # double 0.42456585299093297
	.quad	0x3fea0d76b1be132c              # double 0.81414351191833622
	.quad	0x3fe048fdccca2772              # double 0.50891008375150038
	.quad	0x3fd2e2231e472d70              # double 0.29505231816138799
	.quad	0x3febde4a58b9545c              # double 0.87088506058592995
	.quad	0x3fbfac062c682360              # double 0.1237186296858801
	.quad	0x3fd986b284679d36              # double 0.39884627275610585
	.quad	0x3fea2584ea9e8109              # double 0.81707998107961644
	.quad	0x3fef00759169d7b2              # double 0.96880606080116238
	.quad	0x3fc865249d0e0ab0              # double 0.19058664005941273
	.quad	0x3fcc8ca8ac3bbc40              # double 0.22304256830054392
	.quad	0x3fd5279f541acc26              # double 0.33054335797641199
	.quad	0x3feab5e74b8ac882              # double 0.83470501665421204
	.quad	0x3fd2176fde68e2b2              # double 0.28268048019121317
	.quad	0x3fddce953a793b56              # double 0.46573382101353411
	.quad	0x3fd6dc6912a5a806              # double 0.35720278569226627
	.quad	0x3fda40db30182d1e              # double 0.41020850846025947
	.quad	0x3fea345fe408f724              # double 0.81889338052835514
	.quad	0x3fd79458980844f8              # double 0.36842932555107621
	.quad	0x3feffc7555a48b30              # double 0.99956766821956045
	.quad	0x3fe5cde8323710e0              # double 0.68138513381611787
	.quad	0x3feae8a99d307bea              # double 0.84090119076779257
	.quad	0x3fb5920aeb970950              # double 0.084259684102140797
	.quad	0x3f766a1f983cd780              # double 0.0054723009268878853
	.quad	0x3fe0bf2f097266ca              # double 0.5233378586301225
	.quad	0x3fd2043ffaaadd5c              # double 0.28150939444772916
	.quad	0x3fe7489b257082a5              # double 0.7276130419960124
	.quad	0x3fe9ae7f00c41c1a              # double 0.80255079412097818
	.quad	0x3fd22b4d11725bca              # double 0.28389288619785857
	.quad	0x3fe625f2b6422b01              # double 0.69213233563763776
	.quad	0x3fee36298cd7c440              # double 0.94411160953871586
	.quad	0x3fb2cd8c9a1d9110              # double 0.073448932290890889
	.quad	0x3fd6fd665b0491d2              # double 0.3592162979932968
	.quad	0x3fe19eed7719e67f              # double 0.55065034162471693
	.quad	0x3fd9e6c845648842              # double 0.40471083428031218
	.quad	0x3fdcf16204c60c56              # double 0.45223284212278736
	.quad	0x3fd851762e6c5ed2              # double 0.37997202428367161
	.quad	0x3fe130dab8208a12              # double 0.53721366846395058
	.quad	0x3fe48aa458ca5a4f              # double 0.64192406980402861
	.quad	0x3fe61d2c18364d8e              # double 0.69106106499605047
	.quad	0x3feac88bc2cba9f6              # double 0.83698070569999916
	.quad	0x3fe78e02427759c8              # double 0.73608506185228695
	.quad	0x3facd8d0a017f940              # double 0.056341666739160079
	.quad	0x3fb700d49c71be90              # double 0.089856422609722708
	.quad	0x3fed637a6fc725ab              # double 0.9183933432733985
	.quad	0x3fe693dd19904a55              # double 0.70554976456544216
	.quad	0x3fa734288fdd4a90              # double 0.045319812356543143
	.quad	0x3fb61cf9088efea0              # double 0.086379589642997079
	.quad	0x3fa16b77de0d4790              # double 0.034023042541448167
	.quad	0x3fd7d7ea0c54d35e              # double 0.37255336002572459
	.quad	0x3fde39124deea4f2              # double 0.47223336802069504
	.quad	0x3fc906973a66113c              # double 0.19551363326548621
	.quad	0x3fee645a26e4bd49              # double 0.9497500190390521
	.quad	0x3fc379d62308a630              # double 0.15215565405496667
	.quad	0x3fdcd4300d536f86              # double 0.45045090962752743
	.quad	0x3fb2d1e94ce71018              # double 0.073515492701574536
	.quad	0x3fd642dd9a106320              # double 0.34783115430177425
	.quad	0x3f933800e47971e0              # double 0.018768323845835044
	.quad	0x3fea888d86dc3715              # double 0.82916904773603284
	.quad	0x3fce1ec79c31c79c              # double 0.23531432272608022
	.quad	0x3fea484525caaf17              # double 0.82132203465650633
	.quad	0x3fef857d264b766f              # double 0.98504502753685396
	.quad	0x3fee2e1fc291ca3c              # double 0.94313037874082494
	.quad	0x3fe4a72419ca0974              # double 0.64540295636133616
	.quad	0x3fe18b64c06feda5              # double 0.54826581559557452
	.quad	0x3fe67c1aa082d03e              # double 0.70264941549113025
	.quad	0x3feebd87bbdb2d4f              # double 0.96063601198822279
	.quad	0x3f726849c79e9400              # double 0.0044939882299432909
	.quad	0x3fe42fe5e6f94398              # double 0.63084693061874741
	.quad	0x3fdab98a36363852              # double 0.41757445615883626
	.quad	0x3fef714258c68a27              # double 0.98257558192228067
	.quad	0x3fe4a6949265288e              # double 0.6453345164566302
	.quad	0x3fd58ea488a82ba8              # double 0.33683122010614364
	.quad	0x3fef32c9469d6e73              # double 0.97494949142442377
	.quad	0x3fe5a29043aeb08a              # double 0.67609418124404042
	.quad	0x3fdd45b561e68f88              # double 0.45737967072113195
	.quad	0x3fd3afdfc660c368              # double 0.30760950444078228
	.quad	0x3fec0c1cc96be002              # double 0.87647857036699883
	.quad	0x3fe16c30365369ac              # double 0.54445658312333967
	.quad	0x3fe05a53d977f265              # double 0.51102631067585647
	.quad	0x3fdda5c82e46bd68              # double 0.46324352759525889
	.quad	0x3facc2038b79d4c0              # double 0.056167708183161746
	.quad	0x3fe7413943d4f29a              # double 0.72671187637714074
	.quad	0x3fd5295184a5292e              # double 0.33064687684658878
	.quad	0x3fd0c50fc8a2f69c              # double 0.26202768891730854
	.quad	0x3fe202c265a2e803              # double 0.56283683634615078
	.quad	0x3fd827ceca648eba              # double 0.37742967381403114
	.quad	0x3fe526e642f32eba              # double 0.66099846912535232
	.quad	0x3fdd2976b0740dea              # double 0.45565573913356039
	.quad	0x3fc3eaab4faac48c              # double 0.15559903516762963
	.quad	0x3fdf3a146cb2298a              # double 0.48791990866507062
	.quad	0x3fc6455cd3f1bce0              # double 0.17399177883951378
	.quad	0x3fb531204d59e1a0              # double 0.082780856022401483
	.quad	0x3fd9763aca351bb6              # double 0.39784116503545464
	.quad	0x3fd24e524a798b58              # double 0.28603036187103248
	.quad	0x3fb667a6025a9548              # double 0.087519050192516379
	.quad	0x3fdce645521d5588              # double 0.45155461329462598
	.quad	0x3feacf99d2587a59              # double 0.83784190257194802
	.quad	0x3fd427d0b54acfd4              # double 0.31493013099975298
	.quad	0x3fc96cbae2438864              # double 0.19863067672764878
	.quad	0x3fe29ef3c782a075              # double 0.58190335242126301
	.quad	0x3f72e6f878fa1e80              # double 0.0046148019752149105
	.quad	0x3feab77826f2ccc8              # double 0.83489616019360202
	.quad	0x3fd10c85dc9d46c8              # double 0.26638933700915546
	.quad	0x3fb301621c91d8a0              # double 0.074239856696154849
	.quad	0x3fe537850312a4dd              # double 0.6630272922531294
	.quad	0x3febb4830902b190              # double 0.8657851387011295
	.quad	0x3fe7f9bf311afa9c              # double 0.74923667517562675
	.quad	0x3feb8dbd1f3a556d              # double 0.86105209445183351
	.quad	0x3fec20f29c7fa23d              # double 0.87902193609358614
	.quad	0x3fe03ea2ed4cb49a              # double 0.50764604899963506
	.quad	0x3fabd036606eb910              # double 0.054322909614130777
	.quad	0x3fe27115e89fd6d1              # double 0.5763043921894796
	.quad	0x3fed03761b689a68              # double 0.90667252877467508
	.quad	0x3fd385f5d3931758              # double 0.30505128537730775
	.quad	0x3fd9ac7cd354aa56              # double 0.40115280759588268
	.quad	0x3fe6658a041238a0              # double 0.69989491267348924
	.quad	0x3f94a96fd049c1c0              # double 0.020177599990746975
	.quad	0x3fe75432a27b10af              # double 0.72902805075184129
	.quad	0x3fe3bbf1d52f6612              # double 0.61669246328091476
	.quad	0x3fea28b1a29616a4              # double 0.81746751551755325
	.quad	0x3feb9a52f608b883              # double 0.86258838704613117
	.quad	0x3fc07ee8487df8e0              # double 0.12887290515568051
	.quad	0x3fa8d1524bd58440              # double 0.048471996075712287
	.quad	0x3fd39541c35ca3d8              # double 0.30598491743381606
	.quad	0x3fe53f7f0c7fcaef              # double 0.66400101128814792
	.quad	0x3fd5f82a17f9a840              # double 0.34327175465898918
	.quad	0x3fe228595ae0192f              # double 0.56742542027567378
	.quad	0x3fe27818ddd3edf3              # double 0.57716029477836484
	.quad	0x3fe0a930032c293e              # double 0.52065277690534351
	.quad	0x3fc1b14ce3e99500              # double 0.13822327736412632
	.quad	0x3febbd78a3c6fcf0              # double 0.86687881458047222
	.quad	0x3fe8537d3a9f7e7a              # double 0.76019154977616599
	.quad	0x3fda8efd06907600              # double 0.41497731820149397
	.quad	0x3fe558ae06d1ca9c              # double 0.66707516986783189
	.quad	0x3fe6305a15e4ef9d              # double 0.69340233112551497
	.quad	0x3fd2b9614e6a86ec              # double 0.29256470353912678
	.quad	0x3fee26fe150a6dba              # double 0.94225982770460992
	.quad	0x3fc07153738394a4              # double 0.12845843448954952
	.quad	0x3fb56e98b46363f0              # double 0.083718818702791741
	.quad	0x3fed9b860024fe3a              # double 0.92523479488585925
	.quad	0x3fe4eea4b7e0d3c1              # double 0.65413127816884054
	.quad	0x3fe68e74a40c1d29              # double 0.70488960304729631
	.quad	0x3fddc8140e91fe8a              # double 0.46533681319122222
	.quad	0x3fe30f27912419d7              # double 0.59559992168288545
	.quad	0x3fc8665d9f093d74              # double 0.19062395348963046
	.quad	0x3fe66f9f9e87df9b              # double 0.7011259170821974
	.quad	0x3fee2b84759ec199              # double 0.94281218502696895
	.quad	0x3fecf00b71143b15              # double 0.90430233083484046
	.quad	0x3fec2b84103c55a1              # double 0.88031199618369638
	.quad	0x3fe1d9aaace14d90              # double 0.55782064214365512
	.quad	0x3fe8c5f97e80b5c5              # double 0.77416681964467016
	.quad	0x3fcc575c980a7f24              # double 0.22141606735112263
	.quad	0x3fd83324245ffc74              # double 0.3781214099144059
	.quad	0x3fb691e556bbb470              # double 0.08816369407186797
	.quad	0x3fcabb8e2ad4752c              # double 0.20884873477272359
	.quad	0x3fe852896d0c0383              # double 0.76007529543140639
	.quad	0x3fd6ef6aa8e68194              # double 0.35836283201390384
	.quad	0x3fe9df4b2d92bb45              # double 0.80850752736100928
	.quad	0x3fe55376c82fb902              # double 0.66643847559842606
	.quad	0x3fec852782737345              # double 0.8912541911955506
	.quad	0x3fc57a4eb81943c0              # double 0.16779502858346795
	.quad	0x3fcd3d5805f4a95c              # double 0.22843456545644869
	.quad	0x3fb39162d603e8e0              # double 0.076437165498564053
	.quad	0x3fcd7f94c52f13a8              # double 0.23045596721763428
	.quad	0x3fb17d681fe8bae8              # double 0.068319804945285889
	.quad	0x3fed122d3d24b7b0              # double 0.90846883718562843
	.quad	0x3fcb1839dbb8c958              # double 0.211676819120451
	.quad	0x3fe101698e64a6e6              # double 0.53142240344206182
	.quad	0x3fe477370326e29c              # double 0.63955259910206363
	.quad	0x3fc3fab540eeaab0              # double 0.15608850164911336
	.quad	0x3fe401d6284d3dfd              # double 0.62522418853217199
	.quad	0x3fea8198e72a0f26              # double 0.82831998013759711
	.quad	0x3fde02b761dc7986              # double 0.46891579205284761
	.quad	0x3fc2ee6071b24cbc              # double 0.14789968062959769
	.quad	0x3fe8533a0c9bb56b              # double 0.76015951597734721
	.quad	0x3fa996809475ee70              # double 0.049976366160049746
	.quad	0x3fdd3023e1e002ac              # double 0.45606324251279307
	.quad	0x3fc04e4173b99e14              # double 0.12738817358625509
	.quad	0x3fcffbeefaee6228              # double 0.24987590076922683
	.quad	0x3fd266434c137866              # double 0.28749163083364804
	.quad	0x3fcf1678061c1174              # double 0.24287319467851953
	.quad	0x3fe31e3d0475d296              # double 0.59744120474950324
	.quad	0x3fabac182ab45b40              # double 0.054047351086572437
	.quad	0x3fe7ce75b9d3ad12              # double 0.74395262045200838
	.quad	0x3fcba8cd3859e5c4              # double 0.21608891726991264
	.quad	0x3fd1ff788ddf8682              # double 0.28121770720290595
	.quad	0x3fe167e4e382372d              # double 0.54393238482746187
	.quad	0x3fe79c123f2a353d              # double 0.7378016694725954
	.quad	0x3fd7b97faf6ebd8c              # double 0.37069694645011775
	.quad	0x3fee69ebfb45fe8e              # double 0.95042990757788615
	.quad	0x3fcc7a253c20677c              # double 0.22247758327358358
	.quad	0x3fc5fcd5d639ac5c              # double 0.17177842102259688
	.quad	0x3fcc9c77ee4bfcbc              # double 0.22352503905856291
	.quad	0x3fe7cd9186788061              # double 0.74384380592165311
	.quad	0x3fe990495d7002d0              # double 0.7988631081535349
	.quad	0x3fef4781232683ff              # double 0.97747856965372637
	.quad	0x3f527cc041b7da00              # double 0.0011283757693242302
	.quad	0x3fe50d20e4e967c9              # double 0.6578525992329044
	.quad	0x3fc3802fb9b144c8              # double 0.15234943930639688
	.quad	0x3fe887383f0556e8              # double 0.76650631245385359
	.quad	0x3fddf046c0f14cce              # double 0.46779030649231579
	.quad	0x3fed07598266cc81              # double 0.90714717358640951
	.quad	0x3fd886817065e812              # double 0.38320957161306624
	.quad	0x3fab1da00298e390              # double 0.052960396115344754
	.quad	0x3fe3822dbe404ea0              # double 0.60964095266759344
	.quad	0x3fd7ca27891d8bf8              # double 0.37171352758576814
	.quad	0x3fdb91fae6e3c130              # double 0.4307849173337841
	.quad	0x3fdf403a1e845340              # double 0.48829510669866139
	.quad	0x3facfc4dddbb7e80              # double 0.05661242801374744
	.quad	0x3fecf76552d210c0              # double 0.90519968200580792
	.quad	0x3fe14a462f2d4ec6              # double 0.5403166696000532
	.quad	0x3fe52b855b75c748              # double 0.66156261313720055
	.quad	0x3fd1a6d9d539ae22              # double 0.2758087713507128
	.quad	0x3fe37dc1bf9aae64              # double 0.60910117552471066
	.quad	0x3fda3b6e287fa6ec              # double 0.40987733797974957
	.quad	0x3fdb1318257563de              # double 0.42304042490064642
	.quad	0x3fe2928d08c5e07f              # double 0.58038951600521205
	.quad	0x3fd487286c660bf8              # double 0.32074938379099605
	.quad	0x3fe3eca66eb0bf28              # double 0.62263795489522966
	.quad	0x3fd50f28a44890e6              # double 0.3290502170878099
	.quad	0x3fe41847e43a020f              # double 0.6279639680433905
	.quad	0x3fce08bf0e281940              # double 0.23464191619150121
	.quad	0x3fb4e8ed1502e640              # double 0.081679170255392286
	.quad	0x3fe5f4c59c4be8b1              # double 0.6861293842951196
	.quad	0x3fe8756d411083e6              # double 0.76433432300484294
	.quad	0x3fec330ca10c471a              # double 0.88123160795859978
	.quad	0x3fd7f923161fd720              # double 0.37458111916144965
	.quad	0x3fc1403f2174c6dc              # double 0.13477315076447993
	.quad	0x3feb3b082c126b27              # double 0.85095604522516488
	.quad	0x3fbc3921e39a5748              # double 0.11024677092276847
	.quad	0x3fd84b8b06067bc0              # double 0.37961078251276703
	.quad	0x3fe50173c8bf09d5              # double 0.65642728050471055
	.quad	0x3fea21fdb6e3b00b              # double 0.81664930077158837
	.quad	0x3fc4f952e6e4250c              # double 0.16385875963195706
	.quad	0x3fe4603367d72769              # double 0.63674326211296972
	.quad	0x3fdb35c6f496d5ee              # double 0.42515729795135726
	.quad	0x3fe34a32b1913832              # double 0.60280737572771259
	.quad	0x3fe8c12b81908caa              # double 0.77358031564326279
	.quad	0x3fb1306cda4bdad0              # double 0.06714516000270554
	.quad	0x3fea499cd2ada313              # double 0.82148591182803654
	.quad	0x3fd68e49c28b9120              # double 0.35243457792809529
	.quad	0x3fd27d6fc49deade              # double 0.28890604210725523
	.quad	0x3fead2ffc17491df              # double 0.83825671943901259
	.quad	0x3fc0029386f4bb00              # double 0.12507862176558859
	.quad	0x3fba4f759e7d0938              # double 0.10277495498033751
	.quad	0x3fe5af92494bedb1              # double 0.67768205943814597
	.quad	0x3fc544359d82ed54              # double 0.16614408675182324
	.quad	0x3fe01f83befd5efd              # double 0.50384700110131997
	.quad	0x3fe2250c4005d914              # double 0.56702244286023751
	.quad	0x3fdb36e6d6cb1606              # double 0.425225934752547
	.quad	0x3fe82c556a5b1051              # double 0.75541182301140897
	.quad	0x3fca8f2f0a622b3c              # double 0.20749462134366492
	.quad	0x3fef1a667831077a              # double 0.97197268938928905
	.quad	0x3faacf33fc594dc0              # double 0.052362083963682249
	.quad	0x3fee55fc18911f35              # double 0.94799618528575158
	.quad	0x3fc77b59dd2bf650              # double 0.18345187472725621
	.quad	0x3fc9700026e99750              # double 0.19873048687002859
	.quad	0x3fdab476a7884ff4              # double 0.41726461754410527
	.quad	0x3fdb1e8f9db4a8b8              # double 0.42374029541918956
	.quad	0x3fb064a1a91ab428              # double 0.064035514626724521
	.quad	0x3fe5d09e83251b68              # double 0.68171620954750001
	.quad	0x3fe63fd66594d546              # double 0.69529266204941886
	.quad	0x3fe25b20508d17e0              # double 0.57362380726476303
	.quad	0x3fdbb50abd2ce55a              # double 0.43292492365033797
	.quad	0x3fba8997793e6df8              # double 0.10366198263221083
	.quad	0x3fe0d62edf7a99e3              # double 0.52614539764618617
	.quad	0x3fd53c6d2e6b64d8              # double 0.33181314023165731
	.quad	0x3fd744ba36694652              # double 0.36356978715511901
	.quad	0x3fe393bfe7147e37              # double 0.61178584225485266
	.quad	0x3fe71a8edd214141              # double 0.72199195088800405
	.quad	0x3fd2610f91547284              # double 0.28717412178392743
	.quad	0x3fdf7432b79299e2              # double 0.49146717001931794
	.quad	0x3fc2740b3788d6bc              # double 0.1441663762249642
	.quad	0x3fc7d367f65b6408              # double 0.18613910226011421
	.quad	0x3feff4423161c383              # double 0.99856671948337838
	.quad	0x3fc177a7694778d8              # double 0.13646404877267204
	.quad	0x3fd03b66e0fac3c4              # double 0.25362560244235177
	.quad	0x3fb0d7e87795e170              # double 0.065794495769187611
	.quad	0x3f98686d59ae3c80              # double 0.023835857962293705
	.quad	0x3fd29a2ac85e8144              # double 0.29065961425114417
	.quad	0x3fe35889a388cfd3              # double 0.60455781879727011
	.quad	0x3fe5d3302ad921f3              # double 0.68202980393203771
	.quad	0x3fea174d7e3113b5              # double 0.81534456869905247
	.quad	0x3fdcd81b4e5fc9a8              # double 0.45069010404327026
	.quad	0x3fa325f18ec65bc0              # double 0.03739886157853034
	.quad	0x3fc035dd474896bc              # double 0.12664381008760539
	.quad	0x3feaecda12a35ea1              # double 0.84141257896677157
	.quad	0x3fe2711fe12ac179              # double 0.57630914667065192
	.quad	0x3fef20acc0efef9d              # double 0.97273862536484367
	.quad	0x3fece9ea57256e21              # double 0.903554125029988
	.quad	0x3fe45a691141ee00              # double 0.63603642817128048
	.quad	0x3fd02829a8421af0              # double 0.25245133811442511
	.quad	0x3fece6f6c15e7005              # double 0.90319383399355557
	.quad	0x3fc9547d73ad327c              # double 0.19789093158978577
	.quad	0x3fe0c582fef12039              # double 0.52411031525935592
	.quad	0x3feb98a00dbf14c9              # double 0.86238100704999809
	.quad	0x3fbe714bc0be0518              # double 0.11891625838872633
	.quad	0x3fe21e5bd81e3232              # double 0.56620590410745408
	.quad	0x3fd528d564f692c4              # double 0.33061728343663455
	.quad	0x3fe4250c03f9526d              # double 0.62952233101039001
	.quad	0x3fe64ed97c4d4f89              # double 0.69712518956883784
	.quad	0x3fa03b14c19b4080              # double 0.031700752862549031
	.quad	0x3fe998eea78e1ef1              # double 0.79991848683945765
	.quad	0x3fefab9cbfb2f8a1              # double 0.9896987671015901
	.quad	0x3fbf55855b85ff00              # double 0.12239869579752494
	.quad	0x3fe3c7b6470a9635              # double 0.61812890887512728
	.quad	0x3fea64351b090737              # double 0.82473235397649247
	.quad	0x3feb4a777c4238e1              # double 0.85284017819665447
	.quad	0x3fe0b3ea6da9c255              # double 0.52196237009600088
	.quad	0x3fc51fb861721570              # double 0.16503052480781433
	.quad	0x3fec4c2f7935a05b              # double 0.88429998086668193
	.quad	0x3fec2d6e63a2b731              # double 0.88054580173568386
	.quad	0x3fec91e45e7214b7              # double 0.89280909010326226
	.quad	0x3fe9a50a03106976              # double 0.80139637564143018
	.quad	0x3fd46cad6b167d02              # double 0.31913314302251206
	.quad	0x3fe95ef7c1a9be99              # double 0.79284274887864392
	.quad	0x3fb164f56cd32268              # double 0.067946757381955103
	.quad	0x3feb213f2f571cda              # double 0.84780844923161713
	.quad	0x3fedfc1c60db9123              # double 0.93702525060192376
	.quad	0x3f9ad239c8d5cbc0              # double 0.026192572482113041
	.quad	0x3fd08b808ca430ee              # double 0.2585145352793593
	.quad	0x3fae1282a2dd7fd0              # double 0.058734972363481242
	.quad	0x3fea3edb9050f420              # double 0.82017305552256303
	.quad	0x3fe7393d62756efc              # double 0.72573727827281642
	.quad	0x3fd5e17929185228              # double 0.34188679707702585
	.quad	0x3fcef5e3fe33fb34              # double 0.24187898552187337
	.quad	0x3fcb879d224d6980              # double 0.21507610487863005
	.quad	0x3fe9c181f20d418c              # double 0.80487153316248472
	.quad	0x3fe5750f1dd02283              # double 0.67053943465096244
	.quad	0x3fe8abeb6c5377ca              # double 0.77098628194266294
	.quad	0x3fbb516e76cf5b80              # double 0.10671129608759422
	.quad	0x3fe99c78428458e7              # double 0.80035031310651739
	.quad	0x3fba240772f98090              # double 0.10211226040837773
	.quad	0x3fcfd5419cdac190              # double 0.24869556578552166
	.quad	0x3fe33568ce76dacd              # double 0.60026970219663556
	.quad	0x3fe9c9df94bc8472              # double 0.80589274454190574
	.quad	0x3fcc59900f646d9c              # double 0.22148323775841738
	.quad	0x3fdfb7554c670e6e              # double 0.49556477032840618
	.quad	0x3fef1bf3ed123b1f              # double 0.97216221144649128
	.quad	0x3fefea72a9c2a08b              # double 0.99736912876416405
	.quad	0x3fecd82f7e1527ba              # double 0.90138983369364856
	.quad	0x3fe1e78caeec6d83              # double 0.55951532521014291
	.quad	0x3fe32d0997430251              # double 0.59924773734389636
	.quad	0x3fea932f2a35a51c              # double 0.83046682590535025
	.quad	0x3fc84c414c974224              # double 0.18982712020671599
	.quad	0x3fe391732161fb32              # double 0.61150509376589057
	.quad	0x3fa49821bff6ee40              # double 0.040223173793006328
	.quad	0x3fe6ed3fdfcf4132              # double 0.71646112168131126
	.quad	0x3fe44a1094464f56              # double 0.63404110870258523
	.quad	0x3fe3fd0f1c9f77d1              # double 0.62464099493421987
	.quad	0x3fb9bc4ac24ba300              # double 0.10052935832539944
	.quad	0x3fc20e4168cc8e58              # double 0.14106004349842993
	.quad	0x3faf7c9428926780              # double 0.061497335388778218
	.quad	0x3fe644b7184c0bf3              # double 0.69588808770674715
	.quad	0x3f9d606d895b18c0              # double 0.028688155659232661
	.quad	0x3fefe619448d37f3              # double 0.99683822049132542
	.quad	0x3fd7d57c6a551e78              # double 0.37240515121491269
	.quad	0x3fe460d088693cbf              # double 0.6368181862143486
	.quad	0x3fe3e7710160e41b              # double 0.62200212735399718
	.quad	0x3fe49c98999683e9              # double 0.64411573407789746
	.quad	0x3fe4b532ce7b3d40              # double 0.64711895302199451
	.quad	0x3fbeccae7388fd38              # double 0.12031069107705583
	.quad	0x3fdee3cbca701b64              # double 0.48265356797531056
	.quad	0x3fd7de9e8b9c7948              # double 0.37296260484608412
	.quad	0x3fc8a135eac27ff4              # double 0.19241975748900553
	.quad	0x3fe8dcb4eced8970              # double 0.77694174075103994
	.quad	0x3fe46424a1f9fce0              # double 0.63722449909246492
	.quad	0x3fc36e66fc3598d4              # double 0.15180671038542093
	.quad	0x3fcd59ef81b482e4              # double 0.22930711587198183
	.quad	0x3fe0e6d522484457              # double 0.52817780204544362
	.quad	0x3fe76320127a6146              # double 0.73085025414460669
	.quad	0x3feeb6cc7bec6034              # double 0.95981430248048704
	.quad	0x3fe64a6d309ec3e6              # double 0.69658526893738038
	.quad	0x3fdf3789cd97473a              # double 0.4877647884105617
	.quad	0x3fe52e2bc11d19a5              # double 0.66188609807504817
	.quad	0x3fe2eed2d4f9cc36              # double 0.59165326687651176
	.quad	0x3fe0e6f252444cf1              # double 0.52819171970113932
	.quad	0x3fe3ccc0f7067fda              # double 0.61874435660501637
	.quad	0x3fb57f2025faf4d8              # double 0.083971032402547663
	.quad	0x3fa4bd2383641ce0              # double 0.040505513943623006
	.quad	0x3fe6ecf616b437a8              # double 0.71642593798036547
	.quad	0x3fc21c799f550d60              # double 0.14149399070638946
	.quad	0x3fe4615cd58c052c              # double 0.63688508709325253
	.quad	0x3feda124158b7c7a              # double 0.92592052658063939
	.quad	0x3fe05a791ccea834              # double 0.51104407907883465
	.quad	0x3fddc47755591c8a              # double 0.46511634192251761
	.quad	0x3fb6507a482b4960              # double 0.087165491694837893
	.quad	0x3fed67d209e48afc              # double 0.9189233964173975
	.quad	0x3fe46a3e1950bbec              # double 0.63796906418235499
	.quad	0x3fe4804ad4b794d9              # double 0.64066068216620942
	.quad	0x3fec9100aae73331              # double 0.89270051364437653
	.quad	0x3fea740c6c6dfea3              # double 0.82666608026189115
	.quad	0x3fc43ef5aa6bb978              # double 0.15817137547805848
	.quad	0x3fdce7bcfa145cfc              # double 0.45164417669134571
	.quad	0x3fa51d56b0b9c040              # double 0.041239461014697998
	.quad	0x3fdb29802e7fbe58              # double 0.42440800228994169
	.quad	0x3fe414dac45c8142              # double 0.62754572250199936
	.quad	0x3fee9198bcac62f4              # double 0.95527302599211205
	.quad	0x3fe765c3ea3a9f7a              # double 0.73117252109385267
	.quad	0x3fec125400586789              # double 0.87723732058951598
	.quad	0x3fe8f232171404e0              # double 0.77956490046940629
	.quad	0x3fc912030b7c92d8              # double 0.19586217938299089
	.quad	0x3fee6cb29ef5519e              # double 0.95076876684702305
	.quad	0x3fd882af58aaf16c              # double 0.38297637614211655
	.quad	0x3fe816c87568f9d7              # double 0.75278113299992355
	.quad	0x3feaaee322f45b85              # double 0.83384854151778198
	.quad	0x3fd67c107dd0f1a4              # double 0.35132229124772096
	.quad	0x3fd5d13129df778c              # double 0.34089306916381967
	.quad	0x3fcd266ba81b4500              # double 0.22773500164343119
	.quad	0x3fe4259b846a216d              # double 0.62959075796338271
	.quad	0x3fef13459b62a281              # double 0.97110252712907663
	.quad	0x3feda2c103d76cfe              # double 0.92611742735189728
	.quad	0x3fd62e773d0c1bf4              # double 0.34658604585314312
	.quad	0x3fce0c581a22d244              # double 0.23475171352551361
	.quad	0x3fdef07e861700f2              # double 0.48342860312187874
	.quad	0x3fe5b9af644c517b              # double 0.67891664113498906
	.quad	0x3fee831a63055d92              # double 0.95350379314452227
	.quad	0x3fb5fc20360a9108              # double 0.085878384774847771
	.quad	0x3fe3efe9dadb4bf8              # double 0.62303631539759774
	.quad	0x3fec588101f1e5f3              # double 0.88580370311609469
	.quad	0x3fe11753cc86c5fb              # double 0.53409757563184657
	.quad	0x3fef2390e765b571              # double 0.97309155649933931
	.quad	0x3fe873c480a9aab0              # double 0.76413178567357498
	.quad	0x3fd544c86e65fc24              # double 0.33232317715732251
	.quad	0x3fd0dba5886fa5f0              # double 0.26340616535034567
	.quad	0x3fb59e10da7b1ce8              # double 0.084443143215242267
	.quad	0x3fe94b0fafb85aba              # double 0.79041275329912897
	.quad	0x3fc6e38989681850              # double 0.17881888589198747
	.quad	0x3fd30745cf65803a              # double 0.29731889012873902
	.quad	0x3fdf10ee51e803de              # double 0.48540838240302076
	.quad	0x3feba11869e53aa1              # double 0.86341496164989817
	.quad	0x3fd2cb30025aadf6              # double 0.29365158300308225
	.quad	0x3fe7074f580361af              # double 0.71964232626037539
	.quad	0x3fe9e93e567cf5b5              # double 0.80972210781299359
	.quad	0x3fa91457c5754640              # double 0.048983328679821359
	.quad	0x3fd810546805190c              # double 0.37599668653673812
	.quad	0x3fd01bd08bd9d660              # double 0.25169767052952885
	.quad	0x3feafd2dc30adedf              # double 0.84340561002951719
	.quad	0x3fe467df551eb1f4              # double 0.63767973542195344
	.quad	0x3fedbd6f24175e4a              # double 0.9293742852123128
	.quad	0x3fdca432b08c770c              # double 0.447521850977737
	.quad	0x3f9ff5d1617a5160              # double 0.031211158346722612
	.quad	0x3fe022e0a27be367              # double 0.50425750479835763
	.quad	0x3fe9a093659f0e8c              # double 0.80085153434670663
	.quad	0x3fe27595db32f9a8              # double 0.57685368358925349
	.quad	0x3fe5718fea08a9aa              # double 0.67011256894811777
	.quad	0x3feab7502c050b5d              # double 0.83487709615324557
	.quad	0x3fe70aed5e55f1be              # double 0.72008388924546529
	.quad	0x3febfe58b47ad23a              # double 0.87479815721469056
	.quad	0x3fc512537988f1f8              # double 0.16462176737140033
	.quad	0x3fe801c34df2c460              # double 0.75021519874838915
	.quad	0x3fd5fa40126f66e8              # double 0.34339906502064688
	.quad	0x3fe4bfd50b2d0e95              # double 0.64841701681912645
	.quad	0x3fee99916533d3ea              # double 0.95624608770469632
	.quad	0x3fa594c7fe2b0060              # double 0.042150735641826698
	.quad	0x3fe62582b9e0d93c              # double 0.69207893661840769
	.quad	0x3fe47d9f1ccf37c1              # double 0.64033465983242632
	.quad	0x3fdce1daaceed056              # double 0.45128504646277656
	.quad	0x3fea10cf7b076159              # double 0.81455205945079989
	.quad	0x3fea38ce3ed33499              # double 0.81943428297531107
	.quad	0x3fc57ad6d9da58f0              # double 0.16781125676488484
	.quad	0x3feb3d0142438525              # double 0.85119688932551141
	.quad	0x3fe0609a9ea44dab              # double 0.51179247841576136
	.quad	0x3fe0361b1fb764eb              # double 0.50660473055463962
	.quad	0x3feff943bb431a9f              # double 0.99917780470498829
	.quad	0x3febe5a5ee9b5620              # double 0.87178322413337028
	.quad	0x3feedb70d332186c              # double 0.96428719758183722
	.quad	0x3fc45dc58eeb5ce4              # double 0.15911168554769184
	.quad	0x3facdb7acc1e0a70              # double 0.056361997048061663
	.quad	0x3fe93f92d0a837be              # double 0.78901043656673386
	.quad	0x3fe0933c09c949c8              # double 0.517972964395363
	.quad	0x3fb5046a63faccd8              # double 0.08209862652693134
	.quad	0x3fda9ab14192bdd2              # double 0.41569167522081074
	.quad	0x3fc19bb95f631390              # double 0.13756482274598314
	.quad	0x3fe8582d7dfda931              # double 0.76076387984838878
	.quad	0x3fed0e2def2f9546              # double 0.90798088756552242
	.quad	0x3fb4387f17982958              # double 0.078987067470881356
	.quad	0x3fcf7a045f3194d8              # double 0.24591116569641858
	.quad	0x3fe25bdb065ca8f3              # double 0.57371283762520731
	.quad	0x3fe6e5c60d54dce0              # double 0.71554854015166924
	.quad	0x3feed8e18549bc62              # double 0.96397472412889962
	.quad	0x3fe60c0627e7209e              # double 0.68896777909778328
	.quad	0x3fe5629fcbd41302              # double 0.66828908739316284
	.quad	0x3fd27ceff314009a              # double 0.28887556779955903
	.quad	0x3fe6a042374c1929              # double 0.70706282425161249
	.quad	0x3fe09d8211b61539              # double 0.51922706088286141
	.quad	0x3fbc872f053f83c0              # double 0.1114377391636614
	.quad	0x3fe96873e7ae0f7f              # double 0.79400058031067988
	.quad	0x3feb4ca84b8ab02a              # double 0.85310759310005335
	.quad	0x3fca9bb44da2c4c0              # double 0.20787671843348754
	.quad	0x3fc9d5a8f10fcdf4              # double 0.201832883554388
	.quad	0x3fd58996530b3936              # double 0.33652265653371971
	.quad	0x3fe5462986195155              # double 0.66481472197714686
	.quad	0x3fccd873f4843d54              # double 0.22535561980519481
	.quad	0x3fe6f87b6d87d45e              # double 0.71783229248707037
	.quad	0x3fe793c43985c611              # double 0.73678790316461307
	.quad	0x3fecd87837e3caa4              # double 0.90142451206186935
	.quad	0x3fec4789120cafbe              # double 0.8837323524980929
	.quad	0x3fee72b2a24e856f              # double 0.95150119495899144
	.quad	0x3fc5253961615cbc              # double 0.16519849066637515
	.quad	0x3fd1ae1bb3e0c32a              # double 0.2762517220135573
	.quad	0x3fcf008897263d64              # double 0.24220378284779109
	.quad	0x3fe64768a5070b2c              # double 0.69621689063965198
	.quad	0x3fd49374b57476ba              # double 0.32149999351700453
	.quad	0x3fe6599b418e29ca              # double 0.69843828967832988
	.quad	0x3feb9ac1fd415520              # double 0.8626413294211126
	.quad	0x3fc34957877a8a94              # double 0.15067571749849107
	.quad	0x3fcdcd3b49f01e6c              # double 0.23282567129375609
	.quad	0x3fdcc6894dd8f0fe              # double 0.44961769678390329
	.quad	0x3fcc2170f7617c18              # double 0.21977054671421636
	.quad	0x3fe9940d654e3424              # double 0.79932279382922333
	.quad	0x3fb49c63d66f8ac0              # double 0.080511321880787357
	.quad	0x3fca817f035fc1fc              # double 0.20707690872906415
	.quad	0x3fe341a9fe9f141f              # double 0.60176563006155337
	.quad	0x3fed637cf13078b6              # double 0.91839453799527493
	.quad	0x3fde1fb31a5626b6              # double 0.47068479129721241
	.quad	0x3fe9242c0e303928              # double 0.78566553851286347
	.quad	0x3fe38e223c16d96e              # double 0.61110030876333865
	.quad	0x3fe80ae6c74a18ab              # double 0.75133074687689339
	.quad	0x3fe7aae2634267f7              # double 0.73960990320779174
	.quad	0x3f6c6e1dd77fa400              # double 0.0034704764220703233
	.quad	0x3f97fe6574ad33a0              # double 0.023431382414219493
	.quad	0x3fecc4618338e05e              # double 0.89897227887469078
	.quad	0x3fdae7cc3ae97d30              # double 0.42039781335002413
	.quad	0x3fd89d456d0d2dd0              # double 0.3845990719753134
	.quad	0x3fe491817c974cdb              # double 0.64276193937476067
	.quad	0x3fe5c9e0c93e1885              # double 0.68089331917941875
	.quad	0x3fd4ab7532764540              # double 0.32296495368889921
	.quad	0x3fef0d0fa0b29931              # double 0.97034436594257134
	.quad	0x3fe26dda1cf67d18              # double 0.57590966851049341
	.quad	0x3fe537b87207986a              # double 0.66305181762141996
	.quad	0x3fdb08a16c3206be              # double 0.42240176740606816
	.quad	0x3fd18e1a8df2f0bc              # double 0.27429832327085157
	.quad	0x3fe2c5572322e3db              # double 0.5865894018417025
	.quad	0x3fa9ce589c3244b0              # double 0.050402421061457203
	.quad	0x3feda615ab4cbd07              # double 0.92652400452598804
	.quad	0x3fef3ee634997a6a              # double 0.97642812989563521
	.quad	0x3fe9f8307d3b4e55              # double 0.81154655894574523
	.quad	0x3fdd213dc8375198              # double 0.45515389015533847
	.quad	0x3fda7a8272458010              # double 0.41372738990139712
	.quad	0x3febe3c16329c547              # double 0.8715521752148242
	.quad	0x3fdbc2ed182447f8              # double 0.43377234799947884
	.quad	0x3fcb67b2e542c89c              # double 0.21410213655832855
	.quad	0x3fd2342a2d0c15ec              # double 0.2844338836588054
	.quad	0x3fd885e96864e9f6              # double 0.38317332453485109
	.quad	0x3feab57c2c6bfb5d              # double 0.83465393711217539
	.quad	0x3fe5dbc565c37986              # double 0.68307752490709173
	.quad	0x3fd54c6eb43ac202              # double 0.33279006577052439
	.quad	0x3f8a53b217e96e80              # double 0.012854949335795895
	.quad	0x3fdd6645143e8314              # double 0.45936705567332692
	.quad	0x3feb7f161818978e              # double 0.85926346498739448
	.quad	0x3fe3af3af2c51c8c              # double 0.6151404134369769
	.quad	0x3fe0a0f2be16d062              # double 0.51964699866085717
	.quad	0x3fdcd0d61a26bdf4              # double 0.45024635843125727
	.quad	0x3fee45bd0bf686e6              # double 0.94601299606821665
	.quad	0x3fb1d616a456be20              # double 0.069672980424677622
	.quad	0x3feef9cd3f7849cd              # double 0.9679933776517885
	.quad	0x3fc0c175511520ec              # double 0.13090387782199941
	.quad	0x3fe22b0aa9dc6bd9              # double 0.56775410819988814
	.quad	0x3febe232b311eece              # double 0.87136206602687039
	.quad	0x3fc7bcc31d683880              # double 0.18544806419271609
	.quad	0x3fd9d0015fbb71b8              # double 0.40332064007614177
	.quad	0x3fd35841ea79b618              # double 0.30226180932990721
	.quad	0x3fef55d049a8387f              # double 0.97922529588846873
	.quad	0x3fd3b3afef78b0fe              # double 0.30784223924526077
	.quad	0x3fc96d71b860277c              # double 0.19865247252192464
	.quad	0x3fdb40ebc806b0dc              # double 0.42583746465494499
	.quad	0x3fe7131bc3776526              # double 0.72108257462528935
	.quad	0x3fe830530118b383              # double 0.75589895452650102
	.quad	0x3fd36badd900459a              # double 0.30344721023092236
	.quad	0x3fddbe14729f02ee              # double 0.4647265548083358
	.quad	0x3fe1b0946264226b              # double 0.55280513016721267
	.quad	0x3fe431057bc36d9a              # double 0.63098406002557117
	.quad	0x3fd35f2151ec28b8              # double 0.30268128395313054
	.quad	0x3fd8b3620300c5e4              # double 0.38594866078628187
	.quad	0x3fd1418f047e5df2              # double 0.26962638319807219
	.quad	0x3fe70a9083f2c0f2              # double 0.72003961344856138
	.quad	0x3fd021ac9ddd35c0              # double 0.25205531517425683
	.quad	0x3fd7244c591d2ff4              # double 0.3615904684309037
	.quad	0x3fdf1babdb47b366              # double 0.48606392301626611
	.quad	0x3fdde4b2a74d7416              # double 0.46708360994472409
	.quad	0x3fe78b67e49ec231              # double 0.7357673135030095
	.quad	0x3fca7e929c255970              # double 0.20698769211112333
	.quad	0x3fe4cb702fa38a87              # double 0.64983376793345904
	.quad	0x3fea7dc80851a834              # double 0.827854171989435
	.quad	0x3fce9063c2ea20a4              # double 0.23878142373383071
	.quad	0x3faa4dfebea237c0              # double 0.051376305361471974
	.quad	0x3fa414543f9fc670              # double 0.039217598692528166
	.quad	0x3fda87b788d37a02              # double 0.4145335041229431
	.quad	0x3fee7b07a1dc36aa              # double 0.95251828778574077
	.quad	0x3fe4d9bdd1de3c2f              # double 0.65157977094520969
	.quad	0x3fd71e66dcd24a90              # double 0.36123057903856992
	.quad	0x3fe08bc37933c84f              # double 0.51706098244017962
	.quad	0x3fec23e93ad5f11e              # double 0.87938367358541192
	.quad	0x3fd82c27a9dda2bc              # double 0.37769500339940598
	.quad	0x3fee899bf57b5599              # double 0.95429799981745866
	.quad	0x3feece7a2c417d47              # double 0.96270474094118518
	.quad	0x3fec4e4d8fed4005              # double 0.88455846892065948
	.quad	0x3fd884daf4f54f96              # double 0.38310884401038814
	.quad	0x3fde9f69763e23a0              # double 0.47847973391668042
	.quad	0x3fe15a507a65d998              # double 0.54227470308142056
	.quad	0x3fc4a765683c8c8c              # double 0.16135852422403152
	.quad	0x3fe454e19cc6a31c              # double 0.63536148662851444
	.quad	0x3fe4e3a0ab01a0a9              # double 0.65278657340697521
	.quad	0x3fd4e50e6ee278ae              # double 0.3264804919107388
	.quad	0x3fe111bb27a99d7e              # double 0.53341443773835784
	.quad	0x3fd5b9ff2526515a              # double 0.33947733524225543
	.quad	0x3fea18e46e3cbe5f              # double 0.81553861170500486
	.quad	0x3fca50d132671664              # double 0.20559134446209548
	.quad	0x3fa9034bd34b91d0              # double 0.048853272955770799
	.quad	0x3fd7d27df15d7b5c              # double 0.37222240992371325
	.quad	0x3fe03aee3f341e41              # double 0.50719368309450641
	.quad	0x3fcd85295a63fac0              # double 0.23062626756287408
	.quad	0x3fe1d33f847a743c              # double 0.5570371234385969
	.quad	0x3fe4fb2d355ff5bb              # double 0.6556612055280121
	.quad	0x3fd49edc95dc6518              # double 0.32219614634375793
	.quad	0x3fbf335fda929088              # double 0.12187766157382118
	.quad	0x3fdea2d24f052682              # double 0.47868783680733185
	.quad	0x3fc0c866473df4a8              # double 0.13111570814718232
	.quad	0x3fe460f5f2f314c2              # double 0.63683602763253355
	.quad	0x3fd55613b806480c              # double 0.33337872477670838
	.quad	0x3fd72a59cf4976b2              # double 0.3619598888670722
	.quad	0x3fdef7906ae717c2              # double 0.48386011543004426
	.quad	0x3fc57f604c410914              # double 0.16794971202222853
	.quad	0x3fe7674e7b1d74cc              # double 0.73136066480551554
	.quad	0x3fd806234ea6c9b6              # double 0.37537462883770034
	.quad	0x3fe04a1ef2fae635              # double 0.50904796082540449
	.quad	0x3fd58f3e464c6fde              # double 0.33686787476631064
	.quad	0x3fe3fc4a86716a2a              # double 0.6245472551193576
	.quad	0x3fe9b2615b613394              # double 0.80302493903728811
	.quad	0x3fd16ff4c511894c              # double 0.27245826001139473
	.quad	0x3fe884225fde80e9              # double 0.76612967228359452
	.quad	0x3fe926c13d08b5e5              # double 0.78598081513126472
	.quad	0x3fd7eea060082f4c              # double 0.37393960359689937
	.quad	0x3feb12e5052af395              # double 0.8460564709599675
	.quad	0x3f8cbb8b84564900              # double 0.014029588676554017
	.quad	0x3fee0ac9e98fc75f              # double 0.93881698243624701
	.quad	0x3fec7dba3f1c5b8f              # double 0.89034759832689925
	.quad	0x3f95daef582f6200              # double 0.021342983014479344
	.quad	0x3fe3a2e8b44417d2              # double 0.61363635261727212
	.quad	0x3fce0ff723d99730              # double 0.23486222506033405
	.quad	0x3fd09a7156b3c9dc              # double 0.25942643610974669
	.quad	0x3fa4aea3289e2e70              # double 0.040394877155532138
	.quad	0x3fc399fa8d98a820              # double 0.1531365577114352
	.quad	0x3fe0127163a1974b              # double 0.50225133380147591
	.quad	0x3fc044ef09035ef0              # double 0.12710369052978576
	.quad	0x3fc9b23fb6b395dc              # double 0.20075222416850991
	.quad	0x3fe60c067e61a6ce              # double 0.68896794017674678
	.quad	0x3fe920cf4bfeafe5              # double 0.7852550968432267
	.quad	0x3fdeb0de218b653e              # double 0.4795451476653233
	.quad	0x3fd2607e95e55254              # double 0.28713955534229751
	.quad	0x3fe4f7b00cc89e19              # double 0.65523531433877047
	.quad	0x3fcd8cc33d483f80              # double 0.23085823528571936
	.quad	0x3fe7a62986ec4b3c              # double 0.73903347351220061
	.quad	0x3fabc5f3961109b0              # double 0.054244625157042647
	.quad	0x3fef1fd658e75033              # double 0.9726363884351542
	.quad	0x3fd971a953872d0a              # double 0.39756234318765904
	.quad	0x3fc0d6804bf61ab0              # double 0.13154605588007007
	.quad	0x3fd1c9cabf4bf370              # double 0.27794140511814813
	.quad	0x3fe3130077827198              # double 0.59606955854137578
	.quad	0x3fd572b57408c0ae              # double 0.33512626964057801
	.quad	0x3fea8542c2c8f291              # double 0.82876718563018603
	.quad	0x3fe48d472e6b207f              # double 0.64224585596186035
	.quad	0x3fe2bf2418cb034f              # double 0.58583264200579233
	.quad	0x3fba1d13f108e198              # double 0.10200619349132578
	.quad	0x3feb94d392e919aa              # double 0.86191729253260019
	.quad	0x3fe44c48de5d12db              # double 0.63431209020981372
	.quad	0x3fe3428adf6bbca6              # double 0.60187286030658949
	.quad	0x3f96d3f75022de40              # double 0.022292961374402731
	.quad	0x3fe4337c8bc418e8              # double 0.6312849740795885
	.quad	0x3fedcd5d78e8b4dd              # double 0.93131898512879341
	.quad	0x3febbf60b8b3eb05              # double 0.86711155009047103
	.quad	0x3fdf55b78399edd4              # double 0.48960674144447336
	.quad	0x3fe2b94b1d906961              # double 0.58511882566680751
	.quad	0x3fe980aa8a12368e              # double 0.7969563194944429
	.quad	0x3fefe19e55a08176              # double 0.9962913200761665
	.quad	0x3fe7425f2f4321de              # double 0.72685202818780303
	.quad	0x3fe50ac6f7738e63              # double 0.65756557779645808
	.quad	0x3fdfa5711480db64              # double 0.49447276117591898
	.quad	0x3fd23974df526eda              # double 0.28475686844624948
	.quad	0x3fef1bd8b69b66b5              # double 0.97214923539578157
	.quad	0x3fe1024db9874f8b              # double 0.53153120266004927
	.quad	0x3fe57f6335c34eed              # double 0.67180023670740996
	.quad	0x3fe5bc1aa73556e7              # double 0.67921192796594887
	.quad	0x3fdbb0f2c3510c32              # double 0.43267506669889422
	.quad	0x3fde59a7d4759ada              # double 0.47422214267718987
	.quad	0x3fdcd363d85faa28              # double 0.45040222292178322
	.quad	0x3fe9956fe6fcf71d              # double 0.79949183573600957
	.quad	0x3fe298bb2fb98b6c              # double 0.58114394494292076
	.quad	0x3fba5f91b0aeecb0              # double 0.10302076877171618
	.quad	0x3fe52e48cd036dec              # double 0.66189994851759826
	.quad	0x3fdf47ea060873a4              # double 0.4887642916599424
	.quad	0x3fae268a3326c9e0              # double 0.058887785667497416
	.quad	0x3fca322b2c4334d0              # double 0.20465602551704487
	.quad	0x3fa3a16f9c693e00              # double 0.038341033785965095
	.quad	0x3f82111bf76bf440              # double 0.0088216957933530126
	.quad	0x3fe355c4b7952202              # double 0.60421977859465437
	.quad	0x3fe0f4a16ea2e0d6              # double 0.52986213310853247
	.quad	0x3feb82a843458231              # double 0.85969937457054446
	.quad	0x3fe1cb3a4b94cb75              # double 0.5560580707736863
	.quad	0x3fe677ed46258ab2              # double 0.70213950825230698
	.quad	0x3fd5b3fb7ec86680              # double 0.33911025410780127
	.quad	0x3fd368413a35fc76              # double 0.30323820767075149
	.quad	0x3fd9175d3b7ae548              # double 0.39205103691673004
	.quad	0x3feda49bd1797636              # double 0.9263438311861083
	.quad	0x3fc11e11e35c21ac              # double 0.13373015977437086
	.quad	0x3fef9ec6569aecc1              # double 0.98813168444703347
	.quad	0x3fdee49b4f4a6734              # double 0.48270304434992117
	.quad	0x3fdc7db1c2682dc4              # double 0.44517177567533062
	.quad	0x3f8edc546ecf5ec0              # double 0.015068683272985495
	.quad	0x3fe53c5dba5f2053              # double 0.66361891174984533
	.quad	0x3fe530c9db8edf3e              # double 0.66220562822761742
	.quad	0x3fb43629ae639068              # double 0.078951459002895796
	.quad	0x3feff76768b029db              # double 0.99895067641164858
	.quad	0x3feb9cc9695120b8              # double 0.86288900918682199
	.quad	0x3fcba788f96c38d4              # double 0.21605026415676909
	.quad	0x3fed6d53b6619230              # double 0.91959558125797081
	.quad	0x3fe6d97012251113              # double 0.71404269737152715
	.quad	0x3fd034c7a39e683c              # double 0.25322142580410278
	.quad	0x3fd50895edbedfc2              # double 0.32864902703613208
	.quad	0x3fe649814955b590              # double 0.69647278140262081
	.quad	0x3fc50276e5141af0              # double 0.16413770852542298
	.quad	0x3fe0e0232599140d              # double 0.52736050933219902
	.quad	0x3fcf9b7794299d1c              # double 0.24693197950839696
	.quad	0x3fe6127f7f2cba84              # double 0.68975806082546898
	.quad	0x3fe75c396a438ecc              # double 0.73000784639995109
	.quad	0x3fcef53c72ab0b8c              # double 0.24185901259451403
	.quad	0x3fe7f2fa42f5c335              # double 0.74841034963728836
	.quad	0x3feae6a5a3b744ef              # double 0.84065515495072229
	.quad	0x3fe1432602ed5e0f              # double 0.53944683620187728
	.quad	0x3fe7e7327a1f4518              # double 0.74697231151563681
	.quad	0x3fb63fd91b760d38              # double 0.086911744312648476
	.quad	0x3fc61d75bc13963c              # double 0.17277404483245273
	.quad	0x3fbc68a4b56eec78              # double 0.11097173146747419
	.quad	0x3fe474d55793173a              # double 0.63926188568505116
	.quad	0x3fe92677abb8cfbc              # double 0.78594573535382705
	.quad	0x3fb4bd19d5cb4a50              # double 0.081010451026750418
	.quad	0x3fd7bd2d80d77eac              # double 0.37092149336056468
	.quad	0x3fc73c7fe92b3d50              # double 0.18153380284500509
	.quad	0x3fdf47ce2eeeecda              # double 0.48875765403108817
	.quad	0x3fe93e56fd1d8faa              # double 0.78885983883491417
	.quad	0x3fd69e786758d9b4              # double 0.35342226116645326
	.quad	0x3fe039e0d0677ed9              # double 0.5070652075191574
	.quad	0x3fb943fe4a42dd18              # double 0.098693745737240213
	.quad	0x3fda3b23e26f0d66              # double 0.40985962975192647
	.quad	0x3fe092eb596b1435              # double 0.5179344889116978
	.quad	0x3fd4f138810b1410              # double 0.32722294427759469
	.quad	0x3fe08e5c8df09211              # double 0.51737811777690201
	.quad	0x3fe88e48cc584200              # double 0.76736869727216117
	.quad	0x3feecc46700eebcc              # double 0.96243593107589608
	.quad	0x3fd181763ae4e35a              # double 0.27352672339798334
	.quad	0x3fdb885f313a1626              # double 0.43019847686113832
	.quad	0x3fd690376d244ccc              # double 0.35255227716806981
	.quad	0x3fe5e175dd7c60c0              # double 0.68377202280955629
	.quad	0x3fe9cb9a38617d2e              # double 0.80610381137731735
	.quad	0x3fb9d93cc096c748              # double 0.1009710283458648
	.quad	0x3fd20acce9501b02              # double 0.28190920624221871
	.quad	0x3fddb7974cc9411e              # double 0.46433050631186912
	.quad	0x3fe9c59a029d2d90              # double 0.80537128935377389
	.quad	0x3fdfcc8636e38042              # double 0.49685817108366248
	.quad	0x3fe003286b6b0adc              # double 0.5003854845056952
	.quad	0x3fd5c6a22888cc88              # double 0.34024862249788912
	.quad	0x3fc15b84934438d4              # double 0.1356054038119
	.quad	0x3fe35d1e56412043              # double 0.60511700483858311
	.quad	0x3fef1bdebe0ebbde              # double 0.97215211029640236
	.quad	0x3fdb83eb58cde674              # double 0.42992671654028602
	.quad	0x3fed8c0e9e7674e3              # double 0.92334681463003354
	.quad	0x3fe633950187dd6c              # double 0.69379663752526488
	.quad	0x3fbdfcc52d6df9b0              # double 0.11713821753617171
	.quad	0x3fe462913d67a404              # double 0.63703214638837879
	.quad	0x3fd6d02e522b655a              # double 0.35645635628096317
	.quad	0x3fc1c552490ea59c              # double 0.13883427207228471
	.quad	0x3feb020e477b9794              # double 0.84400094949227133
	.quad	0x3fe1d773d220c644              # double 0.55755034485464039
	.quad	0x3fe28c162198ce5d              # double 0.57960039674658115
	.quad	0x3fe3e4d669ef5319              # double 0.62168427172091179
	.quad	0x3fec969890b176ab              # double 0.89338329563516561
	.quad	0x3fee4e15739d4520              # double 0.94703171330380442
	.quad	0x3fd6453d3f7af0ee              # double 0.34797602843515463
	.quad	0x3fd562c3bb229daa              # double 0.33415311121867808
	.quad	0x3fb3c6011f16e430              # double 0.077240057077589296
	.quad	0x3fdce72d37e62bf0              # double 0.45160990198991069
	.quad	0x3fe70baf90514e59              # double 0.72017648875266638
	.quad	0x3fc751504960e2bc              # double 0.18216899474079706
	.quad	0x3fec5adc577b9a11              # double 0.88609139524925429
	.quad	0x3fe720b272ccb040              # double 0.72274134084501185
	.quad	0x3fe764b88ec5c5c8              # double 0.7310450352217055
	.quad	0x3fe49494a09e620b              # double 0.64313727732502579
	.quad	0x3fc6c4a7cd46e9b8              # double 0.17787644885340881
	.quad	0x3fbc37591d54d258              # double 0.11021954504105602
	.quad	0x3fe799e10d11cda9              # double 0.73753407051701914
	.quad	0x3fd5abd44ea60f18              # double 0.33861262970479933
	.quad	0x3feaaca04c7961d5              # double 0.83357253013951527
	.quad	0x3fe809af3aa832ee              # double 0.75118218857241259
	.quad	0x3fe703943415b354              # double 0.71918687985235374
	.quad	0x3fda382532ea5f9a              # double 0.40967683765620111
	.quad	0x3fdb5c56943f155e              # double 0.42751087643804009
	.quad	0x3fd232dfa6b4854a              # double 0.28435508041191737
	.quad	0x3feb20ad08fc1007              # double 0.84773875956352718
	.quad	0x3fef00a038345c68              # double 0.96882639863441699
	.quad	0x3fd39a2f39be4d16              # double 0.30628567351341596
	.quad	0x3fe3a99ae0f648f7              # double 0.61445373475933607
	.quad	0x3fee9c0292f29abb              # double 0.95654419613568764
	.quad	0x3fcd35ec3b352fbc              # double 0.22820809260372055
	.quad	0x3fed8355782b2694              # double 0.9222819659273278
	.quad	0x3fc826154f4b4540              # double 0.18866220828798852
	.quad	0x3fb20fc30ebbafb8              # double 0.0705530081719975
	.quad	0x3fd9a969ec5e24f6              # double 0.40096519549167853
	.quad	0x3fe81d4156462b2c              # double 0.75357119417581008
	.quad	0x3fee72f367aae583              # double 0.95153208015032964
	.quad	0x3fe5aa16bf4c68c9              # double 0.67701279986365492
	.quad	0x3fcccae1c0d0a300              # double 0.22494146265787407
	.quad	0x3f9fb5167cd4cc20              # double 0.030964232796758862
	.quad	0x3fe723f86eef2911              # double 0.72314092318382184
	.quad	0x3fef7f4f802c3f75              # double 0.98429083856352284
	.quad	0x3fad9b4f2d932610              # double 0.057825540841417333
	.quad	0x3fe3af698a335109              # double 0.61516263000751892
	.quad	0x3f8b28a860e5a6c0              # double 0.013261142212928845
	.quad	0x3fef981fd143c72c              # double 0.98731985923789045
	.quad	0x3fdcad55819c0320              # double 0.44807946831865486
	.quad	0x3fe50653eb5c91b2              # double 0.65702243775426994
	.quad	0x3fd16b40de2f2f3e              # double 0.27217122743308042
	.quad	0x3fbab15b0ea4c9a0              # double 0.10426873309623952
	.quad	0x3fc281344839ecb4              # double 0.1445680000941586
	.quad	0x3fdd307e36a41ce2              # double 0.4560847791294248
	.quad	0x3fed026adc926929              # double 0.90654509621098101
	.quad	0x3fe6c54e88d2baa3              # double 0.71158529971383577
	.quad	0x3fd1c10eb6a560c6              # double 0.27740829311870774
	.quad	0x3fe591a889f92a97              # double 0.67403056095038749
	.quad	0x3fd84f1678cec05a              # double 0.3798271350633563
	.quad	0x3fef9715ec14b75f              # double 0.98719307050280835
	.quad	0x3fd2d1fb4a887cbc              # double 0.29406626013401271
	.quad	0x3fe6c1a130f6f1e1              # double 0.71113643229869805
	.quad	0x3fecfc11dce7c7d8              # double 0.90577023645004839
	.quad	0x3fe85755484c7549              # double 0.76066078301270423
	.quad	0x3fbf7f3517dfe5a8              # double 0.12303478081584862
	.quad	0x3fd1ce4987e2eede              # double 0.2782157732978997
	.quad	0x3fef5b642a0d4cd0              # double 0.97990616048118717
	.quad	0x3fdc1127f1982f08              # double 0.43854712098321658
	.quad	0x3fb8c188332a3ca0              # double 0.09670306443352894
	.quad	0x3fdf7e4bac285bfe              # double 0.49208347141524189
	.quad	0x3fd87df7813f04e6              # double 0.38268840429016249
	.quad	0x3fed18a646597293              # double 0.90925897350423879
	.quad	0x3f6a026936243a00              # double 0.0031749777709884075
	.quad	0x3fde6ce60b83dafa              # double 0.47539664387242875
	.quad	0x3feef722aa9123df              # double 0.96766789735658764
	.quad	0x3fdcccf536a09168              # double 0.45000963530244187
	.quad	0x3fe0df6c6620e60d              # double 0.52727336832976024
	.quad	0x3fe79280b8399603              # double 0.73663364392695063
	.quad	0x3fe0f961e4c66505              # double 0.53044218714345048
	.quad	0x3fec3bef12c9dc61              # double 0.88231614751465426
	.quad	0x3fcc79eccedcf114              # double 0.2224708566735748
	.quad	0x3fe5a19dc627193b              # double 0.67597855283455688
	.quad	0x3fdf9e4710923164              # double 0.49403549783962419
	.quad	0x3fc9334044cd1498              # double 0.19687655791691294
	.quad	0x3fd186c3bd1dca6a              # double 0.27385037868876927
	.quad	0x3fdbea9103031074              # double 0.4361918000615852
	.quad	0x3fec1d1ab1f5cea8              # double 0.87855276830528783
	.quad	0x3fe6df6327a6480d              # double 0.7147689604191797
	.quad	0x3fe4a1acdb3f0779              # double 0.64473574468159633
	.quad	0x3fdcc3e284f52070              # double 0.44945586189397257
	.quad	0x3feaf01e7afee8df              # double 0.84181140921216613
	.quad	0x3fdc6d657144be6e              # double 0.44417701779727892
	.quad	0x3fecf3c214653876              # double 0.90475563033557083
	.quad	0x3fda9f0087ff3132              # double 0.41595471650068128
	.quad	0x3fed744d2abd3c6f              # double 0.92044695231915152
	.quad	0x3f316b0a3a4b0000              # double 2.6577949237704956E-4
	.quad	0x3fc386dbb7377f04              # double 0.15255304762012412
	.quad	0x3fefb5c90e3e31f1              # double 0.9909405973608597
	.quad	0x3fcb3f652aaca564              # double 0.21287216743193504
	.quad	0x3fefe1a83878ce0e              # double 0.99629603414217782
	.quad	0x3fcdc6f1032df740              # double 0.23263371138812694
	.quad	0x3fe633bb4ecdff61              # double 0.69381490127123524
	.quad	0x3fd52bb3b77e875a              # double 0.33079235953674913
	.quad	0x3fe9416774fe4bc5              # double 0.78923390245687897
	.quad	0x3fe9f3de869fc239              # double 0.81101919454346849
	.quad	0x3fe109170fc07b3a              # double 0.53235962940730208
	.quad	0x3fe9f2873636ecb8              # double 0.81085548962382514
	.quad	0x3fd98ae1f3419ee2              # double 0.39910172229290997
	.quad	0x3febbd1511c6572f              # double 0.86683133575090732
	.quad	0x3fee661f5a7b9fd7              # double 0.94996612236445344
	.quad	0x3fead90a44aa4bdb              # double 0.83899415408302092
	.quad	0x3fecf0b145abdf8a              # double 0.90438140495005936
	.quad	0x3feefeb59d10a80c              # double 0.96859245945711469
	.quad	0x3fd5cc3ef8924e30              # double 0.34059118532715882
	.quad	0x3fdf2c4be9597570              # double 0.4870786455920415
	.quad	0x3fd248d89d89003c              # double 0.28569617637913658
	.quad	0x3fc58f1bfeaae0f0              # double 0.16842985091148632
	.quad	0x3feaf00066eb13e8              # double 0.84179706670022103
	.quad	0x3fd0931aa7ab9db6              # double 0.25897852300701218
	.quad	0x3fb631b34bdefc18              # double 0.08669586756057901
	.quad	0x3fe039cacf64878f              # double 0.50705471521745149
	.quad	0x3feffa12808fc51a              # double 0.99927640065849066
	.quad	0x3f7cba6227652a00              # double 0.0070136865745760169
	.quad	0x3fa204a626ff2dd0              # double 0.035191719303465541
	.quad	0x3febfeb35931195d              # double 0.87484137935897943
	.quad	0x3fe62d48e70ffce8              # double 0.69302792672524749
	.quad	0x3feff7ed30fbba2b              # double 0.99901446883251787
	.quad	0x3fdccd1ae2f98b7a              # double 0.45001861730104731
	.quad	0x3fece80afbc1d524              # double 0.90332554980583212
	.quad	0x3fc2716010dfa078              # double 0.14408493827727731
	.quad	0x3fd0ff3a32f63ec4              # double 0.26557784058330136
	.quad	0x3fed8d8364a9822c              # double 0.92352456722807607
	.quad	0x3fd0da74ddfa5824              # double 0.26333352735071203
	.quad	0x3fe2ef13ca33726e              # double 0.59168424122215213
	.quad	0x3fc0e5033347d798              # double 0.13198890689789944
	.quad	0x3f940f79ed50eb40              # double 0.019590287313103305
	.quad	0x3fca252876c758a0              # double 0.20425897407284754
	.quad	0x3fe1c41a96ffdd1d              # double 0.55518846027453927
	.quad	0x3feec14ef6449de5              # double 0.9610972223207993
	.quad	0x3fd2d275fffa8956              # double 0.29409551618495777
	.quad	0x3fe14bdd13a34123              # double 0.54051069102755311
	.quad	0x3fe78e66b90a827c              # double 0.73613296643095749
	.quad	0x3fcf0149a9abb0bc              # double 0.24222679886532272
	.quad	0x3feaafd1c3bdda27              # double 0.8339623282507248
	.quad	0x3fefac7dac12eefd              # double 0.98980601890750075
	.quad	0x3fe2e7018c150d3b              # double 0.59069897994815024
	.quad	0x3fea4d580fb26c5f              # double 0.82194140497029966
	.quad	0x3fdf2ddc350fd784              # double 0.48717408353638114
	.quad	0x3f886a7e50ee8540              # double 0.011921870083656416
	.quad	0x3fdb445a30531454              # double 0.42604689330284384
	.quad	0x3fe8a12aff998f59              # double 0.76967382356495329
	.quad	0x3fe96978200771bd              # double 0.79412466293029349
	.quad	0x3feb8321bda56e5a              # double 0.85975729980732329
	.quad	0x3fc9e4c22999661c              # double 0.20229365378581654
	.quad	0x3fc67cb081b48d34              # double 0.1756802209211884
	.quad	0x3fcc82aea038a6e8              # double 0.22273810218148715
	.quad	0x3fc1cad6c5f2a28c              # double 0.13900265374583787
	.quad	0x3fe8841c7141f578              # double 0.76612684364924544
	.quad	0x3fe2ef1b1ef8833e              # double 0.59168773697829358
	.quad	0x3fd18e44ea260b12              # double 0.27430842271876188
	.quad	0x3fd7ab1bfb329dc4              # double 0.3698186829664929
	.quad	0x3feebd00e3f0c8f0              # double 0.96057171363488969
	.quad	0x3fe46f5c7fe90bc5              # double 0.63859391195762127
	.quad	0x3feb5d698f48b538              # double 0.85515287385138716
	.quad	0x3fc2e64b74d61f58              # double 0.14765303807166208
	.quad	0x3fe42f473e3fb2c0              # double 0.63077127607319738
	.quad	0x3fde507f4f7a1126              # double 0.4736631656781064
	.quad	0x3fecc3950dcb234e              # double 0.89887478536648202
	.quad	0x3fec6bffc838e848              # double 0.8881834898559271
	.quad	0x3fd4d06bc3158196              # double 0.325221004974105
	.quad	0x3fc336ec12b286c0              # double 0.15011359131772473
	.quad	0x3fe90bc998c13212              # double 0.78268890223404441
	.quad	0x3fe53573b88747b5              # double 0.66277490654669313
	.quad	0x3fce4f742d3f0688              # double 0.23679973801886356
	.quad	0x3fe920190d7f6666              # double 0.78516819607029897
	.quad	0x3f89a546f0518300              # double 0.012522272309241966
	.quad	0x3fe6c89dba864829              # double 0.71198927336286488
	.quad	0x3fded747f615fd96              # double 0.48188971549822079
	.quad	0x3fe9b18a032c0160              # double 0.80292225474844869
	.quad	0x3feae06a932d8dd4              # double 0.83989456887905555
	.quad	0x3feea966317fd8c6              # double 0.95817861240245672
	.quad	0x3fe7f16898f0dfad              # double 0.74821882125160288
	.quad	0x3fb9e4b3349aa480              # double 0.10114593538550487
	.quad	0x3fb1899e29457de0              # double 0.068506131244695734
	.quad	0x3fe9981d37ebd5eb              # double 0.79981861993900105
	.quad	0x3fddcf5e4c1f6680              # double 0.46578175958493517
	.quad	0x3fd34dddd6e14f04              # double 0.30162759765993052
	.quad	0x3fc97fd63fa60b00              # double 0.19921377284853037
	.quad	0x3fe964a9ebffe00c              # double 0.79353805631308338
	.quad	0x3fc70dfa1c9d11a0              # double 0.18011404416223531
	.quad	0x3fef19b04af6c0b5              # double 0.97188582078344742
	.quad	0x3fdfa03b9f707504              # double 0.49415484018557287
	.quad	0x3fa7b48475309a20              # double 0.046299113564874483
	.quad	0x3fed1b1091b7c755              # double 0.90955379925274349
	.quad	0x3fda067b40776a1e              # double 0.40664559646180176
	.quad	0x3febcad069c81ac5              # double 0.86850758228759928
	.quad	0x3fca0f7e321ad224              # double 0.20359780737420963
	.quad	0x3fe8f13cbb2ffa43              # double 0.77944790420571797
	.quad	0x3fe9faea156cb523              # double 0.8118791979265193
	.quad	0x3fe30a857d4702bf              # double 0.59503435581435571
	.quad	0x3fe34e7305c84251              # double 0.60332633141849545
	.quad	0x3fb43e66bbc3fb90              # double 0.079077168313217649
	.quad	0x3fdd41dd00114ab8              # double 0.4571449757251389
	.quad	0x3fe4516984f9009d              # double 0.6349380108950019
	.quad	0x3fe9950284acc687              # double 0.7994396773630833
	.quad	0x3fe2bb3305cc7c23              # double 0.58535147793361764
	.quad	0x3fd02a0101dcd1e6              # double 0.25256371671573985
	.quad	0x3fe7d7fdcedbe57e              # double 0.74511614229338341
	.quad	0x3fee76f9ccc51b10              # double 0.95202341074113583
	.quad	0x3fd0696cfd093ae8              # double 0.25643467627098326
	.quad	0x3fef97e720ffe344              # double 0.98729282803751816
	.quad	0x3fbb2649a5b69118              # double 0.10605297370654332
	.quad	0x3fee88062aa41d16              # double 0.95410450294812921
	.quad	0x3febe8d128c161b9              # double 0.87217004737890769
	.quad	0x3fd0e27a5d0e51c2              # double 0.26382311904424338
	.quad	0x3fe3d77c46a63469              # double 0.62005437658957618
	.quad	0x3fde2e2965f6d8a4              # double 0.47156748731084464
	.quad	0x3fe4737244fd5a3c              # double 0.6390925738767872
	.quad	0x3fea713d9a6014b2              # double 0.8263233199255835
	.quad	0x3fef1708380b1e6c              # double 0.97156153627379415
	.quad	0x3fe66a4b98695551              # double 0.70047549980032831
	.quad	0x3faf1386cd52b110              # double 0.060695850910038485
	.quad	0x3fec2d1cd8a34b43              # double 0.88050691902240208
	.quad	0x3fedb717df001cf6              # double 0.92860024981283007
	.quad	0x3fe697bd2a11914a              # double 0.7060228177693173
	.quad	0x3fef0f58aeefde78              # double 0.97062334220295465
	.quad	0x3fe7ebc894d416ce              # double 0.74753216808377387
	.quad	0x3fe593466c39aac5              # double 0.67422791612383348
	.quad	0x3fcdf9bfe837fbac              # double 0.23418425406268051
	.quad	0x3fe3d32b875b36bf              # double 0.619527592056066
	.quad	0x3fe14eefbdcd9386              # double 0.54088580199150793
	.quad	0x3fe66f408f8bb0f0              # double 0.70108058964026831
	.quad	0x3fc047a409d00228              # double 0.12718630293967803
	.quad	0x3fe5a3eb64c2bc18              # double 0.67625970535107438
	.quad	0x3fc059a172aa2638              # double 0.12773531054362919
	.quad	0x3fdca43070cea1ee              # double 0.44752131477665003
	.quad	0x3fe39a837b8e70a6              # double 0.61261152393446561
	.quad	0x3fe1c256c5ff4fcc              # double 0.55497301741933702
	.quad	0x3fea9d5dc481c267              # double 0.83170975094078592
	.quad	0x3fdd5b12a590a038              # double 0.45868364494754443
	.quad	0x3fe2b1da76944fb6              # double 0.58421061668422314
	.quad	0x3fb60a2a2e0bcdf0              # double 0.086092602006651253
	.quad	0x3fe6e01949364783              # double 0.71485580729698517
	.quad	0x3fef33afabe9bb70              # double 0.97505935265313148
	.quad	0x3fed0e338bfabcf2              # double 0.90798356380210365
	.quad	0x3fda38eae057128e              # double 0.40972396763053431
	.quad	0x3fd195d7287f67da              # double 0.27477053599215895
	.quad	0x3fc01f24bbeba490              # double 0.12595042396359135
	.quad	0x3fbcc00caaa07fc8              # double 0.11230544248291985
	.quad	0x3fdd2caa7686722a              # double 0.4558511884186226
	.quad	0x3fc86fa12e919c60              # double 0.19090666555277647
	.quad	0x3fdcb07d1eb7fd8c              # double 0.44827201843141817
	.quad	0x3fd4433a933b1094              # double 0.3166033208656327
	.quad	0x3fdca109fd19336e              # double 0.44732904163975362
	.quad	0x3fbd76325d8a9e68              # double 0.11508478912093667
	.quad	0x3fe250fff7d0ac8f              # double 0.57238768006699725
	.quad	0x3fb559ed259f2d70              # double 0.083403417286879166
	.quad	0x3fe70cd8207a912c              # double 0.72031790107260951
	.quad	0x3feb46b3f138d102              # double 0.85238072503719331
	.quad	0x3fef252a081514a2              # double 0.97328664377768725
	.quad	0x3fd0afad88e93dfe              # double 0.26072252626633474
	.quad	0x3fc6828966573714              # double 0.17585866448501319
	.quad	0x3fe925a4e2f39ff1              # double 0.78584522558685255
	.quad	0x3fe95c9b7786231b              # double 0.79255460114027032
	.quad	0x3fefaa4db51146a3              # double 0.98953900685065254
	.quad	0x3fd95067f8755210              # double 0.39553260100845566
	.quad	0x3fb3da2372da3e68              # double 0.077547278919377072
	.quad	0x3faf5403e47d3300              # double 0.061187860147219553
	.quad	0x3feee2e9903f83a4              # double 0.96519926236588959
	.quad	0x3fe13ba22d20fb2d              # double 0.53852948011613011
	.quad	0x3fe0d52f01572cf0              # double 0.52602339040586621
	.quad	0x3feb8f49697a8481              # double 0.86124106026922231
	.quad	0x3feb8f0d1f07516b              # double 0.86121231136580201
	.quad	0x3fe774c9b0010ac4              # double 0.73300632835192703
	.quad	0x3fe2ce6c24ba7997              # double 0.58769805120009522
	.quad	0x3fdc96231ef6dd5a              # double 0.44666364692553417
	.quad	0x3fee409c9ec40057              # double 0.94538718232071062
	.quad	0x3fe5da44a69eaa2a              # double 0.68289406340529024
	.quad	0x3fd69d204a4f4de4              # double 0.35334021813215899
	.quad	0x3fdb0b0c567d2f54              # double 0.42254932829086056
	.quad	0x3fec21208e8dd66f              # double 0.87904384462917828
	.quad	0x3fa48b383890d970              # double 0.040124661355025348
	.quad	0x3fdd0b2ef2b0f028              # double 0.45380757999714882
	.quad	0x3feefcfdfd76d72d              # double 0.9683828306649268
	.quad	0x3fea79a3199aead6              # double 0.82734827996258775
	.quad	0x3fd05d7db7a62dd2              # double 0.25570624289022448
	.quad	0x3fb856cb2f5749c0              # double 0.095074366624692708
	.quad	0x3fec6c9997616c99              # double 0.88825683180347703
	.quad	0x3fa7f362ae518d00              # double 0.046778758792038744
	.quad	0x3fe10a32f06bef17              # double 0.53249499280306878
	.quad	0x3fe78b3b1491e247              # double 0.73574594514418201
	.quad	0x3f8b8ba7324f7dc0              # double 0.013449960921149251
	.quad	0x3fef03cfea6871bd              # double 0.96921535284814519
	.quad	0x3f8934b038e87c40              # double 0.012307526337336339
	.quad	0x3fde7420e9225ebe              # double 0.47583792464272878
	.quad	0x3fde8b381cf15836              # double 0.47724726511421822
	.quad	0x3fdf37a3d05b8a2c              # double 0.48777098987025869
	.quad	0x3fc30540be343e68              # double 0.14859780585583171
	.quad	0x3fdfb0f85e27ac86              # double 0.49517640299627208
	.quad	0x3fc67b84b2aa5dc0              # double 0.17564448093319918
	.quad	0x3fef7a8a6aed926a              # double 0.98370858082178114
	.quad	0x3fe922ed002c4926              # double 0.78551340135371528
	.quad	0x3fd8f690a3911698              # double 0.39004913304629829
	.quad	0x3fe9803c57354cd7              # double 0.79690377266742984
	.quad	0x3fd38bb0f43dd888              # double 0.30540107585637388
	.quad	0x3fe535cfea524d49              # double 0.66281886831203807
	.quad	0x3fd446c624f8e89a              # double 0.31681970224929901
	.quad	0x3fed90fc5cfbca9e              # double 0.923948461159245
	.quad	0x3feda28a5b9038a2              # double 0.92609136470288811
	.quad	0x3fb6dac2311719f8              # double 0.089275490746423602
	.quad	0x3fdd42334a33569c              # double 0.45716554876467241
	.quad	0x3fd32b44691b17aa              # double 0.29951582206956096
	.quad	0x3fc07518526042ec              # double 0.12857345602289827
	.quad	0x3fdbbed83070b7de              # double 0.43352322321413606
	.quad	0x3fbc6c1ad6fe1a10              # double 0.11102454899637615
	.quad	0x3fd2c4beaf68e0c0              # double 0.29325835351802354
	.quad	0x3fb456c3b0231470              # double 0.079448919775204407
	.quad	0x3fa8ed061f8af890              # double 0.048683348989912223
	.quad	0x3fed172a39d53b70              # double 0.90907775207038632
	.quad	0x3fec955ccf764f28              # double 0.89323273200941333
	.quad	0x3fd6067887237b98              # double 0.34414494702462539
	.quad	0x3f924db7a007cd20              # double 0.017874592916951149
	.quad	0x3fe58c24c0d5875c              # double 0.67335736906919008
	.quad	0x3fe58e23401454ec              # double 0.67360079303275944
	.quad	0x3f8d70c7eff21c80              # double 0.014375268945754138
	.quad	0x3feb3a8da3725640              # double 0.85089761660737651
	.quad	0x3feba4b158c1727f              # double 0.86385409674728908
	.quad	0x3feb6e82f1a4b9e0              # double 0.8572401733015873
	.quad	0x3fea4e209c0d0ded              # double 0.82203703383168902
	.quad	0x3fee36d4ed6f9f5a              # double 0.94419332861159977
	.quad	0x3fdcad6fb5a55404              # double 0.44808571566437672
	.quad	0x3fd10da17fd97a2a              # double 0.26645696149162978
	.quad	0x3fe6091c195a61a6              # double 0.68861203147666994
	.quad	0x3febd8f42ca11e3e              # double 0.87023361889527684
	.quad	0x3fb2f0afecd29ef8              # double 0.073985095327426253
	.quad	0x3fe0c2c84d7d4a5b              # double 0.52377715239192513
	.quad	0x3fe19a44d0f0353d              # double 0.5500816422296918
	.quad	0x3fda36e9e673326e              # double 0.40960166458970704
	.quad	0x3fd2bd79b205b304              # double 0.29281465897547343
	.quad	0x3feb75ab3d2fa189              # double 0.85811387968446795
	.quad	0x3fc0cbddbfe84284              # double 0.13122150297614976
	.quad	0x3fc5f01197075254              # double 0.17138881563609465
	.quad	0x3fdee71b7b806674              # double 0.48285567341517965
	.quad	0x3fd3371a5fba2a26              # double 0.30023822162971425
	.quad	0x3faa51f088cc6330              # double 0.051406399439832717
	.quad	0x3fcb8fa7d31d47a8              # double 0.21532151993102144
	.quad	0x3fe3430ee5fc08f0              # double 0.60193581503724936
	.quad	0x3fe57549216b7e9c              # double 0.67056709792446467
	.quad	0x3fd2f83777162846              # double 0.29639994267984482
	.quad	0x3fc27d9efd7d28f0              # double 0.14445865037334427
	.quad	0x3fee0129357ef305              # double 0.93764172027985693
	.quad	0x3f8dff341aa0b340              # double 0.014646918356527316
	.quad	0x3fe716e1dcea6b0c              # double 0.72154324672314507
	.quad	0x3fce1103837ae60c              # double 0.23489421768117358
	.quad	0x3feca81995376746              # double 0.89552001136619519
	.quad	0x3fe5db25fab078d9              # double 0.68300150835764406
	.quad	0x3fd3084f9f298bf6              # double 0.29738226454918448
	.quad	0x3fb805a57016ef00              # double 0.09383615480959051
	.quad	0x3fe1735d6a972a46              # double 0.54533263033346979
	.quad	0x3fcdb585c3d66ce8              # double 0.23210212767012384
	.quad	0x3fea20d814ad36c6              # double 0.81650928533937228
	.quad	0x3fdb998b53d8f4e2              # double 0.43124659717780223
	.quad	0x3fb87edb43180e80              # double 0.095685676460613322
	.quad	0x3fe6318c92f183d7              # double 0.69354847621809312
	.quad	0x3fde34c0a1ff4362              # double 0.47196975536376418
	.quad	0x3fd831b21edb25b8              # double 0.37803318990026069
	.quad	0x3fab74f97e3e2a00              # double 0.053626820240499029
	.quad	0x3fee87f1c65fb994              # double 0.95409477944285692
	.quad	0x3fad74aa7c728a60              # double 0.057530715648017816
	.quad	0x3fd7bb5175f182d6              # double 0.37080799596701064
	.quad	0x3feaaae37d294e90              # double 0.83336042829110291
	.quad	0x3fe4748f6a3d14b3              # double 0.63922854184843059
	.quad	0x3fe456a3c5a49b9d              # double 0.63557613947056135
	.quad	0x3fec71ecd0ded180              # double 0.88890686793324392
	.quad	0x3fcc35d752a0096c              # double 0.22039310011320923
	.quad	0x3fc540e68c3228cc              # double 0.16604310842041625
	.quad	0x3fedc50a30644495              # double 0.93030271007059417
	.quad	0x3fe17c63725c5946              # double 0.54643413864213453
	.quad	0x3fdd72f9fb81dd5e              # double 0.4601426082731076
	.quad	0x3fe6c47d7e2f430b              # double 0.71148562093193968
	.quad	0x3fdd0517e747290e              # double 0.45343587480296399
	.quad	0x3fc70e48832c3538              # double 0.18012339024463997
	.quad	0x3fd5e98a7347a564              # double 0.34237920053290893
	.quad	0x3fe83d452f1d4fa6              # double 0.75747927858400455
	.quad	0x3fac69aa65305eb0              # double 0.055493664600530734
	.quad	0x3fc86f8dd035413c              # double 0.19090435663611938
	.quad	0x3fd26980d29ee592              # double 0.28768940514017871
	.quad	0x3fc4ea4d17c212fc              # double 0.16340030345977385
	.quad	0x3fd33bbc53d3451c              # double 0.30052097497999042
	.quad	0x3fe4f2802e3f2236              # double 0.65460213692228453
	.quad	0x3fd89206ffca92e8              # double 0.38391280154819052
	.quad	0x3fdf984788421f16              # double 0.49366939836953472
	.quad	0x3fd612f41034d882              # double 0.34490682203921363
	.quad	0x3fdadec2247650de              # double 0.41984609184988908
	.quad	0x3fd345d379f8b936              # double 0.30113684569632271
	.quad	0x3fd5d6390023850c              # double 0.34120011342572876
	.quad	0x3fb2701eb2abeaa0              # double 0.072023314114554982
	.quad	0x3fe58e3b3c7e8c55              # double 0.67361223044680207
	.quad	0x3fe2271b7557f530              # double 0.5672738353602309
	.quad	0x3fe2e324694cf7ae              # double 0.59022732321294824
	.quad	0x3fc304738bae8f0c              # double 0.14857334442523784
	.quad	0x3fdb1eddc3a86e0e              # double 0.42375892741412791
	.quad	0x3fbececc009383a8              # double 0.12034297002857264
	.quad	0x3fc1b23a594c646c              # double 0.13825158462785525
	.quad	0x3fef1f60ef378efd              # double 0.9725804016311198
	.quad	0x3fdb878996b5cf0e              # double 0.43014754979888969
	.quad	0x3fdb7a06d815759c              # double 0.42932292081771961
	.quad	0x3fd776d4e6643d40              # double 0.36662790774512999
	.quad	0x3fe0a54121078594              # double 0.52017265749980135
	.quad	0x3fe04837437086d0              # double 0.50881541415966502
	.quad	0x3fee0495ac1f284b              # double 0.93805965058823781
	.quad	0x3fd49c3c37387042              # double 0.32203584091780979
	.quad	0x3fd049402aae50ec              # double 0.25447086494501892
	.quad	0x3fb515fc80b9f1b0              # double 0.082366734912233452
	.quad	0x3feb7938e9372691              # double 0.85854764509095294
	.quad	0x3fbc1416ad718e40              # double 0.10968152746641469
	.quad	0x3fdc52040d766afc              # double 0.44250584902481171
	.quad	0x3fd093a5cce9a196              # double 0.25901169787405232
	.quad	0x3fedd61e24b73d56              # double 0.93238742037821498
	.quad	0x3fe07f0b875694ba              # double 0.5155084269832948
	.quad	0x3f9f0e6b81115fa0              # double 0.030328445198705034
	.quad	0x3f92ae219e0c9a60              # double 0.018242383262214168
	.quad	0x3feb2dd211bb6e90              # double 0.84934333289443664
	.quad	0x3feee72595152663              # double 0.96571616285036687
	.quad	0x3fe45e7cf00756b4              # double 0.63653418427084896
	.quad	0x3fe8789e83e875ac              # double 0.76472402346887724
	.quad	0x3fd9179c76bf97f4              # double 0.39206611248516698
	.quad	0x3fe36fe95994f1df              # double 0.60741107460449573
	.quad	0x3f96254a18ff7580              # double 0.02162662293982498
	.quad	0x3fd6ee609bd33f00              # double 0.35829940049460163
	.quad	0x3fc370ffb57225a4              # double 0.1518859516111607
	.quad	0x3fe96fd71d9b6db0              # double 0.79490237982411394
	.quad	0x3f95267e22e119c0              # double 0.020654650572646593
	.quad	0x3fe0062d59312001              # double 0.50075404567996895
	.quad	0x3fea664d48fe2c6a              # double 0.82498802429598794
	.quad	0x3fd5cb90b40b9a1a              # double 0.34054963667441174
	.quad	0x3fd901096f6eecb6              # double 0.39068828470380923
	.quad	0x3fedc132a860b962              # double 0.92983372579855605
	.quad	0x3fdcbffe6e809002              # double 0.44921837607603277
	.quad	0x3fd03b76f6e08a4c              # double 0.25362943753330991
	.quad	0x3fec8dcf024ce350              # double 0.89231062363897173
	.quad	0x3febbd12c808cec3              # double 0.86683024472446168
	.quad	0x3fe6a281ad6f66d0              # double 0.70733722566657242
	.quad	0x3fb5441cf4412060              # double 0.083070573456212937
	.quad	0x3fe3d0a8f4823611              # double 0.61922118907540569
	.quad	0x3fad09a33c8bfdd0              # double 0.056714154377910497
	.quad	0x3fc7068a7eee82e8              # double 0.17988711545787983
	.quad	0x3fc076460306bd5c              # double 0.12860942027826183
	.quad	0x3fba54b0872eebf0              # double 0.10285476017354234
	.quad	0x3fe4131d82916497              # double 0.62733340741683008
	.quad	0x3f98420c562b0ea0              # double 0.023689453849114472
	.quad	0x3fcf8eb57f0ab5cc              # double 0.24654263213362382
	.quad	0x3feb67365221ef56              # double 0.85634914437785414
	.quad	0x3fbbea512c613a10              # double 0.10904414494982739
	.quad	0x3fed5987d631dfdd              # double 0.91717902979780386
	.quad	0x3fd8ec2b19f05246              # double 0.38941457303124982
	.quad	0x3feed44039fdcc61              # double 0.96340953184552458
	.quad	0x3fe7ba09bfd76602              # double 0.74145972699187745
	.quad	0x3fe7c1bf8cb7aa0b              # double 0.74240090831637084
	.quad	0x3fde6d866ca8f218              # double 0.47543488131830847
	.quad	0x3fedd92596d07acd              # double 0.93275718170101529
	.quad	0x3fa491f638c41210              # double 0.040176100186759212
	.quad	0x3feb95aa2ddb6a92              # double 0.86201962429488987
	.quad	0x3fe89da1bfd3f475              # double 0.76924216715236915
	.quad	0x3fc2cd84fe39be20              # double 0.14689695752484599
	.quad	0x3fa8325bc8a42530              # double 0.047259205095608769
	.quad	0x3fe84efecd5fe3d3              # double 0.75964298355313031
	.quad	0x3fecfcaaf14e8daa              # double 0.90584323053592652
	.quad	0x3fa3bf6cfd84e810              # double 0.038569837519801919
	.quad	0x3f49d8a2eab14400              # double 7.8876452369958105E-4
	.quad	0x3feca300fde150c7              # double 0.89489793382610905
	.quad	0x3f966a74fae3fcc0              # double 0.021890476048608276
	.quad	0x3fd4343944ac8100              # double 0.31568748194150942
	.quad	0x3fc2df404e409e04              # double 0.14743808575552475
	.quad	0x3fe5fe5561539629              # double 0.68729657181819903
	.quad	0x3fd8fa7daf66b76a              # double 0.39028875474001856
	.quad	0x3fda5e68843c0046              # double 0.41201222337258903
	.quad	0x3fe21878536b414b              # double 0.56548706333891496
	.quad	0x3fe041be054c3c86              # double 0.5080251792404773
	.quad	0x3fefff0c23a76609              # double 0.99988371814396359
	.quad	0x3fee39e35af34050              # double 0.94456641925536111
	.quad	0x3fc0d034e570f328              # double 0.13135396197494598
	.quad	0x3fc2919d0d5bfbd8              # double 0.1450687709074987
	.quad	0x3fd9944b5bca3d36              # double 0.39967617000452849
	.quad	0x3fe61ae19bcf76c3              # double 0.69078140670509247
	.quad	0x3fb524c543234c10              # double 0.082592324153026419
	.quad	0x3fb8a02c9add9dc0              # double 0.09619406491184801
	.quad	0x3fe6d65b7fa5b73a              # double 0.71366667681807106
	.quad	0x3fdc41252aeda608              # double 0.44147614662378531
	.quad	0x3fe51ba8e605d34f              # double 0.65962643553084799
	.quad	0x3fe86fbc434efba6              # double 0.76363957544514416
	.quad	0x3fe6110fd0e03a48              # double 0.68958273693153505
	.quad	0x3fddf7dd14bb41d2              # double 0.46825339340742034
	.quad	0x3f8b905ff314a400              # double 0.013458966832859076
	.quad	0x3fe1901f69598209              # double 0.54884310318090102
	.quad	0x3fded5778934e2c0              # double 0.48177898787575302
	.quad	0x3fec29bda6f12260              # double 0.88009531598897794
	.quad	0x3fe5c548d433d65c              # double 0.68033257909582856
	.quad	0x3fd7a378d543eec2              # double 0.36935253931708811
	.quad	0x3fefc4ed470c5ff8              # double 0.99278892399433882
	.quad	0x3fed20727a495c9c              # double 0.91021083721252038
	.quad	0x3fe6880d1871b75b              # double 0.70410780691393471
	.quad	0x3fd96f2a5fcc49de              # double 0.39741000514291425
	.quad	0x3fc2df3db3b49194              # double 0.14743777537036051
	.quad	0x3fe3c97a5c1d094b              # double 0.6183444785204214
	.quad	0x3fe7b1a590b2d21d              # double 0.74043539296559724
	.quad	0x3fd3ea27f9c87c1e              # double 0.31116675751576561
	.quad	0x3f9d7c4d92d4bb20              # double 0.028794490897037339
	.quad	0x3fbb5d6e9b0c7a08              # double 0.10689440999383504
	.quad	0x3f92c49374680820              # double 0.01832800291050074
	.quad	0x3feae8265fdfc982              # double 0.84083861089156664
	.quad	0x3fc267fd0938e090              # double 0.14379847479154195
	.quad	0x3fe96c3d7c38e222              # double 0.7944629121985296
	.quad	0x3fcc2f4812808214              # double 0.22019291785638073
	.quad	0x3fd6314abfb4371c              # double 0.3467585441693346
	.quad	0x3fea70220eb5511f              # double 0.82618811485966492
	.quad	0x3fce3bd38a7642f8              # double 0.23620075474584445
	.quad	0x3fb30f19946d9c40              # double 0.07444915651068218
	.quad	0x3fc336b29dfd8bb8              # double 0.15010674204230923
	.quad	0x3f860a4d25250440              # double 0.010761835762084115
	.quad	0x3fdb4e0a5c2807a8              # double 0.42663821220059583
	.quad	0x3fc642b9c463e434              # double 0.17391130532613064
	.quad	0x3fd0c2c5a64cd834              # double 0.26188794365168921
	.quad	0x3fcc5f449efc54d0              # double 0.22165735018703581
	.quad	0x3fd35a4fe7bacc34              # double 0.30238721494532972
	.quad	0x3fdedac9e3ab4302              # double 0.48210379823017047
	.quad	0x3fe5c7be600c5eb8              # double 0.68063277015149648
	.quad	0x3fe3e986d08d00e4              # double 0.6222566674478256
	.quad	0x3fdb489d71060826              # double 0.42630706822831355
	.quad	0x3fef7f4478c5a4c7              # double 0.98428557956972262
	.quad	0x3fd31e8dd4eb873c              # double 0.29873987000438595
	.quad	0x3fe08ae827e367b1              # double 0.51695640364345341
	.quad	0x3fe8a0604e10a6e3              # double 0.76957717177466767
	.quad	0x3fd4cd37ecf57918              # double 0.32502554073825385
	.quad	0x3faba99931ceefa0              # double 0.054028308229560951
	.quad	0x3fdbe833bd247c06              # double 0.4360474917502305
	.quad	0x3fd5e07cc4abaf00              # double 0.34182662206761449
	.quad	0x3feb2dea429111ee              # double 0.84935486794762283
	.quad	0x3fee907073654b3d              # double 0.95513174570292103
	.quad	0x3fce58996a9ac634              # double 0.23707883553793041
	.quad	0x3fe8dde6fb0769c0              # double 0.77708767918675647
	.quad	0x3fea2711eea9b229              # double 0.81726929296343542
	.quad	0x3fd53c0a35b92aa2              # double 0.3317895435945194
	.quad	0x3fee5443288ddd5e              # double 0.94778592987760724
	.quad	0x3fe439c73c20b4b2              # double 0.63205301040365769
	.quad	0x3fd0f54e64e79160              # double 0.26497230390511639
	.quad	0x3fc72cba9c1136cc              # double 0.18105251903982944
	.quad	0x3fb746b7ac779698              # double 0.090922813040004491
	.quad	0x3feb9171cd75b2cd              # double 0.86150446061000141
	.quad	0x3fdb8324ad7e19d6              # double 0.42987935011515555
	.quad	0x3fda5f9d8498c126              # double 0.41208589505096638
	.quad	0x3fe72bc0b5ea9252              # double 0.72409091501737977
	.quad	0x3fe1e9fd263a619c              # double 0.55981309381882083
	.quad	0x3fd9043094b7b2b8              # double 0.39088072322082779
	.quad	0x3fec8cd08841fd34              # double 0.89218927967878025
	.quad	0x3fd9b23f04a0ef3a              # double 0.40150428249374992
	.quad	0x3f98398b24d25d00              # double 0.023657011148853435
	.quad	0x3fe93e08048bd9da              # double 0.78882218254039604
	.quad	0x3fe0d5642a9c0e0d              # double 0.52604873964486532
	.quad	0x3febc1a659082d3b              # double 0.86738889111567319
	.quad	0x3fe0c18a9bdfd829              # double 0.52362566417901235
	.quad	0x3fef9195c4c0bfc4              # double 0.98652161052995568
	.quad	0x3feb93b487d897a0              # double 0.86178041965898799
	.quad	0x3fd856029a41d9d6              # double 0.38024964393789895
	.quad	0x3fc190334a249244              # double 0.13721314544922525
	.quad	0x3fedc5f99ea45b43              # double 0.93041687950867702
	.quad	0x3fe9fca98c6204b0              # double 0.81209256571323429
	.quad	0x3fd1699999089f0e              # double 0.27207031197257059
	.quad	0x3f8b526b50759380              # double 0.013340795891687796
	.quad	0x3fee8fee21df2a57              # double 0.95506960502218419
	.quad	0x3fdbdf1e32c0573a              # double 0.43549303966698327
	.quad	0x3fb5587507030fc8              # double 0.083380998813537777
	.quad	0x3fe80536a8711bb2              # double 0.7506364145163984
	.quad	0x3fb5bf2f04e2f898              # double 0.084948481266993503
	.quad	0x3fde52f975e670b4              # double 0.47381435884177425
	.quad	0x3fd7b58e16295d9a              # double 0.37045623935906635
	.quad	0x3fd31eb7a1ba8ef2              # double 0.29874983590910553
	.quad	0x3fe20b0c8b1f390a              # double 0.56384875461825001
	.quad	0x3fa2e1f5ade2fde0              # double 0.036880185581590785
	.quad	0x3fb6920d4944a7a8              # double 0.088166075122585341
	.quad	0x3f984e3290ce3560              # double 0.023735799873567998
	.quad	0x3fd207de6b4f0358              # double 0.28173027495727387
	.quad	0x3fe25ff19daa7217              # double 0.57421189111807081
	.quad	0x3fddb5f17f8afba6              # double 0.46422994094239767
	.quad	0x3f7c41a1283c4a80              # double 0.0068985266878082152
	.quad	0x3fe98379503c31f4              # double 0.79729905768323172
	.quad	0x3fed92d916431b64              # double 0.924175780754791
	.quad	0x3f7ae0fb9fb7cc80              # double 0.006562216668942189
	.quad	0x3fee82dae52b9439              # double 0.95347351798830637
	.quad	0x3fd9990efb30fc34              # double 0.39996695070653066
	.quad	0x3fc0bf7329c4514c              # double 0.13084258593938569
	.quad	0x3fde6984b01aac94              # double 0.47519032666850447
	.quad	0x3fe88868261d7910              # double 0.76665122455941237
	.quad	0x3fdc4b979b00dc68              # double 0.44211378228232556
	.quad	0x3f4f1d45fffbb000              # double 9.4953458753144204E-4
	.quad	0x3fed5f7bf55a0ef1              # double 0.91790578766128139
	.quad	0x3fe54aba238c84bf              # double 0.66537196105141294
	.quad	0x3fd076bba93c6fb0              # double 0.25724689032517301
	.quad	0x3fa0fb47168c1830              # double 0.033167096617077951
	.quad	0x3fe5bcfeaac812dd              # double 0.67932065349358661
	.quad	0x3fb285cabb916f50              # double 0.072354002755159685
	.quad	0x3fe9968a42aebb17              # double 0.79962647460874592
	.quad	0x3fe7c9ab09888389              # double 0.74336768972362777
	.quad	0x3fcdef185fd696c0              # double 0.23385910682298139
	.quad	0x3fee9276b0b35c18              # double 0.9553788615402281
	.quad	0x3fec2f75818dc1a9              # double 0.88079333594764819
	.quad	0x3fd7a6bcaa25656e              # double 0.3695518170912554
	.quad	0x3fbe885eea33a998              # double 0.11926835267846625
	.quad	0x3fe7732d6c28112a              # double 0.73280974506682139
	.quad	0x3fd773ae1845f1c2              # double 0.36643555040771159
	.quad	0x3fe8bd1bc69723d0              # double 0.77308453356919848
	.quad	0x3fc1bec3b18158cc              # double 0.13863416831254083
	.quad	0x3fe476778dfaa08d              # double 0.63946130495334474
	.quad	0x3fe093c84550e630              # double 0.51803983248027485
	.quad	0x3faf001663678ca0              # double 0.060547542223298167
	.quad	0x3fe85e77e5835492              # double 0.76153178049811943
	.quad	0x3fe5df154612f0d0              # double 0.68348182379079425
	.quad	0x3fe81238a2b9c1b2              # double 0.75222427160593086
	.quad	0x3fe295bdb07e29b1              # double 0.58077892752890226
	.quad	0x3fd4f84c2ea00f66              # double 0.32765488198514559
	.quad	0x3fe065c33fe2f8ad              # double 0.51242220380642822
	.quad	0x3f9be9d52097fe40              # double 0.027259187807429308
	.quad	0x3fe0af0f4b21319f              # double 0.52136959718477616
	.quad	0x3fe74f98e8c4638d              # double 0.72846646749813859
	.quad	0x3fcc3bf6fc8ebd50              # double 0.22057998020089054
	.quad	0x3fe75c367453fdca              # double 0.73000643463449788
	.quad	0x3fdd6cac105bee84              # double 0.45975782010621224
	.quad	0x3fd0c223823b5312              # double 0.2618492862505245
	.quad	0x3fd3c3f65de40cd6              # double 0.30883559388185
	.quad	0x3fcb41f7b11c3910              # double 0.21295066974602905
	.quad	0x3fca338fde173cbc              # double 0.20469854683185484
	.quad	0x3fd0312b6154936c              # double 0.25300106530112632
	.quad	0x3fed4f03dc18bb2b              # double 0.91589539516085006
	.quad	0x3fd3257b945256b4              # double 0.29916276440176692
	.quad	0x3fc7a6eb8f82e4f4              # double 0.18478149897945395
	.quad	0x3fdf8a070e2218f0              # double 0.49279953365511542
	.quad	0x3fdd5e2c97f85e46              # double 0.45887293663824769
	.quad	0x3fc4d5f19d8a1a48              # double 0.16277904693943612
	.quad	0x3fe08474e7692e7c              # double 0.51616902539667775
	.quad	0x3fdb782c98aa8bc8              # double 0.42920985134895462
	.quad	0x3f9f1aa8e2920660              # double 0.030375136212120402
	.quad	0x3fe0a3593ba379a6              # double 0.51994001053008243
	.quad	0x3fcd66661feaf840              # double 0.22968746717919153
	.quad	0x3fe31b676a3021d7              # double 0.59709521045538849
	.quad	0x3fdaccf2513d44b4              # double 0.41875894483116416
	.quad	0x3fee1c9616e46065              # double 0.94098953696358179
	.quad	0x3fe4603edecb3a3f              # double 0.63674872888970657
	.quad	0x3fe0fec1a55b0d10              # double 0.53109819694546623
	.quad	0x3fe754fc38d11d3a              # double 0.72912417504350135
	.quad	0x3fdea9181e78c736              # double 0.47907069183121409
	.quad	0x3fe08aa4b8d0f12e              # double 0.51692424866590669
	.quad	0x3fe37bad362aa410              # double 0.60884724215896036
	.quad	0x3fb875a9394de9f8              # double 0.095545364847488545
	.quad	0x3fe433153be3dad1              # double 0.63123571107174758
	.quad	0x3fde634dabb26c54              # double 0.47481099860460074
	.quad	0x3fe003713b4a1794              # double 0.50042020397153175
	.quad	0x3fecbb30cedee6d4              # double 0.89785042194781761
	.quad	0x3feaa773acc8e234              # double 0.83294090029727962
	.quad	0x3f9c218be4bbc380              # double 0.027471719585210774
	.quad	0x3fd753294b5cba7e              # double 0.36445076331703052
	.quad	0x3fd7b9c7dbc20fb4              # double 0.3707141538691261
	.quad	0x3fadafc5427cd340              # double 0.057981647840654293
	.quad	0x3fe16ca208fc89b1              # double 0.54451085810824484
	.quad	0x3fea1ae466831713              # double 0.81578273794068179
	.quad	0x3fb35dfa3b8a59b0              # double 0.075652732406843226
	.quad	0x3fe3f63f73d49013              # double 0.62380955336675681
	.quad	0x3fdcdd6206957d20              # double 0.45101214068377438
	.quad	0x3fea3c390194b129              # double 0.81985140141253965
	.quad	0x3fe013f0422fbd2f              # double 0.50243390013739553
	.quad	0x3fde92ab22c43c68              # double 0.47770193476839617
	.quad	0x3feb50fbcdb3467e              # double 0.8536356942733645
	.quad	0x3fd0b11dd483f592              # double 0.26081033471549475
	.quad	0x3fe859c2c0493368              # double 0.76095712238166602
	.quad	0x3fc7a00811e42bdc              # double 0.18457127450559951
	.quad	0x3fd2167055690534              # double 0.28261955586283993
	.quad	0x3fd3b0d9c8e4ef1c              # double 0.30766911142903708
	.quad	0x3fc6b9bb8651ca60              # double 0.1775431066376596
	.quad	0x3fa1382e30968500              # double 0.03363174765696364
	.quad	0x3fa402d23117e890              # double 0.039084022991986989
	.quad	0x3fe8986578c70aa1              # double 0.76860307301861408
	.quad	0x3fd3a512f704c6f6              # double 0.30695032236972908
	.quad	0x3fe12ad59b90bbb8              # double 0.53647880920276858
	.quad	0x3fd013e57436804c              # double 0.25121437405505698
	.quad	0x3f91b90a91217a00              # double 0.017307438953475085
	.quad	0x3fb03fef9fa23b88              # double 0.063475586388660798
	.quad	0x3fe8bca05e5a2576              # double 0.77302568843985742
	.quad	0x3fccfb31cde64474              # double 0.22641584924398084
	.quad	0x3fdc7cd4a74eb924              # double 0.44511905993103285
	.quad	0x3fbb47e7caac6150              # double 0.10656593988494945
	.quad	0x3fbe3cab8dc08540              # double 0.11811325274222373
	.quad	0x3fce602986a7f55c              # double 0.23730963778499869
	.quad	0x3fe161e01a3a242e              # double 0.54319768068774521
	.quad	0x3feaa2b9c3b922aa              # double 0.83236397006210905
	.quad	0x3fe9628141766576              # double 0.79327452455178959
	.quad	0x3fec271aa48a9f68              # double 0.8797734464360305
	.quad	0x3fe72e0a465ee7a8              # double 0.72437013382226656
	.quad	0x3fc104caeb28bee0              # double 0.1329587600935076
	.quad	0x3f87496f04de5a40              # double 0.01137053235633545
	.quad	0x3feebc08c90f0240              # double 0.96045340794814393
	.quad	0x3fd89e38b0500dc6              # double 0.38465707033193686
	.quad	0x3fda87c32072b9c8              # double 0.41453626793636689
	.quad	0x3fe342b686fcbee4              # double 0.60189367642120972
	.quad	0x3fc603d7d3c21c00              # double 0.17199228133924294
	.quad	0x3fe696cf4b17f824              # double 0.70590939203953385
	.quad	0x3fbf6f113270d280              # double 0.12278850060904212
	.quad	0x3fea9f755f849b2e              # double 0.83196514755113582
	.quad	0x3fe1f928d84806fd              # double 0.56166498415424793
	.quad	0x3fe58f58fb780030              # double 0.67374848475447457
	.quad	0x3feafa032caa38ad              # double 0.84301909183138479
	.quad	0x3fddcf3062261f6a              # double 0.4657708128438488
	.quad	0x3fecd83ac468c9ff              # double 0.9013952098960657
	.quad	0x3fef4f886240cb4d              # double 0.97845858755167969
	.quad	0x3fe63e3a055835e0              # double 0.69509602588521702
	.quad	0x3fe198af6052c858              # double 0.54988831341894251
	.quad	0x3fdac5666cc0e308              # double 0.41829834576087466
	.quad	0x3fe5d44e1f38e5e7              # double 0.68216615770432731
	.quad	0x3fd55fc962270584              # double 0.33397135338972128
	.quad	0x3fe6186e3dbbc119              # double 0.69048225457484869
	.quad	0x3fd089000091b85c              # double 0.25836181693637683
	.quad	0x3fc1646b3e75f080              # double 0.13587704229201236
	.quad	0x3fef1bd60277aace              # double 0.97214794618533928
	.quad	0x3fc3b3902a8a77b0              # double 0.15391733243171535
	.quad	0x3f96ff70f9e9ea40              # double 0.022458806279681776
	.quad	0x3fd1f55febcadb00              # double 0.28060148264505358
	.quad	0x3fe891df2bccdb38              # double 0.76780661158304664
	.quad	0x3fd59f1355a2b142              # double 0.33783419955104332
	.quad	0x3fc118c50bdf0084              # double 0.13356841163295397
	.quad	0x3fd834201a9d6f98              # double 0.37818148230666671
	.quad	0x3fda9ed80220058e              # double 0.41594505507972535
	.quad	0x3fd7999a2aed569c              # double 0.36875013534641155
	.quad	0x3fe66c6edda670c3              # double 0.70073645869299417
	.quad	0x3fe063ccc578869c              # double 0.51218260353580858
	.quad	0x3fd4a1a9761e6286              # double 0.32236706290272144
	.quad	0x3fe09e3c30562ab8              # double 0.51931580963840585
	.quad	0x3feb1a48bbafb1ba              # double 0.84695850999337741
	.quad	0x3fdf11e2fd9596c8              # double 0.4854667164239399
	.quad	0x3fef39bd96e171b4              # double 0.97579841107249487
	.quad	0x3fe5a4e5fc9084fd              # double 0.67637919739732377
	.quad	0x3fee4cc256f61417              # double 0.9468700121366308
	.quad	0x3fe251b61d65192b              # double 0.57247453442758933
	.quad	0x3fee847db6e765fe              # double 0.95367322657983755
	.quad	0x3fe3e12a79def7b2              # double 0.6212360744755101
	.quad	0x3fe1a62508ec7144              # double 0.55153133147135991
	.quad	0x3fd9636bf03251e8              # double 0.39669321495719467
	.quad	0x3fdfb90c7ba9e628              # double 0.49566948009996503
	.quad	0x3fcaf50f980420a0              # double 0.2106036655679917
	.quad	0x3fc8130822e196c4              # double 0.18808080390151904
	.quad	0x3febdf1c68efe845              # double 0.87098522658858057
	.quad	0x3fc36173220f8184              # double 0.15141143000711221
	.quad	0x3fc8b8e885a6cdac              # double 0.19314295316654062
	.quad	0x3fc4a4836880c874              # double 0.16127054789245998
	.quad	0x3fd0c17a437ad14c              # double 0.26180893506832059
	.quad	0x3fb5c3c0f0156898              # double 0.085018213857809832
	.quad	0x3feabd3106a72db2              # double 0.83559466647550651
	.quad	0x3fc64e69a171958c              # double 0.17426796324722849
	.quad	0x3fe72c6e274d42cb              # double 0.72417361904271027
	.quad	0x3fb955b7aea5f2a0              # double 0.098964195383766995
	.quad	0x3fe4cae342a2a3ed              # double 0.64976656927785614
	.quad	0x3fd7928583a517de              # double 0.36831796508738346
	.quad	0x3fe46f8b5cd44aa4              # double 0.63861625796046839
	.quad	0x3fea1a08501f091e              # double 0.81567779205969138
	.quad	0x3fd2e2363f6535a2              # double 0.29505687895729171
	.quad	0x3fe6b6290186e1b0              # double 0.70973635004252422
	.quad	0x3fa67f1ed8aa33f0              # double 0.043938602398249205
	.quad	0x3fe629c191492bc2              # double 0.69259718299996842
	.quad	0x3fbc8109e0d92f88              # double 0.11134397258245887
	.quad	0x3fefa6cc1fde285b              # double 0.98911100601368262
	.quad	0x3feb45d959f32792              # double 0.85227649277043072
	.quad	0x3fe5400b58137af2              # double 0.66406790926325088
	.quad	0x3fe1e44eabb01310              # double 0.55911954434177069
	.quad	0x3fe70828eb58332a              # double 0.71974607434967663
	.quad	0x3fb1ad5ec02f9110              # double 0.069051668091166585
	.quad	0x3fece081ee66e160              # double 0.90240570605150693
	.quad	0x3fe245e8348aa289              # double 0.57103357564945256
	.quad	0x3fe089a590b62995              # double 0.51680258048991112
	.quad	0x3fe43298c9c71969              # double 0.63117637071335964
	.quad	0x3fe84d106de5bd48              # double 0.75940724815692651
	.quad	0x3fe0c7a862aea82f              # double 0.52437228464009944
	.quad	0x3fd663bf028cb494              # double 0.34983802079188675
	.quad	0x3faeff6a54f822b0              # double 0.06054241454336784
	.quad	0x3fb338269e422938              # double 0.075075544011416251
	.quad	0x3fc8042ca15a3600              # double 0.18762739065680023
	.quad	0x3fb4a72306cf38a8              # double 0.080675305521455187
	.quad	0x3fe8ac71a4800016              # double 0.77105028275400644
	.quad	0x3fe67ae0cf452e7f              # double 0.70249977571934596
	.quad	0x3fd924fa82c7126a              # double 0.39288199206592955
	.quad	0x3fd0d457132220aa              # double 0.26296021336066622
	.quad	0x3feb4844c3bb2887              # double 0.85257185200431784
	.quad	0x3fe70e25c58a910d              # double 0.72047699529915266
	.quad	0x3fdc2f7e95716dba              # double 0.44039883226443133
	.quad	0x3fc48b3955694c30              # double 0.16049877806162405
	.quad	0x3fea43c785ec5b3a              # double 0.82077385098350608
	.quad	0x3fe4a6bcf5e0b9e5              # double 0.6453537752439017
	.quad	0x3f982a4ee281aa40              # double 0.023598892760143153
	.quad	0x3fc709f6cc6cced4              # double 0.17999157888117756
	.quad	0x3fdaa07b64cc807e              # double 0.41604504436146061
	.quad	0x3fe58398a28d3fe9              # double 0.67231399296178751
	.quad	0x3fdb1df12e2ac714              # double 0.42370252140527609
	.quad	0x3fd8dc769e780b72              # double 0.38845601535302088
	.quad	0x3fdd0eeadd1d2e46              # double 0.45403548806345773
	.quad	0x3fd44339e27e3550              # double 0.3166031562658036
	.quad	0x3fedd578059ec080              # double 0.9323082074897826
	.quad	0x3fdeb67a823224c4              # double 0.4798876067585065
	.quad	0x3feebe0d64144d57              # double 0.96069974467028884
	.quad	0x3fd039473007bcf0              # double 0.25349597635700061
	.quad	0x3fdb4750cd8f8bba              # double 0.42622776102342252
	.quad	0x3fed8c133a40d4d6              # double 0.92334901216113496
	.quad	0x3fed746280efd9c7              # double 0.92045712645522648
	.quad	0x3fd03fbd31634eec              # double 0.2538903219512878
	.quad	0x3fe07fc10d3c7db0              # double 0.51559498391354985
	.quad	0x3fd757b94f0c0038              # double 0.36472923964902604
	.quad	0x3fedfbf7fdf6cf40              # double 0.93700790026057489
	.quad	0x3feadb14b10cf6f7              # double 0.83924326496318613
	.quad	0x3fe0bf9e4da08e92              # double 0.52339091455037789
	.quad	0x3fe87f780f516e7e              # double 0.76556017867865456
	.quad	0x3fd06f9a19f82ee4              # double 0.25681164299088111
	.quad	0x3febe13704a35dc7              # double 0.87124205499542817
	.quad	0x3febb36f8ff2112a              # double 0.86565378298158646
	.quad	0x3fe0e239f85aa4fa              # double 0.52761553293853969
	.quad	0x3fc8bb6a33ab33b0              # double 0.19321944735420749
	.quad	0x3fcdc83b2d90b110              # double 0.232673070191034
	.quad	0x3fef2cc09fcea82c              # double 0.97421294414858072
	.quad	0x3f908aaf26ff2de0              # double 0.01615403819577732
	.quad	0x3feffe553e6a0270              # double 0.9997965067887673
	.quad	0x3f79ba9f9ae7f380              # double 0.0062814936231888607
	.quad	0x3fe374490b73f103              # double 0.60794498669523056
	.quad	0x3f9c9f4a9c126280              # double 0.027951398635738034
	.quad	0x3fd828710ea07492              # double 0.37746836117168769
	.quad	0x3fe50e155f3ada5c              # double 0.65796917533482313
	.quad	0x3fe89381ef83f10f              # double 0.76800629406310061
	.quad	0x3fd2bb076f7bb3b8              # double 0.29266534697563484
	.quad	0x3feb2711bc0cebc5              # double 0.84851919869048997
	.quad	0x3fe939e9fe04ae6f              # double 0.78831958401629076
	.quad	0x3fee66d8134b68a2              # double 0.95005420464010037
	.quad	0x3fe51867086e70a3              # double 0.65922881743201278
	.quad	0x3fe9cd3db998b11f              # double 0.80630384682948264
	.quad	0x3f935e53a5755820              # double 0.018914515470292881
	.quad	0x3fc4fe01c11d604c              # double 0.16400167397910292
	.quad	0x3fd6fb7cf6e8473e              # double 0.35909961807293544
	.quad	0x3fd0b29c41260362              # double 0.26090151178509846
	.quad	0x3fe3872ce749946b              # double 0.61025090382885361
	.quad	0x3fe486630d63492b              # double 0.64140465369044841
	.quad	0x3fed0ee7e7b81cb1              # double 0.90806956536916605
	.quad	0x3fe51ce6d3fcbec7              # double 0.65977803615347674
	.quad	0x3fb09e965d4c3280              # double 0.064919851091142178
	.quad	0x3fe0dbc262b0ca85              # double 0.52682608867174052
	.quad	0x3fab5fa04f348520              # double 0.053463945072744545
	.quad	0x3fe66ae56fdc3a84              # double 0.70054885719021387
	.quad	0x3fd21db52e93c918              # double 0.28306321667254641
	.quad	0x3fa4f61fa70481a0              # double 0.040940274370089513
	.quad	0x3fcca1baff88229c              # double 0.22368562199723818
	.quad	0x3fd1af58ec4645b6              # double 0.27632735322648772
	.quad	0x3fc6936296de04b4              # double 0.17637283674779314
	.quad	0x3fe18d837d12ddce              # double 0.54852461269813957
	.quad	0x3fe1ad15ea56e469              # double 0.55237861413401135
	.quad	0x3fd3654723e333e6              # double 0.30305651192321503
	.quad	0x3fc218f048debad4              # double 0.14138606603724801
	.quad	0x3f8194048f394b00              # double 0.0085831028183398494
	.quad	0x3fb0575a957e0b18              # double 0.063832913872868935
	.quad	0x3fe80c929c1d4901              # double 0.7515347527608186
	.quad	0x3fd7e780d1b2100c              # double 0.37350483396608136
	.quad	0x3fbc83f8625c7928              # double 0.11138870622059882
	.quad	0x3fc41e89e32fb694              # double 0.15718196480832047
	.quad	0x3fe3b9cedc36e819              # double 0.616431646448521
	.quad	0x3fdc3fd997bf6142              # double 0.44139709300135987
	.quad	0x3fcfe4922d61ffb0              # double 0.24916293350179108
	.quad	0x3feab9a996802dee              # double 0.83516387362163669
	.quad	0x3fe8676e76693a6b              # double 0.76262591483266584
	.quad	0x3fe166dcc7725d94              # double 0.5438064475483082
	.quad	0x3fee274e8af5bfcc              # double 0.94229819431893124
	.quad	0x3f9afa320e4b09c0              # double 0.026345045206434881
	.quad	0x3feae5ce59a571c5              # double 0.84055249699627466
	.quad	0x3feb2c6b69ed5d87              # double 0.84917231263072857
	.quad	0x3fc532e45a530224              # double 0.16561560068477477
	.quad	0x3fe400e629b0d3c1              # double 0.62510975020142479
	.quad	0x3fe3e101b83a9252              # double 0.62121664030252988
	.quad	0x3fe7b67903d94b8c              # double 0.741024501340108
	.quad	0x3fe71c3492503029              # double 0.72219303681186375
	.quad	0x3fc5c955c45ca640              # double 0.17020675743087743
	.quad	0x3fe86884bd24c48d              # double 0.7627586073123368
	.quad	0x3fe84c693e9a2dcf              # double 0.75932752825741001
	.quad	0x3fed202f1f20c79a              # double 0.91017871932693883
	.quad	0x3fecbc2b881e0d68              # double 0.89796997628620279
	.quad	0x3feca29c4bd8f31f              # double 0.89484991849858264
	.quad	0x3fd71dcb432938d8              # double 0.36119348105138505
	.quad	0x3fbfdaf4dc27d6c8              # double 0.12443476080792515
	.quad	0x3fe2dfdec86fb8b1              # double 0.58982791087853148
	.quad	0x3fce0b4efab6cf5c              # double 0.23472010843181124
	.quad	0x3fce548ce1c3f0c4              # double 0.23695527099324043
	.quad	0x3fe92cd907630be7              # double 0.78672458117250421
	.quad	0x3fef0034c0420d7d              # double 0.96877515364069177
	.quad	0x3f8009bb3b784fc0              # double 0.0078310611270707708
	.quad	0x3fdca995fff88522              # double 0.44785070416590333
	.quad	0x3fe8833cdcd5bc6c              # double 0.76602023250405926
	.quad	0x3fb2a2b38fe2e840              # double 0.072795126560692758
	.quad	0x3fd15c496c68708e              # double 0.27125773989406177
	.quad	0x3fe1e600f33eb44b              # double 0.55932662495400487
	.quad	0x3feb85f99ebd14e5              # double 0.860104379688576
	.quad	0x3fddf6e25b29c348              # double 0.46819361593866349
	.quad	0x3fe1d1fe478be0a5              # double 0.55688394521623208
	.quad	0x3fd254212a3516c6              # double 0.28638486024679499
	.quad	0x3fccbfddf65796b4              # double 0.22460531738686529
	.quad	0x3fe1fff2096b737a              # double 0.56249334182540101
	.quad	0x3fdd2edd23c3c018              # double 0.45598534100190724
	.quad	0x3fd7c51fadc8a056              # double 0.37140647860588183
	.quad	0x3fc5dda81c153324              # double 0.17082692500334773
	.quad	0x3fb05ea84b734270              # double 0.063944357319323464
	.quad	0x3fb9d5c250046f70              # double 0.1009179540018843
	.quad	0x3fe5f3d88391c550              # double 0.68601632783080824
	.quad	0x3fc42ad2a39f5a50              # double 0.15755684842470652
	.quad	0x3fd7c1b9f1d1f1b0              # double 0.37119911780589643
	.quad	0x3feb58e4b3165b06              # double 0.85460123994821013
	.quad	0x3f7a39e8d6eba000              # double 0.0064028830808879889
	.quad	0x3fe62ae4d1021370              # double 0.69273606130501086
	.quad	0x3f915c122c200b40              # double 0.016952785437762019
	.quad	0x3fcba272a930a3c0              # double 0.21589501630049135
	.quad	0x3fd9e8549ce7ec58              # double 0.40480532954069792
	.quad	0x3fd4512b0e92e072              # double 0.31745411322800188
	.quad	0x3fa2680e49e63f30              # double 0.035950132866786055
	.quad	0x3fd794315e96e3a2              # double 0.36841997372862967
	.quad	0x3fe8ae84a4e78cc8              # double 0.77130348403843474
	.quad	0x3fcd3d2ebfbbe098              # double 0.22842964517599706
	.quad	0x3fb2f6ed36a0d1d8              # double 0.074080301129306192
	.quad	0x3febc856117d18b8              # double 0.86820510307077026
	.quad	0x3fee6d9bbdbb087a              # double 0.95087992722279968
	.quad	0x3fe653084320ae5d              # double 0.69763577566977697
	.quad	0x3f9b7404ff644f40              # double 0.026809766853218564
	.quad	0x3fe24de10329504d              # double 0.5720067083116277
	.quad	0x3fd3f3c0d4e47768              # double 0.31175251760747935
	.quad	0x3fdcecde1ea8abb2              # double 0.45195725435285816
	.quad	0x3fa1e05947ef06c0              # double 0.034914770155876962
	.quad	0x3fd01142329e9bdc              # double 0.25105338042561498
	.quad	0x3fe8c66bb58bbb1d              # double 0.77422128160637593
	.quad	0x3fc1960191e72160              # double 0.13739032386934991
	.quad	0x3f886baa17421bc0              # double 0.01192410357931617
	.quad	0x3fb000280d9a87b0              # double 0.062502387353133626
	.quad	0x3fe0c55f7b52a0b6              # double 0.52409338079907886
	.quad	0x3fdad49fa49fadb4              # double 0.41922751499688649
	.quad	0x3fd03b40f4e79612              # double 0.25361656109302644
	.quad	0x3fefa5fcbf8cbc8f              # double 0.98901212131558391
	.quad	0x3fed7d51eff5d41d              # double 0.92154785983314336
	.quad	0x3fc08f0e2f6b21d8              # double 0.12936570468288155
	.quad	0x3f9e3cd245f88780              # double 0.029528890152625831
	.quad	0x3fae4a071bb00fb0              # double 0.059158537034846304
	.quad	0x3fb0825499ea21f0              # double 0.064488685204316942
	.quad	0x3fee27adf2e2f564              # double 0.94234368742733609
	.quad	0x3fd36a3317d83c70              # double 0.30335690811711569
	.quad	0x3faa7192ba150fb0              # double 0.051647744383927274
	.quad	0x3fec0dea215a42ec              # double 0.87669855608154767
	.quad	0x3fec1eebca098ded              # double 0.87877454243101527
	.quad	0x3fe9e1818772a77d              # double 0.80877758459722282
	.quad	0x3fd96ad29fcc2efe              # double 0.39714494328721617
	.quad	0x3fe855b37a2a345f              # double 0.76046155796360526
	.quad	0x3fece1e3ab5858d5              # double 0.90257438150254166
	.quad	0x3fedc4cb8253631b              # double 0.93027282194370586
	.quad	0x3fedac9493e1ca5a              # double 0.92731694110109264
	.quad	0x3fc41169ce85c910              # double 0.15678141197310724
	.quad	0x3fdcc84e5ab1c224              # double 0.44972571236488279
	.quad	0x3fd0aee6b7e827d6              # double 0.2606751247373017
	.quad	0x3fe98eb1b15b56a0              # double 0.79866871490476754
	.quad	0x3fc64f126b4e5d54              # double 0.17428808440738897
	.quad	0x3fbe3544cffdf340              # double 0.11800031736306682
	.quad	0x3fcae8e6f6f83e50              # double 0.21023261126582549
	.quad	0x3fd1caebb584e9e4              # double 0.27801029898151186
	.quad	0x3fe05d05889ce5cf              # double 0.51135517770961225
	.quad	0x3fd575ca05eaed82              # double 0.33531427934550362
	.quad	0x3fd7df0705cfb5ba              # double 0.37298751418606069
	.quad	0x3fddc88a95c14e44              # double 0.46536507248422176
	.quad	0x3fe5f78327b3fb30              # double 0.68646390680792102
	.quad	0x3fc5dccc11da0924              # double 0.17080069419541488
	.quad	0x3fe39c80f9099805              # double 0.61285446777469643
	.quad	0x3fe1657523c22fce              # double 0.54363495811548446
	.quad	0x3fe1d154a05db301              # double 0.55680304833876459
	.quad	0x3fb1b7467592ced8              # double 0.069202808098278168
	.quad	0x3fd08bda6ff79ed0              # double 0.25853596624663755
	.quad	0x3fead3e24bd2331b              # double 0.8383647423630437
	.quad	0x3fe0a8063425e600              # double 0.5205107706562444
	.quad	0x3fe14bebdf0c52c5              # double 0.54051774562920996
	.quad	0x3fe65ea1b2b2144a              # double 0.69905171300400437
	.quad	0x3fe50aee35758adc              # double 0.65758428994407891
	.quad	0x3fe6d58f476893f2              # double 0.71356929728483309
	.quad	0x3fdbcc7f90f9a7b6              # double 0.43435658605323668
	.quad	0x3fe20d8dab72fb01              # double 0.56415446745072029
	.quad	0x3fea0c4c64a492e6              # double 0.81400127083597051
	.quad	0x3f9ea9c96b91e920              # double 0.029944560232686546
	.quad	0x3fdcb5ccacab7e8c              # double 0.44859616148276227
	.quad	0x3fc6895f8d5a8690              # double 0.176067298908539
	.quad	0x3fd99ab92a453aa2              # double 0.40006856086703568
	.quad	0x3fe800c017fc0d4b              # double 0.75009159740913256
	.quad	0x3fecef3280a85f30              # double 0.90419888618905553
	.quad	0x3fdbe15d06995952              # double 0.43563008922992197
	.quad	0x3fc64f53d14d3b10              # double 0.17429588050659861
	.quad	0x3fc9cd8bc7ea6bc0              # double 0.20158526669987786
	.quad	0x3fe9fa6498367725              # double 0.811815545359171
	.quad	0x3fe02553f398770f              # double 0.50455663277873153
	.quad	0x3fe871736defd878              # double 0.76384898635912091
	.quad	0x3fe716872aba6837              # double 0.72149999947874377
	.quad	0x3fd77e205191f2c0              # double 0.36707313505011641
	.quad	0x3fc3fb7d2c01a8d0              # double 0.15611233376268396
	.quad	0x3fec56bb2634ce53              # double 0.88558728658831354
	.quad	0x3febb618fbe8df7c              # double 0.8659787101851033
	.quad	0x3fe3b12aaf7947dd              # double 0.615376799318479
	.quad	0x3fefab07641da1ae              # double 0.98962754777772033
	.quad	0x3fb59c7ec4dd8338              # double 0.084419177115262367
	.quad	0x3fc60a40d8b77cdc              # double 0.17218790609238155
	.quad	0x3fd8960c1044bd94              # double 0.38415814961168704
	.quad	0x3fe593eaa272eb5f              # double 0.67430621841718252
	.quad	0x3fb1b985e2cadf98              # double 0.069237106198555387
	.quad	0x3feb40affed12b6b              # double 0.85164642113646261
	.quad	0x3fd61e684920cd4a              # double 0.34560591832560716
	.quad	0x3fe4aa8e23b0a2b3              # double 0.6458197304792378
	.quad	0x3fe257845808547a              # double 0.57318322366576457
	.quad	0x3fe53718c4a40fbb              # double 0.66297567755145026
	.quad	0x3fc151e3644935d4              # double 0.13531153103615046
	.quad	0x3fe5d20da398fc3a              # double 0.68189126923233023
	.quad	0x3fb741765916a6e8              # double 0.090842625379675135
	.quad	0x3fded65a927c70aa              # double 0.48183311753542546
	.quad	0x3fc79b1960e36448              # double 0.18442074995872049
	.quad	0x3fcdc23bd6850224              # double 0.23249004339778978
	.quad	0x3fe555d418ce72da              # double 0.66672711224563419
	.quad	0x3f93cee3a2d7bfc0              # double 0.01934390717900647
	.quad	0x3fe3ce4d469a81d5              # double 0.61893333234552961
	.quad	0x3fe35c40eba873bb              # double 0.60501142527538521
	.quad	0x3f9d72049d01f280              # double 0.028755256731971546
	.quad	0x3fe85aa46b7fee11              # double 0.76106472965278915
	.quad	0x3fed4050ce603495              # double 0.91410103137754339
	.quad	0x3fb46aad64607558              # double 0.079752766614963888
	.quad	0x3f94769428eba640              # double 0.019983592031087349
	.quad	0x3fe2a52384565c4d              # double 0.58265853736055251
	.quad	0x3feb890b28a442e3              # double 0.86047895372220429
	.quad	0x3fee062f4c9ad0eb              # double 0.93825497590890217
	.quad	0x3fe0a9ffe89ad51d              # double 0.52075190954807093
	.quad	0x3fb93779ab197c08              # double 0.098502735397673402
	.quad	0x3fe97a8c65e01246              # double 0.79620952508464238
	.quad	0x3fd13d317afe373c              # double 0.26935994158781162
	.quad	0x3fcc2137fd79d740              # double 0.21976375462298314
	.quad	0x3fe9093f8456113b              # double 0.78237892004884857
	.quad	0x3fe7ff0c3c3edb4d              # double 0.74988376394944967
	.quad	0x3fee7d97d5904768              # double 0.95283118926657284
	.quad	0x3fe05d254ab94e5c              # double 0.51137032122137382
	.quad	0x3fe9d09ac1ac22d5              # double 0.80671441866533178
	.quad	0x3fc62a2eb51e8a5c              # double 0.17316230624881512
	.quad	0x3fdccef885ce03aa              # double 0.45013249461049532
	.quad	0x3febb84a38ff5755              # double 0.86624632961568671
	.quad	0x3fe91b9850a2fcaa              # double 0.78461852788304509
	.quad	0x3fcff2a262134d10              # double 0.24959211148107174
	.quad	0x3feb423e45b9645a              # double 0.85183633440022821
	.quad	0x3fe266bf7d64b538              # double 0.57504248133560676
	.quad	0x3fda4812429bbdb2              # double 0.4106488848182962
	.quad	0x3fcdc0d371959338              # double 0.23244708105189615
	.quad	0x3fdb65d0cd63cc86              # double 0.42808933312989728
	.quad	0x3fdb39699ff96664              # double 0.42537918684465681
	.quad	0x3fd1ae7640b184a0              # double 0.27627331083028572
	.quad	0x3fdba16b2c7b23bc              # double 0.43172721237038636
	.quad	0x3fd3241d5b889956              # double 0.29907926501109239
	.quad	0x3fcebe98feeba0c4              # double 0.24019157836233351
	.quad	0x3fc5043f50e453f8              # double 0.1641921181659709
	.quad	0x3fa5499eafe02c00              # double 0.041577300042341392
	.quad	0x3fe05c606be72f3f              # double 0.51127644610230749
	.quad	0x3fe0f4e3985b5000              # double 0.52989368207136067
	.quad	0x3fdd49a41a3bcca6              # double 0.45761969148515858
	.quad	0x3fe9ca082ace8309              # double 0.8059120975559334
	.quad	0x3fe69751a66ad0f6              # double 0.70597155097359976
	.quad	0x3febd297b32eaded              # double 0.8694571017890077
	.quad	0x3fec78d0570fdc75              # double 0.88974778179443936
	.quad	0x3fe6398b502313e0              # double 0.69452443744432557
	.quad	0x3fe6e9fa5faab866              # double 0.71606177029549367
	.quad	0x3fb40193b83b1e70              # double 0.078149063566451237
	.quad	0x3fec5784d25acd1c              # double 0.88568345150852989
	.quad	0x3feac3d5b260d1b9              # double 0.83640560950748644
	.quad	0x3fed8a60f2b65c7e              # double 0.92314193157916669
	.quad	0x3fee5a5ac424f1bb              # double 0.9485296088164924
	.quad	0x3fdc9b729a3288d6              # double 0.44698777254428756
	.quad	0x3fddbf9bde329786              # double 0.46481987666117452
	.quad	0x3fd50871da9fd846              # double 0.3286404261592718
	.quad	0x3fe6d8d3caa70b3a              # double 0.713968177610105
	.quad	0x3fddb352228ac0e8              # double 0.4640698754619863
	.quad	0x3f7caf76caa54680              # double 0.0070032730385080066
	.quad	0x3fe68de5794b964a              # double 0.70482133570175987
	.quad	0x3fe0b53f7d979f2e              # double 0.52212500123730421
	.quad	0x3fe55b2bb7c41c93              # double 0.66737924472626486
	.quad	0x3fe6819b2a572bde              # double 0.70332105893737284
	.quad	0x3f8088cf9fc2c540              # double 0.0080734463338979489
	.quad	0x3fe5b3e26bcc383e              # double 0.67820855192417873
	.quad	0x3fec075bd3f7852e              # double 0.8758982791879697
	.quad	0x3fe1a1ce00a3093a              # double 0.55100154995333317
	.quad	0x3fd8684ca4d0f9da              # double 0.38136592955916415
	.quad	0x3fd4ee13f5fc6c18              # double 0.32703112623284047
	.quad	0x3fc808d11a27a4fc              # double 0.18776906754582245
	.quad	0x3fafb1530e4954f0              # double 0.06189975308795137
	.quad	0x3fde5cb3e449edc6              # double 0.47440812391115761
	.quad	0x3fe799dc34ec94a9              # double 0.73753176056620362
	.quad	0x3fecfabd4bd603b7              # double 0.90560784160344709
	.quad	0x3feb1411bac8df82              # double 0.84619986039523121
	.quad	0x3fd7c389713566f0              # double 0.37130962424781355
	.quad	0x3f93258da03666e0              # double 0.018697941688151754
	.quad	0x3fb89d60cbd27e20              # double 0.096151399384773572
	.quad	0x3fb4483e41df44d0              # double 0.079227343637529701
	.quad	0x3fe7a85bea711c81              # double 0.73930164136335474
	.quad	0x3fe0c8c6987bc3ac              # double 0.52450876027989102
	.quad	0x3fee23f909242405              # double 0.94189121041665713
	.quad	0x3fe8d451164d8856              # double 0.77591757160213137
	.quad	0x3fedbaf92e812976              # double 0.92907389719884637
	.quad	0x3fe9e5310827491d              # double 0.8092274817702535
	.quad	0x3fe46dd5afa9fb4a              # double 0.63840755757687728
	.quad	0x3feda4b30e07a0e2              # double 0.92635491123385472
	.quad	0x3fd1b6b10dc16bf4              # double 0.27677561133685846
	.quad	0x3fefa55183392f7a              # double 0.98893046979490795
	.quad	0x3fec47c0f510ac70              # double 0.88375900139125285
	.quad	0x3fbe9cea2471c4d8              # double 0.11958182706600284
	.quad	0x3fdbcf7f913a0ac6              # double 0.43453969175622509
	.quad	0x3fd195d10ca73850              # double 0.27476907954849583
	.quad	0x3fe826f1ace18dcd              # double 0.7547539116462133
	.quad	0x3fc82f95ac216e2c              # double 0.18895216851056895
	.quad	0x3fb3b915dd6f8ad0              # double 0.077042929231122103
	.quad	0x3fecd5d5fa4926fd              # double 0.90110300907073759
	.quad	0x3fd4ef6d61d8e728              # double 0.32711348109625016
	.quad	0x3fd681b8dcf9ae68              # double 0.35166760997410629
	.quad	0x3fd3a1b3681bb416              # double 0.30674443404024154
	.quad	0x3fe84e81f675804c              # double 0.75958345543404837
	.quad	0x3fec88bf619cb9f3              # double 0.89169282021413065
	.quad	0x3fc4da60a8bc9db4              # double 0.1629143546972337
	.quad	0x3fe302e965f49d2c              # double 0.59410543358982215
	.quad	0x3fd6683652c84172              # double 0.3501106079502484
	.quad	0x3fec98821522a7b0              # double 0.89361671569826306
	.quad	0x3fc64f75397c115c              # double 0.17429986292712385
	.quad	0x3fc8b1e021dfbd04              # double 0.19292832998278453
	.quad	0x3fec6cb931173466              # double 0.88827190006271617
	.quad	0x3fdfda0c5dbc635c              # double 0.49768361238380066
	.quad	0x3fe46895c38bfa79              # double 0.63776672547085334
	.quad	0x3fdb30785fa19b20              # double 0.42483338679305582
	.quad	0x3fe24929a45f9667              # double 0.57143098930528147
	.quad	0x3fbad301635ef328              # double 0.10478218723342236
	.quad	0x3fced67d85779c84              # double 0.24092072503046691
	.quad	0x3fd25a6a624dae04              # double 0.28676852798409436
	.quad	0x3fe166bedf82d2b0              # double 0.54379218725678946
	.quad	0x3fecd71fbcf3b184              # double 0.90126025108979535
	.quad	0x3fc32e5060739560              # double 0.1498508902506428
	.quad	0x3fe1092d8e20c544              # double 0.5323703552186676
	.quad	0x3fed4c185e3c0fc9              # double 0.915538963367447
	.quad	0x3fec23c69e623d66              # double 0.87936716970754669
	.quad	0x3fed031fc80461ec              # double 0.90663136545032108
	.quad	0x3fcd4f97d4ecf490              # double 0.2289914884258093
	.quad	0x3fe08b95505e8d22              # double 0.51703897187363546
	.quad	0x3fc3183b092bd454              # double 0.14917695949376031
	.quad	0x3fd757d4ab50490c              # double 0.36473576288075615
	.quad	0x3fe4738319706521              # double 0.63910059898913485
	.quad	0x3fe26bb73552162c              # double 0.57564888395490277
	.quad	0x3fe78dd677125c35              # double 0.73606417900271615
	.quad	0x3fc1244a94b92430              # double 0.13392002355456745
	.quad	0x3fe0b37f7962ebd7              # double 0.52191137035640167
	.quad	0x3f91558969177520              # double 0.0169278593437997
	.quad	0x3fe455d3332bfc37              # double 0.63547668451781802
	.quad	0x3fd6a0674453194a              # double 0.35354024574589415
	.quad	0x3fecf4e839ea272b              # double 0.90489589034516393
	.quad	0x3fed71ac90d2568d              # double 0.92012623105502345
	.quad	0x3fe09755b24155cd              # double 0.51847348037215968
	.quad	0x3fe3168f2d34d6b9              # double 0.59650381879210734
	.quad	0x3feaaf0a8af0f1fd              # double 0.83386733185722017
	.quad	0x3fefdc6d024c917c              # double 0.99565744828264213
	.quad	0x3fe33a46b4a6080f              # double 0.60086379321023908
	.quad	0x3fda7045c673bc8e              # double 0.41310257320487487
	.quad	0x3fd437bb67e02ef4              # double 0.31590161460984167
	.quad	0x3fd44916bb0d70fa              # double 0.31696098582121091
	.quad	0x3fe468edfda3c68d              # double 0.63780879534734114
	.quad	0x3fea584e7aa78541              # double 0.82327960925992028
	.quad	0x3fe9a61435c5c146              # double 0.80152330877721378
	.quad	0x3fefaf9b7cce2bf9              # double 0.99018644691511703
	.quad	0x3fbeca0237f02a98              # double 0.12026990762403
	.quad	0x3fc7225c54b5f3d4              # double 0.18073610435740639
	.quad	0x3fb6f4295a018c70              # double 0.089663109277852148
	.quad	0x3fddc28ef202162a              # double 0.46499990113838641
	.quad	0x3fca947933f05bc8              # double 0.2076560500724709
	.quad	0x3fb8b04003a04ed0              # double 0.096439362416556706
	.quad	0x3fdabb5539929990              # double 0.41768389341668755
	.quad	0x3fc43b2f834d9fc0              # double 0.1580562010888098
	.quad	0x3feff716d7ac5da3              # double 0.99891225932781357
	.quad	0x3fc29347d4295b34              # double 0.14511964663935262
	.quad	0x3fab08678ae32000              # double 0.052798495964054837
	.quad	0x3fb204b52fa09358              # double 0.07038433468603722
	.quad	0x3fe5dfca10f87e71              # double 0.68356803240381059
	.quad	0x3fb29438ff7adf60              # double 0.072574198124923495
	.quad	0x3fc8cdceb8c5cdd0              # double 0.19378074667075262
	.quad	0x3fe7a05d504fdcef              # double 0.73832574544840479
	.quad	0x3fef3dff9383046b              # double 0.97631815729995474
	.quad	0x3fe0463a9d37d4e1              # double 0.50857287127169226
	.quad	0x3fe755dab32baa14              # double 0.72923026079417008
	.quad	0x3fe3f443a4e421dc              # double 0.62356741147328476
	.quad	0x3fcfa4bee6ff1608              # double 0.24721514014360957
	.quad	0x3f84d439b92f82c0              # double 0.010170412982860255
	.quad	0x3fc45dded29ba6f0              # double 0.15911469729990513
	.quad	0x3fe2c9b7463d08d6              # double 0.58712352484169616
	.quad	0x3fecd4bafbdc6539              # double 0.90096806708894583
	.quad	0x3fdfdb358b896dac              # double 0.49775446535724188
	.quad	0x3fc3d79a8b1acd5c              # double 0.15501720230313765
	.quad	0x3fdffca31f8d65e0              # double 0.49979475098879611
	.quad	0x3febab56bc376cae              # double 0.86466538201366006
	.quad	0x3fd0ca937b4a30e0              # double 0.26236426391620959
	.quad	0x3fe80e54abc50b2e              # double 0.75174935864229098
	.quad	0x3fba4a69ac5a1488              # double 0.10269794900712459
	.quad	0x3fd117036c53df60              # double 0.26702962473745195
	.quad	0x3fed8fd50e349990              # double 0.92380764746194366
	.quad	0x3fb6b9b7375e28c8              # double 0.088771296517879184
	.quad	0x3fcead75c3eaf8f8              # double 0.23966857973386602
	.quad	0x3fe054d3dc3c5229              # double 0.51035492911120628
	.quad	0x3fef01f59e05a797              # double 0.96898918975533632
	.quad	0x3fe3455a3e1aaf24              # double 0.60221588258489023
	.quad	0x3fe542bf538947f4              # double 0.66439787212061541
	.quad	0x3fed0746b4384786              # double 0.90713820647418753
	.quad	0x3fea3ec81f92b2c4              # double 0.82016378561601088
	.quad	0x3fe72bdc2bca7ab9              # double 0.72410400917927753
	.quad	0x3fe25fcf3ca8f1f5              # double 0.57419549796719471
	.quad	0x3fe72fd8ae2a9dc6              # double 0.72459062592400225
	.quad	0x3fe359f54f61e1cf              # double 0.60473123077741231
	.quad	0x3fc02a3b0d350540              # double 0.12628877777937397
	.quad	0x3fd70518139add30              # double 0.35968591608566935
	.quad	0x3fec15aa45414cdf              # double 0.87764466787703188
	.quad	0x3fe7f578641db0dd              # double 0.74871463350202883
	.quad	0x3fd5ec55d4e305da              # double 0.3425497607205138
	.quad	0x3fe3f300682170a7              # double 0.62341327989590389
	.quad	0x3fd883eface11896              # double 0.38305274851553273
	.quad	0x3fe34a37d6b32e62              # double 0.6028098290784778
	.quad	0x3fdf8135b1f52f9a              # double 0.49226133707701936
	.quad	0x3fccaf58a8ab5c1c              # double 0.2241011451321534
	.quad	0x3fcbb32a7add01fc              # double 0.21640521048722394
	.quad	0x3fe4f9c92583a509              # double 0.65549142195701038
	.quad	0x3fe537915f399643              # double 0.66303318594572891
	.quad	0x3fe55ce704eb10bd              # double 0.66759062729445129
	.quad	0x3fe0346c637dbb94              # double 0.5063993399797817
	.quad	0x3fe0f049521694aa              # double 0.52933183701374742
	.quad	0x3fed0c634b4f8193              # double 0.90776219090553167
	.quad	0x3feade8742dc8316              # double 0.83966410693037363
	.quad	0x3fe90106638ab54b              # double 0.7813751167465538
	.quad	0x3fefde16baa498b3              # double 0.99586044744207524
	.quad	0x3fe88ca8a32e9ca8              # double 0.76717025634288394
	.quad	0x3f9b36e624e0b380              # double 0.026576610565985259
	.quad	0x3fdee5ca76467f1a              # double 0.48277532148675706
	.quad	0x3fe40e4ce5936a41              # double 0.6267456516173483
	.quad	0x3feea7e0645e220e              # double 0.95799274066036033
	.quad	0x3fd435d03081a342              # double 0.31578449952080601
	.quad	0x3fcf4cb46d409734              # double 0.24452834448418914
	.quad	0x3fb917e78e676488              # double 0.098021003977367127
	.quad	0x3fe40d8b87c73b5a              # double 0.62665344733418782
	.quad	0x3fea81502da2663e              # double 0.828285302285799
	.quad	0x3fcccf342c22ed54              # double 0.22507335810756024
	.quad	0x3fcdb07b03461f44              # double 0.23194825801715002
	.quad	0x3fef824b6ce3ff36              # double 0.98465510623643726
	.quad	0x3fd4fa00e358a066              # double 0.32775900079514597
	.quad	0x3fddb6f8c3d0e646              # double 0.46429270861299121
	.quad	0x3fe9d7b5ecb3dcfe              # double 0.80758186560606737
	.quad	0x3fea070bb86801ac              # double 0.8133600808796948
	.quad	0x3fea473073b7bef9              # double 0.82119009591221392
	.quad	0x3fea01e4e7e9bf33              # double 0.81273122115633212
	.quad	0x3fd1d44a5018ee52              # double 0.27858217069635771
	.quad	0x3fd037960b1c1264              # double 0.25339270672728831
	.quad	0x3feff4fb7f2ab30c              # double 0.99865507924332197
	.quad	0x3fe7251feca5c625              # double 0.72328182430482413
	.quad	0x3fee1db059df1d92              # double 0.94112412980114102
	.quad	0x3fe8660da22e909f              # double 0.76245767284537524
	.quad	0x3fb41a056f8f3b60              # double 0.078522052513319007
	.quad	0x3fe5c8c1d6719306              # double 0.68075649150395701
	.quad	0x3fedc8eb304d542a              # double 0.93077620920178572
	.quad	0x3fe00de485661a4d              # double 0.50169588140927035
	.quad	0x3fb904e3af27b330              # double 0.097730856192083548
	.quad	0x3fe7dfa1f95fd446              # double 0.74604891496586201
	.quad	0x3fe3a162b41b2cde              # double 0.61345038582785683
	.quad	0x3fe1623d8defc9ed              # double 0.54324224206930938
	.quad	0x3fef72ad93b2defb              # double 0.98274878356366401
	.quad	0x3fe940c14d4ec994              # double 0.78915467356846358
	.quad	0x3fc76a606a8555bc              # double 0.1829338569756781
	.quad	0x3fd2a3d9f38c64e0              # double 0.29125069412255122
	.quad	0x3fc96feb98e07dd4              # double 0.19872803654378279
	.quad	0x3feb3ecf472eb245              # double 0.85141719725431442
	.quad	0x3fe0695d1b49eb9e              # double 0.51286177949747347
	.quad	0x3feb593f0b6181c2              # double 0.85464431975201927
	.quad	0x3fd0060cd4c60e00              # double 0.25036927012135379
	.quad	0x3fe9ab974130067e              # double 0.80219614726975386
	.quad	0x3fe94557468f48ed              # double 0.78971446782295873
	.quad	0x3fde5bd78897d8c2              # double 0.4743555864255421
	.quad	0x3fd108db29a80310              # double 0.26616553371427276
	.quad	0x3fed14cca0deb0d1              # double 0.90878898067378533
	.quad	0x3feb87d970b03b4b              # double 0.86033317574934054
	.quad	0x3fe6c144cbb30333              # double 0.71109237465871045
	.quad	0x3fd4a42d37d7bd6e              # double 0.32252054646865858
	.quad	0x3fb731a98d809330              # double 0.090601536795088533
	.quad	0x3fe80488d3bff046              # double 0.750553525518179
	.quad	0x3fe73681edff718d              # double 0.72540375217390507
	.quad	0x3fe0c06a0698e148              # double 0.52348805702698886
	.quad	0x3fc56fe6a2d8efdc              # double 0.16747744514020624
	.quad	0x3fd6a504a0ced3be              # double 0.35382190421961102
	.quad	0x3f8b3579f97dad80              # double 0.013285592008932978
	.quad	0x3fcfcce4b8d6d8d4              # double 0.24844035172799883
	.quad	0x3fb7b1c7617100b8              # double 0.092556439675720692
	.quad	0x3fe6ec0c8a2748b7              # double 0.71631457312675806
	.quad	0x3fe3676ce36cb121              # double 0.60637516421187254
	.quad	0x3fd74075a51189ec              # double 0.36330929870578532
	.quad	0x3fe1838ce29db238              # double 0.54730839024484279
	.quad	0x3fee88e6afbe2ade              # double 0.95421156239293814
	.quad	0x3fea03c0357efb54              # double 0.81295786331598174
	.quad	0x3fddcda37a106fdc              # double 0.46567618294079494
	.quad	0x3fab42c56c249910              # double 0.053243798686070432
	.quad	0x3fdae4a26f65241e              # double 0.42020474317956935
	.quad	0x3fed2a034fde10f6              # double 0.91137853240118605
	.quad	0x3fe5b6cfa498baed              # double 0.67856580875181083
	.quad	0x3fe2355524e7da0a              # double 0.56901032646311589
	.quad	0x3fe48d01d54e8f51              # double 0.64221278821467298
	.quad	0x3fe5d7cd8b8df905              # double 0.68259312874559497
	.quad	0x3fd008a1489de350              # double 0.2505267342708537
	.quad	0x3fd91a78efd7e1f6              # double 0.39224074766346406
	.quad	0x3fea108c6932b9d5              # double 0.81452007814896865
	.quad	0x3fccf7742df20dac              # double 0.2263016914695134
	.quad	0x3fe22256878ecb76              # double 0.5666916511166693
	.quad	0x3feba8f1853a4b06              # double 0.86437297841106964
	.quad	0x3fe257081279abc5              # double 0.57312396629765117
	.quad	0x3fc8ab8fff61c0f0              # double 0.1927356717092219
	.quad	0x3fce41445d1acee8              # double 0.23636679216507805
	.quad	0x3fc41b10e71db098              # double 0.15707598957977065
	.quad	0x3fe39c506231bc38              # double 0.6128312986237523
	.quad	0x3fdf1483e026f0b2              # double 0.4856271447167827
	.quad	0x3fdbfd7dfa5171e8              # double 0.43734692998057634
	.quad	0x3fc7a1f6987d6b78              # double 0.18463022657200745
	.quad	0x3fd2afb9a99439d0              # double 0.29197541771364133
	.quad	0x3fe790e4d45ab5bc              # double 0.73643723941284334
	.quad	0x3fd92c4ed4293ae8              # double 0.39332934111454998
	.quad	0x3fd5d32120e26c2c              # double 0.34101131640790316
	.quad	0x3fda8d40e09e498a              # double 0.41487142501241492
	.quad	0x3feaefb71b520256              # double 0.84176211677556512
	.quad	0x3fc4f036c0098e4c              # double 0.16358074547598489
	.quad	0x3fbbf595ac4222e0              # double 0.10921607451940529
	.quad	0x3fce8b95d32e7da4              # double 0.23863480388261593
	.quad	0x3fa3f7ab58c1e230              # double 0.038998941979063395
	.quad	0x3fba915c41b1a718              # double 0.10378052333694787
	.quad	0x3fde550130c4adc0              # double 0.47393827211882567
	.quad	0x3fea0c6181231b73              # double 0.81401133749100862
	.quad	0x3fd2b4aa396128de              # double 0.29227691272229872
	.quad	0x3fe430de5123477e              # double 0.63096538398006863
	.quad	0x3fe800f112941c02              # double 0.7501149523603774
	.quad	0x3feacfbe7ab6c4fb              # double 0.83785938232008961
	.quad	0x3fe98fe5508092b9              # double 0.79881540034383314
	.quad	0x3fb7f5ee28e6ea10              # double 0.093596348749010127
	.quad	0x3fe045409bec6beb              # double 0.50845365957081634
	.quad	0x3fe97877e39bab01              # double 0.7959556050749087
	.quad	0x3fb1ba6b08da5208              # double 0.069250764523822395
	.quad	0x3feb1bb451f24424              # double 0.84713188176295206
	.quad	0x3fd0e89da78dacd0              # double 0.26419774401319973
	.quad	0x3fd1bc8ba477ac6e              # double 0.27713290272976721
	.quad	0x3fe99442b2b6c861              # double 0.79934821038319737
	.quad	0x3fc74c7a8e03aa28              # double 0.18202144560139399
	.quad	0x3fd802922d3f023a              # double 0.37515692156378899
	.quad	0x3fe15166da654580              # double 0.54118673949612628
	.quad	0x3fe9ffe861a9a330              # double 0.8124887378190575
	.quad	0x3f9bfa8f9d1407e0              # double 0.027323001825614202
	.quad	0x3fb856b719b62e08              # double 0.095073169495826559
	.quad	0x3fd537136fca4316              # double 0.33148656765938378
	.quad	0x3fc479147af13d4c              # double 0.15994506838840505
	.quad	0x3fef50fcf28313e3              # double 0.97863623967770896
	.quad	0x3fe74e0abfa68d88              # double 0.72827660972363706
	.quad	0x3fced3b905286988              # double 0.24083626510475775
	.quad	0x3fdf23f25804a3dc              # double 0.48656900973815964
	.quad	0x3fe8370b1ad778d0              # double 0.7567191623927787
	.quad	0x3febf22012ee40f7              # double 0.87330630967519951
	.quad	0x3fd1e07b0d08e5f4              # double 0.27932621262479462
	.quad	0x3fdd3b2e944701aa              # double 0.45673717956744986
	.quad	0x3fd774bcdf8b5ce6              # double 0.36650010900980445
	.quad	0x3fc0a8b26c95f1ac              # double 0.13014822294270567
	.quad	0x3fd98420d510b0c8              # double 0.39868946845195952
	.quad	0x3fec389422b93dd0              # double 0.88190657407715811
	.quad	0x3fe07c94b9d8025c              # double 0.51520763681044057
	.quad	0x3fef9c7f994aebaf              # double 0.98785381259891902
	.quad	0x3fd4af4ad7033fa6              # double 0.32319899556477549
	.quad	0x3feabb5a437b95f8              # double 0.83537018947816843
	.quad	0x3fba91192b6b0c88              # double 0.10377652463926001
	.quad	0x3fe36c91b6806884              # double 0.6070030750736497
	.quad	0x3fe2e58875eeedaf              # double 0.59051917108393137
	.quad	0x3fe9fde92514ec68              # double 0.81224496119047007
	.quad	0x3fe59ca3857386ae              # double 0.67537094177915491
	.quad	0x3fede3b21ca82476              # double 0.9340448913291215
	.quad	0x3fe66d9ae2c1bd3b              # double 0.70087951935230508
	.quad	0x3fee5d321c1c0fc0              # double 0.94887643327864878
	.quad	0x3fd9f971ae3c9964              # double 0.405849857476275
	.quad	0x3fef4addf041a4ee              # double 0.97788903164942353
	.quad	0x3fe804aa32c32639              # double 0.75056943811905008
	.quad	0x3fe52b4511c7855a              # double 0.6615319583180892
	.quad	0x3fd758e2369bf33a              # double 0.36480002720763915
	.quad	0x3fd5186d5ce20fa2              # double 0.3296159178792043
	.quad	0x3fd163ff9c92a34e              # double 0.27172842302620814
	.quad	0x3feed3423701cca5              # double 0.96328840964851691
	.quad	0x3fd414a33bf92716              # double 0.31375962120783762
	.quad	0x3fe191c734ac44db              # double 0.54904518401795188
	.quad	0x3fdd61aabafef146              # double 0.45908611546817146
	.quad	0x3fdc83ddf781b44a              # double 0.4455485264832687
	.quad	0x3fa353812142aef0              # double 0.03774646311771146
	.quad	0x3fe0488c84244043              # double 0.50885606583506904
	.quad	0x3fd7a8b70005a55e              # double 0.36967253687051549
	.quad	0x3fd9335c78295a48              # double 0.3937598393871764
	.quad	0x3fc882c800fca7e8              # double 0.19149112747373853
	.quad	0x3f9541f197c16b80              # double 0.020759367835448739
	.quad	0x3fe85f0ba3c668f3              # double 0.761602229951022
	.quad	0x3fd8dda44f29affc              # double 0.38852794390436407
	.quad	0x3fc012e0892450b4              # double 0.12557608314876278
	.quad	0x3fc9f1654d7c00c4              # double 0.20267931254784888
	.quad	0x3fe3193259b39f14              # double 0.59682576675274612
	.quad	0x3fe851bbc8a29e76              # double 0.75997723757332269
	.quad	0x3fe45ce7c6fc0bd7              # double 0.6363409887711623
	.quad	0x3fde5985093e9f54              # double 0.47421384718699255
	.quad	0x3fe8da2b9b2cc471              # double 0.7766321211585262
	.quad	0x3fe0013e24d93713              # double 0.50015170285198207
	.quad	0x3fea16e09244232c              # double 0.81529263084039405
	.quad	0x3fefbe17ff91aac3              # double 0.99195480266401891
	.quad	0x3fd9d4a0833c9f8c              # double 0.40360272232145955
	.quad	0x3fd56590347d8aa6              # double 0.33432393194213217
	.quad	0x3fe8edc7f02e98e1              # double 0.77902600203085737
	.quad	0x3fbd7608a8036908              # double 0.11508230306518297
	.quad	0x3fd07b98c8536a78              # double 0.25754375041075361
	.quad	0x3fe49bb9603b4f62              # double 0.6440092925572396
	.quad	0x3fe668645f86d30c              # double 0.70024317414808612
	.quad	0x3fa000eeb2f28260              # double 0.031257113784936008
	.quad	0x3fe22e6e72081a9a              # double 0.56816789886291308
	.quad	0x3fecfb22820b7bfe              # double 0.90565610312830791
	.quad	0x3fd93ce6ac75e734              # double 0.39434210626460531
	.quad	0x3fb8766c7c6d77c0              # double 0.095557003381570915
	.quad	0x3fd27b11ba092d46              # double 0.28876155059397879
	.quad	0x3fcacd18bbd804fc              # double 0.20938405201017207
	.quad	0x3fcf2bdf3f1c66d8              # double 0.24352636891926838
	.quad	0x3fba04f0002550d8              # double 0.10163784030493461
	.quad	0x3fd8b29f506aec60              # double 0.38590224126136796
	.quad	0x3fcc3d7b42843390              # double 0.22062626598235768
	.quad	0x3fcf06223c1235b4              # double 0.24237468655739536
	.quad	0x3fdd06b6905ef292              # double 0.45353473757476437
	.quad	0x3fd65c0358d4d33c              # double 0.3493660323613772
	.quad	0x3fe413aa21f85466              # double 0.62740046152852069
	.quad	0x3fb0c7035e9be338              # double 0.065536699865231252
	.quad	0x3fca0d4cb3783180              # double 0.20353087199363173
	.quad	0x3feefa15dc7e18ed              # double 0.96802800240473418
	.quad	0x3fc0ee168d14ccf8              # double 0.13226587189419781
	.quad	0x3fedb2d8979b3d92              # double 0.92808179484011277
	.quad	0x3fd5161679c66fee              # double 0.32947313205818218
	.quad	0x3fdb944aec7072aa              # double 0.43092606630106423
	.quad	0x3fee232787ebaeaf              # double 0.94179131075857991
	.quad	0x3fd1b3d02d1f7df6              # double 0.27659992605728634
	.quad	0x3fd555e1fd8899ca              # double 0.33336686858310982
	.quad	0x3fc93f4516cab614              # double 0.19724334347613193
	.quad	0x3fc5c5e45b28700c              # double 0.17010168505737544
	.quad	0x3fd52c7e714b597e              # double 0.3308406931295379
	.quad	0x3fefe7991a58dc77              # double 0.99702124734802921
	.quad	0x3fed558a56f6aee7              # double 0.91669194207267146
	.quad	0x3fee23ce5a1e17fd              # double 0.94187085724911379
	.quad	0x3fcc7ac1be2fff14              # double 0.22249624048708283
	.quad	0x3fd121b2ddc84808              # double 0.26768180521423846
	.quad	0x3fe40f036228d080              # double 0.62683266803516346
	.quad	0x3feb617d576fd196              # double 0.85565058782099146
	.quad	0x3fa74b75f4623cc0              # double 0.04549759491157479
	.quad	0x3fe8b888bbea368f              # double 0.77252613737228326
	.quad	0x3fe90f58e3dea736              # double 0.78312344079788576
	.quad	0x3fa99cd63aabec90              # double 0.050024695074136649
	.quad	0x3fed0edd15a620ab              # double 0.90806440571124847
	.quad	0x3fe2eed7813a6d71              # double 0.59165549507035398
	.quad	0x3fc2e371867eb9a8              # double 0.14756602351321857
	.quad	0x3fe4f6cbabd5de57              # double 0.655126414886534
	.quad	0x3fbb4bbb6df311c8              # double 0.10662433084787104
	.quad	0x3fe90d75ee80d484              # double 0.78289314825691791
	.quad	0x3fb5c01e5b506af8              # double 0.08496274690007144
	.quad	0x3feafc51ec58b894              # double 0.84330078278959996
	.quad	0x3fd141be3c5c75b4              # double 0.26963764090200049
	.quad	0x3fef5aa4e16b8472              # double 0.97981494929639568
	.quad	0x3fed4e827a2f33d8              # double 0.91583370079171811
	.quad	0x3fd542947ff8cf88              # double 0.33218872544534195
	.quad	0x3fb8ba45d0965310              # double 0.096592296051607684
	.quad	0x3fd39c4ff8569c02              # double 0.30641555072583071
	.quad	0x3fb6ea9f8f302608              # double 0.089517567117717189
	.quad	0x3fe55528dcdcdecb              # double 0.66664546143780379
	.quad	0x3fe78f5c4a7f7a21              # double 0.73625006246931346
	.quad	0x3fd6493e2462bc80              # double 0.34822038224496765
	.quad	0x3fe0e2bb2d38a053              # double 0.52767714340462601
	.quad	0x3fd51051cb6bc742              # double 0.32912106385548523
	.quad	0x3fdcd1b123c2043c              # double 0.45029858104686915
	.quad	0x3fab7723771fe310              # double 0.053643329898426129
	.quad	0x3fdab102aee6207c              # double 0.41705386238073294
	.quad	0x3fc809d75c6e2f58              # double 0.18780033124164208
	.quad	0x3fe9b1b1ecc34c1c              # double 0.80294128649473206
	.quad	0x3fd3b0675e83ab8e              # double 0.30764183263698264
	.quad	0x3fef212debcedfd4              # double 0.97280021721143805
	.quad	0x3feb7194418fc4d6              # double 0.85761463932990512
	.quad	0x3fdbe8f010457010              # double 0.43609239186275861
	.quad	0x3fd8d3f631e2d654              # double 0.38793711539924414
	.quad	0x3fcb900b3a108340              # double 0.21533336959057614
	.quad	0x3fee5315777457af              # double 0.94764207201909822
	.quad	0x3fa367c61961e8d0              # double 0.03790110645145861
	.quad	0x3fec0d32788acd84              # double 0.87661098044775132
	.quad	0x3fee0dbfb731f5e0              # double 0.93917833118728921
	.quad	0x3fc06a35a422efb4              # double 0.12824125780559614
	.quad	0x3fe8ccd41c31077d              # double 0.77500348573833799
	.quad	0x3fecf9ab0644d891              # double 0.90547705864334393
	.quad	0x3fcc9d7ca7cfdb20              # double 0.22355611986105206
	.quad	0x3fbb744776ce8fc0              # double 0.10724302912291162
	.quad	0x3f97d1e01bf59160              # double 0.023261548716065561
	.quad	0x3fe05799c631297e              # double 0.51069344243414583
	.quad	0x3fe6c00bf1cf52a7              # double 0.71094319561469355
	.quad	0x3fc5910b359a4d48              # double 0.16848888509103177
	.quad	0x3fd1157960d5c23e              # double 0.26693567711393829
	.quad	0x3fe2521b2f8b7e8d              # double 0.5725227287875484
	.quad	0x3fe8d5d9f9816a60              # double 0.77610491496609412
	.quad	0x3fee5a72e2678c5f              # double 0.9485411092722521
	.quad	0x3fe895e7bfbaf1b8              # double 0.7682989830714666
	.quad	0x3fec586ebb2c3732              # double 0.88579498822375613
	.quad	0x3fddc374a1dd58e0              # double 0.4650546627721166
	.quad	0x3fcde40253f091d0              # double 0.23352078531855947
	.quad	0x3fd3b3051783b64c              # double 0.30780150696123054
	.quad	0x3f761c12b1aa7200              # double 0.005397866271462437
	.quad	0x3febe6d08e955a6e              # double 0.87192561958620529
	.quad	0x3fc155ebc9d80c0c              # double 0.13543460231457549
	.quad	0x3fcfbdd82c67abe4              # double 0.24798109214984188
	.quad	0x3fd28430d4992140              # double 0.28931828271426596
	.quad	0x3fe5084f4e6ce336              # double 0.65726437871408083
	.quad	0x3fc222301d2a0c68              # double 0.14166833328281148
	.quad	0x3fe663277a18a696              # double 0.69960378500873577
	.quad	0x3fe3c6731fe6ac21              # double 0.61797481756855543
	.quad	0x3fd33e91d3e0661a              # double 0.30069394770689117
	.quad	0x3fea51fe52e4816a              # double 0.82250896635018234
	.quad	0x3fdce7936bc36a8a              # double 0.45163426898731329
	.quad	0x3fc6bc1f15c23c84              # double 0.17761601030767704
	.quad	0x3fbbaf7450943050              # double 0.10814597098595979
	.quad	0x3fe704e1d8e0e079              # double 0.71934597357814234
	.quad	0x3fe5afca25706238              # double 0.67770869552902635
	.quad	0x3f9fd5a9c1477ee0              # double 0.03108849756415466
	.quad	0x3fec2714020d3840              # double 0.87977028275214053
	.quad	0x3fcdcf29fe632d5c              # double 0.23288464471111581
	.quad	0x3fab80f79c41a780              # double 0.053718316864276083
	.quad	0x3fef599f085a58f7              # double 0.9796900904791802
	.quad	0x3fe58eddf59eb700              # double 0.67368982288982693
	.quad	0x3feb53abcbe8760d              # double 0.8539637548998954
	.quad	0x3fbec13d949e2558              # double 0.12013611677516189
	.quad	0x3fcf150bd437ea24              # double 0.24282977926471105
	.quad	0x3fdd805a78c8dbea              # double 0.46095907016154902
	.quad	0x3fde9e95e3470a88              # double 0.47842929072445672
	.quad	0x3fdd838347bbc4a6              # double 0.46115190510961168
	.quad	0x3fe4a32e441b4902              # double 0.64491952230517335
	.quad	0x3fa7d3cf75b5e580              # double 0.046537860030137601
	.quad	0x3fb269227951c160              # double 0.071916727656348822
	.quad	0x3fe6e8f958f7d3ef              # double 0.71593921066835076
	.quad	0x3fc0794b24d0b11c              # double 0.12870158479325589
	.quad	0x3fe7707613b4c6b1              # double 0.73247817849024532
	.quad	0x3fd72b6fb6932b2c              # double 0.36202614621713525
	.quad	0x3fd5984e5ce0bf54              # double 0.33742102689847298
	.quad	0x3fec3169772c4e72              # double 0.88103173519125577
	.quad	0x3fe694814c878fdf              # double 0.70562806079078289
	.quad	0x3fe604af07495e08              # double 0.68807174132501903
	.quad	0x3fec350655294047              # double 0.88147274621042804
	.quad	0x3fe319c9116cf21e              # double 0.59689763453895117
	.quad	0x3fdac214dcacf1fa              # double 0.4180957942042195
	.quad	0x3fdf896ed8d4d526              # double 0.49276324438990782
	.quad	0x3fed5bb772693735              # double 0.91744587274454281
	.quad	0x3fee6e9d73aa732e              # double 0.95100281325321645
	.quad	0x3fefa05db2dbad75              # double 0.98832592900491411
	.quad	0x3fe32cebec8554e3              # double 0.59923359103654794
	.quad	0x3fb660007ddab878              # double 0.087402373052755666
	.quad	0x3fe9b17997705ecf              # double 0.80291442468566199
	.quad	0x3fe28515b1468331              # double 0.5787456953440594
	.quad	0x3fe809ee93032b6f              # double 0.75121239388805161
	.quad	0x3fe654e9a3468231              # double 0.69786531343203795
	.quad	0x3fe49ef1021be14c              # double 0.64440203105827143
	.quad	0x3fefc60806d0fd1a              # double 0.99292374926872928
	.quad	0x3feb0d69e27e29ef              # double 0.84538740383987754
	.quad	0x3fe61f2e8abd0f0e              # double 0.69130637261739181
	.quad	0x3fc3334f458a8c70              # double 0.15000334640089674
	.quad	0x3fe248a4e06aee98              # double 0.57136768180449149
	.quad	0x3fea1233dfbd40f5              # double 0.81472200106693882
	.quad	0x3fe88c01998c8943              # double 0.76709060659440131
	.quad	0x3fdcfa3215564e74              # double 0.45277072986321021
	.quad	0x3fdcad71092a39fa              # double 0.44808603186621065
	.quad	0x3fe259da9d6b0057              # double 0.57346850152681383
	.quad	0x3fe4ef329e2d10b4              # double 0.65419894117123656
	.quad	0x3fe4011aca938413              # double 0.62513484540625297
	.quad	0x3fe0567a66941bbb              # double 0.51055641207573588
	.quad	0x3fea7b98e9e55cab              # double 0.82758756335069472
	.quad	0x3fba11f054a1f950              # double 0.10183622423389704
	.quad	0x3fec19b5788eb255              # double 0.87813828989380716
	.quad	0x3fe267404f0f4448              # double 0.57510390702567182
	.quad	0x3fe33f8f47dcb552              # double 0.60150875125479275
	.quad	0x3fe88b6f7c8ffdb2              # double 0.76702093437773144
	.quad	0x3faff6b956cb6740              # double 0.062429229588544022
	.quad	0x3fd68ee5b8c73e4a              # double 0.35247176213031095
	.quad	0x3f7bf229faa41a80              # double 0.0068227424437795614
	.quad	0x3fe76118f3c80a59              # double 0.73060271848255376
	.quad	0x3fe5bc30bbf5a648              # double 0.67922245703557227
	.quad	0x3fd4d2aced4899d0              # double 0.32535861179567593
	.quad	0x3fe9708f67e64ddd              # double 0.79499025624175668
	.quad	0x3fdc7bcf545c430e              # double 0.44505675543136725
	.quad	0x3fc3d4f6904cdb10              # double 0.15493661924275459
	.quad	0x3fe9ea18450c2fbd              # double 0.80982602582798047
	.quad	0x3feb1ca3dd89cf69              # double 0.84724610585406623
	.quad	0x3fee2068d021205d              # double 0.94145622873567059
	.quad	0x3fece97090537c4b              # double 0.90349605740255734
	.quad	0x3fe1abc79152e06a              # double 0.55221918471853582
	.quad	0x3fe533d2aea3bb18              # double 0.66257604703227724
	.quad	0x3fcb1aba1adaca9c              # double 0.21175314246427923
	.quad	0x3fe03f49a2f91cee              # double 0.50772554236109868
	.quad	0x3fb5ddfd6d236fd8              # double 0.085418547768710495
	.quad	0x3fc08003ea112324              # double 0.12890671662378239
	.quad	0x3fe4beb22d9bd795              # double 0.64827832134209251
	.quad	0x3fd102efcef1d16a              # double 0.26580424508508449
	.quad	0x3fd5f3fc83e6f27a              # double 0.34301674729412179
	.quad	0x3fa5265dc48db4c0              # double 0.041308336490013087
	.quad	0x3fc5b1b7757df660              # double 0.16948598133960768
	.quad	0x3feb24ac72409c81              # double 0.84822676005286735
	.quad	0x3fea992bec1ab655              # double 0.83119770158891504
	.quad	0x3fdc70c0a4016c94              # double 0.4443818666092707
	.quad	0x3fdd8be2a19d4cf6              # double 0.46166291983281782
	.quad	0x3fd0e4d848d4d0b2              # double 0.26396758186752856
	.quad	0x3fe62a5031ab714c              # double 0.69266519261467741
	.quad	0x3fd5a3b8498d867a              # double 0.33811766798871867
	.quad	0x3fc45a93af74534c              # double 0.15901418749913387
	.quad	0x3fd6d9b250c3c77c              # double 0.35703714263137676
	.quad	0x3fefd7a3e0f5a72d              # double 0.99507326066416157
	.quad	0x3fdbf6d92c776f36              # double 0.4369414266818582
	.quad	0x3fec511f824ac2f7              # double 0.88490271995223579
	.quad	0x3fd227de22292c92              # double 0.2836833318330686
	.quad	0x3fcd3f25161e6de0              # double 0.22848952846548709
	.quad	0x3fcf63b87b6b5e14              # double 0.24523073221529101
	.quad	0x3fc80f8c9aa6524c              # double 0.18797452498678735
	.quad	0x3fe3ade0ba76495c              # double 0.61497532289858325
	.quad	0x3fe817bd53a7d547              # double 0.75289789523109441
	.quad	0x3faa4e6428e50e90              # double 0.051379327766452154
	.quad	0x3fec4755bc01a6ac              # double 0.88370787353524837
	.quad	0x3fb4b6760a972c90              # double 0.08090913542325695
	.quad	0x3fd5a0f168662634              # double 0.33794818110672797
	.quad	0x3fe609e68ee51624              # double 0.68870857152132148
	.quad	0x3fef35119f13b4f7              # double 0.9752281290981547
	.quad	0x3fdf4dbb8f2ce284              # double 0.48911942464796021
	.quad	0x3fe08a50e17ca1c3              # double 0.51688427009963112
	.quad	0x3fccebdd5b5378a0              # double 0.22594801863937608
	.quad	0x3febcc6d93478cf2              # double 0.86870459332967997
	.quad	0x3fec2746c9c3fb09              # double 0.8797944966061958
	.quad	0x3fef105dcbed0c7f              # double 0.97074785069743529
	.quad	0x3fec7ab15ab3eb56              # double 0.88997714724915045
	.quad	0x3fb0fd2452c65990              # double 0.066362638672535335
	.quad	0x3fca8178304f0638              # double 0.20707609518835723
	.quad	0x3fd052a3ecd90652              # double 0.25504396562255238
	.quad	0x3fe6f95491fc88f3              # double 0.71793583405476935
	.quad	0x3fe8236c73d678a4              # double 0.75432417511526184
	.quad	0x3fd673fa11d32840              # double 0.35082866421419467
	.quad	0x3fe94672e003f162              # double 0.78984969857223697
	.quad	0x3fc1faf812b105f0              # double 0.14047146713896508
	.quad	0x3fec135db6886525              # double 0.87736402178703499
	.quad	0x3fcd96a2616f5568              # double 0.23115949399531677
	.quad	0x3fd6c159c1a95d46              # double 0.35555118477119085
	.quad	0x3fd3420f594a2972              # double 0.30090697974869507
	.quad	0x3fee35e3ae1ebe40              # double 0.94407829292135403
	.quad	0x3fe9729233b27c37              # double 0.79523573014365112
	.quad	0x3fc4274e8e081aac              # double 0.15744955001010419
	.quad	0x3fb2ad0b1ec0af28              # double 0.072952933319069602
	.quad	0x3fca0dd1d293fdf0              # double 0.20354674131520722
	.quad	0x3fe327901ef1955c              # double 0.59857946437538656
	.quad	0x3f84c945266b2c80              # double 0.010149517283386311
	.quad	0x3fe85ee1f94ae5b0              # double 0.76158236207918684
	.quad	0x3fe24e0635518d8b              # double 0.57202444471151759
	.quad	0x3fdb76e379b0ac1e              # double 0.42913138278771779
	.quad	0x3fe909e61078fdab              # double 0.7824583360415337
	.quad	0x3fe158248cbe9df9              # double 0.542009615794938
	.quad	0x3fefdd4b29ec4a6b              # double 0.99576337993705743
	.quad	0x3fd73626c9630cbe              # double 0.36268014589968434
	.quad	0x3fe976144c516869              # double 0.79566397577151549
	.quad	0x3f8451557acf3640              # double 0.0099207571128331339
	.quad	0x3fd781284875dcd4              # double 0.36725813938342111
	.quad	0x3fe61a33dcbd194d              # double 0.69069855797787627
	.quad	0x3fd3054892c398a4              # double 0.29719747860361623
	.quad	0x3fe747962e3cb605              # double 0.7274886038846381
	.quad	0x3fe7d821f7841095              # double 0.74513338416047026
	.quad	0x3feeb88d22e5c3b3              # double 0.96002823654099811
	.quad	0x3fced334b52f7e14              # double 0.24082049223851298
	.quad	0x3fe6eefe98015597              # double 0.71667413414495484
	.quad	0x3fa48cee12f3a510              # double 0.040137710393375881
	.quad	0x3fd03212b44d19cc              # double 0.25305621726547822
	.quad	0x3fecf525f844ddea              # double 0.90492533197442282
	.quad	0x3fd105b910cb8154              # double 0.26597429885989254
	.quad	0x3fdeb41d72b7aef4              # double 0.47974334910280381
	.quad	0x3fdc33f52f014764              # double 0.44067124929744339
	.quad	0x3fcf37a5329e28d4              # double 0.24388565990040567
	.quad	0x3fcc381a81f48db0              # double 0.22046214433167455
	.quad	0x3fd2d988a97f3666              # double 0.29452721168931928
	.quad	0x3fe67445137833b6              # double 0.70169309427875848
	.quad	0x3fab1f72f14987c0              # double 0.052974311784751205
	.quad	0x3feef0068f3e2804              # double 0.96680000283345224
	.quad	0x3fea91635aa94f49              # double 0.8302475710611158
	.quad	0x3fdb949e40338314              # double 0.43094593305254247
	.quad	0x3feed8c6abbe3e60              # double 0.96396192115384948
	.quad	0x3fed7c7cfeab408f              # double 0.92144632091550871
	.quad	0x3fe736f8c9308177              # double 0.72546042723483495
	.quad	0x3fddf745bf87cf1e              # double 0.46821731285239021
	.quad	0x3fd5c5a2d190c542              # double 0.3401877447641547
	.quad	0x3fe787dc65dde5d7              # double 0.73533458610398383
	.quad	0x3fd2f1b09c239b8c              # double 0.29600157974203323
	.quad	0x3fedbe0e81c7c95c              # double 0.92945027683007763
	.quad	0x3fedbcd67ba9a282              # double 0.92930149224146441
	.quad	0x3fef3cc131b31b81              # double 0.97616634089432363
	.quad	0x3fd1ed24fbd5de80              # double 0.28009914964011529
	.quad	0x3fe4fb0f44728a30              # double 0.65564692848812989
	.quad	0x3fea265c008fc192              # double 0.81718254193951823
	.quad	0x3fecb368222c8c84              # double 0.89690024065602402
	.quad	0x3fd49838ecc1c218              # double 0.32179091568744544
	.quad	0x3fd6a0843bb54118              # double 0.35354715185987251
	.quad	0x3fd63a41ae873f24              # double 0.34730569881229401
	.quad	0x3feb477034ed5fde              # double 0.85247049653389317
	.quad	0x3fb75d9ea13d44b8              # double 0.091272272458143955
	.quad	0x3fe1030308185e0c              # double 0.53161765652743176
	.quad	0x3fe70123f3ef575c              # double 0.71888921397724515
	.quad	0x3fe6014be49d9061              # double 0.6876582589288881
	.quad	0x3fe6f9e99e14a7b7              # double 0.7180069053185808
	.quad	0x3fe96d4ea2a1d8a0              # double 0.79459316028694004
	.quad	0x3f96262daf6133a0              # double 0.021630014256789232
	.quad	0x3fef80c531c29581              # double 0.98446902960556326
	.quad	0x3fe8e3d2fec175f3              # double 0.7778105712602027
	.quad	0x3fbf1eb5e530aa80              # double 0.12156235547505823
	.quad	0x3fdbbdbe31207b46              # double 0.4334559898142526
	.quad	0x3fefbdb440f21eca              # double 0.99190724072192293
	.quad	0x3fee1605924cb386              # double 0.94018820356505794
	.quad	0x3fbefda9ea7a6dd8              # double 0.12105810141149875
	.quad	0x3fe256c2335b6cc1              # double 0.57309064894379713
	.quad	0x3fd7ee57cd11febe              # double 0.37392230059047538
	.quad	0x3fd0231f88493bc6              # double 0.25214374837099418
	.quad	0x3fbfdaa962104f50              # double 0.12443026203282881
	.quad	0x3fc6a45684de8000              # double 0.17689019668341643
	.quad	0x3fec6a7a50df850c              # double 0.88799777789623268
	.quad	0x3fe9ae5740d64e89              # double 0.80253183997634026
	.quad	0x3fa8f4a3dbf1de90              # double 0.048741455649119136
	.quad	0x3fe0a939db05a4dc              # double 0.52065747049087063
	.quad	0x3fefdccfc32455b3              # double 0.99570453752192233
	.quad	0x3fefda9f7a893725              # double 0.99543737347423599
	.quad	0x3fd631e6d2a6c05e              # double 0.34679575511382221
	.quad	0x3fb55fdb8be33668              # double 0.083493920948251366
	.quad	0x3fc0f8d2f6a92fac              # double 0.13259350818623028
	.quad	0x3fe528e6603ea690              # double 0.66124266431616441
	.quad	0x3fe97a20981b306f              # double 0.7961581202339526
	.quad	0x3fd4283aee5b8174              # double 0.31495545651525636
	.quad	0x3fa0c696bf409040              # double 0.032765112730232193
	.quad	0x3fda6f884dafd494              # double 0.41305739962201327
	.quad	0x3fe10170718fff1d              # double 0.53142568760083331
	.quad	0x3fe82d7e1fb34f12              # double 0.75555330459107695
	.quad	0x3fcc82c181c6c7b4              # double 0.22274035298101824
	.quad	0x3fda173ed7bff090              # double 0.40766879147828039
	.quad	0x3fe529d13e676087              # double 0.66135465801473081
	.quad	0x3fe91ed75da7f32f              # double 0.78501480381200917
	.quad	0x3fe44a07d8dfa146              # double 0.63403694494358187
	.quad	0x3fc079e4b6e7ef94              # double 0.12871989184338573
	.quad	0x3fe223eb0143dd89              # double 0.56688452002610845
	.quad	0x3fdf57355036430a              # double 0.48969776948165189
	.quad	0x3fc5a37e9abcff14              # double 0.16905195766047909
	.quad	0x3fd51d0a8d52629c              # double 0.32989753533323962
	.quad	0x3fce0bc4b864f418              # double 0.23473414424543715
	.quad	0x3fb6c1c330b8e8b8              # double 0.088894080538838405
	.quad	0x3fd18d30301f6aba              # double 0.27424244594082448
	.quad	0x3fc3d2ff5213b90c              # double 0.15487662799518664
	.quad	0x3fe8e5dbad8dcb53              # double 0.77805885216944615
	.quad	0x3fc6c5b57e93dc04              # double 0.17790859871431064
	.quad	0x3fec5e12999d85c8              # double 0.88648347857468313
	.quad	0x3fe88e4c4b897bfb              # double 0.76737036469773956
	.quad	0x3fec721808c400e4              # double 0.88892747604407107
	.quad	0x3fe2d1cef8081127              # double 0.58811138576178201
	.quad	0x3fea2715a7f87761              # double 0.81727106863739263
	.quad	0x3fe8a8bb2ec6857e              # double 0.77059706817469453
	.quad	0x3feabbfe509c3290              # double 0.83544841522378199
	.quad	0x3fdbc6d5c41be502              # double 0.43401092673555308
	.quad	0x3fedcc0b30648660              # double 0.93115767909712232
	.quad	0x3fe1374ed7a5bc9e              # double 0.53800146216044076
	.quad	0x3feb9f66a5fb0abd              # double 0.8632081262406569
	.quad	0x3fd0658a274872aa              # double 0.25619748913031037
	.quad	0x3fe29c143d9cadc6              # double 0.58155262025450649
	.quad	0x3fdcd07750c80e80              # double 0.45022375954452087
	.quad	0x3fe49b0e4ff79acb              # double 0.64392772310824264
	.quad	0x3fe475a2fa30f9ce              # double 0.63935994019976206
	.quad	0x3fe8cc0ded5a89c4              # double 0.77490898473870872
	.quad	0x3feca79463a37169              # double 0.89545649967798824
	.quad	0x3feb9cd5fc0c349a              # double 0.86289500454008139
	.quad	0x3fd822dd0dff37da              # double 0.37712789885415321
	.quad	0x3fef7a76e0f0dddd              # double 0.98369926389471695
	.quad	0x3febe7af558d241d              # double 0.87203184804195966
	.quad	0x3fe09f310e9ad8ae              # double 0.51943257191193992
	.quad	0x3fda74cb4aff2c70              # double 0.41337854694274423
	.quad	0x3fbac4857dff8ee0              # double 0.10456117941026433
	.quad	0x3fec7e8040c207a3              # double 0.89044201515229238
	.quad	0x3f9a754f2e48c380              # double 0.025838124465909384
	.quad	0x3fb7d6a7b1ab80b8              # double 0.093119126202057312
	.quad	0x3feefb5737deba61              # double 0.96818123733630667
	.quad	0x3fdde7fca2f73c4e              # double 0.46728435434937843
	.quad	0x3fefb0dc7f0b2a55              # double 0.99033951581197732
	.quad	0x3fefa3227bb6b795              # double 0.98866390383567426
	.quad	0x3fe556bb145bf5a8              # double 0.66683725334558108
	.quad	0x3fe96209b29a27d5              # double 0.79321751483188996
	.quad	0x3f8f0565e3248fc0              # double 0.015147014612530429
	.quad	0x3fe61e9e56c108e6              # double 0.69123761123799166
	.quad	0x3fdf0fdf5372a2ac              # double 0.48534377240370463
	.quad	0x3fe0a1adfda3500a              # double 0.51973628557834783
	.quad	0x3feeb2197aecc41e              # double 0.95924066551936327
	.quad	0x3fd08f6cd21b0a1c              # double 0.25875397222640273
	.quad	0x3fc198f4eda9508c              # double 0.13748036961135701
	.quad	0x3f92c49fe2c3fc40              # double 0.018328188148185598
	.quad	0x3feb1d3e5612ba78              # double 0.84731976329005843
	.quad	0x3fe9c8c0803bd268              # double 0.80575585408821571
	.quad	0x3fc4d8d7503eba40              # double 0.16286746423925713
	.quad	0x3fea5e6ce0186ab2              # double 0.82402652519825481
	.quad	0x3fe24dfeb3d20577              # double 0.57202086564227173
	.quad	0x3fa0014ac07fd080              # double 0.031259857176253014
	.quad	0x3fc912eb8f21a67c              # double 0.19588989724006811
	.quad	0x3fdf92d13c31fec6              # double 0.49333601835676821
	.quad	0x3fcfb7b56956c3b4              # double 0.2477938427305425
	.quad	0x3fef9c8116419c9a              # double 0.98785452219898962
	.quad	0x3fc1b5f9b4843fb8              # double 0.13836594881331421
	.quad	0x3fee1a910031d658              # double 0.94074296987555339
	.quad	0x3fa9a67cbe8b9d60              # double 0.050098322162564157
	.quad	0x3fe83dc72468e60e              # double 0.75754124747544593
	.quad	0x3fde8a3b0abcb77e              # double 0.47718692825844033
	.quad	0x3fdacefcc266e304              # double 0.41888350472031299
	.quad	0x3feaf154e19362b3              # double 0.84195941980131861
	.quad	0x3fd148f8045365e2              # double 0.27007866308630757
	.quad	0x3fd42834f4f45ba2              # double 0.3149540321477905
	.quad	0x3fef48ef07f50e1f              # double 0.97765304140233755
	.quad	0x3fdc0f77ac9d814e              # double 0.43844405991514612
	.quad	0x3fe93ad1a926c8e6              # double 0.78843005216029094
	.quad	0x3fe85764603e72e0              # double 0.76066798017162895
	.quad	0x3fe8fc06d990541f              # double 0.78076498501707536
	.quad	0x3fee409f57755adf              # double 0.94538848001215203
	.quad	0x3fc44c2feead0ff0              # double 0.15857504991629368
	.quad	0x3fab4c75925c7c90              # double 0.053317712894789371
	.quad	0x3feace2bdec06c1c              # double 0.83766740328008237
	.quad	0x3fc084a735fbfa18              # double 0.12904825340224657
	.quad	0x3fdd4a6c31113630              # double 0.45766739646646482
	.quad	0x3fd9dbb3ef4fef3c              # double 0.40403459902130456
	.quad	0x3fbfb5503ac9e1c0              # double 0.12386037287968232
	.quad	0x3fee2bbcfd9e2bba              # double 0.94283914122330903
	.quad	0x3feee1b4796e068a              # double 0.96505187718158081
	.quad	0x3fe927eddc5a8126              # double 0.78612416303443378
	.quad	0x3fe7a60415f970d0              # double 0.73901562015410072
	.quad	0x3feef00a2aeda003              # double 0.96680172333162806
	.quad	0x3fee0f5a44a3bb46              # double 0.93937409788291215
	.quad	0x3fce8c4ae7d6c9d0              # double 0.23865639038338182
	.quad	0x3fde553676ecd14c              # double 0.47395097364212257
	.quad	0x3fa89ab51394c4e0              # double 0.048055323257708116
	.quad	0x3fe940e99988c806              # double 0.7891738890377844
	.quad	0x3fa06250e9d640b0              # double 0.032000092072054342
	.quad	0x3fdc80909f0836b4              # double 0.4453469803855612
	.quad	0x3fef21d783f4aed7              # double 0.97288108608833112
	.quad	0x3feffa88ee38975a              # double 0.99933287169981644
	.quad	0x3fc2a724b827d6bc              # double 0.14572581283544206
	.quad	0x3fe4228e16ecce8a              # double 0.62921814420265432
	.quad	0x3fe727484e106e7b              # double 0.72354521986876763
	.quad	0x3fd00867cd5fc462              # double 0.25051302963317401
	.quad	0x3fd42abbf3f07f40              # double 0.31510828802310087
	.quad	0x3fdd893972d15bf4              # double 0.4615005131976766
	.quad	0x3fd8ca35f6693c7a              # double 0.38734196723539294
	.quad	0x3fcb040147ccce44              # double 0.21105972295628039
	.quad	0x3fe0f0aff53b8ac3              # double 0.52938077828397245
	.quad	0x3fdada6defb4df12              # double 0.41958187493172361
	.quad	0x3fead1e78becacb3              # double 0.83812310532575507
	.quad	0x3fb8845ae9f83da0              # double 0.095769579049593378
	.quad	0x3fdadb0a64eb368c              # double 0.41961917739249865
	.quad	0x3fdfaced17996610              # double 0.49492957405672744
	.quad	0x3fc528204a72b5b0              # double 0.16528705248985665
	.quad	0x3fe753d158935c9f              # double 0.7289816598885358
	.quad	0x3fa316f5ca8e0170              # double 0.037284546829144172
	.quad	0x3fbcf11f382a81a0              # double 0.11305422898522588
	.quad	0x3fed471f06e042b5              # double 0.91493178694698563
	.quad	0x3fd626ec9c90036e              # double 0.3461257485324073
	.quad	0x3fe1154067536d7f              # double 0.53384418660009192
	.quad	0x3f98e4c0d7908a20              # double 0.024310124547023304
	.quad	0x3fd3749d7749d200              # double 0.30399262093786206
	.quad	0x3fe53de6768d38c5              # double 0.66380618242853784
	.quad	0x3fdffb1beb820fbe              # double 0.49970148085435173
	.quad	0x3fe4b4d9d89be8be              # double 0.64707653337907067
	.quad	0x3fed6caec27cc051              # double 0.919516925676371
	.quad	0x3fecac49fa586d6d              # double 0.89603136916723047
	.quad	0x3fecdf64aa85960a              # double 0.90226968102496241
	.quad	0x3fd9298b29dfb95a              # double 0.39316062058687395
	.quad	0x3fd733c560bbb5d8              # double 0.36253485151868636
	.quad	0x3fe0cab1c35df42e              # double 0.52474296720141012
	.quad	0x3fd0a111ac05f14a              # double 0.25983087348119638
	.quad	0x3fd50a9f085d5a5c              # double 0.32877326790677386
	.quad	0x3fdfb2d7590545e8              # double 0.4952906007138993
	.quad	0x3fde3ef690db70a0              # double 0.47259296556672759
	.quad	0x3fe1eaf6af1b010d              # double 0.5599320812252998
	.quad	0x3fee7bf5e1f56771              # double 0.95263189442196794
	.quad	0x3fd03b568d96beae              # double 0.2536217100814423
	.quad	0x3fd59e9c06aceeb2              # double 0.33780575420289971
	.quad	0x3fd4570629a7a288              # double 0.31781152789930234
	.quad	0x3fd83cc4a5d66e70              # double 0.37870899386482559
	.quad	0x3fd7ded33c75e806              # double 0.37297516731598568
	.quad	0x3fd6219714686d7a              # double 0.34580018036805138
	.quad	0x3fdc55a03882ebbc              # double 0.44272618788425766
	.quad	0x3fdccde55ecb3ff6              # double 0.45006689316960491
	.quad	0x3fe3fece8f351582              # double 0.62485435457408323
	.quad	0x3fe76bed96e77922              # double 0.73192481492495554
	.quad	0x3fe254a3eaab3943              # double 0.57283206781156826
	.quad	0x3fc888f37cb2dba8              # double 0.19167941654970133
	.quad	0x3fe0dfe5b6fa2cf7              # double 0.52733121621841306
	.quad	0x3fb60452627d7bd0              # double 0.086003445668651368
	.quad	0x3fd15bd161f3ad60              # double 0.27122911992656462
	.quad	0x3fd9f394c69d1cf4              # double 0.40549201389190093
	.quad	0x3fd12db18f6677d8              # double 0.26841391567165607
	.quad	0x3fcf92f8008ac7ac              # double 0.24667263056249789
	.quad	0x3fd2335dea25a1ae              # double 0.28438518396299173
	.quad	0x3fd71d6b2a17978c              # double 0.36117056952058912
	.quad	0x3fe6cd89fa6fd573              # double 0.71259020722815902
	.quad	0x3fea69314fabc44d              # double 0.8253408962319867
	.quad	0x3fe9132a0e3b59c5              # double 0.78358938960700952
	.quad	0x3fee9635fb12f8a7              # double 0.95583628690635158
	.quad	0x3fe91850cf423b44              # double 0.78421822052209977
	.quad	0x3fc959bd6342635c              # double 0.19805114123007683
	.quad	0x3fe4578feac5156f              # double 0.6356887421940608
	.quad	0x3fdf9f7f53ce832e              # double 0.4941099470543574
	.quad	0x3fdba81ceddd302c              # double 0.43213580349834291
	.quad	0x3fe88e97cbf54a74              # double 0.76740636668757966
	.quad	0x3fc69bb09c796da4              # double 0.17662627830837352
	.quad	0x3fd486a7ce285b7e              # double 0.32071871883947967
	.quad	0x3fe640b795d158d7              # double 0.69540004025727853
	.quad	0x3fdc3e291e9daa14              # double 0.44129398336250003
	.quad	0x3fe3216c845dc0e5              # double 0.59783006527689209
	.quad	0x3fe44febd22517cf              # double 0.63475600284504619
	.quad	0x3fe6103dad59d7ad              # double 0.68948253495795131
	.quad	0x3fd97bb1c06b07ae              # double 0.39817470351055817
	.quad	0x3fe6be82cd6b456a              # double 0.71075573082832233
	.quad	0x3fd227f562c687ac              # double 0.28368887563749001
	.quad	0x3fe4ec25be2bce50              # double 0.6538265909461618
	.quad	0x3fd21b398b582ae4              # double 0.28291166885234831
	.quad	0x3fea58cbc4d78bb9              # double 0.82333935208986653
	.quad	0x3fb7d441ecc19830              # double 0.093082542707265458
	.quad	0x3fe306e2b1d63a74              # double 0.59459051831966159
	.quad	0x3fe22112a1e5de4c              # double 0.56653720493972903
	.quad	0x3fd3f08c17919512              # double 0.31155683805111878
	.quad	0x3fc78556ffb41604              # double 0.18375670896072915
	.quad	0x3fba74d17102f368              # double 0.10334500321455453
	.quad	0x3f759ea21d025600              # double 0.0052782375861588626
	.quad	0x3fceb5929331070c              # double 0.2399161547382892
	.quad	0x3fe768acf2e0cde7              # double 0.73152778088700365
	.quad	0x3fc6853681d3f340              # double 0.17594033564810196
	.quad	0x3fb25717c5d2bea0              # double 0.071641431614575257
	.quad	0x3febf7b7ef3bbe11              # double 0.87398907399432535
	.quad	0x3fe5c111e00bbae6              # double 0.67981809386205039
	.quad	0x3fa8323f1b216750              # double 0.047258350431276797
	.quad	0x3fe7bede7261a802              # double 0.74204943027621106
	.quad	0x3fc8b608397b8d4c              # double 0.19305517966049945
	.quad	0x3fcafad0797c3270              # double 0.21077924663440539
	.quad	0x3fe7c2b652119410              # double 0.74251857785259467
	.quad	0x3fe8906e34b4acfe              # double 0.76763067525953921
	.quad	0x3fbeb17b406cb058              # double 0.11989565203538299
	.quad	0x3fd1057138359c5a              # double 0.26595716942978742
	.quad	0x3feb355e1b8c1aca              # double 0.85026460056618558
	.quad	0x3fe70d9f8e867500              # double 0.72041299664456915
	.quad	0x3fe94932e34f6a18              # double 0.79018539806867505
	.quad	0x3fbc5dc07387d5c8              # double 0.11080553837367468
	.quad	0x3fd6bc9e47b19760              # double 0.35526234628047426
	.quad	0x3feb080fc3471613              # double 0.84473407879039752
	.quad	0x3fbd0e5a682fd260              # double 0.11350026172278538
	.quad	0x3fdbadf80cb5784a              # double 0.43249322167492166
	.quad	0x3fe03aab86586467              # double 0.50716186751664061
	.quad	0x3fe1708295fe99c4              # double 0.54498414321715716
	.quad	0x3fe7aaa5784f2a9d              # double 0.73958085534953322
	.quad	0x3fefe3046d517495              # double 0.9964620719071201
	.quad	0x3fe588d4035895d3              # double 0.67295265821001704
	.quad	0x3feba445b0b08ab1              # double 0.86380276212397267
	.quad	0x3fdd89f90a81da70              # double 0.46154619241807548
	.quad	0x3fd88a30e566716a              # double 0.38343450929985201
	.quad	0x3fec0df73546df0f              # double 0.87670479207642582
	.quad	0x3fe99c8fe4832b73              # double 0.80036158210110242
	.quad	0x3fded40755bc96c4              # double 0.48169120190355508
	.quad	0x3fed05114aaa437b              # double 0.9068685968687612
	.quad	0x3fe4e0b96484f841              # double 0.65243215210626471
	.quad	0x3fec163c0211cfa9              # double 0.87771416095937582
	.quad	0x3fd757644b256138              # double 0.36470897043684003
	.quad	0x3fea4220059a7cd6              # double 0.82057190985133377
	.quad	0x3fa0be15083bfcc0              # double 0.032700211768309284
	.quad	0x3fee4f5ea06a083f              # double 0.94718867617508085
	.quad	0x3fe411eabab601d7              # double 0.62718712298379387
	.quad	0x3feb7eca46db045c              # double 0.85922731245967609
	.quad	0x3fdc02f112a57580              # double 0.4376795465558061
	.quad	0x3fee17eb4d97bbbe              # double 0.94041981844735978
	.quad	0x3fe0322477af4330              # double 0.50612090469267024
	.quad	0x3fee357aaca554dc              # double 0.9440282222737113
	.quad	0x3fb48f4e6007ffa0              # double 0.080311678357246397
	.quad	0x3fe03c36e0504283              # double 0.50735038577302338
	.quad	0x3fe18def3db64edb              # double 0.54857599309113014
	.quad	0x3fe6fa6bf3df22ad              # double 0.71806905394722309
	.quad	0x3fce7cd2ce3edec4              # double 0.23818430967889104
	.quad	0x3fe8f96cb14db7d6              # double 0.78044733647925102
	.quad	0x3fd53f043509378c              # double 0.33197121791169404
	.quad	0x3fe11578407790bc              # double 0.53387081710072648
	.quad	0x3fc06055d953b924              # double 0.12793992149040279
	.quad	0x3fcac7539cf391e4              # double 0.20920796550411958
	.quad	0x3fd98ad736c977aa              # double 0.39909916258136013
	.quad	0x3fbe319865a71718              # double 0.11794426423793103
	.quad	0x3fdcbf9ed073b20e              # double 0.44919557911524144
	.quad	0x3fd54a21d2ed8844              # double 0.33264966581748845
	.quad	0x3fad287112643db0              # double 0.056949170584739917
	.quad	0x3fead7fb92651ead              # double 0.83886507599614435
	.quad	0x3fef75a11c018278              # double 0.98310904951001898
	.quad	0x3fe3e238442978b7              # double 0.62136472046747471
	.quad	0x3fcf1a85709c5888              # double 0.24299686430521583
	.quad	0x3fdbf87a59c688bc              # double 0.43704088942662245
	.quad	0x3fec60d8b745ec8d              # double 0.88682208819899844
	.quad	0x3fd150627e73a614              # double 0.27053129528812403
	.quad	0x3fd714653cddbd82              # double 0.36061984008753012
	.quad	0x3fd6ee5c6631e4e4              # double 0.35829839687319365
	.quad	0x3fea6f7e09dab429              # double 0.82610990452451916
	.quad	0x3fedf42839552826              # double 0.93605433652669912
	.quad	0x3fdeabff705b886a              # double 0.47924791309754389
	.quad	0x3fd463429442531a              # double 0.31855835417199929
	.quad	0x3fd049f9e4214438              # double 0.25451514509501605
	.quad	0x3fc6b9e35e77ea68              # double 0.17754785645213933
	.quad	0x3fe2bb3c7334d354              # double 0.58535597325554045
	.quad	0x3fd42dfe0a990746              # double 0.31530715022028166
	.quad	0x3feaf356f35f8800              # double 0.84220454725095806
	.quad	0x3fe861b60464ea92              # double 0.76192761286013622
	.quad	0x3fb1fe14c7eebc68              # double 0.070283221065197687
	.quad	0x3fef958628b925e2              # double 0.98700244859463404
	.quad	0x3fe4f2e7fcd4e47a              # double 0.65465163594411924
	.quad	0x3fef80a34d256c4e              # double 0.98445286815275224
	.quad	0x3fc0d6efba5c0074              # double 0.13155933951930232
	.quad	0x3fce1bd217504a34              # double 0.23522401941643667
	.quad	0x3fc26b35e2a12b5c              # double 0.1438968044843375
	.quad	0x3fe1e1f2c1ad5f7c              # double 0.55883157565675345
	.quad	0x3fd770998deadbe6              # double 0.36624754771349755
	.quad	0x3fdd6c78b5cf015e              # double 0.45974557642695923
	.quad	0x3fe1edb183ef08e3              # double 0.56026530998522295
	.quad	0x3fccedc69b98cb84              # double 0.22600634191038804
	.quad	0x3fda0d13eb529e76              # double 0.40704820614562409
	.quad	0x3fcea89c3ea5d044              # double 0.2395205789467828
	.quad	0x3feefbb601f43da6              # double 0.96822643644002393
	.quad	0x3fe1e76d1fc250fc              # double 0.55950027659358126
	.quad	0x3fb4cb9fa448c888              # double 0.081232049568628395
	.quad	0x3fecaaee231c6ec0              # double 0.89586550576810708
	.quad	0x3fab12e58e5ab790              # double 0.052878545405618316
	.quad	0x3fa13042fb6d27f0              # double 0.033571332160661771
	.quad	0x3fe9e9565c66bf29              # double 0.80973356291903997
	.quad	0x3fcccd4e0b296458              # double 0.22501540703777567
	.quad	0x3feb0eed1a2d3e0a              # double 0.84557204353944937
	.quad	0x3fe71e683b4deb57              # double 0.72246181090245443
	.quad	0x3feedf7892a6c4f9              # double 0.96477917330608342
	.quad	0x3fbc72fab6f314f0              # double 0.11112944571057759
	.quad	0x3fe0445c4d5a845e              # double 0.50834479435082947
	.quad	0x3fd0dbf3a3791ca8              # double 0.26342478717965401
	.quad	0x3fedfd190e6720f5              # double 0.9371457368188475
	.quad	0x3fe3c3a4d47c1efb              # double 0.61763230801531621
	.quad	0x3fc6ff3d405bda84              # double 0.17966428415794067
	.quad	0x3fd3f12792d06d36              # double 0.31159390771218243
	.quad	0x3fd41a4c169dd794              # double 0.31410505493783458
	.quad	0x3fe8734ccbfd514d              # double 0.76407470552161671
	.quad	0x3fe54f8871e86d30              # double 0.66595861671104295
	.quad	0x3fd1e2164fe15aee              # double 0.27942426491556105
	.quad	0x3fee26a028e25616              # double 0.9422150419729316
	.quad	0x3feafcf83a7fdf29              # double 0.84338008332904224
	.quad	0x3fe9d8654c70c5bf              # double 0.80766549043453739
	.quad	0x3fe9ea071cebb285              # double 0.80981784485409547
	.quad	0x3fe434310741f870              # double 0.63137103478926626
	.quad	0x3fd15ddc3870f11e              # double 0.27135377418359663
	.quad	0x3fe0fc68c69f2893              # double 0.53081167977622312
	.quad	0x3fd49c04c67f1b08              # double 0.32202262291359363
	.quad	0x3fd5e380f614e8aa              # double 0.34201072722829429
	.quad	0x3faf38fcb0bf70e0              # double 0.060981651855145591
	.quad	0x3fd4573b6ffc2450              # double 0.31782422958400947
	.quad	0x3fea9ef6f41d1cc0              # double 0.83190486601315428
	.quad	0x3f9cc89e28cd3280              # double 0.028109046211556521
	.quad	0x3fecad5b84949609              # double 0.89616180319416217
	.quad	0x3febee232808d412              # double 0.87281949824557814
	.quad	0x3fd0cf0293da9dc6              # double 0.26263489188064815
	.quad	0x3f64a27af68b3300              # double 0.0025188829061789653
	.quad	0x3fc7a0579b51f2a0              # double 0.18458075603475255
	.quad	0x3fd2fe80a4be1176              # double 0.29678360069399135
	.quad	0x3fe8fb261b920c3d              # double 0.78065781960356839
	.quad	0x3fda474fe40bc252              # double 0.41060254354582526
	.quad	0x3fd14a0b7004ba86              # double 0.27014432849220105
	.quad	0x3fe5c9d8d74c17a7              # double 0.68088953066102398
	.quad	0x3fe2da76a5aba691              # double 0.58916790349504045
	.quad	0x3fd2cfbf498ddf5c              # double 0.29392988379503548
	.quad	0x3fea586f6d8521e8              # double 0.82329532042154785
	.quad	0x3fd25b678336652a              # double 0.28682887853354322
	.quad	0x3fb3e292fcf38b10              # double 0.077675997501085669
	.quad	0x3fdbe7b087d83de6              # double 0.4360162092789025
	.quad	0x3fef9a4708f4c962              # double 0.98758270024545092
	.quad	0x3fee3d2b2b69529e              # double 0.94496687392036782
	.quad	0x3fb91258d4c41790              # double 0.097936202950306361
	.quad	0x3fe86c9522bd71da              # double 0.76325470719489918
	.quad	0x3fe299c20a6790a0              # double 0.58126928360117702
	.quad	0x3fef1b0074aa4331              # double 0.97204611574315979
	.quad	0x3fd67ef8fa6e9ec6              # double 0.35149979072819482
	.quad	0x3fe840df35dc4572              # double 0.75791893500915664
	.quad	0x3fe2847a331dec54              # double 0.57867155059592301
	.quad	0x3fd5a24d47b1ae58              # double 0.33803112031339344
	.quad	0x3fd1dc2461110266              # double 0.27906140784401712
	.quad	0x3fbe722b733dad48              # double 0.11892959178446916
	.quad	0x3fd23ab6d79c1df8              # double 0.2848336320462006
	.quad	0x3fef80791a2d6340              # double 0.9844327460551554
	.quad	0x3fc7f057d0e3a8c8              # double 0.18702218722984854
	.quad	0x3fb575327e2f15f0              # double 0.083819537932036558
	.quad	0x3fe6315362b6c8c6              # double 0.69352120666578609
	.quad	0x3f97cd93f6c01420              # double 0.023245155272906826
	.quad	0x3fe7caf16c7e8768              # double 0.74352332296642221
	.quad	0x3fecb67eca329fe6              # double 0.89727725497959621
	.quad	0x3fec3781c2b3d184              # double 0.88177574184241835
	.quad	0x3fd6c4475aaebd9c              # double 0.35572990279885075
	.quad	0x3f6263c7aaa98000              # double 0.0022448444117770805
	.quad	0x3fc2bf2461a86130              # double 0.14645819443172448
	.quad	0x3fb572fba6bea140              # double 0.083785751542227338
	.quad	0x3fded4cefe808e22              # double 0.48173880437590999
	.quad	0x3fdbd8cc853798fa              # double 0.4351073552083019
	.quad	0x3fe8d0b5af5b10a1              # double 0.77547725915112065
	.quad	0x3fe24fd9490a2eb4              # double 0.57224716439801293
	.quad	0x3fee4a468f1fb173              # double 0.94656684831492865
	.quad	0x3fda9f6f9f7e7266              # double 0.41598120284633067
	.quad	0x3fda8e0af38d1c50              # double 0.414919603198034
	.quad	0x3f57ae8800063400              # double 0.0014454200864719713
	.quad	0x3fd99b280ecda25c              # double 0.40009499974852303
	.quad	0x3fecac7b9d8f789e              # double 0.8960550381996375
	.quad	0x3fb55af4bb132dc8              # double 0.083419128105723606
	.quad	0x3feb80012c3533e1              # double 0.85937555918064501
	.quad	0x3fec916066144ef6              # double 0.89274616181725608
	.quad	0x3feef81f16b1898d              # double 0.9677882617218515
	.quad	0x3fd2eb293a34eb78              # double 0.2956030910897236
	.quad	0x3fec7ed53bc05be6              # double 0.89048253698535684
	.quad	0x3fed80f966f036e9              # double 0.92199392418998827
	.quad	0x3f8c0f435586a300              # double 0.013700986907524193
	.quad	0x3fd9447ef9a71218              # double 0.39480566387308746
	.quad	0x3fea67219d8dcc64              # double 0.82508927128072828
	.quad	0x3fef656dad2b0eac              # double 0.98113139936363813
	.quad	0x3fd0f6a6b0d0800e              # double 0.26505439059292335
	.quad	0x3fec39ea8eb3437e              # double 0.88206985350744538
	.quad	0x3fe0af3bef64e21b              # double 0.52139088398604672
	.quad	0x3fc58664d154f530              # double 0.1681638738754514
	.quad	0x3fd67cf39f36d088              # double 0.35137644336942531
	.quad	0x3fd5333dd8b63558              # double 0.33125253833062152
	.quad	0x3fd0bdce19316e1c              # double 0.261584782221435
	.quad	0x3fe948cfda88ee46              # double 0.79013817484469295
	.quad	0x3febfda284269554              # double 0.87471128283201915
	.quad	0x3fd670e2792b4112              # double 0.35063993294626628
	.quad	0x3fcdf242a8c37ccc              # double 0.23395570030604629
	.quad	0x3fed757f103e323d              # double 0.92059281513645141
	.quad	0x3f70bf61e80bce00              # double 0.0040887665243078963
	.quad	0x3fd584f09679bd4c              # double 0.33623900122525607
	.quad	0x3fcbeac9568e9e50              # double 0.21810261465474179
	.quad	0x3fe0c4075ff67ef8              # double 0.52392929785489084
	.quad	0x3fdf231b864e7f4e              # double 0.4865177928531822
	.quad	0x3fcbd1660ef998bc              # double 0.21732784014893081
	.quad	0x3fa32c53f7cf8250              # double 0.037447570801081853
	.quad	0x3fec4feb6c9da17f              # double 0.88475581373226919
	.quad	0x3fea67b176bad775              # double 0.82515786351608134
	.quad	0x3fbcbe256dc7e840              # double 0.11227640085408641
	.quad	0x3f7360d6fd530380              # double 0.0047310255078522045
	.quad	0x3fd7c47339acb880              # double 0.37136536247533769
	.quad	0x3fda3e69ab6b36ee              # double 0.41005937328451025
	.quad	0x3fe5393e69374e3d              # double 0.6632377676964506
	.quad	0x3fc2226b744e6058              # double 0.141675407209507
	.quad	0x3fe478cc0755f6ce              # double 0.63974572594426049
	.quad	0x3fd947bcbddf75ae              # double 0.3950034956195293
	.quad	0x3fdf81b242703958              # double 0.49229103553888853
	.quad	0x3feb24ff5f8901bc              # double 0.84826630267348646
	.quad	0x3faa92024e724dd0              # double 0.051895210338581799
	.quad	0x3fb8e3f12f138c40              # double 0.097228120797397288
	.quad	0x3fd405af6c894dc0              # double 0.31284700011493882
	.quad	0x3fe94dce80bfe317              # double 0.79074788233183113
	.quad	0x3fc1b234741f0e98              # double 0.13825088186250833
	.quad	0x3fbc3fe5fc944a98              # double 0.11035001198278349
	.quad	0x3fb0071c0aaffc88              # double 0.062608482941856392
	.quad	0x3fe1be9babca0c19              # double 0.55451758911692928
	.quad	0x3feafea932b6d6f0              # double 0.84358653931732697
	.quad	0x3fd079b7735e036e              # double 0.25742899195034041
	.quad	0x3fe176acc93e3e5f              # double 0.545736687710768
	.quad	0x3fc791196b614718              # double 0.18411557906306864
	.quad	0x3fed0df2e3fe56c0              # double 0.90795273332579285
	.quad	0x3fd00a8af7f47600              # double 0.25064348425243566
	.quad	0x3fd01cabd0fddd6c              # double 0.25174994859067712
	.quad	0x3fe60fe731f8df76              # double 0.68944129715144586
	.quad	0x3feaf61626afe7b5              # double 0.84253985935287423
	.quad	0x3fd58c592cd3fa3c              # double 0.33669118287790289
	.quad	0x3f68f9f42b202600              # double 0.0030488747515888814
	.quad	0x3fed45b7ac36c6e4              # double 0.91476043353597136
	.quad	0x3fba389e59906208              # double 0.10242643057461731
	.quad	0x3fe2457fe934ba75              # double 0.57098384426156079
	.quad	0x3fe7bdd14f023838              # double 0.74192109519368099
	.quad	0x3fe2fe8e2401bbe2              # double 0.59357363731930612
	.quad	0x3fbef5e1fa4aa988              # double 0.12093937264095278
	.quad	0x3fe0ea4c54c03454              # double 0.52860085060968709
	.quad	0x3feb7792981d472b              # double 0.85834626874768583
	.quad	0x3fed65674d12760b              # double 0.91862835934779363
	.quad	0x3faa0580c53ef490              # double 0.050823234632369041
	.quad	0x3fe1071eb6a07a90              # double 0.53211913747129991
	.quad	0x3fe83ea41a6883b2              # double 0.75764660985816179
	.quad	0x3fc214de1e0a97e0              # double 0.14126183001388792
	.quad	0x3fe0c80e3d04a0e6              # double 0.52442085187524579
	.quad	0x3febb7ba731bf19d              # double 0.86617777330643586
	.quad	0x3fe1c93c61fac883              # double 0.55581492554325995
	.quad	0x3fd7e1a9fbb4cd2c              # double 0.37314843731583625
	.quad	0x3fd09ee20fb608a0              # double 0.25969745191845028
	.quad	0x3fdf8d5e4858c3a0              # double 0.49300343575583305
	.quad	0x3fb2966ce1853d18              # double 0.072607808169085408
	.quad	0x3fcf528d3270d300              # double 0.24470677340436708
	.quad	0x3fb380f02f7bb1a8              # double 0.076186191170285356
	.quad	0x3fd2c6e900f08104              # double 0.293390513341379
	.quad	0x3fac6e2dcbc85c90              # double 0.055528098226369171
	.quad	0x3fdd0ebcfc496856              # double 0.45402454984071505
	.quad	0x3fda221bdf2f3eac              # double 0.40833184047094551
	.quad	0x3fd0e3f4baa9343e              # double 0.26391332844361048
	.quad	0x3fe79e3f1edbfbd0              # double 0.73806720759591293
	.quad	0x3fbc04a263f57258              # double 0.10944571438216977
	.quad	0x3fdef91c8f1054e8              # double 0.48395456286500727
	.quad	0x3fccc0c1b39e1ec4              # double 0.22463246603387266
	.quad	0x3feccc635bec9d09              # double 0.89994972185095989
	.quad	0x3fe303142aec39af              # double 0.59412582763052579
	.quad	0x3febe6f9a547d754              # double 0.87194521218655518
	.quad	0x3fb23216ffbc38b0              # double 0.071076810298310589
	.quad	0x3fd99b11f54e4218              # double 0.4000897307933271
	.quad	0x3fe1a8bddcd467a1              # double 0.55184834605028155
	.quad	0x3f9389afad94d520              # double 0.019079918832365483
	.quad	0x3fc540a2fc61bec4              # double 0.16603505442934907
	.quad	0x3fc352563fa28440              # double 0.15095022303742844
	.quad	0x3fd95e9685ea037c              # double 0.39639819219160422
	.quad	0x3fc2d0ae28c5bffc              # double 0.14699341765253837
	.quad	0x3fd83ab59d9602e8              # double 0.37858333958869972
	.quad	0x3fee0a852221eb6d              # double 0.93878418604377389
	.quad	0x3fe38a64073778d7              # double 0.6106434002829485
	.quad	0x3fef77bcb663c9b9              # double 0.98336635230071245
	.quad	0x3fd318e2d5afb534              # double 0.29839392535980669
	.quad	0x3feca4f1c11039c4              # double 0.89513480861369787
	.quad	0x3fea135855f2a72e              # double 0.81486145769779283
	.quad	0x3fe60525c66d1a2d              # double 0.6881283641349164
	.quad	0x3fea93ecdc77cb1a              # double 0.83055728016038022
	.quad	0x3fc6194b4067b3cc              # double 0.17264691014079714
	.quad	0x3fdf4ed7f597b74a              # double 0.48918723090797711
	.quad	0x3fd6b4ae9b82fb7a              # double 0.35477795778927368
	.quad	0x3fcb612894b1865c              # double 0.21390254269049336
	.quad	0x3fefa8e82153e6fc              # double 0.9893685007984625
	.quad	0x3fb989cf651b0110              # double 0.099759065803486146
	.quad	0x3fd18ddc0cedbe2a              # double 0.27428342115942661
	.quad	0x3fea64aa6723fe7e              # double 0.82478828568123652
	.quad	0x3fb67a33e7f39788              # double 0.087802166107932789
	.quad	0x3fe834f2cd74cebe              # double 0.7564634335344278
	.quad	0x3fdf13abfe05655a              # double 0.48557567412134051
	.quad	0x3fa9d373bcde2a90              # double 0.050441376500278357
	.quad	0x3fdf67ee81bdb38c              # double 0.49071848554631781
	.quad	0x3fd03ce9a745dbd0              # double 0.25371781668894489
	.quad	0x3fd99e5268a2f014              # double 0.40028820246129837
	.quad	0x3fd93ab3a4feb362              # double 0.39420786965165722
	.quad	0x3fdcf34d363eb596              # double 0.45234995171889503
	.quad	0x3fe94817a796df25              # double 0.79005034191411438
	.quad	0x3faf79f04f6bcf80              # double 0.061477193541491282
	.quad	0x3f8cc459c23cf440              # double 0.014046384086777164
	.quad	0x3fecd732da5b780f              # double 0.9012693657675771
	.quad	0x3fce0255ededb8e0              # double 0.23444627874000101
	.quad	0x3fc8fe0beb390ab0              # double 0.19525288568009591
	.quad	0x3fb07635957c9fb8              # double 0.064303730960658778
	.quad	0x3fdc7a3284721412              # double 0.44495833334104973
	.quad	0x3fe6cb4261ef8a4b              # double 0.71231192710940527
	.quad	0x3fe1bb52e6d7f716              # double 0.55411667906421047
	.quad	0x3fda5a348992d72a              # double 0.41175568995400857
	.quad	0x3fe61f8c1828d792              # double 0.6913509818902972
	.quad	0x3fe97bcb103f49b1              # double 0.79636147664341739
	.quad	0x3fdb8f6b516b542e              # double 0.43062861395930241
	.quad	0x3fe3a1727fa5377d              # double 0.61345791750657919
	.quad	0x3fd29a5536c371d2              # double 0.29066973064416601
	.quad	0x3fe1bf1b9f29f23b              # double 0.55457860075654908
	.quad	0x3fc6c069dabeb870              # double 0.17774699383648196
	.quad	0x3fd1bbfce88b6b68              # double 0.27709887227472629
	.quad	0x3fd98b2645ab8ff0              # double 0.39911801151015336
	.quad	0x3fe1d0faaaf51e31              # double 0.55676015272269386
	.quad	0x3fdb2714c5bd891c              # double 0.42426032362540567
	.quad	0x3fe393e659661877              # double 0.61180417500214801
	.quad	0x3fa2e57ae1822890              # double 0.036907043483624169
	.quad	0x3fe449c30f0cc2f3              # double 0.63400414409087913
	.quad	0x3fdee6dc08c50620              # double 0.48284054619225181
	.quad	0x3feb670de0a0717e              # double 0.85632985947044893
	.quad	0x3fe4c6fa0c377c88              # double 0.64928915392000963
	.quad	0x3fce3011ef0db948              # double 0.23584198162593339
	.quad	0x3fef7c1472022ab9              # double 0.98389646785047724
	.quad	0x3fd9a2cb26739192              # double 0.40056113009475169
	.quad	0x3fe81d37138e3c8f              # double 0.75356630153136617
	.quad	0x3fdac41075d13352              # double 0.41821681504807373
	.quad	0x3fec1e72e0b7635f              # double 0.87871688737787312
	.quad	0x3fe704494621a0ea              # double 0.71927322099238933
	.quad	0x3fe7686cc0de7a33              # double 0.73149717015969029
	.quad	0x3fea4efb80699eae              # double 0.82214140968877358
	.quad	0x3fe4618f903943fb              # double 0.63690927666368624
	.quad	0x3feb525b4691da29              # double 0.85380328925277127
	.quad	0x3f9766c7b8815ac0              # double 0.02285301269179274
	.quad	0x3fe02acd970adc2d              # double 0.50522498608086652
	.quad	0x3fd81dc1ba22bea8              # double 0.37681620766941615
	.quad	0x3fc093230dedb818              # double 0.12949026279551457
	.quad	0x3fd0274b3ca72512              # double 0.25239830897460636
	.quad	0x3fe67fc42a91a0eb              # double 0.7030964690611915
	.quad	0x3fee7f9a9d0ebcc6              # double 0.95307665515238038
	.quad	0x3fedb0f878696aff              # double 0.92785285489966884
	.quad	0x3fea15b510af6ac7              # double 0.81514981516678453
	.quad	0x3fed504ec0cbb623              # double 0.91605317740840453
	.quad	0x3fd1ef110f7beeea              # double 0.28021646988029991
	.quad	0x3fdecbf950318a9a              # double 0.48119957763098287
	.quad	0x3fe4f9026f70efd4              # double 0.65539666906215155
	.quad	0x3fe62754f33e1921              # double 0.6923012495833839
	.quad	0x3fec5c4688193a4d              # double 0.88626410085437046
	.quad	0x3fa4942012126bb0              # double 0.040192606168793943
	.quad	0x3fe2c403d55f64f9              # double 0.58642760919897718
	.quad	0x3fa44af25182b170              # double 0.039634296846403738
	.quad	0x3fe76a2f78035c85              # double 0.73171208801331089
	.quad	0x3f8c42288e8480c0              # double 0.013798062180797266
	.quad	0x3fb80e074dfec928              # double 0.093964058439074294
	.quad	0x3feabd51451f5a68              # double 0.83561004162295394
	.quad	0x3fe1995f903ef03b              # double 0.54997232602136792
	.quad	0x3fd94f96cf631eb6              # double 0.39548273327498451
	.quad	0x3fb855591dd1b888              # double 0.095052308826526155
	.quad	0x3fddc67b6f180e50              # double 0.46523938988705016
	.quad	0x3fd78daf994f9a0c              # double 0.36802282306453615
	.quad	0x3fed0c569f7c67a2              # double 0.90775614881134836
	.quad	0x3fa36f79c93998e0              # double 0.037959867299649508
	.quad	0x3fd805bfce58f10a              # double 0.37535090590587628
	.quad	0x3fd3b19c5ca4a856              # double 0.30771550223528743
	.quad	0x3fe8a64184a2c31a              # double 0.77029491334369316
	.quad	0x3fe8c67d6f75186f              # double 0.77422973412536844
	.quad	0x3feb48736f0a1492              # double 0.85259410560014914
	.quad	0x3fd201fb4fa4d04c              # double 0.28137095239367649
	.quad	0x3fe73cb49fd41bf4              # double 0.72616034714235278
	.quad	0x3fe0b3096fbb7f87              # double 0.52185508558976401
	.quad	0x3fe2c092fb77893e              # double 0.58600758661876973
	.quad	0x3fe9da9c35c8d881              # double 0.80793581490321753
	.quad	0x3fd3f66c7a669994              # double 0.31191551163865339
	.quad	0x3fb8dc5d4ba0a4f8              # double 0.097112494434117624
	.quad	0x3fe14bf145ff1fb0              # double 0.54052032157141205
	.quad	0x3fecf187e9db3c30              # double 0.90448375392032254
	.quad	0x3fe298cf34338130              # double 0.58115349002404137
	.quad	0x3fd660573f1a5de6              # double 0.34963017618562586
	.quad	0x3fef8646c6d6ac1c              # double 0.98514117084176033
	.quad	0x3fe4c3ce5507cda2              # double 0.64890209777370367
	.quad	0x3fdd446a700277fc              # double 0.45730076731149416
	.quad	0x3fe0be9de3b626e1              # double 0.52326864695461606
	.quad	0x3fef77f9b7c67884              # double 0.98339544194801975
	.quad	0x3f983cae552ed300              # double 0.023668979596283002
	.quad	0x3fd03d611984c4d8              # double 0.25374629489949774
	.quad	0x3fe1068b457ee065              # double 0.53204883168565387
	.quad	0x3fdc2f014e3eb82c              # double 0.44036896363366185
	.quad	0x3fdbdc976460448e              # double 0.43533882906292198
	.quad	0x3fb8846823b032f8              # double 0.095770367348631313
	.quad	0x3feba896373f9189              # double 0.86432944098173536
	.quad	0x3fe5176d2a0c5749              # double 0.65910967075863269
	.quad	0x3fe76037a2cf9d40              # double 0.73049527930280789
	.quad	0x3fda7e66e2a3e3aa              # double 0.41396495945769607
	.quad	0x3fe0a19294c8f046              # double 0.51972321567110025
	.quad	0x3fed92453446ca2e              # double 0.9241052647615271
	.quad	0x3fdc09c3f5fc6536              # double 0.43809603712141454
	.quad	0x3fef1012d249bda1              # double 0.97071209976086347
	.quad	0x3fce04e96fecffc4              # double 0.23452489819646705
	.quad	0x3feadf070896ee02              # double 0.83972503354692685
	.quad	0x3fdaf1d3668d544a              # double 0.42100987448549587
	.quad	0x3fd9eb10754c4178              # double 0.40497218565817361
	.quad	0x3fb13811b0792bb0              # double 0.067261796554858533
	.quad	0x3feb40250b3e747a              # double 0.85158016391836999
	.quad	0x3fbce7fb4d36ea48              # double 0.11291475901718073
	.quad	0x3fe8bfb073443e36              # double 0.77339956772806917
	.quad	0x3fc5782414ea50d0              # double 0.1677289106488673
	.quad	0x3fe75dfb3bb1729d              # double 0.73022233637637479
	.quad	0x3fed4f41b92f8649              # double 0.91592489403792243
	.quad	0x3fee8adf10c76551              # double 0.95445206906439684
	.quad	0x3fee89916b8aa653              # double 0.95429297451227979
	.quad	0x3fbd6b083422c050              # double 0.11491442940564522
	.quad	0x3fe50cf42ebcb1bf              # double 0.65783127907121031
	.quad	0x3fe46767b890c7a7              # double 0.63762270019491474
	.quad	0x3fc307eb08ce3344              # double 0.14867914133028581
	.quad	0x3fba8963083d3d40              # double 0.10365885687973719
	.quad	0x3fe7d6dfd29ac56c              # double 0.74497977384286918
	.quad	0x3fe7222b1f92a2f5              # double 0.72292095343172369
	.quad	0x3fe0483bac27e38f              # double 0.5088175165575296
	.quad	0x3feefa1b251ab67a              # double 0.9680305218405032
	.quad	0x3fe2fb8f28e977d8              # double 0.5932079123556333
	.quad	0x3fe940872a04fa44              # double 0.78912695128367049
	.quad	0x3fe7412df421b045              # double 0.72670648271515204
	.quad	0x3fd806d93368bc48              # double 0.37541799564764178
	.quad	0x3fea7487426e4324              # double 0.82672465300320086
	.quad	0x3fe5a56f6c4158a9              # double 0.67644473212819378
	.quad	0x3feeb7fe23b1c48b              # double 0.9599600503116944
	.quad	0x3feb21c06f0fec8b              # double 0.84787007991634888
	.quad	0x3fe66d6eb5e09f06              # double 0.70085845492300858
	.quad	0x3fe492b11a5f8ee5              # double 0.64290671492605311
	.quad	0x3fe8f720f121b9b0              # double 0.78016707511942762
	.quad	0x3feaa8c21e224161              # double 0.83310037503728662
	.quad	0x3fe8d4a06b24c46d              # double 0.7759553997658607
	.quad	0x3faa65fbaf1f60f0              # double 0.051559319617526245
	.quad	0x3fda61055f06baf0              # double 0.41217169074927451
	.quad	0x3fd96abc590141fa              # double 0.3971396321476558
	.quad	0x3fe266d15a34485b              # double 0.57505099885953415
	.quad	0x3fe784769105eddb              # double 0.73491981816135465
	.quad	0x3fef3962f4c5572f              # double 0.97575519377526187
	.quad	0x3fe75a4546e8d1c6              # double 0.72976936196806075
	.quad	0x3fed2cb269334b49              # double 0.9117061667151144
	.quad	0x3f8bb6c5c7787e80              # double 0.013532204770910328
	.quad	0x3fdb9c7f8a1aa7d0              # double 0.4314268921540334
	.quad	0x3fded31e3093eb30              # double 0.48163561576773173
	.quad	0x3fd502d070d08f26              # double 0.32829676644381534
	.quad	0x3fe56ad18ab7d588              # double 0.66928937047366421
	.quad	0x3fdca925f4fd3ac8              # double 0.44782399105762893
	.quad	0x3fee91f10e575f2f              # double 0.95531513978037264
	.quad	0x3fd4e40da54d0862              # double 0.32641926901499663
	.quad	0x3fda919f3662cea0              # double 0.41513805686120442
	.quad	0x3f9318f26fb43b00              # double 0.018649852817413937
	.quad	0x3fe0a2381139e919              # double 0.51980212559218153
	.quad	0x3fc0f7ba975f4908              # double 0.13256008521290874
	.quad	0x3fe50d80fa0b90de              # double 0.65789841496419021
	.quad	0x3fd390a774fe78b6              # double 0.30570398736189064
	.quad	0x3fbe1f23592f80b8              # double 0.11766262938863548
	.quad	0x3fe8d707e9bc3cc2              # double 0.77624889041353407
	.quad	0x3fed518cb3c96a78              # double 0.91620478739362365
	.quad	0x3fe7babe87fb34ca              # double 0.74154593046991946
	.quad	0x3fe123c92a8d7cd0              # double 0.5356183844668525
	.quad	0x3fc93a390d50aa5c              # double 0.19708932066108076
	.quad	0x3fb3df10bb03e820              # double 0.077622457178137427
	.quad	0x3fcf2e50c4557f14              # double 0.24360093676204342
	.quad	0x3fd938de1f80c8de              # double 0.39409592701407614
	.quad	0x3fdf79b6c9b9c16c              # double 0.49180383395925875
	.quad	0x3fe12e41cf652c9a              # double 0.53689661509396847
	.quad	0x3fdf9e5e70d73906              # double 0.4940410711250397
	.quad	0x3feab5330b8ad4cc              # double 0.8346190667567952
	.quad	0x3fda42171dd1dd2e              # double 0.41028383171165472
	.quad	0x3fedb33dfcd76cb4              # double 0.92813014395814841
	.quad	0x3fe64ff1c6ff6c28              # double 0.69725884310480968
	.quad	0x3fe14ef10550428a              # double 0.54088641202732046
	.quad	0x3fe42db4a7f7c343              # double 0.63057930761542769
	.quad	0x3fe8d42da7209b5d              # double 0.7759006752211054
	.quad	0x3febf174c6d38bcf              # double 0.87322462876579177
	.quad	0x3fecb94f93460e79              # double 0.89762095226656335
	.quad	0x3fc6ad95595a4a98              # double 0.1771723448078617
	.quad	0x3fe61e90a128a204              # double 0.69123107410729334
	.quad	0x3fd8a4a8ad714984              # double 0.3850499814772308
	.quad	0x3fcf75010ffe95d4              # double 0.24575818329792176
	.quad	0x3fe7736117d505cb              # double 0.73283438353262775
	.quad	0x3fe384e0c564ed0b              # double 0.60997046044886483
	.quad	0x3fd7efef67e574aa              # double 0.3740194811451355
	.quad	0x3fc4ec72855ed7bc              # double 0.16346580040197789
	.quad	0x3fe3168d68660993              # double 0.59650297537182195
	.quad	0x3fe169fcb1272f31              # double 0.54418787574966221
	.quad	0x3fd414fcf8bec734              # double 0.31378101626897892
	.quad	0x3fc6081573f3b458              # double 0.17212169801442445
	.quad	0x3fdb9812ec36d1a4              # double 0.43115685527598147
	.quad	0x3febf9535585c967              # double 0.87418524459489511
	.quad	0x3fe0edb3516d12e5              # double 0.52901616958169184
	.quad	0x3fcc9a0ce0ff0854              # double 0.22345124231475444
	.quad	0x3fd7eaff4c89e626              # double 0.37371809458236027
	.quad	0x3fee3c5fc6d77b0c              # double 0.94486988865159693
	.quad	0x3fcdceee0178431c              # double 0.23287749358907994
	.quad	0x3fd18dcbbc8c716c              # double 0.2742795316023805
	.quad	0x3fb32f3209df7e20              # double 0.074938895616917467
	.quad	0x3fc8cb09130e6598              # double 0.19369615011673313
	.quad	0x3fe89dfd87e8169d              # double 0.76928593200928541
	.quad	0x3fc663f7bd99b47c              # double 0.17492577321846514
	.quad	0x3fcb574af2385fec              # double 0.21360146357687826
	.quad	0x3fc77b79c562019c              # double 0.18345567834695664
	.quad	0x3fd6a8a80a1e10aa              # double 0.35404396999389098
	.quad	0x3fe7803f972f34c3              # double 0.73440532234385392
	.quad	0x3fd950483f6d6840              # double 0.39552503770903868
	.quad	0x3fe59df022c319cd              # double 0.67552954472994886
	.quad	0x3fee180d2fb108fe              # double 0.94043597521547873
	.quad	0x3fec0bac60f1620a              # double 0.87642496999893749
	.quad	0x3fd6d1bd0ce78336              # double 0.35655142078580881
	.quad	0x3f7b468180e5a580              # double 0.0066590365152959796
	.quad	0x3fe527ac777b27c5              # double 0.6610929807295568
	.quad	0x3fec6130687da2b9              # double 0.88686390312530883
	.quad	0x3fe62b9d3ea22ff3              # double 0.69282400353540508
	.quad	0x3f9b032e916f87e0              # double 0.026379325510681784
	.quad	0x3febacf70d2b65e2              # double 0.86486389705822497
	.quad	0x3fae144ad9bbf310              # double 0.058748568610076046
	.quad	0x3fe3f48b0d09205c              # double 0.6236014608957805
	.quad	0x3fe4d0013f6ae955              # double 0.65039121996168581
	.quad	0x3fd510bb714f0b9e              # double 0.32914625230130834
	.quad	0x3fb70afaf6c93a68              # double 0.090011296511173122
	.quad	0x3fe5005c3465fdad              # double 0.65629396661818407
	.quad	0x3fcbc93bf3cab040              # double 0.2170786800755895
	.quad	0x3fe679b4451e275e              # double 0.70235646724288947
	.quad	0x3fecc2407758d5a8              # double 0.8987123805042545
	.quad	0x3fe9b0a9e346835a              # double 0.80281538381323547
	.quad	0x3fe14576436df783              # double 0.53972924394450705
	.quad	0x3fdb9cf3fb45dbc4              # double 0.4314546541058315
	.quad	0x3feee0303b2ba938              # double 0.96486674839733321
	.quad	0x3fa9aee6adc9e4d0              # double 0.050162514414248016
	.quad	0x3fc065a89c4d6ba0              # double 0.12810237533525726
	.quad	0x3fcf2a278fcd0c5c              # double 0.24347395440608721
	.quad	0x3fea05c8472b4177              # double 0.81320585155667302
	.quad	0x3fa2d8a1380cad20              # double 0.036809003917676941
	.quad	0x3fb2699d40684ad8              # double 0.071924045776806778
	.quad	0x3fe60767183c204f              # double 0.68840365155575423
	.quad	0x3fea0bf398336044              # double 0.81395892836281591
	.quad	0x3fc5ec4d64dd46a8              # double 0.17127387452142284
	.quad	0x3fe97dafbb7e5db8              # double 0.79659258479926276
	.quad	0x3fe5f670866aec64              # double 0.68633295300913888
	.quad	0x3fc43b1cc9d7266c              # double 0.1580539689587569
	.quad	0x3fe5b6bec5eb72cf              # double 0.67855776458926609
	.quad	0x3febca9659b6ae17              # double 0.86847989580332097
	.quad	0x3fb0bae45e28f0f8              # double 0.065351746547950174
	.quad	0x3fdde2007f8909ce              # double 0.46691906408900941
	.quad	0x3feec6dde60696b2              # double 0.96177573134328598
	.quad	0x3fe9494a11847ddc              # double 0.79019645139117811
	.quad	0x3fed3457fa46128f              # double 0.91263960725389548
	.quad	0x3fec2e60b085fb7d              # double 0.88066133954258385
	.quad	0x3fce4683e07e7cbc              # double 0.23652695142388847
	.quad	0x3fa8374e5d6e45a0              # double 0.047296952157135808
	.quad	0x3fe2e5aa01e2579c              # double 0.59053516738889611
	.quad	0x3fc31d60873a325c              # double 0.14933401682755487
	.quad	0x3fbb7155a5fa4238              # double 0.10719809820353354
	.quad	0x3fe0054c9d172e20              # double 0.50064688379046984
	.quad	0x3fdae790551aa548              # double 0.4203835326284957
	.quad	0x3fee20f1c82f289d              # double 0.94152154062728111
	.quad	0x3fdb7775285376fc              # double 0.42916611612405098
	.quad	0x3fda91ebcc441b98              # double 0.41515631625991878
	.quad	0x3fe0f9177ac78a93              # double 0.53040670376170096
	.quad	0x3fca63ae543f2058              # double 0.20616702188113112
	.quad	0x3fcc6d908fd49b08              # double 0.22209364912961171
	.quad	0x3fe65373a5e52bbc              # double 0.69768698121458028
	.quad	0x3fedfa8692a54bc9              # double 0.93683174745307796
	.quad	0x3fb6f05bd0134ee0              # double 0.08960508184400906
	.quad	0x3fe8516deaccb8b2              # double 0.75994010791125377
	.quad	0x3fdc4a0241e2e0c0              # double 0.44201713976100265
	.quad	0x3fe3c310f91c28c8              # double 0.61756180433555929
	.quad	0x3fb65360ac90d6a8              # double 0.087209741716686495
	.quad	0x3fd4938cc4c91a86              # double 0.3215057298406595
	.quad	0x3fc3138b24614fb8              # double 0.14903392101643731
	.quad	0x3feba7d04ac48e47              # double 0.86423506358227875
	.quad	0x3feb291f6aa81b10              # double 0.84876986342792016
	.quad	0x3fd0f51f285e53ea              # double 0.26496104185326763
	.quad	0x3fe1b7bb51d24ab0              # double 0.55367818814041492
	.quad	0x3fbc3306835c89a8              # double 0.11015358645503304
	.quad	0x3fe0ac832f547539              # double 0.52105864757655873
	.quad	0x3fa8b7daf2282160              # double 0.04827770429625633
	.quad	0x3fdfe4aabf31b872              # double 0.4983317248469411
	.quad	0x3fef799e69482db7              # double 0.983596044186405
	.quad	0x3fbace0b14efeb30              # double 0.10470647107278519
	.quad	0x3fde258eb4bf207e              # double 0.47104232455286155
	.quad	0x3f8fcabddbb8ea00              # double 0.015523417728322109
	.quad	0x3fecc76c6bb7abd2              # double 0.89934369124000058
	.quad	0x3fe5817aa1d31c9b              # double 0.67205554586770988
	.quad	0x3fe747a64ccfb1e9              # double 0.7274962902279728
	.quad	0x3fbaea55b1929aa8              # double 0.10513816437979051
	.quad	0x3fd059f3f5238054              # double 0.25549029292415537
	.quad	0x3fe17c3b951e5820              # double 0.54641512989724461
	.quad	0x3fed28006584e680              # double 0.91113300159413768
	.quad	0x3fec3ef0f33a74e4              # double 0.88268325334106778
	.quad	0x3feca34e422240aa              # double 0.89493477741964012
	.quad	0x3fda76a4885bc7fe              # double 0.41349137607824094
	.quad	0x3fdcf1b3a05fd686              # double 0.45225229894217767
	.quad	0x3fe426a73eec815e              # double 0.62971842088522201
	.quad	0x3fde651d7b2465ca              # double 0.47492157960513437
	.quad	0x3feeb496215c511c              # double 0.95954424396271376
	.quad	0x3fea68d3d372f719              # double 0.82529631899498945
	.quad	0x3fe38b3ad1f66e05              # double 0.61074582107852449
	.quad	0x3fe01855e49cf472              # double 0.50297064448353823
	.quad	0x3fe9e15f27b692f1              # double 0.80876119381409073
	.quad	0x3fd7ec31536177fa              # double 0.37379105703973858
	.quad	0x3fef039cc5dd0f0f              # double 0.9691909660836887
	.quad	0x3fca04f72f32b62c              # double 0.20327653698534343
	.quad	0x3fcd1e0f13055330              # double 0.22747982434034375
	.quad	0x3fd3964bf0103f02              # double 0.30604837840745358
	.quad	0x3fa4d6327fd3d240              # double 0.040696695426877927
	.quad	0x3fdf680ae45a50f8              # double 0.49072525310590676
	.quad	0x3fec4edae86d1373              # double 0.88462586780279506
	.quad	0x3fd4170562211750              # double 0.31390509207664241
	.quad	0x3fe860d6e71d32b7              # double 0.76182122363532911
	.quad	0x3fe5b1c256ff71cc              # double 0.67794911376727773
	.quad	0x3fe1194254ecca5d              # double 0.53433338725001145
	.quad	0x3fe379b590c70d97              # double 0.60860708500733807
	.quad	0x3fd562a5ade5c0a4              # double 0.3341459463326919
	.quad	0x3fe79ee10d16e81f              # double 0.73814442211665099
	.quad	0x3fe7a7ec3733dbbb              # double 0.7392483785796381
	.quad	0x3fdc79015bf2422c              # double 0.44488557795651462
	.quad	0x3fd62f7346ce3e0a              # double 0.34664613642323217
	.quad	0x3fd2420bcfb0a274              # double 0.28528113634323593
	.quad	0x3fd2254cb17aeb24              # double 0.28352658588453239
	.quad	0x3fdedc161a6e9b5a              # double 0.48218300420051252
	.quad	0x3fe3821998d0c9f0              # double 0.60963134619515635
	.quad	0x3fea79f26617720a              # double 0.82738609256517859
	.quad	0x3fdd59ec2261a7b8              # double 0.45861342771115288
	.quad	0x3fed5e6fecd8565b              # double 0.91777797945787698
	.quad	0x3fd381a9896e43f6              # double 0.30478895588845434
	.quad	0x3fec1ab1741568a7              # double 0.87825844452460877
	.quad	0x3fef49ce05e59a62              # double 0.97775937225089771
	.quad	0x3feb8adcfcf687ff              # double 0.86070107848013311
	.quad	0x3fe86a8e0b65c6ab              # double 0.76300718523107969
	.quad	0x3f61fdf136738900              # double 0.0021962844071917731
	.quad	0x3f8cbfc2d0abbf80              # double 0.014037630074625218
	.quad	0x3fe10859654bd6db              # double 0.53226918968604353
	.quad	0x3fe8ce551f91760b              # double 0.77518707433381573
	.quad	0x3fb58379a268f1a8              # double 0.084037401343215579
	.quad	0x3fe9809c91c06a05              # double 0.79694965808022344
	.quad	0x3fdc2c1461d4ff34              # double 0.44019040635974993
	.quad	0x3fc03ded72ffebe8              # double 0.1268898784181538
	.quad	0x3fe7cffb11dcbcd2              # double 0.74413827408525379
	.quad	0x3fe1f3f8ce69be63              # double 0.56103172602702178
	.quad	0x3feda1a7eacf12b9              # double 0.9259833894835402
	.quad	0x3fe6a7d4aed80c71              # double 0.70798715733725548
	.quad	0x3fdc63d5f16542b4              # double 0.44359348844322288
	.quad	0x3fe9f91b6ace2d5f              # double 0.8116585813562941
	.quad	0x3fb983d3a614a598              # double 0.099667766615900155
	.quad	0x3fedca4f810372f8              # double 0.93094611356681778
	.quad	0x3fedac1250daf97b              # double 0.92725482742370902
	.quad	0x3fc494a0d8ee6a4c              # double 0.16078577606534095
	.quad	0x3feaa102c3751a23              # double 0.8321546380546504
	.quad	0x3fd1718069011e1a              # double 0.27255258802731108
	.quad	0x3fd1466b9b87e0c8              # double 0.26992311657478441
	.quad	0x3fe4bbe0be68ebe3              # double 0.64793431462691975
	.quad	0x3fec454664b6e066              # double 0.88345641775869121
	.quad	0x3fe43f2d2856f4eb              # double 0.63271196249811845
	.quad	0x3fc50ca526cb7900              # double 0.1644483985355194
	.quad	0x3fd5cae1632c93b8              # double 0.34050783810590302
	.quad	0x3fd98ca236e0921e              # double 0.39920859679321719
	.quad	0x3fe7401364b3e312              # double 0.72657174747937092
	.quad	0x3fe789286aac01e2              # double 0.73549290499073217
	.quad	0x3fd52c36c081ecd8              # double 0.33082360076487083
	.quad	0x3fe3467b0f9398b6              # double 0.6023536018590423
	.quad	0x3fe82b052c812202              # double 0.75525149051924267
	.quad	0x3fe8cda4509489e6              # double 0.77510276544881829
	.quad	0x3fdd33e552a832da              # double 0.45629246780371846
	.quad	0x3fe6bc9891272a91              # double 0.71052196836656567
	.quad	0x3fb4c83cb0e71ad0              # double 0.081180375279568339
	.quad	0x3fddc2ffaf0fdc38              # double 0.46502678008932063
	.quad	0x3feee4a98797bac1              # double 0.96541286929080893
	.quad	0x3fd0e47db6fa4dea              # double 0.2639459883586982
	.quad	0x3fcaf3b937e26ce4              # double 0.21056285122617802
	.quad	0x3feb2ced240be950              # double 0.84923417129838619
	.quad	0x3fe8128fa78f2df8              # double 0.75226576544213142
	.quad	0x3fc191c6ecb3d3dc              # double 0.13726126249062431
	.quad	0x3fe2aa345e9f6fe0              # double 0.58327692490592753
	.quad	0x3fe9c16f0f1b993c              # double 0.80486252737754382
	.quad	0x3fd469d70f3cce1e              # double 0.31895996559180329
	.quad	0x3fdbbb363b71aebc              # double 0.43330150418362812
	.quad	0x3fb1c4192a52ed60              # double 0.069398472626678309
	.quad	0x3fedd4babf1c0568              # double 0.93221795393052975
	.quad	0x3feb2275cffcefe1              # double 0.84795656798041474
	.quad	0x3fd8abca75b903e6              # double 0.38548528190955123
	.quad	0x3fcdbd1788f81100              # double 0.23233312786044991
	.quad	0x3fba7d7c3af0f260              # double 0.1034772533320818
	.quad	0x3fe892a1f007f830              # double 0.76789948350029213
	.quad	0x3fc326337df53fe0              # double 0.14960330629628427
	.quad	0x3febc31b8e6d9f2a              # double 0.86756685083398577
	.quad	0x3fe81d65d11874c5              # double 0.75358858908625648
	.quad	0x3fd11df577fee1a2              # double 0.26745354383776931
	.quad	0x3fe88752617ac012              # double 0.76651877440417793
	.quad	0x3fe9b71b4b70eab4              # double 0.80360188231073559
	.quad	0x3fe28fd12e735c29              # double 0.58005580017459579
	.quad	0x3fef2eb53a831d51              # double 0.97445165088803709
	.quad	0x3feb11c3f9f10f36              # double 0.84591864411092987
	.quad	0x3fd630d43e7684e2              # double 0.34673029041193903
	.quad	0x3fce63a89ce9fcc4              # double 0.23741634046380089
	.quad	0x3fe6446e42a7ab05              # double 0.69585335749192778
	.quad	0x3fe0c89b0a4d2086              # double 0.52448799144714608
	.quad	0x3fd23b8bfee55e5c              # double 0.28488445179161714
	.quad	0x3faa8cac213ac6d0              # double 0.051854495102259812
	.quad	0x3fe86592ac1244e1              # double 0.76239904029548822
	.quad	0x3fee6e0b4d88ac06              # double 0.95093312400183616
	.quad	0x3fe3637f51c1e2b8              # double 0.60589567154155244
	.quad	0x3fe1cca4e0dbf2fd              # double 0.5562309638767996
	.quad	0x3fce64800c3dbe38              # double 0.23744202230180789
	.quad	0x3fe033906c3fc31f              # double 0.50629445211788837
	.quad	0x3fe33025d7192385              # double 0.59962741862646907
	.quad	0x3fe906aeec065061              # double 0.78206583117072281
	.quad	0x3fe614b2c6f4ae65              # double 0.69002665384818995
	.quad	0x3fec5f48804bdfd6              # double 0.88663125093352835
	.quad	0x3fefea64716b1b58              # double 0.99736234809902679
	.quad	0x3fec121503681e66              # double 0.87720728555082128
	.quad	0x3fc42be8f98a07bc              # double 0.15759002861528681
	.quad	0x3fe3923ea75d7429              # double 0.61160214127051404
	.quad	0x3fe2ecbfaf421910              # double 0.59139999609104343
	.quad	0x3fab380a12c9dd20              # double 0.053161921304246684
	.quad	0x3fe65ac2bbe634fa              # double 0.69857918452331025
	.quad	0x3fd5ccb3c4ecfe98              # double 0.3406190322020648
	.quad	0x3fe50096af3c243b              # double 0.65632185197421877
	.quad	0x3fe64c4dc331d96f              # double 0.6968144237896875
	.quad	0x3fb30728a7898a30              # double 0.074327984717037721
	.quad	0x3fb264259ac36580              # double 0.071840620311737879
	.quad	0x3fde5e2432046c7a              # double 0.47449593433856985
	.quad	0x3fe9317b50dcf142              # double 0.78729024690213856
	.quad	0x3fe06f1290044e80              # double 0.51355865600858408
	.quad	0x3fe8fa966119447e              # double 0.78058928455915555
	.quad	0x3fea3eb609470b87              # double 0.82015516101851993
	.quad	0x3fd399a15e69eddc              # double 0.30625185222717533
	.quad	0x3fbb7bd55df2d980              # double 0.10735829871814495
	.quad	0x3febbb531ab73b5c              # double 0.86661677568359207
	.quad	0x3fc96145fbd5561c              # double 0.19828104778814371
	.quad	0x3fe8bf2ec7d54284              # double 0.7733377364148315
	.quad	0x3fc03454a2d1ee08              # double 0.12659700346181091
	.quad	0x3fad5ce175a85920              # double 0.057349248516560758
	.quad	0x3fee1d95fdb68d03              # double 0.9411115603765271
	.quad	0x3fdcff454547fa78              # double 0.45308048024882153
	.quad	0x3fe6f26fb96ea1ed              # double 0.7170942899438707
	.quad	0x3fb69954a1ddbf68              # double 0.088277139204135602
	.quad	0x3fe5eac62c221e62              # double 0.68490894908695688
	.quad	0x3fc423a2b32cf1f0              # double 0.15733751057440726
	.quad	0x3fd6fa73a2a5babc              # double 0.35903635867627393
	.quad	0x3fec618c468a387a              # double 0.88690770890549619
	.quad	0x3fdc05157bcc1a64              # double 0.43781029786661052
	.quad	0x3fea01bf51e22347              # double 0.81271329872934295
	.quad	0x3fee5e2bb929da34              # double 0.94899545826667131
	.quad	0x3fe7333ad13602c2              # double 0.72500363217849206
	.quad	0x3fca0cde4a71d520              # double 0.20351771006577568
	.quad	0x3fe5c3e3714f3ca5              # double 0.68016216402783825
	.quad	0x3fb145f82afce378              # double 0.067473898406104627
	.quad	0x3fdb89b20b3c5b3c              # double 0.43027926537745365
	.quad	0x3fee9918d140e1a2              # double 0.95618859166920722
	.quad	0x3fd4cd1f8a1b28ae              # double 0.32501972662852097
	.quad	0x3fde4b051a69042a              # double 0.4733288534080794
	.quad	0x3fce779bc8192b5c              # double 0.23802516241479565
	.quad	0x3fda92889311841a              # double 0.4151936947073992
	.quad	0x3fe0e7b8fce86d93              # double 0.52828645130232343
	.quad	0x3fec4313a0bbe02a              # double 0.88318807023370494
	.quad	0x3fd244d7fd69e228              # double 0.28545188662931986
	.quad	0x3fc8763f5cda7dfc              # double 0.19110862764226499
	.quad	0x3fe73b11be39cc68              # double 0.72596060899230697
	.quad	0x3fe23d0f1d0292d3              # double 0.56995349565530729
	.quad	0x3fe2dd03389936d2              # double 0.58947907499688257
	.quad	0x3fcd927378407a04              # double 0.23103183147118511
	.quad	0x3fe6caa6fb7a75d9              # double 0.71223782650821044
	.quad	0x3fde2ce2a5a1abe8              # double 0.47148958373025929
	.quad	0x3fe3d0d885b01616              # double 0.61924387083917298
	.quad	0x3fe5c312d280aa16              # double 0.6800626860979857
	.quad	0x3fc1a689642d8278              # double 0.13789479629032875
	.quad	0x3fe41e339dbee643              # double 0.62868672189433317
	.quad	0x3fdf389c516f2966              # double 0.48783023788987234
	.quad	0x3fdbbb7d0f714f36              # double 0.43331839092319357
	.quad	0x3fb07bbb47706350              # double 0.064387993756452433
	.quad	0x3fe617afa4fc2174              # double 0.69039137099848213
	.quad	0x3fe2e886c7e826f9              # double 0.59088458103471375
	.quad	0x3fe8f46b8f78de79              # double 0.77983644506362204
	.quad	0x3fe6acc21153b721              # double 0.70858863243276826
	.quad	0x3fed440fa33fe218              # double 0.91455823788334367
	.quad	0x3fdfffd9af65cd46              # double 0.49999086502721857
	.quad	0x3fcbaf7f10991694              # double 0.21629322348069435
	.quad	0x3fc553757ebac4d8              # double 0.16660946548430533
	.quad	0x3fd05701b742c836              # double 0.25531046768731203
	.quad	0x3feaa386ee06e2e8              # double 0.83246180047634954
	.quad	0x3fc46991fd6372bc              # double 0.15947174904331074
	.quad	0x3fe33a77741f714f              # double 0.60088703804243859
	.quad	0x3fe504dd0bcafbe3              # double 0.65684368422796202
	.quad	0x3fef3355ac93bf2d              # double 0.97501643854591224
	.quad	0x3fd3bae1b06d6772              # double 0.30828134755358072
	.quad	0x3fa7a6fff9648400              # double 0.046195983117520711
	.quad	0x3fe7ed7f5c13514a              # double 0.74774139388549909
	.quad	0x3fd458840851ad36              # double 0.31790257275015976
	.quad	0x3feed11866a67195              # double 0.96302433060513925
	.quad	0x3fecb63d154372c9              # double 0.89724592354795007
	.quad	0x3fa50823cdeb1900              # double 0.04107772720958458
	.quad	0x3fc828b877bcc5ac              # double 0.18874269339134508
	.quad	0x3fc46acf1b245058              # double 0.15950955224309626
	.quad	0x3fdd12f7506d0840              # double 0.45428259710400098
	.quad	0x3fce04c7a93ebf40              # double 0.23452087177201442
	.quad	0x3fe56ea9865845e7              # double 0.66975857009145734
	.quad	0x3febe4c431ff87fd              # double 0.87167558446185434
	.quad	0x3fc86de047a31bcc              # double 0.19085315225512856
	.quad	0x3fe3ee8a5bda488b              # double 0.62286870899176117
	.quad	0x3fc9d0a7a65fb2a8              # double 0.2016801416752021
	.quad	0x3fe7188d8dcfb8cf              # double 0.72174718568364848
	.quad	0x3febe2264d771105              # double 0.87135615472701089
	.quad	0x3fd9d7476bf36398              # double 0.40376458684982586
	.quad	0x3fd6141093b7117e              # double 0.34497465539268279
	.quad	0x3fe0ea99c1205339              # double 0.52863776893591485
	.quad	0x3fccc6e5621855cc              # double 0.22481982507512865
	.quad	0x3fe84443d68fd3e7              # double 0.75833312899214611
	.quad	0x3fd3a97020efccbc              # double 0.30721667496181815
	.quad	0x3fd10d2d761c6b1c              # double 0.2664292958667589
	.quad	0x3fed9a6e759abc58              # double 0.92510149926773533
	.quad	0x3fc20e7eda220f08              # double 0.14106736804034647
	.quad	0x3fdd748968ff069a              # double 0.46023783925566308
	.quad	0x3febca98a0fc9f19              # double 0.8684809822343339
	.quad	0x3feb3716a49009d7              # double 0.8504746641268025
	.quad	0x3fef801b0a5a8fc4              # double 0.98438789388864522
	.quad	0x3fec0de9dd376cd3              # double 0.87669842916820995
	.quad	0x3fdd4bef248dcec0              # double 0.45775965280266107
	.quad	0x3fe83cc56127f3da              # double 0.75741833663743852
	.quad	0x3fefad7d82c46891              # double 0.98992801228020443
	.quad	0x3fa08d65b6eddc00              # double 0.0323287759592219
	.quad	0x3fe11bfb1e793a1f              # double 0.53466564132560623
	.quad	0x3fd6467301b46d64              # double 0.34804988066180997
	.quad	0x3fef0e9dc7dec548              # double 0.97053422009609224
	.quad	0x3f966d73f400c060              # double 0.021901904838330544
	.quad	0x3fe66251eaec1a1d              # double 0.69950195201164755
	.quad	0x3fd0f95bb2604680              # double 0.26521961612261435
	.quad	0x3fc35989eef2967c              # double 0.15117000739444453
	.quad	0x3fca58fc5a1df108              # double 0.20584062957994598
	.quad	0x3fe19d574c5d090a              # double 0.55045666613321598
	.quad	0x3fe97a78c49e95d5              # double 0.79620016481629341
	.quad	0x3fdebf0d45f134aa              # double 0.48041087942403726
	.quad	0x3fb0d0637ae9a0b8              # double 0.065679757602654543
	.quad	0x3fe7a92c92fc1cb3              # double 0.73940113742800972
	.quad	0x3fe554f81017befa              # double 0.66662219184033167
	.quad	0x3fd2bc51a43e05f2              # double 0.29274407424244864
	.quad	0x3fd7fd0ae7691d9c              # double 0.3748194942349643
	.quad	0x3fedb00ba8033e82              # double 0.92773993315672976
	.quad	0x3f94dd3d4dc0d400              # double 0.02037521159236988
	.quad	0x3fed69bf3c263057              # double 0.91915857074628604
	.quad	0x3fe9cfa9b1bb1494              # double 0.80659947121661668
	.quad	0x3fe7c2da894a42ef              # double 0.74253584684819696
	.quad	0x3fe0d7971de33d69              # double 0.52631717526848576
	.quad	0x3fe784614092b29a              # double 0.73490965473100123
	.quad	0x3fe562250beb43dd              # double 0.66823055580072899
	.quad	0x3fd5ad0103bec822              # double 0.33868432393785686
	.quad	0x3fe515d045603515              # double 0.65891278791392216
	.quad	0x3fe7dacb882eba79              # double 0.74545837972784945
	.quad	0x3f6d9f04dcdacf00              # double 0.0036158652281644832
	.quad	0x3fe461cc83d24b2d              # double 0.63693834062937571
	.quad	0x3fcc278642d57980              # double 0.21995619071362782
	.quad	0x3fe18201ad12fb06              # double 0.54711993983787077
	.quad	0x3fcec58d33071168              # double 0.24040379516203392
	.quad	0x3fe9066ccdee84b2              # double 0.78203430386579087
	.quad	0x3fe9a48d3a323d04              # double 0.80133687368825734
	.quad	0x3fe9feaae7ae3a55              # double 0.81233735323059852
	.quad	0x3fe3185df2837aa0              # double 0.59672448507247466
	.quad	0x3fe16f4e74182c09              # double 0.54483721422855169
	.quad	0x3fc8a5d69e107424              # double 0.19256098478300132
	.quad	0x3fc5c0c5e2862874              # double 0.16994546471352445
	.quad	0x3fda800d8f195f78              # double 0.41406573271296265
	.quad	0x3fb201ff68910500              # double 0.07034298231976166
	.quad	0x3fd86afe9eeeebc4              # double 0.38153043289974797
	.quad	0x3fe0e6d582db1258              # double 0.52817798192752274
	.quad	0x3fef91b9c2db3060              # double 0.98653877313473614
	.quad	0x3fd4db87d95c53bc              # double 0.32589908815981139
	.quad	0x3fe0dc6fad86a820              # double 0.52690872089192808
	.quad	0x3fe1ccb8532a018a              # double 0.55624023669229072
	.quad	0x3fbe9f4258ac9a70              # double 0.11961760201357108
	.quad	0x3fc3d10cb6252e50              # double 0.15481718915758558
	.quad	0x3fdcd3cfaceb3cec              # double 0.45042793165789763
	.quad	0x3fe549a9ba9be684              # double 0.66524206587855916
	.quad	0x3feb1392372b8c08              # double 0.84613905692492697
	.quad	0x3feb9d3377821abf              # double 0.86293958035897578
	.quad	0x3fd3a74ecfda1f26              # double 0.30708666132021489
	.quad	0x3fcacdf31fefff78              # double 0.20941008624503943
	.quad	0x3fdc526f069f4872              # double 0.44253135344218386
	.quad	0x3fecd89fff57be4d              # double 0.90144348022108434
	.quad	0x3fef2dbd9b36d146              # double 0.97433357539424814
	.quad	0x3fd4f7b48136fb2a              # double 0.32761871927862052
	.quad	0x3fcf1fbb84d1858c              # double 0.24315589890742861
	.quad	0x3fe2933f69006e41              # double 0.58047457225934107
	.quad	0x3fe66da8907bf0ee              # double 0.70088604182777003
	.quad	0x3fe1e5ea9fda1a87              # double 0.55931597920501097
	.quad	0x3fe0f208d3a68c7c              # double 0.52954522455219388
	.quad	0x3fd4d9a8e545e7c6              # double 0.32578489675472289
	.quad	0x3faa1be56785d680              # double 0.050994080435811107
	.quad	0x3fe17e6bca28cc03              # double 0.54668225750208455
	.quad	0x3fe9f63f24123ea2              # double 0.81130940480393954
	.quad	0x3fd340d9606c2d04              # double 0.30083307663217362
	.quad	0x3fee4f4ce1945144              # double 0.94718021448583344
	.quad	0x3fbdaae00fb0e0b0              # double 0.11588859923438366
	.quad	0x3fe013f67e508c65              # double 0.50243687315777363
	.quad	0x3fe1f1e92ca3ba43              # double 0.56078013151802286
	.quad	0x3fd3b6aedefdb986              # double 0.30802509094692032
	.quad	0x3fa5eda2d89d3080              # double 0.042828644697324059
	.quad	0x3fe001ed88fd71c5              # double 0.50023533588278524
	.quad	0x3fec1832484cc325              # double 0.87795366402688002
	.quad	0x3fe37cd28f289137              # double 0.60898712120664455
	.quad	0x3feaba94b725f03b              # double 0.83527599116451456
	.quad	0x3fea279e2c4e469d              # double 0.8173361649844143
	.quad	0x3fc852fbf27eaad4              # double 0.19003247585836525
	.quad	0x3fe34955729c01db              # double 0.6027018774475964
	.quad	0x3f57df0297bc8800              # double 0.0014569783515487877
	.quad	0x3fc6238c412fc27c              # double 0.17295983488977018
	.quad	0x3fe3a641cb61cbba              # double 0.61404504511880664
	.quad	0x3fca1478827fa160              # double 0.20374971744537174
	.quad	0x3fed2f9a6cdb31f3              # double 0.91206094037039376
	.quad	0x3fb6cfa679e48548              # double 0.089105992087316399
	.quad	0x3fc7c898ba37cb90              # double 0.18580922215150197
	.quad	0x3fdab0a676471c4c              # double 0.41703187513889328
	.quad	0x3fd5e500fef2dcd4              # double 0.34210228822071298
	.quad	0x3fd664b4805efe34              # double 0.34989655052411028
	.quad	0x3fe99898d8764785              # double 0.79987756993999481
	.quad	0x3fe11493c1dfc97e              # double 0.53376186243103496
	.quad	0x3fe2515a10a5da01              # double 0.57243064166578972
	.quad	0x3fec3b8fec0e1b16              # double 0.8822707758380115
	.quad	0x3fea047a6cda856b              # double 0.81304665813892762
	.quad	0x3fd47a1b6c2d8764              # double 0.31995282711260686
	.quad	0x3fe7c1cdda2071cd              # double 0.74240772822263923
	.quad	0x3fd1be6b550f1762              # double 0.27724726969278468
	.quad	0x3fda2dde235eed00              # double 0.40904954389743864
	.quad	0x3fe36510a023a27e              # double 0.60608702923953195
	.quad	0x3fc663ba9859c45c              # double 0.17491848410603239
	.quad	0x3f97c7fd654f9180              # double 0.023223838146706921
	.quad	0x3fe060d1b465d767              # double 0.51181874498318514
	.quad	0x3fea42c246de9ed2              # double 0.82064927903862839
	.quad	0x3fd78007074e300c              # double 0.36718917573375687
	.quad	0x3fd8afee18ffbca2              # double 0.38573791924768319
	.quad	0x3fea9c0f4e9ee0e1              # double 0.83155026774968743
	.quad	0x3fd2f11271e61e96              # double 0.29596387026729454
	.quad	0x3fec8825c946c7c7              # double 0.89161958038152356
	.quad	0x3fd7112f935d11ee              # double 0.36042394057247307
	.quad	0x3fed02177205f4df              # double 0.90650532026452513
	.quad	0x3fd030a38f5b65b4              # double 0.25296868324002308
	.quad	0x3fc0b66d0178508c              # double 0.13056719371582337
	.quad	0x3fe78f78ee9adbaa              # double 0.73626371958277059
	.quad	0x3fd6cd4adb33186e              # double 0.35628005415163144
	.quad	0x3fec69f3f6940143              # double 0.88793371352952766
	.quad	0x3fd39a313bba19b4              # double 0.3062861521979372
	.quad	0x3fc2816172eb2e08              # double 0.14457338439238776
	.quad	0x3fef438b379bee9b              # double 0.97699509488252844
	.quad	0x3f93abe3bf1653c0              # double 0.019210394418752719
	.quad	0x3fdc8381cb0a4680              # double 0.4455265505613184
	.quad	0x3febd4f55f81b818              # double 0.86974590924887973
	.quad	0x3fc5079c7dbbedac              # double 0.16429477824554561
	.quad	0x3fe7ac927df04dff              # double 0.73981594655418792
	.quad	0x3feaaf5e00df66b4              # double 0.83390712900582864
	.quad	0x3fcf424c1400594c              # double 0.2442107293761161
	.quad	0x3fd71257b88d4292              # double 0.3604945471061366
	.quad	0x3fe604c804f454ad              # double 0.68808365790996151
	.quad	0x3fe3cb48042cf8ef              # double 0.61856461349068848
	.quad	0x3fcd5c88c736cb78              # double 0.22938642241714624
	.quad	0x3fe4a59eee5d465e              # double 0.64521738582170562
	.quad	0x3fe3b76ae6028699              # double 0.61613984035303127
	.quad	0x3fee3ac8fa78afc3              # double 0.94467591209603829
	.quad	0x3fd28dcbbdd75a4e              # double 0.28990453280622297
	.quad	0x3fbdadfa58a438e8              # double 0.11593594230746229
	.quad	0x3fbd5aba82f90720              # double 0.11466565797402639
	.quad	0x3fd3d6cc01193f22              # double 0.30998516185080593
	.quad	0x3feb8d2ecca81ec4              # double 0.86098422977462307
	.quad	0x3fc30a00e4e1f59c              # double 0.14874278236304128
	.quad	0x3fce0aef343803b8              # double 0.23470869111772941
	.quad	0x3fd9496c17df2aa4              # double 0.39510633784508742
	.quad	0x3feba58901efa7f5              # double 0.86395693185954647
	.quad	0x3fcaaf938e6ff9c0              # double 0.20848316626502417
	.quad	0x3feba2cf814625b4              # double 0.86362433670836091
	.quad	0x3fd8db367aace2b2              # double 0.38837968807232948
	.quad	0x3feb3e91df59decf              # double 0.85138791678670056
	.quad	0x3fd37a24d81d835e              # double 0.304330073404392
	.quad	0x3fd563153da229b4              # double 0.33417254465953339
	.quad	0x3fda9badca12bc1c              # double 0.41575188382825146
	.quad	0x3fe509d14ffcabfd              # double 0.65744844076596076
	.quad	0x3f68c6281694d400              # double 0.0030241759274312052
	.quad	0x3fc8857dcf6c01e4              # double 0.19157383564016961
	.quad	0x3f2f94acf105d000              # double 2.4094210722191978E-4
	.quad	0x3fd9e049153be7e4              # double 0.40431429933198459
	.quad	0x3fef5ccb52c3d1c0              # double 0.98007742085479065
	.quad	0x3fdd67a8945e466e              # double 0.45945181359375098
	.quad	0x3fe28ab49e1245db              # double 0.57943182824436279
	.quad	0x3fee3042a70b3b7a              # double 0.94339115739590729
	.quad	0x3fe3e869fd99d16d              # double 0.62212085277000784
	.quad	0x3fc49d896cb68948              # double 0.161057642061744
	.quad	0x3fa4a4d3804ee940              # double 0.040320023930194626
	.quad	0x3febddecd51ed777              # double 0.87084046959965533
	.quad	0x3fe97285524ded78              # double 0.79522958827094126
	.quad	0x3fe1543b85b2e08f              # double 0.54153228867564163
	.quad	0x3fca5359916c23dc              # double 0.20566863632873733
	.quad	0x3fd9ed3c0a09b500              # double 0.40510464649453581
	.quad	0x3fd0b63cf34dbc4a              # double 0.26112293014643184
	.quad	0x3fe209daccc5e769              # double 0.56370296473253945
	.quad	0x3fd23885e75fd142              # double 0.28469989390511696
	.quad	0x3fd80c0790b2aabc              # double 0.37573422556549096
	.quad	0x3feddeadc8b5eb1d              # double 0.93343247605602964
	.quad	0x3fdd56a730b15ce0              # double 0.45841388468893562
	.quad	0x3febedf410ea5bf3              # double 0.87279704383661139
	.quad	0x3fe118d572fa9a81              # double 0.53428146797962495
	.quad	0x3fe730cba56a200d              # double 0.7247064810517273
	.quad	0x3fe3f09174ae65ad              # double 0.62311623372368319
	.quad	0x3fc93e4ff193b578              # double 0.19721411987067561
	.quad	0x3fea6041a8513193              # double 0.82425005793042982
	.quad	0x3fe3ebf22fba892d              # double 0.62255200693133406
	.quad	0x3fd0b923e369719a              # double 0.26130006035034514
	.quad	0x3fc2df7e01109c70              # double 0.14744544078823507
	.quad	0x3fe9feb7494e9651              # double 0.81234325711984401
	.quad	0x3fefdd847f9693d4              # double 0.99579071921891193
	.quad	0x3fea75715e5de716              # double 0.8268362849332529
	.quad	0x3fe56c6ea31ca114              # double 0.6694863496568666
	.quad	0x3fb680895efc0a20              # double 0.087898812951643368
	.quad	0x3fd0bac733794842              # double 0.2614000322984148
	.quad	0x3fd5db04f81ec228              # double 0.3414928839729634
	.quad	0x3fe1bd3f63f9ca49              # double 0.55435151602279931
	.quad	0x3feb9df4061ed9ab              # double 0.86303139872943768
	.quad	0x3fc618a7b1377620              # double 0.17262741234928658
	.quad	0x3fd32fb612fc5110              # double 0.29978706220687545
	.quad	0x3fe5bdc3f335b97d              # double 0.67941472532201852
	.quad	0x3fe43a87205fa724              # double 0.63214451144196859
	.quad	0x3fea4ba3a9c003c2              # double 0.82173331407840799
	.quad	0x3fea2d26db205b8b              # double 0.81801169202923185
	.quad	0x3fe630bae990a09a              # double 0.69344850176004802
	.quad	0x3fe7d54a32207952              # double 0.74478635588074327
	.quad	0x3fe90cc1549bbfab              # double 0.7828070309169467
	.quad	0x3fc88fad0fea2408              # double 0.19188464428978613
	.quad	0x3fdf620b1db7da32              # double 0.49035909559407564
	.quad	0x3fdca8214473c6a8              # double 0.44776183781423606
	.quad	0x3fe5d0b773b76840              # double 0.68172810173860654
	.quad	0x3fcfcab48dda7760              # double 0.24837357450899855
	.quad	0x3fe727ca3eb7df2a              # double 0.72360718011529923
	.quad	0x3fdbb26dd157d64e              # double 0.43276544040358977
	.quad	0x3fb92e860d218bb0              # double 0.098366144376582864
	.quad	0x3fe6a0f98069c93c              # double 0.70715022164066665
	.quad	0x3fe04f758d962c47              # double 0.50969960836062789
	.quad	0x3fd8e3323227c0be              # double 0.38886694810845401
	.quad	0x3fe86c3ae99bdda2              # double 0.76321168543556817
	.quad	0x3fe71e0819e8dc49              # double 0.7224159723326774
	.quad	0x3fc6febc4b793f6c              # double 0.17964891133533045
	.quad	0x3fe0a0b9cabf3d3c              # double 0.51961984252003601
	.quad	0x3fb7b8761d0bd668              # double 0.092658407298438328
	.quad	0x3fe60bf9aeeccc29              # double 0.68896183171307712
	.quad	0x3feed507b7b3cfc8              # double 0.96350465659497164
	.quad	0x3fd83df89bc4e11e              # double 0.37878241741010921
	.quad	0x3fbddc63b2b0b458              # double 0.11664412605814911
	.quad	0x3fef063ee7dfb149              # double 0.96951241767741536
	.quad	0x3feda6dac73b1392              # double 0.9266179934717107
	.quad	0x3fec906188229376              # double 0.89262463177565965
	.quad	0x3fef411dcd276598              # double 0.97669878071899329
	.quad	0x3fc5cf83ca609088              # double 0.17039534932803613
	.quad	0x3fefe8b044e26df6              # double 0.9971543641472056
	.quad	0x3fcc043720ee724c              # double 0.21887864215831809
	.quad	0x3f82ef4f3f01e980              # double 0.0092455092528680449
	.quad	0x3fd978b2a431a8e4              # double 0.39799181017464336
	.quad	0x3fe608ccb884a52b              # double 0.68857418097210166
	.quad	0x3fd0036082d224c8              # double 0.25020611548877669
	.quad	0x3fef5f8b0a3008af              # double 0.98041297902843449
	.quad	0x3f99cc214fd1bec0              # double 0.025192757126602627
	.quad	0x3fe3b828d779b42e              # double 0.6162304123405471
	.quad	0x3fed5db142bf3575              # double 0.91768706356530905
	.quad	0x3fe54d5a66eebb7e              # double 0.66569252113355026
	.quad	0x3fd6794298c88138              # double 0.35115113182293411
	.quad	0x3feba195bf51a570              # double 0.86347472540835035
	.quad	0x3feb629b3ea338a9              # double 0.85578691705611221
	.quad	0x3fd57aabb28bac78              # double 0.33561222492307463
	.quad	0x3fc4b0c86df42a64              # double 0.16164498680912509
	.quad	0x3fc92a8a1a0bad18              # double 0.19661070129164027
	.quad	0x3fe6d37fd3af5545              # double 0.71331778855043437
	.quad	0x3fcefbfd02313e8c              # double 0.24206507308052883
	.quad	0x3fd1da71f1734e34              # double 0.27895783023015785
	.quad	0x3fe9b7429c907d0a              # double 0.80362063006387641
	.quad	0x3fe8ef972fda116d              # double 0.77924689622936472
	.quad	0x3fd3ee7ad7e6119c              # double 0.3114306553254893
	.quad	0x3fc57ba63c267e78              # double 0.16783597886113788
	.quad	0x3fa1ea944eea9040              # double 0.034992823251088101
	.quad	0x3fe0a1ee523f9d61              # double 0.51976696075591289
	.quad	0x3fe1188bd76833bd              # double 0.5342463690918674
	.quad	0x3fed6fafbd3e3764              # double 0.91988360368280241
	.quad	0x3f90479d332604a0              # double 0.015898185965401823
	.quad	0x3fc34ee05e6905f4              # double 0.15084461793780657
	.quad	0x3fedbd12fe893cbd              # double 0.92933034624174804
	.quad	0x3febcbcbcc91eb32              # double 0.86862745242192418
	.quad	0x3fee6386346dea5e              # double 0.94964895477398747
	.quad	0x3fc60342055ce974              # double 0.1719744230447976
	.quad	0x3fc11614ae0630f0              # double 0.13348635194086667
	.quad	0x3fe75eb96b969d43              # double 0.73031302464816183
	.quad	0x3fea410c55cc7cb6              # double 0.82044045217107597
	.quad	0x3fea899f72725eb1              # double 0.82929966309435177
	.quad	0x3fc02c61feed1214              # double 0.12635445544778234
	.quad	0x3fe8bcb7cf579d9a              # double 0.77303686615498468
	.quad	0x3fd08340a761512e              # double 0.25801102014272004
	.quad	0x3fcfeede053ee2bc              # double 0.2494771504987251
	.quad	0x3fd391ff1b331220              # double 0.3057859197254249
	.quad	0x3fec5e50db87de08              # double 0.88651316525550872
	.quad	0x3fccbe103609e5a0              # double 0.22455027235609482
	.quad	0x3fdf3b5d36c0ec12              # double 0.48799829813987217
	.quad	0x3fd8963e2b4b72c4              # double 0.38417009571075433
	.quad	0x3fe7d4e7bfacaf49              # double 0.74473941265521504
	.quad	0x3fe0326210c86c60              # double 0.50615027692709802
	.quad	0x3fc53ac6954dac90              # double 0.16585619249540118
	.quad	0x3f99112c85a92ce0              # double 0.024479575784693064
	.quad	0x3fea5d5308301db6              # double 0.82389213179788245
	.quad	0x3fec26a1edf2076b              # double 0.87971588586536364
	.quad	0x3fb0400e503cb880              # double 0.063477415646703506
	.quad	0x3fad13123e9d5bb0              # double 0.056786127227204886
	.quad	0x3f7af26ea0b2be80              # double 0.0065788575549700079
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
