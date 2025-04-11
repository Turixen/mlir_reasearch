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
	.quad	1500                            # 0x5dc
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	1500                            # 0x5dc
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
	lui	a7, %hi(.L__constant_1500xindex)
	addi	a7, a7, %lo(.L__constant_1500xindex)
	lui	t0, %hi(.L__constant_1500xf64)
	addi	t0, t0, %lo(.L__constant_1500xf64)
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
	.quad	19                              # 0x13
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	62                              # 0x3e
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	100                             # 0x64
	.quad	121                             # 0x79
	.quad	139                             # 0x8b
	.quad	156                             # 0x9c
	.quad	172                             # 0xac
	.quad	185                             # 0xb9
	.quad	199                             # 0xc7
	.quad	213                             # 0xd5
	.quad	227                             # 0xe3
	.quad	244                             # 0xf4
	.quad	262                             # 0x106
	.quad	275                             # 0x113
	.quad	291                             # 0x123
	.quad	307                             # 0x133
	.quad	324                             # 0x144
	.quad	340                             # 0x154
	.quad	353                             # 0x161
	.quad	369                             # 0x171
	.quad	382                             # 0x17e
	.quad	393                             # 0x189
	.quad	410                             # 0x19a
	.quad	419                             # 0x1a3
	.quad	438                             # 0x1b6
	.quad	451                             # 0x1c3
	.quad	466                             # 0x1d2
	.quad	483                             # 0x1e3
	.quad	490                             # 0x1ea
	.quad	502                             # 0x1f6
	.quad	516                             # 0x204
	.quad	536                             # 0x218
	.quad	548                             # 0x224
	.quad	561                             # 0x231
	.quad	574                             # 0x23e
	.quad	589                             # 0x24d
	.quad	612                             # 0x264
	.quad	627                             # 0x273
	.quad	646                             # 0x286
	.quad	662                             # 0x296
	.quad	673                             # 0x2a1
	.quad	689                             # 0x2b1
	.quad	711                             # 0x2c7
	.quad	721                             # 0x2d1
	.quad	735                             # 0x2df
	.quad	745                             # 0x2e9
	.quad	761                             # 0x2f9
	.quad	773                             # 0x305
	.quad	783                             # 0x30f
	.quad	801                             # 0x321
	.quad	819                             # 0x333
	.quad	835                             # 0x343
	.quad	850                             # 0x352
	.quad	864                             # 0x360
	.quad	875                             # 0x36b
	.quad	889                             # 0x379
	.quad	908                             # 0x38c
	.quad	926                             # 0x39e
	.quad	941                             # 0x3ad
	.quad	958                             # 0x3be
	.quad	973                             # 0x3cd
	.quad	991                             # 0x3df
	.quad	1010                            # 0x3f2
	.quad	1026                            # 0x402
	.quad	1037                            # 0x40d
	.quad	1054                            # 0x41e
	.quad	1068                            # 0x42c
	.quad	1078                            # 0x436
	.quad	1093                            # 0x445
	.quad	1111                            # 0x457
	.quad	1124                            # 0x464
	.quad	1146                            # 0x47a
	.quad	1156                            # 0x484
	.quad	1173                            # 0x495
	.quad	1187                            # 0x4a3
	.quad	1205                            # 0x4b5
	.quad	1220                            # 0x4c4
	.quad	1231                            # 0x4cf
	.quad	1244                            # 0x4dc
	.quad	1255                            # 0x4e7
	.quad	1271                            # 0x4f7
	.quad	1287                            # 0x507
	.quad	1304                            # 0x518
	.quad	1324                            # 0x52c
	.quad	1336                            # 0x538
	.quad	1353                            # 0x549
	.quad	1365                            # 0x555
	.quad	1376                            # 0x560
	.quad	1386                            # 0x56a
	.quad	1404                            # 0x57c
	.quad	1419                            # 0x58b
	.quad	1434                            # 0x59a
	.quad	1449                            # 0x5a9
	.quad	1472                            # 0x5c0
	.quad	1485                            # 0x5cd
	.quad	1500                            # 0x5dc
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1500xindex,@object # @__constant_1500xindex
	.p2align	6, 0x0
.L__constant_1500xindex:
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	85                              # 0x55
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	18                              # 0x12
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	85                              # 0x55
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	69                              # 0x45
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	8                               # 0x8
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	43                              # 0x2b
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	70                              # 0x46
	.quad	83                              # 0x53
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	92                              # 0x5c
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	95                              # 0x5f
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	94                              # 0x5e
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	80                              # 0x50
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	51                              # 0x33
	.quad	64                              # 0x40
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	5                               # 0x5
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	75                              # 0x4b
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	95                              # 0x5f
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	85                              # 0x55
	.quad	7                               # 0x7
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	73                              # 0x49
	.quad	86                              # 0x56
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	57                              # 0x39
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	85                              # 0x55
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	59                              # 0x3b
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	88                              # 0x58
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	23                              # 0x17
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	7                               # 0x7
	.quad	35                              # 0x23
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	94                              # 0x5e
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	26                              # 0x1a
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	79                              # 0x4f
	.quad	90                              # 0x5a
	.quad	3                               # 0x3
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.size	.L__constant_1500xindex, 12000

	.type	.L__constant_1500xf64,@object   # @__constant_1500xf64
	.p2align	6, 0x0
.L__constant_1500xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_1500xf64, 12000

	.type	.L__constant_100x100xf64,@object # @__constant_100x100xf64
	.p2align	6, 0x0
.L__constant_100x100xf64:
	.quad	0x3fd861eb78eb30fc              # double 0.38097655113666895
	.quad	0x3fda33ddcb9a158a              # double 0.40941567309376892
	.quad	0x3fce95cf75471c3c              # double 0.23894685007528149
	.quad	0x3fef0befd08bfa2d              # double 0.97020712596697011
	.quad	0x3fdd212fbeb48e5a              # double 0.45515054343761607
	.quad	0x3fd34a1e70ad540e              # double 0.30139885905856623
	.quad	0x3fde3b113bc1c5ba              # double 0.4723551829875664
	.quad	0x3fcb8075cb488628              # double 0.21485779214803924
	.quad	0x3fcdd8b1b050f14c              # double 0.23317547902287072
	.quad	0x3fd8f91a45439e36              # double 0.39020401729655718
	.quad	0x3fe380a169c0fc0c              # double 0.60945196776435884
	.quad	0x3fd233efa6faa8e2              # double 0.28441993052059733
	.quad	0x3fcea5f1a1aab0d0              # double 0.23943920511135852
	.quad	0x3fb2ad86dcc45a00              # double 0.072960308931534712
	.quad	0x3fec3df7fb8a4855              # double 0.88256453637064658
	.quad	0x3fd902fde0a0c90e              # double 0.39080759941420318
	.quad	0x3fe0dfcd06c262a8              # double 0.52731944389514229
	.quad	0x3fe368d6bb9e8c4b              # double 0.60654770512008704
	.quad	0x3fa0ec5fa32e6230              # double 0.033053387326792083
	.quad	0x3feb8c2b762cca9a              # double 0.86086056786583076
	.quad	0x3fe8c36bd8c30e09              # double 0.77385513626399061
	.quad	0x3fee6700629b5814              # double 0.95007342585700138
	.quad	0x3fdbe5eb1342122a              # double 0.43590809708283251
	.quad	0x3feeffc996bb8c21              # double 0.96872405471765798
	.quad	0x3fb3ae1acb33fd50              # double 0.076875376329543998
	.quad	0x3fdb2757f9d8d81c              # double 0.42427634619832744
	.quad	0x3fc75538361865dc              # double 0.18228819505092886
	.quad	0x3fe929346d84e911              # double 0.78627988234009838
	.quad	0x3fdbda9927f76804              # double 0.43521717932674187
	.quad	0x3fe25a92836276a6              # double 0.57355619107302824
	.quad	0x3fea5612f895c9e2              # double 0.8230070929697002
	.quad	0x3fe525cfeaf012f7              # double 0.66086574445998181
	.quad	0x3fea586c1c6eeaf6              # double 0.82329373887418345
	.quad	0x3fb3af771d09adc0              # double 0.076896137799557174
	.quad	0x3fdb42922509042c              # double 0.42593816391678518
	.quad	0x3fd6490883c22812              # double 0.34820759646447741
	.quad	0x3fd329b22a6517aa              # double 0.29941991939665036
	.quad	0x3fdb1a665cefdbbe              # double 0.42348631931184488
	.quad	0x3fe664d8c8670e25              # double 0.69981040135502737
	.quad	0x3fe0764075bb2396              # double 0.51443503374422295
	.quad	0x3fe58c7944106888              # double 0.673397667825399
	.quad	0x3fea0c1c2b3326db              # double 0.81397827565634928
	.quad	0x3fe755aa304221cc              # double 0.72920712876753546
	.quad	0x3fd15b6e5624ce7c              # double 0.27120550549009415
	.quad	0x3fe7a676850c6e1f              # double 0.73907018648191414
	.quad	0x3fe72a0db9a92c7d              # double 0.72388349782831052
	.quad	0x3fe9c312d1201602              # double 0.80506268353263999
	.quad	0x3fe3b68b1efa133e              # double 0.61603313493888101
	.quad	0x3fea68aeba95b39b              # double 0.82527862970674748
	.quad	0x3fe2015e1f75fa3b              # double 0.56266695160576974
	.quad	0x3fd961a6d1c62fac              # double 0.39658518300779622
	.quad	0x3fe4ce81b8eecc58              # double 0.65020834083260137
	.quad	0x3fe5a5f2d367c6d2              # double 0.67650738992798609
	.quad	0x3f902156b75ea500              # double 0.015752177183149918
	.quad	0x3fdee094f05f5498              # double 0.48245738481393508
	.quad	0x3fbfe322c45292c0              # double 0.12455956738501595
	.quad	0x3fbeccc24b6a9cb0              # double 0.1203118738290978
	.quad	0x3fde77384bdfc012              # double 0.47602660569737154
	.quad	0x3fd4df14bf05ef0a              # double 0.32611578611953063
	.quad	0x3fca7e1b2fb07b80              # double 0.20697345570166803
	.quad	0x3fafb8f32f59bbd0              # double 0.061957931070416472
	.quad	0x3fea4678df651a15              # double 0.82110255843946567
	.quad	0x3fe645dfb870c10f              # double 0.69602952979588106
	.quad	0x3f90f65ca4577620              # double 0.0165647960001164
	.quad	0x3fe836b1c2a41fb2              # double 0.75667655959931879
	.quad	0x3fc944ea2f9ce348              # double 0.19741561245771266
	.quad	0x3fcfa253aadbfd9c              # double 0.24714132158986224
	.quad	0x3feb019ecbaa5ad0              # double 0.84394778993995523
	.quad	0x3fe2421b7df49e48              # double 0.57056974983874742
	.quad	0x3fe41c49bbd1fe67              # double 0.62845312770509743
	.quad	0x3fc7262810ce4710              # double 0.18085194416612937
	.quad	0x3fb5d6aa0ea1eb90              # double 0.08530676705588136
	.quad	0x3fdeed9ff20f4b10              # double 0.48325346602102659
	.quad	0x3fea1303dbdf634b              # double 0.81482117599362291
	.quad	0x3fc5dbaee8795edc              # double 0.17076670027994723
	.quad	0x3fc9d4b19c57f1d4              # double 0.20180339940988168
	.quad	0x3fe16b2eddb2cb52              # double 0.54433387089225449
	.quad	0x3f614bb5cdfbbb00              # double 0.0021112967368631663
	.quad	0x3fd52f816eebb8ee              # double 0.33102451164349034
	.quad	0x3fd186b7009a873e              # double 0.27384734209964623
	.quad	0x3fe8fdaccce64516              # double 0.78096618670875517
	.quad	0x3fea51c8483e4cff              # double 0.8224831973078891
	.quad	0x3fca0c5c809b6ecc              # double 0.20350223807951406
	.quad	0x3fc3b6c9183628f8              # double 0.15401567156033713
	.quad	0x3fd33d979c77b5f2              # double 0.30063429145852105
	.quad	0x3fe5496b71332170              # double 0.66521236523935379
	.quad	0x3fecbad68df9d496              # double 0.89780738572757701
	.quad	0x3fee50b127056340              # double 0.94735009785936341
	.quad	0x3fa49a181861ca40              # double 0.04023814485198729
	.quad	0x3fe45a691d642ead              # double 0.63603645077224302
	.quad	0x3fcd818c2c9f325c              # double 0.23051597765733589
	.quad	0x3fd951769695c310              # double 0.39559712129180102
	.quad	0x3fee2588c7597eae              # double 0.942081822733561
	.quad	0x3fe3aa699fe88e6e              # double 0.61455231887926032
	.quad	0x3fe8c13271e0663b              # double 0.77358362428203209
	.quad	0x3fd68ae056890e08              # double 0.35222633791656266
	.quad	0x3fed2f1d163267c0              # double 0.91200117431002781
	.quad	0x3fe807f4dca8f7da              # double 0.75097125146543964
	.quad	0x3fd3c6c11e604d6e              # double 0.30900600401329015
	.quad	0x3fd137670b757b78              # double 0.2690065013793439
	.quad	0x3fe1399cee5bedef              # double 0.53828283838759983
	.quad	0x3fe8bddfa504c7d3              # double 0.7731779311200121
	.quad	0x3fdcf4e91bf3e30c              # double 0.45244815568689556
	.quad	0x3f2eccf4aff47000              # double 2.3498999505811025E-4
	.quad	0x3fe77cbb5b9af861              # double 0.73397605792684939
	.quad	0x3fb43565161e1888              # double 0.078939741039080968
	.quad	0x3fe820c25a0a1fa8              # double 0.75399892412041414
	.quad	0x3fe24ca690e74e8e              # double 0.57185676862214208
	.quad	0x3fce38a4e28aa528              # double 0.2361036401901313
	.quad	0x3fd572aa3ba11598              # double 0.33512359450500062
	.quad	0x3fe63605c6e95147              # double 0.69409455156213873
	.quad	0x3feca51f96f588aa              # double 0.89515666469767052
	.quad	0x3febbcba80e4c2e0              # double 0.86678815054446189
	.quad	0x3fd527cab963ae50              # double 0.33055370430404185
	.quad	0x3fefec7014f0c2f7              # double 0.99761203851639279
	.quad	0x3fedc93bed61990c              # double 0.93081470836185209
	.quad	0x3fc3f9ddfcb3b238              # double 0.15606283987962555
	.quad	0x3fc5043350f79250              # double 0.16419068768950007
	.quad	0x3fe2941575c95dc7              # double 0.58057663922493752
	.quad	0x3fe7f9a02bbe3ff1              # double 0.74922188323580319
	.quad	0x3fe2868cfa477e7a              # double 0.57892464525862342
	.quad	0x3fe2dfc14a799fd7              # double 0.58981384797970804
	.quad	0x3fa3e0959ff4d210              # double 0.038822818542403437
	.quad	0x3fe37aaba3cdf83b              # double 0.6087244223888385
	.quad	0x3fd6348179488be0              # double 0.34695469707565785
	.quad	0x3fa10852fd5c2830              # double 0.033266633441670357
	.quad	0x3fc17db55768fc28              # double 0.13664881485053226
	.quad	0x3fb31967084bf320              # double 0.074606360936695371
	.quad	0x3fdab5469d4dbc22              # double 0.41731419908222922
	.quad	0x3fe341668dca8609              # double 0.60173347180915571
	.quad	0x3fe4e0cdde3a5ee7              # double 0.6524419155493576
	.quad	0x3fea7c8081edbf02              # double 0.82769799591730497
	.quad	0x3f7d40381d6fe080              # double 0.007141322325871724
	.quad	0x3fe85e903adec041              # double 0.76154338357992668
	.quad	0x3fe3fc15c4a75fd9              # double 0.62452209862658059
	.quad	0x3feb39f12ff84c50              # double 0.85082301491855539
	.quad	0x3fe7e1859ae640ac              # double 0.74627952817720233
	.quad	0x3fd75aeff10b800c              # double 0.36492537059348318
	.quad	0x3fe3f790f637f409              # double 0.62397049035610153
	.quad	0x3fd05cb843cc2208              # double 0.25565916653479848
	.quad	0x3fea6f8da21ad1e8              # double 0.82611734067046161
	.quad	0x3fea908812032235              # double 0.83014300840392841
	.quad	0x3fb6f58cb7563cd0              # double 0.089684290657021437
	.quad	0x3fe9bf536f7e0ca9              # double 0.80460521484237291
	.quad	0x3fe27ed71386b30a              # double 0.57798341573433842
	.quad	0x3fea660f5f6ae995              # double 0.82495850216155253
	.quad	0x3fca54709bb7b0ec              # double 0.20570190051456139
	.quad	0x3fc4637c3e470d9c              # double 0.15928605118652406
	.quad	0x3fdcea2c5453bd9a              # double 0.45179279551572338
	.quad	0x3f7d68c1e07f6e80              # double 0.0071799825018065144
	.quad	0x3fb5fbd621885e68              # double 0.085873969256107352
	.quad	0x3fe24534d195005c              # double 0.57094803747169065
	.quad	0x3fedc3bcee02447a              # double 0.93014379964928584
	.quad	0x3fd450cc3b09ee2a              # double 0.31743150487429495
	.quad	0x3fca9da20085bcc4              # double 0.20793557191379908
	.quad	0x3fe1a305e72ac610              # double 0.55115027570553998
	.quad	0x3feb155910d5317f              # double 0.8463559464230882
	.quad	0x3fe644a6cb2bced2              # double 0.69588031465397138
	.quad	0x3fdb43bba358a138              # double 0.42600909187105485
	.quad	0x3fe2f4d241e17a35              # double 0.59238541476572115
	.quad	0x3fea308374cbb015              # double 0.81842205821658587
	.quad	0x3f89bb0c7bb8cc00              # double 0.012563798452083219
	.quad	0x3fe1434624c39217              # double 0.53946215801676345
	.quad	0x3fe581073d563489              # double 0.67200052242118702
	.quad	0x3f9fb61c542a3ea0              # double 0.030968134533906011
	.quad	0x3fd735560bd41c1e              # double 0.36263037829525213
	.quad	0x3feeef95f91c28c3              # double 0.96674631742759975
	.quad	0x3fbed7967abd7868              # double 0.1204771089228146
	.quad	0x3fe18ec125f52276              # double 0.54867608464799278
	.quad	0x3f9eeed718ec9080              # double 0.030207978149647818
	.quad	0x3fe11a2d5fab85c1              # double 0.53444546399639858
	.quad	0x3fe755b29fddf955              # double 0.72921115135231196
	.quad	0x3febfc0b19690c68              # double 0.87451701128919712
	.quad	0x3f94be2f136d43c0              # double 0.020256743965834323
	.quad	0x3fe1bf496f5bc62e              # double 0.55460044622140514
	.quad	0x3fbe1f288247c400              # double 0.11766293697998265
	.quad	0x3fc362e193addee4              # double 0.15145511351487706
	.quad	0x3fd34bb70c6bb4ca              # double 0.30149627888642938
	.quad	0x3fd19839bc670018              # double 0.27491610907236597
	.quad	0x3fb56bb63c223ed8              # double 0.083674802476021326
	.quad	0x3fe441b8fa3ea256              # double 0.63302277446661992
	.quad	0x3fceb0e6d4eae4ec              # double 0.2397736110340597
	.quad	0x3fb325e8a1562e48              # double 0.074797191037014987
	.quad	0x3fb8b0cf28249dd8              # double 0.096447894382996835
	.quad	0x3fd9e7749aaff2b6              # double 0.40475192171269769
	.quad	0x3fe2f5e6904d4aed              # double 0.59251716789216646
	.quad	0x3fde977eee00e874              # double 0.47799657099279291
	.quad	0x3fe69a48348631f8              # double 0.7063332582343369
	.quad	0x3fb04bf74020e050              # double 0.063659146458008964
	.quad	0x3fd673f4018c9276              # double 0.35082721854477172
	.quad	0x3fce8d133bc6e744              # double 0.23868027132794556
	.quad	0x3fe38d039f0e5ed9              # double 0.61096364083911248
	.quad	0x3fefdaf40b83c148              # double 0.99547769783934203
	.quad	0x3fe7abc33635418d              # double 0.73971710765367649
	.quad	0x3fd32d00c1662610              # double 0.29962176214812164
	.quad	0x3fd9f42477d72fea              # double 0.40552627280408038
	.quad	0x3fec3f1f25f4a751              # double 0.88270528233736389
	.quad	0x3fd37ebb8dd70832              # double 0.30461014606055692
	.quad	0x3feb5a9ba5e4d149              # double 0.85481054688583769
	.quad	0x3fd21ed39f94347a              # double 0.28313150962714639
	.quad	0x3f633cf45aef4900              # double 0.0023484013140456783
	.quad	0x3fdf77f1d6801a56              # double 0.49169584224037999
	.quad	0x3fe10657768685c4              # double 0.53202412747867145
	.quad	0x3fcc594db478f728              # double 0.221475327607487
	.quad	0x3fb550ea7b476b48              # double 0.083265929315001874
	.quad	0x3feedf70ccbbda9e              # double 0.96477546679564674
	.quad	0x3fe8b678d4dec60d              # double 0.77227441383564754
	.quad	0x3fe97f2a097ade92              # double 0.79677297450594353
	.quad	0x3fcb4f5830d7f600              # double 0.21335890183392792
	.quad	0x3fe32e3315c419aa              # double 0.5993895936124336
	.quad	0x3feffdf8e5167007              # double 0.99975247138672862
	.quad	0x3fdd499dfc2a6ed6              # double 0.45761823297082793
	.quad	0x3fef42925abaa27c              # double 0.97687642784610728
	.quad	0x3fe3aab2e2324c7f              # double 0.61458725146293591
	.quad	0x3fdc21773713ddae              # double 0.43954258326217654
	.quad	0x3fee7801cd891409              # double 0.95214929717678942
	.quad	0x3fd6bfddef59ebcc              # double 0.35546062826295777
	.quad	0x3fdca716b660c26e              # double 0.44769828615520779
	.quad	0x3fdc996421c192d2              # double 0.44686225220202147
	.quad	0x3fe72b733553a9d6              # double 0.72405395903961778
	.quad	0x3fd30747eeb665de              # double 0.29731939613119873
	.quad	0x3fdcbb1c2c068a92              # double 0.4489202909409552
	.quad	0x3fec5e65365a3219              # double 0.88652287116707662
	.quad	0x3fd0fa59ddf51d56              # double 0.26528021503005073
	.quad	0x3fe33c4036bebecc              # double 0.60110483829881778
	.quad	0x3fec9e2272ca1dd7              # double 0.89430353565051746
	.quad	0x3fc5b8fef0e73c24              # double 0.16970812571386873
	.quad	0x3fd22797b2c6e350              # double 0.28366653879816273
	.quad	0x3fcb7140029af208              # double 0.21439361693582293
	.quad	0x3fbd5f5f6d5b8d98              # double 0.11473652286399838
	.quad	0x3fec4eb872312196              # double 0.88460943511113288
	.quad	0x3fe01e554c8c873f              # double 0.5037027831169566
	.quad	0x3fb74a08ff8337f8              # double 0.090973436718939982
	.quad	0x3fb94bf080bb2088              # double 0.098814994266947065
	.quad	0x3fd6387264d4023c              # double 0.3471952423715583
	.quad	0x3fd48b3ae224c71c              # double 0.32099792560903651
	.quad	0x3fd349b4e143348c              # double 0.30137369154255889
	.quad	0x3feef4d207bf2994              # double 0.96738530648262832
	.quad	0x3fcbd61d4ad5a514              # double 0.21747175363569993
	.quad	0x3fdf02a10de72c14              # double 0.48453546865192831
	.quad	0x3faf6d903a280e30              # double 0.06138277730863384
	.quad	0x3fc62372a1c2c018              # double 0.1729567804190999
	.quad	0x3faf3eb515622b50              # double 0.06102529417065361
	.quad	0x3feaba5c8e80a44d              # double 0.83524921257515816
	.quad	0x3fa4db504916d1e0              # double 0.040735730096830514
	.quad	0x3fe81db4b01365f4              # double 0.7536261977176637
	.quad	0x3feb5f1eca819f20              # double 0.85536136199968737
	.quad	0x3f9aea72ba669100              # double 0.026284973742478179
	.quad	0x3fe01865cee0f8c8              # double 0.50297823339476455
	.quad	0x3fd289d140322afc              # double 0.28966170567643679
	.quad	0x3fda316435bb7c7a              # double 0.40926461455632757
	.quad	0x3fda948282785e0c              # double 0.41531431905011185
	.quad	0x3fe345b7a7e63f26              # double 0.60226042549945613
	.quad	0x3fd50e0f8a7c59ec              # double 0.32898319744108906
	.quad	0x3fc9e8dfea0569fc              # double 0.20241927077115907
	.quad	0x3fe811412110ed20              # double 0.75210625131822794
	.quad	0x3fec1973c8dfdbaf              # double 0.87810696824350554
	.quad	0x3fe3dd307f779c8c              # double 0.62075066467231599
	.quad	0x3fe12e0dc02cbbe4              # double 0.5368717912114076
	.quad	0x3fd6e526cc93835a              # double 0.35773630121371058
	.quad	0x3fe5490f88cd50b1              # double 0.66516854018347804
	.quad	0x3fd230119d4989b8              # double 0.2841838871010185
	.quad	0x3fdef31aac38be0a              # double 0.48358790224571691
	.quad	0x3fe44e970b3b64a3              # double 0.63459350770712708
	.quad	0x3fcb7dada41dcd28              # double 0.21477289689537682
	.quad	0x3fecf1e2b3112b47              # double 0.90452704404865691
	.quad	0x3fe764f12b22ce98              # double 0.73107202935212268
	.quad	0x3fe7919fb6f2c2bb              # double 0.73652635318838777
	.quad	0x3fc0bb7b78a95914              # double 0.13072150603938637
	.quad	0x3fbf5d7d38d0bf68              # double 0.12252028119178038
	.quad	0x3fc24cc33c8713b8              # double 0.14296760993434332
	.quad	0x3fda77d62631117e              # double 0.41356424073844511
	.quad	0x3fc661bcb24d3ee8              # double 0.17485769945277885
	.quad	0x3fd0b0ee260a0d3a              # double 0.26079896654865176
	.quad	0x3fd106e40703eef2              # double 0.26604557690710273
	.quad	0x3f9ff6935efa2740              # double 0.031214049026437651
	.quad	0x3fcfb4f9da4b07ec              # double 0.24771044882623927
	.quad	0x3fd3c6a5addfc5ca              # double 0.30899946193593719
	.quad	0x3fd37db061e8c8d8              # double 0.30454644738632686
	.quad	0x3fdb41436c7532a0              # double 0.42585836021025081
	.quad	0x3fe9d096163a2c58              # double 0.80671219197518962
	.quad	0x3fe9333832ca87e4              # double 0.78750238342422251
	.quad	0x3fc39dd8e4afa598              # double 0.15325461546244123
	.quad	0x3fbc8620bff34fe8              # double 0.11142162977495185
	.quad	0x3fef77f2c8077056              # double 0.98339213436293949
	.quad	0x3fd0b0d9b82dea04              # double 0.26079409586205338
	.quad	0x3fcb5ac6f51dcf4c              # double 0.21370779961182007
	.quad	0x3fe9f08639d1b34c              # double 0.81061087887574378
	.quad	0x3fe9792d8fabd15f              # double 0.79604223309301492
	.quad	0x3fd0ff2015f653b4              # double 0.2655716146921876
	.quad	0x3fd19c382137e31a              # double 0.27515986675239079
	.quad	0x3fd194967317dc96              # double 0.27469407310076954
	.quad	0x3fe84ef5d05bd7c5              # double 0.75963869757719549
	.quad	0x3fe859c4dbb19b0e              # double 0.76095812710704691
	.quad	0x3fe94431166ee721              # double 0.78957418805586965
	.quad	0x3fe275c06964eed2              # double 0.57687397560899911
	.quad	0x3fd85ed138444478              # double 0.38078718657295196
	.quad	0x3fce181d60caceb8              # double 0.23511092401678524
	.quad	0x3fc77da078de7bd4              # double 0.1835213270360031
	.quad	0x3fdb1f05a6600384              # double 0.42376843688548882
	.quad	0x3fe656913a91e710              # double 0.69806729735793915
	.quad	0x3fb0218fe7188cb0              # double 0.06301211730947176
	.quad	0x3fc3faa46ca7dd98              # double 0.15608649545150111
	.quad	0x3fd561a680f96a12              # double 0.33408510775703448
	.quad	0x3fc36df669f10df4              # double 0.15179329083376525
	.quad	0x3feb23dcb241c4c5              # double 0.84812769714167102
	.quad	0x3fe1e301b9fcd378              # double 0.55896078420356243
	.quad	0x3fe88254d9ed3dbf              # double 0.76590960086644333
	.quad	0x3fa948b4bd4abf10              # double 0.04938282786076631
	.quad	0x3fed414937a0bede              # double 0.91421948304011003
	.quad	0x3fe8d8917eaa10a0              # double 0.77643656481861356
	.quad	0x3fd14ca1835a84f2              # double 0.27030217959879999
	.quad	0x3fcf302d02b44508              # double 0.24365770942726095
	.quad	0x3fc2d0d40698d7c4              # double 0.14699793169137199
	.quad	0x3fba40fbb2eb0fb0              # double 0.10255406492348018
	.quad	0x3fe5dc8c9215d2f5              # double 0.68317249805713109
	.quad	0x3fe174f60b5536d3              # double 0.54552747930002921
	.quad	0x3fbd922ea6cb1b60              # double 0.11551181385139619
	.quad	0x3f9071201ea16b40              # double 0.016056539411106074
	.quad	0x3fc62f8aa4dc2c34              # double 0.17332585382277588
	.quad	0x3fd0f6941453500a              # double 0.26504995331674819
	.quad	0x3fe3ca2fe01907be              # double 0.61843103188606796
	.quad	0x3fea767638396e5b              # double 0.8269606683856624
	.quad	0x3fd25051214da808              # double 0.28615215542106442
	.quad	0x3fd0ef46464cd38a              # double 0.26460415711635987
	.quad	0x3febbbda0553f39e              # double 0.86668110886204253
	.quad	0x3fe292805d9a7dec              # double 0.58038347513132527
	.quad	0x3fea9ed14ef22deb              # double 0.8318869153894729
	.quad	0x3fefeb5e87cc574c              # double 0.99748159907424271
	.quad	0x3fef007b85e998e4              # double 0.96880890040190736
	.quad	0x3fd60dbd4414b6c6              # double 0.34458858154799221
	.quad	0x3fccd3ef5da688d4              # double 0.22521774361400182
	.quad	0x3fe7771482dfc7c7              # double 0.73328614770275002
	.quad	0x3fee3db7cd197e3e              # double 0.94503393229019372
	.quad	0x3feeb7a7814d5712              # double 0.9599187398368676
	.quad	0x3fa736c0c45d30a0              # double 0.045339607210366895
	.quad	0x3fefd02a500d50d3              # double 0.99416080126914108
	.quad	0x3fdd4ca4ba84d458              # double 0.45780294623120232
	.quad	0x3fe7db9abd32a9b3              # double 0.74555718376841751
	.quad	0x3fea320d6b037162              # double 0.81860991383613801
	.quad	0x3fe901c5a8d19f02              # double 0.7814663216822455
	.quad	0x3fe7e9c111154593              # double 0.74728444420377327
	.quad	0x3fdccf61f614bfbc              # double 0.45015763312676049
	.quad	0x3fea02bc5be47eb8              # double 0.81283395717397067
	.quad	0x3fe314b7a8497a7b              # double 0.59627898090896225
	.quad	0x3fd4c39621ade442              # double 0.32443764962187427
	.quad	0x3fd94550d7be8e08              # double 0.39485570019516603
	.quad	0x3fc0584d5a7fe0f0              # double 0.1276947681324212
	.quad	0x3fdada047be300ce              # double 0.41955673311532571
	.quad	0x3fd900a592e9fc16              # double 0.39066447588987907
	.quad	0x3fc4f5f576e7c06c              # double 0.16375606828615064
	.quad	0x3fc52def78f358c4              # double 0.16546433835782726
	.quad	0x3fe8f343ff1a4101              # double 0.77969550919263508
	.quad	0x3fae37c9349b7760              # double 0.059019363090313304
	.quad	0x3fbcb872f29b63c8              # double 0.11218946860334633
	.quad	0x3fe9bc83d019ec62              # double 0.80426207203653299
	.quad	0x3feab5215c0b5595              # double 0.83461063363454235
	.quad	0x3fe71fbdc2e2398e              # double 0.72262466490956156
	.quad	0x3fe22b94d9775cb6              # double 0.56782000039938541
	.quad	0x3fe0dd65a7515cc0              # double 0.52702601126920712
	.quad	0x3fef618199119ffa              # double 0.98065261741885412
	.quad	0x3fe1c75e12d385af              # double 0.55558684994701035
	.quad	0x3feba05248d61e22              # double 0.86332048631533476
	.quad	0x3fd0d9be899a56c6              # double 0.26329005658895388
	.quad	0x3fed80339cb48cf1              # double 0.92189961058138981
	.quad	0x3fc3516362ea82a4              # double 0.15092127160916846
	.quad	0x3fede5018e7b7c09              # double 0.93420484379373747
	.quad	0x3fe95a4f55e0f51f              # double 0.792274158222117
	.quad	0x3fdba62a4af8d02e              # double 0.43201691934086994
	.quad	0x3f9d8e8b5b7dba40              # double 0.028864076098608971
	.quad	0x3fcce3380481206c              # double 0.225684168052115
	.quad	0x3fe00c634acd2ec0              # double 0.50151218995730318
	.quad	0x3fb738bb54270830              # double 0.090709407849346446
	.quad	0x3fe88d48c73a9d75              # double 0.76724661743075606
	.quad	0x3fe6a787ee37fad0              # double 0.70795055892070913
	.quad	0x3fd8c2efd3177bd0              # double 0.38689799894740151
	.quad	0x3fd7414377b1bbe0              # double 0.3633583706750283
	.quad	0x3fe0abfbd77e5706              # double 0.52099411095216008
	.quad	0x3fe35a63bdb0ead9              # double 0.60478388833083863
	.quad	0x3fe45b54d61d1604              # double 0.63614885157647949
	.quad	0x3fb9932d9c1b6a88              # double 0.099902010547717635
	.quad	0x3f80d331842aba80              # double 0.0082153194865359769
	.quad	0x3fcc3428d6018694              # double 0.22034178208837274
	.quad	0x3fd53d8af31c977c              # double 0.33188127271056778
	.quad	0x3fc5c4479d3e45ec              # double 0.17005248239415438
	.quad	0x3fe2fe81803b365f              # double 0.59356761021781412
	.quad	0x3fc8bd9287b79758              # double 0.19328529002012362
	.quad	0x3fdf0c44edd3a6e2              # double 0.48512385583181417
	.quad	0x3fe9848557805f5b              # double 0.79742686357620174
	.quad	0x3fa1cc6f5f8647b0              # double 0.034762840662679095
	.quad	0x3fe0fd1c55374255              # double 0.53089729922983031
	.quad	0x3fd87d9a85257e28              # double 0.38266623499473207
	.quad	0x3fe6070385f0f77d              # double 0.68835617218404332
	.quad	0x3f9fc7100dd66de0              # double 0.031032801479893624
	.quad	0x3fe0bac8f22eaac6              # double 0.52280089665631446
	.quad	0x3fe8577c75aa5b42              # double 0.76067946416410614
	.quad	0x3fe429ef2e6680a0              # double 0.63011893332079083
	.quad	0x3fce5610444754e0              # double 0.23700145086210167
	.quad	0x3fe454149e120333              # double 0.63526373742215581
	.quad	0x3fe376db4dcfd47c              # double 0.60825886914848537
	.quad	0x3fe0dbe12169b257              # double 0.5268407490344299
	.quad	0x3fe9331666f89c3e              # double 0.78748626815366385
	.quad	0x3fc47c4086ff8fe8              # double 0.16004187194550856
	.quad	0x3fe2bc4a79b393bd              # double 0.58548473138636548
	.quad	0x3fe3a7b1c7261dcc              # double 0.61422051330821992
	.quad	0x3fd3737fab40fa8c              # double 0.30392448162084729
	.quad	0x3fd35cf1e77c823c              # double 0.30254790884103833
	.quad	0x3fdc73919ec0b96a              # double 0.44455376151281334
	.quad	0x3fedf1ae8aa0e77a              # double 0.93575217319379012
	.quad	0x3fe249ca34d86e5c              # double 0.57150755235074824
	.quad	0x3fe6bb4b72b4f262              # double 0.71036312488247355
	.quad	0x3fe918331124f16b              # double 0.78420403812883188
	.quad	0x3fe149a1c609d17a              # double 0.54023827247014755
	.quad	0x3feb086ec0e17219              # double 0.84477937385560431
	.quad	0x3fea2b3c481be897              # double 0.81777776798050439
	.quad	0x3febdda0442eb586              # double 0.8708039600075359
	.quad	0x3fe6c08f40f42b10              # double 0.71100580869947017
	.quad	0x3fdffa709b1198ea              # double 0.49966063636237712
	.quad	0x3fe48bfc1f00e53a              # double 0.64208799414988182
	.quad	0x3fe5cad79fc22dc1              # double 0.68101102068742858
	.quad	0x3fb408311f376870              # double 0.078249998208237192
	.quad	0x3fa7d819274f5ba0              # double 0.046570573853095043
	.quad	0x3fe9ab52afcb0dc2              # double 0.80216345152478419
	.quad	0x3fba27f8ee1b3b40              # double 0.10217243016380184
	.quad	0x3fe97e71de7a197a              # double 0.796685156369491
	.quad	0x3fec90399d22e0c6              # double 0.89260559740707701
	.quad	0x3feca3a472e93ad0              # double 0.894975876269962
	.quad	0x3fd84c8c2746765e              # double 0.37967208705399524
	.quad	0x3fc1613ab21e75c0              # double 0.13577970216003443
	.quad	0x3fe0d602c952b781              # double 0.52612437554283542
	.quad	0x3fe1be2929ce716a              # double 0.55446298756900814
	.quad	0x3fd6f2279de5cd10              # double 0.35852995319074044
	.quad	0x3fe1fcb9f40e2d40              # double 0.56210038821283348
	.quad	0x3fdda6fb108a8342              # double 0.46331669440592205
	.quad	0x3f9cbf9732e2d060              # double 0.028074610215029216
	.quad	0x3feb54a20b448f24              # double 0.85408117485755896
	.quad	0x3fe1396386a14062              # double 0.53825546545887115
	.quad	0x3fca0304ea68f448              # double 0.20321713872718505
	.quad	0x3fe7378365d4b87c              # double 0.72552652253013106
	.quad	0x3fe53354bfab2ea0              # double 0.66251599726952648
	.quad	0x3fccfb49d3cdcd44              # double 0.22641871301639516
	.quad	0x3fd6612e5b2c7a6c              # double 0.34968146232305375
	.quad	0x3fe0cd59e5a52ca0              # double 0.52506728031712058
	.quad	0x3fe925fdc83489b4              # double 0.78588761427481879
	.quad	0x3fc12e2c22ce4fa0              # double 0.13422157001025159
	.quad	0x3fe04002b56c1a30              # double 0.50781379159963613
	.quad	0x3fb26fd313a55958              # double 0.072018806740151375
	.quad	0x3f6d8d7b20e9cf00              # double 0.0036075024466358796
	.quad	0x3fe34a6b19448d5f              # double 0.60283427176583959
	.quad	0x3fb5206bb1be1f68              # double 0.082525950330930464
	.quad	0x3fe0cf229f279506              # double 0.52528506359945548
	.quad	0x3fe24a5c895b698d              # double 0.57157732799105221
	.quad	0x3feaca1ff45ba8a0              # double 0.83717344022922546
	.quad	0x3fd296230a6683e6              # double 0.29041362777394253
	.quad	0x3f8ef78405557680              # double 0.01512053624417864
	.quad	0x3fd689e235392722              # double 0.35216574857314431
	.quad	0x3fd3231b3ea008c4              # double 0.29901772609458654
	.quad	0x3fe0ce06086e7f3d              # double 0.52514936110308208
	.quad	0x3fea6ec37fe80f3c              # double 0.82602095586523871
	.quad	0x3fc7831f59910b30              # double 0.1836890399300386
	.quad	0x3fd6dcd6f5d5871c              # double 0.35722898490176802
	.quad	0x3fd2745c599fd35c              # double 0.28835209610342871
	.quad	0x3f949ac935bfaa80              # double 0.020121711640892048
	.quad	0x3feebb376abc83a2              # double 0.96035357329320825
	.quad	0x3fe9590c80c2024a              # double 0.79212021968857838
	.quad	0x3fe6495f8d650c60              # double 0.69645669571071878
	.quad	0x3fa615025ed08c90              # double 0.043129037927678415
	.quad	0x3fd5ecb4b41f279a              # double 0.34257237997064183
	.quad	0x3fe4fb7cfd32021c              # double 0.65569924785819778
	.quad	0x3fe92606021ef8d3              # double 0.78589153684859026
	.quad	0x3fe0a4857fe48423              # double 0.52008318881064886
	.quad	0x3fe74b8bead49ce4              # double 0.72797199120841727
	.quad	0x3fe5d9e92fc69353              # double 0.68285044985951016
	.quad	0x3fd7c767f3a314f8              # double 0.37154578011207162
	.quad	0x3fe9d307b6156b9f              # double 0.80701051295487847
	.quad	0x3fa55adfe53a1fd0              # double 0.041708943111245511
	.quad	0x3fe99c3d34294c29              # double 0.80032215297467701
	.quad	0x3fe4fe2972f81040              # double 0.65602562384493268
	.quad	0x3fe37cb71ce25e34              # double 0.60897403375105918
	.quad	0x3fe1b71a8a345bf3              # double 0.55360152237960703
	.quad	0x3fb2a0a1a07df348              # double 0.072763539965262969
	.quad	0x3fc78a349b58f2e4              # double 0.18390519700360308
	.quad	0x3fa1b6b838a161b0              # double 0.03459716502465271
	.quad	0x3fb5bb6dd8747880              # double 0.084891190858316534
	.quad	0x3fec3b3542b69417              # double 0.88222754506989787
	.quad	0x3fe6b93e63687ef2              # double 0.71011275687848596
	.quad	0x3fdb7a5720c9abb0              # double 0.42934206201487779
	.quad	0x3fd6871b998807fe              # double 0.35199632638261835
	.quad	0x3fe722f18ce0fad9              # double 0.72301557078739187
	.quad	0x3fcd5d9e419191b0              # double 0.22941950036614633
	.quad	0x3fe52beb751742fd              # double 0.66161129826841114
	.quad	0x3fe27a1d0800d134              # double 0.57740642130969499
	.quad	0x3fea8824ce89a9ff              # double 0.82911911334423383
	.quad	0x3fe48a64d3f690bf              # double 0.6418937816529463
	.quad	0x3feb8e80d8039a59              # double 0.86114542188881693
	.quad	0x3fedbeff42ab83d1              # double 0.92956507703285685
	.quad	0x3fd17134387b38c8              # double 0.27253442302470576
	.quad	0x3fdfdd80a63a6efa              # double 0.49789444192150223
	.quad	0x3fed9bbd6fb7b750              # double 0.92526122875072225
	.quad	0x3fcb6c21adcbe970              # double 0.2142374132743714
	.quad	0x3fbb910d0cbf87d0              # double 0.10768205224260829
	.quad	0x3fd9d271a5e9b278              # double 0.40346947863034854
	.quad	0x3fedceaaab83e524              # double 0.93147786616387806
	.quad	0x3fd257f54d56345e              # double 0.28661854317107849
	.quad	0x3fa2789af0cba510              # double 0.036076394933681866
	.quad	0x3fd66100c37d0ed2              # double 0.34967059221911001
	.quad	0x3fc9d38c51ff87f8              # double 0.2017684364682848
	.quad	0x3fe35b4cc9782d82              # double 0.60489501332760676
	.quad	0x3fefdadb350ec7a3              # double 0.99546585429037681
	.quad	0x3fa807712c5d9250              # double 0.046931778588974127
	.quad	0x3fdcde07134c2bbe              # double 0.45105149158979063
	.quad	0x3fe1f66f0ed8cf9f              # double 0.56133225345410043
	.quad	0x3fba8fa04c94e0a0              # double 0.10375406140963372
	.quad	0x3fd745a6d9a0802e              # double 0.3636262059462777
	.quad	0x3fd34f2f383d535c              # double 0.30170803539413327
	.quad	0x3fd52dc844737498              # double 0.33091932949702985
	.quad	0x3fdfa1214c4aceee              # double 0.4942095990220271
	.quad	0x3fd89d2ed927bfd6              # double 0.38459368902749469
	.quad	0x3fcd452a9f3154c4              # double 0.22867329381066359
	.quad	0x3fe5353ebc78b432              # double 0.66274964152183302
	.quad	0x3fe6cd0db4fdc65f              # double 0.71253095006813882
	.quad	0x3feb345e43ecb9a7              # double 0.85014260546249865
	.quad	0x3fd6e6b9f91bfb04              # double 0.35783242537574744
	.quad	0x3fe19cc0b32eb89b              # double 0.55038485523779757
	.quad	0x3fd8cb7f2482db36              # double 0.387420449881961
	.quad	0x3fc1028b70690200              # double 0.13289015759256984
	.quad	0x3fe114d8e7ae690a              # double 0.53379483461620336
	.quad	0x3fd09442317b2fe4              # double 0.25904898483417882
	.quad	0x3fc95b906fdbf35c              # double 0.19810681783556106
	.quad	0x3fb104955472c928              # double 0.066476185910492647
	.quad	0x3fe86906011a61ad              # double 0.76282024589004538
	.quad	0x3fed041b64af8675              # double 0.90675134339490049
	.quad	0x3fddcc0c792f8acc              # double 0.46557914576093817
	.quad	0x3fe674fcadb1bccf              # double 0.70178064274468877
	.quad	0x3fe7a6d454bfc8bb              # double 0.73911491921014461
	.quad	0x3fe260e1c56f709a              # double 0.57432640611252173
	.quad	0x3fe8a18e2685e138              # double 0.76972110294358398
	.quad	0x3fedb27b14379366              # double 0.92803720425272895
	.quad	0x3fd63d039d975198              # double 0.34747400655512584
	.quad	0x3fb20beca4cd1d38              # double 0.070494451746630271
	.quad	0x3fdec8ca4d781d18              # double 0.48100526395178766
	.quad	0x3fec444742100047              # double 0.88333475973923548
	.quad	0x3fe69c6f427ca912              # double 0.70659602151616441
	.quad	0x3fe998d28a2567cf              # double 0.7999050806204141
	.quad	0x3fed826a8fe89a33              # double 0.92216995341443064
	.quad	0x3fc8c5cf86b45a18              # double 0.19353670194023276
	.quad	0x3feeb2e3336890a6              # double 0.95933685341562547
	.quad	0x3fde1003ef63257c              # double 0.46972750070252522
	.quad	0x3fd55e691ca52924              # double 0.3338873653161889
	.quad	0x3f8dd1f0f11d4180              # double 0.01456058727095022
	.quad	0x3fd36a7a1745c8d8              # double 0.30337383530344431
	.quad	0x3fea1f58534f8461              # double 0.81632629653553235
	.quad	0x3fd9a63f9c1409c0              # double 0.40077200166720317
	.quad	0x3fe9c74bf7f5e21f              # double 0.80557821683675346
	.quad	0x3fe434af49b03935              # double 0.6314312400079759
	.quad	0x3fc685a12b091ea0              # double 0.17595305062626654
	.quad	0x3fea2bea00cf2e08              # double 0.81786060483995104
	.quad	0x3fe0e29e24bf8fcb              # double 0.52766329934501621
	.quad	0x3fe9de3cdb659372              # double 0.80837862826284224
	.quad	0x3feb844e5ad02e62              # double 0.85990064370112074
	.quad	0x3fe07c7cf6e72568              # double 0.51519630645013326
	.quad	0x3fdd2240b329d5d8              # double 0.45521562096049939
	.quad	0x3fe8e030c174fe97              # double 0.77736699852535451
	.quad	0x3fe1a1ff5ee8c2ee              # double 0.55102509057004823
	.quad	0x3fed07024e457265              # double 0.90710559165343041
	.quad	0x3fa69c45ac315490              # double 0.044161011952987939
	.quad	0x3fd7a6fa5e361efa              # double 0.36956652832348846
	.quad	0x3fd82213a8f44f64              # double 0.3770798826164905
	.quad	0x3feae0c22af39298              # double 0.83993633641201182
	.quad	0x3fd4039a93c76d32              # double 0.31271995955985965
	.quad	0x3fa527af8bdaf750              # double 0.041318403074440568
	.quad	0x3fb21346930fc2c8              # double 0.070606623557760817
	.quad	0x3fed3a9fc3eea395              # double 0.91340626018528559
	.quad	0x3fc06d3585d53a48              # double 0.12833279642878126
	.quad	0x3fa6418deb5f7100              # double 0.043468890172990271
	.quad	0x3fe202cddf1adc55              # double 0.56284230780773703
	.quad	0x3fed235abc0e10a2              # double 0.91056572656136248
	.quad	0x3fd9c1dab0a8e9a6              # double 0.40245692493376806
	.quad	0x3feaaf8c9d437d71              # double 0.83392935481599129
	.quad	0x3fe09a994d14bf86              # double 0.51887192778484414
	.quad	0x3fe920936b3c9947              # double 0.78522654480620069
	.quad	0x3fc452066e46ab54              # double 0.15875320801327553
	.quad	0x3fe1526f6595de09              # double 0.54131288376714892
	.quad	0x3fe54f01aaa51962              # double 0.665894349375588
	.quad	0x3fea58123df8611d              # double 0.82325088599739937
	.quad	0x3fecbfd1e8a8aba1              # double 0.89841552201447794
	.quad	0x3f6f446e69538500              # double 0.0038168102715735452
	.quad	0x3fe4aee3c5ab540c              # double 0.64634884459758402
	.quad	0x3fe85eaf07e12ae5              # double 0.76155807055451119
	.quad	0x3fb0c388194b2918              # double 0.065483575988001141
	.quad	0x3fd9151eb5b4e14a              # double 0.39191406006604679
	.quad	0x3fea744faa623ae2              # double 0.82669814374989081
	.quad	0x3fe02f4e39db9ee8              # double 0.50577460575456445
	.quad	0x3fdd86d94b886da8              # double 0.46135551811468156
	.quad	0x3f9c13eb0d7d99e0              # double 0.027419731806185399
	.quad	0x3fdd4f70fd56dc6a              # double 0.4579737161652192
	.quad	0x3fe18adc53c07b6d              # double 0.54820076329984391
	.quad	0x3fe2797b95c29d69              # double 0.57732943773309586
	.quad	0x3fe4b1b466552bce              # double 0.64669246661048319
	.quad	0x3fbddd1efcf70480              # double 0.11665528942013914
	.quad	0x3fe14287b9fbdc08              # double 0.53937136006322906
	.quad	0x3fdc4f5efc4e6348              # double 0.44234442366864757
	.quad	0x3fcebfcf8ebcfc94              # double 0.24022860021247949
	.quad	0x3fe6b17c156f1aa0              # double 0.70916561304405334
	.quad	0x3fd9492049437faa              # double 0.39508826403288799
	.quad	0x3fe2cbfd85f9bff6              # double 0.58740116278749954
	.quad	0x3fd61cdaef677cf4              # double 0.34551118258782698
	.quad	0x3fe0579f8203d50f              # double 0.51069617646740706
	.quad	0x3febc34ee4173e2a              # double 0.8675913290880477
	.quad	0x3feb26c89e16a391              # double 0.84848433376929411
	.quad	0x3fbb76d39abd9350              # double 0.10728189971775959
	.quad	0x3fe0ee3558a18095              # double 0.52907817183224159
	.quad	0x3fd428d355f0e948              # double 0.31499179260903931
	.quad	0x3fdf38f1e35116c0              # double 0.48785063933278749
	.quad	0x3fda2c607cc5b99c              # double 0.4089585512619125
	.quad	0x3fe27315c39cdca3              # double 0.57654846387494663
	.quad	0x3fbbb1d31e50c6d8              # double 0.10818213930249543
	.quad	0x3fd90b2c85c34d3e              # double 0.39130700171263644
	.quad	0x3fe25d36a2ea0b55              # double 0.5738785917204533
	.quad	0x3fef506559c4f6b1              # double 0.97856395276149588
	.quad	0x3fd43412734e66d0              # double 0.31567822704674331
	.quad	0x3fc08214c3510524              # double 0.12896976029336671
	.quad	0x3f625e1110eac400              # double 0.0022421201059263929
	.quad	0x3fe7c01b8f6d85f6              # double 0.7422006417584146
	.quad	0x3fd2beafe03e411e              # double 0.29288861178157954
	.quad	0x3feb7d0956f762ea              # double 0.8590132425843795
	.quad	0x3fc1ae12b293ee94              # double 0.1381247875177577
	.quad	0x3fe4d98d7a79a930              # double 0.65155671997971432
	.quad	0x3fd204372d6c43f8              # double 0.28150729595023405
	.quad	0x3fef3806b32617a4              # double 0.97558913221358922
	.quad	0x3fdb19b5094489b2              # double 0.42344404130030988
	.quad	0x3fe8f751ce2e39c2              # double 0.78019037503855082
	.quad	0x3fedeadbc5d6cdbb              # double 0.93491924896664302
	.quad	0x3fe5f685da16486b              # double 0.68634312243581286
	.quad	0x3fe8dd836c88a95e              # double 0.77704020689024467
	.quad	0x3fe8fcd262e7c35e              # double 0.78086203877874616
	.quad	0x3fee4dc63c1fb084              # double 0.94699393980910473
	.quad	0x3fce48a1f5e02b5c              # double 0.23659157281539478
	.quad	0x3fd59ac4f7e6c95e              # double 0.33757137498027656
	.quad	0x3fa3c64aa2677fb0              # double 0.038622219395392121
	.quad	0x3fcba9f9f9e2e324              # double 0.21612477017858922
	.quad	0x3fef7456de9040c3              # double 0.98295157880240713
	.quad	0x3fe27a13c5ea1218              # double 0.57740200667518859
	.quad	0x3fb56a91e070cfa8              # double 0.08365737657078276
	.quad	0x3fd705a1da17388e              # double 0.35971876428528382
	.quad	0x3fecb453aa8baf64              # double 0.89701255140014923
	.quad	0x3fd19da50228ccc2              # double 0.27524686060787584
	.quad	0x3fdea61825d983ca              # double 0.47888759323364793
	.quad	0x3fca060f75a05128              # double 0.20330994838207883
	.quad	0x3fc7f6f4766dac4c              # double 0.18722396643292638
	.quad	0x3fe3e03e4b3b798a              # double 0.62112345403493063
	.quad	0x3fee5f3a7f5d915d              # double 0.94912457347940526
	.quad	0x3fe4d82d11fcd654              # double 0.65138867867671957
	.quad	0x3fcef6987e18ba64              # double 0.24190050274906405
	.quad	0x3fcf7a147fbb7324              # double 0.24591308819699365
	.quad	0x3fe68d590e570f1c              # double 0.70475437928004991
	.quad	0x3fd2b88855e634d8              # double 0.29251297367666274
	.quad	0x3fe1c400b7336f46              # double 0.55517612248829873
	.quad	0x3fd4e65149a6fe9a              # double 0.32655746643647776
	.quad	0x3fe761d75fc0a151              # double 0.7306935186543716
	.quad	0x3feab47c8496fcae              # double 0.83453203102535212
	.quad	0x3fc99d09be4c2acc              # double 0.20010492126342283
	.quad	0x3feccaf3458fe007              # double 0.89977420412378784
	.quad	0x3fe1533c9279c07f              # double 0.54141071899904591
	.quad	0x3feac1d135861d37              # double 0.83615932897456602
	.quad	0x3fed0d4be53ac66d              # double 0.90787310382274955
	.quad	0x3fd1290d28575100              # double 0.26813057841833654
	.quad	0x3fe1f0eaebd51a56              # double 0.56065889416715708
	.quad	0x3fc24336875159c8              # double 0.1426761780482606
	.quad	0x3fa87b14e62949e0              # double 0.047814038368091394
	.quad	0x3fe3d8c5190a2d1b              # double 0.6202111710603363
	.quad	0x3fc8ae0dd3a7fc2c              # double 0.1928117068746088
	.quad	0x3fe899ac8aaa3d1b              # double 0.76875903208739105
	.quad	0x3fe622c1e01a3f47              # double 0.69174283762001998
	.quad	0x3feb385b05e0ba63              # double 0.85062934062973417
	.quad	0x3f8fc0ea004538c0              # double 0.015504673131229274
	.quad	0x3fd9da9d191dc650              # double 0.40396811917080289
	.quad	0x3fd8f08c5afa1ccc              # double 0.38968190083000986
	.quad	0x3fe798cfa8bad43e              # double 0.73740370707549352
	.quad	0x3fec3e335f2c4586              # double 0.88259285534347565
	.quad	0x3fdae2fe24fc460c              # double 0.42010453807697057
	.quad	0x3fd62a3b4e53b988              # double 0.34632761620641661
	.quad	0x3fe8c935d313e71b              # double 0.77456179834482286
	.quad	0x3fc541b2b26d3570              # double 0.16606744491802372
	.quad	0x3fc2adb38a169cc0              # double 0.14592594378084378
	.quad	0x3fe8218fce26205e              # double 0.75409689200843011
	.quad	0x3fe785a7feba7f6e              # double 0.73506545783673771
	.quad	0x3fcbe011eb2d9444              # double 0.21777557357123289
	.quad	0x3fdca4c7b7197e8c              # double 0.44755738144702018
	.quad	0x3fef693fa253f40c              # double 0.98159772591282168
	.quad	0x3fedb5981a962077              # double 0.9284172553316371
	.quad	0x3fed0da268bd3edc              # double 0.90791435677416698
	.quad	0x3febf4e494df9ca6              # double 0.87364415242054316
	.quad	0x3fe6151f216e20a1              # double 0.69007832078297693
	.quad	0x3fe6f71aeb1dd0c4              # double 0.7176642028921596
	.quad	0x3fd7f4502d08fb1e              # double 0.3742866935535164
	.quad	0x3fef8aac3413b1bb              # double 0.98567781611705329
	.quad	0x3fee4b169611d2c7              # double 0.94666604338143479
	.quad	0x3fd96de9405ec0f4              # double 0.39733344350953748
	.quad	0x3fd9976deea6bbbc              # double 0.39986751848021718
	.quad	0x3fed92a663dcfa01              # double 0.92415160660294771
	.quad	0x3fe7d2bd46b8a1cf              # double 0.74447501957643591
	.quad	0x3fc80c0819f3e5e8              # double 0.1878671766969966
	.quad	0x3fef0ccd562b2e81              # double 0.97031275586910237
	.quad	0x3fb4fff44a13a658              # double 0.082030551991601697
	.quad	0x3fd7fd5cad5dfc20              # double 0.37483899050124769
	.quad	0x3fd94514d8dba13e              # double 0.3948413961175169
	.quad	0x3fb4e8e53e64e060              # double 0.081678703053400081
	.quad	0x3fd9ecbabb549252              # double 0.4050738171957039
	.quad	0x3feaa7109458c6dd              # double 0.83289364789944964
	.quad	0x3fe57be748b04174              # double 0.6713749332139245
	.quad	0x3fd63994268c36b4              # double 0.34726432575630928
	.quad	0x3fdf72831b47ff3c              # double 0.49136426605399541
	.quad	0x3fee04763e4b0319              # double 0.93804466406445208
	.quad	0x3fda9bc255210ac2              # double 0.41575678170572072
	.quad	0x3fe02b3b98a1770a              # double 0.50527744112670914
	.quad	0x3fe943f81798e95d              # double 0.78954701050615095
	.quad	0x3fe6fcb4587d4505              # double 0.71834771426270605
	.quad	0x3fd27978f1531774              # double 0.2886640888867682
	.quad	0x3f81cf5609d3b480              # double 0.0086962434529260779
	.quad	0x3fe9c593317f75b4              # double 0.80536803882176011
	.quad	0x3fee940966ab5665              # double 0.95557088902087328
	.quad	0x3fb8d77059b34d08              # double 0.097037336253652851
	.quad	0x3fd6f7c9848bfb50              # double 0.35887372917197968
	.quad	0x3fece14ab0a75014              # double 0.90250143530511417
	.quad	0x3fdb091a323f43b2              # double 0.42243056208559004
	.quad	0x3fd4ceb02a0b1e34              # double 0.32511524301341699
	.quad	0x3fd7784e5ebc7604              # double 0.36671790362910905
	.quad	0x3feffb26c692d3f7              # double 0.99940813812156548
	.quad	0x3fb6083a19b0d540              # double 0.086063033363491748
	.quad	0x3fbeb892b1be77e0              # double 0.12000386084989101
	.quad	0x3fbae314ad656cb8              # double 0.10502747758202957
	.quad	0x3fe477a3a873c3e5              # double 0.63960440541097496
	.quad	0x3feda155d0bf34b5              # double 0.92594424029234423
	.quad	0x3fe28ee87cffc3b3              # double 0.57994484342463293
	.quad	0x3fe94b145c001b6c              # double 0.79041498154479716
	.quad	0x3fee775932b865cd              # double 0.95206890016850709
	.quad	0x3fef53fb8c890873              # double 0.97900178383157621
	.quad	0x3fbe6568a7b8ea68              # double 0.11873487562926643
	.quad	0x3fce39cf401c642c              # double 0.23613920813002787
	.quad	0x3fa19f06e47f0940              # double 0.034416404144865798
	.quad	0x3fe8003f8212ed4c              # double 0.75003028302254781
	.quad	0x3fd3d5dd68b13252              # double 0.30992827628941655
	.quad	0x3fe14c14c34587a3              # double 0.54053724421486427
	.quad	0x3feb6ce9756cb821              # double 0.85704491552838047
	.quad	0x3fe61ff63c3ecf92              # double 0.6914015938441358
	.quad	0x3feadb04774b0afa              # double 0.83923552798691436
	.quad	0x3fd9989757682b54              # double 0.39993842635947385
	.quad	0x3fd07d22ac202c8a              # double 0.25763766106747055
	.quad	0x3fe24680572bc5d3              # double 0.57110611939986666
	.quad	0x3fee77e033662d63              # double 0.95213327444927776
	.quad	0x3fb075b72b9a1fe8              # double 0.064296196122199611
	.quad	0x3fdcc0b22e4a9910              # double 0.44926123161930409
	.quad	0x3fee144a45bfc67f              # double 0.93997682211757183
	.quad	0x3fe0d20d82334d87              # double 0.52564120702520334
	.quad	0x3fd3f13c3ed4fcac              # double 0.31159883628783791
	.quad	0x3fdfd618e80741b0              # double 0.49744246157663508
	.quad	0x3fe9e318c18fb01b              # double 0.80897176556527783
	.quad	0x3fecd725f142bf70              # double 0.90126320954548866
	.quad	0x3fead0a9a1d80b0a              # double 0.83797151193752595
	.quad	0x3fa6eadfacca9760              # double 0.044760694353768171
	.quad	0x3fccdb9820664f40              # double 0.22545148450864794
	.quad	0x3fe112ddcffc1634              # double 0.53355303403868115
	.quad	0x3fe3aa7fbcc17ec0              # double 0.61456286302924212
	.quad	0x3fe2115b56475e30              # double 0.56461874820064928
	.quad	0x3fef9eb9746827cb              # double 0.98812554107393546
	.quad	0x3fe157ec719a3ca3              # double 0.54198286235795867
	.quad	0x3fb51a94bf538a40              # double 0.082436844549683919
	.quad	0x3fe228c5f58b91c4              # double 0.56747720678372859
	.quad	0x3fef18ca047b59bb              # double 0.9717760169540307
	.quad	0x3fc58905e3c6b6b0              # double 0.16824411031614295
	.quad	0x3fe2d6058780d1ed              # double 0.58862568345517519
	.quad	0x3fecad438ed6a9b0              # double 0.89615037820958854
	.quad	0x3fdc74f0f800d1c6              # double 0.44463752955496394
	.quad	0x3fb63121e4442138              # double 0.086687200764690497
	.quad	0x3fe6b52e15be7138              # double 0.70961670157297529
	.quad	0x3fed34c8053ce602              # double 0.91269303343796104
	.quad	0x3fe52371b0561157              # double 0.6605766719881484
	.quad	0x3fedc9d010d00d0e              # double 0.93088534625749886
	.quad	0x3fcc0547514fac68              # double 0.21891108961367256
	.quad	0x3fe5f1486d6e5209              # double 0.68570348141889881
	.quad	0x3fb21deafec56e38              # double 0.070769011688235461
	.quad	0x3fed6cfa107ef0cd              # double 0.9195528337654878
	.quad	0x3fdddf5ffed24dc0              # double 0.46675872692977904
	.quad	0x3fee0346f590ac6c              # double 0.9379000469392742
	.quad	0x3fdb1f51c8f0a404              # double 0.42378658888861787
	.quad	0x3fe8851cc2153b03              # double 0.76624906451056096
	.quad	0x3fd1e87d02b37f1a              # double 0.27981496108803727
	.quad	0x3fddbb41f6aa6528              # double 0.46455430115163887
	.quad	0x3fc01ca1dbcf38c0              # double 0.12587378723987364
	.quad	0x3fd8f42aab372f90              # double 0.38990275116224726
	.quad	0x3fe89029206bcd0f              # double 0.76759773571248668
	.quad	0x3fc4666398dc059c              # double 0.15937466586914872
	.quad	0x3fd2f41f0e95dc22              # double 0.29614998268465531
	.quad	0x3fea07d8347b7987              # double 0.81345758676961644
	.quad	0x3fc69d776d01faa4              # double 0.17668049643176176
	.quad	0x3fe92a8eecf95259              # double 0.78644510539977397
	.quad	0x3fddea14a15435f0              # double 0.46741214518337326
	.quad	0x3fef3d6f425eae7a              # double 0.97624934161053933
	.quad	0x3fd074f9609661ee              # double 0.25713953430525194
	.quad	0x3fe6eff7827e69b7              # double 0.71679282652922083
	.quad	0x3fed318abdb15ca0              # double 0.91229760217074229
	.quad	0x3fd66b6a2cf9ebf0              # double 0.35030607597553765
	.quad	0x3fbf679f0ff2a290              # double 0.1226748861250917
	.quad	0x3fec5ed5c9628ff5              # double 0.88657655079850761
	.quad	0x3fe81f102fa4aed7              # double 0.75379189782457956
	.quad	0x3fc5b22ebecba774              # double 0.1695002013796586
	.quad	0x3fb5e648c4cbfed8              # double 0.085545108839137796
	.quad	0x3fe104376e8c8b46              # double 0.53176471320726004
	.quad	0x3fe3ddf3f2007e8b              # double 0.62084386125566604
	.quad	0x3fe5f54374c53eeb              # double 0.68618939215408881
	.quad	0x3fe411dcbb5935d0              # double 0.62718044845103726
	.quad	0x3fc0e8c13c704d5c              # double 0.13210311366183702
	.quad	0x3fe313a9a1c97908              # double 0.59615022276901275
	.quad	0x3fed804ade3c4236              # double 0.92191069989536945
	.quad	0x3fd3bd998e2e6310              # double 0.30844725499041292
	.quad	0x3feb955daf1d8f09              # double 0.86198314859618208
	.quad	0x3fbf032d98340be0              # double 0.12114224401379614
	.quad	0x3fd92e3a9469eada              # double 0.39344658368615415
	.quad	0x3fe87cb2005e7874              # double 0.76522159645152365
	.quad	0x3fe3c9844d53c2e7              # double 0.61834921935050324
	.quad	0x3fefbbd55c9ac4bf              # double 0.99167888724164032
	.quad	0x3fee4e57573f16ef              # double 0.9470631317169288
	.quad	0x3fea70eaced577cd              # double 0.82628384015310419
	.quad	0x3fe46ac4b021576b              # double 0.63803324127614525
	.quad	0x3fdb1dcd0cec07f8              # double 0.42369390737451296
	.quad	0x3fe77d3bf65fc0e8              # double 0.73403738136223939
	.quad	0x3fd93a1fadc7cd20              # double 0.39417259188413034
	.quad	0x3febfb5f90b3d4a9              # double 0.87443521749687136
	.quad	0x3fc910dc6c97e798              # double 0.19582705786143317
	.quad	0x3fd53230d02bf828              # double 0.331188395779352
	.quad	0x3feec2324b427725              # double 0.96120562266489584
	.quad	0x3fc1fe96e8fdf468              # double 0.1405819547325422
	.quad	0x3fd1b472731693d8              # double 0.27663861502725018
	.quad	0x3fab69a24ed991a0              # double 0.053540298581342016
	.quad	0x3fa31d7f70ec9540              # double 0.037334425482451028
	.quad	0x3fbe57cd40d9f0c0              # double 0.11852724869999332
	.quad	0x3fea931bdd73b133              # double 0.83045762302712089
	.quad	0x3fd3f5c512881ff4              # double 0.31187559900035855
	.quad	0x3fe917a57ec8f688              # double 0.78413653147409068
	.quad	0x3fb7cd8fd9189c30              # double 0.092980375768647816
	.quad	0x3feac6e818ba0f1a              # double 0.83678059415294404
	.quad	0x3fe7c2a17365a4c3              # double 0.74250862635121739
	.quad	0x3fd1aa77ab53d58a              # double 0.27602950793456016
	.quad	0x3fdeb838cb1f9474              # double 0.47999400936379932
	.quad	0x3fd84c45943fe150              # double 0.3796552608250936
	.quad	0x3fdd34260c55cf50              # double 0.45630789951905104
	.quad	0x3fe2e6656041babf              # double 0.59062451172015773
	.quad	0x3fc5a2f1ce786fd0              # double 0.16903517324033013
	.quad	0x3fc0922f67f0d030              # double 0.1294612176440082
	.quad	0x3fdb533d06b5d7d8              # double 0.42695546775155213
	.quad	0x3fdc87d248aacd66              # double 0.44578988167196198
	.quad	0x3fcbee52d19ca96c              # double 0.21821055636366837
	.quad	0x3fd47b97b675ac00              # double 0.3200434953529907
	.quad	0x3fe59e2978a14473              # double 0.67555688438927886
	.quad	0x3fe9dba6383342ba              # double 0.8080626580868604
	.quad	0x3fd446fba7ca6156              # double 0.3168324602679794
	.quad	0x3fc731d553109fe0              # double 0.18120829158692597
	.quad	0x3fed3c36d0be8bcd              # double 0.91360035677313933
	.quad	0x3fdeb72783f4fa46              # double 0.47992885481281566
	.quad	0x3fea0f51c2c4153f              # double 0.81437004127716495
	.quad	0x3fa656cba602ca00              # double 0.043630947127343944
	.quad	0x3fe453771e742e8a              # double 0.63518863628401445
	.quad	0x3fd5380f3ed30ec2              # double 0.3315466035385094
	.quad	0x3fee2f40f2ab8a1f              # double 0.9432682742738655
	.quad	0x3fe2742da0db01e3              # double 0.57668191353883136
	.quad	0x3fe3815f18bcad54              # double 0.60954241591881919
	.quad	0x3fd681a3297d9608              # double 0.35166243602574854
	.quad	0x3fd84c9e6808fc96              # double 0.3796764389007391
	.quad	0x3fd9e642f1aa071a              # double 0.4046790466310185
	.quad	0x3fe8597357d8fd3b              # double 0.76091925771462543
	.quad	0x3fd149665e5d0db4              # double 0.27010497298416714
	.quad	0x3fdc3328d1798ba0              # double 0.44062252480051178
	.quad	0x3fef17ab0777c353              # double 0.97163917025145918
	.quad	0x3fe06f902272ea77              # double 0.51361853340433938
	.quad	0x3fe7ebbb38e247bc              # double 0.74752579794061758
	.quad	0x3fe919937afeb8d6              # double 0.78437208197081065
	.quad	0x3fead53b53f8303f              # double 0.8385292663601901
	.quad	0x3fbda6b00ea96648              # double 0.11582470281555246
	.quad	0x3fda0a9f84309c3c              # double 0.4068983832280002
	.quad	0x3fddc5742d56d58c              # double 0.4651766245618425
	.quad	0x3fd5b36e0f77943a              # double 0.3390765334173157
	.quad	0x3fe38aef3a635464              # double 0.61070977596194753
	.quad	0x3fef7f71fca54e80              # double 0.98430728287571867
	.quad	0x3fe4b6a816426a07              # double 0.64729694697899809
	.quad	0x3fd432c086780462              # double 0.31559765941353224
	.quad	0x3fd10abef06da9a0              # double 0.26628087500889741
	.quad	0x3fe9eceea5def359              # double 0.81017238995228091
	.quad	0x3fe3467e63feda7e              # double 0.60235518961310652
	.quad	0x3fe3ee7464d9f4ca              # double 0.62285823533570661
	.quad	0x3fedb90200380a01              # double 0.92883396189455436
	.quad	0x3fd34214bee18262              # double 0.30090826645576929
	.quad	0x3fe921a91e26d935              # double 0.78535896195425059
	.quad	0x3fe7cc966438b289              # double 0.74372405600077329
	.quad	0x3fece07b986f7dff              # double 0.90240268490373399
	.quad	0x3fd368a99a77e154              # double 0.30326309284966624
	.quad	0x3fedf3c2e292f735              # double 0.93600601437331099
	.quad	0x3fe9b09b8b12c97b              # double 0.80280854380389088
	.quad	0x3fdbf1ffadb6eb1a              # double 0.43664543117817944
	.quad	0x3fdcf7eb9393635c              # double 0.4526318494004522
	.quad	0x3f926b6bcf9784c0              # double 0.017987904115106756
	.quad	0x3fdc8512bb8d3a3a              # double 0.44562214198677774
	.quad	0x3fe2ac54f45313d9              # double 0.58353660316117406
	.quad	0x3fe485dcadb12852              # double 0.64134057926390597
	.quad	0x3fdc51d165813602              # double 0.44249377167292903
	.quad	0x3fd0d2fd549b0780              # double 0.26287778150810226
	.quad	0x3fe174c9753f1d2d              # double 0.54550621890749584
	.quad	0x3fec0964c08a77f7              # double 0.87614667516368072
	.quad	0x3fdafbeac7016180              # double 0.42162579950447565
	.quad	0x3fee5b02bca4ad2c              # double 0.94860970348728335
	.quad	0x3fd4eecbbd175af2              # double 0.32707494226399014
	.quad	0x3fd739885c8df8da              # double 0.36288651503117608
	.quad	0x3fd30c9b9377d706              # double 0.29764451409515436
	.quad	0x3fe0ff7296d1e516              # double 0.5311825700474937
	.quad	0x3fe5ae6195952044              # double 0.67753676619850767
	.quad	0x3fd19ed80b080eb6              # double 0.27532006337444714
	.quad	0x3fd5ccc4aad8a6b0              # double 0.34062306102951379
	.quad	0x3fe1c1fe9132ca1b              # double 0.5549309574037723
	.quad	0x3fdea2ace9e15868              # double 0.47867892112606691
	.quad	0x3feb47af88fd7e11              # double 0.85250069385432614
	.quad	0x3fe8b3dd22280eaa              # double 0.77195603057085305
	.quad	0x3fe58721de5bc55e              # double 0.67274564198866549
	.quad	0x3fd5d706c48db742              # double 0.3412491721600085
	.quad	0x3feb3541c11fec15              # double 0.85025108070056155
	.quad	0x3fcf929f675abc00              # double 0.24666206881144603
	.quad	0x3fc3449252997398              # double 0.1505301383321267
	.quad	0x3fe847bcd23c18c0              # double 0.75875702916598442
	.quad	0x3feb504ba42b1f63              # double 0.85355169357442795
	.quad	0x3fe0e1694b527dc3              # double 0.52751602851270041
	.quad	0x3fc8d9e110f0c89c              # double 0.19414914443183739
	.quad	0x3fce70f8693006c0              # double 0.23782258163560321
	.quad	0x3fe6ead241dbbe75              # double 0.71616471159900519
	.quad	0x3fdc7c8f4cee4998              # double 0.44510252487921198
	.quad	0x3fe87353794e7584              # double 0.7640778893725586
	.quad	0x3fd1f1850bd222d4              # double 0.28036619333628932
	.quad	0x3feb9aa208a6865b              # double 0.86262609185741768
	.quad	0x3fdb2ed6961d5c66              # double 0.42473377856862837
	.quad	0x3fd02a7f30e4ba8a              # double 0.25259380125763953
	.quad	0x3fd6ff40a25ed6a8              # double 0.35932937485209004
	.quad	0x3fe500717888b508              # double 0.65630410711097031
	.quad	0x3fecd47d2e3797b3              # double 0.90093859698094148
	.quad	0x3fe44227eed254f5              # double 0.63307568211408116
	.quad	0x3fe80529634ba12c              # double 0.7506300868381337
	.quad	0x3fb66c72ddeca268              # double 0.087592295819044375
	.quad	0x3fc46e8324282f44              # double 0.15962256684758291
	.quad	0x3fc5d3416f92fea4              # double 0.17050950954398048
	.quad	0x3fedc9220686fe71              # double 0.93080235743395978
	.quad	0x3fdd7dabb5a61a8a              # double 0.460795333281944
	.quad	0x3fe04c57049cbf4f              # double 0.50931883717383097
	.quad	0x3fe582e07c54f625              # double 0.67222618373461229
	.quad	0x3fd2d736a94de0fe              # double 0.29438559087385829
	.quad	0x3febe415496f078d              # double 0.87159218161126406
	.quad	0x3feb2e4e52da6952              # double 0.84940258199939422
	.quad	0x3feb88f9be9a846a              # double 0.86047064997923184
	.quad	0x3fe3e26ca17c6c07              # double 0.62138968982924403
	.quad	0x3fe7e5089573f98e              # double 0.74670819463772076
	.quad	0x3fce02823075264c              # double 0.23445155492872727
	.quad	0x3fef419f930b146f              # double 0.97676066131010752
	.quad	0x3fd620b40c31f1ca              # double 0.34574605170180617
	.quad	0x3fe7230853b4d479              # double 0.72302643155002422
	.quad	0x3feb4eb017a2a282              # double 0.85335545173900607
	.quad	0x3fe1ff36c3ec5a32              # double 0.56240404382953657
	.quad	0x3fe4ecb43a0ba482              # double 0.65389453255660634
	.quad	0x3fee0339b0759485              # double 0.93789371933657206
	.quad	0x3fdcdd88ee261dd8              # double 0.45102141625144787
	.quad	0x3fc0952142034338              # double 0.12955108378675972
	.quad	0x3fee7460445ae6d5              # double 0.95170605993845447
	.quad	0x3fe81ea87943ef92              # double 0.75374244389193934
	.quad	0x3fd55022582400ee              # double 0.33301600081905647
	.quad	0x3fe6072b99b093a3              # double 0.68837528245477519
	.quad	0x3fe53b392e3f28d3              # double 0.66347941429674007
	.quad	0x3fb95ff8e0a858b0              # double 0.099120669220016166
	.quad	0x3fc6483b8ec792c4              # double 0.17407936546000802
	.quad	0x3fecec6b2f2304c7              # double 0.90385970312504405
	.quad	0x3fe67fc0d89745c5              # double 0.7030948858538798
	.quad	0x3f9dc42da0357940              # double 0.029068673041700466
	.quad	0x3fe6775661347583              # double 0.70206755624137462
	.quad	0x3fd7fa7d77626abe              # double 0.3746637025703129
	.quad	0x3fbda46a4b335da0              # double 0.11579002700761132
	.quad	0x3feea5fe13bd5ca8              # double 0.95776275496873086
	.quad	0x3fdba974764f0f28              # double 0.43221770814510529
	.quad	0x3fdbd0b8636286a2              # double 0.43461427407792474
	.quad	0x3fe7d141d6513d11              # double 0.74429408892493332
	.quad	0x3fbb0ae36ea47230              # double 0.10563489390592262
	.quad	0x3fe1cea470fc8f0d              # double 0.55647489612280909
	.quad	0x3fea8bc92c947484              # double 0.82956370074283869
	.quad	0x3fe6653ea765bc4b              # double 0.69985897726827184
	.quad	0x3fc3bfcda33b5270              # double 0.15429087133692887
	.quad	0x3fd05eb7e102dd78              # double 0.25578114484547809
	.quad	0x3fee821e606cbef9              # double 0.95338362534491161
	.quad	0x3fe57616c0531bb9              # double 0.67066514552504153
	.quad	0x3fe493bc3d0466fa              # double 0.64303409497662689
	.quad	0x3fe5f74c5bf1551f              # double 0.68643777806815709
	.quad	0x3fd0a55690feed8c              # double 0.26009143981692584
	.quad	0x3fde388094c745c6              # double 0.47219862488881537
	.quad	0x3fd56affae792674              # double 0.33465568579104077
	.quad	0x3fd3907bbc5bb4ec              # double 0.30569356340750065
	.quad	0x3fec0e24897d306e              # double 0.87672640660595191
	.quad	0x3fe4d5711f4db0e1              # double 0.65105491746865252
	.quad	0x3fe75bb985349650              # double 0.72994686142619436
	.quad	0x3fe938b08d3b3f02              # double 0.78817012390388208
	.quad	0x3fe43aca90f8b0f9              # double 0.63217666926132587
	.quad	0x3fc9ab59424ccb84              # double 0.20054164635947924
	.quad	0x3feca3191c587009              # double 0.89490943466398776
	.quad	0x3f832120e6645a80              # double 0.009340531378751793
	.quad	0x3fd411684100ceba              # double 0.31356245372738167
	.quad	0x3fc09c299844a92c              # double 0.12976570067378057
	.quad	0x3fe0f877ae356983              # double 0.53033050561070672
	.quad	0x3fd5163c8d1d46ae              # double 0.32948220997523492
	.quad	0x3fde4729e729e81a              # double 0.47309348654346339
	.quad	0x3fceab7c0a38018c              # double 0.23960829256976657
	.quad	0x3fd13dc2e912ed88              # double 0.26939461480261473
	.quad	0x3fa4251422230cc0              # double 0.039345387618163752
	.quad	0x3fce9bb4de20e350              # double 0.23912678571812274
	.quad	0x3fd90cdea6fc7316              # double 0.39141050631751406
	.quad	0x3fe0d32f480cefdb              # double 0.52577938148851489
	.quad	0x3fc653bf3afd4254              # double 0.17443075542770947
	.quad	0x3fc7a5775d1c661c              # double 0.1847371296542385
	.quad	0x3fd0b1212038fda0              # double 0.26081112047901378
	.quad	0x3fc3e7e367b4cbf0              # double 0.15551416934758278
	.quad	0x3fe646e8a40d63ad              # double 0.696155853666928
	.quad	0x3f8a5608bdb93fc0              # double 0.012859409608750982
	.quad	0x3fd7eeb031a446f0              # double 0.37394337508986464
	.quad	0x3fef77dd4395126a              # double 0.98338187408132893
	.quad	0x3fe258020a978953              # double 0.57324316090334049
	.quad	0x3fe93ac9a35fe2d3              # double 0.78842622670262086
	.quad	0x3fdc4e3dc4d02362              # double 0.44227546901725223
	.quad	0x3fab1cec85f17480              # double 0.052955046987997356
	.quad	0x3fb5b207f5b4da08              # double 0.084747788893629772
	.quad	0x3fdf6355a666650c              # double 0.49043790102003082
	.quad	0x3f971269ed1a10e0              # double 0.022531180473848944
	.quad	0x3fe68115414fbf34              # double 0.70325720554499194
	.quad	0x3f8d95127a756f40              # double 0.014444488870757888
	.quad	0x3fe69dffffcbee4e              # double 0.70678710899614727
	.quad	0x3fecd9e0aaebb16c              # double 0.90159638770050554
	.quad	0x3fd577745064e7f0              # double 0.33541591502182566
	.quad	0x3fe0b2a96cd02eb7              # double 0.52180930378513934
	.quad	0x3fbe2b4cee9175e0              # double 0.11784821342867913
	.quad	0x3fa134184aff1170              # double 0.03360057750208767
	.quad	0x3fdd69406cb79130              # double 0.45954905144596392
	.quad	0x3fed38f552aee0ea              # double 0.91320291661307107
	.quad	0x3fe7af07aeaccd3d              # double 0.74011596790516132
	.quad	0x3fe1d0961a5b66ce              # double 0.55671219966753838
	.quad	0x3fe043ef2b4d5860              # double 0.50829275567481247
	.quad	0x3fba0a21df027378              # double 0.10171710676736534
	.quad	0x3fe276dd4da5a6c1              # double 0.57700982251591182
	.quad	0x3fc72e814800d0a4              # double 0.18110672012119722
	.quad	0x3fe4668b1f37ac52              # double 0.63751751038706517
	.quad	0x3fe31501dc6a24c7              # double 0.59631436395388782
	.quad	0x3fd6a6d05e7cb440              # double 0.35393151499994602
	.quad	0x3fc20cf15048bb40              # double 0.14101997776148245
	.quad	0x3fafa2a3d63a50c0              # double 0.061787719632009352
	.quad	0x3fde5d2a7eeb428a              # double 0.47443640131408726
	.quad	0x3fe71c9a341f016b              # double 0.72224149875550603
	.quad	0x3fe583b75b94d523              # double 0.67232864272105919
	.quad	0x3fe16fdba5c229c6              # double 0.54490454077431916
	.quad	0x3fc5c4ab55d5f0a0              # double 0.17006437007137709
	.quad	0x3fd9729bb6970090              # double 0.39762013274231212
	.quad	0x3fcc82d58c077aac              # double 0.2227427419411091
	.quad	0x3fd9b50f2637aa1c              # double 0.40167597515270059
	.quad	0x3fe323f54ec78607              # double 0.59813943277930626
	.quad	0x3fd94e01d73f4590              # double 0.39538618107061385
	.quad	0x3fd1931638caa4f6              # double 0.27460246606877037
	.quad	0x3fde19ff8341052e              # double 0.4703367978837204
	.quad	0x3fed88edcef7fe86              # double 0.9229649584157904
	.quad	0x3f973fa863eb67a0              # double 0.022703772638898223
	.quad	0x3fede3dac7a91880              # double 0.93406428333470615
	.quad	0x3fb98159741d2908              # double 0.099629965637323292
	.quad	0x3f98e88522bfd080              # double 0.02432449364273781
	.quad	0x3f78487ce52ec080              # double 0.0059285048218243874
	.quad	0x3f8302a2e2e39bc0              # double 0.0092823720446640889
	.quad	0x3fe92de3f82a9318              # double 0.78685186834317999
	.quad	0x3fe2df34aa474c3f              # double 0.58974679238816197
	.quad	0x3fed593e39f04c29              # double 0.91714392963547653
	.quad	0x3feff432a94a3983              # double 0.99855931343499582
	.quad	0x3fe0aab7339aabbb              # double 0.52083931044523213
	.quad	0x3fd94b8a51576eaa              # double 0.39523561423787135
	.quad	0x3fe0c29d0417d748              # double 0.52375651168288417
	.quad	0x3fc541da9106e5fc              # double 0.1660721977366818
	.quad	0x3feaeba2a4b8b273              # double 0.84126407787478141
	.quad	0x3feb3fbec5d82571              # double 0.85153139726132399
	.quad	0x3f9e31a70de39720              # double 0.02948628446838264
	.quad	0x3fe22f956d215c08              # double 0.56830855669511582
	.quad	0x3fd62b191cf1f276              # double 0.3463804991404581
	.quad	0x3fe531c89eb28e3c              # double 0.6623271083412372
	.quad	0x3fb6f0e81c78b968              # double 0.089613444281643972
	.quad	0x3fed1cc01f46722c              # double 0.90975957973893661
	.quad	0x3feae66816b8a3e7              # double 0.84062580526108099
	.quad	0x3fe2d5e69198e250              # double 0.5886109203048111
	.quad	0x3feeebe05bf4def4              # double 0.96629350624331644
	.quad	0x3fc4ba030aaee708              # double 0.16192663213387726
	.quad	0x3fc61d4b03941870              # double 0.17276895212870924
	.quad	0x3fe3b3ec704303dc              # double 0.6157133286106915
	.quad	0x3fe150b5138d9f98              # double 0.54110196894633855
	.quad	0x3fb95ace9cce55d0              # double 0.099041856081689916
	.quad	0x3fef5fb8fe3eda78              # double 0.9804348912937959
	.quad	0x3fc14d703aa66698              # double 0.13517573226709056
	.quad	0x3fd9a1dab70c9712              # double 0.40050380588432788
	.quad	0x3fe0c01e3b5a6b9d              # double 0.52345191566870464
	.quad	0x3fe4440776af7a5c              # double 0.63330434017900528
	.quad	0x3fe20ef19dbf0ed2              # double 0.56432419595554451
	.quad	0x3fb37597dbc50c20              # double 0.076013079790798077
	.quad	0x3fe5cf67322d69e2              # double 0.68156776237747985
	.quad	0x3fe06316c77a8621              # double 0.51209582291284417
	.quad	0x3fe673e073580f7b              # double 0.70164511230585391
	.quad	0x3fe7d1a81b4bceee              # double 0.74434285479807527
	.quad	0x3fcbff396051e8d0              # double 0.21872632220385535
	.quad	0x3fd178a819c26aec              # double 0.27298929706164077
	.quad	0x3fdb7325495dba72              # double 0.42890293278370628
	.quad	0x3fdf58510dc1ca60              # double 0.48976541846710653
	.quad	0x3fd766bd339aec3e              # double 0.36564569511000744
	.quad	0x3fd9cb55049c41ca              # double 0.40303540659172354
	.quad	0x3fe92c666484e6f4              # double 0.78666991837164212
	.quad	0x3fe85a4951d93501              # double 0.76102128969219518
	.quad	0x3fb6b4ffdbe52c70              # double 0.088699332414010845
	.quad	0x3fedbf9fe8c4e8d1              # double 0.92964168036203365
	.quad	0x3fe83fbe883b4cbf              # double 0.75778128249876164
	.quad	0x3fe26a51a88bd9bf              # double 0.57547839087674635
	.quad	0x3fd33d98f948668e              # double 0.30063461631798638
	.quad	0x3fe521d4512c7be5              # double 0.66037956098795958
	.quad	0x3fd6ff9530829a48              # double 0.35934953439064943
	.quad	0x3fd5e561f1e418a0              # double 0.34212540266197244
	.quad	0x3fe10b3a1bf959b6              # double 0.53262048209835799
	.quad	0x3fcebdfa87a9028c              # double 0.24017268775971379
	.quad	0x3fd64ed55c4b80a4              # double 0.348561611301202
	.quad	0x3fc905b5c1af9c04              # double 0.19548675496409385
	.quad	0x3feebf96777d8bff              # double 0.96088717782947685
	.quad	0x3fed5c0cd9b50f42              # double 0.9174865963072778
	.quad	0x3fd06eb666461660              # double 0.25675735461877558
	.quad	0x3fda1b97b89a6d20              # double 0.40793412234934756
	.quad	0x3fdd4160867761d0              # double 0.45711529857137823
	.quad	0x3f93e9852c2c0460              # double 0.019445496388474814
	.quad	0x3feadc664a15ccd4              # double 0.83940424413449443
	.quad	0x3fdb840f5cedf924              # double 0.42993530345110487
	.quad	0x3fa0afa0562fe4b0              # double 0.032589922448047814
	.quad	0x3fbeef0896d27580              # double 0.12083486253910358
	.quad	0x3fea6efccdd1084f              # double 0.82604828070203407
	.quad	0x3fe16d053cb462cd              # double 0.54455816131948043
	.quad	0x3fe82783c9e4030b              # double 0.75482358390590443
	.quad	0x3fe3d54cf2c58bfe              # double 0.61978766838399202
	.quad	0x3fd1b950a373e2a0              # double 0.27693572961974589
	.quad	0x3fe1d1112ccecd62              # double 0.55677088500526062
	.quad	0x3feeb0af062460e5              # double 0.95906783294324482
	.quad	0x3fea752434bcb9b8              # double 0.82679949093090155
	.quad	0x3fe8fa832c9f422b              # double 0.78058012690786904
	.quad	0x3fd69ba780f8c6e6              # double 0.35325038523579477
	.quad	0x3fdb04169be38894              # double 0.42212453101650138
	.quad	0x3fe122a35dd9ef45              # double 0.53547828989346924
	.quad	0x3fc24e95b26153c4              # double 0.14302321634263937
	.quad	0x3fe48beb900a0a17              # double 0.64208009846362557
	.quad	0x3fd7135fcc0a1496              # double 0.3605575077602422
	.quad	0x3fe008101e516b88              # double 0.50098424836629452
	.quad	0x3fde65962d5956c4              # double 0.47495035580264422
	.quad	0x3fe6ea1427ef34f0              # double 0.71607406425178333
	.quad	0x3fcf79241d1cc510              # double 0.24588443204405808
	.quad	0x3fef198bd3c49184              # double 0.97186843262584021
	.quad	0x3fdfe53da678b1e2              # double 0.49836674935320791
	.quad	0x3fd0d02640b2f828              # double 0.26270443266173737
	.quad	0x3fdfd05c9dd09512              # double 0.49709239398573957
	.quad	0x3f7d1aaec2948180              # double 0.0071055246892516299
	.quad	0x3fe72b6e66d37dde              # double 0.72405166705351198
	.quad	0x3fedc2f45030d031              # double 0.93004813825837662
	.quad	0x3fd22665ea330d0a              # double 0.28359363432919393
	.quad	0x3fe23edff0407968              # double 0.57017514156522697
	.quad	0x3fc83a903cf16bcc              # double 0.18928721404776494
	.quad	0x3fe01e7d860bafab              # double 0.50372196369925371
	.quad	0x3f9cd340dc2acea0              # double 0.028149617612781896
	.quad	0x3fedddce52e2660e              # double 0.93332592190125907
	.quad	0x3fc236d73dc71840              # double 0.14229860798349314
	.quad	0x3fe0de2a17aed530              # double 0.52711968064855874
	.quad	0x3fe7b0f3e96ee430              # double 0.74035068123260395
	.quad	0x3fc6fa9370b97ff8              # double 0.17952197078830046
	.quad	0x3fe9e0f4016f7315              # double 0.80871010094014883
	.quad	0x3fe9ad5cc2f4c22f              # double 0.80241239621506633
	.quad	0x3fce91e6e90e58b8              # double 0.23882757548989786
	.quad	0x3fe3f949626d4c88              # double 0.62418050025952798
	.quad	0x3fe868aacb76443e              # double 0.76277675379436238
	.quad	0x3fda6384f06e6a66              # double 0.412324175640299
	.quad	0x3fd863035171d408              # double 0.3810432715757206
	.quad	0x3fe4c16ecdecee7e              # double 0.64861240596606229
	.quad	0x3fcea4ea76e48c08              # double 0.23940783315001135
	.quad	0x3fd22f7c75eda6d8              # double 0.28414832607687179
	.quad	0x3fcabd56558a68dc              # double 0.2089031140975014
	.quad	0x3feb4dd329d39eff              # double 0.85325010461107798
	.quad	0x3fc5c94bee964a14              # double 0.17020558500060246
	.quad	0x3fec13621dc55ef1              # double 0.87736612143177528
	.quad	0x3fa8389bdfd282b0              # double 0.047306891510065952
	.quad	0x3feb05d3c9f622f3              # double 0.84446134038543474
	.quad	0x3fd073d55d754ee4              # double 0.2570699131658627
	.quad	0x3fe48d617e246051              # double 0.64225840222480646
	.quad	0x3fe280bb1b546cfb              # double 0.57821421945428086
	.quad	0x3fcacbfa4e9661e8              # double 0.20934990727688718
	.quad	0x3fdd2852d56ffb4c              # double 0.45558615535258151
	.quad	0x3fbc92dbf65454e8              # double 0.11161589397336835
	.quad	0x3fce553067c0f3b4              # double 0.23697476450061361
	.quad	0x3fe3f918cc610ee1              # double 0.62415733259009809
	.quad	0x3fe923babe9863e4              # double 0.78561150766028875
	.quad	0x3fe0358fdd3c74f0              # double 0.50653832636058205
	.quad	0x3fd21f5c628924b8              # double 0.28316411612156456
	.quad	0x3fd0a7c6be11350a              # double 0.26024025498630066
	.quad	0x3fdbfbb9649a9d52              # double 0.43723902535062564
	.quad	0x3fdd75f84f543c94              # double 0.46032531496980167
	.quad	0x3fc319b6d33a65ec              # double 0.14922223390458045
	.quad	0x3fbee23db7eb68f8              # double 0.12063966503356827
	.quad	0x3fed8e384ddd2b19              # double 0.92361083228874741
	.quad	0x3fca4a3abab252d8              # double 0.20539030185741214
	.quad	0x3fdcae45c22fcc26              # double 0.44813674891992361
	.quad	0x3fe85b096f1fb49f              # double 0.76111289695622364
	.quad	0x3fd667a6d1008f54              # double 0.35007639322633577
	.quad	0x3fe9e039af3d7eb7              # double 0.80862125612835356
	.quad	0x3fda1ffae4bfed16              # double 0.40820190752829555
	.quad	0x3fcbf0c4d57012cc              # double 0.21828518316046652
	.quad	0x3fc3acc07067b200              # double 0.1537094639637786
	.quad	0x3fe38194c1bb60f8              # double 0.60956800306578796
	.quad	0x3fde91d12cce4f50              # double 0.47764996886802624
	.quad	0x3fe19466c04fb079              # double 0.54936540184782168
	.quad	0x3fe0fce63971f44e              # double 0.53087149829628699
	.quad	0x3faea9c790b3de80              # double 0.05988906518353776
	.quad	0x3fd6676923350846              # double 0.35006168783377622
	.quad	0x3fe619a0249e5748              # double 0.69062811996511986
	.quad	0x3fdc16af2c640694              # double 0.43888453803092742
	.quad	0x3fb145a251384218              # double 0.067468781308214765
	.quad	0x3fd56848ce3e3a22              # double 0.33449001446652649
	.quad	0x3fd97fdd68404d7a              # double 0.39842925244121086
	.quad	0x3fd75717517f38ce              # double 0.36469061812102843
	.quad	0x3fc4a6ad3bc6ac58              # double 0.16133656901124271
	.quad	0x3fca88a811a4ead4              # double 0.20729542600186923
	.quad	0x3fe831f44a5b9413              # double 0.75609793208116327
	.quad	0x3fe0671eb49a265a              # double 0.51258788369996044
	.quad	0x3fed9dc296ba24a1              # double 0.92550782622233296
	.quad	0x3fed598cfc2ea32a              # double 0.9171814847405575
	.quad	0x3febd2db1d34631b              # double 0.86948924736052235
	.quad	0x3fc4fd9c975fcab8              # double 0.1639896144038937
	.quad	0x3fe92d4890fce969              # double 0.78677776639896735
	.quad	0x3feedc39ed00655f              # double 0.96438308991779908
	.quad	0x3fe351536ef60812              # double 0.60367747947771222
	.quad	0x3fef2cbfc208a0a4              # double 0.97421253106314908
	.quad	0x3fec4f27efbd6259              # double 0.88466259788681179
	.quad	0x3fc8ad31176a02fc              # double 0.19278539317385668
	.quad	0x3fe264a3426b7de6              # double 0.57478487942347267
	.quad	0x3fe4aa7ceb49453c              # double 0.64581151918733992
	.quad	0x3fd40f12cd4ca204              # double 0.31342001007809039
	.quad	0x3fcb750fe134a4a8              # double 0.21450994964951531
	.quad	0x3feb6c32fbf59303              # double 0.85695790491863055
	.quad	0x3fe343b20c2e256d              # double 0.6020136106391597
	.quad	0x3fb6aef9d4067580              # double 0.088607420219394938
	.quad	0x3fd035bec2754978              # double 0.25328034391454635
	.quad	0x3fecbec5bb02787a              # double 0.89828764462778499
	.quad	0x3fe9a3d6a911d897              # double 0.80124981900623282
	.quad	0x3fd7a2f7273eaaec              # double 0.36932162125110213
	.quad	0x3fedcce4c34c893b              # double 0.93126142639474752
	.quad	0x3fd178f66e2bf8ba              # double 0.2730079723259099
	.quad	0x3fa9d2e213c05c50              # double 0.050437035475788705
	.quad	0x3fe46c0d7276fab0              # double 0.63819000584029162
	.quad	0x3f9ee307cf1c1940              # double 0.03016292764279993
	.quad	0x3fcbd21c404632a4              # double 0.21734955919636889
	.quad	0x3fea015797f52ad9              # double 0.81266383818850862
	.quad	0x3fe0299540985020              # double 0.50507605186658466
	.quad	0x3fe00c119728063f              # double 0.50147323153232282
	.quad	0x3f8f3bce5521e000              # double 0.015250789616615634
	.quad	0x3fef603e742a8249              # double 0.98049853027993905
	.quad	0x3fdeb48e4994353e              # double 0.47977025208895785
	.quad	0x3fcf1440a7ad840c              # double 0.24280555903808965
	.quad	0x3fb762125d4a28b8              # double 0.091340205932428087
	.quad	0x3fc2c4711473ba48              # double 0.14661992548595237
	.quad	0x3fd5723ed9c51fee              # double 0.33509799257853856
	.quad	0x3fe08ccb3f6b0fca              # double 0.51718675981873585
	.quad	0x3fe6d319a2c8859d              # double 0.71326906007395829
	.quad	0x3fdebb4a469d99a6              # double 0.48018128295952989
	.quad	0x3fb8c66ef7d4ca88              # double 0.096777854448001688
	.quad	0x3fe5cebd9d98a58e              # double 0.68148690014383972
	.quad	0x3fe629604bd63158              # double 0.69255080043653106
	.quad	0x3fd7c57df951c8b6              # double 0.37142896030048733
	.quad	0x3fd87bff7a120bce              # double 0.38256823464342637
	.quad	0x3fe3ef8414e438ab              # double 0.62298778610581473
	.quad	0x3fbdd3bed81c1e50              # double 0.1165122296916874
	.quad	0x3fe1ec15d1221760              # double 0.56006899687120537
	.quad	0x3fef666202926178              # double 0.98124790670685424
	.quad	0x3fedd1b121ac9b88              # double 0.93184715821267705
	.quad	0x3fd3f73c5fd5956a              # double 0.31196507796115347
	.quad	0x3fbaa573be705ba8              # double 0.104087099069473
	.quad	0x3fe593f46599af7e              # double 0.67431087344947094
	.quad	0x3fc5246f7ac0e5d8              # double 0.16517442220519629
	.quad	0x3fc84a94d8f0e740              # double 0.18977604477714216
	.quad	0x3fb3d4ec77cd6de8              # double 0.077467707871100466
	.quad	0x3fe8d8c78135fe62              # double 0.77646231876856242
	.quad	0x3fe73c3689d5cad4              # double 0.72610022469447211
	.quad	0x3f9f37d28fb2f9c0              # double 0.03048638345784993
	.quad	0x3fb95e557fca71f0              # double 0.099095672320295369
	.quad	0x3fe0110ee83d7f2c              # double 0.50208230361383732
	.quad	0x3fd0ff8b7bf4bc26              # double 0.26559722046926237
	.quad	0x3fc50c24b3137358              # double 0.16443308586067462
	.quad	0x3fd928c27e9a8034              # double 0.39311277736306072
	.quad	0x3fe48433fd3a2272              # double 0.64113807161727565
	.quad	0x3f9f986c75f27380              # double 0.030854887675207276
	.quad	0x3fe486ba647b4fdc              # double 0.64144630074815323
	.quad	0x3fe01f2f22cf4e94              # double 0.50380665587222717
	.quad	0x3feb1e18357d046e              # double 0.84742365309661039
	.quad	0x3fe1c5614ac7c3a5              # double 0.55534424405606286
	.quad	0x3fe3df6cdaa2d299              # double 0.62102358534191915
	.quad	0x3fe5238fa6cc170b              # double 0.66059095933516809
	.quad	0x3fb24bafc94024b8              # double 0.07146738684982068
	.quad	0x3fdebe8d06150990              # double 0.48038030237162221
	.quad	0x3fcdc76fd7253ac8              # double 0.23264883046291218
	.quad	0x3fe749f1b091e262              # double 0.72777637945462126
	.quad	0x3fc95ae71acd99a4              # double 0.19808663185831421
	.quad	0x3fb00fe5d238afa8              # double 0.062742580245581991
	.quad	0x3fc2a9c2ec273084              # double 0.14580570727264697
	.quad	0x3fa236592d2cd4c0              # double 0.03557089497045629
	.quad	0x3fb32d5437d58980              # double 0.074910415297869903
	.quad	0x3fc9039183a48714              # double 0.19542139938226255
	.quad	0x3fe05cf28dd78a00              # double 0.51134612754350428
	.quad	0x3fd5e8c7f83e716c              # double 0.34233283274240622
	.quad	0x3fe5ebbee4879ae0              # double 0.68502754816730871
	.quad	0x3fe629b156560060              # double 0.6925894438027278
	.quad	0x3fc033031ec7c68c              # double 0.12655676844547192
	.quad	0x3fed7a863726c2c8              # double 0.92120657703170483
	.quad	0x3fe2069b4ff0a59c              # double 0.563306480534425
	.quad	0x3fedcf27be3de586              # double 0.93153750568960514
	.quad	0x3fd698142c59de34              # double 0.35303215342671312
	.quad	0x3fb7897a8e1977c0              # double 0.091941508953339302
	.quad	0x3fdf1a2d592eec78              # double 0.48597272595697616
	.quad	0x3fe06be4cba75533              # double 0.51317062164404204
	.quad	0x3fe9f6181b0d8d40              # double 0.81129079135681792
	.quad	0x3feeffffdb5537bc              # double 0.96874993170216994
	.quad	0x3fead60dca0dfab1              # double 0.83862962211408931
	.quad	0x3fbc29410eedc9a0              # double 0.11000448812936847
	.quad	0x3fee163cc47a32dc              # double 0.94021452307205377
	.quad	0x3fe1413d3e15872c              # double 0.53921377301978657
	.quad	0x3fe17d4ee134ca50              # double 0.54654640184009828
	.quad	0x3fd52d5baa0c5576              # double 0.33089343649165615
	.quad	0x3feb0f2f8db0a1c4              # double 0.84560372995206778
	.quad	0x3fec923c3b329029              # double 0.89285098611845115
	.quad	0x3fe2b4d164b4fa25              # double 0.58457250279736128
	.quad	0x3feb2e434d6f04cd              # double 0.84939732669604384
	.quad	0x3fd79c417d13b64c              # double 0.36891209806967562
	.quad	0x3fea4858638b0cd9              # double 0.82133120958351491
	.quad	0x3fe5006b6043993f              # double 0.65630120088170674
	.quad	0x3fd54039e4aad832              # double 0.33204505282208452
	.quad	0x3fe1398bf25e8a24              # double 0.53827473962548256
	.quad	0x3fe91faf9148a96f              # double 0.78511789680241673
	.quad	0x3fee33ef0f24d878              # double 0.94383957822607467
	.quad	0x3fba113a0d699858              # double 0.10182535960629602
	.quad	0x3fe795129f394f0d              # double 0.73694735620890273
	.quad	0x3fe74f9b53838bfc              # double 0.72846762000369791
	.quad	0x3fdc422afd17834a              # double 0.44153856960297289
	.quad	0x3fc6900bba1e9914              # double 0.17627092922084187
	.quad	0x3fd1c7d4c0a75498              # double 0.27782172025519847
	.quad	0x3fe15a14384b4a44              # double 0.5422459697241
	.quad	0x3fdc29459bd79fc0              # double 0.4400190374276427
	.quad	0x3fddf05db9f2da34              # double 0.46779578360602447
	.quad	0x3f9273016516d440              # double 0.018016835970872558
	.quad	0x3fdb8d4c1932573c              # double 0.4304991003094647
	.quad	0x3fe4bf703edbe80e              # double 0.64836895253324811
	.quad	0x3fa4912fae342b10              # double 0.040170183196172826
	.quad	0x3fde44e3a8fb5298              # double 0.472954669018955
	.quad	0x3feca901964de70c              # double 0.89563063961324607
	.quad	0x3fe58e1f37f8c133              # double 0.67359887058231604
	.quad	0x3fe64344a88a9cd7              # double 0.69571144979718269
	.quad	0x3fd89fdd9ad786ca              # double 0.38475742455748885
	.quad	0x3fe345c4076600a1              # double 0.60226632542618941
	.quad	0x3fe2d0e5cac570cc              # double 0.58800019840011819
	.quad	0x3fc4edd659d6f610              # double 0.16350821863845555
	.quad	0x3fda796c1a001e56              # double 0.41366102732761101
	.quad	0x3fcacd301a5c7da8              # double 0.20938683783695677
	.quad	0x3fe381523468b472              # double 0.60953626857884857
	.quad	0x3fe5a409095535c6              # double 0.6762738401682149
	.quad	0x3fe18b3ed62dfdf6              # double 0.54824773628200663
	.quad	0x3fe1eabc1bf69171              # double 0.55990415059618048
	.quad	0x3fc0378e5546aef8              # double 0.12669543422577312
	.quad	0x3fea9ecc8130ff8a              # double 0.83188462479300651
	.quad	0x3fa45f37acb4e690              # double 0.039788951713899512
	.quad	0x3fe0679ed3dd95be              # double 0.51264897708886514
	.quad	0x3fe66a270037fd08              # double 0.70045805018153917
	.quad	0x3fd0d231227a4728              # double 0.26282909743268812
	.quad	0x3feef917bd7816fe              # double 0.96790682798084027
	.quad	0x3feae5c9b4c9eacc              # double 0.84055028257656649
	.quad	0x3fdb39bbffae4ee2              # double 0.42539882630192782
	.quad	0x3fd3dc14c57a1054              # double 0.31030768666119468
	.quad	0x3fd4d666d6b6ba4a              # double 0.3255860421003588
	.quad	0x3fdab00cb1f4e080              # double 0.41699521425790209
	.quad	0x3fe1d83de579ef39              # double 0.55764670199957955
	.quad	0x3fea86d2095a6ead              # double 0.82895757510001078
	.quad	0x3fe84ddb2f4e5bfb              # double 0.75950392951460743
	.quad	0x3fdff85056b6d29c              # double 0.49953087299517462
	.quad	0x3fbaca42e8639f80              # double 0.10464876340449614
	.quad	0x3fdbda7427607018              # double 0.4352083572900951
	.quad	0x3fe6a4d1f17fb7f2              # double 0.70761964004282008
	.quad	0x3fed942a30ef7afa              # double 0.92433652456006077
	.quad	0x3fe52ecfb293c868              # double 0.66196427229284627
	.quad	0x3fde82680e8f659a              # double 0.47670937940491742
	.quad	0x3fe37c48d8da526b              # double 0.60892145494524408
	.quad	0x3fefaa47f3aa78c1              # double 0.98953626242634851
	.quad	0x3fcd5f026a175564              # double 0.22946195774299405
	.quad	0x3fd01c565094a500              # double 0.25172956341937436
	.quad	0x3fe4af2bd32e8813              # double 0.64638320204199073
	.quad	0x3fe126afc9f8e7c0              # double 0.53597249458038476
	.quad	0x3fefed609d73180c              # double 0.9977267337023945
	.quad	0x3fee5aca406f0fb7              # double 0.94858276924832452
	.quad	0x3fcf6c0622eb9a40              # double 0.2454841299542796
	.quad	0x3fe99ee997068068              # double 0.80064849373958413
	.quad	0x3fe5cbc0d8ac86e9              # double 0.68112222975852632
	.quad	0x3fe5b6d7cbd89d10              # double 0.6785696965570498
	.quad	0x3fd417ec1a244cb0              # double 0.31396009972486194
	.quad	0x3fe42a0af957ad2b              # double 0.63013218593315423
	.quad	0x3fd9f54ba660d51e              # double 0.40559664962650455
	.quad	0x3fe29a87361f8b3a              # double 0.58136330195370722
	.quad	0x3f746549a658de80              # double 0.0049794079728183727
	.quad	0x3fe4f2292b9e988b              # double 0.65456064719616458
	.quad	0x3fe0074dbd6224de              # double 0.50089156140270652
	.quad	0x3fe510855c54a90f              # double 0.65826671632138012
	.quad	0x3fe54c851c066b96              # double 0.66559081529281872
	.quad	0x3fd20f692ed7b158              # double 0.28219060492007975
	.quad	0x3fe89b13dda3f386              # double 0.76893037118098628
	.quad	0x3fe07700793b0fbf              # double 0.51452659299729209
	.quad	0x3fc440b51f9290f0              # double 0.15822471658351089
	.quad	0x3fecb088404e187b              # double 0.89654934463102565
	.quad	0x3fe2295d6b259f8d              # double 0.567549428244989
	.quad	0x3fd462c3c4a9d15c              # double 0.31852812009244302
	.quad	0x3fef233749ff3ab0              # double 0.97304882481133426
	.quad	0x3fefeda7aec7f141              # double 0.9977606214229483
	.quad	0x3fdffe18ca6a1808              # double 0.49988384024652577
	.quad	0x3fe0568543c4593d              # double 0.51056159244289001
	.quad	0x3f9c5c0456977e00              # double 0.027694766793386449
	.quad	0x3fcbbf84d55db610              # double 0.21678219240440955
	.quad	0x3fe1a6b724366936              # double 0.55160100052606853
	.quad	0x3fad18c2e6f3ad70              # double 0.056829539005628926
	.quad	0x3fdd392708ac9b4e              # double 0.45661331030935493
	.quad	0x3fdfa85512120870              # double 0.4946491886586335
	.quad	0x3fd8927f04d87126              # double 0.38394141648474756
	.quad	0x3fe0bfcb8f60b2e4              # double 0.52341249469244788
	.quad	0x3feeac0e81ea1782              # double 0.95850301145468131
	.quad	0x3feb400c5a3d1141              # double 0.85156839012828567
	.quad	0x3fdca805643724b0              # double 0.44775519167576316
	.quad	0x3fcbf12f426664fc              # double 0.21829787008463331
	.quad	0x3fe48b4a3d96500b              # double 0.64200317410222973
	.quad	0x3fea3a5397ad80ff              # double 0.81961993813095535
	.quad	0x3fb512bbef91afe0              # double 0.082317110050723397
	.quad	0x3f9e0508156db320              # double 0.029316068942921381
	.quad	0x3fe9e8807b58e9af              # double 0.80963157740852931
	.quad	0x3fe427ded59794a2              # double 0.62986699788293188
	.quad	0x3fedde127b9deaf3              # double 0.93335842269820402
	.quad	0x3fe8ef13523079fe              # double 0.77918401768312129
	.quad	0x3fedce14e8abedff              # double 0.93140645450279169
	.quad	0x3fe315c5f91b7a97              # double 0.59640787748124324
	.quad	0x3fc0c82731c90ee8              # double 0.13110818797041834
	.quad	0x3fcebb708aa5a4a4              # double 0.24009520311236543
	.quad	0x3fcc38fc55dc20b0              # double 0.22048906509758615
	.quad	0x3fe5e8620abe1dd2              # double 0.68461706255123489
	.quad	0x3fef981449043080              # double 0.98731436024674224
	.quad	0x3fc361d88378f554              # double 0.1514235155063185
	.quad	0x3fae3158baae3e40              # double 0.058970234668887844
	.quad	0x3fe57b33499973d6              # double 0.67128910422217802
	.quad	0x3fda597c20733df8              # double 0.41171172303162917
	.quad	0x3fe67fa1fcc02a4c              # double 0.70308017125473432
	.quad	0x3fef4a8eb8297b7c              # double 0.9778512570299962
	.quad	0x3fc9ab8646ad614c              # double 0.20054701281584142
	.quad	0x3fcadaf87b224a08              # double 0.2098074532737686
	.quad	0x3fcf7a01068f8194              # double 0.24591076679554347
	.quad	0x3fef3a0f97ecae99              # double 0.97583751366387894
	.quad	0x3fef2837beb766cb              # double 0.97365939378070132
	.quad	0x3fe859a811a7b490              # double 0.76094439934026248
	.quad	0x3fbde2ea994bd420              # double 0.11674371950705664
	.quad	0x3fb13ae59fc732d0              # double 0.067304946430520873
	.quad	0x3f669b1151fa2b00              # double 0.0027594888959517894
	.quad	0x3fcc7f94ac1ec584              # double 0.22264345554644305
	.quad	0x3fd589d01c15cca2              # double 0.33653643362704078
	.quad	0x3fee2de831179635              # double 0.9431038817244316
	.quad	0x3fd509c10273b312              # double 0.32872033347557406
	.quad	0x3fe2961a86695067              # double 0.580823195001824
	.quad	0x3fe565a8dd9b5c6e              # double 0.66865962298005654
	.quad	0x3feba5cc240593fa              # double 0.86398894343858434
	.quad	0x3fd5ac5f15be3f76              # double 0.33864571688990652
	.quad	0x3fa26e8fc389a0c0              # double 0.035999767894112633
	.quad	0x3fe0cde44c71a335              # double 0.52513327532242349
	.quad	0x3fe28278b160b32d              # double 0.5784266914757602
	.quad	0x3fe4133780b9890c              # double 0.62734580174972754
	.quad	0x3fe641fe5d827ec3              # double 0.69555586112615975
	.quad	0x3fe1b2ae3b2f9fa3              # double 0.5530615955330983
	.quad	0x3f9ae153da748820              # double 0.026250181396911043
	.quad	0x3feff0c36b7a9b3f              # double 0.99814005844095976
	.quad	0x3fef1b38de8fe739              # double 0.97207301587261618
	.quad	0x3fe1c97e9a9cd46f              # double 0.55584650228287369
	.quad	0x3fec21e90536f369              # double 0.87913943308340692
	.quad	0x3fe583e5fb01cec8              # double 0.67235087418381401
	.quad	0x3fe950847a83fbbb              # double 0.79107879570789608
	.quad	0x3fed32c0d04e0328              # double 0.91244545635718044
	.quad	0x3fe62585fe09265a              # double 0.69208049408298256
	.quad	0x3fe9a6321ccad781              # double 0.80153756736284276
	.quad	0x3fea82f1c6e18f97              # double 0.82848442882503803
	.quad	0x3fac664bcab3b720              # double 0.055467957013986657
	.quad	0x3fe4d78b1474205a              # double 0.65131143565032379
	.quad	0x3fe83bf9b6a343e6              # double 0.75732122107922062
	.quad	0x3feb8f048e46b491              # double 0.86120822704619304
	.quad	0x3fd4f7b3efd59800              # double 0.32761858388255405
	.quad	0x3fe3435cc78802fa              # double 0.60197295161205422
	.quad	0x3fe2a052e2826192              # double 0.58207077255342399
	.quad	0x3fe65082ffc715f6              # double 0.69732809025361919
	.quad	0x3fe3fdc44033b348              # double 0.62472736873096668
	.quad	0x3fe70ae4cca8081c              # double 0.72007980319927212
	.quad	0x3fe80cd6f570b7a2              # double 0.75156734407004344
	.quad	0x3fe2e5bb271fb340              # double 0.59054334298489408
	.quad	0x3fd648ae9b6fc9e6              # double 0.34818616084444753
	.quad	0x3fed6f7a779b1f00              # double 0.91985820160422804
	.quad	0x3fd6ecc22915563e              # double 0.35820058834119439
	.quad	0x3fea8bd3d4e5aad3              # double 0.82956878262970191
	.quad	0x3fb4588466b3bc48              # double 0.079475665162804465
	.quad	0x3fdf2eeae79149d6              # double 0.4872386227990807
	.quad	0x3fd12077253c42a2              # double 0.26760653148907398
	.quad	0x3fecd2028ca391c9              # double 0.90063598125976185
	.quad	0x3fdf33f9636beb24              # double 0.48754725178848646
	.quad	0x3fe0aa0519e4578f              # double 0.52075438553832665
	.quad	0x3fd4ea4e5df0119a              # double 0.32680091069803441
	.quad	0x3fe2a1af6610ff94              # double 0.58223695692867006
	.quad	0x3fddd83be7fd687c              # double 0.46632287650357518
	.quad	0x3fdf5487d7ffa076              # double 0.48953434079749714
	.quad	0x3f966e910f09d5c0              # double 0.021906153242942983
	.quad	0x3fe7424e62b4fee0              # double 0.72684401777948082
	.quad	0x3fd490bb1a6265e2              # double 0.3213336713466487
	.quad	0x3fd14ff4df333ffa              # double 0.270505159348431
	.quad	0x3fe31fc78fbb16e4              # double 0.59762933800149343
	.quad	0x3fe3fc495f46a4e4              # double 0.62454670532784151
	.quad	0x3fec3c4f1406fee9              # double 0.88236192618930176
	.quad	0x3fc24e14bcb43bf0              # double 0.143007843151707
	.quad	0x3fe795d30d0c2c4e              # double 0.73703911350583851
	.quad	0x3fbe8a9409a9de08              # double 0.11930203662802097
	.quad	0x3fbd6ce05398f7d8              # double 0.11494257012324682
	.quad	0x3fbaab090a1a52c8              # double 0.10417229172373788
	.quad	0x3fecd92d727e279e              # double 0.9015109287440628
	.quad	0x3fef8649fb8311d9              # double 0.98514269946513899
	.quad	0x3fd3e4f73fb3792c              # double 0.31084996434028045
	.quad	0x3feebcce0073d656              # double 0.96054744804741676
	.quad	0x3f7a5cbad306da00              # double 0.0064360902619484683
	.quad	0x3fe98aa9274ff2f3              # double 0.79817636182960283
	.quad	0x3fe2ae8e4580ecdb              # double 0.58380807471203455
	.quad	0x3fc43c5dd50cfce0              # double 0.15809224036090708
	.quad	0x3fe93f6287bdf93b              # double 0.7889874125683386
	.quad	0x3fe57091b2a8ec32              # double 0.66999134916784997
	.quad	0x3fe7ee6a6756566e              # double 0.74785347159440874
	.quad	0x3fd38ed305ab4be4              # double 0.30559230378747615
	.quad	0x3fe5168359b5c735              # double 0.65899817964075302
	.quad	0x3fe8af2e0b834021              # double 0.77138426064084709
	.quad	0x3fd67c944fd526ce              # double 0.35135371967463136
	.quad	0x3fd6258ca2f2ebbe              # double 0.34604183114032228
	.quad	0x3fe491789808e11c              # double 0.64275769895815271
	.quad	0x3f9eb64104db35e0              # double 0.029992118760494679
	.quad	0x3fe846b6a034e884              # double 0.75863200464597513
	.quad	0x3fe242007f09c6ca              # double 0.5705568772520675
	.quad	0x3fe20100c0fd6e27              # double 0.56262242978431665
	.quad	0x3f92f3c0b9113760              # double 0.018507968230827898
	.quad	0x3fdafcb99e47b932              # double 0.42167511422202886
	.quad	0x3feaaf1758ac7168              # double 0.83387343710959971
	.quad	0x3f803322945153c0              # double 0.0079100324166264668
	.quad	0x3fe78390116c7033              # double 0.7348099079422411
	.quad	0x3fbe59f05fa6a448              # double 0.11855985961177951
	.quad	0x3fe3832c816dcdee              # double 0.60976243285261744
	.quad	0x3fe24f69b9df171f              # double 0.57219396880165962
	.quad	0x3fcda15cd527720c              # double 0.23148689659036881
	.quad	0x3fe776a43da86639              # double 0.73323261301556564
	.quad	0x3fe4cc9ecf9e7984              # double 0.64997807074159697
	.quad	0x3fe19aadb37046e5              # double 0.55013165518377305
	.quad	0x3fe214e9e71554c5              # double 0.56505293973409521
	.quad	0x3fc329df187a2498              # double 0.14971531577274244
	.quad	0x3fcc93c0a2bf7238              # double 0.22325904795333584
	.quad	0x3fd69cbea65b51e0              # double 0.35331693883679627
	.quad	0x3fe9db191a17c811              # double 0.80799536796826221
	.quad	0x3fe16931a94edef2              # double 0.54409106319414335
	.quad	0x3fe84ad635d2929b              # double 0.75913534652916626
	.quad	0x3f78e6ad45a86580              # double 0.0060793655816494541
	.quad	0x3fe296c91402babf              # double 0.58090642841656137
	.quad	0x3fb22a50ac02dc30              # double 0.070958177561678992
	.quad	0x3fb406db98522ac8              # double 0.078229641616569201
	.quad	0x3fe96d5320a934fc              # double 0.79459530238241837
	.quad	0x3fe892509bed2f38              # double 0.76786070303339837
	.quad	0x3fd76bac30b07776              # double 0.36594681505982096
	.quad	0x3fe7f3dff51b0834              # double 0.74851987716852486
	.quad	0x3fc9f2f0f4d67748              # double 0.20272647814720757
	.quad	0x3fefef78caaefc99              # double 0.9979824026740004
	.quad	0x3fdfac91cd5f1ba8              # double 0.49490780883609853
	.quad	0x3fdd76ab2a1b2d96              # double 0.46036795722894774
	.quad	0x3fe2a55d2151f2f1              # double 0.58268600948176019
	.quad	0x3fe0dae13fa0d2c7              # double 0.52671873500238398
	.quad	0x3fd72bc18d48cdc2              # double 0.36204565808585809
	.quad	0x3fed0357116e7e0b              # double 0.9066577282391689
	.quad	0x3fe793135c5c4303              # double 0.73670356787815228
	.quad	0x3fe73b19067f4301              # double 0.72596408146827696
	.quad	0x3feeb41d9bb973aa              # double 0.95948677458692555
	.quad	0x3fef02fecc01db91              # double 0.96911563725631044
	.quad	0x3feda026a8e0c127              # double 0.92579968437170101
	.quad	0x3fe6ce116ecc6271              # double 0.71265479698474909
	.quad	0x3fe4969a09d98d8a              # double 0.64338399814407521
	.quad	0x3febb8afe4f34a88              # double 0.86629481045595558
	.quad	0x3fd6afff42902520              # double 0.35449201107310735
	.quad	0x3fe73e65a8970df8              # double 0.7263668339514302
	.quad	0x3fdf368b76f5b0c6              # double 0.48770414940987583
	.quad	0x3fe190767363da43              # double 0.54888460671538331
	.quad	0x3fe384ce2b8a0c0f              # double 0.60996159080275614
	.quad	0x3fe8f1ad286828cb              # double 0.77950151340453411
	.quad	0x3fedadbf0bb00a80              # double 0.92745926172968041
	.quad	0x3fb5e3f4d76e5448              # double 0.085509588809444925
	.quad	0x3fe6eb82dfceeef5              # double 0.71624892914357352
	.quad	0x3feb478e85af084f              # double 0.85248495206929842
	.quad	0x3fd770ac94b52090              # double 0.36625208399028342
	.quad	0x3fda33324ce2636a              # double 0.40937478550181672
	.quad	0x3fe57e043669ad84              # double 0.67163286807537803
	.quad	0x3fc2d861fc8c2de4              # double 0.14722847777771542
	.quad	0x3feccf9b004d270f              # double 0.90034246500838033
	.quad	0x3fe7304155caf09d              # double 0.72464052921670297
	.quad	0x3feea24dfb3dbfb6              # double 0.95731257505939626
	.quad	0x3fd568c116d11ca0              # double 0.3345186922856076
	.quad	0x3fb8404855dfe780              # double 0.09473087402866831
	.quad	0x3fed9581b12bda43              # double 0.92450031856316917
	.quad	0x3fe630fb731a42f3              # double 0.69347927552197886
	.quad	0x3fd5230bc5afcdba              # double 0.33026403718323716
	.quad	0x3fea7377d8d45f32              # double 0.82659523343588703
	.quad	0x3fe37f796c0dffb6              # double 0.60931082825117389
	.quad	0x3fe39205b9d9e455              # double 0.61157499598551601
	.quad	0x3fdf042fdd9344b6              # double 0.48463055265626609
	.quad	0x3fe6da3eed04e1e1              # double 0.71414133351123266
	.quad	0x3fd72d494c1b703e              # double 0.36213905746786057
	.quad	0x3fe91837eb024f02              # double 0.78420635128210869
	.quad	0x3fe0c0cafb98f01f              # double 0.5235342897426597
	.quad	0x3fe93a449b89dbe8              # double 0.78836279276481225
	.quad	0x3fc45bb6615c85e0              # double 0.15904884103751638
	.quad	0x3fdfd65beb817890              # double 0.49745843886001584
	.quad	0x3fe7c2d75e395f97              # double 0.74253433612010411
	.quad	0x3fb7d877dd4ed368              # double 0.093146792917492172
	.quad	0x3fe674e9a2ea2225              # double 0.70177156275992003
	.quad	0x3fda36a3d70b13f8              # double 0.40958496094054864
	.quad	0x3fed0d0eeaa3e8c7              # double 0.90784402683427678
	.quad	0x3fe54cbcef44898a              # double 0.66561743480660707
	.quad	0x3fe8ba3732b22444              # double 0.77273139859710981
	.quad	0x3fe59b2fb6a4b281              # double 0.67519364998368314
	.quad	0x3fc5f89fe1aa1bf0              # double 0.17164991873525492
	.quad	0x3fe8e8c430f7228d              # double 0.7784138637881185
	.quad	0x3fc25cc29febdf68              # double 0.14345581825886744
	.quad	0x3fc031a3da3e65d4              # double 0.12651489406998329
	.quad	0x3fe9cffe2b9f9ca0              # double 0.80663975258075382
	.quad	0x3fc0280fcf6b566c              # double 0.12622258785147566
	.quad	0x3feb28913c760630              # double 0.84870206650538726
	.quad	0x3fec51f69a64d22e              # double 0.88500528483434038
	.quad	0x3feb5dd54e92f68b              # double 0.85520425173281589
	.quad	0x3fd7565752caaed0              # double 0.36464484295968891
	.quad	0x3fe6cb11d1295ff7              # double 0.71228876926306739
	.quad	0x3fe68cea2f0d37a9              # double 0.70470151128551095
	.quad	0x3fc8269150918238              # double 0.18867699083331657
	.quad	0x3feafb092ee1c381              # double 0.84314402729624771
	.quad	0x3fc7154f6b95a97c              # double 0.18033783677249093
	.quad	0x3feb16906cf4bacf              # double 0.84650441437210044
	.quad	0x3fe468d1f87b92f7              # double 0.63779543430118124
	.quad	0x3fe349d5eb9f7c34              # double 0.60276313800921466
	.quad	0x3fe6ce2c9f39fb87              # double 0.71266776179241809
	.quad	0x3fcf44035612ce54              # double 0.24426309302144722
	.quad	0x3fed1dd637ef3ac3              # double 0.90989218640046265
	.quad	0x3fbcecbc22961398              # double 0.11298728794470347
	.quad	0x3fe2273b9c3f806b              # double 0.56728916661451245
	.quad	0x3feabfe53b707810              # double 0.83592473611111195
	.quad	0x3fdcc00855b04738              # double 0.449220737152348
	.quad	0x3fe22d214d455301              # double 0.56800904361679738
	.quad	0x3fea6646f516bd76              # double 0.82498500698959165
	.quad	0x3fd922860b28ec76              # double 0.39273215379552739
	.quad	0x3fec792d051feb19              # double 0.88979197503008145
	.quad	0x3fe03428efe61fc9              # double 0.50636717658289243
	.quad	0x3fea8855d7b778b8              # double 0.82914249546208563
	.quad	0x3fd40a1df79e4496              # double 0.31311749631374519
	.quad	0x3fd5182afff09b04              # double 0.32960009569289661
	.quad	0x3fc5e37c6a59ea7c              # double 0.17100482170993192
	.quad	0x3fe100244e2f16df              # double 0.531267311766637
	.quad	0x3fe090b77d869bbc              # double 0.51766562000999938
	.quad	0x3fc6587b337c9154              # double 0.1745752335929277
	.quad	0x3fcd63e1f270ce00              # double 0.22961067521974599
	.quad	0x3fe042844b6a270e              # double 0.50811972360063051
	.quad	0x3fde42151358f64e              # double 0.47278334512143239
	.quad	0x3fe8aee67684b9c6              # double 0.77135012767922073
	.quad	0x3fc050f4142f85b8              # double 0.12747050271631877
	.quad	0x3fed137c5bc74ce2              # double 0.90862863469592647
	.quad	0x3fecf91b295cb0f7              # double 0.90540845945864035
	.quad	0x3fd8fea771a5d480              # double 0.3905428514329472
	.quad	0x3fdc6b261a23d4e4              # double 0.44403984596949742
	.quad	0x3fea2b0278af3c82              # double 0.81775020190424663
	.quad	0x3fe576c15347645c              # double 0.67074648156552596
	.quad	0x3fe8e17ee024e0b6              # double 0.77752631929526816
	.quad	0x3fd4e550a1d8b6d4              # double 0.3264962749989142
	.quad	0x3fd9b428044e0846              # double 0.40162086887733428
	.quad	0x3fe2bc0923136d41              # double 0.58545357561835243
	.quad	0x3fd4db14bf353644              # double 0.32587164566652782
	.quad	0x3fd6fb5b04940824              # double 0.35909152457327509
	.quad	0x3fe366457992eeeb              # double 0.60623430008805934
	.quad	0x3fba360f73edb7b8              # double 0.1023873956707736
	.quad	0x3fd4d2a50185f006              # double 0.32535672329663645
	.quad	0x3fd4f538f1aca396              # double 0.32746718979847722
	.quad	0x3fe55caf21914ef2              # double 0.66756397777723309
	.quad	0x3fefe3befd659ad4              # double 0.99655103198605354
	.quad	0x3feaf1e5dd777370              # double 0.84202855353542638
	.quad	0x3fe2ec3269bfe7b8              # double 0.59133263258194457
	.quad	0x3fe51ae291d8b6ac              # double 0.65953186498309924
	.quad	0x3fd37e278e93e2aa              # double 0.30457486079789453
	.quad	0x3fce0fe8a235a0c0              # double 0.23486049576172796
	.quad	0x3fed50b979203507              # double 0.91610406548866841
	.quad	0x3fdba4a963b8ad24              # double 0.43192515123765163
	.quad	0x3fc3a75e8eace598              # double 0.15354520765849311
	.quad	0x3fe20ba923db54d1              # double 0.5639234257056619
	.quad	0x3fecf64a29c8129c              # double 0.90506466064887858
	.quad	0x3f899d5291e8e8c0              # double 0.012507100179494635
	.quad	0x3feb1befbd25059b              # double 0.8471602148276135
	.quad	0x3fd73f7c049ca1d6              # double 0.36324978304267341
	.quad	0x3fe778262e938053              # double 0.73341664406690155
	.quad	0x3fe19b48ff5711f7              # double 0.55020570632092258
	.quad	0x3fee0dce002bc508              # double 0.93918514283555598
	.quad	0x3fec89372004e676              # double 0.89174991849649987
	.quad	0x3fefa2c8a4db54a3              # double 0.98862106512628533
	.quad	0x3fe6413453de8015              # double 0.69545952206317685
	.quad	0x3fe661ccc6cd0a7f              # double 0.69943846538838261
	.quad	0x3fe10530e7ef87cf              # double 0.531883671759937
	.quad	0x3feb18127d68a13d              # double 0.84668850416077357
	.quad	0x3fea8588f6d553cf              # double 0.82880066117888329
	.quad	0x3fe19dfee4a8d8e9              # double 0.55053658161230346
	.quad	0x3fd86240a2e3f736              # double 0.38099685580515386
	.quad	0x3fe8fcf48d15f4d4              # double 0.78087832980932114
	.quad	0x3fef9eadf1ee311d              # double 0.9881200528339239
	.quad	0x3fe7706ea254f57d              # double 0.73247462945407416
	.quad	0x3fe4dab8fdedd565              # double 0.65169953914179912
	.quad	0x3fe71184f96a20ff              # double 0.72088860238821428
	.quad	0x3fe72f544a62613f              # double 0.72452749756033785
	.quad	0x3fece4ed3f5107d4              # double 0.90294515959271359
	.quad	0x3fcfaa264e4d8664              # double 0.24738005469685043
	.quad	0x3fece1cae48479cb              # double 0.90256256706543903
	.quad	0x3feded2daa595fb9              # double 0.93520243903457534
	.quad	0x3fde41be97bd079a              # double 0.47276272600367408
	.quad	0x3fd0595d3f0a4192              # double 0.25545436054474024
	.quad	0x3fbdd8ccf87f8a40              # double 0.1165893656430308
	.quad	0x3fe273a9eecb42a8              # double 0.57661911620569573
	.quad	0x3fc42dd090eb1ef0              # double 0.15764815403075927
	.quad	0x3f9a55bd3195a460              # double 0.025717693473243819
	.quad	0x3fef01e840969878              # double 0.96898281683821974
	.quad	0x3fac341e8dcdd460              # double 0.055085139093457469
	.quad	0x3fdce7284afceba2              # double 0.45160872767490379
	.quad	0x3feb75ce7e168610              # double 0.85813068987426
	.quad	0x3fe9ee23a7c96234              # double 0.81031973620253561
	.quad	0x3fd25c53fdeb23a0              # double 0.28688525959710809
	.quad	0x3fd30c4c1f1a2bfe              # double 0.29762557065322415
	.quad	0x3fcb63516fd78210              # double 0.21396844826723838
	.quad	0x3fc5073558240e94              # double 0.16428248218300168
	.quad	0x3feeea80b969e391              # double 0.96612583364104598
	.quad	0x3fb66af214ca0780              # double 0.087569360805018092
	.quad	0x3fe0d4e49f9cab3a              # double 0.52598792242256498
	.quad	0x3fe9cb8b6ebc98e9              # double 0.80609676006568265
	.quad	0x3fb95dd61dec8dc0              # double 0.099088079744027446
	.quad	0x3fe85d60ecd39bcb              # double 0.76139875655359768
	.quad	0x3fd7ea9bd9aac256              # double 0.37369438416047751
	.quad	0x3feb9f42a5c20788              # double 0.86319095968814086
	.quad	0x3fd5cc04f81c7d84              # double 0.340577356620962
	.quad	0x3fe3d72d171e44dd              # double 0.62001661792069351
	.quad	0x3fe488ce05d05643              # double 0.64169980178366648
	.quad	0x3fc28b2fe65d1de8              # double 0.14487265346745848
	.quad	0x3fea482f9345fbc8              # double 0.82131174816446961
	.quad	0x3fe518d117da06f2              # double 0.65927939089325904
	.quad	0x3fc6acfe351e9fa0              # double 0.17715432733279801
	.quad	0x3f93276b5a1ae820              # double 0.018705060362414483
	.quad	0x3fe7aec3b5ba6aec              # double 0.74008355611598864
	.quad	0x3fe517d8d042add9              # double 0.65916100192901717
	.quad	0x3fe4634dbbf346a9              # double 0.63712202748339053
	.quad	0x3fc2a79eda312488              # double 0.14574037221817471
	.quad	0x3fe68d48cc0ff9f7              # double 0.70474662643374486
	.quad	0x3fbf8a44b233b190              # double 0.12320355749733936
	.quad	0x3fe7011afd6c8fae              # double 0.71888494011772308
	.quad	0x3fba93dc70622568              # double 0.10381868118033355
	.quad	0x3fe9c6525691734d              # double 0.80545918376774639
	.quad	0x3fe0fbeb657cbe14              # double 0.5307518942044589
	.quad	0x3fe5c8f53958a2ca              # double 0.68078099441944429
	.quad	0x3fe55e928eb90fd9              # double 0.66779449344221142
	.quad	0x3fe3c8e03f2e66d6              # double 0.61827099170769872
	.quad	0x3fc15928178548d0              # double 0.13553334377735959
	.quad	0x3fe46b7c639dbb8d              # double 0.63812083679464282
	.quad	0x3fb86444c9118c58              # double 0.095279978837014112
	.quad	0x3fe29b89ce17e408              # double 0.58148660900690263
	.quad	0x3fdfdcf377ef2a7c              # double 0.49786078178718873
	.quad	0x3fe0c7c19c431a43              # double 0.52438431281991205
	.quad	0x3fba579333048ef8              # double 0.10289878840972821
	.quad	0x3fe950d5c08950cc              # double 0.79111754994166849
	.quad	0x3fddc037a63d3fec              # double 0.46485701784422306
	.quad	0x3fe945e211ca7bb4              # double 0.78978064989848073
	.quad	0x3fcfc9d2be330038              # double 0.24834665572234527
	.quad	0x3fc3143bcb6f52c8              # double 0.14905497964232084
	.quad	0x3fecd9951688ef13              # double 0.90156034852359068
	.quad	0x3fe103d361430e8d              # double 0.53171700474236305
	.quad	0x3fdad42f1ddb2968              # double 0.41920068660387821
	.quad	0x3fdd45959fb668fc              # double 0.45737209889342956
	.quad	0x3fe7fe96bc4ff3ef              # double 0.74982773570775219
	.quad	0x3fc462090e33e7d4              # double 0.15924180215352968
	.quad	0x3fe68d1ca294d49f              # double 0.70472556833432864
	.quad	0x3feb500d30a03196              # double 0.85352191445558634
	.quad	0x3fe88181bb12902a              # double 0.76580893075561574
	.quad	0x3fd7ef46bc2994de              # double 0.3739792668842038
	.quad	0x3fc8c6a549b9bb50              # double 0.19356218433264383
	.quad	0x3fec89fc649ec0f6              # double 0.89184398319596769
	.quad	0x3fe6aabc1d405420              # double 0.70834165299550378
	.quad	0x3fe82f49a7d345de              # double 0.75577242639900155
	.quad	0x3fef93fea708673a              # double 0.98681576369856505
	.quad	0x3fe0ae9bf61dd30e              # double 0.5213146025622295
	.quad	0x3fa939c1f662a3e0              # double 0.049268781019527585
	.quad	0x3fcfc9f04dcebb14              # double 0.2483501796645774
	.quad	0x3fd2e9b3e7f2061a              # double 0.2955140843479015
	.quad	0x3fe8626cb212b1f6              # double 0.76201472072494769
	.quad	0x3fc41f426798c398              # double 0.15720396097597411
	.quad	0x3fed7183cbed232d              # double 0.92010679082259161
	.quad	0x3fef99a574825638              # double 0.9875056529587658
	.quad	0x3fb67279f4d864e0              # double 0.087684271122629109
	.quad	0x3fdfb4ba63522dca              # double 0.49540576648061274
	.quad	0x3fe16596a541e058              # double 0.54365093495199357
	.quad	0x3fe684c9060cd24a              # double 0.70370913678795799
	.quad	0x3fe034a8db5ea06d              # double 0.5064281735003654
	.quad	0x3fdd648a15005aaa              # double 0.4592614369479785
	.quad	0x3fd8f8a81a096ed2              # double 0.39017679731999266
	.quad	0x3fd3a31fddd6a0d8              # double 0.30683132804780433
	.quad	0x3fe0b44c0616c3dc              # double 0.52200890721553206
	.quad	0x3fecae2ca2f471a1              # double 0.8962615187370383
	.quad	0x3fef030a42a73d75              # double 0.96912110346049351
	.quad	0x3fc7f2708c3eff04              # double 0.18708617065384925
	.quad	0x3fecf9960aef2af8              # double 0.90546705375285708
	.quad	0x3fd83263abb91f76              # double 0.37807552118146448
	.quad	0x3f8d6b2baf546740              # double 0.014364568031442482
	.quad	0x3fdc2d90a82e3606              # double 0.4402810709369479
	.quad	0x3fed477931bbe658              # double 0.91497478212040573
	.quad	0x3fa5dbd138600900              # double 0.042692697650652534
	.quad	0x3fd891b0e476f90c              # double 0.38389227210053956
	.quad	0x3fe1522390955222              # double 0.54127672423289064
	.quad	0x3fe0580c9ac3a45f              # double 0.51074819781673486
	.quad	0x3fc2082bc1149cc8              # double 0.14087435653457292
	.quad	0x3feeb591fe2a6998              # double 0.95966434137089873
	.quad	0x3fe8379e67bdb0e2              # double 0.75678940069112977
	.quad	0x3fdd320ea34ea332              # double 0.45618024776426858
	.quad	0x3fd2a109a3088652              # double 0.29107895776005421
	.quad	0x3fe8398c63a07610              # double 0.75702495058402697
	.quad	0x3fb91081a6535c78              # double 0.097908118349879447
	.quad	0x3fa9324f419c80b0              # double 0.049211956748196228
	.quad	0x3fe2589ab8e0d1ca              # double 0.57331596478484781
	.quad	0x3fdb8566e1d99de8              # double 0.43001720481558303
	.quad	0x3fe1ccf155e9c10e              # double 0.55626742153074971
	.quad	0x3fe2480062b2b4c4              # double 0.57128924633948275
	.quad	0x3fe6fdd46fa80ed6              # double 0.71848508651643317
	.quad	0x3fc733fbfd7e7a60              # double 0.18127393605842013
	.quad	0x3fe4b3f37d41303a              # double 0.64696669067189494
	.quad	0x3fda09fd126415ea              # double 0.40685965343467834
	.quad	0x3f6d911d11b8f800              # double 0.0036092345960971883
	.quad	0x3fd3513454574ed2              # double 0.30183132397108381
	.quad	0x3fead2b0effad192              # double 0.83821913596198017
	.quad	0x3fe68e8d05da84cd              # double 0.70490122931746557
	.quad	0x3fe023f33ce2e027              # double 0.50438844577638953
	.quad	0x3fc4d1e21855dca0              # double 0.16265512645961611
	.quad	0x3fece8b6a4606633              # double 0.90340740303799405
	.quad	0x3feb3ff66b203c63              # double 0.85155793116599587
	.quad	0x3fcfa54290cc59e4              # double 0.24723083563067327
	.quad	0x3febc28897df3ee1              # double 0.86749677336225883
	.quad	0x3fd4f8237fe773de              # double 0.32764518252025521
	.quad	0x3fea6af47b7b1371              # double 0.82555603139245026
	.quad	0x3fd7e9d101e0221c              # double 0.37364602263599678
	.quad	0x3fc926538fefbbb8              # double 0.19648212936541909
	.quad	0x3fd7b1fcce836c52              # double 0.37023849646874851
	.quad	0x3fc7747683193840              # double 0.18324166680617004
	.quad	0x3fd80ffbb2c7a852              # double 0.37597553690887253
	.quad	0x3fefc5f779412ab5              # double 0.99291585619479028
	.quad	0x3fa21287fb36ac20              # double 0.03529763166019273
	.quad	0x3fc671bcca48ad88              # double 0.17534599187034083
	.quad	0x3fe241f4bc328f1f              # double 0.57055126912425524
	.quad	0x3fe5ca76c78377f1              # double 0.68096484153261205
	.quad	0x3fecdac58e606a78              # double 0.90170553024229516
	.quad	0x3fefeecb8436d6d5              # double 0.99789977858628253
	.quad	0x3fd7c20d0bf283a2              # double 0.37121893088083813
	.quad	0x3fedb38bdc5c2d16              # double 0.92816727675509259
	.quad	0x3fe468f06ffbe838              # double 0.63780996200444573
	.quad	0x3fb4020325e3d140              # double 0.078155705213991844
	.quad	0x3fb64b0301747c38              # double 0.087082088332395169
	.quad	0x3fecfdf9964c19ea              # double 0.90600280146537426
	.quad	0x3f97f1cdccbbe000              # double 0.023383346196141019
	.quad	0x3fd9caec49e87de0              # double 0.40301043717951579
	.quad	0x3fd3425a0d81ab1e              # double 0.3009247905635436
	.quad	0x3f9957db04571360              # double 0.02474920476904019
	.quad	0x3fe7f78d79b65b3d              # double 0.74896882793368713
	.quad	0x3fda794fb497b718              # double 0.41365425716399917
	.quad	0x3fe6b6d8ce593499              # double 0.70982017805512776
	.quad	0x3fea533d259e72d6              # double 0.82266099307488605
	.quad	0x3fe7258a0d6814a8              # double 0.72333243006200565
	.quad	0x3fe9da78d64835ad              # double 0.80791894771544082
	.quad	0x3fe20b20e73b284f              # double 0.56385846292801911
	.quad	0x3fe4fe8cccd6953b              # double 0.6560729981180552
	.quad	0x3fe0d717dc6f8d02              # double 0.52625649503571048
	.quad	0x3fef0d43e6a6b77c              # double 0.97036929177350783
	.quad	0x3febdad0a7bde470              # double 0.87046082269729474
	.quad	0x3fdf959a87e078a2              # double 0.49350608128760076
	.quad	0x3fe52cab95610c4e              # double 0.66170291114429758
	.quad	0x3fed608afed79c6e              # double 0.91803502820847682
	.quad	0x3fce5fd3a19261f4              # double 0.23729939831970592
	.quad	0x3fe5c22509e75852              # double 0.67994930204691628
	.quad	0x3fd4c2842ab16414              # double 0.32437233132583398
	.quad	0x3fe3ffa20d5f6ac3              # double 0.62495520221576617
	.quad	0x3fd7b241f62377e2              # double 0.37025498425452785
	.quad	0x3f8280bf7f01ab40              # double 0.0090346298822702175
	.quad	0x3fdccd7c16a3852e              # double 0.45004179201903838
	.quad	0x3fb214f514689ba0              # double 0.070632283670973184
	.quad	0x3fe6b9d48742f795              # double 0.71018434923438412
	.quad	0x3fa18700684391a0              # double 0.034233105399638974
	.quad	0x3fe73abadf3dd679              # double 0.72591918565622315
	.quad	0x3fe7c7f085dfe136              # double 0.74315668246621303
	.quad	0x3fed5f93b4d286ed              # double 0.91791711155766864
	.quad	0x3fe32c9066f760cf              # double 0.59918995009049947
	.quad	0x3feed4d20cc6fcc3              # double 0.96347906585278797
	.quad	0x3fed123c6b841d12              # double 0.90847607611877579
	.quad	0x3fc9c1c5b07a75b8              # double 0.20122595898730622
	.quad	0x3fed47a09f75062c              # double 0.91499358314485368
	.quad	0x3fdec876806e68d2              # double 0.48098528425329079
	.quad	0x3fb328f0cbcef190              # double 0.074843454130080866
	.quad	0x3fc9c5c3e2d1adc0              # double 0.20134781432294169
	.quad	0x3fe08af1ee6b23ea              # double 0.51696106496922067
	.quad	0x3fd41ec1d16ccf4a              # double 0.31437726451553216
	.quad	0x3fd815169f0085a2              # double 0.37628713157217863
	.quad	0x3fd0e749dd401e54              # double 0.26411673170557504
	.quad	0x3fd9dd8a9f024534              # double 0.40414681938371477
	.quad	0x3fd5422e52d1360c              # double 0.33216436469669541
	.quad	0x3fc8144837976d3c              # double 0.18811896051816202
	.quad	0x3fa9b2e708bb1070              # double 0.050193042579423586
	.quad	0x3fed3303a8f6b72f              # double 0.91247733116845164
	.quad	0x3fd9036b0522fd46              # double 0.39083362104061725
	.quad	0x3fea8716eb39c7c4              # double 0.8289904207469978
	.quad	0x3fe6188b1493e16f              # double 0.6904960061938662
	.quad	0x3fe30e59347e876c              # double 0.59550152066024742
	.quad	0x3fe2abbda65314ae              # double 0.5834644554639874
	.quad	0x3fd7e9e190d5f2bc              # double 0.37364997047533755
	.quad	0x3fe6c8ae220c1376              # double 0.71199709558332702
	.quad	0x3fe95df40b800a61              # double 0.79271890874981576
	.quad	0x3f8e7af1e6843800              # double 0.01488293633203952
	.quad	0x3fd52b05539f5b68              # double 0.33075078169115679
	.quad	0x3fdace899e56a308              # double 0.41885605299698669
	.quad	0x3fca00a7941d0a50              # double 0.20314497692204947
	.quad	0x3fe52a6c37bb2400              # double 0.6614285553451964
	.quad	0x3fe68c9c15244f36              # double 0.70466426972641361
	.quad	0x3fe7a948137e774d              # double 0.73941425139830985
	.quad	0x3fd95dd2a6482e68              # double 0.39635149229500266
	.quad	0x3fa9c98466c80410              # double 0.050365579172655939
	.quad	0x3fd9f484761241c2              # double 0.4055491593399233
	.quad	0x3fdf8b7147236fd6              # double 0.49288589427100982
	.quad	0x3fd30d9d5b9f9062              # double 0.29770597407901367
	.quad	0x3fee05b9497c2df3              # double 0.93819870331338817
	.quad	0x3fe508c47e13d5b0              # double 0.65732025742061317
	.quad	0x3fefb80b2b7cb79e              # double 0.99121626370991911
	.quad	0x3fd6f5f5e44bc6dc              # double 0.35876223845035127
	.quad	0x3fd64758f95b625a              # double 0.34810470916048575
	.quad	0x3fe44582f9196625              # double 0.63348530437651063
	.quad	0x3fe339b3f8dcabf0              # double 0.6007938252054128
	.quad	0x3fe41ec4c3605d74              # double 0.62875593337495994
	.quad	0x3fcc10d176cb8898              # double 0.21926325130977342
	.quad	0x3fc2a3f9a0d14a00              # double 0.1456291232339737
	.quad	0x3fccbbc05b0b8508              # double 0.22447971768910002
	.quad	0x3fe07430f78b6b8c              # double 0.51418350552136038
	.quad	0x3feee3973825fb2b              # double 0.96528206793286608
	.quad	0x3fc7dc6187a370b0              # double 0.18641299365015618
	.quad	0x3fd79fc545e95af0              # double 0.36912662341403202
	.quad	0x3fe01d276dd5dabc              # double 0.50355884029598696
	.quad	0x3fe57d50db2dec69              # double 0.6715473442885812
	.quad	0x3fd1d20262ef7d78              # double 0.27844295179053047
	.quad	0x3fe736a0e38fa2ec              # double 0.72541851468585383
	.quad	0x3fe20777e96de529              # double 0.56341167060523845
	.quad	0x3fcb9628e5ac421c              # double 0.21552001204010274
	.quad	0x3fedb8502e6d4b3d              # double 0.9287491709495509
	.quad	0x3fea34b40fc23526              # double 0.81893351629120015
	.quad	0x3fe469e903396e85              # double 0.63792849187616751
	.quad	0x3fcdc7d3b9c8a804              # double 0.23266073771930007
	.quad	0x3f89ee4e033fefc0              # double 0.012661561464476168
	.quad	0x3fce948d5e827234              # double 0.23890845408176775
	.quad	0x3fd060ad9bbed104              # double 0.2559007664633699
	.quad	0x3fed291901377c45              # double 0.91126680600780985
	.quad	0x3fea19c5d8292e9c              # double 0.81564609736365722
	.quad	0x3fed6d1fc7fe9ac4              # double 0.91957081853328093
	.quad	0x3febe5889e6ecc9c              # double 0.87176924652011988
	.quad	0x3fd2c78c36627a1a              # double 0.29342942534450034
	.quad	0x3fecde40f2fe9bfb              # double 0.90213057956577758
	.quad	0x3fe1ea9ff8f17b3e              # double 0.55989073392615984
	.quad	0x3fd4a0f4b65a2716              # double 0.3223239689619829
	.quad	0x3fe93f73997a739e              # double 0.78899555183635406
	.quad	0x3fedb9b5aaeb3b1a              # double 0.92891963369933994
	.quad	0x3fe45769769f1ed5              # double 0.6356704060389925
	.quad	0x3fe5173d11a77228              # double 0.65908673713744736
	.quad	0x3feecad453c6fd27              # double 0.96225944864992107
	.quad	0x3f99ffed7a05b1a0              # double 0.025390348980566579
	.quad	0x3fd110bf01e2058e              # double 0.26664710220219312
	.quad	0x3fed3da27f798b02              # double 0.91377377412240457
	.quad	0x3fe1d834228e9ff3              # double 0.55764204739989365
	.quad	0x3fc12f72c97d2ff0              # double 0.13426050985651683
	.quad	0x3fe0ef80d8808e3e              # double 0.52923624311046757
	.quad	0x3fe7446854cbd8d3              # double 0.72710053025982757
	.quad	0x3fca67a4f7e0e6e8              # double 0.20628797629779361
	.quad	0x3fe1b8d0f2509666              # double 0.55381057097538355
	.quad	0x3fe68d623913e71e              # double 0.70475875041958935
	.quad	0x3fd6a69393ff5d96              # double 0.35391702130206093
	.quad	0x3fc4d84798ffeefc              # double 0.16285033198061416
	.quad	0x3fe21b3d0cd71975              # double 0.5658250094209466
	.quad	0x3fec2c478784870a              # double 0.88040520160959201
	.quad	0x3fecc5164f58590a              # double 0.89905848977176217
	.quad	0x3fca2022eccf21f4              # double 0.20410572588868059
	.quad	0x3fee679f4dcd73eb              # double 0.95014920421419669
	.quad	0x3fe7172b3b9e7660              # double 0.72157823223433226
	.quad	0x3fda52741ed8a4bc              # double 0.41128256809549746
	.quad	0x3fc329c085849a7c              # double 0.14971167106087424
	.quad	0x3fe47757af0b222c              # double 0.63956817806417154
	.quad	0x3fcf43ef21ed6724              # double 0.24426068455323346
	.quad	0x3fe11fbbb90f46dd              # double 0.53512369293659001
	.quad	0x3fd9041c9d86e5e6              # double 0.39087596305361527
	.quad	0x3fe398be7e3740d6              # double 0.61239552165536781
	.quad	0x3fdd2f4df33eb820              # double 0.45601223711389771
	.quad	0x3fe1b9770673de4d              # double 0.55388976345325036
	.quad	0x3feed25e3de289fc              # double 0.96317970358751336
	.quad	0x3fec9725299d1e6a              # double 0.8934503376739944
	.quad	0x3fee022124368fd5              # double 0.93775994370343574
	.quad	0x3fe1b9fe75c8c9f2              # double 0.55395434384109721
	.quad	0x3fdb9ac2e148546c              # double 0.43132087707755917
	.quad	0x3fdf6904c49e5ec2              # double 0.49078482819593827
	.quad	0x3fe94fdf88128f07              # double 0.79100014282855191
	.quad	0x3fd12aa78883bb68              # double 0.26822841960431854
	.quad	0x3fe7c6a4782ab282              # double 0.74299834699702694
	.quad	0x3fe8a8002f381ef1              # double 0.77050790045265505
	.quad	0x3fb96847897805c8              # double 0.099247427999237137
	.quad	0x3feb599e2290016f              # double 0.85468966246120981
	.quad	0x3fea4a4f23cd3f85              # double 0.82157093994645491
	.quad	0x3fe7f5d558ad334f              # double 0.74875895805016934
	.quad	0x3fc7ca15c7c59740              # double 0.18585464720234235
	.quad	0x3fe8178096e7fe0e              # double 0.75286893342848926
	.quad	0x3fdada653313e416              # double 0.41957979190880346
	.quad	0x3fd5dd2ab1691132              # double 0.34162394833790011
	.quad	0x3fc431744cbabc4c              # double 0.15775922533564068
	.quad	0x3fefb457d81ade75              # double 0.99076454360961341
	.quad	0x3fb8a948de556f48              # double 0.096333078652091619
	.quad	0x3fdef8320f031206              # double 0.48389865365996376
	.quad	0x3fdd5f2ae101e3be              # double 0.45893356297852594
	.quad	0x3fdc6a07ab6568ba              # double 0.44397155511763808
	.quad	0x3fdbadcccd3e3a42              # double 0.43248291056889709
	.quad	0x3fd4f2e525d62e50              # double 0.32732514090523512
	.quad	0x3fc96e5e0195c214              # double 0.19868064000503749
	.quad	0x3fb607b0bf25d600              # double 0.086054846445982491
	.quad	0x3fd044a89dc75276              # double 0.2541905918890629
	.quad	0x3fed2a2a53d0ba1f              # double 0.91139713640388098
	.quad	0x3fc72b21edbf3c98              # double 0.18100380047551279
	.quad	0x3fe0bb709b3bcd28              # double 0.52288084334432927
	.quad	0x3fc9ed7c79080920              # double 0.20256000432716181
	.quad	0x3fdfddf67d50474a              # double 0.49792253720908219
	.quad	0x3fe2ab01d1a11994              # double 0.58337489073965054
	.quad	0x3fc7b017072354e4              # double 0.18506133888755649
	.quad	0x3fdda0862155dbde              # double 0.46292260413559727
	.quad	0x3fde50b11b3e53ca              # double 0.47367503796095589
	.quad	0x3fe50f5cb74aa1aa              # double 0.65812526511313263
	.quad	0x3fdba891defce69c              # double 0.43216368461762911
	.quad	0x3fd3a970f451db1a              # double 0.30721687182760749
	.quad	0x3fd09899f057c070              # double 0.2593140456292593
	.quad	0x3fe9f8d941305846              # double 0.81162703258701963
	.quad	0x3fd69f3e5fbf9ef6              # double 0.35346946096841181
	.quad	0x3fc3ce83011558f8              # double 0.15473973801517338
	.quad	0x3fe9394df7e07c9a              # double 0.7882451859803894
	.quad	0x3fe27b9b11e87cd7              # double 0.57758859155355935
	.quad	0x3fde85a12c56eb4c              # double 0.47690610246688858
	.quad	0x3f7916d94b2d8b80              # double 0.0061253059419382749
	.quad	0x3fef0c8c277662a6              # double 0.97028167445667601
	.quad	0x3f7c16ae06bc4d80              # double 0.0068575666334881324
	.quad	0x3fc74a68814a27dc              # double 0.18195825875255778
	.quad	0x3feac883e63ca889              # double 0.83697695701745645
	.quad	0x3fec1fcce501ddec              # double 0.87888188102709596
	.quad	0x3fc06b76d52b78b8              # double 0.12827954682047049
	.quad	0x3fa40a2c74b0d910              # double 0.039140118832096005
	.quad	0x3fe81264dea258b1              # double 0.75224536402926934
	.quad	0x3f9e120257776fe0              # double 0.02936557444432697
	.quad	0x3fe55a9243bfda41              # double 0.66730607254323371
	.quad	0x3fdadd8754c63324              # double 0.41977103499157153
	.quad	0x3fe5d305a2739c60              # double 0.68200952271298476
	.quad	0x3fd84e428581ded2              # double 0.37977660215208886
	.quad	0x3fedc728e294554c              # double 0.93056148771089786
	.quad	0x3febdf6635babe56              # double 0.87102041715656742
	.quad	0x3fecf63356485c8d              # double 0.90505377628405059
	.quad	0x3fd234f16c0be046              # double 0.28448138762860642
	.quad	0x3fef1b6397b509c6              # double 0.97209338789280575
	.quad	0x3fe7dcd7bcabb6cb              # double 0.74570834016568577
	.quad	0x3fd08fe23e91a5e2              # double 0.25878196821449084
	.quad	0x3fecf1a7d4a66839              # double 0.90449897320946271
	.quad	0x3fd594a59275517e              # double 0.33719767859044925
	.quad	0x3fdee147994aeaa4              # double 0.482499980640265
	.quad	0x3fef6bec1771c4eb              # double 0.98192410067545432
	.quad	0x3fcfbb54c7bf2e14              # double 0.24790439370404782
	.quad	0x3fd0334cf03192fa              # double 0.25313113647852925
	.quad	0x3fed857fc0eccf6b              # double 0.92254626923248162
	.quad	0x3fc02dabf089fe10              # double 0.12639378781385391
	.quad	0x3fb4901096295850              # double 0.080323254261515986
	.quad	0x3fbe520a2fb6b7e0              # double 0.1184393278587943
	.quad	0x3f96495e1153bb60              # double 0.02176424961811152
	.quad	0x3fbe34bf3b928c70              # double 0.11799235538869524
	.quad	0x3fcb82447880eb88              # double 0.21491294750179812
	.quad	0x3fd8bb0df21298b4              # double 0.38641689910799504
	.quad	0x3fdb55339cf3322e              # double 0.42707529379984777
	.quad	0x3fdcc1794f1d3f28              # double 0.44930870748520357
	.quad	0x3fd12dda2e5c3b80              # double 0.26842360045787217
	.quad	0x3fdc032af09a099e              # double 0.43769334312687558
	.quad	0x3fe5b35aceffcee2              # double 0.67814388684788818
	.quad	0x3fee2091fe8aa525              # double 0.9414758655085832
	.quad	0x3fd0b7a99bfcd902              # double 0.26120987160847176
	.quad	0x3fdfe801710bd72e              # double 0.49853549995110569
	.quad	0x3f9ed6c4ee1f3840              # double 0.030116154702959586
	.quad	0x3fe498e1a89ca08e              # double 0.6436622899245934
	.quad	0x3fe9dbcb031acd6e              # double 0.80808020216356424
	.quad	0x3fc23706ec34e764              # double 0.14230429204490769
	.quad	0x3fee14a19f8f62ea              # double 0.94001847423632268
	.quad	0x3fe9c7f0b7a50e0c              # double 0.8056567751704633
	.quad	0x3fedcf53a11834fd              # double 0.93155843223362889
	.quad	0x3fbb60909d0f0c98              # double 0.10694221338694587
	.quad	0x3febb338ee271b8b              # double 0.86562773241245006
	.quad	0x3febc8e352d60702              # double 0.86827245882906845
	.quad	0x3fe5297c36b656cc              # double 0.66131411252964645
	.quad	0x3fda98fbaf2cc42c              # double 0.41558734995766389
	.quad	0x3f9b6451d342a680              # double 0.026749876517590199
	.quad	0x3fdd9908ffb0c06c              # double 0.46246552438515809
	.quad	0x3fc3d3293d7593f0              # double 0.15488162518445803
	.quad	0x3fead4f8f9da5d8e              # double 0.83849762725269428
	.quad	0x3fccf1ad0b81ba50              # double 0.22612536489346491
	.quad	0x3fdd8dd69c32ffca              # double 0.4617821240790333
	.quad	0x3fda7571d572df1c              # double 0.41341825337029703
	.quad	0x3fd60935eb0af6d0              # double 0.34431217149163462
	.quad	0x3fe9ef5f08a2f2a9              # double 0.81047012030429244
	.quad	0x3feb75f3550094d1              # double 0.85814825632101066
	.quad	0x3fd4659a9ad8e3ec              # double 0.31870141145515052
	.quad	0x3fbe61acd3514d48              # double 0.11867790373917331
	.quad	0x3fb1bb42dd17ff38              # double 0.069263628938640021
	.quad	0x3fdf6c66cc586b9c              # double 0.49099130588154494
	.quad	0x3fe573462b5b066e              # double 0.67032154529461052
	.quad	0x3fd0677d4ef75168              # double 0.25631649695903613
	.quad	0x3fea6d5de6d145ed              # double 0.82585043984925977
	.quad	0x3fdc25050682559c              # double 0.43975949893623478
	.quad	0x3f8870ad8e00c500              # double 0.011933666130149678
	.quad	0x3fee81dbf2bebba5              # double 0.95335194979803772
	.quad	0x3fe6422e2a607a76              # double 0.69557865406734609
	.quad	0x3fe0053d8cbf8a13              # double 0.50063970079310349
	.quad	0x3faf6a1c28245b60              # double 0.061356429958485448
	.quad	0x3fe9529b0e43f5f0              # double 0.7913337019560327
	.quad	0x3fcd5dbb6e7c7afc              # double 0.22942297835194114
	.quad	0x3fe7251185c56f1e              # double 0.72327495696251609
	.quad	0x3fe03428030a2505              # double 0.50636673539807531
	.quad	0x3fcac737df6afde8              # double 0.20920465859488435
	.quad	0x3feaa2b85bde17bf              # double 0.83236329977875545
	.quad	0x3fe738ca02b2cf53              # double 0.72568226363226029
	.quad	0x3fcf23522b7ee740              # double 0.24326541065038931
	.quad	0x3fb75223b621f548              # double 0.091097099271754023
	.quad	0x3fecdb29601ad6b5              # double 0.90175312777019789
	.quad	0x3fe62b358e501915              # double 0.69277456088528544
	.quad	0x3fc6e54127c3ac2c              # double 0.17887129251116229
	.quad	0x3fe107958f608e1b              # double 0.53217580798485942
	.quad	0x3fe56bd7fc2104a8              # double 0.66941451305333022
	.quad	0x3fd00e974e56e02e              # double 0.25089056635215712
	.quad	0x3fe5c4c084609bca              # double 0.68026758055645442
	.quad	0x3fd5f6cab7dccd8c              # double 0.343187980225786
	.quad	0x3fa595e969446e00              # double 0.042159360980999594
	.quad	0x3fd38d041d031256              # double 0.30548193772509558
	.quad	0x3fea11dadbe7be7f              # double 0.8146795554184364
	.quad	0x3fe6f7670a6bc293              # double 0.71770050082530401
	.quad	0x3fd0a933f684c93e              # double 0.26032733034221056
	.quad	0x3fc1af99c2f99954              # double 0.13817140598548383
	.quad	0x3febab59fad155b1              # double 0.86466692912897802
	.quad	0x3fd3b38e126fdf74              # double 0.30783416557777987
	.quad	0x3fe80bff84464c51              # double 0.75146461329348757
	.quad	0x3fefa78c8029bc12              # double 0.98920273811188708
	.quad	0x3fe25dd2077b1efd              # double 0.57395268880006223
	.quad	0x3fdd0cf2bf7db64c              # double 0.45391529751109227
	.quad	0x3fede1acb7ab4ce9              # double 0.93379817841414792
	.quad	0x3fc5e4890012645c              # double 0.17103683951862336
	.quad	0x3fe281025478c035              # double 0.57824818132758671
	.quad	0x3fd39d27c9d53232              # double 0.30646700582727526
	.quad	0x3fe54aa4a880fc98              # double 0.6653617182818321
	.quad	0x3fdfb3019257213e              # double 0.49530066767740155
	.quad	0x3fd66ba8467c8a00              # double 0.35032088168568976
	.quad	0x3fb3ee7646a32e18              # double 0.077857391591514946
	.quad	0x3fd047e08931cc78              # double 0.25438702962782811
	.quad	0x3fed4e7d338d05dc              # double 0.91583118504075455
	.quad	0x3fe2bfb3a3c69e2b              # double 0.5859010885951127
	.quad	0x3f92bbfc946d93c0              # double 0.018295237120941499
	.quad	0x3fe8f6ee97f80693              # double 0.78014306718269422
	.quad	0x3fd5127ff5dcec14              # double 0.32925414094978689
	.quad	0x3fbc3984f367cf10              # double 0.11025267546193285
	.quad	0x3fe3e077269bc0a9              # double 0.621150565535591
	.quad	0x3fcd5925a57f835c              # double 0.2292830522628958
	.quad	0x3fe05fa0e88afc12              # double 0.51167340677773354
	.quad	0x3fca422955d83468              # double 0.20514408771160508
	.quad	0x3fd860e6f47f225a              # double 0.38091443897841304
	.quad	0x3fe3dea6658719f2              # double 0.62092895345341348
	.quad	0x3fe508d277e6d352              # double 0.65732692163747175
	.quad	0x3fd56147f057e4ac              # double 0.3340625617125379
	.quad	0x3febbd025fab518f              # double 0.86682242093461237
	.quad	0x3feab8e36cc95016              # double 0.83506938216533189
	.quad	0x3fddbcb135df5f9a              # double 0.46464185963622529
	.quad	0x3fda665536ee6256              # double 0.41249590267537906
	.quad	0x3fee65e91f582532              # double 0.94994026300370238
	.quad	0x3febcc6a1b431a82              # double 0.86870293926843112
	.quad	0x3fe0822a44270db4              # double 0.51588929472966649
	.quad	0x3fee174990cea16b              # double 0.94034269602438536
	.quad	0x3fd451f214efff38              # double 0.31750156445194788
	.quad	0x3fe04aa76049a7a0              # double 0.50911301428026334
	.quad	0x3fdf220ac3761516              # double 0.48645276153577421
	.quad	0x3fd7f71a13c35640              # double 0.37445690088256711
	.quad	0x3feb0246ff444dec              # double 0.84402799469756706
	.quad	0x3feaa399fc882ddf              # double 0.83247088740011665
	.quad	0x3fe6ed2d58cf63d1              # double 0.71645228715635245
	.quad	0x3fe8a5623df06ae9              # double 0.77018844697462641
	.quad	0x3fa2379c592bef20              # double 0.03558052624245378
	.quad	0x3fe0188bd3e0bfff              # double 0.50299636251838808
	.quad	0x3fdcaaf967aaaf30              # double 0.44793543933586744
	.quad	0x3fe18f4f40fbcadc              # double 0.54874384586431857
	.quad	0x3fe50d593a0d037c              # double 0.65787946069768521
	.quad	0x3fe259a99cf86a68              # double 0.57344513567234134
	.quad	0x3fdd5a56898a71ea              # double 0.45863879615515535
	.quad	0x3fc04b340d204960              # double 0.1272950233547574
	.quad	0x3fdda3b156b07b10              # double 0.46311601129302549
	.quad	0x3fe57ee3761b5cca              # double 0.6717393214011278
	.quad	0x3fe538ea8e62cf68              # double 0.66319778260956941
	.quad	0x3fdab29154b21e14              # double 0.41714890738555366
	.quad	0x3fcd0af124996a38              # double 0.22689642226289819
	.quad	0x3fd8ffe1337d31c6              # double 0.39061765697695383
	.quad	0x3fce760120044550              # double 0.2379762083369692
	.quad	0x3fdb5cb996c7cfb4              # double 0.4275344822374294
	.quad	0x3fd23572ef1dc66c              # double 0.28451226569368404
	.quad	0x3fe759785abf853a              # double 0.72967164730304224
	.quad	0x3fe48bc87dcfc98d              # double 0.64206337521163592
	.quad	0x3fe2e36d8f99e2e7              # double 0.59026220366567095
	.quad	0x3fbeb9dcd0801aa8              # double 0.12002353754369699
	.quad	0x3fec1079d81427e4              # double 0.87701122477414772
	.quad	0x3fe294528f08f326              # double 0.58060577332034735
	.quad	0x3fe46f9975bf0bfa              # double 0.63862298009223584
	.quad	0x3fe280c20004bf68              # double 0.57821750644323533
	.quad	0x3fe33f12d3d072f0              # double 0.60144940729114005
	.quad	0x3fdbde52f75e68c6              # double 0.43544458539112119
	.quad	0x3fd26c53b57997ee              # double 0.28786175462880592
	.quad	0x3fe786d1cecc56b9              # double 0.73520746603272535
	.quad	0x3fe63b0079190d2c              # double 0.69470237399983636
	.quad	0x3fec04f6c257212f              # double 0.87560594517802837
	.quad	0x3fd840e318d70da4              # double 0.37896039415155713
	.quad	0x3fddadf70321cae4              # double 0.46374297433719236
	.quad	0x3fd7e0ab92f78a26              # double 0.37308778145066623
	.quad	0x3fda810979b151d8              # double 0.41412579425857876
	.quad	0x3feae712c1cfb4c8              # double 0.8407071862581228
	.quad	0x3fd058ac95c7b9a6              # double 0.25541224123926509
	.quad	0x3fe42539fb7a11a5              # double 0.62954424969261835
	.quad	0x3febb12d882becd3              # double 0.86537815662395656
	.quad	0x3fe031c9df6fcc20              # double 0.50607770576459998
	.quad	0x3fe821bf60285afb              # double 0.75411957531727525
	.quad	0x3fba9cce4bc2a110              # double 0.10395516728988619
	.quad	0x3fe94c7a949bee29              # double 0.79058579468932522
	.quad	0x3fc66b6b6297fa00              # double 0.17515318216460685
	.quad	0x3fe10faad50a9f16              # double 0.53316251382509239
	.quad	0x3fcb1ae5feec2d58              # double 0.21175837466612779
	.quad	0x3fe089ad4566719a              # double 0.51680625490876086
	.quad	0x3fe9d8969709d578              # double 0.80768899440469877
	.quad	0x3f871df5cbac8d80              # double 0.011287613180292366
	.quad	0x3fe828d2b86eb628              # double 0.75498329183546264
	.quad	0x3fd6d9f7636485a0              # double 0.35705361086191978
	.quad	0x3fb4ad311e3cb518              # double 0.08076769817553886
	.quad	0x3fe303851bf13036              # double 0.59417968232583607
	.quad	0x3fdfb2e6f959195c              # double 0.49529432630915493
	.quad	0x3fed6ac0345a5065              # double 0.9192811033740439
	.quad	0x3fc6cb3b5293aebc              # double 0.17807714016031706
	.quad	0x3fb1c0b5154e55a0              # double 0.06934673090139265
	.quad	0x3fd41f386e19ba8e              # double 0.31440554382326347
	.quad	0x3fdf9fb9dc6405f4              # double 0.49412390253573268
	.quad	0x3fea249d0a513aca              # double 0.81696941390131284
	.quad	0x3fd948321a54bdf8              # double 0.39503147670163186
	.quad	0x3fc12b92d91f2ac4              # double 0.1341422615208413
	.quad	0x3fb13a13353bce10              # double 0.067292404648292115
	.quad	0x3fed7ced9469c552              # double 0.92150000559755996
	.quad	0x3fcbf2bbc6df1250              # double 0.21834513865009564
	.quad	0x3fe56462f3eeb5d3              # double 0.66850421565112084
	.quad	0x3fac49d8e1e105a0              # double 0.055250909398192549
	.quad	0x3fc7e46c11adbd58              # double 0.1866583906480439
	.quad	0x3fe156eeab0cca00              # double 0.54186185272402554
	.quad	0x3fe953fb290548d7              # double 0.79150159847111012
	.quad	0x3fb5819b55c237f0              # double 0.084008892476248098
	.quad	0x3fb92ededdc8ab78              # double 0.098371438166095504
	.quad	0x3fe363bac8b18b3b              # double 0.60592402646975729
	.quad	0x3fe68fca1454898b              # double 0.70505241366144966
	.quad	0x3fde260596fda742              # double 0.47107066865156721
	.quad	0x3fe50da98725e7f0              # double 0.65791775127513397
	.quad	0x3feb55f1fe1bbec4              # double 0.85424136763136759
	.quad	0x3fe2226d9410f8c1              # double 0.56670264167021156
	.quad	0x3fcaad0ee0b9c1c0              # double 0.20840631459169678
	.quad	0x3fdd135d1ab9c2b6              # double 0.45430686578678647
	.quad	0x3fda3b166f9f7074              # double 0.4098564233843327
	.quad	0x3fcf70d6e0523924              # double 0.24563108399565536
	.quad	0x3feaffd810a78628              # double 0.84373095753489213
	.quad	0x3faa2d5395c81650              # double 0.051127063783536486
	.quad	0x3fb068ffa3b95610              # double 0.064102151366874915
	.quad	0x3fc5758472dd92a4              # double 0.16764884575527106
	.quad	0x3fd76a11fcf55380              # double 0.36584901526412494
	.quad	0x3fb35f12b8017bc8              # double 0.075669450686731143
	.quad	0x3fedbe2b85d6fe1c              # double 0.92946411266888473
	.quad	0x3fe675014cb511ba              # double 0.70178284627814169
	.quad	0x3fe12ba4754b6523              # double 0.53657744320949907
	.quad	0x3fe68653f930bc0f              # double 0.70389746351236393
	.quad	0x3fce48248e95db44              # double 0.23657662355591402
	.quad	0x3fe4db92e29ffd1c              # double 0.65180343878447244
	.quad	0x3fee010876918428              # double 0.93762610586066319
	.quad	0x3fdcfe4067793028              # double 0.45301828484366746
	.quad	0x3fe3252866be513c              # double 0.59828586642337411
	.quad	0x3f701974bc554a80              # double 0.0039305267321930737
	.quad	0x3feab83c90b0def9              # double 0.83498981723729948
	.quad	0x3fe48a1b4ab5b1f4              # double 0.64185871688601859
	.quad	0x3fe6e219c0dad29f              # double 0.7151001707739687
	.quad	0x3fd84543da5cfba6              # double 0.37922760319264126
	.quad	0x3fedb87a2f78e28f              # double 0.92876920005717689
	.quad	0x3fe174176647fa66              # double 0.54542131401815364
	.quad	0x3f869a94c5338900              # double 0.011037027614694939
	.quad	0x3febbfbdc8a36c58              # double 0.86715592562849064
	.quad	0x3fb0833758633618              # double 0.064502200201978943
	.quad	0x3fe47cd3c4e1acb2              # double 0.64023769811082887
	.quad	0x3fed8000dfa41eb5              # double 0.92187541656399807
	.quad	0x3fa41e431d5f8b40              # double 0.039293382011030165
	.quad	0x3fd97903da7c78ba              # double 0.39801117264313357
	.quad	0x3fe5aca830e1e420              # double 0.67732629344311945
	.quad	0x3feebb2ef6d12abc              # double 0.96034954267937377
	.quad	0x3fca730bd35d37c4              # double 0.20663593121065393
	.quad	0x3fdc367074b71c26              # double 0.44082271001792817
	.quad	0x3fe94607b77e2998              # double 0.78979860151712256
	.quad	0x3fe2bb7ba73ff81b              # double 0.58538611093513582
	.quad	0x3fc118ad33703484              # double 0.1335655690349179
	.quad	0x3fd0e364e1768792              # double 0.26387903230544751
	.quad	0x3fd333f2f0d53336              # double 0.30004571455792772
	.quad	0x3fe27c036e10fdb7              # double 0.57763835427606736
	.quad	0x3fd3509d154d055e              # double 0.30179526405489365
	.quad	0x3fde12d6e8f3f840              # double 0.46989987134282174
	.quad	0x3fed64e55fb7971d              # double 0.91856640524631283
	.quad	0x3fe2866417438ae6              # double 0.57890514892309564
	.quad	0x3facd1c07565a7b0              # double 0.056287779169749697
	.quad	0x3fe81c9a9e751a28              # double 0.75349169682232731
	.quad	0x3fdc4da26661ab58              # double 0.44223842619128595
	.quad	0x3fe5596d81d943bf              # double 0.66716647492477665
	.quad	0x3fd2633d98887dd6              # double 0.28730716605965989
	.quad	0x3fda71524035871a              # double 0.41316658277911389
	.quad	0x3fd7dc548bb6c3de              # double 0.37282289165437799
	.quad	0x3fec9836c647aa0b              # double 0.89358080603170842
	.quad	0x3feba8a62413b7b7              # double 0.86433703466695178
	.quad	0x3fea326c00cd5b80              # double 0.81865501553225783
	.quad	0x3fdf82a440daff12              # double 0.49234873136082158
	.quad	0x3fcc2e84196ae3f4              # double 0.22016955605593547
	.quad	0x3fddc281f4b3ac56              # double 0.46499680420555956
	.quad	0x3fe96994f4121c7e              # double 0.79413840932910751
	.quad	0x3fd435ec6ea6f872              # double 0.31579123311883628
	.quad	0x3feb7f0b41ad155d              # double 0.85925829722752278
	.quad	0x3fc75a4db559a05c              # double 0.18244334559426789
	.quad	0x3fec7b92521b27cb              # double 0.89008441959708173
	.quad	0x3fe82d97a6d84349              # double 0.75556547724600265
	.quad	0x3fd84d836ff9164a              # double 0.37973104414809156
	.quad	0x3fe22963848d75a7              # double 0.56755233658957571
	.quad	0x3fea2cd137f0749e              # double 0.81797085691109195
	.quad	0x3fa5ef8b53ccfb20              # double 0.042843202571466898
	.quad	0x3fef4c35f3f0149a              # double 0.97805307048897139
	.quad	0x3fd4bb0d996f2014              # double 0.32391681655690374
	.quad	0x3fcfcda1123bcd00              # double 0.24846280470192283
	.quad	0x3feb6bf5803313b0              # double 0.85692858733147226
	.quad	0x3feac8ef2bdd18c4              # double 0.83702810828324247
	.quad	0x3feddb16ac723219              # double 0.93299421006082917
	.quad	0x3fc5cdaf521caa00              # double 0.17033950337766157
	.quad	0x3fee622646a6239d              # double 0.94948114203099332
	.quad	0x3feb5d16f55ca34d              # double 0.85511348650207142
	.quad	0x3fe2989c192b559a              # double 0.58112912097810754
	.quad	0x3fd4323041940c20              # double 0.3155632629788574
	.quad	0x3fe5529955befe15              # double 0.66633288142469616
	.quad	0x3fd52e2471617ab0              # double 0.33094130585042603
	.quad	0x3fea6419f7477210              # double 0.82471941277214178
	.quad	0x3fda034e7ec8cf6a              # double 0.40645182019510762
	.quad	0x3fd2e4f0d4b7b46a              # double 0.29522343419268415
	.quad	0x3fe1d8d31c465a94              # double 0.55771785280633646
	.quad	0x3fd5a6592203c120              # double 0.33827808686966598
	.quad	0x3fd672a1c6c96908              # double 0.35074657833833145
	.quad	0x3fe4e67069250da6              # double 0.65312977348405776
	.quad	0x3fe9946395e64c8d              # double 0.7993638923384353
	.quad	0x3feb00e4e9242d3e              # double 0.84385915313161042
	.quad	0x3fbb02cc772348a8              # double 0.10551145466459622
	.quad	0x3fe933f5fd4b57f8              # double 0.78759288283867956
	.quad	0x3fdfb8f770083afa              # double 0.49566446247710838
	.quad	0x3fd8b286b4de036e              # double 0.38589637434784307
	.quad	0x3fb75cbb76cffd10              # double 0.091258732325503411
	.quad	0x3f9db70c7b4e4520              # double 0.029018588090882536
	.quad	0x3fcad3258b8a11e0              # double 0.20956868470615486
	.quad	0x3fde9f6c1c78353c              # double 0.47848036556463902
	.quad	0x3fbc4cea55872f68              # double 0.11054863536918236
	.quad	0x3fe6c990002f721f              # double 0.71210479770849477
	.quad	0x3fdf22d402a14304              # double 0.48650074250058162
	.quad	0x3fe5e7c3f47c2f54              # double 0.68454168082232991
	.quad	0x3fe65a884c86d667              # double 0.69855132052061897
	.quad	0x3fe190e361676f30              # double 0.54893654846407536
	.quad	0x3f9d0aa10c72d3e0              # double 0.028360859284209172
	.quad	0x3fed629377d2c0e7              # double 0.91828320887546233
	.quad	0x3fd9e957796fcd26              # double 0.40486704691939435
	.quad	0x3fccd6c9ac1eefc4              # double 0.22530480293596444
	.quad	0x3fde5df8e4267634              # double 0.47448560982033716
	.quad	0x3fe85d08995043ad              # double 0.76135663932847353
	.quad	0x3fe76ed23a794436              # double 0.73227797909397085
	.quad	0x3f82e07a7004e540              # double 0.0092172208247683906
	.quad	0x3fdfa93bcd976f12              # double 0.49470419957445799
	.quad	0x3fecd2ec9610da42              # double 0.9007475787137269
	.quad	0x3feefac973160746              # double 0.96811363675826878
	.quad	0x3fee73e73ffcd216              # double 0.95164835450720164
	.quad	0x3fea4b4ea8e6858d              # double 0.82169278133749091
	.quad	0x3fed47e1be0da2bc              # double 0.91502463454988669
	.quad	0x3fe61797beae2b4e              # double 0.69037997476821444
	.quad	0x3fef018e58665067              # double 0.96893994584617082
	.quad	0x3fd466462fe8beda              # double 0.31874231985692136
	.quad	0x3fca3f8bdf178dec              # double 0.2050642813984348
	.quad	0x3fedf4467c0b4c2b              # double 0.93606876590127308
	.quad	0x3feffe03d6f64352              # double 0.99975769028433548
	.quad	0x3fd8086fc12c9286              # double 0.37551492561969047
	.quad	0x3fe21d8fe4f54961              # double 0.56610865324391224
	.quad	0x3fe41fd662088bd1              # double 0.62888640544076158
	.quad	0x3febc86be73f0da0              # double 0.86821551480572978
	.quad	0x3fe929447977b0de              # double 0.78628753399018669
	.quad	0x3fd8b211112ac9ba              # double 0.38586832691649031
	.quad	0x3fdf5495971af91a              # double 0.48953761822112229
	.quad	0x3fec1f8253df20a9              # double 0.8788463247410806
	.quad	0x3fbf3dbce1a5efa0              # double 0.12203579434384304
	.quad	0x3fccbd68fd9aa038              # double 0.22453033812530676
	.quad	0x3fe67ee05173c5cb              # double 0.70298782261505133
	.quad	0x3fe7b5dd610631d2              # double 0.74095028829611409
	.quad	0x3fdd5dafa024fc8a              # double 0.45884314192876074
	.quad	0x3fcc8987ed172b0c              # double 0.22294711186108207
	.quad	0x3f9ccf3f99c33660              # double 0.028134340057297869
	.quad	0x3fe6c55899b14fee              # double 0.71159009950724594
	.quad	0x3fe411d8fa26e9b9              # double 0.62717865808308837
	.quad	0x3fe42a97abeecbd0              # double 0.6301992757856798
	.quad	0x3fc3e0bb2c0f1abc              # double 0.15529575015371744
	.quad	0x3fd4ec6e093e6872              # double 0.32693053152764329
	.quad	0x3fb38d6e887263a8              # double 0.076376827537741776
	.quad	0x3fef888c9e76c59e              # double 0.98541861486426163
	.quad	0x3fc55f3a8e43e850              # double 0.16696865030809471
	.quad	0x3fe39869e70050c3              # double 0.61235518567493619
	.quad	0x3fea2c672d9e5309              # double 0.81792029294828794
	.quad	0x3fc8bdf058735cec              # double 0.1932964736831545
	.quad	0x3feaa56ef8a3eade              # double 0.83269451677855577
	.quad	0x3fd580383620ee3e              # double 0.33595090185164966
	.quad	0x3fe21e26e7038d09              # double 0.56618065948387752
	.quad	0x3f91a34711aa70e0              # double 0.017224417165025652
	.quad	0x3feffd1043add0e6              # double 0.99964154451893417
	.quad	0x3fbbe75d4aa740e8              # double 0.10899909088698545
	.quad	0x3fe9acf98f070b95              # double 0.8023650926119098
	.quad	0x3f8a3cfcd2a1edc0              # double 0.012811637094492734
	.quad	0x3fbc1aacfb3caee8              # double 0.109782039010209
	.quad	0x3fe3985f63c1eaa3              # double 0.61235017284282767
	.quad	0x3fa6118f6e74e430              # double 0.043102724297974127
	.quad	0x3fe02d76812dfde8              # double 0.50554967146302676
	.quad	0x3fdaf005ac5d5e6c              # double 0.42089979012005219
	.quad	0x3fbdb4aae620dd68              # double 0.11603801840180028
	.quad	0x3fd2a61433616154              # double 0.2913866521608004
	.quad	0x3fc7063dc3874c90              # double 0.1798779682854712
	.quad	0x3fd534408fa25b3e              # double 0.33131422068383987
	.quad	0x3fd0e7046fab7dc8              # double 0.26410017876875402
	.quad	0x3fe6178e89f774bf              # double 0.69037558504682994
	.quad	0x3fe65425a48490a5              # double 0.69777185566319544
	.quad	0x3fe3f669cdd587c9              # double 0.62382974817250514
	.quad	0x3fabee5a454e6ff0              # double 0.054552861175778733
	.quad	0x3fd85a8f55ced8d0              # double 0.38052733783423509
	.quad	0x3fe72aa17a44a291              # double 0.72395395164956444
	.quad	0x3fe9c315553fda2a              # double 0.80506388330724588
	.quad	0x3fe02984f1a7d32d              # double 0.50506827543595068
	.quad	0x3fef8aa52f89ca58              # double 0.98567446980298267
	.quad	0x3fed4ecbb9399ef0              # double 0.9158686273267147
	.quad	0x3fedea155111829a              # double 0.93482461770698255
	.quad	0x3feb6bba9d0125eb              # double 0.85690050759256786
	.quad	0x3fd489119bd5cb9e              # double 0.32086601465487685
	.quad	0x3fd2476068e6e9dc              # double 0.28560648197494998
	.quad	0x3fefbba4c3ecedd4              # double 0.99165571467113489
	.quad	0x3fd1401452a55cfe              # double 0.26953609534162115
	.quad	0x3fe1e64edde2a198              # double 0.55936377846687702
	.quad	0x3fe39ca38336b11a              # double 0.6128709376112369
	.quad	0x3fddb57ee2fd1f0c              # double 0.4642026154219685
	.quad	0x3fea25b39f535777              # double 0.81710225218078747
	.quad	0x3fe1c4da8b562346              # double 0.55527999128489891
	.quad	0x3fc1e0a6ee4fe15c              # double 0.13966833721475325
	.quad	0x3fe098e88d499ebe              # double 0.5186655768893258
	.quad	0x3fd4ac9024380236              # double 0.32303241288176154
	.quad	0x3fed04a5c6e77ab6              # double 0.90681732986907693
	.quad	0x3fea6d62e5cbf7f5              # double 0.82585282213380984
	.quad	0x3fe1c0a2a77e1db8              # double 0.55476505959898414
	.quad	0x3fcc383f848757f4              # double 0.22046655627372014
	.quad	0x3fe93c1fa43c47d7              # double 0.78858930661430804
	.quad	0x3fc95c754a54d330              # double 0.19813409928760839
	.quad	0x3f6798656fa98100              # double 0.0028802853751558333
	.quad	0x3fcf8393ab45a588              # double 0.24620290625470553
	.quad	0x3fe220831adf6e8f              # double 0.5664687657221793
	.quad	0x3fe1c253df7dca44              # double 0.55497163439424257
	.quad	0x3fe938c0aa0b7fc7              # double 0.78817780696771755
	.quad	0x3fedc3379ff9e17d              # double 0.93008023495990211
	.quad	0x3fcc0d2316a1e850              # double 0.21915091137981557
	.quad	0x3fcf1052a4295374              # double 0.24268563285536582
	.quad	0x3fe4cf0c3eac6512              # double 0.65027439347173499
	.quad	0x3fe1d20f4bf3161b              # double 0.55689205964944521
	.quad	0x3fe1a753563829bf              # double 0.55167548026775381
	.quad	0x3fce7d3842f2652c              # double 0.23819640416039911
	.quad	0x3fda8b2316208ea0              # double 0.41474225197655734
	.quad	0x3faa6eee1820a270              # double 0.051627579159973958
	.quad	0x3fd38fe2d9d23846              # double 0.30565711280440089
	.quad	0x3fb5117610254f78              # double 0.082297686521369928
	.quad	0x3fdabc0893706b98              # double 0.41772665403703391
	.quad	0x3fe270440e3b4f38              # double 0.57620432643532293
	.quad	0x3fd0118105f57400              # double 0.25106835920252024
	.quad	0x3fe6d7f6fba5095b              # double 0.71386288785314933
	.quad	0x3fe651c4fb8dc79f              # double 0.69748162395102387
	.quad	0x3fd6aaa415e14148              # double 0.35416509758671966
	.quad	0x3fd11e25d388ca3c              # double 0.26746507318162904
	.quad	0x3fd4b590dc2b1140              # double 0.32358190060428527
	.quad	0x3fec1ea717c411e4              # double 0.87874178544785452
	.quad	0x3fd9148c1c9b1b8e              # double 0.3918791083673846
	.quad	0x3fec1026ea7a4845              # double 0.87697168156069749
	.quad	0x3feb1cb99bc5b8ab              # double 0.84725647377287794
	.quad	0x3fe1b502a7dc0c5f              # double 0.55334599289961861
	.quad	0x3fccd77cca47e06c              # double 0.22532615544310219
	.quad	0x3fd5e0cafe80bb02              # double 0.3418452725772313
	.quad	0x3fd77fd99b577ccc              # double 0.36717834634869173
	.quad	0x3f8ea7462bc45100              # double 0.014967487536104773
	.quad	0x3febb937c741662c              # double 0.86635960499842701
	.quad	0x3fbf969daca28c40              # double 0.12339196648331185
	.quad	0x3fe6522e75bab1cc              # double 0.69753191942214121
	.quad	0x3fda72939d7a956e              # double 0.41324320200722908
	.quad	0x3fc14359836d9f0c              # double 0.1348678485621736
	.quad	0x3fe6cd002cd23221              # double 0.71252449754826241
	.quad	0x3fe2031a0ac76550              # double 0.56287862878085981
	.quad	0x3fcf916dc1b3765c              # double 0.24662563283975458
	.quad	0x3fe65bdbd2bed442              # double 0.6987132183190925
	.quad	0x3fc90de3e03af758              # double 0.19573639343974025
	.quad	0x3fd1efd7b7578b24              # double 0.28026383308876945
	.quad	0x3fa8a7f22b15c030              # double 0.048156326064486499
	.quad	0x3fce89ad8a357a28              # double 0.23857659576874934
	.quad	0x3fe17b788a1f8333              # double 0.54632212617079856
	.quad	0x3fe20ab3d2fd3739              # double 0.5638064499741865
	.quad	0x3fd5a2b702ed9836              # double 0.33805632863948476
	.quad	0x3fb85d0a83888e88              # double 0.095169694054272225
	.quad	0x3fe3020c8b6fdba6              # double 0.59400012239244826
	.quad	0x3fa7f4b1fd7bede0              # double 0.046788751786120519
	.quad	0x3fd0247e9ab9e6c4              # double 0.25222745046594874
	.quad	0x3fdf9cbbd59a2bb8              # double 0.4939412675818704
	.quad	0x3feb871924f1d3c1              # double 0.86024148193120464
	.quad	0x3fcfde91d0b73e18              # double 0.24897978488159889
	.quad	0x3fda832c9cb43de6              # double 0.41425624182826792
	.quad	0x3fe2cf0296001c02              # double 0.58776978775938482
	.quad	0x3fe421f3ed605768              # double 0.62914463388981989
	.quad	0x3fe82d19cc98d3ba              # double 0.75550546608302871
	.quad	0x3fe23ded1290d416              # double 0.57005933405037257
	.quad	0x3fd905b3b95c3466              # double 0.39097302533702416
	.quad	0x3feae6f63b4f2bdb              # double 0.84069358428802887
	.quad	0x3fdce3ae02e00866              # double 0.45139646797918542
	.quad	0x3feec0dbb41568be              # double 0.96104226276954541
	.quad	0x3fed1edbaa2f9333              # double 0.91001685370847551
	.quad	0x3fe0ea115ee7607b              # double 0.52857273612882183
	.quad	0x3fe06d80dd138193              # double 0.5133671110052539
	.quad	0x3fd1d69d2b23b9ca              # double 0.27872399533125913
	.quad	0x3fe3f8a98efca84b              # double 0.62410428931367201
	.quad	0x3fdee86127095e86              # double 0.48293331920783833
	.quad	0x3fddd6862f797fa8              # double 0.46621851574127016
	.quad	0x3fc7f4c0871e064c              # double 0.18715674016498196
	.quad	0x3fdeac901ff9af86              # double 0.4792824089297415
	.quad	0x3fd7570c0ad61492              # double 0.36468792970874475
	.quad	0x3fe70ccb20704ba0              # double 0.72031170211481665
	.quad	0x3fcc5af836edbb8c              # double 0.2215261715132012
	.quad	0x3feeb40c01c75e0d              # double 0.95947838160913223
	.quad	0x3fec58f109637900              # double 0.88585712274269213
	.quad	0x3fee6beb9ab3b615              # double 0.95067386832460221
	.quad	0x3fd0f480503cc534              # double 0.26492317043001212
	.quad	0x3fe067ab2e251bbb              # double 0.51265486729322818
	.quad	0x3fd34925dc7f708e              # double 0.30133959324826598
	.quad	0x3fc1733b8b1b5c18              # double 0.13632911960914451
	.quad	0x3fec3ce6f539d5c0              # double 0.882434348065253
	.quad	0x3feb795e34d4368e              # double 0.85856542890697241
	.quad	0x3fdefe4d256357bc              # double 0.48427132273843276
	.quad	0x3fb8e6808370b258              # double 0.09726718148221758
	.quad	0x3fe2c4bb74daee4f              # double 0.58651516745835319
	.quad	0x3feadd4f11c21681              # double 0.83951524227514096
	.quad	0x3f9a411aea1f92c0              # double 0.025638981380228243
	.quad	0x3fe1671ed95ed588              # double 0.54383795218625242
	.quad	0x3fe575eaf3a0378a              # double 0.67064426024602253
	.quad	0x3fb852727db71140              # double 0.095008044902958666
	.quad	0x3febffa64320fffc              # double 0.87495720969309287
	.quad	0x3fc2eeed0c9bac20              # double 0.14791644206647536
	.quad	0x3fe9e453e63a936e              # double 0.80912203756871093
	.quad	0x3fe5e56c5676c9b8              # double 0.68425576102736496
	.quad	0x3fe401c329c43ade              # double 0.62521513135456153
	.quad	0x3fe07f3a6da59d14              # double 0.51553079047599448
	.quad	0x3fc3d2677ccc6e44              # double 0.15485852807693068
	.quad	0x3fd7ea84950dc64e              # double 0.37368883663211683
	.quad	0x3fe5bff311b5af3c              # double 0.67968133410383968
	.quad	0x3feb181402ed6f2d              # double 0.84668922969601612
	.quad	0x3fd1794c80b0ffea              # double 0.2730284935714723
	.quad	0x3fe29b3194085665              # double 0.58144453919039718
	.quad	0x3fe8c2ac3b3af380              # double 0.77376376694120097
	.quad	0x3febbdfbed7cd8e8              # double 0.86694141754449294
	.quad	0x3fee60d71d2546bb              # double 0.94932132427694371
	.quad	0x3feb0f641f1b82af              # double 0.84562879634548505
	.quad	0x3fc351a0cb957c70              # double 0.15092859211560805
	.quad	0x3fb16dd49d4ec590              # double 0.068082130818558406
	.quad	0x3fb4edc45df82698              # double 0.081753037397130135
	.quad	0x3fe800574e1bae89              # double 0.75004163032049675
	.quad	0x3fe148501c2220d9              # double 0.54007726187503657
	.quad	0x3fe5bd85498b574b              # double 0.67938484539147603
	.quad	0x3fefe3e9b05d3f25              # double 0.99657139249936632
	.quad	0x3fd2c1d1f5ff416a              # double 0.29307984374192719
	.quad	0x3fda7af85d3780dc              # double 0.41375550368503666
	.quad	0x3fc583b5f69788e4              # double 0.16808199444410044
	.quad	0x3fd12eb92752d93c              # double 0.26847676124761555
	.quad	0x3fd2fd01b26a5342              # double 0.2966922991120563
	.quad	0x3fd8bd9ce18d7db8              # double 0.38657304789191071
	.quad	0x3fec31875883b522              # double 0.88104598319992911
	.quad	0x3fed679901c088ac              # double 0.91889620153621853
	.quad	0x3fc40b1b19cf26ec              # double 0.15658892402853242
	.quad	0x3fe4ba01d9556cd8              # double 0.64770595977770551
	.quad	0x3feb48bf0c9748df              # double 0.85263016184969931
	.quad	0x3fe55c05064fba00              # double 0.667482864691749
	.quad	0x3fbcc58f7a2f1c40              # double 0.11238953335770052
	.quad	0x3fe8ae10d9d9ba58              # double 0.77124826954770764
	.quad	0x3fee085296538e91              # double 0.9385159431517015
	.quad	0x3fc8ef6877b7c7cc              # double 0.19480615468597617
	.quad	0x3fdc3e1bfda4efb6              # double 0.44129085321378214
	.quad	0x3fe7ab1293ca8a27              # double 0.73963288178885456
	.quad	0x3fe8ae502816921c              # double 0.77127845601768596
	.quad	0x3fed9cd869567e3d              # double 0.92539616178323281
	.quad	0x3fd5b639f720e5c6              # double 0.33924721845286532
	.quad	0x3fe5158e454961b7              # double 0.65888131649540227
	.quad	0x3fc6a794ef6c7064              # double 0.17698919001202562
	.quad	0x3fcf1d7ea888bb68              # double 0.24308760861591883
	.quad	0x3fec3dd355c052e2              # double 0.88254706142705808
	.quad	0x3fc292d2e2ba3dc8              # double 0.14510570593527761
	.quad	0x3fa2b21bdcda0220              # double 0.036515112599776467
	.quad	0x3fbaba2873e7de48              # double 0.10440304593782301
	.quad	0x3fecb9e2a673363e              # double 0.89769108304762546
	.quad	0x3fd6f6b753d4f376              # double 0.35880835711196057
	.quad	0x3fe3f7f6a3848b90              # double 0.6240189737039703
	.quad	0x3fd816cdee488f94              # double 0.37639187116496342
	.quad	0x3fc4ec8d2e7d5814              # double 0.16346897859574538
	.quad	0x3fe6a61b97f2a8c6              # double 0.70777682950326759
	.quad	0x3fc833f774304558              # double 0.18908589528340758
	.quad	0x3fe297500fb690ea              # double 0.58097079342817648
	.quad	0x3fe23b90179ddd1c              # double 0.56977085697772933
	.quad	0x3fe2d87a2b09c595              # double 0.58892544179814144
	.quad	0x3feefd7f45116390              # double 0.96844447603062811
	.quad	0x3fc79fda04e262c8              # double 0.18456578482143571
	.quad	0x3fd49f6e06736fb0              # double 0.32223082189534136
	.quad	0x3fd8b94f19dd6592              # double 0.38631036306250011
	.quad	0x3fa5088a3fba26b0              # double 0.041080780295556507
	.quad	0x3fcef674f924e848              # double 0.24189626851313251
	.quad	0x3fe9022b69aa32a7              # double 0.78151484143889582
	.quad	0x3fbe7caacc7d4cf8              # double 0.11908977024477341
	.quad	0x3fcae9b8a80f2b38              # double 0.21025760847109054
	.quad	0x3fbdb2b5038dd078              # double 0.11600810372130066
	.quad	0x3fcb8238aba59b34              # double 0.21491154080578101
	.quad	0x3fc46fa41b342974              # double 0.15965701416309808
	.quad	0x3fc2b4de16a64538              # double 0.14614463907177266
	.quad	0x3feec1b589b7b697              # double 0.96114613435720996
	.quad	0x3fe43add2d7ac794              # double 0.63218554384933379
	.quad	0x3fe0c551a2529727              # double 0.52408677772175316
	.quad	0x3fef03f221ee6268              # double 0.96923166873154986
	.quad	0x3fe6c4776d066976              # double 0.71148272794680056
	.quad	0x3fe8ca7c6257aedc              # double 0.77471751410981992
	.quad	0x3fe4d53cf3a032d5              # double 0.6510300405803614
	.quad	0x3fda8a1b4449e0f6              # double 0.41467935246284016
	.quad	0x3fdef290655a9480              # double 0.48355493448099907
	.quad	0x3fe37098fe07cd99              # double 0.60749482741668992
	.quad	0x3fee03ecad315e11              # double 0.93797906710364221
	.quad	0x3fe6e8634320b66c              # double 0.71586764441390249
	.quad	0x3fdbcbdda0d9aa98              # double 0.43431797702820907
	.quad	0x3fed43a683314bfa              # double 0.91450811027095757
	.quad	0x3fd4f24b144044ce              # double 0.32728840806619253
	.quad	0x3fe72616ebc12212              # double 0.72339960141931869
	.quad	0x3fdffeebcd678032              # double 0.49993414935125025
	.quad	0x3fe08fdb2e8bfb81              # double 0.51756056872532963
	.quad	0x3fce154c184d92dc              # double 0.23502494036360744
	.quad	0x3fd8770cb4a84dc0              # double 0.38226621286704798
	.quad	0x3fd940892eecc7dc              # double 0.39456395704757852
	.quad	0x3fe79e99d970f8f0              # double 0.73811047047618494
	.quad	0x3f8abe0545ca56c0              # double 0.013057748024304927
	.quad	0x3fc33ffe2e9ca89c              # double 0.1503904082868005
	.quad	0x3fd52169900d5f22              # double 0.33016432826615205
	.quad	0x3fc9b55eb4e01ad0              # double 0.20084747154051863
	.quad	0x3fe379d6de7b1969              # double 0.60862296536724358
	.quad	0x3fd255d2cbb62524              # double 0.28648824590398392
	.quad	0x3fdbe3d66f0fd716              # double 0.43578110547910975
	.quad	0x3fe7e01156afa370              # double 0.74610201769711004
	.quad	0x3fd917dcea6cd104              # double 0.39208147900650681
	.quad	0x3fc873328e9ac20c              # double 0.19101554835425849
	.quad	0x3fb076f31dac57b0              # double 0.064315027946888703
	.quad	0x3fe1daca56cd0344              # double 0.55795781091010399
	.quad	0x3fd648a198bb2ca2              # double 0.348183058883203
	.quad	0x3fe0acb7cd3e5c76              # double 0.52108373724594403
	.quad	0x3fc9ba22823e6830              # double 0.20099288329657972
	.quad	0x3fd7019b1525c3cc              # double 0.35947300973117247
	.quad	0x3fd922fede5b0452              # double 0.39276096071632083
	.quad	0x3fd150b1631495de              # double 0.27055010486432518
	.quad	0x3fca54216bd2b2dc              # double 0.20569246067807156
	.quad	0x3fe0369a6335b682              # double 0.50666541459004599
	.quad	0x3fd81de2415ee3e8              # double 0.37682396301130305
	.quad	0x3fe2f286722d7cc2              # double 0.59210512447671015
	.quad	0x3fdf938035aece62              # double 0.49337773554291264
	.quad	0x3feca757bb4a9327              # double 0.89542757587750976
	.quad	0x3fa5c55ef23c4c40              # double 0.042521445340888864
	.quad	0x3fc3560801e20664              # double 0.15106296626986471
	.quad	0x3fe1f78e47594059              # double 0.56146921096115954
	.quad	0x3fe4f0798baa1c33              # double 0.65435483244153259
	.quad	0x3fd12fec6bedaa56              # double 0.26855001964455505
	.quad	0x3fecc5b75c747012              # double 0.89913528497300121
	.quad	0x3fe621edbd7e06a4              # double 0.69164168367588674
	.quad	0x3fd12e6a9a2d6656              # double 0.26845803314572458
	.quad	0x3fcafd574c5c9d14              # double 0.21085635403253689
	.quad	0x3f9000b2c0793b80              # double 0.015627663610128462
	.quad	0x3fb3b78807c53108              # double 0.077019216439286109
	.quad	0x3fe46ac74492bac5              # double 0.63803447144695069
	.quad	0x3fe245e497e1022e              # double 0.57103185333114026
	.quad	0x3fdfcd2202777a30              # double 0.49689531556024047
	.quad	0x3fd5268e7f9557f0              # double 0.33047831019700791
	.quad	0x3fbe38ad1ddac3b0              # double 0.11805231074209988
	.quad	0x3fa425cbd985de80              # double 0.039350862792102426
	.quad	0x3fe28a4781c1fc3c              # double 0.57937980025588542
	.quad	0x3f8cf1f8e0a1bf40              # double 0.014133400302142385
	.quad	0x3fc60184f30494ac              # double 0.17192136636837085
	.quad	0x3fe6bdc7cab29d3a              # double 0.71066655721089167
	.quad	0x3fdb3d8e58a5aa52              # double 0.42563208252855589
	.quad	0x3fd473b28b6943ec              # double 0.31956161131262095
	.quad	0x3fb9674ba19852d8              # double 0.099232413246066797
	.quad	0x3fefd1f61cfad2aa              # double 0.99438005123245898
	.quad	0x3fe3ca3bb205201f              # double 0.61843666810546327
	.quad	0x3febf34dc145464e              # double 0.8734501623932347
	.quad	0x3fe7711c9caff582              # double 0.7325575886058433
	.quad	0x3fdeca66d240eac2              # double 0.48110361607147578
	.quad	0x3fc0a85a8a7c80bc              # double 0.13013774644878662
	.quad	0x3fe4c44dc3315a18              # double 0.64896286128606828
	.quad	0x3fddaf0180ab9b68              # double 0.46380651059592148
	.quad	0x3feafc44336e598c              # double 0.84329423947456083
	.quad	0x3fd48bdc1dab20e0              # double 0.32103636643706857
	.quad	0x3fe536ea0f0167fa              # double 0.66295340471992792
	.quad	0x3fd954ed0b9c6e2e              # double 0.39580846914188583
	.quad	0x3fe47e535df3f0a3              # double 0.64042061186002674
	.quad	0x3fc8dd097405577c              # double 0.19424551167565685
	.quad	0x3fb54f48a09e04e8              # double 0.083241023266981906
	.quad	0x3fe3057802dcd085              # double 0.59441757735341183
	.quad	0x3fc2abb1405388dc              # double 0.14586463585789644
	.quad	0x3fe840589bd8f25c              # double 0.75785475195841511
	.quad	0x3febab51b0df5f82              # double 0.86466297669811376
	.quad	0x3fde1f0441fdeaee              # double 0.47064310497778095
	.quad	0x3fe1c103ae704629              # double 0.5548113257411319
	.quad	0x3fd839be46e76ade              # double 0.3785243694707513
	.quad	0x3fdf6e785b067676              # double 0.49111756219085778
	.quad	0x3fc2639c702ea118              # double 0.14366488912242725
	.quad	0x3fecea41b865f021              # double 0.90359579100868725
	.quad	0x3fbf2c2123c22a68              # double 0.12176711199769275
	.quad	0x3fdea7bdcc9e80cc              # double 0.47898812277163638
	.quad	0x3fd67652657e933a              # double 0.35097179328504391
	.quad	0x3fca6fbed316705c              # double 0.2065351992322374
	.quad	0x3fe46d13f324c710              # double 0.63831517685886929
	.quad	0x3fe993c257dd83bc              # double 0.79928700600805013
	.quad	0x3fc5867ba9fb9da8              # double 0.16816659736580886
	.quad	0x3fe125c2c55fef4f              # double 0.53585947561030334
	.quad	0x3fecdb932975ec7d              # double 0.90180357072621542
	.quad	0x3fd36426ec3ad02a              # double 0.30298779553709443
	.quad	0x3fe149bfb61067f2              # double 0.54025254783050358
	.quad	0x3fe8e4a8dd4d4609              # double 0.77791255209939536
	.quad	0x3fe441d95bd34e0f              # double 0.63303821501398427
	.quad	0x3fda9786fdd4cca2              # double 0.4154984930821205
	.quad	0x3fc064548a0e6a34              # double 0.12806183568030038
	.quad	0x3fea623d240646d7              # double 0.8244920447925449
	.quad	0x3fe00056f1daaac5              # double 0.50004145848409876
	.quad	0x3fed63593950a017              # double 0.91837750620198022
	.quad	0x3fd35beb0b8284c4              # double 0.30248523830421115
	.quad	0x3fbb3b000934c278              # double 0.10636902069814791
	.quad	0x3fecc55357897513              # double 0.89908759209689249
	.quad	0x3fd1c8d1af4310b0              # double 0.27788202395846451
	.quad	0x3fc7893b2fa02de8              # double 0.18387546372865349
	.quad	0x3fe15c5804243f5a              # double 0.54252243813423751
	.quad	0x3fec5222cd934fdd              # double 0.88502636100247012
	.quad	0x3fd3379c75f1c6fe              # double 0.30026923673641182
	.quad	0x3fe31542db63c368              # double 0.59634535646010267
	.quad	0x3fc6b58f473b54e0              # double 0.17741576173890561
	.quad	0x3fcae41277cc77e0              # double 0.21008520936533071
	.quad	0x3fd04eac555a31aa              # double 0.25480182967364817
	.quad	0x3fe8dfb8222935f9              # double 0.77730948135439271
	.quad	0x3fb76792ce935060              # double 0.09142415564866857
	.quad	0x3feebbb2e94997e0              # double 0.96041245998344138
	.quad	0x3fd9ec22b9ab3a0e              # double 0.40503757602428514
	.quad	0x3fe8f84f3132cf03              # double 0.78031119927479187
	.quad	0x3fe19543c62b13ff              # double 0.54947079376927366
	.quad	0x3fd63792345b6b5c              # double 0.34714179146765445
	.quad	0x3fe756b98d59531d              # double 0.72933652503215607
	.quad	0x3fe5ceabdcec1bb6              # double 0.68147843502889915
	.quad	0x3fe9316c27285066              # double 0.78728301666207012
	.quad	0x3fdafacff0f1d788              # double 0.42155836610560771
	.quad	0x3fed5b83b49cd4bc              # double 0.91742120052244713
	.quad	0x3fe22adc0d9258a5              # double 0.56773188257900087
	.quad	0x3fe1a2c1c7078274              # double 0.5511177909175573
	.quad	0x3fccfa608fb6ac9c              # double 0.22639090554489349
	.quad	0x3fd6baae85fb317a              # double 0.35514414867500188
	.quad	0x3fa04f4849c11f60              # double 0.031854876521321129
	.quad	0x3fe748c164168caa              # double 0.72763127850011711
	.quad	0x3feb71d4b7abca00              # double 0.85764537690403131
	.quad	0x3fe718e0d724606a              # double 0.72178689975681931
	.quad	0x3fee15708f130bf1              # double 0.94011714882105768
	.quad	0x3fd7ebeb869f14b0              # double 0.37377441546079648
	.quad	0x3fe30d1731fe7c22              # double 0.59534797443837228
	.quad	0x3fe8c5b8be79248c              # double 0.77413594438361732
	.quad	0x3feb813826f6ddb9              # double 0.85952384577006236
	.quad	0x3fe3972f764d30e9              # double 0.612205248887702
	.quad	0x3fe61257f000a8ad              # double 0.68973919749739354
	.quad	0x3fe6049c6d4bad94              # double 0.68806287142563116
	.quad	0x3fefdf622ce1b252              # double 0.9960184933275491
	.quad	0x3fd8280036c7ca16              # double 0.37744145726824863
	.quad	0x3fd4accf898719b0              # double 0.32304752760355893
	.quad	0x3feeb51e96f0459d              # double 0.95960931282222683
	.quad	0x3fe03be5660f2b2b              # double 0.50731153424690001
	.quad	0x3fe995321a9182d2              # double 0.79946236790791603
	.quad	0x3fee7bd03ff2f24b              # double 0.95261394968071877
	.quad	0x3fe653964cf32046              # double 0.69770350484123678
	.quad	0x3fba5c24d0f035c8              # double 0.10296850300820559
	.quad	0x3feebb841833a79b              # double 0.96039013602170386
	.quad	0x3fd0b64757997f20              # double 0.26112540774009751
	.quad	0x3fc53dfe154fcc94              # double 0.16595436134921171
	.quad	0x3f9004035a607720              # double 0.015640308753169241
	.quad	0x3fd35add3f5d8156              # double 0.30242091358197365
	.quad	0x3fe7fbf409e5cbb5              # double 0.7495060151398919
	.quad	0x3f915e7ebd964560              # double 0.016962032624694756
	.quad	0x3fea218b84d4ba3f              # double 0.81659484809444638
	.quad	0x3fd9b0651ef9b600              # double 0.40139129662460959
	.quad	0x3fd6b9604769c60e              # double 0.35506445859854885
	.quad	0x3fe96b664605ca54              # double 0.79436029125492746
	.quad	0x3fe0de3850393994              # double 0.52712646168383737
	.quad	0x3fe0e7abab8616ea              # double 0.52828010082950283
	.quad	0x3fea926859f525d4              # double 0.83037202424855616
	.quad	0x3fab0421df45d8f0              # double 0.052765902047143487
	.quad	0x3fecef37ad1f9d4d              # double 0.90420135319883743
	.quad	0x3fd6eb8a55fc109a              # double 0.35812624356209144
	.quad	0x3fe90fac03e1075f              # double 0.78316307790394635
	.quad	0x3fed97e69a05b8d9              # double 0.92479257662287317
	.quad	0x3fd4cb42667c8f10              # double 0.32490596779301573
	.quad	0x3fc3c6c20845b06c              # double 0.15450311092297697
	.quad	0x3fb1703127fcdf40              # double 0.068118164312974905
	.quad	0x3fc93ed45cbd29d0              # double 0.19722990539805929
	.quad	0x3fe6b13cc40ec8e7              # double 0.70913542072801483
	.quad	0x3fe37217f4557fc2              # double 0.60767743798714258
	.quad	0x3fe31bdc5f20f2fa              # double 0.59715097980333032
	.quad	0x3fcc48c27d8cac04              # double 0.22097045069071453
	.quad	0x3fea016776162120              # double 0.81267140449293506
	.quad	0x3fe4d214c2d377a8              # double 0.65064466525995091
	.quad	0x3fe1abe5788aab94              # double 0.55223344367310512
	.quad	0x3fd07be14ad3778e              # double 0.25756103808623088
	.quad	0x3fd9e1663fcd3baa              # double 0.40438228827127409
	.quad	0x3fe71ae5559dc274              # double 0.72203318330691824
	.quad	0x3fcc1dfddee52bc4              # double 0.21966527350954668
	.quad	0x3fe529214b9a1269              # double 0.66127075925812762
	.quad	0x3fe3a0693599f018              # double 0.61333141774184963
	.quad	0x3fef9e875c1ea910              # double 0.98810165397779492
	.quad	0x3fb0608cc7d09fb0              # double 0.063973234923308864
	.quad	0x3fbc4fcb7eecf718              # double 0.11059257363100661
	.quad	0x3fc7cd9eb6578350              # double 0.18596252349291342
	.quad	0x3fd36f8c7e95d260              # double 0.30368339883651707
	.quad	0x3fd426de60ca441c              # double 0.31487235500486732
	.quad	0x3fed3f5b19f9f734              # double 0.91398387025376459
	.quad	0x3fe919e389a0174c              # double 0.7844102561946129
	.quad	0x3fe9d054a2d02a9b              # double 0.80668098258441334
	.quad	0x3fed0a65fb0fa5f3              # double 0.9075193313157669
	.quad	0x3fd87f7b5399ce2a              # double 0.38278086818829371
	.quad	0x3fed2add97fa58ee              # double 0.91148261721789736
	.quad	0x3f709005f5e15e00              # double 0.0040436013060438647
	.quad	0x3f9123ffc6be7680              # double 0.016738888268824414
	.quad	0x3fed484de9a9dab3              # double 0.91507621419335405
	.quad	0x3fcd1d450fb31ef8              # double 0.22745574251734246
	.quad	0x3fdced78b8afd39c              # double 0.45199411426374936
	.quad	0x3fecfd23c95f43f2              # double 0.9059008534478592
	.quad	0x3fca38fbdeae8708              # double 0.20486400960094664
	.quad	0x3fb2c38b457ca308              # double 0.073296265091482238
	.quad	0x3feb2492b211f157              # double 0.84821448115648479
	.quad	0x3fc9fbe58b3da618              # double 0.20299977587573959
	.quad	0x3fed617e12784d9a              # double 0.91815093619736676
	.quad	0x3fe7d343d9899c24              # double 0.74453918922234097
	.quad	0x3fdbbc55c6bd3028              # double 0.43337006004435574
	.quad	0x3febcf304faa29dc              # double 0.86904159125816304
	.quad	0x3fbdb741d5176d88              # double 0.11607753231458251
	.quad	0x3fe36203a3d5bdc7              # double 0.6057146263028067
	.quad	0x3fdd60701adb495c              # double 0.45901110289300617
	.quad	0x3feec0d97b01bf91              # double 0.96104120278140403
	.quad	0x3fb0f9d1fb3c8ef0              # double 0.066311954342889612
	.quad	0x3fea814af6506c2f              # double 0.82828281505806511
	.quad	0x3fed782e9892c47d              # double 0.92092065619921437
	.quad	0x3fe925dc9f9443f0              # double 0.78587180297665604
	.quad	0x3fc317efdd4bd84c              # double 0.14916799836618322
	.quad	0x3fd9493b16080e20              # double 0.39509465362081819
	.quad	0x3fdf5365eb862dba              # double 0.48946521759418327
	.quad	0x3fda767b1079be8e              # double 0.41348148926679407
	.quad	0x3fe8b69559f8b4c3              # double 0.77228801319656559
	.quad	0x3fc6bfb337f36b48              # double 0.1777252219388521
	.quad	0x3f77464107f36200              # double 0.0056822338367159553
	.quad	0x3fe7ada3c362a8ef              # double 0.73994625245293644
	.quad	0x3fed955f3895162a              # double 0.92448388148540528
	.quad	0x3fd9dee90945c124              # double 0.40423036485209907
	.quad	0x3fd0bd61300d812e              # double 0.26155881588603591
	.quad	0x3fe5633ef75a0b6e              # double 0.66836498556982149
	.quad	0x3fe8887e61e983ed              # double 0.76666182635756075
	.quad	0x3fd3dba7ed88ecd6              # double 0.3102817363430409
	.quad	0x3feda9065858944e              # double 0.92688290839272169
	.quad	0x3fc0d04471f64b84              # double 0.13135581554942288
	.quad	0x3fef83e4893b168a              # double 0.98485018542187786
	.quad	0x3fe354931bb91556              # double 0.60407405295033345
	.quad	0x3fd67f390baad96e              # double 0.35151506556885337
	.quad	0x3fe06fb0da33cac7              # double 0.5136341344608234
	.quad	0x3fed48e8999bee56              # double 0.9151499748399583
	.quad	0x3f9cc2aff0ff7680              # double 0.028086423000664329
	.quad	0x3fce7ea991edd7d4              # double 0.23824042916720478
	.quad	0x3fe09cefd18e5d42              # double 0.51915732315948326
	.quad	0x3fe0289926c9c31c              # double 0.50495584083373357
	.quad	0x3fef53b8be4b5255              # double 0.97896992842522456
	.quad	0x3fe6d2fedcb728bb              # double 0.7132562933777743
	.quad	0x3fd015353851b732              # double 0.25129442691728621
	.quad	0x3fe19acddb3de91f              # double 0.55014698811217844
	.quad	0x3fec62e04c9292d1              # double 0.88706984477593143
	.quad	0x3fc457e1ff416378              # double 0.15893197024959327
	.quad	0x3fc3d8ed568f7850              # double 0.1550575897844646
	.quad	0x3feda4025f05e206              # double 0.92627066191840934
	.quad	0x3fe6bb71e141094f              # double 0.71038145060473734
	.quad	0x3fe5f85f656460d2              # double 0.68656892588753693
	.quad	0x3fdf8c81576d65d4              # double 0.49295075929475485
	.quad	0x3fe6555e68259868              # double 0.69792099324400869
	.quad	0x3fd19a57a38792f0              # double 0.27504530877767674
	.quad	0x3fd9882d0853203e              # double 0.3989365178390506
	.quad	0x3fe480648694a969              # double 0.64067293439192696
	.quad	0x3fd5e2458924fb08              # double 0.34193552392018534
	.quad	0x3feba4381b0bdd90              # double 0.86379628450861112
	.quad	0x3fe3bed9ab51f6ed              # double 0.61704715214702122
	.quad	0x3fe6a1a3f615ae89              # double 0.70723150313774952
	.quad	0x3fe09b2435c91ea0              # double 0.51893816475872612
	.quad	0x3fe0e5ec0b4b432a              # double 0.52806665616853832
	.quad	0x3fd3133318163c64              # double 0.29804684974891971
	.quad	0x3fe0ff2803fb88f2              # double 0.53114701059192115
	.quad	0x3fef41c74db17485              # double 0.97677960562181509
	.quad	0x3fdd4d3f92103c32              # double 0.45783986343389238
	.quad	0x3fd334448452f7f0              # double 0.30006516382479642
	.quad	0x3fc457a2c7944fa8              # double 0.15892443413815482
	.quad	0x3fe1d763debe1b64              # double 0.55754273895659567
	.quad	0x3fe697af15e46461              # double 0.70601610446750496
	.quad	0x3fe12a4cb367e3bf              # double 0.53641352691840172
	.quad	0x3fb524ad23334ba0              # double 0.082590886205521574
	.quad	0x3fe971f2f6d7fb72              # double 0.79515979968696926
	.quad	0x3fcd10da7693fd4c              # double 0.2270768240923452
	.quad	0x3fea50acb4d89d64              # double 0.82234797784341795
	.quad	0x3fed322560098780              # double 0.9123713374831226
	.quad	0x3fb613c80ea8c350              # double 0.086239341334260588
	.quad	0x3f6da72841e8bb00              # double 0.0036197458532777338
	.quad	0x3fedf9a1c77b4b9c              # double 0.93672265015844713
	.quad	0x3fe2a0f0412cc274              # double 0.58214581231557228
	.quad	0x3fa5c8f0b7e39830              # double 0.042548677871124929
	.quad	0x3feb75ed96be4126              # double 0.8581455177500501
	.quad	0x3fea18c9a3dae582              # double 0.81552583697263992
	.quad	0x3fdd1d73d40ab73a              # double 0.45492263514721609
	.quad	0x3fe3f2d4ade6bc24              # double 0.62339242901896741
	.quad	0x3fbb070d81136540              # double 0.10557636643661272
	.quad	0x3fb80f8f211ed260              # double 0.093987413011583864
	.quad	0x3fcb21d996626c5c              # double 0.21197051852218152
	.quad	0x3fe40052fc9778d0              # double 0.62503957113565356
	.quad	0x3fe9a8c5ea0df118              # double 0.80185218538057068
	.quad	0x3fd001237a6ba6a2              # double 0.25006949381950438
	.quad	0x3febe96b0539929a              # double 0.87224341412054973
	.quad	0x3fd867f9988ac8f8              # double 0.38134612938587464
	.quad	0x3fe30f076a1db5c4              # double 0.5955845902041621
	.quad	0x3fda99175ffe17b2              # double 0.41559395193359727
	.quad	0x3fe9935793fbce8f              # double 0.79923609641123672
	.quad	0x3fcf0dc87dda94f4              # double 0.24260812897879414
	.quad	0x3fe4a1db5cf12d10              # double 0.64475792076828675
	.quad	0x3fd06c6bc5c97d70              # double 0.25661749186652738
	.quad	0x3fde5ea5287b379e              # double 0.4745266814542165
	.quad	0x3fbed420d35faef8              # double 0.12042431984417223
	.quad	0x3fd2931be96e4918              # double 0.29022882266976202
	.quad	0x3fbfce1785a515e0              # double 0.12423846257032478
	.quad	0x3fe9c4679873d798              # double 0.80522517944222027
	.quad	0x3fd88a37d4f5603e              # double 0.3834361629174089
	.quad	0x3fcf2998a617d3c8              # double 0.24345691785825196
	.quad	0x3fc457362ac8ce78              # double 0.15891148652154974
	.quad	0x3fa66a8e2e258630              # double 0.043781703122260374
	.quad	0x3fe36348a87fdab9              # double 0.60586960706753878
	.quad	0x3fecc925ad27134c              # double 0.89955409830927512
	.quad	0x3fe4f5e9f81b52b5              # double 0.65501879175515987
	.quad	0x3fc94a386b013cbc              # double 0.19757752632947312
	.quad	0x3fac9784891813a0              # double 0.055843488440621813
	.quad	0x3fe47f4803c01cd2              # double 0.64053726894862906
	.quad	0x3fc2536e85589738              # double 0.14317113410032234
	.quad	0x3fee332c17706fd8              # double 0.94374661043138541
	.quad	0x3feb26bd3b81280a              # double 0.84847890493370071
	.quad	0x3fa1b39d46a1f860              # double 0.034573473808436672
	.quad	0x3fd246c54ec32460              # double 0.28556950275066662
	.quad	0x3fe78241e8836f16              # double 0.73465056813026552
	.quad	0x3fab95810575dc50              # double 0.053874999920417665
	.quad	0x3fe2fa12f202843d              # double 0.59302661197228412
	.quad	0x3fb4222d7a651f50              # double 0.078646509534448627
	.quad	0x3fe11490646e49b9              # double 0.53376025786774683
	.quad	0x3fefc04c7f32ab2f              # double 0.9922239765486206
	.quad	0x3fcdac342bf6c470              # double 0.23181774279285916
	.quad	0x3fdd03f858e92f6e              # double 0.45336731608107683
	.quad	0x3fe9a7b80ac26225              # double 0.80172350026538608
	.quad	0x3fc1ab48bd80f48c              # double 0.13803967717277421
	.quad	0x3fa55fc8b2c5a930              # double 0.04174639875675934
	.quad	0x3fe83b9b1e46c14b              # double 0.75727611459118671
	.quad	0x3fe52aad886633ee              # double 0.66145970001673304
	.quad	0x3fe60fec693a7d77              # double 0.68944378426014807
	.quad	0x3fe3e3db0d632e72              # double 0.62156441321117328
	.quad	0x3fea1ae8f85868d9              # double 0.81578491692496435
	.quad	0x3fb21952dec040c0              # double 0.070698909170689994
	.quad	0x3fe13026e7dd2766              # double 0.53712792669214759
	.quad	0x3fdaf3d7de87355c              # double 0.42113301020875382
	.quad	0x3fe0f1dd9968fd31              # double 0.52952461207306645
	.quad	0x3faa82d010d77780              # double 0.051779272132747245
	.quad	0x3fc8ba5c93483674              # double 0.19318730536945206
	.quad	0x3fa167c699fd3670              # double 0.033994871423243533
	.quad	0x3fed4827e7a82b48              # double 0.9150580906437904
	.quad	0x3fec3e437d078997              # double 0.88260054035008551
	.quad	0x3fe32e2ba299df9e              # double 0.59938604124089401
	.quad	0x3fe51c62441a3339              # double 0.65971482564200479
	.quad	0x3fb222523073e040              # double 0.070836197690256064
	.quad	0x3fd7798b7f0c1910              # double 0.366793512410724
	.quad	0x3fee214252185cb9              # double 0.94155994447910196
	.quad	0x3fe1ecd78d44a90f              # double 0.56016137687154977
	.quad	0x3fe94fcde8f11f79              # double 0.79099174019300655
	.quad	0x3f53a5ccb3b3ba00              # double 0.0011991976778592539
	.quad	0x3fdfa37e9709b530              # double 0.4943539118747422
	.quad	0x3fd26f72f7b8ed40              # double 0.28805231277120313
	.quad	0x3fc2026a7c08124c              # double 0.14069872909762393
	.quad	0x3fe0884b74c39c10              # double 0.51663754277694984
	.quad	0x3fc560d95d25e810              # double 0.16701809929128375
	.quad	0x3fe30961b2e1a935              # double 0.59489521920958188
	.quad	0x3fea39b7be6bf544              # double 0.81954562370052785
	.quad	0x3fc7012b19a92880              # double 0.17972315552680485
	.quad	0x3fb4ac6cbd630e10              # double 0.080755993115467328
	.quad	0x3fda6d84e7de441c              # double 0.41293451922780533
	.quad	0x3fcd6b202107c838              # double 0.22983171093761867
	.quad	0x3fe4a3562a226e27              # double 0.64493854741471501
	.quad	0x3fd50ff97849df30              # double 0.32910000559739938
	.quad	0x3fe06333ec814d90              # double 0.51210972015762657
	.quad	0x3fe8b2f85405fadd              # double 0.77184692774593666
	.quad	0x3fd70bcbd722562a              # double 0.3600949860495769
	.quad	0x3fe66b4cc9508ea7              # double 0.70059813803932947
	.quad	0x3fac184a065761e0              # double 0.054872811578835501
	.quad	0x3feb5bd8ccfb8fd8              # double 0.85496177707363596
	.quad	0x3fdcf0626d609538              # double 0.45217190438627908
	.quad	0x3fd2b9ebcbd12a68              # double 0.29259772209176171
	.quad	0x3fac90493d6d42a0              # double 0.055788315533054744
	.quad	0x3fe1574312590cfe              # double 0.54190209945264178
	.quad	0x3f8deb5c84116700              # double 0.014609072475809892
	.quad	0x3fe697a957e1d095              # double 0.70601336636038303
	.quad	0x3fcb234167642650              # double 0.21201341198347956
	.quad	0x3fc8092a5fe1ef64              # double 0.18777970964208202
	.quad	0x3fdb70aefa3030f4              # double 0.42875265533872597
	.quad	0x3fecdea7fce43adb              # double 0.90217971222758864
	.quad	0x3fa8cc7375584700              # double 0.048434837412186127
	.quad	0x3fd0e29d1fc61fa0              # double 0.26383140662118798
	.quad	0x3fc36d47a2735038              # double 0.15177245552206542
	.quad	0x3feb24d78b647376              # double 0.84824731087756677
	.quad	0x3fe2621b467be694              # double 0.57447589651492814
	.quad	0x3fc203535e4fa9b8              # double 0.14072649102247481
	.quad	0x3fe5beb7f9d9de5f              # double 0.6795310859587963
	.quad	0x3feb1026089a3012              # double 0.84572126083503663
	.quad	0x3faa1ce651aa45d0              # double 0.051001737088096299
	.quad	0x3feacf18a897573c              # double 0.83778031280483089
	.quad	0x3fb0069867a825f8              # double 0.062600636774867158
	.quad	0x3fb9f369e74b75c8              # double 0.10137044808239815
	.quad	0x3fe675ae37208f42              # double 0.70186529891041283
	.quad	0x3fc2cbc97c2e9b18              # double 0.14684408725334985
	.quad	0x3feb8737ec29b4be              # double 0.86025615811890765
	.quad	0x3fd4c04423839904              # double 0.32423499553841872
	.quad	0x3f95bef42cc04be0              # double 0.021236243468660265
	.quad	0x3fede702e9a1e1e0              # double 0.9344496310359851
	.quad	0x3feeb513a99e5790              # double 0.95960410240762606
	.quad	0x3fe894f3d8555c71              # double 0.76818268063187933
	.quad	0x3fcd51d28024bbd4              # double 0.22905951745039366
	.quad	0x3fca5211cc9f54b4              # double 0.20562956324889614
	.quad	0x3fd194117591a1e4              # double 0.27466236573539349
	.quad	0x3fe88cc2fd2f72d1              # double 0.76718282175314745
	.quad	0x3fe30e6e437a6aa9              # double 0.59551156215032564
	.quad	0x3feaeb689640df19              # double 0.84123639437072761
	.quad	0x3fc4d71c6a41452c              # double 0.16281466663580468
	.quad	0x3fdd0f4f4f324e28              # double 0.45405943616899203
	.quad	0x3fdf02466d73511a              # double 0.48451386154671783
	.quad	0x3fe68b3c92f2ff04              # double 0.7044966573812137
	.quad	0x3fee9e85279cea14              # double 0.95685060250190412
	.quad	0x3fe5a248220447d3              # double 0.6760597862614709
	.quad	0x3fd5845a4a1b6b32              # double 0.33620316731473843
	.quad	0x3fe2fd51d65af43b              # double 0.59342281214015402
	.quad	0x3fe3aa7c335e1f63              # double 0.61456117661235188
	.quad	0x3fe3b0c264b553d0              # double 0.61532706899253675
	.quad	0x3fef7675bf698038              # double 0.98321044335535301
	.quad	0x3fed0075de3a7123              # double 0.90630620387995398
	.quad	0x3fd28545e13e93f4              # double 0.28938433643844452
	.quad	0x3fe4284bd9c43a31              # double 0.62991898090860421
	.quad	0x3fe4f155258d6740              # double 0.65445954641766235
	.quad	0x3fc124e378289ed4              # double 0.13393824927447062
	.quad	0x3fd14bb5a588d232              # double 0.27024594464754437
	.quad	0x3fad221be8c92640              # double 0.056900856176593795
	.quad	0x3fe84bb37b83161a              # double 0.75924085734795033
	.quad	0x3fd31c18ad6d2c24              # double 0.29858986793687081
	.quad	0x3fc11684478a52a8              # double 0.13349965565852995
	.quad	0x3fecb5e15ce59197              # double 0.89720218795678164
	.quad	0x3fa35627ee38fe40              # double 0.037766692953024705
	.quad	0x3fe523ed11f0df61              # double 0.66063550476154032
	.quad	0x3feb29555f0c9117              # double 0.84879559101367164
	.quad	0x3fd726cae664fd68              # double 0.36174271106206968
	.quad	0x3fb41dcdbaa20d38              # double 0.078579767288876279
	.quad	0x3fd14318b0d6f3fe              # double 0.26972024220941637
	.quad	0x3fc49f6778c57a54              # double 0.16111462971726331
	.quad	0x3fd2dabd59cc840a              # double 0.2946008088056834
	.quad	0x3fc2c159fb11afbc              # double 0.14652561911804962
	.quad	0x3fe7b9076e16c2ad              # double 0.74133655072917792
	.quad	0x3f9a78f5efa055c0              # double 0.0258520534044544
	.quad	0x3fd59749f45aae44              # double 0.33735894072262718
	.quad	0x3fde03a215e8b0b8              # double 0.46897174968286093
	.quad	0x3fa343c0c8353930              # double 0.037626289786759748
	.quad	0x3feb238ec9d6cc59              # double 0.84809054776850268
	.quad	0x3fe3159e5f60a20a              # double 0.59638899448788263
	.quad	0x3fee90649df8077a              # double 0.95512610295575873
	.quad	0x3fe80b4f193c5475              # double 0.75138049057808465
	.quad	0x3fe0f94652db9902              # double 0.53042904074825992
	.quad	0x3fe010d854bb3f6f              # double 0.50205627965077138
	.quad	0x3fea5796416c9309              # double 0.82319176462314758
	.quad	0x3fe14208329bbca3              # double 0.53931054958765789
	.quad	0x3fe5535aa2a7781e              # double 0.66642505424875131
	.quad	0x3fc1f9996cca279c              # double 0.1404296666335626
	.quad	0x3fe96970129c8450              # double 0.79412082324064137
	.quad	0x3fef8ef4ec2fcfe0              # double 0.98620077257373495
	.quad	0x3fb77f1e95a22ab0              # double 0.091783439189536464
	.quad	0x3fa914301ee30720              # double 0.048982146997799569
	.quad	0x3fee06bd6d06d4b6              # double 0.93832274717592301
	.quad	0x3fc7c4db864acfe8              # double 0.1856951146816066
	.quad	0x3fdc6641f6ecfd94              # double 0.44374131311266152
	.quad	0x3fd976d1610c5736              # double 0.39787706830371705
	.quad	0x3fb2820e8d025d40              # double 0.072297009874422891
	.quad	0x3fa61bfb6c508f70              # double 0.043182236644752403
	.quad	0x3fe7dfb3a83e4a72              # double 0.74605734691642867
	.quad	0x3fdfcddc0dc45da6              # double 0.49693967194022048
	.quad	0x3fd788413f1f1274              # double 0.36769133724400338
	.quad	0x3fed0f91ccf86605              # double 0.90815057786238695
	.quad	0x3fdd93082c7ae21e              # double 0.46209911674262283
	.quad	0x3fd210f5656ade4c              # double 0.2822850695042447
	.quad	0x3fe58d060f80d07f              # double 0.67346480396237485
	.quad	0x3fd1d7e132979ee8              # double 0.27880124989176958
	.quad	0x3fef0b408e798c48              # double 0.97012355639561409
	.quad	0x3fea42443c90b13b              # double 0.82058917836324186
	.quad	0x3fdb620d4624295e              # double 0.42785961007816364
	.quad	0x3fd4fb67305e2436              # double 0.32784442637836564
	.quad	0x3fe1e698d32ad1da              # double 0.55939904445272792
	.quad	0x3feffb8cc58b4def              # double 0.99945677359431595
	.quad	0x3f8018dafaea7180              # double 0.0078599078963683677
	.quad	0x3fd58a3983f7ce12              # double 0.33656156432627526
	.quad	0x3fe9a48b361f74b3              # double 0.80133591242669977
	.quad	0x3fe822b01f0d39a1              # double 0.75423437180306874
	.quad	0x3fd24125f15b3440              # double 0.28522633142421583
	.quad	0x3fe270fc7d7fbd9c              # double 0.57629227172394648
	.quad	0x3fe56b39aa881b74              # double 0.66933902079550345
	.quad	0x3fea0cf1eaa9fd44              # double 0.81408019860092695
	.quad	0x3fd727779a91fbb6              # double 0.36178388685942353
	.quad	0x3fe8edfdb6383600              # double 0.77905164327393095
	.quad	0x3fd3188e8f5bba50              # double 0.29837383270106432
	.quad	0x3fbcd812eae25f70              # double 0.11267202600936144
	.quad	0x3fa88919f46b0040              # double 0.047921000562837879
	.quad	0x3fd1375c461c7044              # double 0.26900393339906636
	.quad	0x3feac630c805a070              # double 0.83669318262856329
	.quad	0x3fefa33f566dbbf0              # double 0.98867766266437052
	.quad	0x3fda2529aba7bb48              # double 0.40851823580935731
	.quad	0x3fea04fe51d27a0c              # double 0.81310955029386056
	.quad	0x3fb75b5d382bd568              # double 0.091237856115034099
	.quad	0x3fe1697767abec8f              # double 0.54412431953768869
	.quad	0x3fef40385a766937              # double 0.97658937138047618
	.quad	0x3fe8eda64c5ed891              # double 0.77900996128188826
	.quad	0x3fefc8115a30cf55              # double 0.99317233672489158
	.quad	0x3fdcd3a1cf1ef6be              # double 0.45041699625640408
	.quad	0x3fa5bbf86433e510              # double 0.042449724418427093
	.quad	0x3fd1c5890d48c2ae              # double 0.27768160149848142
	.quad	0x3fd953ee659b0dda              # double 0.39574775621823977
	.quad	0x3fefe1ee38eda715              # double 0.99632941359343141
	.quad	0x3fef401d838ff099              # double 0.97657657333140257
	.quad	0x3fd62f18c4d0876e              # double 0.34662455768749723
	.quad	0x3fefcd8a73b56bfa              # double 0.9938404331145414
	.quad	0x3fbde01d3de4e010              # double 0.11670096169552857
	.quad	0x3faf993ed30cce20              # double 0.061716044676725312
	.quad	0x3fe2f53de19c86b9              # double 0.5924367338631874
	.quad	0x3fb45fa505eafaf8              # double 0.079584421105192038
	.quad	0x3fbe1f41b5f91ca8              # double 0.11766443913176039
	.quad	0x3fdc469152dbc5e8              # double 0.44180710879945062
	.quad	0x3fefd0fa0f72601f              # double 0.99425986306141911
	.quad	0x3fe6ef1c439510dc              # double 0.71668828200975154
	.quad	0x3fdd59637bfea85c              # double 0.45858084782469688
	.quad	0x3fec5e789c91b601              # double 0.88653212146681437
	.quad	0x3feef453cea674b0              # double 0.96732511865015702
	.quad	0x3feef6c3e98acccf              # double 0.96762271512707254
	.quad	0x3febbfcc43ae7a56              # double 0.86716283053449206
	.quad	0x3fc96b126c5556f8              # double 0.19858007707323799
	.quad	0x3f94f32babdbbea0              # double 0.020458872188952371
	.quad	0x3fd0fe33d1cf3d6c              # double 0.26551528443538674
	.quad	0x3fd57b96aaba09c6              # double 0.33566824600725587
	.quad	0x3f910bbcd3b50e40              # double 0.016646337911210063
	.quad	0x3fec3050cdd84818              # double 0.88089790538856771
	.quad	0x3fe97a2e5cbb3ecf              # double 0.79616468536002027
	.quad	0x3fe9bd7213b8d8c9              # double 0.8043756852337306
	.quad	0x3fece6c6fda1bfdf              # double 0.90317105805842945
	.quad	0x3fc2083fe7df5af0              # double 0.14087675878427985
	.quad	0x3fe1097f760d2587              # double 0.53240941101937345
	.quad	0x3fc489bff4db218c              # double 0.16045379119738035
	.quad	0x3fd0dc6e913de3cc              # double 0.26345409568562839
	.quad	0x3fd73acfb5bf158a              # double 0.36296456097292007
	.quad	0x3fa66889e8909ad0              # double 0.043766317023530399
	.quad	0x3f85a44d57145180              # double 0.010567287654830393
	.quad	0x3fd12fad3068e85e              # double 0.26853494384307008
	.quad	0x3fd85580c14791b4              # double 0.38021868586499896
	.quad	0x3fea65fb80aae2ef              # double 0.82494902735115072
	.quad	0x3fec52b3b38eda4b              # double 0.88509545392919031
	.quad	0x3fdf19bf46675da4              # double 0.48594648242348115
	.quad	0x3fc89d70374f9bc8              # double 0.19230463696223254
	.quad	0x3fbf12c6f881af60              # double 0.12138026778273803
	.quad	0x3fe42c2b7bbe90d0              # double 0.63039182823970386
	.quad	0x3fdf957508541c1e              # double 0.49349714101157527
	.quad	0x3f8826d43751c680              # double 0.011792810381140884
	.quad	0x3fe3560158d3e350              # double 0.604248689166619
	.quad	0x3fe7a1b2837459fa              # double 0.73848844217974308
	.quad	0x3fc647b552985b2c              # double 0.17406336338964346
	.quad	0x3feb285c0faf225b              # double 0.84867671073250095
	.quad	0x3fc16e5f35a112f8              # double 0.13618078344929763
	.quad	0x3fe34b2c14c0d522              # double 0.60292629292840538
	.quad	0x3fe9de2fd5c7e2dd              # double 0.80837241891921574
	.quad	0x3fd2e2ded63927ee              # double 0.29509707374802374
	.quad	0x3fcfeca887774854              # double 0.24940973867939198
	.quad	0x3fe11dba102fa808              # double 0.53487876092299391
	.quad	0x3fde1531b0edbd9e              # double 0.47004358556929471
	.quad	0x3fe65b961f9f91b2              # double 0.69867998291424827
	.quad	0x3fe0ab73dbd0cbe6              # double 0.52092926914917537
	.quad	0x3fabf25b4d9640c0              # double 0.054583409520206683
	.quad	0x3fe46c6345d4b158              # double 0.63823093069872083
	.quad	0x3fea65dc02c06e4f              # double 0.82493401086271401
	.quad	0x3fc6be1dafb8a4f8              # double 0.17767687873973848
	.quad	0x3fe792e678aff44d              # double 0.73668216296904065
	.quad	0x3fe51d9ee6aac0bf              # double 0.65986580898427138
	.quad	0x3fe9605e59e3551e              # double 0.79301374012235093
	.quad	0x3fdc68a90b7cbab0              # double 0.44388795968817885
	.quad	0x3fdf7f6212bff5a0              # double 0.49214984732665279
	.quad	0x3fbdcef7f661b7c8              # double 0.11643934025934677
	.quad	0x3fd36770c9ce92cc              # double 0.30318851192195662
	.quad	0x3feefe152eb640c9              # double 0.96851595996306472
	.quad	0x3fe51a386952dbb8              # double 0.65945072718647335
	.quad	0x3fdea13976a82d74              # double 0.47859036052314896
	.quad	0x3fab11b4a6a40430              # double 0.052869458524590462
	.quad	0x3fd8bee25f7f16f0              # double 0.38665065122437081
	.quad	0x3fe5fd88ec1a41dd              # double 0.68719907869131769
	.quad	0x3fdc551569401c4c              # double 0.44269309309351423
	.quad	0x3fb4b00dedf298f8              # double 0.080811377136885798
	.quad	0x3fdc70b417aba492              # double 0.44437887488909056
	.quad	0x3fed407b98d3a4ac              # double 0.91412143563242898
	.quad	0x3feebaba6c3b118f              # double 0.96029397143188244
	.quad	0x3fe16ee2847c1e15              # double 0.54478574634498733
	.quad	0x3fe2c64ac600c0de              # double 0.58670557663392819
	.quad	0x3f8a59a06478c600              # double 0.012866261545329216
	.quad	0x3fed6f59802503fe              # double 0.91984248188248308
	.quad	0x3fefb9fa43372cf2              # double 0.99145234230073087
	.quad	0x3fe48f43c00ea7ee              # double 0.64248836051160452
	.quad	0x3fd98446b00c1e80              # double 0.39869849388239942
	.quad	0x3fef1d11d35a11ca              # double 0.97229853896765772
	.quad	0x3feb8e62b75fbd60              # double 0.86113105597716455
	.quad	0x3feb3cd751ee8ce7              # double 0.85117689134895336
	.quad	0x3febed0ea1fdf3b5              # double 0.87268764151632772
	.quad	0x3fef785cebf19c28              # double 0.98344274599810876
	.quad	0x3fe1ca17acec6958              # double 0.55591949247472439
	.quad	0x3fee554803dd093f              # double 0.9479103160340755
	.quad	0x3fe66e6ec2d61b2e              # double 0.70098054937338872
	.quad	0x3fd594eb1be6d044              # double 0.33721425747649314
	.quad	0x3fe3162f0fd3c35f              # double 0.59645798770189262
	.quad	0x3f941711d17a6980              # double 0.019619253550084093
	.quad	0x3fda8a7f8a0c4e3e              # double 0.41470325928932883
	.quad	0x3f99aa2c9c81ee60              # double 0.025063225796186805
	.quad	0x3fea111b334c4d50              # double 0.81458816546584423
	.quad	0x3fa74e08daed2860              # double 0.045517231678403602
	.quad	0x3fe93445f07f3468              # double 0.78763100597428792
	.quad	0x3febd6d667331566              # double 0.86997528225098786
	.quad	0x3fdb758521d85ce8              # double 0.42904785447303917
	.quad	0x3feae592f8644a1c              # double 0.84052418245329674
	.quad	0x3fe008a4e95b1e37              # double 0.50105519845323598
	.quad	0x3fd10be4ca570960              # double 0.26635093459858261
	.quad	0x3fe088e32931cadb              # double 0.51670988126565065
	.quad	0x3fd5a00b9deada1c              # double 0.33789339467640089
	.quad	0x3fd3c1c5c04df980              # double 0.30870193271393731
	.quad	0x3fc92f43e9fba7d4              # double 0.19675492215111368
	.quad	0x3faf48a49005c630              # double 0.061101095753553714
	.quad	0x3fd287b0cb26c77e              # double 0.28953189696323267
	.quad	0x3febd137b2090bed              # double 0.8692892529728603
	.quad	0x3fd0f8c847ec22f6              # double 0.26518446944878293
	.quad	0x3fe52c3460b8876a              # double 0.66164606943878579
	.quad	0x3fb2d4e888417c80              # double 0.073561223283364896
	.quad	0x3fefa5bd8609e3fb              # double 0.9889819734518136
	.quad	0x3fd876733a9d75a4              # double 0.38222962116364045
	.quad	0x3fdad298a6146d5a              # double 0.41910377711038438
	.quad	0x3facc0e65460eed0              # double 0.056159208107116165
	.quad	0x3fcfdf075ac9b560              # double 0.24899379666332333
	.quad	0x3fef4517487fc09f              # double 0.97718395385711065
	.quad	0x3fe08fa8a61be38b              # double 0.51753647273209091
	.quad	0x3fe7417b2add4921              # double 0.72674330112412033
	.quad	0x3feb1a9d4e982c15              # double 0.84699883795235797
	.quad	0x3fdadf57e61d7c72              # double 0.41988179657159386
	.quad	0x3fe6e95235f0cb8f              # double 0.71598158393168088
	.quad	0x3fe76a3e14c4151a              # double 0.73171905570839901
	.quad	0x3fe20708945692d8              # double 0.56335858318615362
	.quad	0x3f9ef303e9b82460              # double 0.030223904743284513
	.quad	0x3fd7da799f2b1fa0              # double 0.37270966094774316
	.quad	0x3fef5691838fdf96              # double 0.97931743331627064
	.quad	0x3feecd022cfbc8dd              # double 0.96252545152517721
	.quad	0x3fee2477610225a4              # double 0.94195145556402737
	.quad	0x3fc789858216aabc              # double 0.18388432361583351
	.quad	0x3fc1e263c51a2afc              # double 0.13972136615878827
	.quad	0x3fc0beb2030d0538              # double 0.13081956051795784
	.quad	0x3fdc58c48398b650              # double 0.44291794635032478
	.quad	0x3fc7c91ed89535a8              # double 0.18582521033606025
	.quad	0x3fe875fafe56e284              # double 0.764401909596089
	.quad	0x3fceddeca92811f4              # double 0.24114759692760368
	.quad	0x3fe2acaa1d316d59              # double 0.58357721044323363
	.quad	0x3fe15292325890d6              # double 0.54132947762675587
	.quad	0x3fe3d81af2279496              # double 0.62013003631422481
	.quad	0x3fc872d5ff4f949c              # double 0.19100451437330868
	.quad	0x3fd55f2927ac8dd0              # double 0.33393315195482121
	.quad	0x3fdcfa715ce41c92              # double 0.45278581687348052
	.quad	0x3fd30bc62582b72c              # double 0.29759362853188764
	.quad	0x3fbeb6436c90cb38              # double 0.11996861839797368
	.quad	0x3fd96b45705a55c4              # double 0.39717231723747326
	.quad	0x3fe47665d173b1d5              # double 0.63945284756260412
	.quad	0x3fe52f01f3955f35              # double 0.6619882352342531
	.quad	0x3febb7d0ae4eb5f5              # double 0.86618837398935844
	.quad	0x3feaf8f386a225ec              # double 0.84288955970367629
	.quad	0x3f7007f3c3043580              # double 0.0039138338036200926
	.quad	0x3feed380a3a4eb19              # double 0.96331817590484825
	.quad	0x3fa15a665f324d10              # double 0.033892821427025877
	.quad	0x3fe8024fe59f3362              # double 0.75028223846457487
	.quad	0x3fe57b9e4f6175c7              # double 0.67134013656657821
	.quad	0x3f974170c2882ce0              # double 0.02271057307556823
	.quad	0x3fede4e3849c30ff              # double 0.93419052029051375
	.quad	0x3fd88750c6d4f49e              # double 0.38325900475667563
	.quad	0x3fe98abcb2a3868c              # double 0.79818568125138389
	.quad	0x3fdf130f69d03274              # double 0.48553834279372343
	.quad	0x3f926fff13e8bbc0              # double 0.018005357351451812
	.quad	0x3fd22232be300a3c              # double 0.28333729336751268
	.quad	0x3fcc5e6e90dba98c              # double 0.22163183282038934
	.quad	0x3fe1051dad429766              # double 0.53187450256221491
	.quad	0x3faadc9eb35dfd60              # double 0.052464446444896451
	.quad	0x3fe7569d823490da              # double 0.72932315283517402
	.quad	0x3fec763c253f6ae5              # double 0.88943297648378616
	.quad	0x3fefa6252a1d8b92              # double 0.98903139329591938
	.quad	0x3fd80fd3394b23cc              # double 0.3759658870226843
	.quad	0x3fec8ebf5ffe063c              # double 0.89242523907177639
	.quad	0x3fed0ebdac0da5c6              # double 0.90804942707216507
	.quad	0x3fbf226990aab898              # double 0.12161884099870901
	.quad	0x3fdfa514354e2c04              # double 0.49445061879731633
	.quad	0x3fe1c49b77ea5453              # double 0.55524991436926496
	.quad	0x3fd3e6fcaf36ac12              # double 0.31097333059978027
	.quad	0x3feb0707dce2aed5              # double 0.8446082414788757
	.quad	0x3fe3074c1a2a3315              # double 0.59464078054733938
	.quad	0x3fd7790e7cccc072              # double 0.36676370799523916
	.quad	0x3fdce7e4b5bcd75e              # double 0.45165364978617173
	.quad	0x3fdf37f7dc1147f4              # double 0.48779102793662266
	.quad	0x3fbaa568400f70e8              # double 0.10408641399357388
	.quad	0x3fa8e1a7b2222bd0              # double 0.048596611494836517
	.quad	0x3fd5c55df5b73f24              # double 0.34017132754978463
	.quad	0x3fedd35bf80d612d              # double 0.93205069015224284
	.quad	0x3fda702ce624e8e4              # double 0.41309664225594944
	.quad	0x3fdb61de55ffc874              # double 0.4278484191737626
	.quad	0x3fd25df73d496dd0              # double 0.28698521599809812
	.quad	0x3fdb72ccdb08d27a              # double 0.42888184919437544
	.quad	0x3fb3cb8b0b9fa4c8              # double 0.077324571931643438
	.quad	0x3fcb6f01ad351cec              # double 0.2143251510371792
	.quad	0x3fe4c3effb097f46              # double 0.64891814261134395
	.quad	0x3fe5da004e722951              # double 0.68286147424195509
	.quad	0x3feffb6a4cd9847a              # double 0.99944033631994889
	.quad	0x3f339cd3a4ad8800              # double 2.9926459381190984E-4
	.quad	0x3fec38f9edf06361              # double 0.88195511314834729
	.quad	0x3fe02b9af55bdcd4              # double 0.5053229133763133
	.quad	0x3fe18bd450e1cd76              # double 0.54831901356958102
	.quad	0x3fed3c02980bcc7c              # double 0.91357545563222641
	.quad	0x3fda5f5162cf6994              # double 0.41206774377283151
	.quad	0x3fd0d5bf9880bfea              # double 0.26304616825927829
	.quad	0x3fc8a19d1e1f78a4              # double 0.19243205996366897
	.quad	0x3fd45067d5029d84              # double 0.31740756799487024
	.quad	0x3fc818815a0aec8c              # double 0.18824784180273857
	.quad	0x3fda44a0ce63c614              # double 0.41043872981308138
	.quad	0x3fe113813c65222a              # double 0.53363096042545988
	.quad	0x3fe71b1441b11317              # double 0.72205555754098583
	.quad	0x3fdd6af3b17a14d8              # double 0.45965282756544701
	.quad	0x3fe4ea3e7cc83b3d              # double 0.65359424945368227
	.quad	0x3f989bae622fde20              # double 0.024031376593454223
	.quad	0x3fdfd8a4d23e164a              # double 0.49759789020058476
	.quad	0x3fef7d8647ac396b              # double 0.98407281874260144
	.quad	0x3fe7dda01a6216d1              # double 0.74580388215027871
	.quad	0x3fe596d6ff032fa2              # double 0.6746630650245502
	.quad	0x3f9e0642c878bbe0              # double 0.029320758329216434
	.quad	0x3fe5f7b3385e2960              # double 0.68648682603206268
	.quad	0x3fc775af2798ad7c              # double 0.18327893670480566
	.quad	0x3fca94dd908685f0              # double 0.20766801411541236
	.quad	0x3fe8b1394ccc4034              # double 0.77163376807766903
	.quad	0x3fb830203427ce38              # double 0.094484341367029212
	.quad	0x3fe9335ff503ad3e              # double 0.78752134184234257
	.quad	0x3fe69160cc4dad63              # double 0.70524635222447463
	.quad	0x3f8e7f394e83ba80              # double 0.014891097744535786
	.quad	0x3fe1992917f988f7              # double 0.54994635279243098
	.quad	0x3fe1bd008680b2fa              # double 0.55432153959335939
	.quad	0x3fda305da70af38e              # double 0.40920201599856731
	.quad	0x3fdaec07df2b98ac              # double 0.42065617364859054
	.quad	0x3fed874ff1b75bf1              # double 0.92276761255459239
	.quad	0x3fe27c332d7668a1              # double 0.57766112212563681
	.quad	0x3fc30dcf6a0a62d8              # double 0.14885895421755069
	.quad	0x3fea85b6328e8df1              # double 0.82882223009477063
	.quad	0x3fee13826cb8c82d              # double 0.93988152727820806
	.quad	0x3fe759d202253e69              # double 0.72971439761199719
	.quad	0x3fd6fdd745ad8f3c              # double 0.3592432194184203
	.quad	0x3fe119f81c0f8db6              # double 0.53442006569496558
	.quad	0x3fe43416e1e243b7              # double 0.63135856740893004
	.quad	0x3febe4bf7b1ff4ed              # double 0.87167333648508605
	.quad	0x3fe3b84638c1507c              # double 0.6162444218157499
	.quad	0x3fec4c3114842791              # double 0.88430074698520589
	.quad	0x3fce2ce872a31518              # double 0.23574548337470769
	.quad	0x3fe6a5abd40167bd              # double 0.70772353560754875
	.quad	0x3fe4ab464fcabbcb              # double 0.64590755066262184
	.quad	0x3fe4a404e3015f1c              # double 0.64502186142906082
	.quad	0x3fd127ac20faa2f6              # double 0.26804640980348837
	.quad	0x3fe1d11fb540b2f2              # double 0.55677781487392353
	.quad	0x3fe4fe4cec559e54              # double 0.65604253920623501
	.quad	0x3fe97ff4311d6de0              # double 0.79686936943783948
	.quad	0x3fe6d4038532e4e7              # double 0.71338058486358313
	.quad	0x3fead2ffc3a641ca              # double 0.8382567235258247
	.quad	0x3fef48432feb5f51              # double 0.97757109984648071
	.quad	0x3fb98c2688ecbe48              # double 0.099794777325535766
	.quad	0x3fd7ae9c8760c1fa              # double 0.37003243656638996
	.quad	0x3f775c61061dc680              # double 0.0057033338542723522
	.quad	0x3fe68da328644521              # double 0.7047897137546536
	.quad	0x3fe4e5691132d313              # double 0.65300420149887584
	.quad	0x3febe356fb5dc58d              # double 0.87150143713931671
	.quad	0x3fe78a435cfe690d              # double 0.7356278244290323
	.quad	0x3fe6a6309eeddf26              # double 0.70778685608727154
	.quad	0x3fd42f4cbbf35456              # double 0.31538694719831051
	.quad	0x3fe94c4c48535342              # double 0.79056371809074499
	.quad	0x3fc097e46032463c              # double 0.12963537880982468
	.quad	0x3fedcdc88e536509              # double 0.93137004659652789
	.quad	0x3fe1cf991e7581cc              # double 0.55659156750703564
	.quad	0x3feeed955e82ce50              # double 0.96650188883945454
	.quad	0x3fdf62f45684e066              # double 0.49041470002294429
	.quad	0x3fe8c8770e071716              # double 0.77447083225044611
	.quad	0x3f973e0720c7a940              # double 0.022697554946639942
	.quad	0x3fd0f75794db8c6c              # double 0.26509656464458575
	.quad	0x3fe6a624fa31ab05              # double 0.70778130403536521
	.quad	0x3fe31073b20a22b3              # double 0.59575829289777571
	.quad	0x3fe6248b4430851a              # double 0.69196093862788932
	.quad	0x3fe4aa7c3690d084              # double 0.64581118256911951
	.quad	0x3fedf66ffd81fef1              # double 0.93633269799462771
	.quad	0x3feaa0701658fd5c              # double 0.8320846973873972
	.quad	0x3fe0965ad5a40eed              # double 0.51835386015633633
	.quad	0x3fcf3b6cfe523e08              # double 0.24400103014021135
	.quad	0x3fb8067ef7ee3558              # double 0.093849120645434936
	.quad	0x3fe6f299bbe3cf6c              # double 0.71711432168238565
	.quad	0x3fe2ea5406d7cab7              # double 0.59110452019225235
	.quad	0x3feb1d33c13c4fdb              # double 0.84731471768690925
	.quad	0x3fef2dc1356ead1c              # double 0.97433529315950151
	.quad	0x3feb8e4aba0b2b2f              # double 0.86111961685796767
	.quad	0x3feb91929b99ed51              # double 0.86152010336756224
	.quad	0x3fea71211006133d              # double 0.82630971078524562
	.quad	0x3fae58e81bde3a60              # double 0.059272054101815241
	.quad	0x3fe15f7058dd8e42              # double 0.54290025097402173
	.quad	0x3fc078b0e41aaf90              # double 0.12868319642927561
	.quad	0x3fe5cb9eb59e35dc              # double 0.68110595199840018
	.quad	0x3fde723c8d4e05b0              # double 0.47572244452757229
	.quad	0x3fc8efdf8881cbe8              # double 0.19482034840947837
	.quad	0x3fefd5fa9ad5fa70              # double 0.9948704742563006
	.quad	0x3fe908b63a1d6d5f              # double 0.78231345511032291
	.quad	0x3fe809ac9bad14e8              # double 0.75118093877304393
	.quad	0x3fe99697e952fb2d              # double 0.79963298388597581
	.quad	0x3fe1fff6cf2c10c7              # double 0.56249561751658284
	.quad	0x3fd8d8add4b123c2              # double 0.38822503824900079
	.quad	0x3fdb2c19103666e4              # double 0.42456652243855175
	.quad	0x3fd6c157d6343d70              # double 0.35555072706571078
	.quad	0x3fc9d3e88870e6e8              # double 0.20177942907485336
	.quad	0x3fd17be9a5d6efe8              # double 0.27318803019784221
	.quad	0x3feaa6fc0084515b              # double 0.83288383580160585
	.quad	0x3fbb59b308f53ee0              # double 0.10683745354367202
	.quad	0x3fe396f2b9bb0a22              # double 0.61217628741752983
	.quad	0x3fda239cfdcc187e              # double 0.40842366013419695
	.quad	0x3fe03e072927c680              # double 0.5075717738929626
	.quad	0x3fec1023f5dfb72a              # double 0.87697027227634305
	.quad	0x3f8aac9f2df02440              # double 0.013024562444131971
	.quad	0x3fdcd3284d8b6282              # double 0.45038802693083124
	.quad	0x3fe4313992330d49              # double 0.63100889734816079
	.quad	0x3fedef9532ed16c4              # double 0.93549594828137871
	.quad	0x3fc335935209e0f0              # double 0.15007249360838371
	.quad	0x3fe6d3726862147c              # double 0.71331138980225672
	.quad	0x3fad24048ee0d200              # double 0.056915419045626692
	.quad	0x3fdd588a19d3a2d4              # double 0.45852901956690784
	.quad	0x3fca1dfa44d5a0dc              # double 0.20403984414156795
	.quad	0x3fc5b5132f95cb50              # double 0.16958846877568101
	.quad	0x3fcb873fea9ea8b4              # double 0.21506499248545696
	.quad	0x3fd895669f1acf4e              # double 0.38411870515414115
	.quad	0x3fd0e3b91e92e4cc              # double 0.26389911637995733
	.quad	0x3fbfa673236e7708              # double 0.123633571768064
	.quad	0x3fe83d1fb6c21bab              # double 0.75746141142814361
	.quad	0x3fe6277ffeb977a8              # double 0.6923217749679127
	.quad	0x3fd9f52c802bffd6              # double 0.40558922306808876
	.quad	0x3fd906ffdf1cd2e2              # double 0.39105221546496527
	.quad	0x3fdbb1f697e4fb28              # double 0.43273701508944606
	.quad	0x3fcc39a4fb4040e4              # double 0.22050916927447084
	.quad	0x3fe48301292cae0b              # double 0.64099176446819806
	.quad	0x3fd96dd428817d92              # double 0.39732841449400624
	.quad	0x3fda37b925d78758              # double 0.40965107627390784
	.quad	0x3fe0ecb5e781d45f              # double 0.52889533249129872
	.quad	0x3fbcaaa17e722088              # double 0.11197861992889291
	.quad	0x3fef229e6366aaf2              # double 0.9729759160448721
	.quad	0x3fd217cbf4c0cd6a              # double 0.28270243550942686
	.quad	0x3fdbb58dddfcb642              # double 0.43295618704255301
	.quad	0x3fe820f81c7cd7ce              # double 0.75402455867765084
	.quad	0x3fdfba6adb8bcaf0              # double 0.49575301590009158
	.quad	0x3fc5b3354f3b4a14              # double 0.16953150147180962
	.quad	0x3fe58809a67a5481              # double 0.67285616412358717
	.quad	0x3fbc20413443d110              # double 0.10986716772078275
	.quad	0x3f657f75e1e8c000              # double 0.002624254454779873
	.quad	0x3fe97fc97a395d1b              # double 0.79684900161638283
	.quad	0x3fecb1e2bf1cca0b              # double 0.89671456648494663
	.quad	0x3fd29ba05d43d702              # double 0.29074868305120571
	.quad	0x3fdf1f0365f1837a              # double 0.48626790004168863
	.quad	0x3fda076fa8b1aa0e              # double 0.40670386766456168
	.quad	0x3fb013790edb60c8              # double 0.062797132613357509
	.quad	0x3fee251af463305e              # double 0.94202945453572418
	.quad	0x3fe34a7512c3db99              # double 0.60283902802517553
	.quad	0x3fa4c22d530d5420              # double 0.04054395331210281
	.quad	0x3fe91ee8614145c4              # double 0.7850229167472027
	.quad	0x3fc70ac84bcad914              # double 0.180016552932735
	.quad	0x3fe830d3cd5281e9              # double 0.75596037008295724
	.quad	0x3fe4f10298e5ae21              # double 0.65442018378002242
	.quad	0x3fe21adae92a5a55              # double 0.56577821292996566
	.quad	0x3fc805f394f5e4e8              # double 0.18768162511313524
	.quad	0x3fec344a123272da              # double 0.88138297609438188
	.quad	0x3fe008845fd0e79b              # double 0.5010396834761538
	.quad	0x3fe04f5af7d993c4              # double 0.5096869316881727
	.quad	0x3fe2bf72294069cd              # double 0.5858698659606546
	.quad	0x3fe36b01b9cbab25              # double 0.60681234634589443
	.quad	0x3fcfd713d9258304              # double 0.24875114539010934
	.quad	0x3fe8d6a552d79e69              # double 0.77620187931183893
	.quad	0x3fcc6348e7b4f668              # double 0.22177993120014894
	.quad	0x3fb9a64f7e35d0c0              # double 0.1001939471369182
	.quad	0x3fdfba268b07187c              # double 0.49573672844815753
	.quad	0x3fddd4e6c36db466              # double 0.46611947140519872
	.quad	0x3f7d39faaa54b700              # double 0.0071353713622508419
	.quad	0x3fca47767d50f9c4              # double 0.20530587309799675
	.quad	0x3fe7ec4d377a9c15              # double 0.7475954135487678
	.quad	0x3fe384c880347860              # double 0.60995888748199079
	.quad	0x3fce0474d788b268              # double 0.23451099895591487
	.quad	0x3fc8130376cdb548              # double 0.18808024693445646
	.quad	0x3fd99397e7d939e6              # double 0.39963338509997326
	.quad	0x3fd6aff9f2443bfa              # double 0.35449074419824422
	.quad	0x3fd2ebed76b4e5b2              # double 0.29564987747616123
	.quad	0x3fe6db0237cb72f4              # double 0.71423445603758617
	.quad	0x3fe5ff437a11f868              # double 0.68741010515055923
	.quad	0x3fca235060c6839c              # double 0.20420269704211769
	.quad	0x3fe8809687ceb6c7              # double 0.76569677853486773
	.quad	0x3fe959bb9f69bc2d              # double 0.79220372329098654
	.quad	0x3fefcf91f325713d              # double 0.99408814897063957
	.quad	0x3fc04138a74e46e8              # double 0.12699039620615982
	.quad	0x3fb3699f2ee54c70              # double 0.075830410908837242
	.quad	0x3fc192e3b8f773b8              # double 0.13729521304676751
	.quad	0x3fee26f348e99345              # double 0.94225467911437788
	.quad	0x3feb7a6e94748ed3              # double 0.85869530673195482
	.quad	0x3fbdd65acd105f90              # double 0.11655204302257816
	.quad	0x3fcb7da5da45fab8              # double 0.21477196843985324
	.quad	0x3fec57a5c10ea275              # double 0.88569915491559803
	.quad	0x3fcb16fdf07bcc74              # double 0.21163915865290372
	.quad	0x3fdc8253e34602ac              # double 0.44545457071948635
	.quad	0x3fe1c75ca4ffcbd3              # double 0.55558616854102139
	.quad	0x3fe7387bd2edaa99              # double 0.72564498135519095
	.quad	0x3fb26310a9606a88              # double 0.07182411322757265
	.quad	0x3fe72fdc24fbdf40              # double 0.72459227775014057
	.quad	0x3fe4681b13ead70f              # double 0.63770822420221573
	.quad	0x3fe19d2c9b956047              # double 0.55043630969431312
	.quad	0x3fe4e657f3f64266              # double 0.65311811112230767
	.quad	0x3fed5bc7e01b73cf              # double 0.91745370646423818
	.quad	0x3fece136acba1614              # double 0.90249189124796425
	.quad	0x3feed1d912b45d23              # double 0.96311620381576223
	.quad	0x3fe863b890d1bd87              # double 0.7621729687215727
	.quad	0x3fe9ba660b7d3fad              # double 0.80400373691553784
	.quad	0x3fe40f5ab42c750c              # double 0.62687430563133395
	.quad	0x3fd9b519779a6a08              # double 0.40167843513486945
	.quad	0x3fde114ec1d9cf34              # double 0.46980637484306276
	.quad	0x3fc8a874c34786f8              # double 0.19264087233664617
	.quad	0x3fe82997f08d1bbb              # double 0.75507733328492266
	.quad	0x3fd948b2c5f047be              # double 0.39506215410176171
	.quad	0x3fee9c964cb7b30c              # double 0.95661463722135087
	.quad	0x3fdf271dc7ec5ee6              # double 0.48676247142564788
	.quad	0x3fd8f0c7dd44ba96              # double 0.38969608886956431
	.quad	0x3fc213af6c21b800              # double 0.14122574596279946
	.quad	0x3fd215450c683e50              # double 0.28254820071831421
	.quad	0x3feeb0212d27d4ba              # double 0.95900019473506082
	.quad	0x3fe889bf13f90856              # double 0.766814745911925
	.quad	0x3fe36bdc5a46876e              # double 0.60691659576353429
	.quad	0x3fd084932cf7fed8              # double 0.25809173003652353
	.quad	0x3fefa82ebd18ad58              # double 0.98928009922876025
	.quad	0x3fd2555e19da224a              # double 0.28646042370431657
	.quad	0x3fdd56e322f1ba10              # double 0.45842817699932059
	.quad	0x3fa9bc9759b14620              # double 0.050266961764134033
	.quad	0x3fd82eb83ff1664e              # double 0.37785154575758362
	.quad	0x3feb2c810773e25e              # double 0.84918261962509312
	.quad	0x3fc8620658cf3d8c              # double 0.19049147926714871
	.quad	0x3fd431dfacb7a0f0              # double 0.31554405085490966
	.quad	0x3fd52d04da08e84e              # double 0.33087273876629275
	.quad	0x3fd9c97f42970066              # double 0.40292340758242629
	.quad	0x3fddfbd00ee98272              # double 0.46849442917122197
	.quad	0x3fd564927b7ce67e              # double 0.33426343974461037
	.quad	0x3fe858ab885eb3a3              # double 0.76082398066283863
	.quad	0x3fd39077f1c0f2a0              # double 0.30569265946159341
	.quad	0x3fe9f34733efe8c0              # double 0.81094703811620406
	.quad	0x3fec60da158247ca              # double 0.88682274056395127
	.quad	0x3fe6081c9602dd12              # double 0.68849019335803718
	.quad	0x3fea91d6482222a9              # double 0.83030237282317387
	.quad	0x3fede3959691dbdb              # double 0.93403129013210717
	.quad	0x3fd38a5fcf351946              # double 0.30532069430445963
	.quad	0x3fe4be773abe0fe1              # double 0.64825021241312808
	.quad	0x3fed20f4f7ea36e9              # double 0.91027306004408814
	.quad	0x3fed3d1c99849eae              # double 0.91370992645257387
	.quad	0x3fee0e6f6c049677              # double 0.93926211449861696
	.quad	0x3fd9bec35db6563a              # double 0.40226825858676174
	.quad	0x3fc04d77459b47b0              # double 0.1273640718341631
	.quad	0x3fe4ba65a148ea3f              # double 0.64775353909437416
	.quad	0x3fd39f82b1436506              # double 0.30661074934830912
	.quad	0x3fea91278911430d              # double 0.83021904726965234
	.quad	0x3fc444a6ce1a78ec              # double 0.15834508002894354
	.quad	0x3febb03336cb35eb              # double 0.86525879575645825
	.quad	0x3fc8c02d6623b5f8              # double 0.19336478698043869
	.quad	0x3f935aef3ff64e60              # double 0.018901575354517752
	.quad	0x3fe5e01b2378a085              # double 0.68360669067352886
	.quad	0x3fdc46aece221cca              # double 0.44181413774681444
	.quad	0x3fe5750e50114547              # double 0.67053905141998704
	.quad	0x3feb36d83046add3              # double 0.85044488362239645
	.quad	0x3fdb7589fb2224d0              # double 0.42904901051276756
	.quad	0x3fd033fcb010e688              # double 0.25317303842494043
	.quad	0x3fe899c99dc4fb8c              # double 0.76877289594982434
	.quad	0x3feffeb962313b04              # double 0.99984425714669145
	.quad	0x3fd80afda5cb5a96              # double 0.37567082587103451
	.quad	0x3fecd85ee80f888d              # double 0.90141244243956609
	.quad	0x3fd96338fe2a0d02              # double 0.3966810686180936
	.quad	0x3fb7a75a470ea718              # double 0.092397348735769547
	.quad	0x3fe0f655bcd3995d              # double 0.53007017975032122
	.quad	0x3fe5a286e9514e4a              # double 0.67608972139209667
	.quad	0x3fc0a42f5f2474ac              # double 0.1300105299532438
	.quad	0x3fecf5b4e2b68514              # double 0.90499347953678688
	.quad	0x3fbc99523cc6eb10              # double 0.11171449645818776
	.quad	0x3fceb95d3e7949f8              # double 0.24003186750867633
	.quad	0x3fda355846b92ffa              # double 0.40950590998249903
	.quad	0x3fcf6b6b78ddfea0              # double 0.24546569253651729
	.quad	0x3feaa74f297cb9ac              # double 0.83292348959894502
	.quad	0x3fd801e8d2ecd7f0              # double 0.37511654470597389
	.quad	0x3fd636a5108f63a2              # double 0.34708525292585979
	.quad	0x3fe258ceefb25c34              # double 0.57334086242452154
	.quad	0x3fe894b5ddf9ddaa              # double 0.76815312723822626
	.quad	0x3fc90f7981d83684              # double 0.19578474845950578
	.quad	0x3fa1a8c546c947d0              # double 0.034490742579364686
	.quad	0x3fe47b73ba540f3d              # double 0.64006983177430465
	.quad	0x3fe7eb428d1703d2              # double 0.74746825749036305
	.quad	0x3fdedf93d5bf147c              # double 0.48239608644173138
	.quad	0x3fe10b66cec573df              # double 0.53264179596919436
	.quad	0x3fdc5af8a031c7aa              # double 0.44305244106282748
	.quad	0x3feaa48359947bf6              # double 0.8325821637735078
	.quad	0x3fe0a4b1e5c8a934              # double 0.52010435943274169
	.quad	0x3f97c5ede2fe6980              # double 0.02321597764930905
	.quad	0x3fe0ae5067d01665              # double 0.5212785747141423
	.quad	0x3febf4fbf2ff22d4              # double 0.87365529499319416
	.quad	0x3fea7f1d7a23ff74              # double 0.82801698546971502
	.quad	0x3feab852fdc6a32d              # double 0.83500051084147275
	.quad	0x3fd1ab44ffbfec5e              # double 0.27607846236759837
	.quad	0x3fe82bad212406de              # double 0.75533157799528872
	.quad	0x3fe41a7c5a02d504              # double 0.6282331235912868
	.quad	0x3fd79a582ac4585e              # double 0.36879543472730869
	.quad	0x3fe88d6e6b5073e5              # double 0.76726456603830384
	.quad	0x3fe694c063de4320              # double 0.70565814500341517
	.quad	0x3fe767d9a02904d6              # double 0.73142701417250566
	.quad	0x3feae9dadd7c8031              # double 0.84104674586342842
	.quad	0x3fe500dc26a6ea1e              # double 0.65635497616978333
	.quad	0x3fe8b20af829d8fa              # double 0.77173374623706015
	.quad	0x3fe51255474363a4              # double 0.65848792952157398
	.quad	0x3f7b69f064780300              # double 0.0066928282099076863
	.quad	0x3fe42f4b0801c6f3              # double 0.63077308238845686
	.quad	0x3fd28dd037e60ec4              # double 0.28990560015538969
	.quad	0x3fea0a22d43994ce              # double 0.81373731088810941
	.quad	0x3fea3a45d38d60d9              # double 0.8196133739357051
	.quad	0x3fe83fce25358270              # double 0.75778872744929338
	.quad	0x3feefeb70e3b67b8              # double 0.96859314708421262
	.quad	0x3feba72ab106cf11              # double 0.86415609908587687
	.quad	0x3fb024308ec668a8              # double 0.063052210671602382
	.quad	0x3fe7400712b3cd1d              # double 0.72656587269594619
	.quad	0x3fe28a649642997c              # double 0.57939366672216819
	.quad	0x3fefef28ad5ecf2c              # double 0.99794420110126713
	.quad	0x3fe7289537462ac3              # double 0.72370396419258787
	.quad	0x3f4d2dc77f9b2400              # double 8.9046708236495409E-4
	.quad	0x3fec9d07af428409              # double 0.8941687033694744
	.quad	0x3f81966a964ebd40              # double 0.0085876776809913346
	.quad	0x3fe1bee7075553ce              # double 0.55455352241789924
	.quad	0x3fd70d475cdc32b2              # double 0.36018547123311884
	.quad	0x3fd851233f2e71ec              # double 0.37995225114880671
	.quad	0x3f9abd48d01d8300              # double 0.02611268778071274
	.quad	0x3fe8e9160f9a4d77              # double 0.77845290229235686
	.quad	0x3fe926f056ebe91d              # double 0.7860032746969271
	.quad	0x3fd07dfb055b1be2              # double 0.25768924258266968
	.quad	0x3f76ac3c5684e700              # double 0.0055353505088591159
	.quad	0x3fd79b21dc4e7f68              # double 0.36884352220839967
	.quad	0x3fd2b323b1434164              # double 0.2921838027077881
	.quad	0x3feafcefe8755386              # double 0.84337611581814609
	.quad	0x3fd5ffc812cd88e2              # double 0.34373666607110753
	.quad	0x3fec75f1bf06c1a6              # double 0.88939750013201002
	.quad	0x3fe9f04cb7eb3234              # double 0.81058345719936264
	.quad	0x3fc7475bb360750c              # double 0.1818651796210492
	.quad	0x3fb2a4ac31a10b90              # double 0.072825204960322631
	.quad	0x3fc835765febedd8              # double 0.18913154300376678
	.quad	0x3fc7a50f53180b14              # double 0.18472472722358957
	.quad	0x3f9580f4f74c2a00              # double 0.020999744027941247
	.quad	0x3fe05f2d8b22c51d              # double 0.51161839652027974
	.quad	0x3fbca1c781f656b8              # double 0.11184355662256962
	.quad	0x3fe0c5559f7e962b              # double 0.52408867980256468
	.quad	0x3fe13760c3c40e84              # double 0.53801000819699185
	.quad	0x3fd1109fd2dc2b64              # double 0.26663966743278977
	.quad	0x3fee83cc58d1d99f              # double 0.95358865115740687
	.quad	0x3fdd67ceb07e39cc              # double 0.45946089969302473
	.quad	0x3fd6aac9aaa30172              # double 0.35417405761474818
	.quad	0x3fdd8bb46b3636e6              # double 0.46165190191173477
	.quad	0x3fea49e95a7ce3a5              # double 0.82152240441711355
	.quad	0x3fd7e57cecc54fe0              # double 0.37338183519500312
	.quad	0x3fe0e9427a3bc0b5              # double 0.52847408174240817
	.quad	0x3fd63b42e8f6f514              # double 0.34736702681023357
	.quad	0x3fd9adb50a28c392              # double 0.4012272452555915
	.quad	0x3fb216f1b23a2178              # double 0.070662599575490037
	.quad	0x3fcf3f93d9e51528              # double 0.24412773265263721
	.quad	0x3fd2e55bbe410f5a              # double 0.2952489240599242
	.quad	0x3fe36e3f8fccaf52              # double 0.60720804296350139
	.quad	0x3fd58ab06d47cb82              # double 0.33658991500777102
	.quad	0x3fe5b23acd3d6ef3              # double 0.67800655446941815
	.quad	0x3fe8d1d4f68a47a6              # double 0.7756142440068643
	.quad	0x3fe1bff6dcee56e9              # double 0.55468314314449885
	.quad	0x3fe00d0b4a4e1254              # double 0.50159229767502689
	.quad	0x3fe471ba4e640289              # double 0.63888278303791524
	.quad	0x3fef7e7e2e2b6bf9              # double 0.9841910268545454
	.quad	0x3fdd246ccddd4be4              # double 0.45534820655774255
	.quad	0x3fe25f02c623afe8              # double 0.57409800242521403
	.quad	0x3fc37e568738b80c              # double 0.15229302981009629
	.quad	0x3fd91f51eee72cf0              # double 0.39253662424444169
	.quad	0x3fde581ddcbad33c              # double 0.47412821345942624
	.quad	0x3fee994bece00b8d              # double 0.95621296181376325
	.quad	0x3fe7f19e3d67a1db              # double 0.74824439995887404
	.quad	0x3fa31aea4ca69e10              # double 0.037314721924584515
	.quad	0x3fd96639081b9484              # double 0.39686418334742535
	.quad	0x3fe0da384ced79a9              # double 0.52663817429475046
	.quad	0x3fe1839ac6b2ccf9              # double 0.54731501396454896
	.quad	0x3fd2529f793d5c2e              # double 0.28629290427983534
	.quad	0x3fe5f88da3f134b5              # double 0.68659097690546977
	.quad	0x3f9c7cd6ea448ea0              # double 0.027819974945613724
	.quad	0x3fe4c516d8112987              # double 0.64905874443620426
	.quad	0x3fe7b058983d604b              # double 0.74027662023855478
	.quad	0x3fd0127148af2828              # double 0.25112564180438079
	.quad	0x3fd1b8f6a29ec74c              # double 0.2769142711723489
	.quad	0x3fc8a985ce94f014              # double 0.19267342173577673
	.quad	0x3fc51a16ca80aca4              # double 0.16485867393325748
	.quad	0x3fe2f07942d2c2ee              # double 0.59185469676421376
	.quad	0x3fe8b7ae9565b581              # double 0.77242211512718495
	.quad	0x3fcf510a2e719b68              # double 0.24466063754808975
	.quad	0x3fd535f2cf85e834              # double 0.33141775384831651
	.quad	0x3fc1879c9f701488              # double 0.1369510439400623
	.quad	0x3fcd98471718e38c              # double 0.23120964649004028
	.quad	0x3fe9dffaec789d42              # double 0.80859132943889045
	.quad	0x3fe8abf5a4117f9b              # double 0.77099115414238228
	.quad	0x3fd59900b36d4158              # double 0.33746354601045914
	.quad	0x3fe7ec1a121125b0              # double 0.74757102516848839
	.quad	0x3fd1156ee1f6cee2              # double 0.26693317477041323
	.quad	0x3fe2a4476afc3382              # double 0.5825535859636235
	.quad	0x3fe4e25c958cd113              # double 0.65263203820225824
	.quad	0x3fee640eb2610d82              # double 0.94971403922720321
	.quad	0x3fe09ebf9dac1dfc              # double 0.51937847895982214
	.quad	0x3faa468781b930d0              # double 0.051319346032501323
	.quad	0x3fdf21a5113b7250              # double 0.48642851527055075
	.quad	0x3fe3fbf151439424              # double 0.62450471755858361
	.quad	0x3fc8aab27c06301c              # double 0.19270926528804544
	.quad	0x3fe8c906df3cde3f              # double 0.77453940964819157
	.quad	0x3fd5048544d00b82              # double 0.32840091438281871
	.quad	0x3fe4b73ee588fff9              # double 0.64736885863385318
	.quad	0x3f942ae083b03420              # double 0.019694812810531315
	.quad	0x3fdd3a7bd0a5be90              # double 0.45669455886579957
	.quad	0x3fef3eb9bbf4cea9              # double 0.97640692434511777
	.quad	0x3f90ecb6c2ab22e0              # double 0.016527991897222871
	.quad	0x3fe75e4c86facb6c              # double 0.73026110041824444
	.quad	0x3fe9d1c5bb0e24bc              # double 0.80685698065021638
	.quad	0x3feb9052952d9d9f              # double 0.86136750351299785
	.quad	0x3fee018a8dbf8aaa              # double 0.93768813786694705
	.quad	0x3fe9b90aa5f881ac              # double 0.80383808532865463
	.quad	0x3fdf17ae469d5064              # double 0.48582035919139899
	.quad	0x3fea6fa2c93e0e89              # double 0.82612742715032639
	.quad	0x3fed99e66b557fab              # double 0.92503663028400263
	.quad	0x3fdbb78dccb620ac              # double 0.43307824126578498
	.quad	0x3fdd3e5005deaaf8              # double 0.45692825864050191
	.quad	0x3fc629396de04414              # double 0.17313306679764706
	.quad	0x3fbf1c9966be3c80              # double 0.12153013952614522
	.quad	0x3fe9cf7fc2589e2f              # double 0.80657947500453087
	.quad	0x3fe5b02d9c6dfff8              # double 0.67775612404511687
	.quad	0x3fd16dafb6506bf6              # double 0.27231972507587388
	.quad	0x3fd33e9c2cd5ff8e              # double 0.30069641474255426
	.quad	0x3fecb58e1b0fa5f9              # double 0.89716248784424046
	.quad	0x3fcce76ed933a570              # double 0.2258127747111689
	.quad	0x3fa92af6b3baf430              # double 0.049155911864979251
	.quad	0x3fe9e762e27a411f              # double 0.80949539407632531
	.quad	0x3fea69d4a8e6ae63              # double 0.82541878689285075
	.quad	0x3fc3bfb78a05d200              # double 0.15428823699370753
	.quad	0x3fef9c4f87bc9632              # double 0.98783089171474203
	.quad	0x3f8a5c3cfc1fff40              # double 0.012871242946857486
	.quad	0x3fb2671d687345b0              # double 0.071885908127362397
	.quad	0x3fd296070cd00898              # double 0.29040695430024632
	.quad	0x3fe85cb63541293c              # double 0.76131735230709507
	.quad	0x3fd9361f8b2da392              # double 0.39392841903332354
	.quad	0x3feb9cec0fed6b8b              # double 0.86290553198647169
	.quad	0x3fdb3c40c30b51de              # double 0.42555254981314572
	.quad	0x3fe5ddf912bea477              # double 0.68334630642961158
	.quad	0x3fe10f52cdf37aaa              # double 0.53312053894827227
	.quad	0x3fef1f594c66cc74              # double 0.97257676050357
	.quad	0x3fceed6dc6590794              # double 0.24162075219106482
	.quad	0x3fe6f0de87743d13              # double 0.71690298515196316
	.quad	0x3fde02a87f1274d6              # double 0.4689122429789
	.quad	0x3fd25c72be625d7a              # double 0.28689259140215706
	.quad	0x3fec0619da7d0e64              # double 0.87574474977050131
	.quad	0x3fcccfc898635890              # double 0.22509105149101005
	.quad	0x3fdbd85de9840796              # double 0.43508098415633734
	.quad	0x3fe1294a33e0d0ba              # double 0.53629026539285651
	.quad	0x3fef29b512862bff              # double 0.97384122484197621
	.quad	0x3fc39aa025bf9710              # double 0.1531562980955461
	.quad	0x3fb01324660eea08              # double 0.062792086521689439
	.quad	0x3fea90cca62c0f7e              # double 0.83017570929995066
	.quad	0x3f8c44581f4160c0              # double 0.013802231267775134
	.quad	0x3f6eaf2f23a1a200              # double 0.0037456436812599581
	.quad	0x3fef701934c37e3c              # double 0.98243389420890236
	.quad	0x3fe3fa1023846cd7              # double 0.62427527367563129
	.quad	0x3fc0a7b802b2ce00              # double 0.13011837131271875
	.quad	0x3fdf8a415377c6d6              # double 0.4928134265056604
	.quad	0x3fe1fab07b32063f              # double 0.56185173093417251
	.quad	0x3fd3ac6a265fe3aa              # double 0.30739835498348589
	.quad	0x3feb50e02732f353              # double 0.85362250953731189
	.quad	0x3fe6cb6016484d81              # double 0.71232609130895252
	.quad	0x3fef679010d5050e              # double 0.98139193809052627
	.quad	0x3fd871726cb01abe              # double 0.38192425359776994
	.quad	0x3febda9f6fb8fb89              # double 0.87043735333269112
	.quad	0x3fef23343ea5db3c              # double 0.97304737316048983
	.quad	0x3fe04b315a4b341f              # double 0.50917880664349358
	.quad	0x3f8b2f509b7dce00              # double 0.013273839707585999
	.quad	0x3fe794fc06f20cd3              # double 0.73693658215088431
	.quad	0x3fe40e5c01b9223b              # double 0.62675285660322488
	.quad	0x3fcfa4d46fd14fac              # double 0.24721770725102254
	.quad	0x3fd0bad3f1355514              # double 0.26140307002545282
	.quad	0x3fda55d91af05fe2              # double 0.41148975020177947
	.quad	0x3fde02881d94c024              # double 0.46890452278876382
	.quad	0x3fc8753ce4e8dfcc              # double 0.19107781579236727
	.quad	0x3fe7e97dbbd04b65              # double 0.74725233728746032
	.quad	0x3fd96b77e0b602ba              # double 0.39718434280807069
	.quad	0x3fd2169f6442df34              # double 0.28263077536711312
	.quad	0x3fe8630ec2f1f658              # double 0.76209199977138109
	.quad	0x3fd518f9e325db04              # double 0.32964942152413834
	.quad	0x3fcdb9c9432c9578              # double 0.23223224430072853
	.quad	0x3fdc6d0227389e2c              # double 0.44415334539596318
	.quad	0x3fd54b351111c64c              # double 0.33271528880058976
	.quad	0x3fde49e46267c03c              # double 0.4732600174893411
	.quad	0x3fdff1c296bddb06              # double 0.4991308662496724
	.quad	0x3fdf4cf355efb95e              # double 0.48907168762425168
	.quad	0x3fee1d34b555a6f0              # double 0.94106517235669962
	.quad	0x3fe4e7c2cbd2d732              # double 0.65329112824722402
	.quad	0x3fea3776969c3d10              # double 0.81927041450572524
	.quad	0x3fe06aa98304ac81              # double 0.51302028264525756
	.quad	0x3fe29e33e96b5f50              # double 0.58181186284762454
	.quad	0x3fe4d7c27b97b628              # double 0.65133785380539155
	.quad	0x3fbb698835a25308              # double 0.10707904157090919
	.quad	0x3fe252f7cac501b9              # double 0.57262792209080893
	.quad	0x3fef3b449b6a768a              # double 0.97598486284887653
	.quad	0x3fda710757ae7558              # double 0.41314872324604357
	.quad	0x3fce84a139cc6a88              # double 0.23842253992264184
	.quad	0x3fda63be2a9062e0              # double 0.41233781963960148
	.quad	0x3fe1650dfe15d19f              # double 0.54358577371617745
	.quad	0x3fd79d1cc3340776              # double 0.36896437704864782
	.quad	0x3fd98006d636c9b2              # double 0.3984391300138227
	.quad	0x3fbfa9335e191718              # double 0.12367554709734596
	.quad	0x3fefb9e9f74b9533              # double 0.9914445714936505
	.quad	0x3fec05990d223f64              # double 0.87568333211127624
	.quad	0x3fc3def8b217ff18              # double 0.15524204917891704
	.quad	0x3fe4e4d4b3859c65              # double 0.65293345511316814
	.quad	0x3fd56a5c4858e39e              # double 0.33461672845037949
	.quad	0x3fe2f96047ceed6f              # double 0.59294141793308863
	.quad	0x3fec99ad759809af              # double 0.89375946967657238
	.quad	0x3fefc13dba7ae025              # double 0.99233900472518554
	.quad	0x3f978e2d8f2c3100              # double 0.023003303397715946
	.quad	0x3fe4a7701b6196b1              # double 0.64543919895068858
	.quad	0x3fdaf7fdda255c98              # double 0.42138620665850501
	.quad	0x3fd36ae242b38fdc              # double 0.30339867128190945
	.quad	0x3faf094bcfff4e70              # double 0.060617798939031853
	.quad	0x3fdcafecb74239b2              # double 0.44823758980137562
	.quad	0x3fda39c5bfcfd42a              # double 0.40977615100502141
	.quad	0x3fd367efcf2619cc              # double 0.30321879605653801
	.quad	0x3fed2d8036dd6323              # double 0.91180430141239233
	.quad	0x3fd81c37bb4a9a72              # double 0.37672227182557727
	.quad	0x3f4c1827eee46000              # double 8.5737180578160377E-4
	.quad	0x3feb1e89d5a60c67              # double 0.84747783401725207
	.quad	0x3fd4b42db25efab4              # double 0.32349722308201057
	.quad	0x3feca807902baa53              # double 0.89551141889871599
	.quad	0x3fb06b6950c723a0              # double 0.064138967724956419
	.quad	0x3fe1013a4e2b6868              # double 0.531399872469831
	.quad	0x3fee67706501324c              # double 0.9501268360850843
	.quad	0x3fd43890071c0b9a              # double 0.31595230764667692
	.quad	0x3fe7f10e519e5b0a              # double 0.74817577305916072
	.quad	0x3f892e565823e680              # double 0.012295412602259193
	.quad	0x3fef6e35b0e190fb              # double 0.98220333621114208
	.quad	0x3fa20b9ccd2ab690              # double 0.03524484638670089
	.quad	0x3fe873197677af2d              # double 0.76405022752940044
	.quad	0x3fea828f46794ca5              # double 0.82843745960635273
	.quad	0x3fe9f24b35fc2ec9              # double 0.81082687896692918
	.quad	0x3fe2fdfcbea0ae63              # double 0.59350430709805513
	.quad	0x3fb4d28beae63db8              # double 0.081337685440522445
	.quad	0x3febcedb2463470d              # double 0.86900097949021105
	.quad	0x3fe858d5e3e54a86              # double 0.76084417830345852
	.quad	0x3fcc48f8b72b8324              # double 0.22097691482397253
	.quad	0x3fdc607673e1442e              # double 0.44338761631394419
	.quad	0x3fd64578975f403c              # double 0.34799017698697177
	.quad	0x3fe215a6d8b8cd3c              # double 0.56514303520672327
	.quad	0x3fc0d05d3529a5a8              # double 0.13135876746973207
	.quad	0x3fee99626cc01964              # double 0.95622369041738553
	.quad	0x3fe0e2e68af786f3              # double 0.52769782201741433
	.quad	0x3fed4509b4fa3580              # double 0.91467748019356065
	.quad	0x3fb37c3b1fc669d0              # double 0.076114363915997573
	.quad	0x3fe9230d7cde6315              # double 0.78552889240663382
	.quad	0x3fc265020bb98d68              # double 0.14370751926899605
	.quad	0x3fb73387db4f9268              # double 0.090630045931513359
	.quad	0x3fe1d47864b74372              # double 0.55718631430691645
	.quad	0x3f82560dd5cdeec0              # double 0.0089531975624973503
	.quad	0x3fe58ff3471c5d7d              # double 0.67382205857113286
	.quad	0x3fda59c7dcaeab9c              # double 0.41172977972990465
	.quad	0x3fdf0475be5fa612              # double 0.48464721289801205
	.quad	0x3fbb66645a913690              # double 0.10703112803568104
	.quad	0x3fd7ccb0c1117818              # double 0.37186831335373105
	.quad	0x3fdd91bdc1b96464              # double 0.46202033918740981
	.quad	0x3fe2fd95ce43eebe              # double 0.59345522199824763
	.quad	0x3fbd24927d0f3368              # double 0.11383929780204272
	.quad	0x3fd15fc5b4197810              # double 0.2714704760345521
	.quad	0x3fea9967c8c3a0a4              # double 0.83122624599220218
	.quad	0x3fedb809572dec72              # double 0.92871539141869008
	.quad	0x3fcf19b526196a88              # double 0.24297203407589429
	.quad	0x3fe221e8aac011c7              # double 0.56663926458036762
	.quad	0x3feb6c9d2de6f1e4              # double 0.8570085426832148
	.quad	0x3fd3bfd973874eb0              # double 0.30858455926975648
	.quad	0x3fda41931386712e              # double 0.41025235087160439
	.quad	0x3fb5a1fa3e874e40              # double 0.084502830758816039
	.quad	0x3fd96aaafff3c83c              # double 0.39713549609507814
	.quad	0x3fe22715d36ab462              # double 0.56727114956232705
	.quad	0x3fc162e0588fe354              # double 0.13582996677703341
	.quad	0x3fec9d444d34f04e              # double 0.89419760779811397
	.quad	0x3fe526327ed1c59f              # double 0.66091274995249083
	.quad	0x3fefc636ffa7a6bf              # double 0.99294614727588015
	.quad	0x3fd11d82009c11be              # double 0.26742601451431003
	.quad	0x3fdafa3ada749ec8              # double 0.42152282079267112
	.quad	0x3fe51d2f33002102              # double 0.6598125454047763
	.quad	0x3fe3eef8428972d0              # double 0.62292111392488358
	.quad	0x3fd66921c70cd690              # double 0.35016674459925756
	.quad	0x3faecfacb20fb040              # double 0.060178181396481012
	.quad	0x3fedaa2d2461b325              # double 0.927023478563204
	.quad	0x3fd0df20b94fc80c              # double 0.26361864182320072
	.quad	0x3fe33e8343c9d868              # double 0.60138095130856772
	.quad	0x3fd7f49626cc88a4              # double 0.37430337704621253
	.quad	0x3feb41f77b7f3109              # double 0.85180257912136981
	.quad	0x3fd98afadc115a70              # double 0.39910766116137264
	.quad	0x3fe7f1625c6b0895              # double 0.74821584749612902
	.quad	0x3fa36c1dddcee610              # double 0.037934239698596994
	.quad	0x3fd02ba68fe2a020              # double 0.25266422320646775
	.quad	0x3febbfde93381cf6              # double 0.86717156175373478
	.quad	0x3fe97f42c132695d              # double 0.79678476079724769
	.quad	0x3fe1494e64ab5a27              # double 0.5401985136221058
	.quad	0x3fdc2048672082f0              # double 0.43947038718219655
	.quad	0x3fdbf3dd07525702              # double 0.43675924029354019
	.quad	0x3fde666cf39c0954              # double 0.47500156202308585
	.quad	0x3fe56c6f57a20909              # double 0.66948668590365046
	.quad	0x3fe51b1790e62382              # double 0.65955713558751961
	.quad	0x3fe2b2d13ef48e55              # double 0.58432829185444268
	.quad	0x3fde680127c6240e              # double 0.47509793171099168
	.quad	0x3fe09ac0c1049fc4              # double 0.51889074038353344
	.quad	0x3fef216b0c3f824a              # double 0.97282936470225789
	.quad	0x3fb6e793b4b9b370              # double 0.08947108423462935
	.quad	0x3feb4a5f21873fd1              # double 0.85282856510638727
	.quad	0x3fa92b675d6441d0              # double 0.049159269476266254
	.quad	0x3fc1da0ad7cd14f8              # double 0.1394666246143641
	.quad	0x3fb25f99989b21c0              # double 0.071771240002937553
	.quad	0x3feb8df50ebb28d1              # double 0.861078766605056
	.quad	0x3fd56b879d3914c8              # double 0.33468809465223304
	.quad	0x3fcd405363cb5274              # double 0.22852556584134087
	.quad	0x3fa960b17851b010              # double 0.049565835893048527
	.quad	0x3fddaa23607efd00              # double 0.46350941108171639
	.quad	0x3fd7f220b7dbe926              # double 0.374153308439093
	.quad	0x3fe76d82416fb1bf              # double 0.73211777477768425
	.quad	0x3fcb760b0a215118              # double 0.21453989023815079
	.quad	0x3faf879fe188b050              # double 0.061581608086584638
	.quad	0x3fcd80e171205594              # double 0.23049562476869012
	.quad	0x3f5985dbee698600              # double 0.0015577934042528829
	.quad	0x3fda669b35e82758              # double 0.41251259102192739
	.quad	0x3fe8fe4bfefdfb9c              # double 0.78104209712170158
	.quad	0x3fefb94794eb3158              # double 0.99136714063346698
	.quad	0x3fddf8706eb4c870              # double 0.46828852473402716
	.quad	0x3fe56c0a1b94941b              # double 0.6694384134940522
	.quad	0x3f86025f6b4b7800              # double 0.010746713125111995
	.quad	0x3fd989733a794d90              # double 0.39901428900085367
	.quad	0x3fc66bf751e005a0              # double 0.17516986367995191
	.quad	0x3fefc5abd06b711f              # double 0.99287977892848633
	.quad	0x3fe0d2f7c0370dd6              # double 0.52575290243151573
	.quad	0x3fc017d7c732159c              # double 0.12572762705182761
	.quad	0x3fe7f0359ae5b783              # double 0.74807243588814776
	.quad	0x3fecc35fedc110ef              # double 0.89884945331917077
	.quad	0x3fc6cf2c5a28cc60              # double 0.17819742586434284
	.quad	0x3fdc4347de7f69b8              # double 0.44160649040500344
	.quad	0x3fdaaaf7ec29fa7e              # double 0.41668508589638253
	.quad	0x3fc6ebc3061e4bac              # double 0.17906987951991249
	.quad	0x3fe0ecfe06ea86ba              # double 0.52892972327045773
	.quad	0x3fbf7ddea50566a8              # double 0.12301436928592102
	.quad	0x3fba7d01c91977c8              # double 0.10346995505957957
	.quad	0x3fea6728d5d1e150              # double 0.82509271394432382
	.quad	0x3fe2803fcad57c4d              # double 0.57815541854859875
	.quad	0x3fd4ed3d8feaf560              # double 0.32698000959847739
	.quad	0x3feebd1afe07c210              # double 0.96058415999692848
	.quad	0x3fef95422dace7f7              # double 0.98697003289203066
	.quad	0x3fe3704b2ad9d935              # double 0.6074577176030177
	.quad	0x3fe2a111d1a6a65f              # double 0.58216181704956316
	.quad	0x3fe5aa9f80f9b2d8              # double 0.67707801046852989
	.quad	0x3f8bc2a35199c580              # double 0.013554836204294984
	.quad	0x3fe219b3e3948795              # double 0.56563753556496243
	.quad	0x3fc18b72c01ba45c              # double 0.13706812267563151
	.quad	0x3fe2338ce2759d1d              # double 0.56879276495320463
	.quad	0x3fd2399b6f11cc24              # double 0.28476606222756318
	.quad	0x3f9a587c77bacd60              # double 0.025728173072548599
	.quad	0x3fdf5c0540592762              # double 0.48999148639688006
	.quad	0x3feda084261d1ee3              # double 0.92584426349727911
	.quad	0x3fe1221541067ae3              # double 0.53541052532440536
	.quad	0x3fc9f8a9d4c140f0              # double 0.20290110481665335
	.quad	0x3fec18789b3cc7fe              # double 0.87798719711122408
	.quad	0x3fe2bf69868fb3c2              # double 0.58586574822913229
	.quad	0x3fe1272bd999f280              # double 0.5360316514994139
	.quad	0x3fe9e3cc46e5bf9f              # double 0.80905736777457438
	.quad	0x3fec3ce60a1992fc              # double 0.88243391010891469
	.quad	0x3fed5b1ab699fae6              # double 0.91737113632538292
	.quad	0x3fd98cf28f7ff114              # double 0.39922775281571998
	.quad	0x3fd0c3c81898080a              # double 0.26194956208939912
	.quad	0x3fcfb2f62032c524              # double 0.24764896938499092
	.quad	0x3fc93049c7b53c58              # double 0.19678613902439923
	.quad	0x3fe3eb3bea2611a1              # double 0.62246509296578634
	.quad	0x3fd30ac655058df4              # double 0.29753263762378812
	.quad	0x3fdc3d71cf247c18              # double 0.44125027874719214
	.quad	0x3fed09d6c512ec74              # double 0.9074510430431375
	.quad	0x3fdaf297b40f1cce              # double 0.42105667671098679
	.quad	0x3fea6b27756c6278              # double 0.82558033880475445
	.quad	0x3fe20743768289d3              # double 0.56338666101901891
	.quad	0x3fe2a732a1977e40              # double 0.58290988503353702
	.quad	0x3fe8db6183ca0a55              # double 0.77677989711839734
	.quad	0x3fd71c978e2d2644              # double 0.36112011799250276
	.quad	0x3fe90a41241e7d93              # double 0.78250176481735634
	.quad	0x3fe94f91a2669c32              # double 0.79096299857054064
	.quad	0x3fe8b38f0dbae8be              # double 0.77191879922545303
	.quad	0x3fe441ac2e34656f              # double 0.63301667236662051
	.quad	0x3fe57c33368eb03e              # double 0.6714111390661015
	.quad	0x3fee79a36d5860b5              # double 0.95234843594064122
	.quad	0x3fe9f475df01d832              # double 0.81109136158079864
	.quad	0x3fda86b236ddf51e              # double 0.41447120054347575
	.quad	0x3fde24a214c024c4              # double 0.47098590876028035
	.quad	0x3fe365cc387e348b              # double 0.60617648156916581
	.quad	0x3fbfb80e538e7048              # double 0.12390222110701743
	.quad	0x3fcea3eab47b3ef4              # double 0.2393773442513446
	.quad	0x3fd1633067c1f3dc              # double 0.27167902119236742
	.quad	0x3feb03a4427fe092              # double 0.84419453609645445
	.quad	0x3fd0ecc2b37ba776              # double 0.26445071723593772
	.quad	0x3fefaf5b4a27cef7              # double 0.99015583499428216
	.quad	0x3fe21160d65c190a              # double 0.56462137095584919
	.quad	0x3fe714f5c5ae22fa              # double 0.72130859956186488
	.quad	0x3fe2100c1e060274              # double 0.56445890296897838
	.quad	0x3fce2638ce01a6b0              # double 0.2355414396181934
	.quad	0x3fe37dc65565a1d8              # double 0.6091033618841335
	.quad	0x3fb25c358da51268              # double 0.071719500619175869
	.quad	0x3fd765088d2a33b4              # double 0.36554158959989569
	.quad	0x3fea7d2651c90654              # double 0.82777706121141614
	.quad	0x3fa86130114301b0              # double 0.047616483790537401
	.quad	0x3fe0274230976b51              # double 0.50479230394862828
	.quad	0x3fe20ae70adda9f4              # double 0.56383087274781341
	.quad	0x3fd63c4ef07a9956              # double 0.34743092998760028
	.quad	0x3fe2e3bbb3319518              # double 0.59029946326032512
	.quad	0x3fe572831a3a84f6              # double 0.67022853014728301
	.quad	0x3fe085f70931bdec              # double 0.51635314746630234
	.quad	0x3fcc111863c7b588              # double 0.21927170631481041
	.quad	0x3fe02b35eb1a5048              # double 0.50527473371995146
	.quad	0x3fe5973a6d59f033              # double 0.67471047742538415
	.quad	0x3fea580ab3c28357              # double 0.82324729070033242
	.quad	0x3fc53777dbe5e828              # double 0.16575525510035161
	.quad	0x3f639e83d85be200              # double 0.0023949217892289543
	.quad	0x3fa49ea4c79bfc10              # double 0.040272855154391718
	.quad	0x3fcdf04b4865382c              # double 0.23389569315844605
	.quad	0x3fe1181c2bb26b27              # double 0.53419312033233701
	.quad	0x3fe0875cb8f4fa3c              # double 0.51652370571520789
	.quad	0x3fe0a0e4d4e251ac              # double 0.51964036539952962
	.quad	0x3fb8979bae35d878              # double 0.096063356429881952
	.quad	0x3fe3350e85f17588              # double 0.60022665177136592
	.quad	0x3fe93d7bd7d4aebb              # double 0.78875534204913522
	.quad	0x3fed91e10633036d              # double 0.9240574952201378
	.quad	0x3fdbf25820f8bee6              # double 0.4366665193547149
	.quad	0x3fe2dfe491a8ffc5              # double 0.58983066987274724
	.quad	0x3fef096a448e2bc5              # double 0.96989930524556966
	.quad	0x3fdb4a39e8d633a0              # double 0.4264054082676072
	.quad	0x3feaf89cc76a0477              # double 0.84284819553444279
	.quad	0x3feea5d19741ed1c              # double 0.95774154226765828
	.quad	0x3fd21b826a9abdfc              # double 0.28292904291717469
	.quad	0x3fefb40f724cb2f9              # double 0.99073002170697954
	.quad	0x3fe4c4cd62c26b73              # double 0.64902371682124593
	.quad	0x3fd65b8a7b869aaa              # double 0.34933721602502976
	.quad	0x3fdea2ef6ad3394e              # double 0.47869477684152606
	.quad	0x3fe62254c453e6fe              # double 0.69169081063520799
	.quad	0x3fcbc00536f052f4              # double 0.21679749662930414
	.quad	0x3fe7f60e39e99795              # double 0.74878608046559469
	.quad	0x3fe4ff13f238fc69              # double 0.65613744076825953
	.quad	0x3fd3f62a2d40fe94              # double 0.31189970416378654
	.quad	0x3f8be35068c97dc0              # double 0.013617160985801458
	.quad	0x3fec5ce3147d6b4c              # double 0.88633874895035935
	.quad	0x3fe9257fa31427b0              # double 0.78582746363939826
	.quad	0x3fb7f77a005e4ee0              # double 0.093619942750872819
	.quad	0x3fdd9fcdd6e65dfc              # double 0.46287866579356751
	.quad	0x3fa600369c841e80              # double 0.04297037754627997
	.quad	0x3fde7f96438f98ea              # double 0.47653729055163174
	.quad	0x3fe56b12b6c6dfd4              # double 0.669320446954766
	.quad	0x3fd29e221c448314              # double 0.29090168724546683
	.quad	0x3fd86d3cc688292e              # double 0.38166732204321618
	.quad	0x3fef0721d74aba0e              # double 0.96962062882613664
	.quad	0x3fd5a656b0f15324              # double 0.33827750472601026
	.quad	0x3fa04392178610a0              # double 0.031765523311180432
	.quad	0x3fec4354bd81f5ce              # double 0.88321911824430699
	.quad	0x3fd2e314f512e124              # double 0.29510997708304587
	.quad	0x3fc621d6a1c98f5c              # double 0.17290766620419162
	.quad	0x3fd0341511e933d2              # double 0.25317885159603037
	.quad	0x3feeab9561275a0b              # double 0.95844525313697326
	.quad	0x3fe1bf7816b593f9              # double 0.55462269244583162
	.quad	0x3fc49a12e98ce358              # double 0.16095196155381575
	.quad	0x3fcd28bdda461f40              # double 0.22780583532243703
	.quad	0x3fe1a6170ada32e5              # double 0.55152465934369543
	.quad	0x3fee505a65822b7e              # double 0.94730872941850897
	.quad	0x3feeb80af99818b5              # double 0.95996617077687196
	.quad	0x3fee7abf66ad1d45              # double 0.95248384527159458
	.quad	0x3fe7d1721e50050c              # double 0.74431711121010968
	.quad	0x3fdafc1dbc4978b6              # double 0.42163794886972583
	.quad	0x3fefccb95eca3522              # double 0.99374073518416517
	.quad	0x3fe6339b2106ed58              # double 0.69379955721471287
	.quad	0x3fedcb825facfc3b              # double 0.93109244047798911
	.quad	0x3fe359d35e5f85c9              # double 0.60471504623654326
	.quad	0x3fe85006cc519ee2              # double 0.75976886659642795
	.quad	0x3fec04a8e4e27923              # double 0.87556881622348148
	.quad	0x3fba280d6ae288f8              # double 0.10217365130896272
	.quad	0x3fc34201d8e38ed0              # double 0.15045188036230295
	.quad	0x3fe04ed5e6530d05              # double 0.50962347970235611
	.quad	0x3fd80db581295b0a              # double 0.37583673108513038
	.quad	0x3f443ead723b5800              # double 6.1782330564130739E-4
	.quad	0x3fd91abdee906e28              # double 0.39225719735415732
	.quad	0x3fe56f7955412b9e              # double 0.66985766078265718
	.quad	0x3fd8c3d6d312bfa6              # double 0.38695307362194808
	.quad	0x3fe46c5fdb3b4eb8              # double 0.6382293016308358
	.quad	0x3fe853080f49e1e2              # double 0.76013567911200774
	.quad	0x3fe0b48c091f6733              # double 0.52203943044444256
	.quad	0x3fecb4c940a7d301              # double 0.89706862094917039
	.quad	0x3fe126b5575d614e              # double 0.53597514213019237
	.quad	0x3fd5ac651df60334              # double 0.33864715505483223
	.quad	0x3fe9c6a7a424dbf6              # double 0.80549985942241054
	.quad	0x3fe122e31055e6e8              # double 0.53550866308725364
	.quad	0x3fae20cde7011b60              # double 0.058844026993532195
	.quad	0x3fe46468eecf1d5f              # double 0.63725706713095664
	.quad	0x3feb07d4e8058448              # double 0.84470601383885313
	.quad	0x3feb25906429ad9c              # double 0.84833545268104471
	.quad	0x3feb2b400195b909              # double 0.84902954396764685
	.quad	0x3fe91ab99afe8d1a              # double 0.78451233169872414
	.quad	0x3fb4f7a5b5358548              # double 0.08190379785584867
	.quad	0x3fe07da51a517447              # double 0.51533751621503476
	.quad	0x3fd3d43120e06438              # double 0.30982616625402981
	.quad	0x3feba6b432d185db              # double 0.86409959722021357
	.quad	0x3fe84d85b0bdd04f              # double 0.75946316261116376
	.quad	0x3fd202c66963dce0              # double 0.28141937534333117
	.quad	0x3fed141a3cc3b95c              # double 0.9087039171989022
	.quad	0x3fe0dcbeb8774fb3              # double 0.5269464114048702
	.quad	0x3fcf08187ee8e3b8              # double 0.242434560744895
	.quad	0x3fdffd7fa5010898              # double 0.49984732736278081
	.quad	0x3feb235aa5b69002              # double 0.84806568494650514
	.quad	0x3fe6d33a8b09f344              # double 0.71328475147274917
	.quad	0x3fe4922e1040f527              # double 0.64284423040922867
	.quad	0x3fe9b37bfa4091bf              # double 0.80315970303904993
	.quad	0x3fdf28d316e0873a              # double 0.48686673387611601
	.quad	0x3fe24ded862e5c5c              # double 0.5720126744007632
	.quad	0x3fcac02a91633f60              # double 0.20898944949157805
	.quad	0x3fc06b5fa40b7c18              # double 0.12827678213122407
	.quad	0x3feccfa96fcbbdbb              # double 0.90034934840325975
	.quad	0x3fed1f3dc40591fb              # double 0.91006363187312844
	.quad	0x3fe49d7f804b503c              # double 0.64422583634814812
	.quad	0x3fe21437db808480              # double 0.5649680411480773
	.quad	0x3fcf9845fb6b5b60              # double 0.24683451439224324
	.quad	0x3fcf06d18a03da7c              # double 0.24239558447853315
	.quad	0x3fd202ad861e1ed2              # double 0.28141344163348692
	.quad	0x3fc9d73b3b754628              # double 0.2018808403322947
	.quad	0x3fc73a989201f6c4              # double 0.18147570733338203
	.quad	0x3fdb72e92eafb9d4              # double 0.42888860282155616
	.quad	0x3fe9c7c7eaa07c41              # double 0.80563731980863207
	.quad	0x3fe1e1c4ae610e77              # double 0.55880960520194278
	.quad	0x3fe1a0e1e500a5c1              # double 0.55088896491104589
	.quad	0x3fea3d44457c2957              # double 0.8199788434151668
	.quad	0x3fcffa8e105f2eb0              # double 0.24983382987408254
	.quad	0x3febf66d192c7090              # double 0.87383131901471423
	.quad	0x3feb0e1a988c5e1b              # double 0.84547166628448467
	.quad	0x3fdcf386daf8ac84              # double 0.45236369499134121
	.quad	0x3feb8bdaf0bd2a53              # double 0.86082217234918301
	.quad	0x3fdce779b802d072              # double 0.45162814111541316
	.quad	0x3feec38730a36ebe              # double 0.96136817454995316
	.quad	0x3fdc3283c707a830              # double 0.44058317600741059
	.quad	0x3fdafe41037dcbaa              # double 0.42176843014675092
	.quad	0x3fd59a0259fd595a              # double 0.33752497470904574
	.quad	0x3fd4fbd4f3d5cc0a              # double 0.32787059604669422
	.quad	0x3fed8ae12762e645              # double 0.92320306484834502
	.quad	0x3fe05cc3e44addbf              # double 0.5113238772236669
	.quad	0x3fdc184a57b30b14              # double 0.43898256840127314
	.quad	0x3fdb5a6027fdfec6              # double 0.42739108949170335
	.quad	0x3f9238b986307fc0              # double 0.017794512572549825
	.quad	0x3fe1672f259834f7              # double 0.54384572355925698
	.quad	0x3fa478ccf4716310              # double 0.039984135474418037
	.quad	0x3fdbea21b5eb193c              # double 0.43616526380027998
	.quad	0x3fcbaeb3416a7cf4              # double 0.21626892751826399
	.quad	0x3feed118d3ce7578              # double 0.96302453392460929
	.quad	0x3fd7eef80479d870              # double 0.37396049916367868
	.quad	0x3fd621235fc53d94              # double 0.34577259399972005
	.quad	0x3fdd6190a816dd48              # double 0.45907989897701329
	.quad	0x3fe239a6252668af              # double 0.56953723197809392
	.quad	0x3fc02e0dc6ecfffc              # double 0.12640545094654942
	.quad	0x3fa8b906bdb2aa50              # double 0.048286638885958966
	.quad	0x3fda4ccfc1a685ec              # double 0.41093820487193855
	.quad	0x3fe6afb4f04a4a4d              # double 0.708948582951345
	.quad	0x3fe710ffb4ec43d8              # double 0.72082505547052289
	.quad	0x3fe50406d6114315              # double 0.65674154100460902
	.quad	0x3fe4ed6007f63e91              # double 0.65397645525986736
	.quad	0x3fe0c633ae49bca5              # double 0.52419456520683083
	.quad	0x3feea7f92958c46e              # double 0.95800455165421083
	.quad	0x3fc73ac94a8d6ffc              # double 0.18148151531465817
	.quad	0x3feff6b953583bbb              # double 0.99886766699079687
	.quad	0x3fd7d8894597c760              # double 0.37259132190876265
	.quad	0x3fce0755b0fdeb4c              # double 0.23459883825474959
	.quad	0x3fd0a7b5a8db4c44              # double 0.26023618211656108
	.quad	0x3fdc4c37cefdfda2              # double 0.44215197767331393
	.quad	0x3fe94f26df7e3fac              # double 0.79091209078796032
	.quad	0x3fbcee53c8dbca50              # double 0.11301158574841819
	.quad	0x3fe832a8768a5449              # double 0.75618384506618341
	.quad	0x3fe401083fac9ca4              # double 0.62512600361232673
	.quad	0x3fe83d480d6e2412              # double 0.75748064635365808
	.quad	0x3fd137d148163960              # double 0.26903183021285848
	.quad	0x3fd6e0e90dc2ddee              # double 0.35747743934504583
	.quad	0x3fd3b66ca8e6da2c              # double 0.30800930494607104
	.quad	0x3fb1e4ee51f80e90              # double 0.069899458896595101
	.quad	0x3feab72e38de8dd5              # double 0.8348609076241994
	.quad	0x3f8223abb901e880              # double 0.0088570991358560835
	.quad	0x3fe30cc04d7f81fa              # double 0.59530654083579226
	.quad	0x3fc2a0fc6b2cd334              # double 0.14553790314826076
	.quad	0x3fe1bc615c78ef71              # double 0.55424564419761968
	.quad	0x3fea597da7d396da              # double 0.82342417505852983
	.quad	0x3fee34781e093155              # double 0.94390493265522457
	.quad	0x3fa813565c32c900              # double 0.047022532229123115
	.quad	0x3fe61db98eb55cf2              # double 0.69112851975196876
	.quad	0x3fed783ea5b778f7              # double 0.92092831007519649
	.quad	0x3fce7554a0e284c8              # double 0.23795564513878831
	.quad	0x3fdbb701029f3f18              # double 0.4330446744543095
	.quad	0x3fd8c5a303786942              # double 0.38706279124166454
	.quad	0x3fe9a91ec1b22f31              # double 0.80189454871422161
	.quad	0x3fcdb32fd1cfa4f8              # double 0.23203084702189591
	.quad	0x3f86822a209691c0              # double 0.010990456695091022
	.quad	0x3fccd72276c84eec              # double 0.22531538772511028
	.quad	0x3fee0531dbabf80d              # double 0.93813412575377841
	.quad	0x3f89f9446305aa00              # double 0.012682470580974048
	.quad	0x3fdb27ec6192d0cc              # double 0.42431172875081979
	.quad	0x3fd40a5c2906b5f8              # double 0.31313232428041671
	.quad	0x3fe6c3586d755fae              # double 0.71134587648974956
	.quad	0x3fd5d41695b05f14              # double 0.34106983774243926
	.quad	0x3fe0fb433c90c1b7              # double 0.53067170933905217
	.quad	0x3fd3af4d583f602c              # double 0.30757459276128674
	.quad	0x3fba696c9b6e45c8              # double 0.10317114634224034
	.quad	0x3fc1f7e609137d48              # double 0.14037776415987424
	.quad	0x3fc0d7f72489694c              # double 0.13159074100515011
	.quad	0x3fb05ed840b72958              # double 0.063947215842892091
	.quad	0x3fe777a0f458a804              # double 0.73335311626328847
	.quad	0x3fc17a2839d21e6c              # double 0.13654043982772934
	.quad	0x3fe27e1e0b27349a              # double 0.57789518526410011
	.quad	0x3fe59bd8feb3af17              # double 0.67527436968291255
	.quad	0x3fed75c82d76462a              # double 0.92062767867372952
	.quad	0x3faaa19ef87b9f30              # double 0.052014320213685017
	.quad	0x3fce0498f34eb188              # double 0.23451530342334714
	.quad	0x3fc0a5576a6c6014              # double 0.1300458211560459
	.quad	0x3fe93adaad3cda5c              # double 0.7884343513058627
	.quad	0x3f63f94723f58900              # double 0.0024382008993352189
	.quad	0x3fe63416708e931f              # double 0.6938583563211046
	.quad	0x3fcb73ffe9a61cec              # double 0.21447752865444814
	.quad	0x3fdad60570c9ce58              # double 0.41931282057268993
	.quad	0x3fd6afa150c2eb74              # double 0.3544696129499052
	.quad	0x3fe83435ccdf7a28              # double 0.75637331022500565
	.quad	0x3fe4dbbc44dd0719              # double 0.6518231720913007
	.quad	0x3fdb7cc001c2e3ba              # double 0.42948913738251415
	.quad	0x3fed1f78a86d6b23              # double 0.91009171386699383
	.quad	0x3feff2576f224f0d              # double 0.99833270746100455
	.quad	0x3fe6b96d25d0dfd3              # double 0.71013505350037531
	.quad	0x3fab9d5200b31860              # double 0.053934633813285116
	.quad	0x3fea983320eb81cd              # double 0.83107906751325233
	.quad	0x3fcb2191eeb6a5ec              # double 0.21196197658473126
	.quad	0x3fe7ef95b261df82              # double 0.74799618568702919
	.quad	0x3fe57a568d7d290b              # double 0.67118384966423272
	.quad	0x3fcd631ae44dfe24              # double 0.22958694598854479
	.quad	0x3fe37e537ae2ed00              # double 0.60917066575294143
	.quad	0x3fd971fb07114d58              # double 0.39758182230180728
	.quad	0x3fe74d88037cc730              # double 0.72821427041183107
	.quad	0x3fdfd21f0edff79e              # double 0.49719978764175632
	.quad	0x3fe66536bd339993              # double 0.69985520318441485
	.quad	0x3febeb585a8c1540              # double 0.87247865376472333
	.quad	0x3fe962d0beffa9bd              # double 0.79331242851667805
	.quad	0x3fe912c1188e96df              # double 0.78353934093749078
	.quad	0x3fc40192415a4e30              # double 0.15629795256664769
	.quad	0x3fefcc84aac399a2              # double 0.99371560432773642
	.quad	0x3fe25fc8023f886f              # double 0.57419205130669393
	.quad	0x3f937377906831e0              # double 0.018995159329323275
	.quad	0x3fedb66a4d3959a8              # double 0.92851748545472379
	.quad	0x3fcd600bc58af7b0              # double 0.22949359079023912
	.quad	0x3fd2f308849cc732              # double 0.29608357382231809
	.quad	0x3fe5923342d3c22a              # double 0.67409670879539374
	.quad	0x3fe454e27c7b3e3a              # double 0.63536190331246378
	.quad	0x3fd9f52bc7506a08              # double 0.40558905090588881
	.quad	0x3fd2c3907dad040c              # double 0.2931863047888903
	.quad	0x3fe9a4be228b3265              # double 0.80136019465278407
	.quad	0x3fca58542aa18480              # double 0.2058205803068951
	.quad	0x3fe89a7fcdc606ee              # double 0.76885976972718395
	.quad	0x3fe5cb24cd88b2e7              # double 0.68104782241206585
	.quad	0x3feeaeeb55d1340d              # double 0.95885245095416993
	.quad	0x3fb0b579d0f8db98              # double 0.065269101637439042
	.quad	0x3f8c227b919dddc0              # double 0.013737645512931773
	.quad	0x3fedf2e2ddc79967              # double 0.93589919391960741
	.quad	0x3fea204473aaa131              # double 0.8164388903724441
	.quad	0x3fa6be2d28301000              # double 0.044419680743914114
	.quad	0x3fea8649deed2ad1              # double 0.82889264622039083
	.quad	0x3fdbab51cc22a124              # double 0.43233151373944367
	.quad	0x3fb199b6a25b8248              # double 0.068751730573702763
	.quad	0x3fce4c0bf1285d44              # double 0.23669575953747757
	.quad	0x3fcef8ae4073433c              # double 0.24196413180336573
	.quad	0x3fefdbc94fec9727              # double 0.99557939157668762
	.quad	0x3fec4b50d3cb1622              # double 0.88419381490593119
	.quad	0x3fefc83af96d3ecd              # double 0.99319218364868222
	.quad	0x3fd2a036d4269a86              # double 0.29102869718409641
	.quad	0x3fe1e18cc864d4c9              # double 0.55878295077732176
	.quad	0x3fce166ed3a89020              # double 0.2350595983017465
	.quad	0x3fc02b307d75e734              # double 0.12631803632739891
	.quad	0x3fc3dbc138a46ee4              # double 0.15514388337839258
	.quad	0x3fcd0351aec89b68              # double 0.22666379007679471
	.quad	0x3feac98f2627a1f5              # double 0.83710439159500416
	.quad	0x3fd47694357b83dc              # double 0.31973748419664871
	.quad	0x3fec1729ee8d223c              # double 0.87782761184741486
	.quad	0x3fd315450b219ecc              # double 0.29817319953006627
	.quad	0x3fe6f7c9eb513c34              # double 0.71774764976897254
	.quad	0x3facf470c9f1cdc0              # double 0.056552433635171706
	.quad	0x3fe65f2ac96df15f              # double 0.69911708203975909
	.quad	0x3fec2b1a521b9f65              # double 0.88026157414149664
	.quad	0x3fdec8aa66fcb7f0              # double 0.48099765832273444
	.quad	0x3fdef45cdb551c6c              # double 0.48366471690355328
	.quad	0x3fe71aea0c4c26bb              # double 0.72203543092583489
	.quad	0x3fd4f421d247b62e              # double 0.32740064177673645
	.quad	0x3fe367a3a75de92a              # double 0.60640127838931801
	.quad	0x3fee0ae758087dd8              # double 0.9388310164831024
	.quad	0x3fedb8f4158e01af              # double 0.92882732591538353
	.quad	0x3fcaebd1b4a16078              # double 0.21032162971346557
	.quad	0x3fdd1ddb819594b2              # double 0.4549473538848573
	.quad	0x3fe464a9de22a90a              # double 0.6372880304891464
	.quad	0x3feccf29c86590a8              # double 0.90028847827899927
	.quad	0x3fcd13445ed66be8              # double 0.22715048437825591
	.quad	0x3fda78638a08a1d8              # double 0.41359795074325012
	.quad	0x3feeab8df6cb35ef              # double 0.95844171716606563
	.quad	0x3fda271c133dc666              # double 0.40863706473382988
	.quad	0x3fefd780a2fa09a3              # double 0.99505645591152747
	.quad	0x3fe0909607433e65              # double 0.51764966410150903
	.quad	0x3fc9e9003430ddb4              # double 0.20242312000639873
	.quad	0x3feefd1b37390cf4              # double 0.96839676652635242
	.quad	0x3fef77034ad82ce3              # double 0.98327793710759825
	.quad	0x3fd3d92d9b2272b2              # double 0.31013050222262983
	.quad	0x3fe41c2e5171a79e              # double 0.62844005496048161
	.quad	0x3fefbcf204b02ea2              # double 0.99181462207475968
	.quad	0x3fd1a842dd725f80              # double 0.27589484811459641
	.quad	0x3fc58e36d2ad67c4              # double 0.16840253149967854
	.quad	0x3fec3b97e21c1cec              # double 0.88227457201074122
	.quad	0x3fdf0c1fa76e7d52              # double 0.48511496878378069
	.quad	0x3fddb3980a227a76              # double 0.46408654203143074
	.quad	0x3fa4c56bf18b69a0              # double 0.040568707690641803
	.quad	0x3fe5f796df7e68cb              # double 0.6864733090508478
	.quad	0x3fd646ebf981dc52              # double 0.34807872167534015
	.quad	0x3fd064404576f108              # double 0.25611883910802691
	.quad	0x3fed109129bc54e3              # double 0.90827234412668323
	.quad	0x3fb5aec26ec94868              # double 0.084697868392397901
	.quad	0x3fd55bfe134dc1ba              # double 0.3337397755158481
	.quad	0x3fe6f68fd4ccc7b5              # double 0.71759788095936605
	.quad	0x3fe1f1f6d363c3ed              # double 0.56078664099743281
	.quad	0x3feddd6c2a214718              # double 0.93327911594880941
	.quad	0x3fe6f1aa2d797ba5              # double 0.71700009233233131
	.quad	0x3fecca1cd06471a6              # double 0.89967194272644657
	.quad	0x3fd351d620a89a18              # double 0.30186989964787037
	.quad	0x3fe91dbf7bd3f975              # double 0.7848813456073872
	.quad	0x3fefbf8ff31b4844              # double 0.99213407022239907
	.quad	0x3fd40bc5a7d9a752              # double 0.31321851150152213
	.quad	0x3fea7759605861cd              # double 0.82706898515157834
	.quad	0x3fa815fa30926aa0              # double 0.047042673520271139
	.quad	0x3fe0d5c4129d897f              # double 0.52609447131935372
	.quad	0x3feaae3269ed8a7a              # double 0.83376427353898852
	.quad	0x3fe162f3634dcb85              # double 0.54332894702234624
	.quad	0x3fcc915811aa1cf0              # double 0.22318554747128116
	.quad	0x3fe820ab40baa964              # double 0.75398790972148477
	.quad	0x3feb2417f55afcf4              # double 0.84815595551472577
	.quad	0x3fe7828db022ccd7              # double 0.73468670274305736
	.quad	0x3fe859bb8de51410              # double 0.76095369066081453
	.quad	0x3feb3f1197f7fe8c              # double 0.85144881898300317
	.quad	0x3fec181706eec880              # double 0.87794066766788603
	.quad	0x3fcbdb063859a3dc              # double 0.21762159110519874
	.quad	0x3fe2e9ca85f7a568              # double 0.59103895345212454
	.quad	0x3fe167095d024f2d              # double 0.54382770696472493
	.quad	0x3fb4194c508442e8              # double 0.078511018426307921
	.quad	0x3fe73793bd7ceacd              # double 0.72553431519858125
	.quad	0x3fd073c842af3ff8              # double 0.25706678878941558
	.quad	0x3feb29d43466bbb5              # double 0.84885606989506945
	.quad	0x3fed61353e33b6c9              # double 0.91811620854215292
	.quad	0x3f9d7aa5d4af1c40              # double 0.028788176637842833
	.quad	0x3feb21e204b48b6c              # double 0.84788609427446948
	.quad	0x3fee838d5104e1fe              # double 0.95355859588659064
	.quad	0x3fe72181959065e9              # double 0.7228401108906698
	.quad	0x3fe274171e774673              # double 0.57667118025183439
	.quad	0x3fd7b85ddef2d94e              # double 0.37062784931494697
	.quad	0x3fc1743ebfc6b50c              # double 0.13636001934120434
	.quad	0x3fe7a1ecee6e757d              # double 0.73851629799507601
	.quad	0x3fb7822f0d9ff310              # double 0.091830197168700999
	.quad	0x3fe9de15380f3eb4              # double 0.80835972737437211
	.quad	0x3fd25cac06c221b2              # double 0.28690624866478764
	.quad	0x3f9792cf1659a6e0              # double 0.023020969142101388
	.quad	0x3fe5610a7646078a              # double 0.66809580898574095
	.quad	0x3fd308ef7a275f8c              # double 0.29742037705499835
	.quad	0x3fee7997fd9558bb              # double 0.95234298255925098
	.quad	0x3fef9d507507a0da              # double 0.98795340402014209
	.quad	0x3fed16ebf66426ac              # double 0.90904806254657932
	.quad	0x3fe795e04c0772d9              # double 0.73704542970116471
	.quad	0x3fe80bc2e9ac3a21              # double 0.75143571509562801
	.quad	0x3fe4c217514d26de              # double 0.64869275931524917
	.quad	0x3fe9454dcf4838ba              # double 0.78970995411670875
	.quad	0x3fdacd3584cad2f2              # double 0.41877496688839166
	.quad	0x3fe2886999dd886b              # double 0.57915191699818303
	.quad	0x3fe45e9688cfe30e              # double 0.63654638978104727
	.quad	0x3feb39869318f9a9              # double 0.85077217798225491
	.quad	0x3fbc7c26dbfc80c8              # double 0.11126940603981261
	.quad	0x3fd9480e474dc032              # double 0.39502293551686585
	.quad	0x3fc2c3992393b92c              # double 0.14659418332252849
	.quad	0x3fc7e95ba8f7e434              # double 0.18680902243048225
	.quad	0x3fd68e7b6d6587dc              # double 0.35244641955625666
	.quad	0x3feff01a20f38134              # double 0.99805933414248793
	.quad	0x3fe74bf6b8146d92              # double 0.72802291825375876
	.quad	0x3fbf43af5bc14680              # double 0.12212654104339471
	.quad	0x3f93d2e45995a2a0              # double 0.019359176605038386
	.quad	0x3fa9820b6eda23c0              # double 0.049820287019492593
	.quad	0x3fc2289fd144887c              # double 0.14186475484990868
	.quad	0x3fe701728522aec4              # double 0.7189266777326897
	.quad	0x3fef1033313fcf8c              # double 0.97072753542896483
	.quad	0x3fe2ff3de84dd453              # double 0.59365744945410837
	.quad	0x3fdba11d26492b60              # double 0.43170860995149063
	.quad	0x3fe1cb150195d12a              # double 0.5560402899705299
	.quad	0x3feccc06cecef49e              # double 0.89990558998364967
	.quad	0x3fe7e783a3751b34              # double 0.74701101231844413
	.quad	0x3fe1c9357adf7354              # double 0.55581163405040934
	.quad	0x3fc22d0929b4dec8              # double 0.14199938332034479
	.quad	0x3fe6f2df939326ea              # double 0.71714762519078801
	.quad	0x3feb0ba3279a96f6              # double 0.84517057166223597
	.quad	0x3fc392dc56c0bbdc              # double 0.15291933284740267
	.quad	0x3fdd979fa378ab64              # double 0.46237936939239987
	.quad	0x3fe80fad5c02a89d              # double 0.75191371889856706
	.quad	0x3fe9eb52628c72f2              # double 0.80997580764559829
	.quad	0x3fe771897540043b              # double 0.73260949039843781
	.quad	0x3fd5ad0ba317c122              # double 0.33868685652761787
	.quad	0x3fd4ca4c1a402424              # double 0.32484724582224289
	.quad	0x3fe2ad6511d80251              # double 0.58366635785211873
	.quad	0x3fd38dda1369d55e              # double 0.30553295036164296
	.quad	0x3fed6ec82dc5a6af              # double 0.91977318706377342
	.quad	0x3fea1f72bdef01b9              # double 0.81633889290247119
	.quad	0x3fa2d48fd75557e0              # double 0.036777968440830255
	.quad	0x3fc202fe11145900              # double 0.14071632226904995
	.quad	0x3fd3ae41c9c623ca              # double 0.3075108023118075
	.quad	0x3fcf7ac3efe51234              # double 0.24593400205243798
	.quad	0x3fe9a1d6cfe251de              # double 0.80100575067859459
	.quad	0x3fe7b5e7946d2ec8              # double 0.74095515241193599
	.quad	0x3fcfb86bf1603808              # double 0.24781560216837328
	.quad	0x3f9ed2da6a992440              # double 0.030101216083753934
	.quad	0x3fd2f37a58c277de              # double 0.29611071269925826
	.quad	0x3fcdd4d4a8478e78              # double 0.23305757729314158
	.quad	0x3fdf9f280a1d7ab4              # double 0.49408913600738491
	.quad	0x3fe07186a3bcf39a              # double 0.51385814647766215
	.quad	0x3fd6c02a37de8a46              # double 0.35547881561266015
	.quad	0x3fdb83d8b1eb1ea2              # double 0.42992226958129198
	.quad	0x3fe1d6ec192c14e1              # double 0.55748562733120022
	.quad	0x3fe14f455ce6451f              # double 0.54092662949020454
	.quad	0x3fe954e202766a92              # double 0.79161167603463611
	.quad	0x3fe1de37bf6de83b              # double 0.55837619198360444
	.quad	0x3fc2955364f86820              # double 0.14518206052963567
	.quad	0x3fc06377368fd8a0              # double 0.12803545154719576
	.quad	0x3f8f31ba342ce540              # double 0.015231566159502052
	.quad	0x3fe5ad3662b90d71              # double 0.67739409715470178
	.quad	0x3fe51ef2f92219c4              # double 0.66002796801404218
	.quad	0x3f9a690a8082dbe0              # double 0.025791324704837026
	.quad	0x3feb8ad73ec25540              # double 0.86069834001197165
	.quad	0x3fd783fa6375afa2              # double 0.36743030274259969
	.quad	0x3fefcecabe744498              # double 0.99399316022949602
	.quad	0x3fe160e77e6aeab8              # double 0.54307913485475634
	.quad	0x3fc480dc9b0b2e24              # double 0.16018254824153744
	.quad	0x3fee4810d168b440              # double 0.94629708194919004
	.quad	0x3fe3e8416488dc45              # double 0.6221014941755888
	.quad	0x3fe170bc8b7191cf              # double 0.54501178011974527
	.quad	0x3fdf3d745a4faba6              # double 0.48812588519529709
	.quad	0x3fcdb89fc0edc7d8              # double 0.2321967784915262
	.quad	0x3fcd650105e6a19c              # double 0.22964489734773685
	.quad	0x3fe8be8e3b3eb039              # double 0.77326118060364657
	.quad	0x3fc1df3a9b533930              # double 0.13962490638955094
	.quad	0x3fd54f1b2f219552              # double 0.33295325853972202
	.quad	0x3fd7c3c1fd06befa              # double 0.37132310590366979
	.quad	0x3fbc6885dd5e4be0              # double 0.11096989302158944
	.quad	0x3fe933be0fe69dcc              # double 0.78756621461519094
	.quad	0x3fd6e4a647a9fe1a              # double 0.35770565985146308
	.quad	0x3fcd289d1e1ba220              # double 0.22780193300356277
	.quad	0x3fb583420cd0b700              # double 0.084034088257535444
	.quad	0x3fc8a0aa5cdbf114              # double 0.19240312132013371
	.quad	0x3f7c9555e09c6500              # double 0.0069783548913389115
	.quad	0x3fa28bd253d47330              # double 0.03622300408662793
	.quad	0x3f837635fa92d1c0              # double 0.0095028130620925521
	.quad	0x3fe3bf1a9fc9d893              # double 0.6170781250828149
	.quad	0x3fd01145d35d20a4              # double 0.25105424538606713
	.quad	0x3fd9cd926c2b4a4a              # double 0.40317211688412569
	.quad	0x3fe66d92040045a2              # double 0.70087528974015734
	.quad	0x3fc4fd396eeaed90              # double 0.1639777938452025
	.quad	0x3fe8d789ee82ed6f              # double 0.7763108881403421
	.quad	0x3fd79dca75713566              # double 0.36900578946082019
	.quad	0x3fd227759ba4a718              # double 0.28365841102150702
	.quad	0x3fe477c52f64cca5              # double 0.63962039238540014
	.quad	0x3fdecb7718edb7f4              # double 0.48116853174621999
	.quad	0x3fda75fa4655ff78              # double 0.41345078343146424
	.quad	0x3fdf59c07f07d64a              # double 0.48985302357991556
	.quad	0x3fea12b79af4e329              # double 0.81478481545409409
	.quad	0x3fb76095669fb7c8              # double 0.091317498736059766
	.quad	0x3fea9bbbc555e1e7              # double 0.83151043455205531
	.quad	0x3fc42a340e851b94              # double 0.15753794392568621
	.quad	0x3fe1b76303375e29              # double 0.55363608005695142
	.quad	0x3fefc9248306aaac              # double 0.99330354300521639
	.quad	0x3f8bcd6ee8299b40              # double 0.013575426540410995
	.quad	0x3fe92d54d5c291b9              # double 0.78678361654288331
	.quad	0x3fef996ac6bddc34              # double 0.98747767273642361
	.quad	0x3fe5a03b060b83d6              # double 0.67580939465198742
	.quad	0x3faeebab0a8b1ab0              # double 0.060391755139382552
	.quad	0x3feec354e6377be1              # double 0.9613441940708719
	.quad	0x3fe46b726a2965b7              # double 0.63811608061512615
	.quad	0x3fb70a647f261a80              # double 0.090002327959249228
	.quad	0x3fa337d3d61c4eb0              # double 0.037535304914994128
	.quad	0x3fdd43585cdfeb42              # double 0.45723542280000029
	.quad	0x3fb3e05e22a89a00              # double 0.077642329656192999
	.quad	0x3fb96ed7b35c7ef0              # double 0.099347573556311408
	.quad	0x3fceace8fce80b60              # double 0.23965179776140655
	.quad	0x3fc6f9d45fc6fb30              # double 0.17949919392227676
	.quad	0x3fe1175d4c94e796              # double 0.53410210568766803
	.quad	0x3fc6acc59c7f2554              # double 0.17714758054197921
	.quad	0x3fd36cd4aefe6406              # double 0.30351750458936555
	.quad	0x3fed6a009209e8ca              # double 0.91918972514329167
	.quad	0x3fd870844941fdbe              # double 0.38186747697906387
	.quad	0x3fefeda33a889fa0              # double 0.99775849754677281
	.quad	0x3fe680c1f047c80b              # double 0.70321747712864757
	.quad	0x3fd2a5541c4c9572              # double 0.29134085429753676
	.quad	0x3f712631c709b280              # double 0.0041868156846304183
	.quad	0x3fd5f703363288c6              # double 0.34320144932474894
	.quad	0x3fee1485f653806b              # double 0.94000528441030207
	.quad	0x3fd28b3d5712aa16              # double 0.28974851134503987
	.quad	0x3fe9cff3da2ed719              # double 0.80663483251439339
	.quad	0x3fc97267ca3f27d8              # double 0.19880387664153321
	.quad	0x3fd808d1d6125f48              # double 0.37553831010290084
	.quad	0x3fe5da20617a74ca              # double 0.68287676848162815
	.quad	0x3fe2aa0ae1a2800e              # double 0.58325714177408527
	.quad	0x3fdf126bb4787a0e              # double 0.48549931167681926
	.quad	0x3fe8191dfcd83368              # double 0.75306605704973339
	.quad	0x3feb491ee6f08cd4              # double 0.85267586808586282
	.quad	0x3fe9eada57941354              # double 0.80991856675300732
	.quad	0x3fdd0574c6dac5ec              # double 0.45345801753418757
	.quad	0x3fcd72dd94df15e4              # double 0.23006791848290142
	.quad	0x3fd1ecf638939ee4              # double 0.28008800053656402
	.quad	0x3fce8659a6630fc8              # double 0.2384750425754858
	.quad	0x3fe0c283ba4b339f              # double 0.52374445329188635
	.quad	0x3fe9bec4a871a23d              # double 0.80453713320918718
	.quad	0x3fdf2ab7b90e35a2              # double 0.48698227950884576
	.quad	0x3fefabe708443a53              # double 0.9897341882186289
	.quad	0x3feb130b367847d4              # double 0.84607468260423468
	.quad	0x3fe74068ede759aa              # double 0.72661253419464811
	.quad	0x3fe25e984151b396              # double 0.57404721028943828
	.quad	0x3fea3b4972bcf9bf              # double 0.81973717126657408
	.quad	0x3fd99c19883b5bce              # double 0.40015257171529306
	.quad	0x3fdcf57d2fc5e446              # double 0.45248346009572449
	.quad	0x3fe7926027ce1eff              # double 0.73661811613507655
	.quad	0x3fe01d083c863367              # double 0.50354396649491384
	.quad	0x3fd4015088768760              # double 0.31258023573365357
	.quad	0x3fd9d028c5a684c0              # double 0.40333003331950223
	.quad	0x3fc361299a608874              # double 0.15140266454642737
	.quad	0x3fde1118c655b4bc              # double 0.4697935044158148
	.quad	0x3fd43af0d50d5734              # double 0.31609745794172572
	.quad	0x3fabf52ce9f85260              # double 0.054604915200034965
	.quad	0x3fe4119ca89eadcc              # double 0.62714989598810567
	.quad	0x3fe6aceef6e38233              # double 0.70861004085970192
	.quad	0x3fd673945182aa9c              # double 0.35080440483094733
	.quad	0x3fdaf2377fa13adc              # double 0.42103373969886859
	.quad	0x3fe672c785a31fe3              # double 0.70151115513817464
	.quad	0x3fbc347900a93b80              # double 0.11017566934718381
	.quad	0x3f64252669929e00              # double 0.002459120773511847
	.quad	0x3fe23018b492c355              # double 0.56837115543576522
	.quad	0x3fc802b05f20204c              # double 0.18758206028747038
	.quad	0x3fd5458053ae359c              # double 0.33236702129291884
	.quad	0x3fd026b67e435178              # double 0.25236284571044321
	.quad	0x3fd7cba4672e3918              # double 0.37180433346010622
	.quad	0x3fb57660fd469e70              # double 0.083837568125653794
	.quad	0x3fe2ae1114a1ebdc              # double 0.58374837903772514
	.quad	0x3fee55c7bd31d0a7              # double 0.94797121955936781
	.quad	0x3fe11ba4594f7c35              # double 0.53462426608519442
	.quad	0x3fed64e8fa4bcce2              # double 0.91856812368351037
	.quad	0x3fd60367b5844f90              # double 0.34395783163312732
	.quad	0x3fb420084b894300              # double 0.078613775674295283
	.quad	0x3fe8ac411ecd871c              # double 0.77102714554004903
	.quad	0x3fdc0c2976f25024              # double 0.43824230781433671
	.quad	0x3fee1274b6e0a438              # double 0.9397529193712506
	.quad	0x3fc5ff5df8e00cc8              # double 0.17185568477734692
	.quad	0x3fe17b40c72d2517              # double 0.54629553701048195
	.quad	0x3fd59cc349a2af4c              # double 0.33769304457631644
	.quad	0x3fe56f5aef5db9aa              # double 0.6698431658858699
	.quad	0x3fda1530a8024f96              # double 0.40754333884364635
	.quad	0x3fe26dbf63708e7a              # double 0.57589692518054325
	.quad	0x3fef557b293a9ada              # double 0.97918470432781679
	.quad	0x3fee2942aaeffa33              # double 0.94253667246068173
	.quad	0x3febb5b85fd7c5af              # double 0.86593264312084794
	.quad	0x3fc986c1715d9974              # double 0.19942491565161513
	.quad	0x3fc898c3af2249e4              # double 0.19216199923955835
	.quad	0x3fd0d408f7eadf60              # double 0.26294159136477013
	.quad	0x3fd53108fe4574f2              # double 0.3311178668134992
	.quad	0x3fe820596418daac              # double 0.75394887495243301
	.quad	0x3fdbde89120ed240              # double 0.43545748485056279
	.quad	0x3fde85afcdc309bc              # double 0.47690959066326477
	.quad	0x3fc45074fd4e30d4              # double 0.1587053524821217
	.quad	0x3fea02765e5eec41              # double 0.81280058318896675
	.quad	0x3fd16f0a0dc28e64              # double 0.27240229934452587
	.quad	0x3fe3ede57456defd              # double 0.62279007647063589
	.quad	0x3fe6393ee10c470d              # double 0.69448799090079805
	.quad	0x3fe3d15dd66b0b8e              # double 0.61930744055313069
	.quad	0x3fcde2261290f804              # double 0.23346401125485283
	.quad	0x3fa91460904bebb0              # double 0.048983590711905278
	.quad	0x3fea58d51ee0fb88              # double 0.8233438113310152
	.quad	0x3fba642bf0728570              # double 0.10309099788948628
	.quad	0x3fd73844fba44e5c              # double 0.36280941557308721
	.quad	0x3fe79d43c7c391b3              # double 0.73794735924143706
	.quad	0x3fe4428ddbe14fa1              # double 0.63312428422294798
	.quad	0x3fc2f0f78e97a4ec              # double 0.14797872984426108
	.quad	0x3fdde1c47138a870              # double 0.46690474564332529
	.quad	0x3fe34e6f4dd4a3b5              # double 0.60332455827039289
	.quad	0x3fdbe3c38361b582              # double 0.4357765944503954
	.quad	0x3fe81ca57b1c7fcf              # double 0.75349687619381622
	.quad	0x3fd058dd3ae7977a              # double 0.25542383911521649
	.quad	0x3fe98a62bd8efeb9              # double 0.79814278624686275
	.quad	0x3fe14e8047ed5627              # double 0.54083265350590615
	.quad	0x3fe11a8dd9b73c4d              # double 0.53449146769151812
	.quad	0x3fecb361b729e43f              # double 0.89689718031070942
	.quad	0x3fe4a2737989a1a5              # double 0.64483045327965682
	.quad	0x3f84ce38747d9e00              # double 0.010158959441198157
	.quad	0x3fe79fbfad3d5f1d              # double 0.73825057826886431
	.quad	0x3fb1ff9d30dbade0              # double 0.070306610515835199
	.quad	0x3fede8b4ff52f8a4              # double 0.93465661876668493
	.quad	0x3fe90b9304c46ab2              # double 0.78266287737945661
	.quad	0x3fc4619f95ef8344              # double 0.15922922917436655
	.quad	0x3fe67b31f89e81e1              # double 0.70253847654754165
	.quad	0x3fddff2562f66300              # double 0.46869787849713873
	.quad	0x3fd9a763da64c654              # double 0.40084167792801861
	.quad	0x3fedca568a8817b8              # double 0.93094946915584043
	.quad	0x3fdca1ccecb4f7ea              # double 0.44737551799687358
	.quad	0x3fdb648a7778eeb4              # double 0.42801152865625203
	.quad	0x3fef07d36622ec08              # double 0.96970529507177705
	.quad	0x3fe5573cf1cf8a13              # double 0.66689917782452068
	.quad	0x3fdb31b9e874c8de              # double 0.42491004658508114
	.quad	0x3fe9414755a6b78a              # double 0.78921858528859556
	.quad	0x3fda1e97596ebcba              # double 0.40811713918351311
	.quad	0x3feb9a48fd2773b8              # double 0.86258363193666465
	.quad	0x3fca197d5ad62c58              # double 0.20390288291341352
	.quad	0x3fe2608635431cce              # double 0.57428274538769997
	.quad	0x3fd1720506b6bb06              # double 0.27258420615810086
	.quad	0x3fea8e0ae44890c2              # double 0.82983917795765927
	.quad	0x3fd81eb12323efa0              # double 0.37687328750302562
	.quad	0x3fd9a013e46908ae              # double 0.40039536767666106
	.quad	0x3fc4aefc29ab66a8              # double 0.16159011873860618
	.quad	0x3fe91bd5b0fd1c7e              # double 0.7846477944193706
	.quad	0x3fcc1f5cb89dd7e8              # double 0.21970709814530598
	.quad	0x3fec8970f773b6f9              # double 0.89177749948950613
	.quad	0x3fe443cde2aa2283              # double 0.63327688475062904
	.quad	0x3fd8b1ffe3dc7774              # double 0.3858642316061982
	.quad	0x3fe00c23c44c0cd5              # double 0.50148189868232385
	.quad	0x3fe935dbf118ae8e              # double 0.78782460297721157
	.quad	0x3fe914e283d53d48              # double 0.78379941700578915
	.quad	0x3fba8c90269623c0              # double 0.10370732252171333
	.quad	0x3fc005b8ee46e6ec              # double 0.12517463335625878
	.quad	0x3feec2536c338389              # double 0.96122141964961926
	.quad	0x3fab8295e52ff4e0              # double 0.053730663516015076
	.quad	0x3fddd2e85edb8c76              # double 0.46599778426588701
	.quad	0x3fe800a591e93f01              # double 0.75007894991173896
	.quad	0x3fbfdbf471dfa9a0              # double 0.12444999485129538
	.quad	0x3fecdc8e34efe79c              # double 0.9019232782295492
	.quad	0x3fc6bc3ee3235360              # double 0.17761980143282141
	.quad	0x3fa85541a73ea820              # double 0.047525455155963181
	.quad	0x3fde63cceb6440dc              # double 0.47484133708441134
	.quad	0x3fecbd018499cdb7              # double 0.89807201288788618
	.quad	0x3fe6f2084cd78c5f              # double 0.71704497345161744
	.quad	0x3fa55020f0a4e5c0              # double 0.041626958251480328
	.quad	0x3fe4986a9869e360              # double 0.64360551613127015
	.quad	0x3fd9d14a2fb09a3a              # double 0.40339903504574048
	.quad	0x3fcf84bc608088e8              # double 0.24623827659622255
	.quad	0x3fead5a7eca4a74f              # double 0.83858104915018739
	.quad	0x3fd145a7b0a801fa              # double 0.26987640620794162
	.quad	0x3fe0b4e5d801cfcc              # double 0.52208225430376265
	.quad	0x3fe34bce75e5bf38              # double 0.60300372149320136
	.quad	0x3fd610b038d00222              # double 0.34476857708071595
	.quad	0x3fb901b05b1bdd50              # double 0.097682020419474158
	.quad	0x3fc1f0536c00b6a0              # double 0.14014666341374937
	.quad	0x3fca7c09a4c5b280              # double 0.20691032929916631
	.quad	0x3fe8e95b3ee1fa0b              # double 0.77848589212209285
	.quad	0x3f96841e0a0e84a0              # double 0.021988362659275951
	.quad	0x3fe99cd92602aa04              # double 0.80039651321322979
	.quad	0x3fd8ec6611f68c10              # double 0.38942863229948532
	.quad	0x3fd625b67de1b208              # double 0.34605181019904352
	.quad	0x3fe0f56b6e84c662              # double 0.52995845399545893
	.quad	0x3fb06233b1058cc8              # double 0.063998442381080101
	.quad	0x3fd97a12dee8d13a              # double 0.39807578819751976
	.quad	0x3fd8ce328dbb4776              # double 0.38758529511425566
	.quad	0x3fd71979b7c4161c              # double 0.36092989869971048
	.quad	0x3feaae6da4498343              # double 0.8337925156339242
	.quad	0x3fe5fbf8a51e858e              # double 0.68700821161125858
	.quad	0x3fd4989aaceacb82              # double 0.32181422125284354
	.quad	0x3fdc76ef17d4dc5a              # double 0.44475915267270738
	.quad	0x3fbd57dcd8bee650              # double 0.11462192813532934
	.quad	0x3fe31073615e8c86              # double 0.59575814263770677
	.quad	0x3f5960234c1b8a00              # double 0.0015487999630116045
	.quad	0x3fcfa6b739e72b74              # double 0.24727526023192647
	.quad	0x3fea7f20842e088c              # double 0.82801843468065916
	.quad	0x3fe788c485a6058b              # double 0.73544527152277916
	.quad	0x3fec6d080266adb5              # double 0.88830948323214065
	.quad	0x3fea136bbfd816be              # double 0.81487071485090445
	.quad	0x3fe201c6735f3564              # double 0.56271669896674981
	.quad	0x3fe85cb204b98c53              # double 0.76131535456478117
	.quad	0x3fee5169ed004139              # double 0.94743820466286544
	.quad	0x3fd2e2bce9c0417c              # double 0.2950889857029535
	.quad	0x3fedcc686580d4b6              # double 0.93120212387898138
	.quad	0x3fec4cd582572813              # double 0.88437915284271396
	.quad	0x3fed36639eb4cd1f              # double 0.91288929936709795
	.quad	0x3fe42e99c887572d              # double 0.63068856397396689
	.quad	0x3fba07fea58449b8              # double 0.10168448964058185
	.quad	0x3fb0b5316d174bf0              # double 0.065264786847634815
	.quad	0x3fe503fbfe582edb              # double 0.65673637081769287
	.quad	0x3fc3aa559dbc15c8              # double 0.1536356945218087
	.quad	0x3fdc960d023396a8              # double 0.44665837492935134
	.quad	0x3fd753bd06cc3c6a              # double 0.36448598541114186
	.quad	0x3fe8db735eac7b9f              # double 0.77678841105431562
	.quad	0x3fe3916528ed6931              # double 0.61149843209867616
	.quad	0x3fbe829bd2b5a890              # double 0.11918043035771775
	.quad	0x3fc0dd2b5fe77c30              # double 0.13174955542396694
	.quad	0x3fc499d1f5c68818              # double 0.16094421864278341
	.quad	0x3fd84afbf0355362              # double 0.37957666833727022
	.quad	0x3feaf6a11a101cc2              # double 0.84260611620347725
	.quad	0x3fb1cee8307058c0              # double 0.069563400102512496
	.quad	0x3fe635dac96dea89              # double 0.69407405225440855
	.quad	0x3fd4e4930544bcaa              # double 0.32645106806280444
	.quad	0x3febfd561c3a02ba              # double 0.87467484963425268
	.quad	0x3fcfc831fd2414ec              # double 0.24829697475812595
	.quad	0x3fe3c8c9b0713fd5              # double 0.61826023541834252
	.quad	0x3fd94fe0cfb7679a              # double 0.39550037655646408
	.quad	0x3fec8dcb4656fbde              # double 0.89230884302366653
	.quad	0x3fdad97d489b7bd6              # double 0.4195244988495096
	.quad	0x3fd2255737e56c7a              # double 0.28352909525501213
	.quad	0x3f8c9b037dd5ff00              # double 0.013967540052135075
	.quad	0x3fe781d1e9dcd80b              # double 0.73459716488173521
	.quad	0x3fbd77728475df68              # double 0.11510387166879144
	.quad	0x3fd8d24ca692f662              # double 0.38783565775870532
	.quad	0x3fdf0a4163106006              # double 0.48500094103064872
	.quad	0x3feb13c9e40d84f0              # double 0.84616560498775861
	.quad	0x3fe2a49a5c2e4fb1              # double 0.58259313587267603
	.quad	0x3fe5c106a9c0d2e7              # double 0.67981274752545751
	.quad	0x3fd0159874fa1f16              # double 0.25131808684862855
	.quad	0x3fc4ae1d14c7f1f0              # double 0.16156352534007068
	.quad	0x3fc76b3f4efe2c68              # double 0.18296042782853594
	.quad	0x3fefd255a13c112c              # double 0.9944255971063618
	.quad	0x3fbdd5059e4ffbf8              # double 0.11653170695352333
	.quad	0x3fcc45c769a14948              # double 0.22087948472705876
	.quad	0x3fe77e8ebcd75c32              # double 0.73419892199570413
	.quad	0x3fedaf414384892e              # double 0.92764342486433349
	.quad	0x3fe8c7e3070ef1f9              # double 0.77440024736966884
	.quad	0x3fecb1a4ededee67              # double 0.89668508978452344
	.quad	0x3fd4e0aa95615582              # double 0.32621254527960997
	.quad	0x3fd996fbe4fdaae8              # double 0.39984032976523887
	.quad	0x3fe217b3b6bb1fd6              # double 0.56539331140174443
	.quad	0x3fbc9df33139ea50              # double 0.1117851252728681
	.quad	0x3fcc37d10d8b5c5c              # double 0.22045338784548363
	.quad	0x3fe40c58f62e27e1              # double 0.62650726396645606
	.quad	0x3fea2a5ae90f894d              # double 0.81767030257859974
	.quad	0x3fe6e1316421cadc              # double 0.71498937184363909
	.quad	0x3fe1142a4457fe85              # double 0.53371156071075687
	.quad	0x3fe2814efc468c44              # double 0.57828473351072107
	.quad	0x3fe9b5d72ef7d945              # double 0.80344733403652724
	.quad	0x3fcbeb7a4e40a8e0              # double 0.21812371083189586
	.quad	0x3fe39add45e79101              # double 0.61265433934434566
	.quad	0x3fb267470bae8d38              # double 0.071888389923107421
	.quad	0x3fe681a7086ddb89              # double 0.70332671781840006
	.quad	0x3fe4ae202b93a78e              # double 0.64625557433213188
	.quad	0x3fd83a92a4e92214              # double 0.37857500176008441
	.quad	0x3fe28934563124c9              # double 0.57924858888977682
	.quad	0x3fe8c1d3fc4c7d44              # double 0.7736606528959915
	.quad	0x3fdf1a5fc1c926dc              # double 0.48598474430455751
	.quad	0x3fc6fa3303c5c278              # double 0.17951047596172365
	.quad	0x3fede68afeb5b4f7              # double 0.93439244983679159
	.quad	0x3fc2d9ef90c66344              # double 0.14727587288941824
	.quad	0x3fe502ce4385df8f              # double 0.65659249485087112
	.quad	0x3fb0be4b87e7ca50              # double 0.065403671913182082
	.quad	0x3febfea87e987cac              # double 0.87483620382035587
	.quad	0x3fdd639e07416606              # double 0.45920515736142453
	.quad	0x3fecf1063fd33079              # double 0.90442192521869835
	.quad	0x3fd15a796d23f79e              # double 0.27114711435558003
	.quad	0x3fe28d2a61f069dc              # double 0.57973212364896254
	.quad	0x3fe12e35609027c8              # double 0.53689068660718764
	.quad	0x3fdc091d4be02366              # double 0.43805630120964734
	.quad	0x3fdab2b7836aceb6              # double 0.41715801080429615
	.quad	0x3fd58d3a084389f6              # double 0.33674479300512361
	.quad	0x3fe204c95a927e4c              # double 0.56308429422274164
	.quad	0x3fe6339c0ba560d1              # double 0.69379999422656102
	.quad	0x3fd961eb0bda64ac              # double 0.3966014495613972
	.quad	0x3fd3f9ede9650df0              # double 0.31212947647529088
	.quad	0x3fef0766b624773d              # double 0.9696534688443773
	.quad	0x3fcd38cbdf6d6cc4              # double 0.22829578790228855
	.quad	0x3fd795c0b769f4de              # double 0.3685151854659362
	.quad	0x3fdcb1ca8c6d4bc4              # double 0.44835151399200535
	.quad	0x3fe4e810ef83bc4d              # double 0.65332838802522419
	.quad	0x3fe837f3e094f698              # double 0.75683015693330713
	.quad	0x3fb0c7a741e7b6c0              # double 0.065546468343849362
	.quad	0x3fdd23d1d576523e              # double 0.45531125875394085
	.quad	0x3fe49c693416b4f1              # double 0.64409313367437282
	.quad	0x3fd02dd230997dda              # double 0.25279669519474413
	.quad	0x3fb614f8466391b8              # double 0.086257474121857025
	.quad	0x3fde624cd2a10430              # double 0.47474976128802648
	.quad	0x3fd9a51c41ce311e              # double 0.40070253778755383
	.quad	0x3fded3f13f04a232              # double 0.48168593553649253
	.quad	0x3fef9e4510460d68              # double 0.98807004145093646
	.quad	0x3fd2b2da0db373ba              # double 0.29216624582278039
	.quad	0x3fddcb1d1ea912b6              # double 0.4655220794123055
	.quad	0x3fe951720d7c7f0c              # double 0.79119207986875172
	.quad	0x3fe7a0623c7222bc              # double 0.73832809263065924
	.quad	0x3fe2a465ecbe692c              # double 0.58256813277265485
	.quad	0x3fcb81031b64f3d4              # double 0.21487463796247985
	.quad	0x3fdf13c971faceda              # double 0.48558269625503458
	.quad	0x3fdb7c2e6380e640              # double 0.4294544192995069
	.quad	0x3f8cf4e69808c9c0              # double 0.014138986124724862
	.quad	0x3fd3c0c3920762aa              # double 0.30864037762288865
	.quad	0x3fed61f6b15e386e              # double 0.91820845262715323
	.quad	0x3fc2380d07f627b8              # double 0.14233553780314678
	.quad	0x3fdea1949b46e5d4              # double 0.47861209071888067
	.quad	0x3fe0744c8db7c0e2              # double 0.51419665984397178
	.quad	0x3fbbc6ae50a2a3c8              # double 0.10850038021693742
	.quad	0x3fe728c4ef1ed0b2              # double 0.72372671797940868
	.quad	0x3f8968aa2586f5c0              # double 0.012406663198698875
	.quad	0x3fe71e1f862309e2              # double 0.7224271411762937
	.quad	0x3fdf92b3fb8dacdc              # double 0.4933290440155369
	.quad	0x3fee41b027fa2d47              # double 0.94551856811578083
	.quad	0x3fdcfbbf4c1bb944              # double 0.45286543304873228
	.quad	0x3fcb79d5bd96dd6c              # double 0.21465560681620433
	.quad	0x3fcdc98e7912c950              # double 0.2327135173014292
	.quad	0x3fd2711dc7ffba10              # double 0.288154073058565
	.quad	0x3fdbe8c57805a590              # double 0.43608223648933464
	.quad	0x3fd29659db8e25f2              # double 0.29042669716781611
	.quad	0x3fdb234d3551492e              # double 0.4240296383551535
	.quad	0x3fda701bebc1046a              # double 0.41309259436463341
	.quad	0x3fe719d343454f38              # double 0.72190249575439847
	.quad	0x3febbfcc22c47b1e              # double 0.8671627692272954
	.quad	0x3fe1f5ca1c653c55              # double 0.56125360055910767
	.quad	0x3fe60c92f7e22ade              # double 0.6890349236940343
	.quad	0x3fe82f88f261556f              # double 0.7558026060093378
	.quad	0x3fec73e266b81e42              # double 0.88914604246469531
	.quad	0x3fee32579d9d9bf2              # double 0.94364529403980968
	.quad	0x3fe8b919978ca9a3              # double 0.77259521102432804
	.quad	0x3fe00e5a13b52755              # double 0.50175193642756233
	.quad	0x3fc0223afe51d5b8              # double 0.12604463022186763
	.quad	0x3fe447d001bab178              # double 0.63376617753742348
	.quad	0x3fd9859d9a3d10d6              # double 0.3987802511440014
	.quad	0x3fe2bf85208307aa              # double 0.58587890958755406
	.quad	0x3fea8184d8b98c74              # double 0.82831041649877912
	.quad	0x3fe41fc4bd638130              # double 0.62887799253443255
	.quad	0x3fde124b7acf4272              # double 0.46986662858129258
	.quad	0x3fc65c5e225be84c              # double 0.17469383886038015
	.quad	0x3fe0605227cbbc96              # double 0.51175792477251281
	.quad	0x3fef4ae4dd2c0ec8              # double 0.97789233396221053
	.quad	0x3fd838faf58b592c              # double 0.37847780207575243
	.quad	0x3fd26ab083e2f312              # double 0.2877618110613166
	.quad	0x3f7b3dc6abafa080              # double 0.0066507111141406172
	.quad	0x3fe287d2b1c9f53a              # double 0.57907995914835131
	.quad	0x3fee53eba2114f45              # double 0.94774419454413616
	.quad	0x3fe82f6cfd659dd2              # double 0.75578927508916594
	.quad	0x3fe18ccde9e7d36c              # double 0.54843803105050659
	.quad	0x3fe06213a762e436              # double 0.51197226231227577
	.quad	0x3fec37c42e54d82d              # double 0.8818074135695092
	.quad	0x3fea54855b86ac13              # double 0.82281749607261856
	.quad	0x3fe612806f6aca03              # double 0.68975850831185459
	.quad	0x3fe5c8bc9c08b4f6              # double 0.68075399852173635
	.quad	0x3fe55de4423361f9              # double 0.66771138124300855
	.quad	0x3fe3337b3b7074e3              # double 0.60003434762225216
	.quad	0x3fc2bda3c2186a8c              # double 0.14641234376252432
	.quad	0x3fe4116d3f845b37              # double 0.62712728887240743
	.quad	0x3fe9bbdbc7863443              # double 0.80418194741799487
	.quad	0x3fdc15bda294a1bc              # double 0.43882695080767653
	.quad	0x3fd4c1bf470fda04              # double 0.32432538928642907
	.quad	0x3fd4a6e73af4a17a              # double 0.32268696553594334
	.quad	0x3fedd381899ebd45              # double 0.93206860426827431
	.quad	0x3fd6124ab24d669a              # double 0.34486644184435422
	.quad	0x3fc98a98ca5e7c04              # double 0.19954213982870794
	.quad	0x3fdeadba50d15c76              # double 0.47935350315442038
	.quad	0x3fe10a3d60cbc7a5              # double 0.53249997048827835
	.quad	0x3fe74c543cc530b8              # double 0.72806751126474634
	.quad	0x3fed3785cf16a9cc              # double 0.91302767226198389
	.quad	0x3fc39da91e65bf84              # double 0.15324892029047643
	.quad	0x3fc5e3a0c88d6614              # double 0.1710091571101634
	.quad	0x3fb973f991748ff8              # double 0.099425886165192767
	.quad	0x3fe318ff9b9c356e              # double 0.59680157082190788
	.quad	0x3fe44791f96acc6f              # double 0.63373659815114347
	.quad	0x3fe017820ccbd309              # double 0.50286962985282557
	.quad	0x3fef839dc0e73672              # double 0.98481643368150018
	.quad	0x3fef629ba8fa98da              # double 0.98078711513224026
	.quad	0x3fe63ef8fa45baed              # double 0.69518708115887551
	.quad	0x3fd099fbf53a7574              # double 0.25939845035630715
	.quad	0x3fdef312f6d34be6              # double 0.48358606437721929
	.quad	0x3fe64b9650e2fc31              # double 0.69672694967437654
	.quad	0x3fd1dee95c2a9f20              # double 0.27923044205316394
	.quad	0x3fe0b1efe3402383              # double 0.52172083268043001
	.quad	0x3fe4ae2f7d27fd3f              # double 0.64626287884303923
	.quad	0x3fdc0ad7d0150dda              # double 0.43816180534869675
	.quad	0x3fe80f28cf21a672              # double 0.75185051398621128
	.quad	0x3fe2c45e0d98d412              # double 0.58647062926923099
	.quad	0x3fde8bef8de37968              # double 0.47729100090318477
	.quad	0x3fdb9c69224e53fa              # double 0.43142155027572893
	.quad	0x3fecdac6a78e1bb6              # double 0.90170605397803771
	.quad	0x3fee82a75c4b7e5c              # double 0.95344894434306182
	.quad	0x3fc1f38c723e1e88              # double 0.14024501398329314
	.quad	0x3f8e08134e6408c0              # double 0.014663840131565187
	.quad	0x3fd09d0afb1617ce              # double 0.25958513755938106
	.quad	0x3fd421057e0cf048              # double 0.31451546964286026
	.quad	0x3fe461ed34ed825d              # double 0.636953929304649
	.quad	0x3fcd1f9df651af18              # double 0.22752737548159341
	.quad	0x3fed8900573aa1a5              # double 0.92297379528922774
	.quad	0x3fef254c9d639389              # double 0.97330313434632487
	.quad	0x3fe63809e354262c              # double 0.69434065246713805
	.quad	0x3fdc4bd941e82c20              # double 0.44212943493102053
	.quad	0x3fe517466dae8543              # double 0.65909120008669964
	.quad	0x3faa363aeefe3af0              # double 0.051194993661843102
	.quad	0x3fb00f62effdd130              # double 0.062734778968494664
	.quad	0x3feeef29b0397e6c              # double 0.9666946832548553
	.quad	0x3fdb5df5170de50c              # double 0.42760970355409778
	.quad	0x3fed79bda4f22305              # double 0.92111093727098192
	.quad	0x3fe12d481d71fd06              # double 0.53677755118397452
	.quad	0x3fb3405158b91ca8              # double 0.075200161133681775
	.quad	0x3fef5365553d40c1              # double 0.97893015526099003
	.quad	0x3fe0c6b848500794              # double 0.52425779460485211
	.quad	0x3fc183194262cbf4              # double 0.13681331387996887
	.quad	0x3fe023acb578f0ae              # double 0.50435481494743839
	.quad	0x3fe3c256a49f4f21              # double 0.61747295525353618
	.quad	0x3fecfb186e115ad4              # double 0.90565129754653606
	.quad	0x3fe2bfc5ecf4e868              # double 0.58590980797386027
	.quad	0x3fea563334c1dade              # double 0.82302246383809652
	.quad	0x3fca959fb3a99360              # double 0.20769115707949037
	.quad	0x3fc96dd07d516204              # double 0.19866376990354706
	.quad	0x3fd1e3a080054dc6              # double 0.27951824666999092
	.quad	0x3fe2eeb3442d2e0f              # double 0.59163821521491566
	.quad	0x3fb3ccefa42e1058              # double 0.077345826704971699
	.quad	0x3fe15bb1b914870f              # double 0.54244314335321231
	.quad	0x3fe225fb39d03f36              # double 0.56713639537517824
	.quad	0x3fdf5aac96e7f3e0              # double 0.48990931260033044
	.quad	0x3fed70ac5549b7b9              # double 0.92000404985241524
	.quad	0x3fe84dcaaad66656              # double 0.75949605337809589
	.quad	0x3fc0f29252d0e81c              # double 0.13240269702674901
	.quad	0x3fe221cc9d27baaa              # double 0.56662588781712953
	.quad	0x3fe14f6c7b820654              # double 0.54094528315199364
	.quad	0x3fe57c4a40700aa5              # double 0.67142212472420637
	.quad	0x3fb30a39a2b2f920              # double 0.074374773236716596
	.quad	0x3fea2e7c5df19ce8              # double 0.81817453716658139
	.quad	0x3fd12ca9d2bdbb90              # double 0.26835103588285225
	.quad	0x3feb2bb0cffd438f              # double 0.84908333418762705
	.quad	0x3fe244d1e7e0bebb              # double 0.57090087212232932
	.quad	0x3fe8c17a25a8f2c6              # double 0.77361781459293222
	.quad	0x3fc32649bbdc0f74              # double 0.1496059577258354
	.quad	0x3fe341b03c8c5811              # double 0.60176860643218977
	.quad	0x3fd4142cbf43caee              # double 0.3137313716717206
	.quad	0x3fe923cee76f147b              # double 0.7856211204713327
	.quad	0x3fe4dbcc5b695c50              # double 0.65183084348508125
	.quad	0x3fe6aa81a8105adc              # double 0.70831377816179097
	.quad	0x3fc080c3499c0790              # double 0.12892953008855246
	.quad	0x3fbf3255a4890ef8              # double 0.12186179415681042
	.quad	0x3fd4083433f5d47c              # double 0.31300072740788898
	.quad	0x3fc0033cec195f2c              # double 0.12509881523396282
	.quad	0x3fdd3879ee083be8              # double 0.4565720390827992
	.quad	0x3fecb20a2a24ebdf              # double 0.89673336249631663
	.quad	0x3fe073c607b1bf6d              # double 0.51413251402662541
	.quad	0x3fb5965f03c80118              # double 0.084325731681023419
	.quad	0x3fcfdf8973a201ec              # double 0.24900930544028144
	.quad	0x3fc83f181a6cd0dc              # double 0.18942548074995258
	.quad	0x3fe7711ad77f3063              # double 0.73255674447274222
	.quad	0x3fe40b54366fb962              # double 0.62638292915452731
	.quad	0x3f85246765b6e440              # double 0.010323341170861977
	.quad	0x3fec03038b73da25              # double 0.87536790119958552
	.quad	0x3fc2b7cfc5eb1840              # double 0.14623448528272043
	.quad	0x3fb309fc74b20a80              # double 0.074371126642327922
	.quad	0x3fced70509a570d8              # double 0.24093687983520939
	.quad	0x3fc08178f0f2241c              # double 0.12895118489203206
	.quad	0x3fe35db65b1f397a              # double 0.60518949315318982
	.quad	0x3fc850f06362c1a0              # double 0.18997006275959638
	.quad	0x3fe8106130b941e9              # double 0.7519994689592383
	.quad	0x3fe9a7555f711ff1              # double 0.80167645112032748
	.quad	0x3fe6f8c89ee1347e              # double 0.71786910086815658
	.quad	0x3fc30a7b4d9ddfd8              # double 0.14875737466695571
	.quad	0x3fb70aeb8cfafe40              # double 0.090010377806714281
	.quad	0x3fea4e53a975ee18              # double 0.82206137750421515
	.quad	0x3fee85e934435466              # double 0.953846551967797
	.quad	0x3fe88afd901cc6b6              # double 0.7669666113563014
	.quad	0x3fe71348b3a404d6              # double 0.72110400281976683
	.quad	0x3fe8a530d8cb941f              # double 0.77016489355867523
	.quad	0x3fe2df0ecb354742              # double 0.58972873391233116
	.quad	0x3fe65507f78ffc17              # double 0.69787977554358605
	.quad	0x3fdbc2abf7ce6976              # double 0.43375682067712462
	.quad	0x3feb3fd746bcb7f7              # double 0.85154308143478274
	.quad	0x3fe4ae2ea488d608              # double 0.64626247535369519
	.quad	0x3fd52e093c52b43c              # double 0.33093481913494194
	.quad	0x3fc3ee268f07edb0              # double 0.15570528015073881
	.quad	0x3fd34124225bf9b8              # double 0.30085090022466998
	.quad	0x3fce0428c6b8e1d4              # double 0.23450193122131557
	.quad	0x3fc3e1b550e28204              # double 0.1553255696244521
	.quad	0x3fe80d0978c5eb66              # double 0.75159143055439581
	.quad	0x3fe6a8a4adc6ce7e              # double 0.7080863374780646
	.quad	0x3fc10ea0d829cc34              # double 0.1332589202389457
	.quad	0x3fd93a003cd9bb36              # double 0.39416509573395631
	.quad	0x3fec7cbaee2a0e3c              # double 0.89022585407696608
	.quad	0x3fe9f478118c693c              # double 0.81109240939557691
	.quad	0x3fd64013cb81583a              # double 0.34766096948203862
	.quad	0x3fb7ea3d7e378a68              # double 0.093417971911131326
	.quad	0x3fea66abf4964e29              # double 0.82503316660808423
	.quad	0x3fe901eb736faf4f              # double 0.78148434206148376
	.quad	0x3fe476f98b27bafb              # double 0.63952328852414497
	.quad	0x3fe18e7089657d83              # double 0.54863764605754317
	.quad	0x3fe26f1aed9f5aef              # double 0.5760626450599754
	.quad	0x3fd6a3501cd86ee2              # double 0.35371783081948938
	.quad	0x3fcf1ba965190e14              # double 0.24303166805667387
	.quad	0x3fc458992ffdd5dc              # double 0.15895380824410565
	.quad	0x3fefd437b83c8beb              # double 0.99465547546094279
	.quad	0x3fe493a8aea98749              # double 0.64302476991381596
	.quad	0x3faa1e8180777df0              # double 0.051013991291025351
	.quad	0x3fe95c664ae77fef              # double 0.79252924566026006
	.quad	0x3fbddd1bd006a2d0              # double 0.11665510014303071
	.quad	0x3fd45fadf2c2224c              # double 0.3183398123442529
	.quad	0x3fd96de9c74f7e60              # double 0.39733356918256924
	.quad	0x3fc2eb624188dd0c              # double 0.14780834388668784
	.quad	0x3feb1098940ac485              # double 0.84577587999787396
	.quad	0x3fd82fdd344626be              # double 0.3779213915337144
	.quad	0x3fe6224dfb3e41a3              # double 0.69168757506308898
	.quad	0x3fe7b8296a1cd63d              # double 0.74123068547368798
	.quad	0x3fe58322f29ed494              # double 0.67225787531664816
	.quad	0x3fd57b2414cd1b0e              # double 0.33564092666021927
	.quad	0x3fee8dc8997cd296              # double 0.95480756738705241
	.quad	0x3fc57277b1c20b9c              # double 0.16755577258672083
	.quad	0x3fdc738fdadd6324              # double 0.44455334065928498
	.quad	0x3fe22869bc6a0a15              # double 0.56743323135043744
	.quad	0x3fca4e14443fc914              # double 0.20550778706053363
	.quad	0x3fd209cd95cfcb2a              # double 0.28184833173797819
	.quad	0x3fde97df4d52f234              # double 0.47801954795048407
	.quad	0x3fe6709c5c3a445d              # double 0.70124643338398196
	.quad	0x3fee9b90d228f9a5              # double 0.95648995444189622
	.quad	0x3fd7ebf25494ec4a              # double 0.37377603778776758
	.quad	0x3fecaf8e319fcec0              # double 0.89643010799633061
	.quad	0x3fd2dd534126362c              # double 0.2947586189482958
	.quad	0x3fede0b6b6201015              # double 0.93368087359749785
	.quad	0x3fc0d15161b2bc58              # double 0.13138787527484186
	.quad	0x3fefcf0f0a1eef3c              # double 0.99402572609640271
	.quad	0x3fdcfa8aa655f0f2              # double 0.45279184573861564
	.quad	0x3fe5917e255cdaac              # double 0.67401034638790724
	.quad	0x3fe411d8c0df6829              # double 0.62717855139203949
	.quad	0x3fcbaffacceb66a0              # double 0.21630797391735701
	.quad	0x3fafe331b79f7e40              # double 0.062280229248923735
	.quad	0x3fe7640273b84f7d              # double 0.73095820046954396
	.quad	0x3fe67d9c5ce695ed              # double 0.70283334870026482
	.quad	0x3fe3a16c1a0eb0fe              # double 0.61345486726125364
	.quad	0x3fefdcc408c00906              # double 0.99569894513140933
	.quad	0x3fea110eea0cf10a              # double 0.814582306985842
	.quad	0x3fd9ed1b98611ef2              # double 0.40509691124724079
	.quad	0x3fc7c84edd4c20d8              # double 0.18580041699920602
	.quad	0x3fe668ca3edd9165              # double 0.70029175070207528
	.quad	0x3fe2a2fb1adf157d              # double 0.58239512680363215
	.quad	0x3f7a46ee798d0000              # double 0.0064153018400361361
	.quad	0x3fb75952f0f4dc88              # double 0.091206725909488751
	.quad	0x3fe9d83df6b0ff1c              # double 0.80764673406517628
	.quad	0x3febd4309c5159d7              # double 0.869652085598143
	.quad	0x3fda4b443085e83e              # double 0.41084389437276403
	.quad	0x3fdfc49a58d61052              # double 0.4963746898213276
	.quad	0x3feb61b272469949              # double 0.85567591018188083
	.quad	0x3fd123c83e29026e              # double 0.2678089720757616
	.quad	0x3feb646d319583a9              # double 0.85600909885771614
	.quad	0x3fd418d767f93482              # double 0.31401620057733493
	.quad	0x3fe055e5df683b3c              # double 0.51048558839997993
	.quad	0x3fbcb63b88b9fa68              # double 0.11215564811753043
	.quad	0x3fec8c65ba934120              # double 0.892138351826393
	.quad	0x3fc512aaafad656c              # double 0.16463216379160472
	.quad	0x3fe2d16f043ff218              # double 0.58806563215290719
	.quad	0x3fe159df8598a5a7              # double 0.54222084134123782
	.quad	0x3fc4276ce3dcff08              # double 0.15745316625724848
	.quad	0x3fdf5f52c8cc64ba              # double 0.49019307717533034
	.quad	0x3feab996c5f484a9              # double 0.83515490210642895
	.quad	0x3f2b1d7f353ac000              # double 2.0687272864483575E-4
	.quad	0x3fc35b6beb9acfa8              # double 0.15122746471535931
	.quad	0x3fe927c01429f322              # double 0.7861023324800025
	.quad	0x3fdc3bf6360f7846              # double 0.44115977553690688
	.quad	0x3fb907fda3bc6328              # double 0.097778179621297867
	.quad	0x3fec3559c2fa6798              # double 0.88151252824467274
	.quad	0x3fe279793abb7e26              # double 0.57732831450625066
	.quad	0x3fe1120171cb63c1              # double 0.53344795442091464
	.quad	0x3f976065c2640080              # double 0.022828664769804607
	.quad	0x3fe93a6374cb4302              # double 0.78837750254942329
	.quad	0x3fe341571f20d957              # double 0.60172611312627111
	.quad	0x3fe87dd7d7224e98              # double 0.76536170976983708
	.quad	0x3fc5cc8fea9684d4              # double 0.1703052421044392
	.quad	0x3fb8225426ae1048              # double 0.094273814624160512
	.quad	0x3fe51863e5e72026              # double 0.65922732260606121
	.quad	0x3fded36483ce66f8              # double 0.48165238258080434
	.quad	0x3fc7986f01e00244              # double 0.18433940497927115
	.quad	0x3fde96a2c14dd860              # double 0.4779440772757706
	.quad	0x3fd14b57157235d8              # double 0.27022339910840065
	.quad	0x3fea28685c744ce3              # double 0.81743257577400319
	.quad	0x3fda7a6632f02464              # double 0.41372065519732915
	.quad	0x3fed8b046d2e4434              # double 0.92321988415108657
	.quad	0x3fe9da184d051aa1              # double 0.80787291567760999
	.quad	0x3fea121f12f31873              # double 0.81471208287326957
	.quad	0x3feee66a72861750              # double 0.96562692993095744
	.quad	0x3fee43f3bfa48a3f              # double 0.9457949393293531
	.quad	0x3fd391dc9fd88954              # double 0.30577769861169668
	.quad	0x3fde11b4b8f32866              # double 0.46983068524844496
	.quad	0x3fe4fd19eac17f69              # double 0.65589614725830103
	.quad	0x3fe5d49da3bae5d2              # double 0.68220407465485722
	.quad	0x3fbd041edc93a2a0              # double 0.11334412465260835
	.quad	0x3fe9263e01c004a7              # double 0.78591823903856983
	.quad	0x3fd04583a8efb3fe              # double 0.25424281594933962
	.quad	0x3fd6aae4b38aa064              # double 0.35418050320959638
	.quad	0x3fd04c32a22d7ecc              # double 0.2546507438437231
	.quad	0x3fe62366d3143795              # double 0.6918214914928621
	.quad	0x3f925dca27cb5900              # double 0.017935904196598962
	.quad	0x3fd00a4759e2b932              # double 0.25062736299414035
	.quad	0x3fc6709b795bf58c              # double 0.17531150270216889
	.quad	0x3fee1ed1f8c26a0f              # double 0.94126223169161161
	.quad	0x3fe888bb586d802b              # double 0.76669089575807925
	.quad	0x3fc03fd7632115e8              # double 0.12694828357977817
	.quad	0x3fe05a98fc4c0744              # double 0.51105927731280376
	.quad	0x3fd03f0a2f6945a8              # double 0.25384764318467967
	.quad	0x3fdfc51b856206aa              # double 0.49640548730540479
	.quad	0x3fadcaf8b969a510              # double 0.058189175256140868
	.quad	0x3fe6bdad1d9c344b              # double 0.71065383704411411
	.quad	0x3fd68ec7093581f0              # double 0.35246444606130378
	.quad	0x3fe748f05076fb9b              # double 0.72765365329529474
	.quad	0x3feb6f7707d5e327              # double 0.85735656290407725
	.quad	0x3fdc1bca4e547b90              # double 0.43919618272223548
	.quad	0x3fe560de8105b07e              # double 0.66807484817174134
	.quad	0x3fe0f1e37151f044              # double 0.5295273984224953
	.quad	0x3fcfeeb694977328              # double 0.2494724488778044
	.quad	0x3fed737943907c8a              # double 0.92034590908214509
	.quad	0x3fee7d17441f86ae              # double 0.95276988320639133
	.quad	0x3fd7a9b8b444e8ce              # double 0.36973397831355903
	.quad	0x3febf772d0547eb3              # double 0.87395611466850764
	.quad	0x3fd46525d8cba0c0              # double 0.31867357417514697
	.quad	0x3fcbe5a36616243c              # double 0.21794550404254831
	.quad	0x3fb2a62799f2c270              # double 0.072847819409398218
	.quad	0x3fe759cba7f49919              # double 0.72971136859704011
	.quad	0x3fb5dc051cd22298              # double 0.085388488327348688
	.quad	0x3fed4d29856255ef              # double 0.9156692128332774
	.quad	0x3fe3d4892f4bc419              # double 0.61969432103626609
	.quad	0x3fd32a8bd9fa83ba              # double 0.29947181975336046
	.quad	0x3fd1514fe4741e88              # double 0.27058789548798545
	.quad	0x3fed7beabaae3a07              # double 0.92137657605218315
	.quad	0x3fc8ad3f115a5220              # double 0.19278705928140116
	.quad	0x3fed8035dbf46524              # double 0.92190068206688069
	.quad	0x3fe1187ee2649b17              # double 0.534240190671741
	.quad	0x3fe38ce23cf0aa09              # double 0.61094772245752538
	.quad	0x3fe2c397583319df              # double 0.58637587763297094
	.quad	0x3fec65d814dc0b14              # double 0.88743213724260039
	.quad	0x3feb3d4da7107c25              # double 0.85123331670536528
	.quad	0x3fd5c4917f27afe6              # double 0.34012257974131754
	.quad	0x3fe4c0d3231f1a2a              # double 0.6485381780592594
	.quad	0x3fc72c712b89eee8              # double 0.18104376436155367
	.quad	0x3feee33f24864d0e              # double 0.96524006971086052
	.quad	0x3feb43b6a759c0cf              # double 0.85201580701507307
	.quad	0x3fe2dd3804805447              # double 0.58950425032765785
	.quad	0x3fea8e392ac4deac              # double 0.82986124375653025
	.quad	0x3fed5c8ffe0f6eb7              # double 0.91754912968777702
	.quad	0x3fdefb921c30aac0              # double 0.4841046595853804
	.quad	0x3feb5201a1925ce1              # double 0.85376054341295682
	.quad	0x3fe4b70fc2aa4431              # double 0.64734638233688291
	.quad	0x3fec6661b89e1e6f              # double 0.88749776895651944
	.quad	0x3fc436eaf23df18c              # double 0.15792595699521106
	.quad	0x3fb509cabc1658d0              # double 0.082180663032292544
	.quad	0x3fd8c8a37f05ebca              # double 0.38724601177790119
	.quad	0x3fc03c22d94b0570              # double 0.12683520898830691
	.quad	0x3fcd8875d4b71100              # double 0.2307269371650662
	.quad	0x3fbc480eb676da20              # double 0.11047450976079931
	.quad	0x3fcefcafa97f9594              # double 0.24208637024200341
	.quad	0x3fd57ffd1f62c376              # double 0.3359368139745621
	.quad	0x3fc94486a478b1b4              # double 0.19740374594529231
	.quad	0x3fd096ab351de7e2              # double 0.25919609248341946
	.quad	0x3fb07cd0e15f2ef0              # double 0.064404540083326856
	.quad	0x3fe2b8651d683b68              # double 0.58500915282807586
	.quad	0x3fe71538752e010a              # double 0.72134039770756542
	.quad	0x3fd2bb38cc6a6f7e              # double 0.29267711603619506
	.quad	0x3fe2bced96703340              # double 0.58556250936963039
	.quad	0x3fea10214a88c846              # double 0.8144689994571841
	.quad	0x3fddd4951ca78110              # double 0.46610000417969477
	.quad	0x3feacd4c8fa3d131              # double 0.83756092123670645
	.quad	0x3fa164eb400dd7f0              # double 0.033973075455762003
	.quad	0x3fda5e37a48773be              # double 0.41200057093902476
	.quad	0x3fe2e29c3ca97d43              # double 0.59016239021358563
	.quad	0x3fe4d8ae6ea54295              # double 0.65145036325891914
	.quad	0x3fb882c7a52774a8              # double 0.095745542355376245
	.quad	0x3fe33dbe72903bfe              # double 0.60128710151354858
	.quad	0x3fec69d3f77f0e59              # double 0.88791845645068712
	.quad	0x3fe32fcd66478b90              # double 0.59958524681529646
	.quad	0x3feedb6f3abc1cbd              # double 0.96428643676417602
	.quad	0x3fc49dfbf5d2627c              # double 0.16107129576700518
	.quad	0x3fe724d6f4a4dfae              # double 0.72324703008688629
	.quad	0x3fa326795b8ee3d0              # double 0.037402908731969498
	.quad	0x3fb6184adf529b58              # double 0.086308173677577371
	.quad	0x3feaab01e1aac849              # double 0.83337492061242202
	.quad	0x3fe89b399150ef61              # double 0.76894834882794438
	.quad	0x3fece7c0f6d2b7f6              # double 0.90329025466576129
	.quad	0x3fc3fc22ab9be9c4              # double 0.15613206271502922
	.quad	0x3fdd975fb6db3f7c              # double 0.46236412865709275
	.quad	0x3fe2a8498cb9c64f              # double 0.58304288373455815
	.quad	0x3fe9d714e1f8eda3              # double 0.80750507483701417
	.quad	0x3fdd4e03f4c32750              # double 0.45788668539591004
	.quad	0x3fe793d62b3ad150              # double 0.73679645961105145
	.quad	0x3fe7af45a7c98516              # double 0.74014551897940595
	.quad	0x3fde97ffb0283e9c              # double 0.47802726939060292
	.quad	0x3fb0daf7a1c30c00              # double 0.065841176026012249
	.quad	0x3f8f4b1dcbdd1940              # double 0.015279991897511835
	.quad	0x3f875b56e9488580              # double 0.011404685014954508
	.quad	0x3fde20387c5a563c              # double 0.4707165922530725
	.quad	0x3fef60ee6e5aeb5f              # double 0.98058244279614459
	.quad	0x3feeb856385c5c72              # double 0.96000205047574938
	.quad	0x3fe82a2e4bb6b521              # double 0.75514902866203581
	.quad	0x3fd46ce0b5b08694              # double 0.3191453718483015
	.quad	0x3fd5524d5ab76d12              # double 0.33314832552942264
	.quad	0x3fe524ef48120b2b              # double 0.66075862957254594
	.quad	0x3fbfda39c0613240              # double 0.12442360827226029
	.quad	0x3fdcda8e83c32842              # double 0.45083964221396766
	.quad	0x3fe18aae816c32b4              # double 0.54817891385899609
	.quad	0x3feb219e2bbcd576              # double 0.84785374205118447
	.quad	0x3fe168583d30f538              # double 0.54398738814749148
	.quad	0x3fa337a60695a450              # double 0.037533939651276271
	.quad	0x3fd234ed88841892              # double 0.28448046046867959
	.quad	0x3fe31154d095d538              # double 0.59586563815415783
	.quad	0x3fe04b6f849be1cd              # double 0.50920844936541132
	.quad	0x3fdb6532d6536964              # double 0.42805167131668598
	.quad	0x3fd4b45dbc2fc770              # double 0.32350867631531965
	.quad	0x3fe3dd52313ce75d              # double 0.62076673142221817
	.quad	0x3fca10b296fa9afc              # double 0.20363457080858172
	.quad	0x3fdc187a37a7094c              # double 0.43899398264706657
	.quad	0x3fee18288022ed0d              # double 0.94044899965902717
	.quad	0x3fe7edea066e2c23              # double 0.74779225593500021
	.quad	0x3fe9aeeb9cac6afe              # double 0.80260258293432662
	.quad	0x3fd951c21dae8bfc              # double 0.39561512850394798
	.quad	0x3fb688282c288ea8              # double 0.088015089779725941
	.quad	0x3fb5d275691cfae0              # double 0.085242593920138443
	.quad	0x3fcdf60ac71aa23c              # double 0.23407110902668815
	.quad	0x3fed3ba804e9f280              # double 0.91353226623284911
	.quad	0x3fac94790a47e2a0              # double 0.055820257668476758
	.quad	0x3fd9d993f9966bc6              # double 0.40390490888392738
	.quad	0x3fb179cb9aa43698              # double 0.068264699224722114
	.quad	0x3fdb6bf6ac1fac30              # double 0.42846457299191609
	.quad	0x3fc49ecfaddb70d8              # double 0.1610965346252502
	.quad	0x3fd7a8ee6defd7f6              # double 0.36968575225853273
	.quad	0x3fd0527602306402              # double 0.25503301824352331
	.quad	0x3fbee358481cb408              # double 0.12065650711583953
	.quad	0x3fcbb00e8b92e3f0              # double 0.21631032767416469
	.quad	0x3fd8050c8b8251da              # double 0.37530816673213752
	.quad	0x3febd939ed0e0d1f              # double 0.87026687907965428
	.quad	0x3faf9ca11060f430              # double 0.061741860627514078
	.quad	0x3fd068a899adbda4              # double 0.25638785369570827
	.quad	0x3fe6e11d97eb656e              # double 0.71497993156223827
	.quad	0x3fac9bd600f5db50              # double 0.055876433961137395
	.quad	0x3feb179fef0de7c6              # double 0.84663387956901981
	.quad	0x3fb70b84ce374000              # double 0.090019512506160026
	.quad	0x3fda1bad6e26a92e              # double 0.40793929821906516
	.quad	0x3fe4fdfdbc4dc82b              # double 0.6560047796067513
	.quad	0x3fc63bddb5757af4              # double 0.17370196686075412
	.quad	0x3fd99c341d0e1e46              # double 0.40015890920082986
	.quad	0x3fdf50869899eaba              # double 0.48928990271057737
	.quad	0x3fe7b6547943d5de              # double 0.74100707706991975
	.quad	0x3fd4004420b9d196              # double 0.31251624294170577
	.quad	0x3fe8f63b766c6dc1              # double 0.78005765084838441
	.quad	0x3fb39e5db6c7bb38              # double 0.076635224460670837
	.quad	0x3fd5fb445406397a              # double 0.34346111493586984
	.quad	0x3fc1875283830d18              # double 0.13694220944862745
	.quad	0x3fe499b976dac40d              # double 0.64376519407062605
	.quad	0x3fe722b56e220113              # double 0.72298690328901427
	.quad	0x3fe1cfefc2dc8980              # double 0.55663288172608816
	.quad	0x3fe881b8d062bad3              # double 0.76583519649815412
	.quad	0x3fd9962d72c9b800              # double 0.39979110917818161
	.quad	0x3fd1ea9e81f5999a              # double 0.27994501773209779
	.quad	0x3fadceaeb33a4050              # double 0.058217486742365154
	.quad	0x3fe0150324ce6b1d              # double 0.50256497563109159
	.quad	0x3fe450f6151de499              # double 0.63488296627396601
	.quad	0x3fe8c2a7e43cdd35              # double 0.77376169755635849
	.quad	0x3fe97b0642ed700f              # double 0.79626763412261592
	.quad	0x3fed12d38d16acbb              # double 0.90854814106332726
	.quad	0x3fe5e7d2bb4e3b95              # double 0.68454872687458368
	.quad	0x3feed5fac36c4103              # double 0.96362054985550604
	.quad	0x3fe308a725b65c6e              # double 0.59480626455014174
	.quad	0x3fe7925ec022cbbb              # double 0.73661744619891267
	.quad	0x3fde75f288bb63f4              # double 0.47594893791898518
	.quad	0x3fd1d100f06dc2a6              # double 0.27838157157297372
	.quad	0x3fe5040230cd6b9a              # double 0.6567393258259131
	.quad	0x3fee003c2ac92ff6              # double 0.93752868992441907
	.quad	0x3fd9d114227e580c              # double 0.40338614815243612
	.quad	0x3fdb74bbfd6bbf5a              # double 0.42899989841588637
	.quad	0x3fec6672abe91cc7              # double 0.8875058515194717
	.quad	0x3fe3ef71998eecee              # double 0.62297897331100471
	.quad	0x3fd70e3c375eae78              # double 0.36024384886943706
	.quad	0x3fe5c8155f028572              # double 0.6806742530499561
	.quad	0x3fc2abd9a27b1428              # double 0.14586944993621498
	.quad	0x3fd4c9750b37c5fe              # double 0.32479597182745568
	.quad	0x3fd11069845261a8              # double 0.26662671968508755
	.quad	0x3fe578bf3218315e              # double 0.67098960670550034
	.quad	0x3fb273e20c4a3348              # double 0.072080734253359258
	.quad	0x3fdf2aa1943f6a5e              # double 0.48697700002018063
	.quad	0x3feaa64e9845b81f              # double 0.83280114880267664
	.quad	0x3feb4d36eaef5211              # double 0.85317560086929423
	.quad	0x3fdd7126b2a1db08              # double 0.46003119892650135
	.quad	0x3fe6fccf448a4059              # double 0.71836055170752922
	.quad	0x3fc7384401bd1e18              # double 0.18140459141635357
	.quad	0x3fc73eb51bc04cd4              # double 0.18160117964780531
	.quad	0x3fe24de7f3347e33              # double 0.57201001645075278
	.quad	0x3fbb23d6037324c0              # double 0.10601556381438382
	.quad	0x3fb1add67773df78              # double 0.06905880371402684
	.quad	0x3fd1d8989c7cbbc0              # double 0.27884497911412254
	.quad	0x3fef93c690dff323              # double 0.98678901954517461
	.quad	0x3fb31eb6218ff958              # double 0.074687369531578951
	.quad	0x3fd950a60fb98370              # double 0.3955474046288634
	.quad	0x3fda85c978a4f188              # double 0.41441571027441926
	.quad	0x3fefdd4324be4957              # double 0.99575955559184137
	.quad	0x3fe8bfc6842874d8              # double 0.77341008960834312
	.quad	0x3fc93b1c68414068              # double 0.19711642351694825
	.quad	0x3fe09d9c9384723b              # double 0.51923970043168965
	.quad	0x3fdfa7d72e8cf076              # double 0.49461917444182946
	.quad	0x3fe3a6d700e8b047              # double 0.61411619355704594
	.quad	0x3fd2def2253e5802              # double 0.29485753666938319
	.quad	0x3fabdb5217cd8c40              # double 0.054407658963804284
	.quad	0x3fcac306dddaaae0              # double 0.20907674629901063
	.quad	0x3fed948b56ddbf85              # double 0.92438284841590301
	.quad	0x3fc1426ad36ff120              # double 0.13483939479909512
	.quad	0x3feccb34a28fccb9              # double 0.89980537176452124
	.quad	0x3fb33a27e26bea50              # double 0.075106137064645084
	.quad	0x3f92988db56e04a0              # double 0.01816007060870517
	.quad	0x3fc0e68b09b0d9dc              # double 0.13203561757263926
	.quad	0x3fdc3a019f6e3b6c              # double 0.44104042596239057
	.quad	0x3fc5a4521cb5d86c              # double 0.16907717134353406
	.quad	0x3fe895d2323e5142              # double 0.76828870595139898
	.quad	0x3fd5f83c7431238a              # double 0.34327613207693075
	.quad	0x3fec6af6b324fd44              # double 0.88805708874853239
	.quad	0x3fcf499766f2c3a0              # double 0.24443333174488391
	.quad	0x3fd7c8eed11996a2              # double 0.37163896961133436
	.quad	0x3fc9722fda98c878              # double 0.19879720853493033
	.quad	0x3fd4696e8feb38a4              # double 0.31893505148480927
	.quad	0x3fec1d259197efe3              # double 0.87855795322638774
	.quad	0x3fd35c39108fbe30              # double 0.30250383965810368
	.quad	0x3fcf184545e2188c              # double 0.24292817985787385
	.quad	0x3fe051b01bdf6607              # double 0.50997167056920112
	.quad	0x3fe24b7e1ba79047              # double 0.57171540643003815
	.quad	0x3fecd9f7104c7daa              # double 0.90160706694944293
	.quad	0x3fddf9b2cb82dce4              # double 0.46836538194788901
	.quad	0x3fe69d9c24127a04              # double 0.70673949284884019
	.quad	0x3fd02d2f1ae20996              # double 0.25275781274117415
	.quad	0x3fe3ec8406aba30c              # double 0.62262154867957653
	.quad	0x3fd4fd130ad03156              # double 0.32794643455487937
	.quad	0x3fc61233b61ee868              # double 0.17243048088659241
	.quad	0x3fe8dc666113f9d0              # double 0.77690428696205949
	.quad	0x3fbc986f7a7f3d08              # double 0.11170098057413125
	.quad	0x3fee872a3cfa5ad1              # double 0.95399963292842405
	.quad	0x3fdb90cd4f782876              # double 0.43071301232033166
	.quad	0x3fedb47b026b7e3b              # double 0.92828131172786443
	.quad	0x3fd5b188d535c358              # double 0.33896084615030508
	.quad	0x3febb9dffd54c5dd              # double 0.8664398143648061
	.quad	0x3fdfcb209c12c4b6              # double 0.49677291146788194
	.quad	0x3fe52ae67b743152              # double 0.66148685562215292
	.quad	0x3f8fbdd0f1675ac0              # double 0.015498764388138908
	.quad	0x3fe74aba1606fe48              # double 0.72787193586550192
	.quad	0x3fe8cab89612ead1              # double 0.77474622069652288
	.quad	0x3fe008db5862491b              # double 0.50108115446554125
	.quad	0x3f937b055cc7a0c0              # double 0.019023975169972784
	.quad	0x3fd77391f71dd44c              # double 0.36642884380791396
	.quad	0x3fe2f98c7245df17              # double 0.59296247786457712
	.quad	0x3fe6fae56b944214              # double 0.71812697421597926
	.quad	0x3fb099bc82ddf2c0              # double 0.064845830869624699
	.quad	0x3f7ae0b808ab2480              # double 0.0065619648764335681
	.quad	0x3fd75d0fa323ff58              # double 0.3650549977464741
	.quad	0x3fa7dde0b21b8090              # double 0.04661466764605493
	.quad	0x3fe823561bb44bb4              # double 0.75431352053634848
	.quad	0x3f98c7c0bc08ce80              # double 0.024199496723851244
	.quad	0x3fe11ac957fa87a5              # double 0.53451983626677146
	.quad	0x3fdbdcca02458b7c              # double 0.43535089704362639
	.quad	0x3fe99fcc0b836395              # double 0.80075647591285082
	.quad	0x3fe450d2f09ce4fd              # double 0.6348662089796161
	.quad	0x3fe2de20953949fb              # double 0.58961514611502197
	.quad	0x3fe162897b09d695              # double 0.54327844649260959
	.quad	0x3fe3b1d88b0eebbc              # double 0.615459701154911
	.quad	0x3feb82e426000e75              # double 0.85972793027799688
	.quad	0x3f8fb0a9eb416e80              # double 0.015473678104334754
	.quad	0x3fee2e80df5dd9da              # double 0.94317668558397405
	.quad	0x3fe2488f45deffee              # double 0.57135738035867489
	.quad	0x3fdc237f2817b6ca              # double 0.43966654696746998
	.quad	0x3feb730ab43ae990              # double 0.85779319001385268
	.quad	0x3fa237ac94978450              # double 0.035581009997038948
	.quad	0x3fd66ea3eae43d7c              # double 0.35050294817570893
	.quad	0x3feb234bf0dd6a88              # double 0.84805867237021548
	.quad	0x3fd86e8bf1908526              # double 0.3817472323444967
	.quad	0x3fda9982ab44787e              # double 0.41561953282678832
	.quad	0x3feec726bc05a55d              # double 0.96181046221787946
	.quad	0x3feaa3336a9c89fe              # double 0.83242197821192554
	.quad	0x3fe7443100dd2a62              # double 0.72707414787994318
	.quad	0x3fe84a90078d969c              # double 0.75910188174448789
	.quad	0x3f95abc583d1c660              # double 0.021163068934077933
	.quad	0x3fe21334177a0156              # double 0.56484417519826979
	.quad	0x3fef9dda73028276              # double 0.98801920378544028
	.quad	0x3fe742e6de428cec              # double 0.72691672716282829
	.quad	0x3fda90a2536b1f22              # double 0.4150777639992943
	.quad	0x3fc5004370c305d0              # double 0.16407053953120831
	.quad	0x3fe67c13cc754062              # double 0.70264615948873321
	.quad	0x3fe234a021695880              # double 0.5689240124290933
	.quad	0x3fb5879208ce0db0              # double 0.084099890851624392
	.quad	0x3fe2fb8482c609f6              # double 0.59320283452717493
	.quad	0x3fcb972a6145ac04              # double 0.21555070638291352
	.quad	0x3fe722f8ef4e223e              # double 0.72301909198092296
	.quad	0x3fe8895cb414a580              # double 0.76676783725740449
	.quad	0x3fd18a8f51d1d7cc              # double 0.2740820216198443
	.quad	0x3fdd42f6fd92686e              # double 0.4572122074401993
	.quad	0x3fe09e27ac75b0e3              # double 0.51930602725545005
	.quad	0x3fe1afae24f957f4              # double 0.55269534322246594
	.quad	0x3fe08d9434b60e6d              # double 0.51728258414409611
	.quad	0x3fcdd218282b3dec              # double 0.23297407113430724
	.quad	0x3fb57292be8e6750              # double 0.083779498598599788
	.quad	0x3fdf0d1eff7b718e              # double 0.48517584752496468
	.quad	0x3feb8c6a0394a68b              # double 0.86089039515828014
	.quad	0x3fe5726ae6c40881              # double 0.67021699019848324
	.quad	0x3fe53d23176d3be6              # double 0.66371302199865734
	.quad	0x3fc0e3166422c618              # double 0.13193015946812703
	.quad	0x3fcb6340798546f8              # double 0.21396642621635187
	.quad	0x3fc1e64fbd78ae3c              # double 0.13984104873212455
	.quad	0x3feedee576065244              # double 0.96470902492235
	.quad	0x3fc08a4b9df6ee34              # double 0.12922044003595234
	.quad	0x3fd198ba382a30f2              # double 0.27494674191326773
	.quad	0x3fe4c5c6046feb3f              # double 0.64914227358472221
	.quad	0x3fcd86278fb22048              # double 0.23065657154461605
	.quad	0x3f7993066bc1a200              # double 0.00624372966931519
	.quad	0x3fdebf1c61b54612              # double 0.4804144815617245
	.quad	0x3fc69070c2ed41f8              # double 0.17628297346028865
	.quad	0x3fc2e1081ec5aaf0              # double 0.14749242308183552
	.quad	0x3fef5c5151b1e2ef              # double 0.98001924472836587
	.quad	0x3febb0f5bdf9c618              # double 0.86535155396103658
	.quad	0x3fec06ed9a72a051              # double 0.87584571996286276
	.quad	0x3fe38d8e1a515f9f              # double 0.61102967395980901
	.quad	0x3feed5d088070b8c              # double 0.96360041206240643
	.quad	0x3fe89172c70cfe58              # double 0.76775492550946023
	.quad	0x3fecf742276ca91e              # double 0.90518291187371225
	.quad	0x3fb983467cfb2e48              # double 0.099659352791769185
	.quad	0x3fdf0eb7465c79f6              # double 0.48527318831648303
	.quad	0x3fe63d640f180380              # double 0.69499400089272001
	.quad	0x3fe6350dd2052a55              # double 0.69397631663862092
	.quad	0x3fe54ac6752ccd67              # double 0.6653778351377867
	.quad	0x3fc433c145849cc0              # double 0.1578294362491075
	.quad	0x3fe21b38a838c2ca              # double 0.56582291465573431
	.quad	0x3fe6b5c9dd85323e              # double 0.70969098344500714
	.quad	0x3fb7ba94884e4978              # double 0.092690737989220895
	.quad	0x3fe760f49cceaa86              # double 0.73058539034293868
	.quad	0x3fe366367fb1198c              # double 0.6062271589260475
	.quad	0x3fd3434b79a2ca18              # double 0.30098235014443864
	.quad	0x3fb04130f11f2418              # double 0.063494738452519406
	.quad	0x3feb4d02380dad20              # double 0.85315047214445272
	.quad	0x3fba6d4efca12060              # double 0.10323041598997085
	.quad	0x3fe0dc0117afaf64              # double 0.52685598970627412
	.quad	0x3fe5d1f1d633d610              # double 0.68187801205084675
	.quad	0x3fe31387c93c6c73              # double 0.59613408378517219
	.quad	0x3fe587662214189b              # double 0.67277819305379027
	.quad	0x3febd975be5c67f2              # double 0.87029540233493052
	.quad	0x3fd308a892a07966              # double 0.29740347212818674
	.quad	0x3fe230526dc4df6e              # double 0.56839868010773187
	.quad	0x3fe9eb6820e3a23a              # double 0.80998617576285104
	.quad	0x3feec4830393f0ce              # double 0.96148825358206991
	.quad	0x3fed948694396142              # double 0.92438057851817512
	.quad	0x3fe11d4960925d39              # double 0.53482502805392251
	.quad	0x3fe5afdc678cc766              # double 0.67771740173905637
	.quad	0x3fe1b5f44424952e              # double 0.55346120175514613
	.quad	0x3fcaf692b20c47a8              # double 0.21064981168507058
	.quad	0x3f847e4db5161b80              # double 0.010006529892746974
	.quad	0x3fe0093d3a766468              # double 0.50112782877398576
	.quad	0x3fb8df954f60d568              # double 0.097161609534699545
	.quad	0x3fbfd3a629038338              # double 0.12432325841247127
	.quad	0x3fb2afbba0a3bec8              # double 0.07299397155633891
	.quad	0x3fea7626106e37bb              # double 0.8269224472912734
	.quad	0x3fce570d92fc80e0              # double 0.23703164746348815
	.quad	0x3fedbaca8da785b8              # double 0.92905166308280851
	.quad	0x3fb17555b5b17460              # double 0.068196637018858919
	.quad	0x3fc21a1b3dccb29c              # double 0.14142170445974933
	.quad	0x3fed95122d20b402              # double 0.92444714368832615
	.quad	0x3fc2e20caf04be48              # double 0.14752348466707788
	.quad	0x3fe5f592a269b74e              # double 0.68622714730529721
	.quad	0x3fd4366b75bc9ffe              # double 0.31582151887641874
	.quad	0x3fefa58d9aa06c39              # double 0.98895912361638871
	.quad	0x3fb656de86674d20              # double 0.087263019383773344
	.quad	0x3fd7cbfa8d6cad64              # double 0.37182487307537415
	.quad	0x3fbead84d0098628              # double 0.1198351867583588
	.quad	0x3fbe9c7b1ceba218              # double 0.11957520919862252
	.quad	0x3fe6ddbe58fd74b5              # double 0.71456830387946602
	.quad	0x3fea152f8b123e80              # double 0.81508614694935488
	.quad	0x3fe3404e8b82c6a7              # double 0.60159995315753612
	.quad	0x3fd315600f78bf3c              # double 0.29817964087395743
	.quad	0x3fec8d78f63e186c              # double 0.89226959318399456
	.quad	0x3fe44d8a7de0560c              # double 0.63446545205323579
	.quad	0x3fa38aa01247a9a0              # double 0.038167001944958701
	.quad	0x3fe0f66f5c4135fc              # double 0.53008239763738585
	.quad	0x3fde99f300b11a00              # double 0.47814631526526341
	.quad	0x3fe43610ce946e71              # double 0.63159981105441265
	.quad	0x3f90218040bdeec0              # double 0.015752796126874413
	.quad	0x3fdffbd75eb7c254              # double 0.49974617242609054
	.quad	0x3fd7c1dfe6a42f76              # double 0.37120816730088479
	.quad	0x3fd53ee328ca481e              # double 0.33196333869375561
	.quad	0x3fe2decc514e1fb9              # double 0.58969703559795683
	.quad	0x3fdca78ccd1e14fa              # double 0.44772644072538947
	.quad	0x3fdc89c1ea24fac0              # double 0.44590804925602967
	.quad	0x3fe1b1647d9c119a              # double 0.55290436299451362
	.quad	0x3fdbeb63419d4b3a              # double 0.43624192626628011
	.quad	0x3fee234e79c0421b              # double 0.94180988101476559
	.quad	0x3fed9cc70ea5688e              # double 0.92538788662501914
	.quad	0x3fd626953d92d65e              # double 0.34610491765065443
	.quad	0x3fee9b2688ea13cc              # double 0.95643927327238875
	.quad	0x3fe2316c93dd83eb              # double 0.56853321914615884
	.quad	0x3fdc3e075a475ece              # double 0.44128593269622918
	.quad	0x3fe35ccc64ff70f2              # double 0.60507793165336765
	.quad	0x3fef827092c081ea              # double 0.98467281973358678
	.quad	0x3fc7932260f3af20              # double 0.18417768224696207
	.quad	0x3fe7fd8b2de5cc6d              # double 0.74970015491852637
	.quad	0x3fede36662ec640a              # double 0.93400878258683062
	.quad	0x3fea83cda11cfbd5              # double 0.82858926265168498
	.quad	0x3fe18ae422bdfb99              # double 0.54820448670931221
	.quad	0x3fe3e56f712eb63e              # double 0.62175724130583609
	.quad	0x3fc24764770381c4              # double 0.14280372439590228
	.quad	0x3fe7363c356dd3cc              # double 0.72537050662378411
	.quad	0x3fcb972448080a44              # double 0.21554997937353637
	.quad	0x3fc74af91ec0df6c              # double 0.18197549821502024
	.quad	0x3fea0922d49968ac              # double 0.81361524127284701
	.quad	0x3fd032538866ef76              # double 0.25307167358891236
	.quad	0x3fd920b8f8d21f92              # double 0.39262222575097738
	.quad	0x3fe319d6d4fcdc0b              # double 0.59690419768492242
	.quad	0x3fd8a43e0ed82f46              # double 0.38502456140189556
	.quad	0x3fe78b30fb0ff432              # double 0.73574112926110602
	.quad	0x3fdfcbfe087a03ba              # double 0.49682570293230877
	.quad	0x3fde7a541d70cc00              # double 0.47621634364185184
	.quad	0x3fda69964f922184              # double 0.41269452829921982
	.quad	0x3f966bad9e1a86c0              # double 0.021895134711150233
	.quad	0x3fe4dcfe42990120              # double 0.65197670943601693
	.quad	0x3fd3d1262701df78              # double 0.30964044389064993
	.quad	0x3fe11ec64fcbb0a1              # double 0.5350066717633305
	.quad	0x3f9560b8a2291ba0              # double 0.020876774690147593
	.quad	0x3fc04e07e2e7aa1c              # double 0.12738131121962304
	.quad	0x3fd0c248fbe0fcb8              # double 0.26185822103066014
	.quad	0x3fc6c524fecaa0f0              # double 0.17789137307159519
	.quad	0x3fede5f8f34551dc              # double 0.93432281030487329
	.quad	0x3fe26523e5ff9bb2              # double 0.5748462192685706
	.quad	0x3fa0b037d1574d10              # double 0.032594436935733495
	.quad	0x3fea7a10c2bcfdce              # double 0.8274005702477838
	.quad	0x3fed0a94e45a9d5a              # double 0.90754170036681647
	.quad	0x3fedace48ef822fa              # double 0.92735507892311309
	.quad	0x3fcbebb7f224cbc0              # double 0.21813105891632567
	.quad	0x3fbb61a5f27a9e28              # double 0.10695874376198644
	.quad	0x3fd3aae8ddac544a              # double 0.30730649612207073
	.quad	0x3fdff4e1b10b9ff6              # double 0.49932138719168451
	.quad	0x3fcd6d935d606b0c              # double 0.22990648326307228
	.quad	0x3fd317cd32cf5fe2              # double 0.29832773172301874
	.quad	0x3fe5d2f732df2c70              # double 0.68200263915913517
	.quad	0x3fedace924f60d01              # double 0.92735726565334187
	.quad	0x3fb8955a2d747d80              # double 0.0960289345716685
	.quad	0x3fefedd3a67ba6d4              # double 0.99778158680165995
	.quad	0x3fe153870ec12a9d              # double 0.54144623643636047
	.quad	0x3fee479dcaf91ceb              # double 0.94624223368819338
	.quad	0x3fb73fa57f75cb68              # double 0.090814918153950708
	.quad	0x3fc7c4442fbb867c              # double 0.18567707377137654
	.quad	0x3faf5de36fb65b10              # double 0.061263186823614757
	.quad	0x3fcc8be079bc8aac              # double 0.22301870292820547
	.quad	0x3fd0e657dd1b3a14              # double 0.26405903427522159
	.quad	0x3fea28135a03dae5              # double 0.81739204007211852
	.quad	0x3fb83e543f1aa418              # double 0.094701066404596523
	.quad	0x3fedb88a191c42b0              # double 0.92877678779958295
	.quad	0x3fd8f78804aca0c4              # double 0.39010811287381508
	.quad	0x3fbbb98148fd66b8              # double 0.10829933197001196
	.quad	0x3fe82e8ab5018059              # double 0.75568137505252786
	.quad	0x3fe3586c7efda7ca              # double 0.60454392245196087
	.quad	0x3fd68f4785241d14              # double 0.3524950790601491
	.quad	0x3fdccc4663c61b12              # double 0.44996795409717649
	.quad	0x3fecbd841a98d401              # double 0.89813428110812776
	.quad	0x3fe46afe44fe6f89              # double 0.638060698274317
	.quad	0x3fd5df2c0e526ca4              # double 0.34174634359960465
	.quad	0x3fe76cd05d6c7b72              # double 0.73203294989421708
	.quad	0x3fcdf703ffcef0a4              # double 0.23410081854479359
	.quad	0x3fedd7937bf0faa4              # double 0.93256544310846267
	.quad	0x3fe42a5cd1abeaf6              # double 0.63017121268725762
	.quad	0x3fe666ed5cf30fdb              # double 0.70006435541335621
	.quad	0x3fc6d36b546e2a78              # double 0.17832700369429566
	.quad	0x3fa1d1d78d300b90              # double 0.034804092392753394
	.quad	0x3fed546a02b41fdc              # double 0.91655445602463769
	.quad	0x3fbe5e063842c4d8              # double 0.11862219689898568
	.quad	0x3fea988b8c4f73c8              # double 0.83112122921340248
	.quad	0x3fa976afcd681af0              # double 0.049733632873587896
	.quad	0x3fc550a1a2d2a930              # double 0.16652317476593614
	.quad	0x3fed69986ffd9ef0              # double 0.91914007065949299
	.quad	0x3fec2597ce7b08b0              # double 0.87958898857347911
	.quad	0x3fea8f3875c4afab              # double 0.82998297692892231
	.quad	0x3fefcd6f7c870040              # double 0.99382757493732043
	.quad	0x3fc7c00b178e4744              # double 0.18554819727119753
	.quad	0x3fd036c769d1a140              # double 0.25334344228624062
	.quad	0x3fed5fbf93aef500              # double 0.91793803066653368
	.quad	0x3fe3d6ac074a3989              # double 0.61995507644478309
	.quad	0x3fdba05c0700e1c2              # double 0.43166256603174358
	.quad	0x3fe31ac5d9ae533d              # double 0.5970181705075458
	.quad	0x3fd38c7fde7801c2              # double 0.3054504082247399
	.quad	0x3fe3026b5e6bcb01              # double 0.59404533807386894
	.quad	0x3fd854d020b49ad6              # double 0.38017657464881205
	.quad	0x3fe71de90ff620b7              # double 0.72240117185085395
	.quad	0x3fe23baf90553797              # double 0.56978586378112339
	.quad	0x3fd637ab3bca10c6              # double 0.34714775885391835
	.quad	0x3fef81c5ca4e8031              # double 0.98459138405815427
	.quad	0x3fac53685dafaba0              # double 0.055323850094132654
	.quad	0x3fe24d657cf41dc6              # double 0.57194780735965689
	.quad	0x3fc360b2c19fb55c              # double 0.15138849691667644
	.quad	0x3fab0fce57ef23c0              # double 0.052854965433261736
	.quad	0x3fc91a9175a762d4              # double 0.19612329716507892
	.quad	0x3fce2644594b9974              # double 0.23554281578180858
	.quad	0x3fce05819ea004cc              # double 0.23454303975453283
	.quad	0x3fd75735755746b6              # double 0.36469780406069263
	.quad	0x3fefd870824a7c35              # double 0.99517083594753918
	.quad	0x3fee0d7381ce3a00              # double 0.93914199211741333
	.quad	0x3fd90296696a5450              # double 0.39078293127505948
	.quad	0x3fd54dd8242278da              # double 0.33287623909735731
	.quad	0x3fed42df3c606ca9              # double 0.91441308777156849
	.quad	0x3fe2df39cba37e53              # double 0.58974923871205431
	.quad	0x3feddf3d48d86aec              # double 0.93350090243924688
	.quad	0x3fd41cfef5884630              # double 0.31426977136388512
	.quad	0x3fd0484fcbf04fe4              # double 0.2544135562504819
	.quad	0x3fc17e67c46ae850              # double 0.1366700848646496
	.quad	0x3fe04b7bd83f340e              # double 0.50921432719917603
	.quad	0x3fdc10e6edd72898              # double 0.43853162027938586
	.quad	0x3fd610a95d8fc3d8              # double 0.34476694237588168
	.quad	0x3fe09b9eb9cd4180              # double 0.51899658479128163
	.quad	0x3fc811aab888eea4              # double 0.1880391503381037
	.quad	0x3fda74a145b853a4              # double 0.41336852844806971
	.quad	0x3fd00613c3151f70              # double 0.25037092257524929
	.quad	0x3fda576568ce05f6              # double 0.41158423647729536
	.quad	0x3feee97c80bdcccc              # double 0.96600175041967295
	.quad	0x3fe4d68cea2bb9cd              # double 0.65119024025426031
	.quad	0x3fdc3a97747ccef4              # double 0.44107614875541334
	.quad	0x3fdce23bafcebf24              # double 0.45130817574225746
	.quad	0x3fecdba2815a0b53              # double 0.9018108869935112
	.quad	0x3fe684d7ce2be343              # double 0.70371618526323976
	.quad	0x3fc68f7ec5fe40a4              # double 0.17625412624011461
	.quad	0x3fdd15a6531480dc              # double 0.45444639313974533
	.quad	0x3fee261749735867              # double 0.94214977594198224
	.quad	0x3fe0e234185da80b              # double 0.52761273154215027
	.quad	0x3fd8411769fb2012              # double 0.3789728674860281
	.quad	0x3fe6094da9becbe6              # double 0.68863566544893895
	.quad	0x3f8741bc87bc9a80              # double 0.011355851070743883
	.quad	0x3fe8aa9b1c8adfa3              # double 0.77082591604902395
	.quad	0x3fd6be5d692d36ec              # double 0.35536895056871631
	.quad	0x3fe35087d10a771a              # double 0.60358038738533826
	.quad	0x3fdea0956d531f92              # double 0.47855125118484765
	.quad	0x3fdcc5cde44da086              # double 0.44957301421391838
	.quad	0x3fd0a8fb7ccea906              # double 0.26031386554917935
	.quad	0x3fdabd70f5b8a506              # double 0.41781257625787338
	.quad	0x3feef4ae6abd20cd              # double 0.9673683247320014
	.quad	0x3fdb8b1b61d1e9d8              # double 0.43036541512233617
	.quad	0x3fe87fdfd5b2b640              # double 0.76560966241749639
	.quad	0x3fd2587f5d7d1866              # double 0.28665145997763941
	.quad	0x3fe64159c8bcc5b5              # double 0.69547738272210913
	.quad	0x3fe36cb4da4b964a              # double 0.60701983104508739
	.quad	0x3fd098c93a66c61a              # double 0.25932532027499777
	.quad	0x3feddba5df34f724              # double 0.93306249232384574
	.quad	0x3fe3bf7341c19a27              # double 0.61712038844126915
	.quad	0x3fc5742d9041e5e0              # double 0.16760797065562283
	.quad	0x3fa3a12b071d2bd0              # double 0.038338989847566673
	.quad	0x3fe225eb5ca0b85c              # double 0.56712883082742449
	.quad	0x3fd1ec84a6c8d2f0              # double 0.28006092345758216
	.quad	0x3febf384c8e1b965              # double 0.87347640261377235
	.quad	0x3fde67afdc78d37c              # double 0.47507854967562202
	.quad	0x3fef15de66afdc41              # double 0.97141952568097889
	.quad	0x3fda43fbaa1fe20a              # double 0.41039935697293173
	.quad	0x3fc5f130ee4a0018              # double 0.1714230693360157
	.quad	0x3feb05cf99d7be71              # double 0.84445934340869944
	.quad	0x3fee0ee7b8e27761              # double 0.93931947813301175
	.quad	0x3fcedaf20ccc3d0c              # double 0.24105668663876434
	.quad	0x3fe38b14a3eab260              # double 0.61072761549946719
	.quad	0x3fe0cb4f809b1871              # double 0.52481818312004525
	.quad	0x3fc7615e866d8734              # double 0.18265897334918579
	.quad	0x3f6dd0ecde666a00              # double 0.0036396623938348416
	.quad	0x3fbf6ab9b7ba4c90              # double 0.12272225127735426
	.quad	0x3fcb2bb17aa646fc              # double 0.21227091301675916
	.quad	0x3fe140da54f3b81d              # double 0.53916660873597133
	.quad	0x3fe16c4aebea4a85              # double 0.54446931912600915
	.quad	0x3fed37c5fb63ddde              # double 0.91305827235822412
	.quad	0x3fc5e7c3babae1cc              # double 0.17113539331127325
	.quad	0x3fdedc79a2d05118              # double 0.48220673465518038
	.quad	0x3fddf18ebb4c70fc              # double 0.46786850252989587
	.quad	0x3fe5f24fa1c9c284              # double 0.68582898711436302
	.quad	0x3fdee887755540da              # double 0.48294245203306974
	.quad	0x3fab9f11630bc8f0              # double 0.053947966900425359
	.quad	0x3fd4b245ed476d24              # double 0.32338092967775567
	.quad	0x3feb80e397b626b5              # double 0.85948352461965405
	.quad	0x3fd1fd0a7e607b76              # double 0.28106939641468587
	.quad	0x3fbfa4a2202c6b10              # double 0.12360585484968234
	.quad	0x3fa414e17662ab80              # double 0.039221807195040093
	.quad	0x3fe68c14b823712b              # double 0.70459972347774646
	.quad	0x3fd21046f2fb8178              # double 0.28224347809557271
	.quad	0x3fd05adefad196d2              # double 0.25554632658018506
	.quad	0x3fef6a44045bf33d              # double 0.9817218861713638
	.quad	0x3fd77ab6a12bf316              # double 0.36686483134671855
	.quad	0x3fc7148b6c08a500              # double 0.1803144719608909
	.quad	0x3fc4ffb5c79726c0              # double 0.1640536522448226
	.quad	0x3fea80f7b167d5fd              # double 0.82824310922177313
	.quad	0x3fde2c9d592c382a              # double 0.47147306164049729
	.quad	0x3fb24c92ecc796d0              # double 0.071480925376444349
	.quad	0x3fbadb1d10797040              # double 0.10490590717512394
	.quad	0x3fdb3b8ceeed8440              # double 0.42550967533867734
	.quad	0x3fedeb3e426b5252              # double 0.93496621105675559
	.quad	0x3fed59223c5478fe              # double 0.9171305826492071
	.quad	0x3fc1bb52a912ba90              # double 0.13852914100194313
	.quad	0x3fe3e86d687ca984              # double 0.62212248237237633
	.quad	0x3fe992fdd2e0e968              # double 0.79919329821795504
	.quad	0x3fec9b6a7e34b4dd              # double 0.89397167825304857
	.quad	0x3fd0673595b64b28              # double 0.25629939670868618
	.quad	0x3fe083c35e4607c1              # double 0.51608436978153105
	.quad	0x3fc742214f8efc80              # double 0.18170563111013749
	.quad	0x3fe6ede72ac6fc27              # double 0.7165408931249474
	.quad	0x3fad2dfcabbf9db0              # double 0.056991477933304835
	.quad	0x3fec5a1c19cfdf58              # double 0.88599972764402946
	.quad	0x3fef8ddc130e080b              # double 0.98606685372965452
	.quad	0x3fdd2d258c88bbee              # double 0.45588053440127296
	.quad	0x3fe9757e904b3f69              # double 0.79559257681283413
	.quad	0x3fdf4161091e3a26              # double 0.48836542025029173
	.quad	0x3fdc525ca1556d8a              # double 0.4425269675754967
	.quad	0x3f84ac8871961700              # double 0.010094705549601013
	.quad	0x3fd2c167fc840b06              # double 0.29305457744355612
	.quad	0x3fd009627f97f97a              # double 0.250572800257849
	.quad	0x3fe2b3c86de1a5fb              # double 0.5844461580392698
	.quad	0x3fdf88685f23f9ea              # double 0.4927006653887519
	.quad	0x3f7d1c3d355d5480              # double 0.007107009025124289
	.quad	0x3fe163dc1ed6295b              # double 0.54343992254988949
	.quad	0x3fc6bab3165ff8e8              # double 0.17757261841320049
	.quad	0x3fdab20e850a84ba              # double 0.41711771957677579
	.quad	0x3fecd3dba104763f              # double 0.9008615631934801
	.quad	0x3fec309b733abb98              # double 0.88093349939105092
	.quad	0x3fe18a408ed7cc6e              # double 0.54812648676887732
	.quad	0x3fd2c0b0392e6e6e              # double 0.29301076492422495
	.quad	0x3fee7f4814b60e3b              # double 0.95303730054042235
	.quad	0x3fd8db41deca4614              # double 0.38838240391587076
	.quad	0x3fe0ebe177ed5840              # double 0.52879403517977863
	.quad	0x3fe8ac7172579f1c              # double 0.77105018932795443
	.quad	0x3fd5ebc27299b934              # double 0.34251462165311186
	.quad	0x3fc81c47c49515f0              # double 0.18836304758785571
	.quad	0x3feba319b57a0717              # double 0.86365971989309542
	.quad	0x3fe7721f3f121c7a              # double 0.73268091505532529
	.quad	0x3fd2fde7348f8ebe              # double 0.2967470181740558
	.quad	0x3fdeee1d8c76c6d4              # double 0.48328341214356141
	.quad	0x3fea8c621e257c4d              # double 0.82963662994360166
	.quad	0x3fee60b086757f4c              # double 0.94930292378919878
	.quad	0x3fec5fc48ce8ff94              # double 0.88669040223611483
	.quad	0x3fc2fc6afc78e16c              # double 0.14832818343871723
	.quad	0x3fd6e5b178b7da50              # double 0.35776936329731246
	.quad	0x3fc2ca050e9837dc              # double 0.14679015362383907
	.quad	0x3fdb0e9d19a032d2              # double 0.42276694777028212
	.quad	0x3fd8be44450389ea              # double 0.38661295642501037
	.quad	0x3fe819b2acf4282b              # double 0.75313695697810112
	.quad	0x3fba8b25421e1720              # double 0.10368569244573367
	.quad	0x3fe5eec2e71290c5              # double 0.68539567118980271
	.quad	0x3fd4ae48110d9c6c              # double 0.32313729920719569
	.quad	0x3fefccf82db2a283              # double 0.9937706844840054
	.quad	0x3fd45090ca4fcbd6              # double 0.31741733319284771
	.quad	0x3f78e2ed048f4500              # double 0.0060757883556601389
	.quad	0x3fc5a4d783b7a0e0              # double 0.1690930741454002
	.quad	0x3fe8a60620a6d0df              # double 0.77026659371633943
	.quad	0x3fbfd2f30e2c8eb8              # double 0.12431258293195924
	.quad	0x3fe219760736fda1              # double 0.56560803803579429
	.quad	0x3fedaaef00314d26              # double 0.92711591756452516
	.quad	0x3fc72d1d8308dfa8              # double 0.1810643091027917
	.quad	0x3fec820e0a50581c              # double 0.89087583555624716
	.quad	0x3fce205da7f11430              # double 0.23536272716788309
	.quad	0x3fc61463371f3338              # double 0.17249717895028893
	.quad	0x3fb7323924792878              # double 0.090610095409973002
	.quad	0x3fe3036044bf9d4d              # double 0.59416211535873631
	.quad	0x3feb991d9bf943cd              # double 0.86244087661372648
	.quad	0x3fe20ca2112fe466              # double 0.56404212338305793
	.quad	0x3fc0dcde49478e50              # double 0.13174036577321369
	.quad	0x3fed8978e255475d              # double 0.92303127484977276
	.quad	0x3fad81430d9ec300              # double 0.05762681523572688
	.quad	0x3fd0b4c00fde29ce              # double 0.26103211927025149
	.quad	0x3fde1ec12d03ed3e              # double 0.47062711139706781
	.quad	0x3fbaf2c6c18daec0              # double 0.10526697373796434
	.quad	0x3fed022882f5ac6d              # double 0.90651345804270778
	.quad	0x3fd1865344505b5e              # double 0.27382356330183721
	.quad	0x3fc3ee9ca5771550              # double 0.1557193572936435
	.quad	0x3fd53856f4d1cfc2              # double 0.33156370075380093
	.quad	0x3fc2d397bb013c28              # double 0.14708229666800432
	.quad	0x3fd556466368c2aa              # double 0.33339080532008813
	.quad	0x3fd14a9d62fb2b34              # double 0.27017912546277789
	.quad	0x3fc254e54bb45564              # double 0.14321581074242851
	.quad	0x3fe7b740747998a0              # double 0.74111960171719104
	.quad	0x3fb63f931c3af560              # double 0.086907572166599945
	.quad	0x3fe884aaf02db44d              # double 0.7661947909342729
	.quad	0x3fb216046a79c7e8              # double 0.070648456568761397
	.quad	0x3feecc41682caee7              # double 0.96243353220549188
	.quad	0x3fce2aa93f6085a4              # double 0.23567691416341774
	.quad	0x3fe40ee8f6e618bd              # double 0.62682007048058319
	.quad	0x3fe65ceacad17156              # double 0.69884242642323602
	.quad	0x3fe9ce5e05146ad7              # double 0.80644131652965256
	.quad	0x3fe2d0ce822e9ab3              # double 0.58798909593755011
	.quad	0x3fcae6d33a872640              # double 0.21016922338303523
	.quad	0x3fb1b8795d1f4fd0              # double 0.069221101031245569
	.quad	0x3fe8825591cd9161              # double 0.76590994336269713
	.quad	0x3f9be1f6bdce86a0              # double 0.027229171118625772
	.quad	0x3fcba73cc51702e4              # double 0.21604117988137894
	.quad	0x3fe47f264a3d76a4              # double 0.64052118778245815
	.quad	0x3f929115a9489580              # double 0.018131578881499077
	.quad	0x3fd9ec677cb2708a              # double 0.40505397012180622
	.quad	0x3fd936058ff3596e              # double 0.3939222245948234
	.quad	0x3fd5018d9233f288              # double 0.32821978833798271
	.quad	0x3fb42e4cd34e22e0              # double 0.078831483448208228
	.quad	0x3feedb3dfe983f05              # double 0.96426295972375497
	.quad	0x3fc229a9e47477e8              # double 0.14189647345568734
	.quad	0x3fd69660b45b94de              # double 0.35292832959232878
	.quad	0x3fc30c0ed566c880              # double 0.14880547924036946
	.quad	0x3fcc068732201e4c              # double 0.21894922206432665
	.quad	0x3fea1d5417eae7e1              # double 0.81608013793379197
	.quad	0x3fcf5c5be7f4e024              # double 0.24500607324603252
	.quad	0x3fd6fecb0c5c2286              # double 0.35930134017011317
	.quad	0x3fe6fe28c0cdf59b              # double 0.71852529198774862
	.quad	0x3fdf6101fbcdd0ae              # double 0.4902958830855465
	.quad	0x3fea30b4ed3ae5a0              # double 0.8184456475639088
	.quad	0x3fd19149f6d56cc8              # double 0.27449273209431313
	.quad	0x3fe2f3f6f21b3ee6              # double 0.59228083883678262
	.quad	0x3fe53d7429749219              # double 0.66375167938946611
	.quad	0x3fb5a08dd974ea58              # double 0.084481111135496945
	.quad	0x3fec5d49fd78f3f2              # double 0.88638782030431984
	.quad	0x3fd561ac1a2c2320              # double 0.33408644252681263
	.quad	0x3fec5f9c0af13962              # double 0.88667108666576788
	.quad	0x3fe1151a86c07f4b              # double 0.53382612532366502
	.quad	0x3fe42c01ddd3e04d              # double 0.63037198377333825
	.quad	0x3fe06202739391d4              # double 0.51196405957721902
	.quad	0x3fe6a59b5b8e4865              # double 0.70771568185797362
	.quad	0x3fd76f6a8f4c8208              # double 0.36617530817059718
	.quad	0x3fd7087ded1d19ec              # double 0.35989330440170764
	.quad	0x3feb3efba22fdc94              # double 0.85143834759846237
	.quad	0x3fecda5fccc153c6              # double 0.90165700904128054
	.quad	0x3fe7c68c18b6379a              # double 0.7429867251064366
	.quad	0x3fe438b9331d7f32              # double 0.63192424758378807
	.quad	0x3fe5d2d642bd6078              # double 0.68198693308933311
	.quad	0x3fe1420a61764340              # double 0.53931159053363587
	.quad	0x3fe0315380984499              # double 0.50602126232310518
	.quad	0x3fd740d11078a926              # double 0.36333109482315462
	.quad	0x3fb97eecd0a06c58              # double 0.099592972692719939
	.quad	0x3fd6706a1eb1c19c              # double 0.35061123845573561
	.quad	0x3fe88e59113bc491              # double 0.76737645498191587
	.quad	0x3fef06d647aaa124              # double 0.96958459851615375
	.quad	0x3fe659bbeb5d7947              # double 0.69845386476280502
	.quad	0x3fc43ec98c664720              # double 0.15816611628957222
	.quad	0x3fe83b0d0855d1c8              # double 0.75720836284613657
	.quad	0x3fe3f7480eb02072              # double 0.62393572682141341
	.quad	0x3fd7b8a02d70a354              # double 0.37064365804194677
	.quad	0x3fc3a5a10af058f4              # double 0.15349209818004506
	.quad	0x3fea4fe3e447fe04              # double 0.82225222192931868
	.quad	0x3fdff31e4da1459e              # double 0.4992137678246652
	.quad	0x3feafa395b175821              # double 0.84304492751357796
	.quad	0x3fc6f3179aecf96c              # double 0.17929358544092666
	.quad	0x3feea71a0997e80b              # double 0.95789815782268428
	.quad	0x3fe8f3fcffa15124              # double 0.77978372504961557
	.quad	0x3fe417c10e6e14e6              # double 0.6278996736370146
	.quad	0x3fc0b5c9478b5754              # double 0.13054767602323614
	.quad	0x3fdd968328aabf10              # double 0.46231154414543685
	.quad	0x3fe9be9ffc66b779              # double 0.80451964661709419
	.quad	0x3f89645a2bf85bc0              # double 0.012398437945234764
	.quad	0x3fde17c3d3773ffc              # double 0.4702004971595668
	.quad	0x3fb7ee7dcda3f788              # double 0.093482840256880917
	.quad	0x3fe4a1a80799eabf              # double 0.64473344311348757
	.quad	0x3fc5362992ca5878              # double 0.165715405154234
	.quad	0x3fb308a71173a3e8              # double 0.074350778351472635
	.quad	0x3fc2f580ac939e3c              # double 0.14811714579194468
	.quad	0x3fed98400d130af6              # double 0.92483522943106666
	.quad	0x3fbb3aa1ddd2f350              # double 0.10636340776086439
	.quad	0x3fd3603cb44e497e              # double 0.30274884803761626
	.quad	0x3fde2eded0412c0a              # double 0.47161074006425052
	.quad	0x3fa43c8d401662d0              # double 0.03952447326009223
	.quad	0x3fec4b1bc76e0385              # double 0.88416851950761155
	.quad	0x3fc98d9917f62d78              # double 0.19963372869493035
	.quad	0x3fbf3bdbc30e9990              # double 0.12200711738714731
	.quad	0x3feece68e387ffeb              # double 0.9626964992494299
	.quad	0x3fe3b9c359c4877f              # double 0.61642615826370661
	.quad	0x3fcb95236f1d55b0              # double 0.21548884320752171
	.quad	0x3fd0f70e333e12a2              # double 0.2650790691771282
	.quad	0x3fe35b80ea5975a3              # double 0.60491987010361858
	.quad	0x3fe5d5edd9fd4b52              # double 0.68236439300594953
	.quad	0x3fe04699d3f6daf3              # double 0.50861827277444005
	.quad	0x3fd37580b3949798              # double 0.304046798106691
	.quad	0x3fc46687c9fbc568              # double 0.1593789802787271
	.quad	0x3fe1cf9acc2c7438              # double 0.55659236791291899
	.quad	0x3fe725b61513c182              # double 0.72335342518458412
	.quad	0x3fb2561e32c9f238              # double 0.071626555823919413
	.quad	0x3fc11dad227e4de0              # double 0.13371814903494705
	.quad	0x3fed8067dad95c96              # double 0.92192452186545171
	.quad	0x3fdea52cbc812c08              # double 0.47883146675729948
	.quad	0x3fe664d8a3cb1e7a              # double 0.69981033316521679
	.quad	0x3fe3b95d75571698              # double 0.61637757223134582
	.quad	0x3fefe4d0a073509a              # double 0.99668151224115609
	.quad	0x3fea933590f01127              # double 0.83046987827450358
	.quad	0x3fe6b1e35eb9e318              # double 0.70921486378856269
	.quad	0x3fefa903fea05ff2              # double 0.98938178760272266
	.quad	0x3fe2ea853c2cc130              # double 0.59112798455138282
	.quad	0x3feb7ab9de96bad0              # double 0.85873120760319388
	.quad	0x3fcb7b0060883d84              # double 0.21469120706067824
	.quad	0x3fc8275fe2750e78              # double 0.18870161588175782
	.quad	0x3feccce70fd91c91              # double 0.90001252265291687
	.quad	0x3fee90ca5b873785              # double 0.95517461659049785
	.quad	0x3fdd25ccbfa8c44c              # double 0.45543211666796846
	.quad	0x3fe09ce7d18b9a1e              # double 0.51915350844211949
	.quad	0x3fc1f763e5ad15f0              # double 0.14036225046781636
	.quad	0x3fe60057701c41a8              # double 0.68754169365461326
	.quad	0x3fe9d6976eb2adff              # double 0.80744525547692081
	.quad	0x3fe69eab8f6b06ad              # double 0.70686891566602628
	.quad	0x3fe5459380ab6b91              # double 0.66474318629058093
	.quad	0x3fe7e332cdb3169a              # double 0.74648418594070454
	.quad	0x3fd71c6faa9e9bac              # double 0.36111060773913084
	.quad	0x3fefd1a3397c5fa2              # double 0.99434052684499741
	.quad	0x3fd320793eb6172c              # double 0.29885703205251235
	.quad	0x3fe83d75f2690b71              # double 0.75750253053443661
	.quad	0x3fdabcfe00ea81bc              # double 0.41778516854722247
	.quad	0x3fe0baf9433c7595              # double 0.52282393581451692
	.quad	0x3fe1f04eda488ce1              # double 0.56058447488285534
	.quad	0x3fe827e7e1948feb              # double 0.75487131174713562
	.quad	0x3fce1969b1662d00              # double 0.23515053903643235
	.quad	0x3fec69d53e24f6fa              # double 0.88791906488015049
	.quad	0x3fe8d5a89e11623f              # double 0.7760813796294953
	.quad	0x3fd44fea6d4ecaba              # double 0.31737766909206366
	.quad	0x3fd48752370f1dea              # double 0.32075934769497272
	.quad	0x3fa2774830b2c3e0              # double 0.036066299385659084
	.quad	0x3fb2a16f3cc6b3b8              # double 0.072775795305189628
	.quad	0x3fcf50061106865c              # double 0.24462962943384781
	.quad	0x3fbff40771f496d0              # double 0.12481733829607866
	.quad	0x3fe3bdb2dac21d31              # double 0.61690657354566814
	.quad	0x3fea8b620e4b67d7              # double 0.82951453010468412
	.quad	0x3fd7da7811f07ac2              # double 0.37270929099933536
	.quad	0x3fef1c7e6cf4953f              # double 0.97222825317718519
	.quad	0x3fcaee9cfdbfc300              # double 0.21040689840403815
	.quad	0x3fe1e681698d91e4              # double 0.55938788047620536
	.quad	0x3fc5460ab689f978              # double 0.16620000756297393
	.quad	0x3fe8df432377d6dc              # double 0.77725369384162545
	.quad	0x3fc75f6e8acbdbc8              # double 0.18259984757579972
	.quad	0x3fc46b9727852c38              # double 0.15953339986512716
	.quad	0x3fea1c7f91284a4d              # double 0.8159787974457885
	.quad	0x3fd32ff009f6942c              # double 0.29980088208168598
	.quad	0x3fc52fd1052bdc24              # double 0.16552174332147829
	.quad	0x3fb478578decc5e8              # double 0.079961273336060068
	.quad	0x3fea1fcdf2416d74              # double 0.81638238254110584
	.quad	0x3fd82ad6cf640a90              # double 0.37761469128614866
	.quad	0x3fe37fd5ea671c88              # double 0.60935493261139673
	.quad	0x3fef10f8aa08736b              # double 0.97082169732639778
	.quad	0x3fe4d653159ab178              # double 0.65116266460022043
	.quad	0x3fe092ea82c6a5de              # double 0.51793408910924277
	.quad	0x3fd4da067cdff218              # double 0.32580721087268349
	.quad	0x3fe07fe194b7e03c              # double 0.51561049505745116
	.quad	0x3fd053e8320a509a              # double 0.2551212776827555
	.quad	0x3fec990959bf1876              # double 0.89368121651274524
	.quad	0x3fd366650617e9d2              # double 0.303124671888921
	.quad	0x3fe8b3a086159419              # double 0.7719271296342668
	.quad	0x3fe9ded17be52969              # double 0.80844949911378905
	.quad	0x3fcfeb03a14a31e4              # double 0.24935956359367062
	.quad	0x3fdd071debc8dc88              # double 0.45355937982407868
	.quad	0x3fdac5027cf8431a              # double 0.41827451900557977
	.quad	0x3fda03a30197a950              # double 0.406471969180207
	.quad	0x3fd394000cd71b7a              # double 0.3059082150834268
	.quad	0x3fe66bd11f346cba              # double 0.70066124052700407
	.quad	0x3fd627e57c171d12              # double 0.34618508451645014
	.quad	0x3fe9e71dbbda5f41              # double 0.80946242036859684
	.quad	0x3feba8a5860a04bf              # double 0.86433674029844798
	.quad	0x3fb5f08aa2c88a18              # double 0.085701622716932824
	.quad	0x3fe0273431522921              # double 0.50478562958713635
	.quad	0x3fe2ebcd22f27698              # double 0.59128434014901909
	.quad	0x3fe52e8944848658              # double 0.66193068868978866
	.quad	0x3fd4269db1454418              # double 0.31485693275050286
	.quad	0x3fe8f2ac9e9e7bba              # double 0.77962332706726234
	.quad	0x3fe0728b13407adc              # double 0.51398233184940123
	.quad	0x3fa68579e4f5ad50              # double 0.043987092208079503
	.quad	0x3fee784d6bcb396a              # double 0.95218535474286381
	.quad	0x3fefaf62f8b3a23f              # double 0.99015949797200863
	.quad	0x3fea346b50bb76cb              # double 0.81889882820152005
	.quad	0x3fdca90345e93d66              # double 0.44781572177176654
	.quad	0x3fd7caa76acd999e              # double 0.37174401693337156
	.quad	0x3fdbf6d243d7799a              # double 0.43693977952161733
	.quad	0x3fead93e850a32b2              # double 0.83901906952231387
	.quad	0x3fe98d0b2f80f9b2              # double 0.79846724775398159
	.quad	0x3fd5e26c36b7aef4              # double 0.34194474547869835
	.quad	0x3fe425881447911c              # double 0.62958148918963586
	.quad	0x3fedb53550f33af3              # double 0.92837014971322984
	.quad	0x3fc3ee021a481c84              # double 0.15570093425069242
	.quad	0x3fd3acf84754213c              # double 0.30743224111258249
	.quad	0x3fb9cd0dca21c6a0              # double 0.10078512368070358
	.quad	0x3febf00253563af3              # double 0.87304798390127158
	.quad	0x3feb728cc441a6e2              # double 0.85773313838327803
	.quad	0x3fe49ec79d70d821              # double 0.64438229322582086
	.quad	0x3fea83f226a99458              # double 0.82860667754415385
	.quad	0x3fe87db0cc80ff6a              # double 0.76534309332053607
	.quad	0x3fe1a3d7e6af6041              # double 0.55125041061092628
	.quad	0x3fd22ba757c66a66              # double 0.28391440936835577
	.quad	0x3fd6b6a7512904d8              # double 0.35489828992656447
	.quad	0x3fe1b175797f1b40              # double 0.55291246156489393
	.quad	0x3feb99627d0cc39b              # double 0.86247372077751849
	.quad	0x3fd5354c2a7f6380              # double 0.33137802267224714
	.quad	0x3fe0664d0cd3e4f8              # double 0.51248791222965817
	.quad	0x3fe64916fd4c82b6              # double 0.69642209503589103
	.quad	0x3fe505ad5da32b85              # double 0.65694301880408601
	.quad	0x3fd753bdfd97611a              # double 0.36448621525552627
	.quad	0x3f89fbbcb6ca8200              # double 0.012687181785907775
	.quad	0x3feaa084b6b5e30e              # double 0.83209453282970158
	.quad	0x3fe8a78360ef2150              # double 0.7704483884090596
	.quad	0x3fe92c65dd58f0e1              # double 0.78666966659468696
	.quad	0x3fc79b14d7437704              # double 0.18442020903506073
	.quad	0x3fada308922ae250              # double 0.057884471743311239
	.quad	0x3fdd43cc5c7cda16              # double 0.45726307899477214
	.quad	0x3fd775819fda1f5e              # double 0.3665470181517686
	.quad	0x3fd1b49d609d675e              # double 0.27664884982151772
	.quad	0x3fe082f1e7b46b24              # double 0.51598448996387392
	.quad	0x3fdc7b18efe67852              # double 0.44501326968918875
	.quad	0x3fd9465e558729a8              # double 0.3949199519380735
	.quad	0x3fe6fc1f43115cde              # double 0.71827662562546002
	.quad	0x3fcb22a084eb6948              # double 0.21199423303807863
	.quad	0x3fe54ce112971ddc              # double 0.66563466673772664
	.quad	0x3fd7dff48f9e2798              # double 0.37304414773154226
	.quad	0x3fe00e2947da798c              # double 0.50172866853590525
	.quad	0x3fe6b718e6691b62              # double 0.70985074045243501
	.quad	0x3fcdb5cf8cb76b64              # double 0.23211092348978035
	.quad	0x3febdf03e5aca700              # double 0.87097353800092492
	.quad	0x3fe3283580c9d7ea              # double 0.59865832475656799
	.quad	0x3fc143af63231ef8              # double 0.13487808552439851
	.quad	0x3fe56988c7268b95              # double 0.66913260361285387
	.quad	0x3fec3b642dae074c              # double 0.88224991723857604
	.quad	0x3fe1edf5867a3132              # double 0.56029773964977481
	.quad	0x3fe200feb04a3d60              # double 0.5626214450038951
	.quad	0x3fe12efa0e9d8ec5              # double 0.53698447088796597
	.quad	0x3feb8d09db46969b              # double 0.86096661402980901
	.quad	0x3fcc18e5e70bd2d4              # double 0.2195098283915714
	.quad	0x3fe4830d41b8967b              # double 0.64099753223554445
	.quad	0x3fce016f9c2d531c              # double 0.23441882253487101
	.quad	0x3fe14b98c44d0277              # double 0.54047811832431492
	.quad	0x3fe8ab694ed44fab              # double 0.77092423817020028
	.quad	0x3fe5a6037fd3ab37              # double 0.67651534048250184
	.quad	0x3fdaa1cd6b582fce              # double 0.41612563593730278
	.quad	0x3fe51d1c953877ec              # double 0.65980366844791893
	.quad	0x3fa1cf1ea7c86dc0              # double 0.034783323270143551
	.quad	0x3fed5af1b8fb9e1f              # double 0.91735159043759384
	.quad	0x3fe1524697d22d1b              # double 0.54129342701472483
	.quad	0x3fe745f92337397f              # double 0.72729164960928461
	.quad	0x3fdfe0f7fb606a24              # double 0.49810599850175863
	.quad	0x3fb06b2692309908              # double 0.06413498944366236
	.quad	0x3fd03748b4c9a2de              # double 0.25337426810305697
	.quad	0x3fe59afaf75fcc86              # double 0.67516849818493152
	.quad	0x3fe88514770d85aa              # double 0.76624511005882323
	.quad	0x3f671517020e3600              # double 0.0028176736236165123
	.quad	0x3fd780514f734fd2              # double 0.3672068858988925
	.quad	0x3fe153640444bfab              # double 0.54142952760411356
	.quad	0x3fb8933cb8a31378              # double 0.095996661260029259
	.quad	0x3fe5ae68cd27b7e8              # double 0.67754020757069799
	.quad	0x3fe9397ac10d822a              # double 0.78826654153460152
	.quad	0x3febb059d46d8493              # double 0.86527720918469908
	.quad	0x3fe1dcd460e45c5c              # double 0.55820673870301674
	.quad	0x3fe4712177043ef1              # double 0.63880990262438619
	.quad	0x3feefb5f67828aa6              # double 0.96818514076979478
	.quad	0x3fc357723609aaac              # double 0.1511061443191769
	.quad	0x3fe05b4f00bff266              # double 0.51114606996959533
	.quad	0x3fd65c86baa8f852              # double 0.34939735630530777
	.quad	0x3facbc6c486a54f0              # double 0.056125053252950141
	.quad	0x3fe5d7c19ee2fb02              # double 0.68258744270846727
	.quad	0x3f8b278576ddcd80              # double 0.013258974733367124
	.quad	0x3fbbb778b8fff690              # double 0.10826830402944609
	.quad	0x3fcc64f4b809ddac              # double 0.22183093057877323
	.quad	0x3fd716e7efa6fc1e              # double 0.36077307132285508
	.quad	0x3fefac8678942365              # double 0.98981021452446482
	.quad	0x3fe28ad32c03cc37              # double 0.57944639774939943
	.quad	0x3fe1179c548d850a              # double 0.53413216127606344
	.quad	0x3fd5d75b122554dc              # double 0.34126927158406573
	.quad	0x3fe73674c799fd12              # double 0.72539748177215047
	.quad	0x3fd176d1f353ead6              # double 0.27287720453720732
	.quad	0x3fd74046984d8adc              # double 0.36329808114366613
	.quad	0x3fec25fec7e2b63b              # double 0.87963809051661401
	.quad	0x3fd26ad992d61d3c              # double 0.28777160014620384
	.quad	0x3fc05fb7cfc380a0              # double 0.12792108196936613
	.quad	0x3fe825f855478094              # double 0.75463501602281946
	.quad	0x3febe83ddd04ab79              # double 0.87209981124520575
	.quad	0x3fed3b2c312d9695              # double 0.91347322087377114
	.quad	0x3fe06a51c634ffc9              # double 0.51297844612417365
	.quad	0x3fda33a8fed0388c              # double 0.40940308460347619
	.quad	0x3fa06c28ee636950              # double 0.032075194454324163
	.quad	0x3f87e56a7476ac00              # double 0.0116680447379931
	.quad	0x3fd656dffc10c77c              # double 0.34905242553497096
	.quad	0x3fe4f369c5479d72              # double 0.65471352130127358
	.quad	0x3fe9bd465f2120d9              # double 0.80435484485590358
	.quad	0x3fc8555c1b15fb84              # double 0.19010497400810433
	.quad	0x3fd19471b60d0712              # double 0.27468531397254126
	.quad	0x3fe5852ee022ec54              # double 0.67250770355839018
	.quad	0x3fb45854ad16ea68              # double 0.079472820528204147
	.quad	0x3fd356a386d19e6e              # double 0.30216301122570755
	.quad	0x3feb892e35a52841              # double 0.86049566724364734
	.quad	0x3fc48906779cb408              # double 0.16043167915759704
	.quad	0x3fd07a45a6860120              # double 0.25746289503151054
	.quad	0x3fbdfc828edb9f38              # double 0.1171342467092672
	.quad	0x3fc2b6b91562ac6c              # double 0.14620126289569002
	.quad	0x3feab7751adfc8bc              # double 0.8348947071920274
	.quad	0x3fe2b15788e25581              # double 0.58414818511180056
	.quad	0x3fde71423ea28880              # double 0.47566276661576268
	.quad	0x3fd7bd0cb15e0d42              # double 0.37091367074045334
	.quad	0x3fe23b57b2468c8f              # double 0.56974396533441218
	.quad	0x3fd3244e42187c78              # double 0.29909092383054015
	.quad	0x3fd92d7a5876e52a              # double 0.39340075148682507
	.quad	0x3f91fc2c9d9fa1e0              # double 0.017563531036928981
	.quad	0x3fb7ef9957cdb668              # double 0.093499740539948584
	.quad	0x3fd2451c43c35382              # double 0.28546816461066993
	.quad	0x3fa4df5557a965d0              # double 0.040766398383037861
	.quad	0x3fded1350c9ad05c              # double 0.48151899558002298
	.quad	0x3fd88c2ebad1fc96              # double 0.38355606311956458
	.quad	0x3fbe496266472938              # double 0.1183072566701967
	.quad	0x3fe0e3b786dc7263              # double 0.52779747333586291
	.quad	0x3fe499929838aba5              # double 0.6437466595719924
	.quad	0x3fdbbab59f3edc62              # double 0.43327084113429326
	.quad	0x3fe02faddc671236              # double 0.50582020804774319
	.quad	0x3fd62af67fd51926              # double 0.34637224658617283
	.quad	0x3fd187c2bf5b39e4              # double 0.2739111775125862
	.quad	0x3fcd953c74f46310              # double 0.23111682615924467
	.quad	0x3f7cde2f98145f80              # double 0.0070478304999354036
	.quad	0x3fdd449810426acc              # double 0.45731164539180891
	.quad	0x3faa36cfe68eec50              # double 0.051199433225939672
	.quad	0x3fef65f4dc4b9c9a              # double 0.9811958601611821
	.quad	0x3fb52493e0a0de30              # double 0.082589380589404681
	.quad	0x3fd6d4ef80b04560              # double 0.35674655501596497
	.quad	0x3fcf3d1a836c693c              # double 0.24405223290598055
	.quad	0x3fda6ef9794c82ba              # double 0.41302334638207194
	.quad	0x3fe37c04d79f9f6c              # double 0.6088890277287482
	.quad	0x3fe8cce75133f065              # double 0.77501264438570827
	.quad	0x3fe70de610be1ae1              # double 0.720446617794405
	.quad	0x3fc16c5849a13e60              # double 0.13611892314155494
	.quad	0x3fdabbd76c2d075e              # double 0.41771493495990863
	.quad	0x3fc8b1f7949410f4              # double 0.19293112520984546
	.quad	0x3fe06c0e6a3e6f01              # double 0.51319046736486496
	.quad	0x3fccd446dbe0c9a8              # double 0.22522817360147696
	.quad	0x3fe1694c72e525ac              # double 0.54410383644533544
	.quad	0x3fe33fec4c108540              # double 0.60155310493806979
	.quad	0x3fd9f5f1ca0457b8              # double 0.40563626030177202
	.quad	0x3fe677b37f3ee37b              # double 0.70211195805232707
	.quad	0x3fc12079fd3a9be8              # double 0.1338036047429505
	.quad	0x3fe326b2c927edef              # double 0.59847392357135998
	.quad	0x3fa29539b4c0b040              # double 0.036294749559914852
	.quad	0x3fe0a031a3d81099              # double 0.51955492020398986
	.quad	0x3faa6d7ac4df53d0              # double 0.051616512806198167
	.quad	0x3fdae154189925b0              # double 0.42000296022578265
	.quad	0x3fe448c250244a73              # double 0.63388171818435379
	.quad	0x3fdcddd81438a4f6              # double 0.45104028677685848
	.quad	0x3fd48d50b18a73a6              # double 0.32112519586535837
	.quad	0x3fe5d3fb0607d35a              # double 0.68212653329701856
	.quad	0x3fcb1ed7c2242254              # double 0.21187874774502069
	.quad	0x3f6269bb365a3e00              # double 0.0022476822367207827
	.quad	0x3fee774de0315823              # double 0.95206350124022199
	.quad	0x3fc0afbe84798a74              # double 0.13036328762526106
	.quad	0x3fe35dbeb63a6726              # double 0.60519347754891295
	.quad	0x3fe07b35e9c3291b              # double 0.51504035622318456
	.quad	0x3fd40a50dafd9b86              # double 0.31312962899976815
	.quad	0x3fc4183423363c04              # double 0.15698863715485356
	.quad	0x3fd8b7dc8af758d4              # double 0.38622201510351073
	.quad	0x3fd421d434984ccc              # double 0.31456475387785754
	.quad	0x3fdcc89c7f6dbc62              # double 0.44974434322552359
	.quad	0x3fefe3caa0c00236              # double 0.99655658146372761
	.quad	0x3fdf88ecaee883aa              # double 0.49273221093067809
	.quad	0x3fe5ba467f8a479c              # double 0.67898869428812558
	.quad	0x3fb461179fa0d650              # double 0.079606510612245218
	.quad	0x3fddee5104d8310e              # double 0.46767068360419806
	.quad	0x3fbca13f9cf12578              # double 0.1118354566725851
	.quad	0x3fcb8b0a182b94ac              # double 0.21518064670741432
	.quad	0x3fe66c297ec77e2c              # double 0.70070338021827672
	.quad	0x3fb848c97b5d3da0              # double 0.094860642069070966
	.quad	0x3fefb413f9296213              # double 0.99073218025574971
	.quad	0x3feaf15230b9c0df              # double 0.8419581367179737
	.quad	0x3feb4d3dfa6f2856              # double 0.85317896759921541
	.quad	0x3fe0c649ebf2742f              # double 0.52420517047324278
	.quad	0x3fe578eb1d24a8be              # double 0.67101054851561748
	.quad	0x3fe8f6c53aa65913              # double 0.78012334303892528
	.quad	0x3fee2d8240ef5c6e              # double 0.94305527384393684
	.quad	0x3fd4d600aca63078              # double 0.3255616842295761
	.quad	0x3fe7fc5dc1f71cbe              # double 0.74955642589420513
	.quad	0x3fb678b638170e70              # double 0.087779415792334836
	.quad	0x3fc4bb7c2a70f5a8              # double 0.16197158882452567
	.quad	0x3fef43da776c553d              # double 0.97703288388098707
	.quad	0x3fe98deff7f47aeb              # double 0.7985763399954896
	.quad	0x3fe3e9f4d8a4dc2e              # double 0.62230913460996873
	.quad	0x3feaba72e1b63731              # double 0.83525985798198665
	.quad	0x3fcf6368f9acc660              # double 0.24522125426442454
	.quad	0x3fe4cc8cb0c4ddbc              # double 0.64996943021008446
	.quad	0x3fe6f1e63bbe2acf              # double 0.71702872913859916
	.quad	0x3fdbee4da59103fe              # double 0.43641987961387929
	.quad	0x3fd0585a8350839c              # double 0.255392673718285
	.quad	0x3fe64c029ca04d15              # double 0.69677858916330371
	.quad	0x3f9aaf54bedf1ae0              # double 0.026059459829208431
	.quad	0x3fc1448029ca073c              # double 0.13490297356116254
	.quad	0x3fdd789f6f9af500              # double 0.46048723124461333
	.quad	0x3fd63246b48ba310              # double 0.34681861525909685
	.quad	0x3fd38ef1e4be3892              # double 0.30559966409863037
	.quad	0x3feab0bddf0435dc              # double 0.83407491262340327
	.quad	0x3fee92dbf6543d95              # double 0.9554271517862839
	.quad	0x3fe1c3ab101bab24              # double 0.55513528009519009
	.quad	0x3fe417b1dd47199a              # double 0.62789242952640056
	.quad	0x3fe02a2f5e4b9504              # double 0.50514954011001167
	.quad	0x3fe983d904cfb028              # double 0.79734469356254056
	.quad	0x3fda34edc22d4a82              # double 0.40948051416959441
	.quad	0x3fe591aa1b99de9b              # double 0.6740313090403619
	.quad	0x3fc729e5b5d4f6c4              # double 0.18096610430250426
	.quad	0x3fe043f7d5438b4d              # double 0.50829688695044128
	.quad	0x3fe9d83d9bd50a97              # double 0.80764656482672847
	.quad	0x3fe8445947c3d3f0              # double 0.75834335342972103
	.quad	0x3fca6c572bf94b10              # double 0.20643129012258798
	.quad	0x3fe46b5eeb8cc1bf              # double 0.63810678487612182
	.quad	0x3fcf3a6840211aec              # double 0.24396994715990361
	.quad	0x3fd7fcb14569f4ee              # double 0.37479812411022706
	.quad	0x3f9ac4c79ae837a0              # double 0.026141280011919954
	.quad	0x3fe70987f3c57d71              # double 0.71991345988855759
	.quad	0x3f7b858738f8df00              # double 0.0067191393023262602
	.quad	0x3fe91f787b943cc5              # double 0.78509163033040663
	.quad	0x3fe7e3ddf9c76a31              # double 0.74656580719903876
	.quad	0x3fe0245f6e51c507              # double 0.50444003626594813
	.quad	0x3fb6d336e2f9dc48              # double 0.089160375989977614
	.quad	0x3fc18af0d5d682e4              # double 0.13705263558679015
	.quad	0x3fe0c512f1929ebc              # double 0.52405688459562993
	.quad	0x3fec8ec91c714e6d              # double 0.89242988162227521
	.quad	0x3fc0a5ed74ee83a4              # double 0.1300637074428127
	.quad	0x3fe8412079e7e3a3              # double 0.75795005616884159
	.quad	0x3fed9fcecb5a94f7              # double 0.92575778691812516
	.quad	0x3fe400c6fafa7ff8              # double 0.62509488124123802
	.quad	0x3fead363dd18b847              # double 0.83830445464060055
	.quad	0x3fe0df750b6f2802              # double 0.52727749093287479
	.quad	0x3fdab0238aa1ac32              # double 0.41700066126094548
	.quad	0x3fe65285a9c734c3              # double 0.69757350120348638
	.quad	0x3fcdd88a54f98f5c              # double 0.23317078732645313
	.quad	0x3fdc4c89dd3a34f8              # double 0.44217154125438141
	.quad	0x3fe663eea0dff3b1              # double 0.6996987478338409
	.quad	0x3fd7bb2081a03766              # double 0.37079632433675724
	.quad	0x3fed700cd7d3b04f              # double 0.91992799905484357
	.quad	0x3fe61e0e2ad22e71              # double 0.69116886485558215
	.quad	0x3f93cdb07796a6e0              # double 0.019339330004789157
	.quad	0x3fb28c6c016c2640              # double 0.072455168101577705
	.quad	0x3fe8a7d870bc5cf7              # double 0.77048894900045084
	.quad	0x3fda73f941e23fb4              # double 0.41332847055400213
	.quad	0x3fe2dc729f372464              # double 0.58941012474782584
	.quad	0x3feb75f49fc665f2              # double 0.85814887243321736
	.quad	0x3fe426aeda329025              # double 0.62972204796506459
	.quad	0x3feca0e5147a32b3              # double 0.89464048385123929
	.quad	0x3fecc224d70faa5c              # double 0.89869920734538366
	.quad	0x3fe7a3cfd1f54f0e              # double 0.73874655730694072
	.quad	0x3fe9ba1efc978170              # double 0.80396985372867213
	.quad	0x3fea74d08856fbb2              # double 0.82675959233153251
	.quad	0x3fc6086b2a54c9a4              # double 0.17213191573098385
	.quad	0x3fd1d40626cfc7e2              # double 0.27856591978263456
	.quad	0x3fe0a346de2aaa2a              # double 0.51993125335622392
	.quad	0x3fd318529b988d00              # double 0.2983595389834619
	.quad	0x3fecf28abf32337b              # double 0.90460717528331658
	.quad	0x3fef51a1249db3ac              # double 0.978714534297628
	.quad	0x3fe14c96983a686a              # double 0.54059915287076632
	.quad	0x3fe0ce2194468d29              # double 0.52516249618603184
	.quad	0x3fe6c105f99b5934              # double 0.71106241942724191
	.quad	0x3fe169c05b47ffaf              # double 0.54415910557144354
	.quad	0x3fca43dfdac08808              # double 0.20519636327031798
	.quad	0x3fec1c346631dc44              # double 0.87844295463481403
	.quad	0x3fbe692347927e68              # double 0.11879177567834065
	.quad	0x3fc47b0662dc8418              # double 0.16000442340103471
	.quad	0x3fc2b00966c8feb8              # double 0.14599721449666503
	.quad	0x3fe9389cb9aa2fd8              # double 0.78816066992430489
	.quad	0x3fd6d61f1d51608e              # double 0.35681894171785522
	.quad	0x3fe0ae75df8d398b              # double 0.52129644071992354
	.quad	0x3fc0f24bbe656088              # double 0.13239428326301472
	.quad	0x3fd41b1b3b567d34              # double 0.31415444178306307
	.quad	0x3fd9f35bb008fa2a              # double 0.40547840300488025
	.quad	0x3fe6d44e809bc06b              # double 0.71341633910016122
	.quad	0x3fb1588d86072c58              # double 0.067757458898243583
	.quad	0x3fea3501a3acf2e2              # double 0.81897050826918538
	.quad	0x3fe64b6c6eee0f7e              # double 0.69670697847367058
	.quad	0x3fd62f201bd03e44              # double 0.3466263076415752
	.quad	0x3fe0eefbb2e53c93              # double 0.52917275372046146
	.quad	0x3fe8b848a803ec8b              # double 0.77249558272832652
	.quad	0x3fe75d2ddf1e7927              # double 0.7301244123262095
	.quad	0x3fed47831d7166fb              # double 0.91497951269704403
	.quad	0x3fd7d0783502852e              # double 0.3720989720987572
	.quad	0x3fc80efaac595eac              # double 0.18795712867244185
	.quad	0x3fefa531f5d10193              # double 0.98891542445203339
	.quad	0x3fb27b353b3e7248              # double 0.072192503894663251
	.quad	0x3fab44038dde0eb0              # double 0.053253279750632543
	.quad	0x3fcc40ed32bdb774              # double 0.22073140122978041
	.quad	0x3fcfbb5af83186e8              # double 0.24790513151952287
	.quad	0x3fd1c387cb99598e              # double 0.27755923159329476
	.quad	0x3fc7f7e0819753b0              # double 0.18725210502330247
	.quad	0x3fdb597f9cf86f38              # double 0.4273375542559168
	.quad	0x3feff1a23a21b96e              # double 0.99824630121092439
	.quad	0x3fcbfb0a9669c498              # double 0.21859867424385437
	.quad	0x3fe35a76fd9e86f8              # double 0.60479306731232807
	.quad	0x3fef3a12187312ea              # double 0.97583870673460393
	.quad	0x3fc7fd768c6bee24              # double 0.18742257935069617
	.quad	0x3fd8fad87e74a5aa              # double 0.39031040524659011
	.quad	0x3fe9e7e64896cce1              # double 0.80955804994155411
	.quad	0x3fb679a79e612358              # double 0.08779380432782824
	.quad	0x3fef62e1ea26deae              # double 0.98082061512737595
	.quad	0x3feee0530d96336a              # double 0.96488335279137272
	.quad	0x3fed16078ae7354c              # double 0.90893914346239901
	.quad	0x3fccdaf7a8da59e4              # double 0.22543235535404371
	.quad	0x3fbfadfadb687ce8              # double 0.12374847275394851
	.quad	0x3feb2940699cc5fa              # double 0.84878559710904189
	.quad	0x3fea97d762865db8              # double 0.83103532069338026
	.quad	0x3fe5445230cc82fd              # double 0.66458997279195808
	.quad	0x3feaabbf0b8134dc              # double 0.83346512076391432
	.quad	0x3fd7da17f87b7f82              # double 0.37268637910710123
	.quad	0x3fe98dd1ec08678a              # double 0.79856201267397009
	.quad	0x3fe2ea6ab7a79fe3              # double 0.59111533994746102
	.quad	0x3fdedef6127ea6d2              # double 0.48235847288252132
	.quad	0x3fe126e88df07371              # double 0.53599956247818004
	.quad	0x3fb36a5c44b11700              # double 0.075841681261490379
	.quad	0x3fedbce119211e6f              # double 0.92930655391769601
	.quad	0x3fe536cb679e1a4d              # double 0.66293878782091442
	.quad	0x3faa48f8c6646f70              # double 0.051337980478108558
	.quad	0x3fe459931d59f54c              # double 0.63593440754599717
	.quad	0x3fec0fe2f89dfc36              # double 0.87693928297074453
	.quad	0x3fe1a7d98e812527              # double 0.55173948128609573
	.quad	0x3fd4e427012b994c              # double 0.3264253150395191
	.quad	0x3fbda118eb0a8b18              # double 0.11573940027532748
	.quad	0x3fe2871a6eb759d8              # double 0.57899209617863345
	.quad	0x3fe29d856fa6fcf7              # double 0.58172866637315124
	.quad	0x3fe895f9ea7784f9              # double 0.76830764574347576
	.quad	0x3fe95e9d93b336ab              # double 0.792799747921625
	.quad	0x3fd92991c5127cfe              # double 0.39316219563802679
	.quad	0x3fe413de10d17b00              # double 0.62742522511311449
	.quad	0x3fecc10d0c313322              # double 0.89856579190527364
	.quad	0x3fe2142577350ef3              # double 0.56495927126567691
	.quad	0x3fcc70c6b692cf24              # double 0.22219165720672962
	.quad	0x3fad16f53a11f720              # double 0.056815780008930838
	.quad	0x3fd0a46dbdba527a              # double 0.26003592994792479
	.quad	0x3fd32b9d6a5c23ec              # double 0.29953704249106639
	.quad	0x3fddf0cfe0170d60              # double 0.46782299884599432
	.quad	0x3feddea346ade9ec              # double 0.93342746548233668
	.quad	0x3fd9b10b944496ae              # double 0.40143098334588501
	.quad	0x3fe40f5cb7404ff6              # double 0.62687526503805091
	.quad	0x3fe05ec5560c4789              # double 0.51156870657199349
	.quad	0x3fdd9dfa0f72096a              # double 0.46276713856072738
	.quad	0x3fed1de25f95931a              # double 0.90989798229984165
	.quad	0x3fe6f91332756398              # double 0.71790466170488099
	.quad	0x3fe26f84debcfcf6              # double 0.57611316207467556
	.quad	0x3fe33516cfb33cb1              # double 0.60023060385164773
	.quad	0x3fedf16aacf6430b              # double 0.93571981221802625
	.quad	0x3feb330578150495              # double 0.84997819379363426
	.quad	0x3fe4de798665f284              # double 0.652157557007357
	.quad	0x3fdc408cf7d5e218              # double 0.44143985941585262
	.quad	0x3fde045a5f564f92              # double 0.46901568708676067
	.quad	0x3fd5502692aae70e              # double 0.33301700900084164
	.quad	0x3fdb0c41e2630f04              # double 0.42262312992191675
	.quad	0x3fee1d3d6b0901b5              # double 0.94106932549771349
	.quad	0x3feea39b76213968              # double 0.95747159073088727
	.quad	0x3f6b07cacf5d0e00              # double 0.003299614060695566
	.quad	0x3fe7ab2ac2f77d3e              # double 0.73964441375202461
	.quad	0x3fceec0a45616744              # double 0.24157837283820005
	.quad	0x3fda258e8e93c93c              # double 0.40854228900493061
	.quad	0x3fcac98505a6a8b8              # double 0.20927489067009275
	.quad	0x3fb7f478dda6a468              # double 0.093574098695755503
	.quad	0x3fe9a77bf1cff470              # double 0.80169484356851051
	.quad	0x3fdcc9e352d2d262              # double 0.44982226455912244
	.quad	0x3fd581ba06ca6616              # double 0.33604288733622079
	.quad	0x3fc3903d284691b0              # double 0.15283932177147852
	.quad	0x3fdac0833f359640              # double 0.41800004170213256
	.quad	0x3fef6b0cd4d54a81              # double 0.98181764191606657
	.quad	0x3f9063e749d33c00              # double 0.016006101494721037
	.quad	0x3fea79ace7bcd577              # double 0.82735295544868748
	.quad	0x3fee2e37f3635b5a              # double 0.94314191376438861
	.quad	0x3fe1915df58dd1ef              # double 0.54899499854815115
	.quad	0x3fc62683ea60224c              # double 0.17305039352528906
	.quad	0x3feb9e509e15aaf9              # double 0.86307555080324427
	.quad	0x3fe4b68ea5e846ab              # double 0.64728481677794514
	.quad	0x3fecb6507006330c              # double 0.89725515250901954
	.quad	0x3fef040fa942b64d              # double 0.96924574907979776
	.quad	0x3fe28dff75014e95              # double 0.57983372547683365
	.quad	0x3fee8144442ff531              # double 0.95327962224806673
	.quad	0x3fefafd0353ef336              # double 0.990211585994621
	.quad	0x3fe6f1e7e8ff9a3b              # double 0.71702952868947223
	.quad	0x3fb97a8dca9fc990              # double 0.099526273697654099
	.quad	0x3f630becc371af00              # double 0.0023250221525382697
	.quad	0x3fed207c40000393              # double 0.91021549701700832
	.quad	0x3fc8b5c6f85b8d80              # double 0.19304740073048876
	.quad	0x3fe42056e23c0dc1              # double 0.62894767939035756
	.quad	0x3fbfbaf0f5768a90              # double 0.12394624703169144
	.quad	0x3fe27680a8f010fa              # double 0.5769656467023474
	.quad	0x3fdb7021318569a0              # double 0.42871885143326871
	.quad	0x3f9a655942e02800              # double 0.025777239519847228
	.quad	0x3fdf0f7943f86932              # double 0.48531943929414745
	.quad	0x3fa2271d2f3605c0              # double 0.03545466615015469
	.quad	0x3fef07d5c3588924              # double 0.9697064223621834
	.quad	0x3fed6758b046374b              # double 0.91886553219385669
	.quad	0x3fe2233cdcf72b33              # double 0.56680148274731434
	.quad	0x3fc65632878c9504              # double 0.17450553530321866
	.quad	0x3fe27861fa3ddb94              # double 0.57719515681570721
	.quad	0x3fccbb9df92df730              # double 0.22447561900110591
	.quad	0x3fea64ffdaea088f              # double 0.82482903248480166
	.quad	0x3fe96fea42e43f52              # double 0.79491150917781739
	.quad	0x3fe8647da2026864              # double 0.76226693766080844
	.quad	0x3fc25f4113affeb8              # double 0.14353192769339329
	.quad	0x3fee406b6a6fe3e4              # double 0.94536371983042188
	.quad	0x3fe27a5235bd8171              # double 0.5774317788710005
	.quad	0x3fe93f916bd1ff51              # double 0.78900977190640209
	.quad	0x3fce56b1d17695e4              # double 0.23702070930191532
	.quad	0x3fbc82f1975ab280              # double 0.11137304253743174
	.quad	0x3fc4eaeab4842524              # double 0.1634190923144071
	.quad	0x3fe8a91aafca92ba              # double 0.77064260801542805
	.quad	0x3f5264eb24d66800              # double 0.001122693665229324
	.quad	0x3fe23755fc9f7ae3              # double 0.56925486889289478
	.quad	0x3fde2d75b763a534              # double 0.47152464779954362
	.quad	0x3fec131dfc7d1207              # double 0.87733363451167257
	.quad	0x3fc7e5198e4b6864              # double 0.18667907188393251
	.quad	0x3fec011b1a30752f              # double 0.87513499369712189
	.quad	0x3fc9e44ad0efad60              # double 0.20227942659344489
	.quad	0x3fd975572aae5718              # double 0.39778689544742596
	.quad	0x3feed9184202380c              # double 0.96400082485502158
	.quad	0x3fe18944911c9968              # double 0.54800632803089133
	.quad	0x3fd7a5561bf22bc2              # double 0.36946633080577496
	.quad	0x3fd0afcf12275e20              # double 0.26073052189664914
	.quad	0x3fe3e0305101bf49              # double 0.62111678907056345
	.quad	0x3fe0a02539251511              # double 0.5195489994154362
	.quad	0x3fd2f50c802d622e              # double 0.29620659367859303
	.quad	0x3fd3053795469a84              # double 0.29719342782701852
	.quad	0x3fe4339f0c94fc94              # double 0.63130142648141652
	.quad	0x3fe82ea098c83545              # double 0.75569181289908072
	.quad	0x3fbcbd1d9ca92e58              # double 0.11226067614296065
	.quad	0x3fe657f4c6f50817              # double 0.69823683604068065
	.quad	0x3feca53a0542b1db              # double 0.89516926791616969
	.quad	0x3fe7a17332a2c57f              # double 0.73845825090226913
	.quad	0x3fefd515ac995229              # double 0.99476131163334458
	.quad	0x3fecebbb57f00618              # double 0.90377585578261499
	.quad	0x3fe7c55a4b3f2f76              # double 0.74284090706485872
	.quad	0x3fe10bd115719d6a              # double 0.53269247234576977
	.quad	0x3fe27f330c16a86a              # double 0.57802727089916783
	.quad	0x3fe6fca14a4a666d              # double 0.71833862790954373
	.quad	0x3fd05b057fc4402a              # double 0.25555551030356816
	.quad	0x3fc175bc06afc478              # double 0.13640547110074741
	.quad	0x3fc1a0a09a21b6c4              # double 0.13771445775949165
	.quad	0x3fd9bb1c47c63104              # double 0.402045316783884
	.quad	0x3fd352eea2a33440              # double 0.30193677790231632
	.quad	0x3fdbe4b9a3b81b9e              # double 0.43583527553749402
	.quad	0x3fb4518e99f060c8              # double 0.079369461615331649
	.quad	0x3faaa8c18f85b000              # double 0.052068756837655883
	.quad	0x3fb3417c0778f8a0              # double 0.075217964004851812
	.quad	0x3fdb4c57276aebc4              # double 0.42653445100193843
	.quad	0x3fe22b3b0f5d5f09              # double 0.56777718544887634
	.quad	0x3fdef2c51ba0e0f6              # double 0.48356750200356602
	.quad	0x3fef7bf60c9f6976              # double 0.9838819738900344
	.quad	0x3fee323d79226ee0              # double 0.94363282832224726
	.quad	0x3fb0066bb32589f0              # double 0.062597972142192537
	.quad	0x3fe7bda6f10140db              # double 0.74190089293736194
	.quad	0x3fcd5cf768a17bf4              # double 0.22939961060453096
	.quad	0x3fd8acc3f3a01322              # double 0.38554476539165894
	.quad	0x3fdc940dcce0514c              # double 0.44653649337239609
	.quad	0x3fe1e65e577c5602              # double 0.55937115752266231
	.quad	0x3fe04387b2f1552f              # double 0.50824341726062083
	.quad	0x3fcf591bdd086ee8              # double 0.24490688603042732
	.quad	0x3fd36d8348e676cc              # double 0.30355913275876101
	.quad	0x3fec12e188a4e60a              # double 0.87730480850513115
	.quad	0x3f99bd11943b4aa0              # double 0.025135302231158563
	.quad	0x3fe7d9bdc2557900              # double 0.74532974201045477
	.quad	0x3fefcca019f69ca7              # double 0.99372868605577913
	.quad	0x3fe574e606867854              # double 0.67051984095065587
	.quad	0x3fe8e638c98418a3              # double 0.77810325010866099
	.quad	0x3fc4c119a94eb850              # double 0.16214295165031212
	.quad	0x3fe3d273eb8678fe              # double 0.61944004059822055
	.quad	0x3fc9c58b9227cc18              # double 0.20134110104081127
	.quad	0x3fe722e70147e57c              # double 0.7230105423943054
	.quad	0x3fec7b3ee724da05              # double 0.89004464288046903
	.quad	0x3fe8626163531a9e              # double 0.76200932883587646
	.quad	0x3fe6774d1e2dd621              # double 0.70206313986154012
	.quad	0x3fe69de1569e7f74              # double 0.70677248876380228
	.quad	0x3fa44cd235af5a00              # double 0.039648598721829131
	.quad	0x3fc02f7b49e648e4              # double 0.1264490233266492
	.quad	0x3fd4a248f48ce872              # double 0.3224050892055238
	.quad	0x3fdc283b288ae534              # double 0.43995551070436822
	.quad	0x3fd00d9f8f3c35f0              # double 0.25083149898350054
	.quad	0x3fe5a5222b019db1              # double 0.67640789413137814
	.quad	0x3fd8ba4c62a4edaa              # double 0.38637075074412996
	.quad	0x3fba9ad4767bf118              # double 0.10392501728705772
	.quad	0x3fb3b667c08ef050              # double 0.077002033721272455
	.quad	0x3fe716be51635350              # double 0.72152629753200337
	.quad	0x3fe23bb7095dc170              # double 0.5697894270834194
	.quad	0x3fc9b3f7959b1c5c              # double 0.20080466084457071
	.quad	0x3fe69a6ff40889e1              # double 0.70635221159710337
	.quad	0x3fc1e761678efeb4              # double 0.13987367207118029
	.quad	0x3fe8611e58d06425              # double 0.76185529085626469
	.quad	0x3fdf8c09b43f495c              # double 0.49292223551051051
	.quad	0x3fdab43f089ca6ec              # double 0.41725135651596079
	.quad	0x3fb3bac6babce8e0              # double 0.077068729963602589
	.quad	0x3feccabc9d64ca27              # double 0.89974814167937189
	.quad	0x3fea129e976cf899              # double 0.81477288794828262
	.quad	0x3feb7aa8b4491131              # double 0.8587230225753385
	.quad	0x3fe00aec8582a57c              # double 0.50133348537671862
	.quad	0x3fe178fcbbce8081              # double 0.54601895028100966
	.quad	0x3fe79cea6cb1f75b              # double 0.73790475110557041
	.quad	0x3fec3d658268a148              # double 0.8824946925206314
	.quad	0x3fe6658ad346f271              # double 0.69989529862466615
	.quad	0x3fd82d9877673df6              # double 0.37778293285825215
	.quad	0x3fea86fa8742450b              # double 0.82897688310382145
	.quad	0x3fe9b2aa885014a1              # double 0.80305983184429774
	.quad	0x3febd9e8e44b7ca0              # double 0.87035030926553602
	.quad	0x3fed3083485c0cab              # double 0.9121719754479235
	.quad	0x3fd26890c2a9fcf0              # double 0.28763216982038298
	.quad	0x3fe1bcbb7bd14a7f              # double 0.55428861792672979
	.quad	0x3feca8a97687807d              # double 0.89558861875777007
	.quad	0x3fb5051d85cd11d0              # double 0.082109303632996288
	.quad	0x3fec2457e962e615              # double 0.87943645079866661
	.quad	0x3fd345b9ed654756              # double 0.30113075431028358
	.quad	0x3fe30e3ad5c98522              # double 0.59548703913984391
	.quad	0x3fe01778e7f74ed2              # double 0.50286526971691559
	.quad	0x3fd8f6bb7f836cc0              # double 0.39005935146787962
	.quad	0x3fd8a28b85671928              # double 0.38492095973596685
	.quad	0x3fe3ecd3daca018e              # double 0.62265961391681102
	.quad	0x3fc96c256690e9c0              # double 0.19861285694226005
	.quad	0x3fc5d05e9d92e2ac              # double 0.17042143529922293
	.quad	0x3f98b0cc72042020              # double 0.024111933192244916
	.quad	0x3fd1e9dc4aa02bcc              # double 0.27989871299422187
	.quad	0x3fe233f1498cdfd8              # double 0.56884064069071893
	.quad	0x3fefa2a384d5ab00              # double 0.98860336250558589
	.quad	0x3fd2d4e177d1b5d6              # double 0.29424320889560585
	.quad	0x3feb980038888f14              # double 0.86230479280172511
	.quad	0x3fc39d04a9223bc0              # double 0.15322931536181095
	.quad	0x3fea4c5dbc2f17f7              # double 0.82182204012565208
	.quad	0x3fec2266872ff496              # double 0.87919927982115342
	.quad	0x3fbbf12f9cf1c050              # double 0.10914895612381881
	.quad	0x3fe67cab7f12e3e0              # double 0.70271849459743052
	.quad	0x3fdfc9da7cea78d0              # double 0.49669515799349728
	.quad	0x3fe8c4fb76236ac5              # double 0.77404568742652968
	.quad	0x3fc8d0db81ed109c              # double 0.19387382358593619
	.quad	0x3febcdeabc3c9725              # double 0.86888634457566083
	.quad	0x3fa0bb893cd0e060              # double 0.032680786775416193
	.quad	0x3fc779d9a6e7abb8              # double 0.1834060730901379
	.quad	0x3fe367ecc9ffd7ee              # double 0.60643615201001722
	.quad	0x3f9f86f60adfac60              # double 0.030788273252181475
	.quad	0x3fe2a2668aeead26              # double 0.5823242867967664
	.quad	0x3fd50b6e6edc62b8              # double 0.32882271600969259
	.quad	0x3fa27c0071c47160              # double 0.036102308166138242
	.quad	0x3fdd458064f7af80              # double 0.45736703739270723
	.quad	0x3f9fc456162dff00              # double 0.031022400954952012
	.quad	0x3fe368f6b7d5597d              # double 0.60656295685730266
	.quad	0x3fd5ad48d7a4e374              # double 0.33870144900315968
	.quad	0x3fef1414f84d483e              # double 0.97120140549146305
	.quad	0x3fe305b151598264              # double 0.59444490326502519
	.quad	0x3fe0ff3f38872974              # double 0.5311580757200276
	.quad	0x3fd1e2676f089ed4              # double 0.27944360583431416
	.quad	0x3feb031f340bcb27              # double 0.84413108983276153
	.quad	0x3fc60d455c688ca4              # double 0.17227999698761665
	.quad	0x3fd2fa50766a18ac              # double 0.29652797283086829
	.quad	0x3fe003465e248136              # double 0.50039976489282512
	.quad	0x3fe2558e545ca8ee              # double 0.57294384457534675
	.quad	0x3fe4a72314d325be              # double 0.64540247027723985
	.quad	0x3fea0092a72c8e0d              # double 0.81256992961101704
	.quad	0x3fe21d42ad26721c              # double 0.5660718328322818
	.quad	0x3fb68f0da7b85af8              # double 0.088120320746707281
	.quad	0x3fb0b87506d33858              # double 0.065314592520026138
	.quad	0x3fe1572d34f0caeb              # double 0.541891673469164
	.quad	0x3feeff9675f33348              # double 0.96869967496022812
	.quad	0x3feafaf47b92d780              # double 0.84313415656536961
	.quad	0x3fdf09f2537caf90              # double 0.48498209145577054
	.quad	0x3fcb18161f3273f4              # double 0.21167255900664339
	.quad	0x3fefec4c97f6d97c              # double 0.99759511642950782
	.quad	0x3fa7480f191749a0              # double 0.045471641362058834
	.quad	0x3fdd4c5c38863810              # double 0.45778565902662738
	.quad	0x3fb408ee94ab73a0              # double 0.07826129083282618
	.quad	0x3fe32ae452ad763e              # double 0.59898582599607386
	.quad	0x3feff4866e13c43c              # double 0.99859925746398614
	.quad	0x3fd355c18efbe026              # double 0.30210913623114022
	.quad	0x3fbc19be204778f0              # double 0.1097678021246542
	.quad	0x3fe8cd1da778de07              # double 0.77503855428125312
	.quad	0x3fee42314e282c5d              # double 0.94558015122437278
	.quad	0x3fe74b5059cf5cf4              # double 0.72794358769433964
	.quad	0x3feece89659b5a60              # double 0.96271200032317594
	.quad	0x3fe1da1d5b030774              # double 0.55787532592533617
	.quad	0x3f6174251ee15800              # double 0.0021305775654054671
	.quad	0x3fd80165b5257cac              # double 0.37508528413850217
	.quad	0x3fd4ed87991be988              # double 0.32699766113332673
	.quad	0x3fe2227a086951da              # double 0.56670858042576389
	.quad	0x3fdacd10b469a4ee              # double 0.41876618975091062
	.quad	0x3fe3039e46f66ff6              # double 0.59419168338672423
	.quad	0x3fd54d6d0b1f5ba4              # double 0.33285070501500003
	.quad	0x3fd683a213f4795e              # double 0.35178424786308493
	.quad	0x3fef60e1a706777e              # double 0.98057634946938754
	.quad	0x3fe0f0128a42491d              # double 0.52930571559616946
	.quad	0x3f7e1b9663273400              # double 0.0073505281929557853
	.quad	0x3fdc9d586aba74f2              # double 0.4471035997647298
	.quad	0x3fee0902eea376d7              # double 0.93860003098572065
	.quad	0x3fd876b82454a0d2              # double 0.38224605129154299
	.quad	0x3fe7dd1424bd4555              # double 0.74573714423801596
	.quad	0x3fce7327ff9fd4ec              # double 0.23788928968102796
	.quad	0x3f826fb7024129c0              # double 0.0090021417201072706
	.quad	0x3fe0dcfa26d27651              # double 0.52697475035138031
	.quad	0x3fdb742bd7742702              # double 0.42896553078081479
	.quad	0x3f91db528abd7c80              # double 0.017438211172131179
	.quad	0x3fde1522857abc78              # double 0.47003996882535359
	.quad	0x3fecf37064072ab5              # double 0.90471667801587918
	.quad	0x3fe38de0ebb5a765              # double 0.61106916462925354
	.quad	0x3fd50eb110fb6546              # double 0.32902170809173403
	.quad	0x3fd603394d3dd0ee              # double 0.34394676726448281
	.quad	0x3fea9f07cc10425c              # double 0.83191289764551923
	.quad	0x3fd5947e89d657e8              # double 0.33718837223693621
	.quad	0x3fedcca7c471dfb0              # double 0.93123234146240996
	.quad	0x3fea3cda6020957e              # double 0.81992834830150207
	.quad	0x3fd49d64b17834e6              # double 0.32210652667056505
	.quad	0x3fd96cbdd7f858be              # double 0.39726205912428358
	.quad	0x3fd079b5388679f0              # double 0.25742846031235356
	.quad	0x3fe272bcd720eb70              # double 0.57650606171897145
	.quad	0x3fef2872feddd550              # double 0.9736876466619524
	.quad	0x3fe81cbca07d1dca              # double 0.75350791306930742
	.quad	0x3fc7fabad7495c84              # double 0.18733916770972681
	.quad	0x3febdf4d549c820b              # double 0.87100855374961961
	.quad	0x3fd6bdf40ed2b332              # double 0.35534383246958889
	.quad	0x3fb6ee3c3a27f9d8              # double 0.089572681616096772
	.quad	0x3fca625da0f478fc              # double 0.20612688407067725
	.quad	0x3fc45a622bc2de70              # double 0.15900828491952579
	.quad	0x3fdfdda304d9e4a4              # double 0.49790263627762443
	.quad	0x3fcaf62b11d9f2cc              # double 0.21063745853088844
	.quad	0x3fc7bac9ca544ba0              # double 0.1853878248153622
	.quad	0x3fe058793c8086ca              # double 0.51079999749000504
	.quad	0x3fe7567e368d7d88              # double 0.72930822996924949
	.quad	0x3fed600f9fdd1d9d              # double 0.91797620032678007
	.quad	0x3fec7067eef72a70              # double 0.88872143433520812
	.quad	0x3fe92aff60ab4e2d              # double 0.78649872666068676
	.quad	0x3fed720bf0512357              # double 0.92017170845893304
	.quad	0x3fea350c47fb51d2              # double 0.81897558268479487
	.quad	0x3fe13228ebf20082              # double 0.53737302859373437
	.quad	0x3feb21e71c18a535              # double 0.84788852202942755
	.quad	0x3fd069cff5608fae              # double 0.25645827257744258
	.quad	0x3fd0d5f8fb6fd856              # double 0.26305985025772338
	.quad	0x3fd59dd17a03fa7e              # double 0.33775746265010997
	.quad	0x3fbb5bf94a075668              # double 0.10687215859737764
	.quad	0x3fe3ec5e33b29a3b              # double 0.62260351273727765
	.quad	0x3fdeed713fa844be              # double 0.483242332616168
	.quad	0x3fe4c56887d7d504              # double 0.64909769565443343
	.quad	0x3fddb9179a0f222c              # double 0.46442213101230112
	.quad	0x3fec52aec4330786              # double 0.88509310074026426
	.quad	0x3fea028df78e5c9b              # double 0.81281183577347649
	.quad	0x3feeae416f097d7f              # double 0.95877143561294519
	.quad	0x3fb2c6aeaf6d8688              # double 0.073344152287541431
	.quad	0x3fef32cb7b6ebfc2              # double 0.97495054347927401
	.quad	0x3fe0fce6da7a4744              # double 0.53087179824272157
	.quad	0x3feaf7bb30e5241e              # double 0.84274062681027195
	.quad	0x3fee0e7a1ea48b45              # double 0.93926721558487059
	.quad	0x3fe6650e6b71b9d4              # double 0.69983597741321057
	.quad	0x3feb083b4c4bcfd6              # double 0.8447548380049692
	.quad	0x3fc805d2dbad754c              # double 0.1876777241367712
	.quad	0x3fdf2cbc347c61d4              # double 0.48710541844914457
	.quad	0x3feeb8c0d09582d1              # double 0.96005287875240175
	.quad	0x3fd0093a5fe47dca              # double 0.25056323399072922
	.quad	0x3fecdf11a9ce1a6b              # double 0.90223010220581779
	.quad	0x3fe220588e6a0891              # double 0.56644847693702804
	.quad	0x3fded1fdc4713aec              # double 0.48156685050791626
	.quad	0x3fc17434a8cae434              # double 0.13635881654571025
	.quad	0x3fe557fe96a074bc              # double 0.66699151438992699
	.quad	0x3fb5df7a9103e730              # double 0.085441265491593254
	.quad	0x3fe2a8830ac573f6              # double 0.58307029823083556
	.quad	0x3fd77979d8d4264e              # double 0.36678930449179326
	.quad	0x3fdafbe544d254ee              # double 0.4216244861684818
	.quad	0x3fe876856bb4e095              # double 0.76446791683612736
	.quad	0x3fdac4cdfad1355e              # double 0.41826200002545544
	.quad	0x3fe2d8f6746f3645              # double 0.58898470631692901
	.quad	0x3fd49c3bd89172ac              # double 0.32203575276597962
	.quad	0x3fcd70bf0a37d91c              # double 0.23000324248250414
	.quad	0x3fc4cd86bbd731b8              # double 0.16252216503052153
	.quad	0x3fd24f17a9010d36              # double 0.28607741836841016
	.quad	0x3fe8dfd2e204be0f              # double 0.777322236483032
	.quad	0x3fe9b33399426cf1              # double 0.8031251901005857
	.quad	0x3fe81a64a28131c2              # double 0.75322181452934722
	.quad	0x3fdd0d686085c4a4              # double 0.45394334245708934
	.quad	0x3fd5dcb3ba39db86              # double 0.34159558473714247
	.quad	0x3fe4d532dfaa48d9              # double 0.65102523502926168
	.quad	0x3fe14028cac311e1              # double 0.53908195115996815
	.quad	0x3fdaad63d07df568              # double 0.41683287964391136
	.quad	0x3fd783b3dd8fa8bc              # double 0.367413488739327
	.quad	0x3fe0598e9bfd07b0              # double 0.51093225923999874
	.quad	0x3fc364faac767c70              # double 0.15151914044415404
	.quad	0x3fefb226a9f912de              # double 0.99049695203629162
	.quad	0x3fe9887ad1b70120              # double 0.79791012725766918
	.quad	0x3fec04f2e6d54807              # double 0.87560410580249559
	.quad	0x3fd1348290bc3a4c              # double 0.26882995733550241
	.quad	0x3fe623ebe3c87e6a              # double 0.69188494194891104
	.quad	0x3fe749b7acea4b52              # double 0.72774871609213165
	.quad	0x3fdf2b68f38838e8              # double 0.487024534057936
	.quad	0x3fb4e74150a9cf98              # double 0.081653673356241518
	.quad	0x3fee84f9dd69576c              # double 0.95373242611343078
	.quad	0x3fe65c58aa27eb45              # double 0.69877274736004635
	.quad	0x3fe38cd93049d0af              # double 0.61094340735737329
	.quad	0x3fe57ad225717345              # double 0.67124278367155255
	.quad	0x3feacf3a0964c37e              # double 0.83779622873963411
	.quad	0x3fd92503db129b18              # double 0.39288422006431878
	.quad	0x3fdced3f77d32e74              # double 0.45198046399739344
	.quad	0x3fef437b4750d8d9              # double 0.97698749474400436
	.quad	0x3fe31ea5cf36c338              # double 0.59749117347209957
	.quad	0x3fd1d35568bebfce              # double 0.27852378109946307
	.quad	0x3fb455653cae9338              # double 0.079428031268048538
	.quad	0x3fe4c7a0a830882f              # double 0.64936859941031411
	.quad	0x3fe0493983c9df52              # double 0.50893855800584675
	.quad	0x3fee5e807c582ae8              # double 0.94903587614075224
	.quad	0x3fd70470633c1b3a              # double 0.3596459359254599
	.quad	0x3fe98d20b844c7df              # double 0.79847751607871575
	.quad	0x3feafd54f90c1fab              # double 0.84342430727064277
	.quad	0x3fa5665fdef74a10              # double 0.041796680419469934
	.quad	0x3fe64d138e195e6a              # double 0.6969087386486994
	.quad	0x3fee6c55dac45b1a              # double 0.95072453239376675
	.quad	0x3fc53097c0bb7e90              # double 0.16554543410073963
	.quad	0x3fdfda786acffbda              # double 0.49770937376882574
	.quad	0x3fe92e896bd0d06f              # double 0.78693076188802802
	.quad	0x3fe2ef7cdcebaeaf              # double 0.59173434399186486
	.quad	0x3fbe80d9921183d0              # double 0.11915359321711994
	.quad	0x3feb11eada5df669              # double 0.84593718194782952
	.quad	0x3f8594d21a500700              # double 0.010537759235379252
	.quad	0x3fe2263d331ee495              # double 0.56716785416132842
	.quad	0x3fdba6fb62a93e06              # double 0.43206677088616663
	.quad	0x3f9f1362e4466400              # double 0.030347390349195535
	.quad	0x3fd7222d6fe0a54e              # double 0.36146102834262173
	.quad	0x3fe3a67b2f4dfe80              # double 0.61407241095726306
	.quad	0x3fc0473899c27fec              # double 0.12717349536705969
	.quad	0x3fde0a1b1463949e              # double 0.46936680785285911
	.quad	0x3fcf5bcd01b50938              # double 0.24498903830869678
	.quad	0x3fe1b6b0c8506048              # double 0.55355109332868668
	.quad	0x3febb562a139499f              # double 0.86589175690669495
	.quad	0x3fd633e65d2bd1b2              # double 0.34691771601435584
	.quad	0x3fefaadb0918c26f              # double 0.98960639740660194
	.quad	0x3febdee684a3bcd8              # double 0.87095952898189477
	.quad	0x3fec49274ee5d7c3              # double 0.88392987642031817
	.quad	0x3fd4496c9ac36fe6              # double 0.3169814597474655
	.quad	0x3fd03c563c53aab6              # double 0.2536826695565354
	.quad	0x3fe4d81f953586f9              # double 0.65138224737549344
	.quad	0x3fe15a487b1f6601              # double 0.54227088973419779
	.quad	0x3fd40fd927e659d4              # double 0.31346730133500711
	.quad	0x3fbe06aa787b05e0              # double 0.11728921357555278
	.quad	0x3fcb0ad98d63d7c0              # double 0.21126861003693698
	.quad	0x3fdfc134cd27117a              # double 0.49616737398562061
	.quad	0x3fbb739e9e6cad30              # double 0.10723296516214442
	.quad	0x3fdee73c5f13eab8              # double 0.48286351475659783
	.quad	0x3fe26138af687ad0              # double 0.57436784991645062
	.quad	0x3fbcf750012e66e8              # double 0.11314868954505253
	.quad	0x3fe5cbbcfb8bbdee              # double 0.68112038736393088
	.quad	0x3fc64baad34a011c              # double 0.17418418232774335
	.quad	0x3fb5a73262e07828              # double 0.084582471027233042
	.quad	0x3fad1ca098ee9bf0              # double 0.056859034222092819
	.quad	0x3fd41afcee9eea50              # double 0.31414721777733678
	.quad	0x3fd012d352993dfe              # double 0.25114901605863327
	.quad	0x3fe405121aa0c1f0              # double 0.62561898422978679
	.quad	0x3fe1964d79844f94              # double 0.54959748967893285
	.quad	0x3fdb03c9e073f912              # double 0.42210623664131319
	.quad	0x3fdca578131f68f8              # double 0.44759942882014014
	.quad	0x3fd4183d09dbeece              # double 0.31397939646533934
	.quad	0x3fead020fed331ba              # double 0.83790635843757078
	.quad	0x3fea060c00ed41a5              # double 0.81323814564716612
	.quad	0x3fe4fa981ecd626d              # double 0.65559011474677009
	.quad	0x3fd733dff0bf4564              # double 0.36254118452514761
	.quad	0x3fe49cac98a8dc6e              # double 0.64412526909189949
	.quad	0x3fde823fb42d3cb8              # double 0.47669975848561874
	.quad	0x3fe3fa65e5d3b6b7              # double 0.62431616676413781
	.quad	0x3fbd74b78a23bff0              # double 0.11506220934438693
	.quad	0x3fecf502e024f16f              # double 0.90490859773812626
	.quad	0x3fee1843199d1dc4              # double 0.94046168329889967
	.quad	0x3fea921204d2a658              # double 0.83033085767710713
	.quad	0x3fec5feba589bd47              # double 0.88670904475831314
	.quad	0x3fc0bdf239463450              # double 0.13079669758409063
	.quad	0x3fa3b1ff45af1b10              # double 0.038467385536526177
	.quad	0x3fe33ad05ebf75da              # double 0.60092943673560772
	.quad	0x3fac347cb3368060              # double 0.055087944866728078
	.quad	0x3fb5454fd588b3e8              # double 0.083088864929507289
	.quad	0x3fc789d1ca502898              # double 0.18389341715402874
	.quad	0x3fe0c019cfd885f5              # double 0.5234498080719151
	.quad	0x3fe3538a1810510a              # double 0.6039476842875342
	.quad	0x3fd9b690d3f800c4              # double 0.40176792812418349
	.quad	0x3fe5dd32baac8d77              # double 0.6832517286278933
	.quad	0x3fe5b9bdb848d550              # double 0.6789234732920395
	.quad	0x3feef37236b66ee6              # double 0.96721754728374942
	.quad	0x3fe083efbe66b0c7              # double 0.51610552966806089
	.quad	0x3fe0faded16b8ce1              # double 0.53062382604948877
	.quad	0x3feae2e6376fc5de              # double 0.84019766643012495
	.quad	0x3fdf1016e9d98fdc              # double 0.48535702549838589
	.quad	0x3fac6575c3f28420              # double 0.055461578530646927
	.quad	0x3fcba8b38eb4e8ec              # double 0.21608585804080549
	.quad	0x3fe5f5ea34b5db1f              # double 0.68626890463824342
	.quad	0x3fef21f39dee93dd              # double 0.97289448591311222
	.quad	0x3fd7384bd2b74f62              # double 0.36281104638805151
	.quad	0x3fa1667fb1bc97c0              # double 0.033985128828404765
	.quad	0x3fd64054b8d1fef2              # double 0.34767644928795882
	.quad	0x3fea0497f03177b0              # double 0.81306073105564813
	.quad	0x3fecb4df7df9dfd7              # double 0.89707922558499831
	.quad	0x3fb9b0520c3629d0              # double 0.10034668729910057
	.quad	0x3fd28a8064862bae              # double 0.28970346276099235
	.quad	0x3fe819b3d6037e6c              # double 0.75313751029530129
	.quad	0x3fe600fc28f43d39              # double 0.68762023924674687
	.quad	0x3fd45268605b0902              # double 0.31752976808287781
	.quad	0x3fb72e61fecb0ab0              # double 0.090551495271067095
	.quad	0x3fed5bf36158970a              # double 0.91747445118809989
	.quad	0x3fea3716118c34c3              # double 0.81922439029008165
	.quad	0x3fcfe2816a8de9a4              # double 0.24909990027283613
	.quad	0x3fd82671ab65ef84              # double 0.37734643686393832
	.quad	0x3fdcd59ad789604a              # double 0.45053740547655663
	.quad	0x3fe1aefafef0c7dd              # double 0.55260991852832897
	.quad	0x3fbb94d480fa7270              # double 0.10773971699604501
	.quad	0x3fe94b2da04d89c7              # double 0.79042702969700762
	.quad	0x3fedb07409233579              # double 0.92778970513033621
	.quad	0x3fbf1bc150062358              # double 0.12151725963316318
	.quad	0x3fe9b4300831a145              # double 0.80324555969586042
	.quad	0x3fde3c4026765a06              # double 0.47242740398488114
	.quad	0x3fc15745d395f278              # double 0.13547585326513789
	.quad	0x3fd47dca13cdcb8c              # double 0.32017757352803566
	.quad	0x3fe287798f18d50c              # double 0.57903745602257706
	.quad	0x3feb5a02b48db848              # double 0.85473761810659088
	.quad	0x3fef5e6e8707fc5e              # double 0.9802773129776019
	.quad	0x3fe3b349aab6903f              # double 0.6156357130280482
	.quad	0x3fc641398ef73620              # double 0.17386550408120716
	.quad	0x3fed320d947a75c3              # double 0.91235999107055255
	.quad	0x3fef4ec5c51708f5              # double 0.97836578840386201
	.quad	0x3fe9dbf5ea04a1eb              # double 0.8081006594339305
	.quad	0x3fea3e0ab9a1a646              # double 0.82007347351208959
	.quad	0x3fb997fab21ecfb8              # double 0.099975269781508724
	.quad	0x3fe79e1489a2057f              # double 0.73804690247941085
	.quad	0x3fe754ffafbd9b72              # double 0.72912582706781692
	.quad	0x3fe4c7a927047972              # double 0.64937265034295266
	.quad	0x3fe5ffddeca843df              # double 0.687483751508008
	.quad	0x3fe3195a66bcbcc1              # double 0.59684486451978824
	.quad	0x3fe98f04aa041cde              # double 0.79870827871573247
	.quad	0x3fcd2cecce16c54c              # double 0.22793350279747882
	.quad	0x3fdf0a51220e5352              # double 0.48500469518449052
	.quad	0x3fdd0cd41eb48a46              # double 0.45390799521024794
	.quad	0x3fd8995aa4ff3010              # double 0.38435999024363898
	.quad	0x3fe2ce30d90cf434              # double 0.58766977684684329
	.quad	0x3fe2d9ebd78177ad              # double 0.58910171595538474
	.quad	0x3fd38a8fbc2594f4              # double 0.30533212064467752
	.quad	0x3fe8b283ee027a2a              # double 0.77179142462029415
	.quad	0x3fe68244479bfaeb              # double 0.70340169893446836
	.quad	0x3fedcfe5959f9a9a              # double 0.93162802909212705
	.quad	0x3fcc1e44eaea211c              # double 0.21967374296605946
	.quad	0x3fd5cb0bc9376c7e              # double 0.34051794672058822
	.quad	0x3fbc4c6b440abb78              # double 0.11054106150798571
	.quad	0x3fe21a9626833d8b              # double 0.56574542543414574
	.quad	0x3fd368eeb82a02e8              # double 0.30327957138801631
	.quad	0x3fc0ae40e610dd74              # double 0.13031779512105468
	.quad	0x3fd01f2d5159e136              # double 0.25190289444391867
	.quad	0x3fd5610c847f6632              # double 0.33404839457725466
	.quad	0x3fd9520d423c3386              # double 0.39563304394032917
	.quad	0x3fa6cd6788f86260              # double 0.044535861463548043
	.quad	0x3fc2c6e3b58e60f0              # double 0.14669462552115631
	.quad	0x3fe0898b1c0d62ca              # double 0.51678996542894962
	.quad	0x3fe1016a12c1dad3              # double 0.5314226499893614
	.quad	0x3fdbd71d5bc3d000              # double 0.43500455819525996
	.quad	0x3feacca8cdbf4854              # double 0.83748283562659731
	.quad	0x3fe6032217c9e9b1              # double 0.68788246771082673
	.quad	0x3fe3cdb29fc54b74              # double 0.61885958867274704
	.quad	0x3fed91c722924492              # double 0.92404515030115619
	.quad	0x3fed75ca48082275              # double 0.92062868183809476
	.quad	0x3fe600127fcec51b              # double 0.68750882112923095
	.quad	0x3fbe23d7cc81c0c8              # double 0.11773442023127523
	.quad	0x3fde11398766c450              # double 0.46980131361766997
	.quad	0x3fe61e4f87d91eae              # double 0.69120003254734796
	.quad	0x3fed225c3d1c9806              # double 0.91044437347295637
	.quad	0x3fd18934302625ce              # double 0.27399925901462729
	.quad	0x3fb4c80cd1b2cda8              # double 0.081177521892462523
	.quad	0x3fd71a682a0da2ba              # double 0.3609867487598809
	.quad	0x3fd3f537838a2eee              # double 0.31184184880906585
	.quad	0x3fcbdf6a6cfe7fac              # double 0.21775560686091688
	.quad	0x3fef6fec6bd10ce0              # double 0.98241253908090797
	.quad	0x3fbcc292c93941c0              # double 0.11234395420729637
	.quad	0x3f9136671a62cc00              # double 0.016809092507809709
	.quad	0x3f93583d4cba13e0              # double 0.01889129429629921
	.quad	0x3fed8822806e97cf              # double 0.92286801418662801
	.quad	0x3fd8e3568d49c61e              # double 0.38887561605142362
	.quad	0x3feb5156e3d31d73              # double 0.8536791276646184
	.quad	0x3fd9610d5a88394a              # double 0.39654859391238928
	.quad	0x3fe416ec7a01acd9              # double 0.62779830769923273
	.quad	0x3fddf1896f01c020              # double 0.46786723938476094
	.quad	0x3fe128bec0ab9881              # double 0.53622377043645042
	.quad	0x3fdcb0bd4e4159f4              # double 0.44828732149235795
	.quad	0x3f91729cf9cc1420              # double 0.017038777109537162
	.quad	0x3fe6d5d79dd4bd7f              # double 0.71360379053469092
	.quad	0x3fe6fc0de883a768              # double 0.71826835072463968
	.quad	0x3fd240f717c6c47a              # double 0.28521516153256921
	.quad	0x3fe53013b8c33ddc              # double 0.6621187790532832
	.quad	0x3fb0cf6d5f140af8              # double 0.065665088379358028
	.quad	0x3fe607414bdcb589              # double 0.68838562790703961
	.quad	0x3fd2098cc339ba1e              # double 0.28183287682523595
	.quad	0x3fde138372a9af80              # double 0.46994100759069823
	.quad	0x3fe555f544375a7a              # double 0.66674292872887908
	.quad	0x3fca951ac1ea80b4              # double 0.20767530888133978
	.quad	0x3fe97f4aa43b5b5d              # double 0.7967885215428897
	.quad	0x3fcf2243e588d824              # double 0.24323319156400303
	.quad	0x3fc3c492890751d4              # double 0.15443641367768512
	.quad	0x3fdbb1e2a36c11fe              # double 0.43273225745386401
	.quad	0x3fe28d7f05b1ecfc              # double 0.57977248298939754
	.quad	0x3fea3cc8174ec9ef              # double 0.81991962959574305
	.quad	0x3fe702f9e750a1c0              # double 0.71911330393509587
	.quad	0x3fb40b60b54c64c8              # double 0.078298610937412083
	.quad	0x3fef0b4e559543b8              # double 0.97013012614671989
	.quad	0x3fec92f4f0d44082              # double 0.89293906247077381
	.quad	0x3fe71d37b34f1f20              # double 0.72231659909536816
	.quad	0x3fed5cf781c9cccf              # double 0.91759848927758891
	.quad	0x3fe09d9b719b4f06              # double 0.51923916043094276
	.quad	0x3fd25584640062e8              # double 0.28646955266735441
	.quad	0x3fcdf90e36cc1958              # double 0.23416307140014214
	.quad	0x3fd0449b29c451de              # double 0.25418738440319355
	.quad	0x3fd290a6488082a4              # double 0.29007870750687403
	.quad	0x3feaaa78f7ef75c6              # double 0.83330963539963743
	.quad	0x3fc1a2171f44d378              # double 0.13775910403060343
	.quad	0x3fe634eb3c3bf9aa              # double 0.69395982517726407
	.quad	0x3fca8ec184771f28              # double 0.20748156517060434
	.quad	0x3fe5cbaa7a749212              # double 0.68111156384526539
	.quad	0x3fec1daf960494ef              # double 0.87862376499529471
	.quad	0x3fe9fe01a6666f1c              # double 0.81225664615655857
	.quad	0x3fed03ed1bf9c917              # double 0.90672927345284193
	.quad	0x3fc473e63d831898              # double 0.15978696826477257
	.quad	0x3fd0af4dc2c226b0              # double 0.26069969195723797
	.quad	0x3febfde09327bec2              # double 0.87474087468395845
	.quad	0x3fe8bffd809e8061              # double 0.77343630906035454
	.quad	0x3fc847b473b8c7a0              # double 0.18968825960615465
	.quad	0x3fe2784427ba1c0d              # double 0.577180936424044
	.quad	0x3fb9c706c84594b8              # double 0.10069315328071837
	.quad	0x3fe859322b520dd7              # double 0.76088818036117345
	.quad	0x3fcd4ce212c5b3e4              # double 0.22890878597846076
	.quad	0x3feaa78fb0151337              # double 0.83295425788001054
	.quad	0x3fefb1bfd80c61d4              # double 0.99044792363116096
	.quad	0x3fd40cdf8f120b46              # double 0.31328572246291164
	.quad	0x3fe9013cd65374d0              # double 0.78140107975527862
	.quad	0x3fde40dfcb55ff74              # double 0.4727096067144807
	.quad	0x3fd64284c95db220              # double 0.34780997910164224
	.quad	0x3fd98ce8667229ce              # double 0.39922533039557784
	.quad	0x3fe860ccd826ba06              # double 0.76181642739339916
	.quad	0x3fedc02422f8a064              # double 0.92970473127662645
	.quad	0x3fe14217091a7931              # double 0.53931762483606438
	.quad	0x3fbb143ddd465748              # double 0.10577761318412826
	.quad	0x3fc247d480aa6a14              # double 0.14281708033088647
	.quad	0x3fdfa666eee38222              # double 0.49453137711501161
	.quad	0x3fb8e3e116a0a670              # double 0.09722716143064658
	.quad	0x3fe1c17f4b38ab62              # double 0.55487026874230261
	.quad	0x3fefd853cb94a3fb              # double 0.99515714418259848
	.quad	0x3fe71f3daff389b3              # double 0.72256359448902285
	.quad	0x3fe0c60e40112d30              # double 0.52417671692947998
	.quad	0x3fe6e00330d49a71              # double 0.71484527146533428
	.quad	0x3fd9de7dfba362fe              # double 0.40420484136625123
	.quad	0x3fe3bc479a9e4c14              # double 0.61673336218734898
	.quad	0x3fede34f1cd36e80              # double 0.93399768476542988
	.quad	0x3fd9af0a80d46f6e              # double 0.40130865651166558
	.quad	0x3fadb59135049e40              # double 0.058025872919014621
	.quad	0x3febae6f7dd3ae30              # double 0.86504339767038196
	.quad	0x3fe1ad705cc10d63              # double 0.55242174259221277
	.quad	0x3fec84b71e061bec              # double 0.89120059837375498
	.quad	0x3fd0cc369bca2596              # double 0.2624641915686764
	.quad	0x3fe209f6a8bfc657              # double 0.5637162490731481
	.quad	0x3fde8cb1cca779fc              # double 0.47733731256258216
	.quad	0x3fd17ffad123b946              # double 0.27343626426490564
	.quad	0x3fea72fa09af0a02              # double 0.82653524295193415
	.quad	0x3fe74f6d28315cbc              # double 0.7284456048027077
	.quad	0x3fe2d3be734d3baa              # double 0.58834764976369525
	.quad	0x3fc2e813b9a2d128              # double 0.14770742954500204
	.quad	0x3fe68758f781ccbe              # double 0.70402191487519139
	.quad	0x3fa38c9689f054b0              # double 0.038181976640922044
	.quad	0x3fca08b011873874              # double 0.20339012962216751
	.quad	0x3fd325bdbd629dce              # double 0.29917853827143126
	.quad	0x3feba0dc19ba4347              # double 0.86338620209617367
	.quad	0x3fdbe288c678251c              # double 0.4357015550782124
	.quad	0x3fd5e8de844368ae              # double 0.34233820835437256
	.quad	0x3fe049879a678fba              # double 0.50897579342971899
	.quad	0x3fd0f627a0ac710a              # double 0.26502409640103564
	.quad	0x3fdd3fd0fc1be55a              # double 0.45702004070297664
	.quad	0x3fa16fc627d746d0              # double 0.034055893290895534
	.quad	0x3fc1897da1718f64              # double 0.13700838454235076
	.quad	0x3fec066cf390634a              # double 0.87578437396141706
	.quad	0x3fe598c04af26b06              # double 0.67489637983393957
	.quad	0x3fd93aee760ad9fe              # double 0.39422189261986762
	.quad	0x3fed8d69bec12b7f              # double 0.92351233727218573
	.quad	0x3fd232386ceaabec              # double 0.28431521068949794
	.quad	0x3fd0f257600b0b6e              # double 0.26479133967602919
	.quad	0x3fd177a127dfc43c              # double 0.27292660612062369
	.quad	0x3fe6fb771445289d              # double 0.71819642981542453
	.quad	0x3feb7fcb25454c75              # double 0.85934979705269987
	.quad	0x3fe955cdf306a022              # double 0.7917241808509099
	.quad	0x3fc00cb681205a2c              # double 0.12538796715735268
	.quad	0x3fe5088c24bfd221              # double 0.65729338815305394
	.quad	0x3fdcb09afb79c37e              # double 0.44827913816612142
	.quad	0x3fbcad63a9e3ae60              # double 0.11202071092309884
	.quad	0x3fe91e93e9d1c2e4              # double 0.78498263995978989
	.quad	0x3fda18748e022dd2              # double 0.40774263256090848
	.quad	0x3fc44f1775041e90              # double 0.1586636849753984
	.quad	0x3fa4158e1bc68390              # double 0.039226952448422669
	.quad	0x3fda660e9e69cae4              # double 0.41247907133144524
	.quad	0x3fe1723ea419490b              # double 0.54519588518658801
	.quad	0x3fcf7121c560fa8c              # double 0.245640012146357
	.quad	0x3fee5efe3224fe4c              # double 0.94909581941460308
	.quad	0x3fd27c99ee58d5a8              # double 0.28885505939555367
	.quad	0x3fdef7dba3b7881e              # double 0.48387804973583737
	.quad	0x3fefade9ab439db5              # double 0.98997958612465331
	.quad	0x3fbdff125ec526b8              # double 0.11717333615993197
	.quad	0x3fe491a9b029b4ff              # double 0.64278110892124107
	.quad	0x3fed7d990b65b3e0              # double 0.92158176637678579
	.quad	0x3fe0b0f4181e4d80              # double 0.52160076819056655
	.quad	0x3fd596bdbd546158              # double 0.33732551087589036
	.quad	0x3fef5e1ffe5b5b3d              # double 0.98023986510347749
	.quad	0x3f99240b4915a6e0              # double 0.024551559768417941
	.quad	0x3fef0a6db894410c              # double 0.97002302218064206
	.quad	0x3fecd97e80b697d2              # double 0.90154957904155197
	.quad	0x3fc35ee93d2ed10c              # double 0.15133395659871274
	.quad	0x3fabe332cdacc7b0              # double 0.05446776161842537
	.quad	0x3fedcb204ca9b720              # double 0.9310456750224354
	.quad	0x3fd9aa3027461c1e              # double 0.40101245723093537
	.quad	0x3fe384682ec93708              # double 0.60991295946016155
	.quad	0x3fda4e7db1d5e85c              # double 0.41104071013217491
	.quad	0x3fde27460097ae9a              # double 0.47114706094610315
	.quad	0x3fd992065ef19e2a              # double 0.39953765174729716
	.quad	0x3fe1ffee7efb0479              # double 0.56249165345083363
	.quad	0x3fe92c3efcd641f1              # double 0.7866511285993153
	.quad	0x3fce9c1650ad5b60              # double 0.23913840236010753
	.quad	0x3fe24018ff7610bc              # double 0.57032441992534855
	.quad	0x3fe83584776bca2d              # double 0.75653289150642922
	.quad	0x3fd2504b5a1e8fca              # double 0.28615077782364706
	.quad	0x3f92bfb6ea27d660              # double 0.018309457818722286
	.quad	0x3fc3617338d32b44              # double 0.15141144060756961
	.quad	0x3fe0eb1fe4211536              # double 0.52870173031320777
	.quad	0x3fb182b73ce82940              # double 0.068400814409106836
	.quad	0x3fedfcdad0374daa              # double 0.93711605708306434
	.quad	0x3fe752f84b9ec4e6              # double 0.72887816209381806
	.quad	0x3fe6c3700b3fc3fa              # double 0.71135713765227071
	.quad	0x3fe5d5326e5b5962              # double 0.68227502397602913
	.quad	0x3fe97dfcdfe9bcc5              # double 0.79662936909689874
	.quad	0x3fd630ffb7ab6c7e              # double 0.3467406552933382
	.quad	0x3fe6ed9ee66fb59c              # double 0.71650643355467336
	.quad	0x3fd58eabea4ce130              # double 0.33683297997369532
	.quad	0x3f92a493cbd01880              # double 0.018205937685728646
	.quad	0x3fe4c8730bfd33fc              # double 0.64946892110458476
	.quad	0x3fe4a89fc20ed7db              # double 0.64558399106931164
	.quad	0x3fe60c62e2d919d5              # double 0.68901199632892463
	.quad	0x3fb97ada75b834f0              # double 0.099530843486906439
	.quad	0x3fb02e209a68cf18              # double 0.063203847596750129
	.quad	0x3fd98079a9ce36e0              # double 0.39846650679178985
	.quad	0x3fdad06734acab42              # double 0.41896991867058742
	.quad	0x3feb4f7733fcf4cf              # double 0.85345039514472798
	.quad	0x3f81d8d666c12f40              # double 0.0087143659694884911
	.quad	0x3fe82f95a3d336e2              # double 0.75580865857201851
	.quad	0x3fbdc0954c2af4b8              # double 0.11621983632626864
	.quad	0x3fe33a0f6306254d              # double 0.60083741512895872
	.quad	0x3fe115e6381f3c4b              # double 0.53392325364428339
	.quad	0x3fdd86ba0f2c7eec              # double 0.46134807092492625
	.quad	0x3fbd3c5b4d361938              # double 0.11420221934358643
	.quad	0x3fe925db78e6da21              # double 0.78587125409723424
	.quad	0x3fddfa9cb7148212              # double 0.46842115286747898
	.quad	0x3f583d1ffe422800              # double 0.0014794170793117623
	.quad	0x3fc46726c6a67a7c              # double 0.15939793300363536
	.quad	0x3fef1483678b7b27              # double 0.97125406478503328
	.quad	0x3fe3728260a11ef6              # double 0.60772818444180987
	.quad	0x3fb2afc5bc34d640              # double 0.072994574021174152
	.quad	0x3fe00d26debe3efc              # double 0.50160544876595692
	.quad	0x3fd1a916b496b0b2              # double 0.27594535480126148
	.quad	0x3febcb52cec35523              # double 0.86856975921060486
	.quad	0x3feec148a211cc46              # double 0.96109420446590188
	.quad	0x3fc7c360904a8360              # double 0.18564993901693594
	.quad	0x3fdee4f359b04d2e              # double 0.48272403486881188
	.quad	0x3fe4038d3e15a047              # double 0.62543356061815636
	.quad	0x3fe517247d86fb24              # double 0.65907501713795513
	.quad	0x3fe9cc2f310e72a4              # double 0.80617484647116954
	.quad	0x3fe135e1bad17b98              # double 0.53782736289928135
	.quad	0x3fd762b77de9a930              # double 0.36540019317785077
	.quad	0x3fc1672da8ad51b8              # double 0.13596125351126687
	.quad	0x3feddd9bed58cd12              # double 0.93330189091503457
	.quad	0x3fd11badf7cddf56              # double 0.26731442641856995
	.quad	0x3fe7af140bb82bb8              # double 0.74012186325977947
	.quad	0x3fd87e137e375efe              # double 0.38269507718858609
	.quad	0x3fee712389187f26              # double 0.95131088997365931
	.quad	0x3fd8e501e9891dbe              # double 0.38897750669681475
	.quad	0x3feb4b58b33bcef4              # double 0.85294756895606704
	.quad	0x3fd7c53a47e57f7e              # double 0.37141282101764961
	.quad	0x3fd563cecc8dd31c              # double 0.3342167852018052
	.quad	0x3fd0534b747460ec              # double 0.25508390781898416
	.quad	0x3fe9c0c13d96a0a3              # double 0.80477964428884652
	.quad	0x3fdadf2150c4f0ec              # double 0.41986878287913387
	.quad	0x3fc43749bf22f5c4              # double 0.15793725807990999
	.quad	0x3faf2151e28e7850              # double 0.060801085382295228
	.quad	0x3faca2f67e8a0ce0              # double 0.055930808016478428
	.quad	0x3fc41b6a1f8c6fa0              # double 0.15708662548501895
	.quad	0x3feac4ce4c499d00              # double 0.8365241518012283
	.quad	0x3fec310361ccb43c              # double 0.880983057989972
	.quad	0x3fc5eb266077c540              # double 0.1712387057337228
	.quad	0x3fd48c13cdbe8138              # double 0.32104964344218301
	.quad	0x3feca449cf3ce68c              # double 0.89505472637320471
	.quad	0x3fb09a519de631c0              # double 0.064854718255623389
	.quad	0x3fb80306e90565f8              # double 0.093796188249505863
	.quad	0x3fdb2c475221ca78              # double 0.42457755108549788
	.quad	0x3fd2ca6ad4419100              # double 0.29360457161079978
	.quad	0x3fd000b9bec68d88              # double 0.25004428511075405
	.quad	0x3fd184932001980a              # double 0.2737167179642489
	.quad	0x3fc61617f24a25a4              # double 0.17254924135731387
	.quad	0x3fe5619697e4d62a              # double 0.66816262881065325
	.quad	0x3fb1be2763c28320              # double 0.069307767730162784
	.quad	0x3fefe526d6db6b48              # double 0.99672262157705748
	.quad	0x3fed830505089560              # double 0.92224360449896991
	.quad	0x3fec49f7912d1728              # double 0.88402918200219904
	.quad	0x3fedab46ee8d37ce              # double 0.92715784637561582
	.quad	0x3f900121a231cd20              # double 0.015629315876549588
	.quad	0x3fea5ba398b2307d              # double 0.82368640731284837
	.quad	0x3fe7f18fbe7f4d9b              # double 0.7482374878549537
	.quad	0x3fe6fe14f69a68f7              # double 0.71851585545235153
	.quad	0x3fe8ee87a31ad316              # double 0.77911741119769107
	.quad	0x3feb9155e785434f              # double 0.86149115771159213
	.quad	0x3fe6d7611da54fe5              # double 0.71379142561135878
	.quad	0x3fb9c79996447ed0              # double 0.10070190352098085
	.quad	0x3fd1bd90e2b7156c              # double 0.27719518795159703
	.quad	0x3fc26ab437ec646c              # double 0.14388134699473498
	.quad	0x3fe569f0b7b74bd3              # double 0.66918216592818636
	.quad	0x3feeb6b71dfa3f4a              # double 0.95980411391244869
	.quad	0x3fe4270febc701ce              # double 0.62976833391444997
	.quad	0x3fec090727414632              # double 0.87610204379070056
	.quad	0x3fde46935ec84eae              # double 0.47305759674166381
	.quad	0x3fe21c835653dd4f              # double 0.56598059521540189
	.quad	0x3fd2dfe3f08c724c              # double 0.29491518488956525
	.quad	0x3fce73750cc73aac              # double 0.23789847492158367
	.quad	0x3fef03f06fae8008              # double 0.9692308598787358
	.quad	0x3f962a171e63f800              # double 0.021644936780823798
	.quad	0x3f9c37cfb7c4aa80              # double 0.027556653586695123
	.quad	0x3fd440bbcf7680b0              # double 0.3164510274891752
	.quad	0x3fb3ce798af2a200              # double 0.077369305060194904
	.quad	0x3fc45f97bac40bfc              # double 0.15916725749420368
	.quad	0x3fe5cbace2509e89              # double 0.68111271097309711
	.quad	0x3fe9f53f13d901a7              # double 0.8111873042726544
	.quad	0x3fe36f067a94ce54              # double 0.60730289403586335
	.quad	0x3fe97f1d1702bf93              # double 0.7967668008259231
	.quad	0x3fdf37e7881408ce              # double 0.48778713501827731
	.quad	0x3fdde1d1b54e7f6e              # double 0.46690790849424146
	.quad	0x3fd8b985f884598a              # double 0.38632344502675464
	.quad	0x3fe4f0cd38947e6a              # double 0.65439473200599463
	.quad	0x3fea344ab827a892              # double 0.81888328521496789
	.quad	0x3fd75102ae3cce14              # double 0.36431948676474346
	.quad	0x3fdb3320a786dade              # double 0.42499557838475066
	.quad	0x3fec3291962bb0a5              # double 0.88117293672759855
	.quad	0x3fe8e5899f5869ae              # double 0.77801972505704042
	.quad	0x3fedb60abe8e60b9              # double 0.92847192018509539
	.quad	0x3fe7ab47ca38eac0              # double 0.73965825554417819
	.quad	0x3faea1d85acbb630              # double 0.059828530391183299
	.quad	0x3fe7aaed29566034              # double 0.73961504052841187
	.quad	0x3fb4103fe41b59c0              # double 0.078372948827882816
	.quad	0x3fb3a481b61ab3d0              # double 0.076728922804888854
	.quad	0x3fe985bc27b9f893              # double 0.79757507094452007
	.quad	0x3fc6f918b58923ac              # double 0.17947682251022223
	.quad	0x3fddda5b5b3e4616              # double 0.4664524451301032
	.quad	0x3fe0d1fbd726675d              # double 0.52563278218734022
	.quad	0x3fd978928f93f4e2              # double 0.39798416157993988
	.quad	0x3fe75028f7915fdb              # double 0.72853515961741822
	.quad	0x3fe283eb6dc5f4bb              # double 0.57860347213831831
	.quad	0x3fd0e21f22ff2660              # double 0.26380136888164962
	.quad	0x3fd300b08923c560              # double 0.29691708939124872
	.quad	0x3fcd7d6be5aaf474              # double 0.23039005960700687
	.quad	0x3fe985eef761e262              # double 0.79759929959170628
	.quad	0x3fc6bd054729184c              # double 0.17764345144877536
	.quad	0x3fe97cd9b3222a19              # double 0.79649052607539084
	.quad	0x3fdf26e71d6e8e60              # double 0.48674943803982806
	.quad	0x3fef266860bd346a              # double 0.97343844313003314
	.quad	0x3fd6771d55a6908e              # double 0.35102017750092152
	.quad	0x3fdca16c0730b2b2              # double 0.44735241605921339
	.quad	0x3fdd4121f835ebcc              # double 0.45710038413352261
	.quad	0x3fe2bc075213440c              # double 0.58545270948718686
	.quad	0x3fd36af1675daf80              # double 0.3034022817071147
	.quad	0x3fed96374cce762c              # double 0.92458691598193842
	.quad	0x3fc751aa67b9a8d8              # double 0.18217973770817397
	.quad	0x3fcec209f9b51434              # double 0.24029659931889713
	.quad	0x3fe1398ca6908386              # double 0.53827507526521923
	.quad	0x3fe72276e9067faf              # double 0.72295709145327247
	.quad	0x3fc709285ebbe564              # double 0.17996697068864898
	.quad	0x3fee69b35cc0d281              # double 0.95040290943013883
	.quad	0x3fc4a48c20217010              # double 0.16127158707502121
	.quad	0x3fe9a4e6643fc0d1              # double 0.80137939052476714
	.quad	0x3fb3fc2d3202c0c8              # double 0.078066658696800961
	.quad	0x3fc36e22b81f1a48              # double 0.151798572447847
	.quad	0x3f7497d7956ece80              # double 0.0050276204337255104
	.quad	0x3fa07a59331233f0              # double 0.03218344448496413
	.quad	0x3fe22bdec1ae63f9              # double 0.56785524204599291
	.quad	0x3fd10dead84be9e0              # double 0.26647444842060786
	.quad	0x3fe85e4c2eaa2e5d              # double 0.76151093591893082
	.quad	0x3fd0497286528f00              # double 0.25448287122183899
	.quad	0x3fc7ae227f4c5b2c              # double 0.18500167098746922
	.quad	0x3fd5ba58f4ea9a3e              # double 0.3394987479936481
	.quad	0x3fde43d78e8aa212              # double 0.47289074821540666
	.quad	0x3fe668af9621faca              # double 0.70027903864669239
	.quad	0x3fef389fe70f6b58              # double 0.97566218499137402
	.quad	0x3fefb48814830b37              # double 0.9907875443098878
	.quad	0x3fd2a9d9d92f215a              # double 0.29161688050637269
	.quad	0x3fec88cbc7eeac64              # double 0.89169873284607747
	.quad	0x3fe22f7409260bc0              # double 0.56829263483847825
	.quad	0x3fec53fe65c9fb8d              # double 0.88525314217246065
	.quad	0x3fd412e1d67d211c              # double 0.31365247675104668
	.quad	0x3fd36f3f96c4e596              # double 0.30366506312892605
	.quad	0x3fe618e30808068d              # double 0.69053794449446715
	.quad	0x3feb6da78c02f12d              # double 0.85713555665964736
	.quad	0x3fe68f019b0aebe6              # double 0.70495682031412055
	.quad	0x3fe63f9d09f75ec0              # double 0.69526531168499872
	.quad	0x3fee92590cfc50ba              # double 0.95536472831965757
	.quad	0x3fd555cd7cf63e08              # double 0.33336198046978938
	.quad	0x3fbbeb225f0c3d18              # double 0.109056614117652
	.quad	0x3fd5ac1154cbdb2a              # double 0.3386271789635652
	.quad	0x3fd9d665a903d422              # double 0.40371076112143289
	.quad	0x3fef22772dc346a8              # double 0.97295721948667779
	.quad	0x3feaf10b5b58ce5f              # double 0.8419243606680985
	.quad	0x3fe3faab78375c52              # double 0.62434934119927221
	.quad	0x3fe1d98232ed6a27              # double 0.55780134150274285
	.quad	0x3fe18ec8565548ad              # double 0.54867951261464543
	.quad	0x3fe552f210bff755              # double 0.66637519141634505
	.quad	0x3fe84e7b8632d813              # double 0.75958038530984806
	.quad	0x3fb8f72ccea0f818              # double 0.097521591612320768
	.quad	0x3fe7a82a6f52c859              # double 0.73927804701657884
	.quad	0x3febdba7de2a0759              # double 0.8705634440559421
	.quad	0x3fe2ca3fee799c1b              # double 0.58718868806033997
	.quad	0x3fdc4f4aed21b1da              # double 0.44233964116463442
	.quad	0x3fb13ce02c7c5a10              # double 0.067335139141825318
	.quad	0x3facf53887b19780              # double 0.056558386387037807
	.quad	0x3fead08f6592318f              # double 0.83795900190448147
	.quad	0x3fe26e4b68577a31              # double 0.57596369151344196
	.quad	0x3fca78537049601c              # double 0.20679705603356602
	.quad	0x3fdd11cc2af34df2              # double 0.45421127504707137
	.quad	0x3fe67d078f6abf32              # double 0.70276239405754937
	.quad	0x3fe55a96b15cba02              # double 0.66730818406159664
	.quad	0x3fe4a10e6a4d0a06              # double 0.64466019403363428
	.quad	0x3fe53f9df220bc6f              # double 0.66401574411965025
	.quad	0x3fdfa5affe6280fc              # double 0.49448776094688163
	.quad	0x3fe4be1e66498ea8              # double 0.64820785501475076
	.quad	0x3fcc18c90dacadd0              # double 0.21950638930989763
	.quad	0x3fdd7920affeff48              # double 0.46051804720990619
	.quad	0x3fe8a347f76aad2e              # double 0.76993177722525785
	.quad	0x3fddc0adc3b861bc              # double 0.46488517869286361
	.quad	0x3fe793b5b5fae310              # double 0.73678098242734968
	.quad	0x3fe1761a666f6a41              # double 0.54566688544156972
	.quad	0x3fc60122e1b4acd4              # double 0.17190967579640548
	.quad	0x3fcaed3068ddd0b8              # double 0.21036343689377701
	.quad	0x3fde2c7ac5cdfc00              # double 0.47146481816156438
	.quad	0x3fcadf871b08ae68              # double 0.20994652576461026
	.quad	0x3fe6f463c5d4f9c3              # double 0.71733273161935818
	.quad	0x3fcf554cab660a14              # double 0.24479063386031952
	.quad	0x3feee6c7617b0b09              # double 0.96567124404131832
	.quad	0x3fea991bf749eba1              # double 0.83119009302696523
	.quad	0x3fee568f01aabc4e              # double 0.94806623769353293
	.quad	0x3fe9132f3e32c69d              # double 0.78359186313737761
	.quad	0x3fe44ba24314f536              # double 0.63423264600684237
	.quad	0x3fe8cde92efd6aad              # double 0.77513560464588738
	.quad	0x3fd5e630fa14ed98              # double 0.34217476293607652
	.quad	0x3fe25fc16a015fb3              # double 0.57418890670941491
	.quad	0x3fe5775ceccde840              # double 0.67082067728848216
	.quad	0x3fe4a7ca410bab53              # double 0.64548218445029659
	.quad	0x3fd223455f435c80              # double 0.28340277007141168
	.quad	0x3fe7d461200c30b9              # double 0.74467521914768675
	.quad	0x3fcbc922ee9ebdb0              # double 0.21707569743510424
	.quad	0x3fdd08a8fa743502              # double 0.45365356882469154
	.quad	0x3fe60b2194c325e5              # double 0.68885878615509155
	.quad	0x3fe95cdebd4aed8d              # double 0.79258667918422676
	.quad	0x3fe11a01e59f6943              # double 0.53442473266776636
	.quad	0x3fe5fc6677ae5ff8              # double 0.6870605790636537
	.quad	0x3fde528d4a318126              # double 0.47378856893012011
	.quad	0x3feef5e505dbed5e              # double 0.96751643318513536
	.quad	0x3fdc1f9816e23560              # double 0.43942835077981179
	.quad	0x3febce8dd442f964              # double 0.86896411378237958
	.quad	0x3fe4788011e22528              # double 0.63970950596664
	.quad	0x3fe77af2463f3f21              # double 0.73375810356262516
	.quad	0x3fd3de371b8cf746              # double 0.3104379433678911
	.quad	0x3fd97d0cff942074              # double 0.3982574935803378
	.quad	0x3fe092a8a1d54b31              # double 0.51790267570536319
	.quad	0x3fd93e3e5a96ae2e              # double 0.39442404600660808
	.quad	0x3fd5c9b33eb5f8ce              # double 0.3404358017359187
	.quad	0x3fea14cea247cdbf              # double 0.81503993697554467
	.quad	0x3faf6002bdc947d0              # double 0.061279378573672383
	.quad	0x3fb3b6febab385a0              # double 0.077011032658921952
	.quad	0x3fc6cbe00f739a90              # double 0.1780967784354357
	.quad	0x3fe288348b4c9f97              # double 0.5791266174974109
	.quad	0x3fcf467ed7ca0158              # double 0.24433885132385558
	.quad	0x3fe0ed3f27ad16e0              # double 0.52896077870601843
	.quad	0x3fb3dfdb51230df8              # double 0.077634532269307388
	.quad	0x3fb84182db976078              # double 0.094749621020470687
	.quad	0x3fea46165ab65761              # double 0.82105558125725164
	.quad	0x3f75b960b2815180              # double 0.0053037430989956169
	.quad	0x3fede334fcc22d25              # double 0.93398522726912303
	.quad	0x3fe247766d191958              # double 0.57122346218310849
	.quad	0x3fd97666d88e704c              # double 0.3978516688164333
	.quad	0x3fcc2b1dc3a3adf8              # double 0.22006580403045439
	.quad	0x3fe80aca07b222a2              # double 0.75131703856557785
	.quad	0x3fae4ca5893fd870              # double 0.059178517345501613
	.quad	0x3fb7b448666df4f8              # double 0.092594647414404707
	.quad	0x3fdbd5ac41cc7716              # double 0.43491655755666281
	.quad	0x3fc91c8400aeb580              # double 0.19618272813151449
	.quad	0x3fef5e4392eec5eb              # double 0.98025683114809447
	.quad	0x3fea25a0253eee51              # double 0.81709296488356575
	.quad	0x3fe917cd081d1866              # double 0.78415538391778905
	.quad	0x3fe70b247c2b266a              # double 0.72011017085715179
	.quad	0x3fe3f4b7558fe4d0              # double 0.62362257682175404
	.quad	0x3fd415fbf2931838              # double 0.3138418072597946
	.quad	0x3fbd289342f65b80              # double 0.11390037903616523
	.quad	0x3fce7873d64e6cb8              # double 0.23805091823746749
	.quad	0x3fe0ed504c3104fc              # double 0.52896895295285118
	.quad	0x3fa4a14a7f487360              # double 0.040293052709080568
	.quad	0x3fa0404967e4a300              # double 0.031740468914284392
	.quad	0x3fdb1cbf738a4e20              # double 0.42362962992885578
	.quad	0x3feffbc001131267              # double 0.99948120317328636
	.quad	0x3feb4a57b9b5cd36              # double 0.85282503386989705
	.quad	0x3fd713a2ad320570              # double 0.36057345307934607
	.quad	0x3fcd2cf100164ca4              # double 0.22793400291684407
	.quad	0x3fe3558d060fdcd1              # double 0.60419322189309288
	.quad	0x3fdff091fe761076              # double 0.4990582451794191
	.quad	0x3fdb27e1f2cf4dac              # double 0.42430924140827631
	.quad	0x3fe7eac8a4cdad25              # double 0.74741012752693747
	.quad	0x3fe4c7c31e4a550b              # double 0.64938503185354202
	.quad	0x3fdf36977840f600              # double 0.4877070116379798
	.quad	0x3fe61eab1d4c026b              # double 0.69124370309880356
	.quad	0x3fc992ccda6a77c0              # double 0.19979248680914274
	.quad	0x3fe4abd074986692              # double 0.64597342274210434
	.quad	0x3fd14c7a928131ce              # double 0.27029289538475332
	.quad	0x3fc242b3b40ed550              # double 0.14266058246509283
	.quad	0x3fe058c144928a08              # double 0.51083434479761625
	.quad	0x3fe4add31fff6d82              # double 0.64621883630336208
	.quad	0x3fcd0bd0b1437c40              # double 0.22692307143640456
	.quad	0x3fd87bcc76f0311a              # double 0.38255607237876321
	.quad	0x3fe10fcc416c5fa3              # double 0.53317845132822972
	.quad	0x3fe6e0346b69f65a              # double 0.71486874560623481
	.quad	0x3fe244bd48419d3b              # double 0.57089103806075714
	.quad	0x3fe722cf8c89c6f8              # double 0.72299935768953016
	.quad	0x3fc80092f2464f08              # double 0.18751751737419675
	.quad	0x3fe6d35864011fde              # double 0.71329898388011848
	.quad	0x3fd603d6c4e8573e              # double 0.34398431042915323
	.quad	0x3fd9834253452dcc              # double 0.39863641864641575
	.quad	0x3fec8e5ea47d392d              # double 0.8923791134527953
	.quad	0x3fd1ebdca5fc0c18              # double 0.28002086839131968
	.quad	0x3fe24afc65c81ebd              # double 0.57165355567209242
	.quad	0x3fe03b360135dc05              # double 0.5072278998985672
	.quad	0x3fb3b88d19733368              # double 0.077034777367953944
	.quad	0x3fe96d80ffe4910b              # double 0.79461717585630376
	.quad	0x3f81d4ef2b7ff140              # double 0.0087069211149289893
	.quad	0x3fded42f2e8c853a              # double 0.4817007021502665
	.quad	0x3fe596c7f313d298              # double 0.67465589023648231
	.quad	0x3fe29c4fa6d10162              # double 0.58158094960530726
	.quad	0x3fe37353c33afb24              # double 0.60782802706657835
	.quad	0x3fc9dbd2d5208130              # double 0.20202098280516045
	.quad	0x3fd135c3ad0fd8de              # double 0.26890651608063176
	.quad	0x3fee7279ba60b9c3              # double 0.95147406007691193
	.quad	0x3fee931f942549d0              # double 0.95545939383219469
	.quad	0x3fd29c0d042dbadc              # double 0.2907745877081831
	.quad	0x3fc4bad3ce86a100              # double 0.16195151886245895
	.quad	0x3fe5011e5b3281ca              # double 0.65638654529544138
	.quad	0x3fe279628c0b0aa0              # double 0.57731749870466231
	.quad	0x3f85f0b6ad4a8ec0              # double 0.010713030970982529
	.quad	0x3fc9176c06dee5e4              # double 0.19602728209956333
	.quad	0x3fa88235acbfef80              # double 0.047868420922866584
	.quad	0x3fc30eb8b9bc3c60              # double 0.14888676709276449
	.quad	0x3fe4af068d081906              # double 0.64636542840233413
	.quad	0x3fe3977cea83d6a0              # double 0.61224218181333256
	.quad	0x3fdd18a9e57d257c              # double 0.45463035021801779
	.quad	0x3fec8869f0711947              # double 0.89165207825934878
	.quad	0x3fc035bb0d1a79b4              # double 0.12663972987952621
	.quad	0x3fd2d7910e9a48f2              # double 0.29440714288752112
	.quad	0x3fd5e44387eb0436              # double 0.34205711625333224
	.quad	0x3fecc5688bfe764e              # double 0.89909770338608452
	.quad	0x3fdc78a325f679dc              # double 0.44486311633400333
	.quad	0x3fd21329e9a746e4              # double 0.28241966073720293
	.quad	0x3fdbc600e6eb60fc              # double 0.43396017599799541
	.quad	0x3fb48faed93bd870              # double 0.080317428622807218
	.quad	0x3fd240ca918ab5c6              # double 0.28520454609937607
	.quad	0x3fe7e7cb397d95ee              # double 0.7470451472151447
	.quad	0x3fdf5793bd2c21ba              # double 0.48972028230539488
	.quad	0x3fd128c161ba702c              # double 0.26811251205231446
	.quad	0x3fee6687bd37ce5b              # double 0.95001589733733327
	.quad	0x3fc8b1fee87e750c              # double 0.19293199875111389
	.quad	0x3fe3b79145a00a6b              # double 0.61615813826240406
	.quad	0x3fed098afb7e63cf              # double 0.90741490478387188
	.quad	0x3fe3c35392d18bbc              # double 0.61759356189246928
	.quad	0x3fe19734c6a3b9aa              # double 0.54970778271472409
	.quad	0x3fb8ae1685e4fbc0              # double 0.096406371773794852
	.quad	0x3fdf6fa7272830e2              # double 0.49118975471425419
	.quad	0x3fd79e9c9dbb202e              # double 0.3690558948842434
	.quad	0x3fd21b63ed29f608              # double 0.28292177353418468
	.quad	0x3feb22de87366bd8              # double 0.84800650032718305
	.quad	0x3feed92282d5c6c8              # double 0.96400571397517698
	.quad	0x3fe0681c51a05ca9              # double 0.51270881598147355
	.quad	0x3fd2ccc7900e3516              # double 0.29374875133437806
	.quad	0x3fcbef620b68896c              # double 0.21824288899467648
	.quad	0x3fed3f5e83f4e5e3              # double 0.91398549816875307
	.quad	0x3f4334d0d294e800              # double 5.8613010802521792E-4
	.quad	0x3fe2bc7d3ed5792c              # double 0.58550894043199753
	.quad	0x3fbcfe26868177a0              # double 0.11325302871543252
	.quad	0x3fe2ef60ab4f02a1              # double 0.59172090014188339
	.quad	0x3fe182f8904832e7              # double 0.54723766498645154
	.quad	0x3feedca7e652eaba              # double 0.9644355295671041
	.quad	0x3fe1841a4a837774              # double 0.54737581780839983
	.quad	0x3fccc7c293e90ae8              # double 0.22484619352515911
	.quad	0x3fe2e8e9360f12a6              # double 0.59093151625036877
	.quad	0x3fb7289395d0d538              # double 0.09046289832698029
	.quad	0x3fbe61e517ed8e60              # double 0.11868125757387693
	.quad	0x3fd6a0bbd1ad5ef4              # double 0.35356040455142979
	.quad	0x3fd6530ecefd7838              # double 0.34881944860342484
	.quad	0x3fc586a6bbab9640              # double 0.16817173160159093
	.quad	0x3fc3762bb6959c24              # double 0.15204378524069384
	.quad	0x3fe2d7b2d77d25a6              # double 0.58883039558093198
	.quad	0x3fe4b45c5c9427d0              # double 0.64701669770988168
	.quad	0x3fe32ded1b9c4b94              # double 0.59935622589761062
	.quad	0x3fefb39ffa7b0512              # double 0.9906768696020285
	.quad	0x3fd2dcf0b370fd28              # double 0.29473512195177642
	.quad	0x3fed8b50ad43fd29              # double 0.92325624314245147
	.quad	0x3fdfe8048a83c790              # double 0.49853623892624288
	.quad	0x3fefa33a56760124              # double 0.98867527853875403
	.quad	0x3fea9320d8de90b9              # double 0.83045999867729059
	.quad	0x3fa053efc41b3c30              # double 0.03189038533093258
	.quad	0x3fd19b618fea994c              # double 0.27510870985351654
	.quad	0x3fe8b5dbd191a156              # double 0.77219954425258197
	.quad	0x3fd005075943752a              # double 0.25030692784442243
	.quad	0x3fd48e7a8124d0dc              # double 0.32119619952869782
	.quad	0x3feb4b88b5a6cb6e              # double 0.85297046164337842
	.quad	0x3fd88992de62c6f6              # double 0.38339683263175972
	.quad	0x3fdd17a27e0cc2be              # double 0.45456754979663205
	.quad	0x3fd9a73d5ce7ceae              # double 0.40083250115206226
	.quad	0x3fddcf140b62fad0              # double 0.46576405631996654
	.quad	0x3fe1ecac071105e0              # double 0.56014062290358524
	.quad	0x3fbbe4db71de51f0              # double 0.10896083383551747
	.quad	0x3fe083f6f34cc412              # double 0.51610896605973466
	.quad	0x3fe7d6db7fae3240              # double 0.74497771203602525
	.quad	0x3fdfdaf5353de924              # double 0.49773912619970617
	.quad	0x3fe753b47f163407              # double 0.72896790334346029
	.quad	0x3febd99fb822d210              # double 0.87031541790071465
	.quad	0x3fe4e58ddc4af3ed              # double 0.65302174592909312
	.quad	0x3fb173adf087b8c8              # double 0.068171378348526379
	.quad	0x3fe270a144066b06              # double 0.57624877248903839
	.quad	0x3fec71fdde1032cf              # double 0.88891499873860791
	.quad	0x3fcaa27a02e99054              # double 0.20808339254574781
	.quad	0x3fe0671abb037c10              # double 0.51258598829361013
	.quad	0x3fe8575929d0ec8a              # double 0.76066263358315322
	.quad	0x3fe33ec5e83602cb              # double 0.60141272882182173
	.quad	0x3fb8c15628f30dc0              # double 0.096700081822794992
	.quad	0x3fe0cd7d8670fca4              # double 0.52508426912381312
	.quad	0x3fc4412782aff758              # double 0.15823835259646546
	.quad	0x3fd93489f4707f4c              # double 0.39383171912230774
	.quad	0x3fe12486e5b7976f              # double 0.53570885531074264
	.quad	0x3fe6f3481a1f5f2e              # double 0.71719746686992436
	.quad	0x3fde876537841384              # double 0.4770138780734714
	.quad	0x3fec3faaace1d8af              # double 0.88277181402260918
	.quad	0x3fe58cdfaa669165              # double 0.6734464958322347
	.quad	0x3fef30ee5637d64f              # double 0.97472302283740386
	.quad	0x3fdd6068fe61e7a0              # double 0.45900940744433605
	.quad	0x3fe5e391cc755c12              # double 0.68402948315895373
	.quad	0x3fe5b4fcd9348352              # double 0.67834322378994671
	.quad	0x3fd65d0c92b75da2              # double 0.34942926719437584
	.quad	0x3fec926081d23e82              # double 0.89286828380313943
	.quad	0x3fefac2d170bfbff              # double 0.98976759435015526
	.quad	0x3fe7706e9bb5e660              # double 0.73247461712089645
	.quad	0x3fc0cd5690d30594              # double 0.13126642295359814
	.quad	0x3fda79371449f160              # double 0.41364838582355468
	.quad	0x3fa98ee3a6ebdf30              # double 0.049918283582825018
	.quad	0x3faa3feeb8020260              # double 0.051269016229529951
	.quad	0x3fbc53f5ae84a5b0              # double 0.11065612326333141
	.quad	0x3fef63d39d55ce5a              # double 0.98093586663749055
	.quad	0x3fe02fd7dda3bfed              # double 0.5058402375125276
	.quad	0x3fec831f24580306              # double 0.89100606058499987
	.quad	0x3feab9b7dd8f7680              # double 0.83517068170085906
	.quad	0x3fb911877bbe0070              # double 0.097923724852081894
	.quad	0x3fd3b5205dbab460              # double 0.30793007996800803
	.quad	0x3fe53a4a78e85a0a              # double 0.66336558928270617
	.quad	0x3fe69667e3566532              # double 0.7058600845513523
	.quad	0x3fea208290a83b0a              # double 0.81646850827550677
	.quad	0x3fe72940ea1d6cbf              # double 0.72378583646368344
	.quad	0x3fb4cea5ba16c4e8              # double 0.081278188640471094
	.quad	0x3fe2154983d214a3              # double 0.56509853121010101
	.quad	0x3fc83ba177d23654              # double 0.18931978560105966
	.quad	0x3fed00e84e0fb3f1              # double 0.90636077162127837
	.quad	0x3fefef07c46dac34              # double 0.99792850842403035
	.quad	0x3fb813a1e9a34ce0              # double 0.09404956773805706
	.quad	0x3fe675898801e63d              # double 0.70184780658673385
	.quad	0x3fe1bda3965ff989              # double 0.55439929361436768
	.quad	0x3fc654d7c344cc48              # double 0.17446419748884723
	.quad	0x3feb38da9ba165d1              # double 0.85069017788480938
	.quad	0x3fe400b75bed1ed9              # double 0.62508743242593845
	.quad	0x3fdfff95fdb8ae88              # double 0.49997472550851585
	.quad	0x3fe5cc12f16230b6              # double 0.68116137643075692
	.quad	0x3fdc4060271816d6              # double 0.44142917459281017
	.quad	0x3fcdf3fad2b4e7d0              # double 0.23400817192469825
	.quad	0x3fee35276e214c63              # double 0.94398852834491398
	.quad	0x3fe0b87fdd626911              # double 0.52252190817969979
	.quad	0x3fec24c187ca6a45              # double 0.87948681375139215
	.quad	0x3fdd89035c0789e0              # double 0.46148761737108934
	.quad	0x3fb27e9331ba56b8              # double 0.072243880882832623
	.quad	0x3fd1fe2ccac5580a              # double 0.28113860895007348
	.quad	0x3fe89126638e9c83              # double 0.7677185005640158
	.quad	0x3fcf50e0e48f5b30              # double 0.24465571556239629
	.quad	0x3fecbc1d2121815f              # double 0.89796310873866136
	.quad	0x3fb42422e9e86eb0              # double 0.078676397425108346
	.quad	0x3fe0c88156a63fd0              # double 0.52447573589051366
	.quad	0x3fd4c024af1cb2b6              # double 0.32422749615470126
	.quad	0x3fdc52eb88b9266c              # double 0.4425610385120311
	.quad	0x3fc0628c2dc91ad8              # double 0.12800743327735264
	.quad	0x3fdc80deeb861e6a              # double 0.44536564827328695
	.quad	0x3fd30b6059c702c2              # double 0.29756935851404986
	.quad	0x3fe4fc21821e09a3              # double 0.65577769673864272
	.quad	0x3fe56ebe1681c7e4              # double 0.66976837535753164
	.quad	0x3fedb1ed38010573              # double 0.92796956003455333
	.quad	0x3faa67fb938c09b0              # double 0.051574575196372208
	.quad	0x3f893f91b544b780              # double 0.012328279823659249
	.quad	0x3fe724b48433c028              # double 0.72323060818417151
	.quad	0x3fec44a9a5ad3d0a              # double 0.88338167532666145
	.quad	0x3fd663d5b0a14098              # double 0.34984342812550429
	.quad	0x3fe58c6852a51c87              # double 0.67338958875269916
	.quad	0x3fa5f4e36f5743f0              # double 0.04288397535459143
	.quad	0x3fb29465c60beeb0              # double 0.072576866961692188
	.quad	0x3fe4e9e193b4763a              # double 0.65354994629496521
	.quad	0x3fa051b7ac049730              # double 0.031873454807551105
	.quad	0x3fee27887b772e2f              # double 0.94232582201352055
	.quad	0x3fe1838370c37813              # double 0.54730388664370577
	.quad	0x3fe967c16a5f5a80              # double 0.79391546989320716
	.quad	0x3fc728311b6e7274              # double 0.18091405715394482
	.quad	0x3fabcd05f93b9270              # double 0.054298578905023542
	.quad	0x3fe79fffb112266e              # double 0.73828110298309269
	.quad	0x3fe9044440c94d48              # double 0.78177082685071131
	.quad	0x3fdb3577c282d27c              # double 0.42513841624467097
	.quad	0x3fe631b324fb77be              # double 0.69356686804871237
	.quad	0x3fcc054afbd11950              # double 0.21891152663938351
	.quad	0x3fccb38f8e26ae10              # double 0.22422975960704195
	.quad	0x3f757a55ad8b5600              # double 0.0052436205666785973
	.quad	0x3fe530c1fdb16bae              # double 0.6622018771116609
	.quad	0x3fdb92bc3a022c44              # double 0.43083100952998543
	.quad	0x3fdc48ec059de5fc              # double 0.44195080326571179
	.quad	0x3fe015427cbcb506              # double 0.50259518015596494
	.quad	0x3fd82dbff3d6b62c              # double 0.37779234707236031
	.quad	0x3fbd0807563cab68              # double 0.11340375762362742
	.quad	0x3fc6cbef32fd59e0              # double 0.17809858312348492
	.quad	0x3fe52984755cfc7a              # double 0.66131804392342919
	.quad	0x3fcfed0aa8d2bd00              # double 0.24942143672294748
	.quad	0x3fc034cbfd8557d8              # double 0.12661123160313426
	.quad	0x3fbe334bdfa4e050              # double 0.11797022066173324
	.quad	0x3fe830701a8b4fd4              # double 0.75591283020411959
	.quad	0x3fb215bc82726938              # double 0.070644170615570157
	.quad	0x3fd613ea9cfdc852              # double 0.34496560412583677
	.quad	0x3fec3f76fd829482              # double 0.88274716867148606
	.quad	0x3fe3683914ec7a2f              # double 0.60647253119151923
	.quad	0x3fefbaa597c9efb6              # double 0.99153403898480152
	.quad	0x3fe85a745f9d272b              # double 0.76104181933007931
	.quad	0x3fe79659592ff70b              # double 0.73710315150648975
	.quad	0x3fee68bca6d98062              # double 0.95028526866736862
	.quad	0x3fd4197a1e458070              # double 0.31405499416542337
	.quad	0x3fec4c4e0421ff00              # double 0.88431454474627458
	.quad	0x3f9734a18a503220              # double 0.02266170889565633
	.quad	0x3fe8d11b2837c4fa              # double 0.77552564482735353
	.quad	0x3fe21cfdc916e313              # double 0.56603898310922529
	.quad	0x3fc81f1bb832b660              # double 0.18844934934661506
	.quad	0x3fd0196eb6cdb3aa              # double 0.25155227519899859
	.quad	0x3fbbf285c2252048              # double 0.10916934957379099
	.quad	0x3fd3041ed8960772              # double 0.29712649489385179
	.quad	0x3fe5a1eb368077d1              # double 0.67601547856224375
	.quad	0x3fe7ba37063303a0              # double 0.74148131571574893
	.quad	0x3fdb4b95af252282              # double 0.42648832420358229
	.quad	0x3fd7fb6d61782736              # double 0.37472090261927649
	.quad	0x3feeea73c2a20889              # double 0.96611965193030002
	.quad	0x3fe9243422c696c7              # double 0.78566939155708659
	.quad	0x3fefa8d48f441f9f              # double 0.98935916883145924
	.quad	0x3fe591acee945f73              # double 0.67403265569281101
	.quad	0x3fef3d947bb255a4              # double 0.97626709136482192
	.quad	0x3fea45cc4838ba74              # double 0.82102026086597712
	.quad	0x3fcaee57554c02ac              # double 0.21039859452141252
	.quad	0x3fe4b390df60e4a6              # double 0.64691966656314004
	.quad	0x3fea358a8ad31296              # double 0.81903578867111793
	.quad	0x3fe785b41c728323              # double 0.73507123523822704
	.quad	0x3fb68c68fc14de68              # double 0.088079988044108881
	.quad	0x3fecb58848893074              # double 0.89715971152464968
	.quad	0x3fe1640fb9683d7b              # double 0.54346452915517263
	.quad	0x3fecdde77aa028ed              # double 0.90208791685406953
	.quad	0x3fe7f11f8e09d754              # double 0.7481839918316191
	.quad	0x3fe8a03b65d61bbb              # double 0.76955957307733713
	.quad	0x3fdb4cfd44afe2ca              # double 0.42657405574531693
	.quad	0x3fc44b385287caf8              # double 0.15854553251082115
	.quad	0x3fe416399e79cdf4              # double 0.62771302177719557
	.quad	0x3fdeeff4ca25ef36              # double 0.48339576474221546
	.quad	0x3fdc00028353937c              # double 0.4375005991444636
	.quad	0x3fc666ec0a8d7f30              # double 0.17501593127507808
	.quad	0x3fe225c31703b8ef              # double 0.56710962767627204
	.quad	0x3fe30213b10b6cb4              # double 0.59400353030232234
	.quad	0x3fdd8640a27c8862              # double 0.46131912105386708
	.quad	0x3fdd9e7ca317d9ae              # double 0.46279827048365518
	.quad	0x3fe1a98ae9ad3943              # double 0.55194612159701995
	.quad	0x3fb1e3d53e192538              # double 0.06988270536489416
	.quad	0x3fd14b7410a077ce              # double 0.27023030875886611
	.quad	0x3fd1869cb83b575a              # double 0.27384107581507566
	.quad	0x3fd5d0287f0a5180              # double 0.34082996755866901
	.quad	0x3fec1c0d0801e9e8              # double 0.87842418254814181
	.quad	0x3fc88f09751583cc              # double 0.19186514107698682
	.quad	0x3fc2520ee016816c              # double 0.14312921468536943
	.quad	0x3fea7d505e70f45f              # double 0.82779711194565297
	.quad	0x3fd8cbc8840a0370              # double 0.3874379434055788
	.quad	0x3fca97c31b09e378              # double 0.20775641269917933
	.quad	0x3fa5f0e924e4ed90              # double 0.042853627923672311
	.quad	0x3fe8d430b1cf4fc7              # double 0.7759021256301758
	.quad	0x3fe9dad66af6ed3b              # double 0.80796357051386936
	.quad	0x3fe37baa59667366              # double 0.60884587727524031
	.quad	0x3fcccb810ab37944              # double 0.22496045134080067
	.quad	0x3fd7cda4e51a4ea6              # double 0.37192652104679735
	.quad	0x3fe8bfa58c99f7da              # double 0.77339436970919029
	.quad	0x3fd295ca2b4847f2              # double 0.2903924391440561
	.quad	0x3f8183f24e2ba580              # double 0.0085524492364636995
	.quad	0x3fe94d911cd77506              # double 0.79071860917216052
	.quad	0x3febafe6db0c2767              # double 0.86522238524160577
	.quad	0x3fd17b3e88ff9f18              # double 0.2731472337604699
	.quad	0x3fe32358f6f76042              # double 0.59806488261802593
	.quad	0x3fe9cc812b900997              # double 0.80621393688516008
	.quad	0x3fca4c53dd1a239c              # double 0.20545433326722395
	.quad	0x3fe306333c06ed20              # double 0.59450685237917256
	.quad	0x3fe5d3551beeec5f              # double 0.68204741912576228
	.quad	0x3fb5d0c876b107d0              # double 0.085217026688979347
	.quad	0x3fe3ea660e2a20e8              # double 0.62236311689869428
	.quad	0x3feb3dbc9ffe0cab              # double 0.85128623245727419
	.quad	0x3fd7ec099587d300              # double 0.37378158190340116
	.quad	0x3fce0b3905348598              # double 0.23471749071272252
	.quad	0x3feff4fef29e81b0              # double 0.99865672480159695
	.quad	0x3fc1759dfd16c5b0              # double 0.13640189035281258
	.quad	0x3fd8ab639f666264              # double 0.38546076361084247
	.quad	0x3fd82e67cd13d37c              # double 0.37783236529440223
	.quad	0x3fe564741a814d09              # double 0.66851239372991345
	.quad	0x3fe2916e3cd63559              # double 0.58025276071718246
	.quad	0x3fd44f229a365bb4              # double 0.31733002719686998
	.quad	0x3fce5be9a17d5fc8              # double 0.23717995057336183
	.quad	0x3fe081aa64f6fe58              # double 0.51582832069102391
	.quad	0x3fb6cb2f7d875488              # double 0.0890378648249045
	.quad	0x3fc85d1290246b24              # double 0.19034034765430718
	.quad	0x3fec157541042d39              # double 0.8776193876123336
	.quad	0x3fd89f5ddfe1e8d8              # double 0.38472697127839472
	.quad	0x3fe68a6d21447022              # double 0.70439774034048619
	.quad	0x3fe899bae01cf690              # double 0.76876586696717375
	.quad	0x3fcc1c59ffb65cfc              # double 0.21961522088961505
	.quad	0x3fef6fd62053cfc3              # double 0.98240190805380966
	.quad	0x3fdf7a93b726deb0              # double 0.49185650716706686
	.quad	0x3fe0a74dae625647              # double 0.5204227834644336
	.quad	0x3fe1bf70520c6b05              # double 0.55461898827647416
	.quad	0x3fea01c7efc93a3f              # double 0.81271740754329602
	.quad	0x3fc163b121359038              # double 0.13585485574287914
	.quad	0x3fdfa494ef20afbe              # double 0.49442027427971513
	.quad	0x3fecbc55f1867eb3              # double 0.89799019978450756
	.quad	0x3fec83cdd8a29e78              # double 0.89108936606949296
	.quad	0x3fd5a3b3000daeaa              # double 0.33811640744418503
	.quad	0x3fe63873e922a5fc              # double 0.69439120802161325
	.quad	0x3fe7b678bf9f6ddd              # double 0.74102437425920764
	.quad	0x3fc844db33d46ea8              # double 0.18960132628204929
	.quad	0x3fe4acc6ae11e6c1              # double 0.64609083173782988
	.quad	0x3fe7ac55a1ebf5c6              # double 0.73978692651115163
	.quad	0x3fb4b81b4dbe0dd8              # double 0.080934244613721673
	.quad	0x3fc2fec2262a62bc              # double 0.14839960921815087
	.quad	0x3fed1d011aefda92              # double 0.90979056607359809
	.quad	0x3fccdd7d77696c90              # double 0.22550934153227731
	.quad	0x3fc66b691ddc64e4              # double 0.1751529117398497
	.quad	0x3fe9e53a8157bb4e              # double 0.80923199903723186
	.quad	0x3fec7a037783392c              # double 0.88989423124602273
	.quad	0x3fec8c88bb1dc3df              # double 0.89215504213472829
	.quad	0x3fde8b29e02586d6              # double 0.47724387063327123
	.quad	0x3fa277a53c4e1440              # double 0.036069072352838294
	.quad	0x3fe6f1e46a38d3e9              # double 0.71702786203843261
	.quad	0x3fd2a50a3a693b68              # double 0.29132323936658233
	.quad	0x3fd213d73447bbec              # double 0.28246097665299774
	.quad	0x3fe03234037a1a0c              # double 0.50612831763356914
	.quad	0x3fcaadd4557b762c              # double 0.20842985319079455
	.quad	0x3fdc37586e335f4e              # double 0.44087801706108543
	.quad	0x3fdf47d89ef7779a              # double 0.48876014255608313
	.quad	0x3fe1b9a5d3d2d59c              # double 0.55391208049575225
	.quad	0x3fe959fa9a86f8d1              # double 0.79223375493145387
	.quad	0x3fd33b4f47b3b7e2              # double 0.30049497606421316
	.quad	0x3fc8e5de9ee7d554              # double 0.19451506384909101
	.quad	0x3fe6009f69907be3              # double 0.68757601373715393
	.quad	0x3fdf46c864655f7c              # double 0.48869523815437055
	.quad	0x3fcee3f8c5533fc0              # double 0.24133214602488628
	.quad	0x3fe53d72bcc5aa23              # double 0.66375100011402244
	.quad	0x3fdb3b79c099b4d0              # double 0.42550510223993587
	.quad	0x3fe70663a0f1da24              # double 0.7195299285365917
	.quad	0x3fec053b6cd41c42              # double 0.87563868766381625
	.quad	0x3fec8df88f746549              # double 0.8923304368828805
	.quad	0x3fe312a9ba353ae3              # double 0.5960281979440335
	.quad	0x3fe81aff5d743446              # double 0.75329559567183746
	.quad	0x3fe122e696fadbcb              # double 0.5355103443933954
	.quad	0x3fe47e7ac6f19e79              # double 0.64043940407005018
	.quad	0x3fc88036d1b8a2a4              # double 0.19141278496069447
	.quad	0x3fe91e25614063a2              # double 0.78492993349492601
	.quad	0x3fbfabf6d5e6b928              # double 0.12371771547507093
	.quad	0x3fd9a902ec369df0              # double 0.40094063823423109
	.quad	0x3fccdb1d369a21b8              # double 0.22543683210484544
	.quad	0x3fdaac2ce812ec66              # double 0.41675875342816082
	.quad	0x3fdc6f1c5fb838fa              # double 0.44428166720980722
	.quad	0x3fc853e4fb560254              # double 0.19006025573982532
	.quad	0x3fda3aad93c017f2              # double 0.40983142307993525
	.quad	0x3fc198743bbe4fe8              # double 0.1374650279727796
	.quad	0x3fd9df130090f54a              # double 0.40424037032410765
	.quad	0x3fc465b51d477948              # double 0.15935386590622103
	.quad	0x3fe57cf650804527              # double 0.67150417063581791
	.quad	0x3febdb60c8254985              # double 0.87052954760501733
	.quad	0x3fd7319003fcc284              # double 0.36240005864514324
	.quad	0x3fe87b8a7b0949e7              # double 0.76508068113826944
	.quad	0x3fe5f08f7fb5f5dd              # double 0.68561530059349318
	.quad	0x3fea2e0a635cadba              # double 0.81812018782277751
	.quad	0x3fd4ebc68680d2ee              # double 0.32689059386329589
	.quad	0x3fe08edef29bd967              # double 0.51744029411819958
	.quad	0x3fe3281954c63b06              # double 0.59864489133346477
	.quad	0x3fe98c02ca829722              # double 0.79834117462880649
	.quad	0x3fea83fe8763027a              # double 0.82861257975316893
	.quad	0x3fe7eca412768a59              # double 0.74763682943405307
	.quad	0x3fdf7b8b6f165530              # double 0.49191556785929702
	.quad	0x3feb7e0cbe587ab8              # double 0.85913693596724894
	.quad	0x3fc9122f37c5f3bc              # double 0.19586744521430244
	.quad	0x3fe903e79329246a              # double 0.78172663442923107
	.quad	0x3fe67f42ec4b7595              # double 0.70303484107323533
	.quad	0x3feeab5c6e187696              # double 0.9584180975250145
	.quad	0x3fe1577ee50dc4a9              # double 0.54193062531534963
	.quad	0x3fe38d92bf299343              # double 0.61103188835532085
	.quad	0x3fee6901c75cde2c              # double 0.9503182309917455
	.quad	0x3fea926430831e20              # double 0.83037003970179412
	.quad	0x3f9f1d17c06777a0              # double 0.030384417646807216
	.quad	0x3fe9954bbb75d3bc              # double 0.79947458852131303
	.quad	0x3fa9de3d92df4d40              # double 0.050523685625786019
	.quad	0x3feab73589f4af4c              # double 0.8348643965195861
	.quad	0x3fc5480c6d9a86b8              # double 0.16626124717463653
	.quad	0x3fe873b3429cc939              # double 0.76412356386416669
	.quad	0x3fd982a2634302f0              # double 0.39859828656703566
	.quad	0x3f953abbc89bdf60              # double 0.020731863135522999
	.quad	0x3fd327aeedf9a19c              # double 0.29929707755811719
	.quad	0x3fb888091a875c30              # double 0.095825737931009014
	.quad	0x3fd36ae20b583940              # double 0.30339861972688098
	.quad	0x3fc5a465d2fcd968              # double 0.16907952119954506
	.quad	0x3fe25279f61cf762              # double 0.57256792134260714
	.quad	0x3fe72d67ef8c42b2              # double 0.72429272448251525
	.quad	0x3fdb2fdaeee9b656              # double 0.42479585009900711
	.quad	0x3fe86ecb63c259c8              # double 0.76352471813407252
	.quad	0x3fc48e1e4d2ee400              # double 0.1605871083136492
	.quad	0x3fcb6fab0b31ce1c              # double 0.21434534117325732
	.quad	0x3fce13da71d62580              # double 0.23498087461875272
	.quad	0x3fe40890f7a815aa              # double 0.62604568834710972
	.quad	0x3fe7d1a3dfeb1947              # double 0.74434083684972385
	.quad	0x3fb810d024430120              # double 0.094006546833956594
	.quad	0x3fe39ababa78dead              # double 0.61263786716786728
	.quad	0x3fdad44575a1ef6a              # double 0.4192060135608161
	.quad	0x3fe86a8796df6dfa              # double 0.76300410716379408
	.quad	0x3fb382200d5fd510              # double 0.076204303040715126
	.quad	0x3fd464145bcaf722              # double 0.31860836948532001
	.quad	0x3fd33884cc1a70ce              # double 0.30032463008843713
	.quad	0x3fe5d4f850ae8947              # double 0.6822473121467646
	.quad	0x3fe9a2ee74e17316              # double 0.80113909557585106
	.quad	0x3fe9c14414f869f3              # double 0.80484203429960954
	.quad	0x3fd1b6d6dfff6d82              # double 0.27678462862760267
	.quad	0x3fc7697ecc2db2d0              # double 0.18290696115163607
	.quad	0x3fd8f405b0729e36              # double 0.38989393454764654
	.quad	0x3fbe7afe88125d78              # double 0.11906424352706846
	.quad	0x3fe6ab33e2c26d25              # double 0.70839876450500994
	.quad	0x3fe9544fefaf0e8a              # double 0.79154202283139452
	.quad	0x3fe8fe3fd9be2fd1              # double 0.78103630569375515
	.quad	0x3fef2d389e17a3b3              # double 0.97427016141329259
	.quad	0x3fd7422c94b35c34              # double 0.36341394921823
	.quad	0x3fe511e93e289824              # double 0.65843641414972298
	.quad	0x3f85e27b54db0c40              # double 0.010685885932053663
	.quad	0x3fd02db5d380cc8a              # double 0.25278993277169859
	.quad	0x3fc59c5e82998bec              # double 0.16883450867598471
	.quad	0x3fe275434723b0c2              # double 0.57681430715958748
	.quad	0x3fe31437e521e87c              # double 0.59621805908615455
	.quad	0x3fca1e2819990fa4              # double 0.20404530763528073
	.quad	0x3fc18eeac81e1ae0              # double 0.13717398425452298
	.quad	0x3fb9bd77521ee600              # double 0.10054727320575552
	.quad	0x3fca39d82b4f05dc              # double 0.20489027132684512
	.quad	0x3fd326279521e03c              # double 0.29920377315238844
	.quad	0x3fd30559b5edd412              # double 0.29720156446939072
	.quad	0x3fbeabf6a99b2830              # double 0.11981145516179548
	.quad	0x3fe8eb26e4ed4a24              # double 0.7787050696591149
	.quad	0x3fe92a151c543a70              # double 0.78638701947222778
	.quad	0x3fc1e521c81d7580              # double 0.13980505248302322
	.quad	0x3fe6439fa028f6f8              # double 0.69575482636693575
	.quad	0x3fe4059191ae9132              # double 0.62567976430412942
	.quad	0x3fdb257fd5c300a6              # double 0.42416377902191937
	.quad	0x3fde54e35487bec2              # double 0.47393115286739029
	.quad	0x3fe9392b3183a8d4              # double 0.78822860403786387
	.quad	0x3fc6e22e1654de1c              # double 0.17877746668249095
	.quad	0x3fec022ff39a3b14              # double 0.87526700571638338
	.quad	0x3fedd959612293b9              # double 0.93278187724774064
	.quad	0x3fdc0541d35f6560              # double 0.43782086984500346
	.quad	0x3fe9e2cbb9cb56dd              # double 0.80893503463695604
	.quad	0x3fd359dee5328400              # double 0.30236027128745491
	.quad	0x3fe5ea5240c30187              # double 0.68485367440011735
	.quad	0x3f8263addfd689c0              # double 0.0089791854796360537
	.quad	0x3feb407216bc2eb5              # double 0.85161690178343596
	.quad	0x3fe625a3345c8cc1              # double 0.69209442355022344
	.quad	0x3fe04ed1e31f1405              # double 0.509621566387637
	.quad	0x3fd478fb26dd365e              # double 0.31988409800837825
	.quad	0x3fe8a4bf14b1e4d9              # double 0.77011064569446852
	.quad	0x3fc2dae6169c24ac              # double 0.14730526069641792
	.quad	0x3fe33c81bba165f1              # double 0.60113608023237763
	.quad	0x3fee2dec7de3cfc5              # double 0.94310593212002714
	.quad	0x3fe74942731825f5              # double 0.72769281844483535
	.quad	0x3fb0095d2ffcfd68              # double 0.062642883506659808
	.quad	0x3fe5d3826bd71810              # double 0.68206902563611216
	.quad	0x3fcec036868ab348              # double 0.24024087495254265
	.quad	0x3fd4b79a296ee28e              # double 0.3237061886425544
	.quad	0x3fd7f8331553a658              # double 0.37452389795962437
	.quad	0x3fe9c831e97604d9              # double 0.8056878623757725
	.quad	0x3fefba9692f25557              # double 0.9915268774081295
	.quad	0x3fcdf30cb1119098              # double 0.23397978444984768
	.quad	0x3fee12d831bca69e              # double 0.93980035509339976
	.quad	0x3fd11a2f33668344              # double 0.26722316760610831
	.quad	0x3fd660ad9b3972ec              # double 0.34965076597818157
	.quad	0x3fd82e278ee2516a              # double 0.37781704858323073
	.quad	0x3fd26e307cb738e0              # double 0.28797542742985449
	.quad	0x3fd9776689ae61f8              # double 0.39791263051441161
	.quad	0x3facbaa003d009d0              # double 0.056111336198245376
	.quad	0x3fe40d9d6e42d709              # double 0.62666198287362918
	.quad	0x3fde91102bcc3bb2              # double 0.47760395314338233
	.quad	0x3fe2535f820aea86              # double 0.57267737769082383
	.quad	0x3fe0d0517e70c96a              # double 0.52542948432373504
	.quad	0x3fd9db40df85499e              # double 0.40400716617764398
	.quad	0x3fbb8916ee292d68              # double 0.10756057085489135
	.quad	0x3fd09b89b14c8642              # double 0.25949327768657693
	.quad	0x3fca4f45377ac2c0              # double 0.2055441399475253
	.quad	0x3fd33294c9e98630              # double 0.29996223180760051
	.quad	0x3fe20e0616910f43              # double 0.56421188743159012
	.quad	0x3fecb3e68d4f522e              # double 0.8969605216939891
	.quad	0x3fdb25a3845fe382              # double 0.42417228629306447
	.quad	0x3fe4824c45917f98              # double 0.64090550983017902
	.quad	0x3fb2076491395628              # double 0.070425305800505655
	.quad	0x3fc5ee6f32a4f23c              # double 0.17133893940798994
	.quad	0x3fe26378e0692705              # double 0.57464259939408235
	.quad	0x3fc3972ef21c1768              # double 0.15305125066532388
	.quad	0x3fc20f76cfeda410              # double 0.14109692719219469
	.quad	0x3febd5191fac95d1              # double 0.86976295648917745
	.quad	0x3fe9d1e8c6fb1108              # double 0.80687369216369209
	.quad	0x3fe642e71468ae5d              # double 0.6956668280231032
	.quad	0x3fd627c949c4ba88              # double 0.34617836193039198
	.quad	0x3fda09ca84bfe600              # double 0.40684760059193081
	.quad	0x3fd1fae702cb8da8              # double 0.28093886635744036
	.quad	0x3fecbe930544ee24              # double 0.89826346425201508
	.quad	0x3fee0c29968c3ecb              # double 0.93898467449067746
	.quad	0x3fd003dbf81b636c              # double 0.25023555020521004
	.quad	0x3fdba1dee424b66e              # double 0.43175480155591728
	.quad	0x3fe893330269e8a6              # double 0.76796865912844647
	.quad	0x3fd535576a62d9a8              # double 0.33138070477743975
	.quad	0x3fe9931a70ca31d6              # double 0.79920694379102986
	.quad	0x3fec2efce391cd15              # double 0.8807358212201587
	.quad	0x3fd997072818ee2e              # double 0.39984301486740292
	.quad	0x3feb559d5f2ca75d              # double 0.85420101727252595
	.quad	0x3fb2ee4f01d11ba0              # double 0.073948800986825436
	.quad	0x3fbb03b400ee38f0              # double 0.10552525541990909
	.quad	0x3fcb4b59a73572b0              # double 0.21323700584880134
	.quad	0x3fd8e0f35fb3782c              # double 0.38872989984327222
	.quad	0x3fea39dc8ba7e04d              # double 0.81956317211644036
	.quad	0x3fc662a359c0c598              # double 0.1748851955649513
	.quad	0x3fe97ef8ae10d874              # double 0.79674943921305763
	.quad	0x3fe7814e73604b4c              # double 0.734534478515664
	.quad	0x3fe5a62531c0b671              # double 0.67653140752163499
	.quad	0x3fe6e3633e6000de              # double 0.71525728399867794
	.quad	0x3feed221ce572b51              # double 0.96315088559036088
	.quad	0x3fdb91f04f62973c              # double 0.43078239204838886
	.quad	0x3fe19e1f1cb16592              # double 0.55055194477169977
	.quad	0x3fe39802b82c5ecf              # double 0.61230598422386062
	.quad	0x3fe4a54dc21388ae              # double 0.64517867951896846
	.quad	0x3fe0dd099ca3458d              # double 0.52698212235752495
	.quad	0x3fe80938592c9493              # double 0.75112550179314252
	.quad	0x3f8a90d8185ef100              # double 0.012971580737819455
	.quad	0x3fe4b6922dbd7855              # double 0.6472865002977054
	.quad	0x3fe083c2e4825a49              # double 0.51608414297772598
	.quad	0x3fe79614be0217a6              # double 0.73707043753596646
	.quad	0x3fe44a695cca4d98              # double 0.63408344386191384
	.quad	0x3fe708d83dfba57e              # double 0.71982967477849491
	.quad	0x3fe6d61a3a5b3d2a              # double 0.71363555333838247
	.quad	0x3fd6c93584cfc334              # double 0.35603082628135785
	.quad	0x3fd8fefc53c7d88a              # double 0.39056308919624227
	.quad	0x3fe537a636ab2944              # double 0.66304312398396137
	.quad	0x3fd8b0c812ee2fce              # double 0.38578988884614496
	.quad	0x3fe18801d5db32cf              # double 0.54785243767545377
	.quad	0x3fd6a50e2131a5f6              # double 0.35382416955562179
	.quad	0x3feb403b73678e6f              # double 0.85159084834999799
	.quad	0x3fe1e72decf34d92              # double 0.55947014121413674
	.quad	0x3fede532d9b95220              # double 0.93422834896279383
	.quad	0x3fcbc9a14242d010              # double 0.21709075675391931
	.quad	0x3fe60d820836aad0              # double 0.68914891819198409
	.quad	0x3fe1121b0ff1f92f              # double 0.53346016992853673
	.quad	0x3fc7e89f52e9d380              # double 0.18678657101159146
	.quad	0x3fef7cbed6d4607f              # double 0.98397771796136612
	.quad	0x3fdc13ea3a91bd86              # double 0.43871551246316931
	.quad	0x3fe8c01f8dc22952              # double 0.77345254599758051
	.quad	0x3fe62a99dd64c302              # double 0.69270032158792127
	.quad	0x3fe559fdf9935629              # double 0.66723536248418214
	.quad	0x3fd15b82b5ebc638              # double 0.27121036306116109
	.quad	0x3feb4cd67415699c              # double 0.85312960312448948
	.quad	0x3fe589086bc4c307              # double 0.6729776482444273
	.quad	0x3fe0c96492574693              # double 0.52458408910952625
	.quad	0x3fe1068e7f916cc6              # double 0.53205037036550418
	.quad	0x3fe3854ab6bc3a1c              # double 0.61002097788315579
	.quad	0x3fefd693af5c6fdc              # double 0.9949434685727243
	.quad	0x3fe20acea425b096              # double 0.56381923732762362
	.quad	0x3f9ce2a6a3239bc0              # double 0.02820835467073457
	.quad	0x3fc2b3325570d910              # double 0.1460936467353311
	.quad	0x3fe3559270838c9d              # double 0.60419580436100129
	.quad	0x3feba5952f78ed86              # double 0.86396273872326002
	.quad	0x3fdfcceaef308e82              # double 0.49688218458525324
	.quad	0x3fcb025aa4aa4150              # double 0.21100934067045296
	.quad	0x3fbf053623c67558              # double 0.12117327092569974
	.quad	0x3fe1e9ac5cdeaf56              # double 0.5597745717873106
	.quad	0x3fb020d01df2dac8              # double 0.063000685989076932
	.quad	0x3fd510776e60a6cc              # double 0.32913003710801259
	.quad	0x3fc83aeeba883f9c              # double 0.18929847820299706
	.quad	0x3fe23195e3a6a1ae              # double 0.56855291808192532
	.quad	0x3fee2c7ec7aa30f3              # double 0.94293154713662231
	.quad	0x3fe9b9e2e13cae5e              # double 0.80394119254692575
	.quad	0x3fed5622c19bfe8f              # double 0.91676461996390113
	.quad	0x3fd70a35add35182              # double 0.35999814963476962
	.quad	0x3fd9b464bd658604              # double 0.40163534637221709
	.quad	0x3fd9d34fb8a1875a              # double 0.4035224249874908
	.quad	0x3fed838e4a3ef10c              # double 0.92230906010766622
	.quad	0x3fec0e057fb9df41              # double 0.87671160646912238
	.quad	0x3fcc6896c50aea54              # double 0.22194180127356111
	.quad	0x3fe72362600c1e0b              # double 0.7230693698811036
	.quad	0x3fefdca81b20a8d3              # double 0.99568562792162607
	.quad	0x3fe0fb0846c9f311              # double 0.53064359498930191
	.quad	0x3fd532cb43585578              # double 0.33122521950402684
	.quad	0x3fd0d2ce76c5fb20              # double 0.26286660765610925
	.quad	0x3f9dcf656d119cc0              # double 0.029111466199904568
	.quad	0x3fe50c0bb4f519c0              # double 0.65772042601820857
	.quad	0x3fee5d1cb0280c91              # double 0.94886621861987142
	.quad	0x3fd5d8d5c0cb7316              # double 0.34135955646142813
	.quad	0x3fa7d4e1807a51d0              # double 0.04654602711994793
	.quad	0x3fdbe322e1ea478a              # double 0.43573829710032241
	.quad	0x3fb9d923fa031190              # double 0.10096955159958143
	.quad	0x3fe969ad44677f44              # double 0.79415000305378002
	.quad	0x3feac5612824e10d              # double 0.83659417954098247
	.quad	0x3fed756cdd79963c              # double 0.9205841375048247
	.quad	0x3fea95af17bc8255              # double 0.83077196727760827
	.quad	0x3fcae35f114ed5c4              # double 0.21006382317652428
	.quad	0x3fe65a905b139038              # double 0.69855516231883197
	.quad	0x3fda416c11ad3c3a              # double 0.41024305082550294
	.quad	0x3fec24bd0bfbe129              # double 0.87948467579466183
	.quad	0x3fc06085c5b6416c              # double 0.12794563440230478
	.quad	0x3fe6039d7e0cb74e              # double 0.68794130915714802
	.quad	0x3fefbc91c0b4b426              # double 0.9917687190806006
	.quad	0x3fcd0c3b2358aaa8              # double 0.2269357607450122
	.quad	0x3fd528e4c55747d4              # double 0.33062094947410725
	.quad	0x3fce93237d699a54              # double 0.23886531470926065
	.quad	0x3fd0babf9a8ebed0              # double 0.26139822095408949
	.quad	0x3feb4ddf7fc90558              # double 0.85325598676733261
	.quad	0x3fe1727b9b45d14a              # double 0.54522495581344654
	.quad	0x3fc54b520c8172ec              # double 0.16636109934451981
	.quad	0x3fe6b0403f00948b              # double 0.70901500992899125
	.quad	0x3fced2416579b8a0              # double 0.24079148726327038
	.quad	0x3fd8b20e68bb7886              # double 0.38586769321216996
	.quad	0x3fe9f5a21695e94e              # double 0.81123451625107079
	.quad	0x3fd860fd52e569ac              # double 0.38091977210356265
	.quad	0x3fc73aa93d398d90              # double 0.18147769441121087
	.quad	0x3fac99863f21b3e0              # double 0.055858798223972661
	.quad	0x3fe2280497fc59c4              # double 0.56738500294414296
	.quad	0x3fe173a5e22dcd04              # double 0.54536718535965223
	.quad	0x3fd9815188101aae              # double 0.39851797377961418
	.quad	0x3fdca06afa88bf0c              # double 0.44729113069750848
	.quad	0x3feebe6bd908de36              # double 0.96074478520944839
	.quad	0x3fed371e93f8cd55              # double 0.91297844792135641
	.quad	0x3fe2023522fbfa04              # double 0.56276947815769107
	.quad	0x3feaf3a09ece8a44              # double 0.84223967568352309
	.quad	0x3fe16a549d70250b              # double 0.54422980069753757
	.quad	0x3feb102137ac1ca2              # double 0.84571896432398241
	.quad	0x3fd669a66d84b8d8              # double 0.35019837088738148
	.quad	0x3fe9db6115f2cb23              # double 0.80802969252394907
	.quad	0x3fe73d376a5f27dd              # double 0.72622271323893595
	.quad	0x3fd600da64dd6868              # double 0.34380206918797862
	.quad	0x3fdd84793870a328              # double 0.46121054183690768
	.quad	0x3fc69922072294e0              # double 0.1765482458915022
	.quad	0x3fe9cd925b281f1a              # double 0.8063442020802285
	.quad	0x3fab072a67257060              # double 0.052789044467062451
	.quad	0x3fe790940fb43800              # double 0.73639872615035529
	.quad	0x3fe87939f5b44fdf              # double 0.76479814519052158
	.quad	0x3fed1ee4289bd134              # double 0.91002090388659562
	.quad	0x3fd99281e3cc8af0              # double 0.39956710096355064
	.quad	0x3fd0998c4f9be854              # double 0.25937183164899591
	.quad	0x3fdbb42cc4d609a6              # double 0.43287200186036967
	.quad	0x3fdec639b7cc483a              # double 0.48084872197171402
	.quad	0x3feeb2d5c314fe75              # double 0.95933044530825262
	.quad	0x3fca994b04c9fafc              # double 0.20780313237988668
	.quad	0x3fb98fe53c005db0              # double 0.099851920269762528
	.quad	0x3fb3269aa9998e08              # double 0.074807802587706473
	.quad	0x3fed7fd7a1d0d1c2              # double 0.92185575108174356
	.quad	0x3f83b8f378423d00              # double 0.009630109889512628
	.quad	0x3fe2155eece1353c              # double 0.56510874047822979
	.quad	0x3fda862a9ebbe8fc              # double 0.414438872350402
	.quad	0x3fef261411c1fabe              # double 0.97339824169451794
	.quad	0x3fedf41fcf877391              # double 0.93605032475498906
	.quad	0x3fe1de63e15d7b57              # double 0.55839723602899027
	.quad	0x3fedbd41b03c739f              # double 0.92935261174317307
	.quad	0x3fc01036f3ae5048              # double 0.12549483202440315
	.quad	0x3fe799894595e5af              # double 0.73749221411633481
	.quad	0x3f7410c619bb9580              # double 0.0048988092710023912
	.quad	0x3f970f628a5936a0              # double 0.022519626325723352
	.quad	0x3fd720dc437fbe20              # double 0.36138063995073999
	.quad	0x3fd115e0fe0aac84              # double 0.26696038063773408
	.quad	0x3fbfe5f30ca7ad20              # double 0.12460249957046132
	.quad	0x3fdc8f3ae04f5450              # double 0.44624206452619308
	.quad	0x3fe2594db1011bec              # double 0.5734013039699426
	.quad	0x3f9052971ceae840              # double 0.015940056934347746
	.quad	0x3fd5cbcbc1345e9e              # double 0.34056371562608401
	.quad	0x3fbcbbccf3dffe38              # double 0.11224060968378857
	.quad	0x3fbbb30114882068              # double 0.10820013762725156
	.quad	0x3fe8e0070c614ee2              # double 0.77734711091985909
	.quad	0x3fe0d5e6b4b5eb58              # double 0.52611098570865078
	.quad	0x3fee788c314ff4f4              # double 0.95221528655352338
	.quad	0x3fb6d3871c0b0170              # double 0.089165157648499748
	.quad	0x3fd4ee1bbce27d14              # double 0.32703298040174045
	.quad	0x3fdd57328c4d037a              # double 0.4584471101880393
	.quad	0x3fe2d4945f4d1bad              # double 0.58844965566173857
	.quad	0x3fea71dd4b441f74              # double 0.82639946651850815
	.quad	0x3fd474afe71b8bde              # double 0.31962201661207057
	.quad	0x3fd45547344a290a              # double 0.31770496469893372
	.quad	0x3fe9b01f68fa8be6              # double 0.80274935248996537
	.quad	0x3fcee05ed7178924              # double 0.24122224333320574
	.quad	0x3fdc52905a8ff9da              # double 0.44253929943070391
	.quad	0x3fefad219dff0d62              # double 0.98988419397975869
	.quad	0x3fa0afcd1c0c6260              # double 0.032591256784318956
	.quad	0x3fe5a7532c4a340b              # double 0.67667540216791744
	.quad	0x3fe137fc90a33eb0              # double 0.53808429956003145
	.quad	0x3fbe4f11780388d0              # double 0.11839398555779046
	.quad	0x3fe28a21c27b80df              # double 0.57936180100298518
	.quad	0x3fc9de157608f62c              # double 0.20208996070316354
	.quad	0x3fe352a18ba8ca8c              # double 0.60383679654326405
	.quad	0x3f98b35e4de7e5c0              # double 0.024121736054416365
	.quad	0x3fd5d47270160c64              # double 0.34109173723135755
	.quad	0x3fef15c92f66c3b9              # double 0.97140940912333129
	.quad	0x3fe2cd3f377ab412              # double 0.58755455814173474
	.quad	0x3fed17b8e5f3d928              # double 0.9091457835445782
	.quad	0x3fdbfeaff3e3a520              # double 0.43741988007839616
	.quad	0x3fed5b70c365491b              # double 0.91741216815197235
	.quad	0x3fe51d4a084f3900              # double 0.65982534048978891
	.quad	0x3fee9ec7448bad83              # double 0.95688212764564218
	.quad	0x3fdc3ee2c6ea785e              # double 0.44133824754124429
	.quad	0x3fd963fa4a434692              # double 0.39672715427614336
	.quad	0x3fbacc8e84e8d8e8              # double 0.10468378777372644
	.quad	0x3fd38dd9cb18115e              # double 0.30553288300895598
	.quad	0x3fb107c2cd76e5a8              # double 0.066524672662942153
	.quad	0x3fdd0b2ddf0fc108              # double 0.45380732329705653
	.quad	0x3fda9a0ee507582c              # double 0.41565296522219586
	.quad	0x3fd7c9db16f4dff2              # double 0.37169530145501917
	.quad	0x3fe7f38128ff9f0d              # double 0.74847467429660386
	.quad	0x3fd5ba2fcbc03610              # double 0.33948893449346063
	.quad	0x3fe653a750ab286a              # double 0.69771161799986925
	.quad	0x3fec5e687c1aa4b2              # double 0.88652443160130745
	.quad	0x3fe09db199cd9686              # double 0.51924972572005923
	.quad	0x3fbbb9bcd4797270              # double 0.10830288112033215
	.quad	0x3fe258dc2ee81b45              # double 0.57334717904527877
	.quad	0x3fda0084eeda27c6              # double 0.40628169370085876
	.quad	0x3fc2b4125e34d034              # double 0.14612035369793974
	.quad	0x3f7d06245ad95e00              # double 0.0070859356033774468
	.quad	0x3fe351cc0c960df1              # double 0.60373499353630511
	.quad	0x3fef35985eeeee42              # double 0.97529238263764051
	.quad	0x3fee15ad5aa13ade              # double 0.94014613820203485
	.quad	0x3fece1f906852dbf              # double 0.90258456490976602
	.quad	0x3fef2b5a7b79eaed              # double 0.9740421687741595
	.quad	0x3feb218f31a71fdf              # double 0.84784660051172611
	.quad	0x3fa8426167ea2d60              # double 0.047381442961603737
	.quad	0x3fee25626de18bf4              # double 0.94206353627339334
	.quad	0x3fe335bd672716bf              # double 0.60031004092225959
	.quad	0x3fe22f54f20dd875              # double 0.5682778098696547
	.quad	0x3fdda87e59d863cc              # double 0.46340903066589756
	.quad	0x3fdb58ce5570581a              # double 0.42729528754841939
	.quad	0x3fe957dae60837c0              # double 0.79197449615616478
	.quad	0x3fe41c9fe88eb6f3              # double 0.62849421903021463
	.quad	0x3fe8397861f8f1e3              # double 0.75701541075937617
	.quad	0x3fb4882c1258d1e8              # double 0.080202822188602974
	.quad	0x3fc32eee492bd284              # double 0.14986971447764941
	.quad	0x3f829dcaa2a96580              # double 0.0090900259867108257
	.quad	0x3fe6f17888fbc6b1              # double 0.71697642092313718
	.quad	0x3fed77f678950322              # double 0.9208938937300426
	.quad	0x3fe5a3534ec86f65              # double 0.67618718516631005
	.quad	0x3fc702efc0f0a704              # double 0.17977711602116397
	.quad	0x3fe95626e1c9c3cb              # double 0.79176658725020255
	.quad	0x3feadd942398d05d              # double 0.83954817726636188
	.quad	0x3fca387570d578a8              # double 0.20484798440424368
	.quad	0x3fcbd2acb320e198              # double 0.21736677881723376
	.quad	0x3fe258c7b0e15310              # double 0.57333740755947993
	.quad	0x3fec2a881d51cc3e              # double 0.88019185759038243
	.quad	0x3feb9bbd284df112              # double 0.86276109573330673
	.quad	0x3fc425f70752e0b8              # double 0.15740859849552691
	.quad	0x3fe7664fe29870bf              # double 0.73123926407745177
	.quad	0x3feffcc3a365eb71              # double 0.9996050063485723
	.quad	0x3fe8372053a583a2              # double 0.75672928178038412
	.quad	0x3fe86c63661fff5c              # double 0.76323099085127976
	.quad	0x3fda8de35fce9764              # double 0.41491016727592567
	.quad	0x3fd2347f1ccb34d0              # double 0.2844541341008382
	.quad	0x3fcb78435bdf62fc              # double 0.21460763917891501
	.quad	0x3fec38ce153dea7a              # double 0.88193420552063562
	.quad	0x3fe0c6c03b0b3610              # double 0.52426158458701089
	.quad	0x3fb07f41681ef6d8              # double 0.064441764755396647
	.quad	0x3fc47d1d4a6ab5c4              # double 0.16006818898806163
	.quad	0x3fe0eea5d26f4ba3              # double 0.52913180447136587
	.quad	0x3fe7ddfba33668a3              # double 0.74584752919624397
	.quad	0x3fe2bc12f0a8aa1a              # double 0.58545825008087893
	.quad	0x3fe585463b6ae843              # double 0.67251884083749081
	.quad	0x3fe61a1430cc7078              # double 0.69068345576262313
	.quad	0x3fdb35e8c5ec0556              # double 0.42516536072078759
	.quad	0x3fe1090615d4ca1e              # double 0.53235153449924488
	.quad	0x3fe227b911ac32da              # double 0.56734898997964511
	.quad	0x3fef58b5f2f67821              # double 0.97957894757906072
	.quad	0x3fe969ebe5db4316              # double 0.79417986768575832
	.quad	0x3fde680f6f0bd492              # double 0.47510133594853088
	.quad	0x3fc49396f4ec3c5c              # double 0.1607540794288721
	.quad	0x3fd628465524d72c              # double 0.34620817484698097
	.quad	0x3fe383384c3813a2              # double 0.60976805578740234
	.quad	0x3fe2a2e94284b2be              # double 0.58238661758294774
	.quad	0x3fe08264409a36ad              # double 0.51591694467216132
	.quad	0x3fe9d10741e28166              # double 0.80676615589258627
	.quad	0x3fe186b9c9bbdcdb              # double 0.54769601250782374
	.quad	0x3fe662a2cdb4389f              # double 0.69954052139816614
	.quad	0x3fe906f3ccd3aa44              # double 0.78209867482412009
	.quad	0x3fc69cfe9603e72c              # double 0.17666609120333854
	.quad	0x3fefc2079dfd3722              # double 0.9924352727627801
	.quad	0x3fe06410ce61d9c8              # double 0.5122150450613896
	.quad	0x3fda514db7958ee0              # double 0.41121237686296119
	.quad	0x3fc6b41d23df0f4c              # double 0.17737163783578536
	.quad	0x3fd5d5fd8cca4cba              # double 0.34118593930288521
	.quad	0x3f83875603fc1a00              # double 0.0095354766813331437
	.quad	0x3fc20b983115babc              # double 0.1409788360283154
	.quad	0x3fe0d1b9548bb0cd              # double 0.5256010676653432
	.quad	0x3fb0fcad579298a0              # double 0.0663555468368906
	.quad	0x3fcc5fc2368b7818              # double 0.22167232192345021
	.quad	0x3fe9e5a1c9aeff89              # double 0.80928124800992507
	.quad	0x3fcb233c560db030              # double 0.21201280786351751
	.quad	0x3fdf81e94d4b0d90              # double 0.49230415867006005
	.quad	0x3fe2ce90080b6ae4              # double 0.58771516391001599
	.quad	0x3fef3987f4c904cf              # double 0.97577283677687798
	.quad	0x3fe303d06f02951b              # double 0.59421559983880756
	.quad	0x3fc444dc17609c88              # double 0.15835143224214598
	.quad	0x3fe1bf7a055cf410              # double 0.5546236138103513
	.quad	0x3fdbd05a82fda39c              # double 0.43459189216678751
	.quad	0x3fe1fe8f30908762              # double 0.56232413754717592
	.quad	0x3fd032574265203a              # double 0.25307256206406559
	.quad	0x3fdbd3240e5aad08              # double 0.43476201440599072
	.quad	0x3fe006306a8d9afd              # double 0.50075550852929462
	.quad	0x3fedab928d60d9cc              # double 0.92719390500024578
	.quad	0x3fe1336e6dacd5a5              # double 0.53752824231076046
	.quad	0x3fc6d53a21053ff0              # double 0.17838217365579068
	.quad	0x3fe00360628cf4a6              # double 0.50041217086949952
	.quad	0x3fd06b43f3aca1fc              # double 0.25654696270296973
	.quad	0x3fd4b6975d38197e              # double 0.32364448646003285
	.quad	0x3febd56320ccc0ad              # double 0.86979824453557841
	.quad	0x3feeac5dff574e97              # double 0.95854091521546791
	.quad	0x3fe1222ca151d7cd              # double 0.53542167194131596
	.quad	0x3fd56caadc3a124e              # double 0.33475753313567658
	.quad	0x3fcdb7e5a3771ba8              # double 0.23217459184362821
	.quad	0x3fe34d94191b6dd4              # double 0.60322003272761515
	.quad	0x3fe34b01d48a9ecf              # double 0.6029061461640256
	.quad	0x3f969a97f2d4f820              # double 0.022074102588924061
	.quad	0x3fc145bab24bf87c              # double 0.13494046884438038
	.quad	0x3fdaa3e7ea79a0e8              # double 0.41625402353248697
	.quad	0x3fc1c52bafffb934              # double 0.13882967084595921
	.quad	0x3fd0abda78111604              # double 0.2604890987898616
	.quad	0x3fedc70b8800a6f5              # double 0.93054749072072573
	.quad	0x3fe98a8a048e73f0              # double 0.79816151513989375
	.quad	0x3fdc329e8d96d538              # double 0.44058955981320791
	.quad	0x3fe26171d3e3ca31              # double 0.57439509758689244
	.quad	0x3fca5b87b73f626c              # double 0.20591827819477559
	.quad	0x3fe2fe10efcd9b61              # double 0.59351393543770936
	.quad	0x3fcdfcee4044b740              # double 0.23428133142572882
	.quad	0x3fe6fe9051de640d              # double 0.71857467641814454
	.quad	0x3fd9fa8c2a26e294              # double 0.40591720692058542
	.quad	0x3fd481f83335ec2a              # double 0.32043271065748746
	.quad	0x3fe022c8e6bee020              # double 0.50424618785382691
	.quad	0x3fed86cce448be78              # double 0.92270512186764986
	.quad	0x3fcf0c002fdc4a10              # double 0.24255373322428442
	.quad	0x3fa89f05af1d32d0              # double 0.048088243128039942
	.quad	0x3fe0f6819ef7e83f              # double 0.53009110497010414
	.quad	0x3fa35d0365c712f0              # double 0.03781900994684928
	.quad	0x3f9fa1e34e77cb40              # double 0.030890990890792169
	.quad	0x3fe38f562caf2ad9              # double 0.61124714591400242
	.quad	0x3fc9cd79a104af18              # double 0.20158310281964797
	.quad	0x3fbc9cf83f663c00              # double 0.11177016780696647
	.quad	0x3fd83c0dd9406cb0              # double 0.3786654111479022
	.quad	0x3fdd73a6291701ec              # double 0.46018365872080724
	.quad	0x3fa66947dd9ede10              # double 0.043771978190701444
	.quad	0x3fd811115a6455c4              # double 0.37604173495614313
	.quad	0x3fdd818f169dc0c4              # double 0.4610326500760602
	.quad	0x3fef71c4ab89c69b              # double 0.98263772491027923
	.quad	0x3fcb19a8f85d3804              # double 0.21172058226733281
	.quad	0x3fe754f8d438d01b              # double 0.72912255715937435
	.quad	0x3fc20dcf0da27224              # double 0.14104641118764605
	.quad	0x3fb322d6bb678768              # double 0.074750347855596311
	.quad	0x3fc73be06b8d3300              # double 0.181514790072832
	.quad	0x3feb6af086c658da              # double 0.85680414508058367
	.quad	0x3fef0ea872737ec3              # double 0.97053930619946304
	.quad	0x3fe6e8cb175448bc              # double 0.71591715389720134
	.quad	0x3fe7c4002ebf4dff              # double 0.74267586832360155
	.quad	0x3fbb28a3556c8a30              # double 0.10608883700891947
	.quad	0x3fc3a75a1a47dcb0              # double 0.15354467662084437
	.quad	0x3febac1fec2bd71b              # double 0.86476131560513936
	.quad	0x3fde7802a1f101f0              # double 0.47607484640687314
	.quad	0x3fcfafc9d1ac6130              # double 0.24755213487584049
	.quad	0x3faa91e80e539310              # double 0.051894428013644966
	.quad	0x3fd3bbf5d05b7e7e              # double 0.30834718081857904
	.quad	0x3fc36cf5a02126a0              # double 0.15176267927954701
	.quad	0x3fcb912a5fde98bc              # double 0.21536760026100932
	.quad	0x3fca935daef6ee50              # double 0.20762225192253192
	.quad	0x3febb24fa2586b86              # double 0.86551648815235249
	.quad	0x3fe34172227425f7              # double 0.60173899392356034
	.quad	0x3fdb4b0368a3dd78              # double 0.42645344942817287
	.quad	0x3fba48d3ba53d288              # double 0.10267375277528334
	.quad	0x3fe9713e7f434901              # double 0.7950737462618066
	.quad	0x3fefa401ea1fa143              # double 0.98877044417626114
	.quad	0x3fe7260bd0ae7917              # double 0.72339430578338948
	.quad	0x3fe87b6d011a3def              # double 0.76506662574132445
	.quad	0x3fe9f54d43de9794              # double 0.81119406944047733
	.quad	0x3febbc2d9ed76b44              # double 0.86672097228743227
	.quad	0x3fe789b95d60d3f1              # double 0.73556202161728212
	.quad	0x3fdd9794748f52d2              # double 0.4623767030982836
	.quad	0x3feae138b5ef7a50              # double 0.83999286207456159
	.quad	0x3fe421bf94416773              # double 0.62911967235707633
	.quad	0x3fd12b86aef9735c              # double 0.26828162276597367
	.quad	0x3fef34b83245b88a              # double 0.97518548792665283
	.quad	0x3fd5448aa23cb6d0              # double 0.33230844348404975
	.quad	0x3fa4ffe1875f6c20              # double 0.041014716887467495
	.quad	0x3fdd05dffa24fe98              # double 0.45348357608961853
	.quad	0x3fd02e56649e8e68              # double 0.25282821489438456
	.quad	0x3fe159a5f5849763              # double 0.54219339325639415
	.quad	0x3fdcf4ec6769ac14              # double 0.45244894122032631
	.quad	0x3fe803aa4b133042              # double 0.75044741309239549
	.quad	0x3fe29e3022e3e28f              # double 0.58181006254661038
	.quad	0x3fe5cc5cd201a447              # double 0.68119660393598103
	.quad	0x3fee0e086e10ef66              # double 0.93921300408645148
	.quad	0x3fe1f14d7dd4e66b              # double 0.56070589615337718
	.quad	0x3fc06fe7f8c00d90              # double 0.12841510435110282
	.quad	0x3fa2f248116e2b00              # double 0.037004711272933477
	.quad	0x3feb4a34f13abca2              # double 0.85280844798207434
	.quad	0x3fca4787da622ad4              # double 0.20530794299369026
	.quad	0x3fd247dd1f378276              # double 0.28563621567267405
	.quad	0x3fd9b29584eab0c4              # double 0.40152490596916501
	.quad	0x3fef4ef03fd9e7b5              # double 0.97838604422508146
	.quad	0x3fe42ad387b74218              # double 0.63022781855585475
	.quad	0x3fe48ad08923de69              # double 0.64194514069727149
	.quad	0x3fdb1d5ca45d79c6              # double 0.42366710711749211
	.quad	0x3fd00b9b7ffef738              # double 0.25070846080403753
	.quad	0x3fa49c79e22b00c0              # double 0.040256317957302112
	.quad	0x3fe9d0756167497c              # double 0.80669659637560142
	.quad	0x3fe417a791a6a02c              # double 0.62788752028882788
	.quad	0x3fc26e91f81668ac              # double 0.14399933446549562
	.quad	0x3fefc852ab1b1bbe              # double 0.99320348185653251
	.quad	0x3feac34f4a9fc564              # double 0.83634152007122652
	.quad	0x3fe4e10e5192830e              # double 0.65247264797298654
	.quad	0x3feec21b2e730ba1              # double 0.96119460174701398
	.quad	0x3fe7a05c072609a7              # double 0.73832513233383146
	.quad	0x3fef8081ec949ea3              # double 0.98443695265901387
	.quad	0x3fef66f3bb657557              # double 0.98131739235729298
	.quad	0x3fe67fd3ccd9ae47              # double 0.70310392389132736
	.quad	0x3fe5c97c946445f2              # double 0.680845537021183
	.quad	0x3fdb5184f3719d96              # double 0.42685054563340807
	.quad	0x3fde3da689ecca5e              # double 0.47251285046801239
	.quad	0x3fdf33177fd97aa0              # double 0.48749339566522032
	.quad	0x3fdb3ccc91981bae              # double 0.42558588236027617
	.quad	0x3fc50595f9513568              # double 0.16423296617214622
	.quad	0x3fd1856ba1f81034              # double 0.27376833741459738
	.quad	0x3fe11541dce3fe9d              # double 0.53384488241859496
	.quad	0x3feadd1d6dcb8672              # double 0.83949157184924972
	.quad	0x3fb3c987b0360800              # double 0.077293854255941596
	.quad	0x3fc6cb9658f95628              # double 0.17808799118454144
	.quad	0x3fe1ca4f427bcd87              # double 0.55594599709586212
	.quad	0x3fde44ea9e8bdc10              # double 0.47295632823028289
	.quad	0x3fe293815d49b6d4              # double 0.58050602169324828
	.quad	0x3fd5380bfa4156d4              # double 0.3315458244227163
	.quad	0x3fdb39c73b72dd12              # double 0.4254015045693943
	.quad	0x3fe07a79be75ee0c              # double 0.51495063018177367
	.quad	0x3feeed1415b51555              # double 0.96644024123876681
	.quad	0x3fe717e314c06787              # double 0.72166589787524138
	.quad	0x3faaf43812016a30              # double 0.052644493291797878
	.quad	0x3fe4cf2ee6d75b92              # double 0.65029091917209514
	.quad	0x3fcb557d77a71128              # double 0.21354645101940517
	.quad	0x3fe211078ad9c7dd              # double 0.56457879180220127
	.quad	0x3fd80ebc7e3567ee              # double 0.3758994324213053
	.quad	0x3fdc9482a14e5132              # double 0.44656434776813392
	.quad	0x3fe010e73071c9a8              # double 0.50206336461842671
	.quad	0x3fe7daa3f10a0c41              # double 0.74543950155237593
	.quad	0x3fe2a20a0be30da2              # double 0.58228018113770852
	.quad	0x3fef4aade4f8d918              # double 0.97786612244707082
	.quad	0x3fdba48a4cfeb874              # double 0.43191773909609954
	.quad	0x3fc349aa1154b5dc              # double 0.15068555685267782
	.quad	0x3fe70dfc898b3932              # double 0.72045733322173633
	.quad	0x3fde817c1e56ae24              # double 0.4766531273150767
	.quad	0x3fdf693237d4b450              # double 0.49079566433176058
	.quad	0x3fdef3fa6bcd81e6              # double 0.4836412480126725
	.quad	0x3fc352b7fa940980              # double 0.15096187339083755
	.quad	0x3fe55333ad45f395              # double 0.66640647737914327
	.quad	0x3fe612ec975c7acc              # double 0.68981008112663167
	.quad	0x3fe2da6b968d72bc              # double 0.58916263012687109
	.quad	0x3fe8767d20a78c8b              # double 0.76446396234349956
	.quad	0x3fd26d08eb14c2ec              # double 0.28790495831621743
	.quad	0x3fd9e51eb48b7a26              # double 0.40460937148410137
	.quad	0x3fdf44d78f9dba40              # double 0.48857678437244445
	.quad	0x3f7680707d5ec680              # double 0.0054935831193901885
	.quad	0x3fd7e60d549cf59e              # double 0.37341626418113971
	.quad	0x3fea74d9d13fd271              # double 0.8267640196705327
	.quad	0x3fdd02a72487b454              # double 0.4532869202365124
	.quad	0x3fbdc62eee0cf1f8              # double 0.11630528747350144
	.quad	0x3fbf4a7fe9be94c8              # double 0.12223052460338402
	.quad	0x3fd5ffb2807694b2              # double 0.34373152299151422
	.quad	0x3fe8c1699a3894e4              # double 0.77360992547314966
	.quad	0x3fddf573d6181b36              # double 0.46810623080857583
	.quad	0x3fe9d50bface1e76              # double 0.80725668893224056
	.quad	0x3fd978f0369c2198              # double 0.39800649006840549
	.quad	0x3fe7e6c72dd794be              # double 0.74692114785707253
	.quad	0x3fd821ace4c68518              # double 0.37705538121561366
	.quad	0x3fe5b502ea20e233              # double 0.67834611633504094
	.quad	0x3fe1b06aba439124              # double 0.55278526668238159
	.quad	0x3fe707ba48bce33b              # double 0.71969331938371484
	.quad	0x3fece0e5cb373324              # double 0.90245332422782498
	.quad	0x3fe26716bc20aa21              # double 0.57508408301993452
	.quad	0x3fdc832faadf3fc0              # double 0.44550697027898067
	.quad	0x3fd064e8f1ac2f10              # double 0.2561590538104932
	.quad	0x3fe3a87a891a2cea              # double 0.61431624200613766
	.quad	0x3fe5285905a1c9d8              # double 0.66117526149747174
	.quad	0x3fe4d4a1460842ba              # double 0.65095580747773529
	.quad	0x3fe25aab9481529a              # double 0.57356814389148103
	.quad	0x3fc5e84e9e1ff7bc              # double 0.17115195008221729
	.quad	0x3fc2e02697490c5c              # double 0.14746553790073136
	.quad	0x3fd81ef977ab2d0e              # double 0.37689053236381731
	.quad	0x3fe8ad9b215d557b              # double 0.77119213596840497
	.quad	0x3fee0b2293be71d4              # double 0.93885926109538297
	.quad	0x3feddbb8aeca94c5              # double 0.93307146204883706
	.quad	0x3fea6716bec1af07              # double 0.82508408791679322
	.quad	0x3fdc12f28cc6df5a              # double 0.43865646121729684
	.quad	0x3fd764de4ce92b7e              # double 0.36553151617834334
	.quad	0x3fd02f063e29fbe2              # double 0.25287014074996084
	.quad	0x3fef39f5316375fe              # double 0.97582492490954542
	.quad	0x3fdca718b5434924              # double 0.44769876195381841
	.quad	0x3fe7d100f422c7be              # double 0.74426315005097599
	.quad	0x3fa71e957a311b50              # double 0.045155211606973666
	.quad	0x3fe3cf405e0a7d33              # double 0.61904924743058698
	.quad	0x3fc94566b026bffc              # double 0.19743045426503147
	.quad	0x3fe8248361efab0d              # double 0.75445717933811951
	.quad	0x3fee09b89b6339e7              # double 0.93868666028157299
	.quad	0x3fec427eb48e9cdd              # double 0.88311705842070476
	.quad	0x3fe8a8e684124b2e              # double 0.77061773104865039
	.quad	0x3fe56cde02f0dbe2              # double 0.66953945707689067
	.quad	0x3fedf4268011d391              # double 0.93605351461029518
	.quad	0x3f94293060c44d20              # double 0.019688373476197119
	.quad	0x3fe9f4b3adaf9919              # double 0.81112083361657306
	.quad	0x3fc53c21b1af7ab0              # double 0.16589757133529792
	.quad	0x3fe835323579c290              # double 0.75649366802652374
	.quad	0x3fde2bcf12ff5e0a              # double 0.47142388205745134
	.quad	0x3fadceda7f0cf3d0              # double 0.058218791970353956
	.quad	0x3fdc46b0809e48e0              # double 0.44181454239254769
	.quad	0x3fefebf240700141              # double 0.99755203805401759
	.quad	0x3fbf2c8ecfab5cf0              # double 0.12177364893010512
	.quad	0x3fed749da4d0ef9b              # double 0.92048532667785155
	.quad	0x3fb4bedc5cec76c8              # double 0.081037304579207547
	.quad	0x3fdec68afdda59fe              # double 0.48086809912038564
	.quad	0x3fa946fca1589bf0              # double 0.049369711585590781
	.quad	0x3fa7f008d27fd4a0              # double 0.046753192611427297
	.quad	0x3febaa1ceb7a6722              # double 0.8645157431776378
	.quad	0x3fd6918739db2424              # double 0.35263233804704641
	.quad	0x3fe2a926b5671f38              # double 0.58314834051359465
	.quad	0x3fe04e7accf1c971              # double 0.50958004024714232
	.quad	0x3fe6afaa7b1de784              # double 0.70894359632733073
	.quad	0x3fb6fead2ef64118              # double 0.089823554959597707
	.quad	0x3fd102abb2576e58              # double 0.26578800598301688
	.quad	0x3fe11011ecfadd4c              # double 0.53321167264122371
	.quad	0x3fe6c603c5d89c10              # double 0.71167172090361142
	.quad	0x3fefcace950b653b              # double 0.99350670919662975
	.quad	0x3fe944660340dce4              # double 0.78959942470001154
	.quad	0x3fe6e0b5036f7992              # double 0.71493006392465674
	.quad	0x3fe6e38d6ad17bba              # double 0.71527739394138412
	.quad	0x3feed77050a74fa0              # double 0.96379867317817868
	.quad	0x3fe3a451cb591f6d              # double 0.61380853382523315
	.quad	0x3fe52f5e3e50968e              # double 0.66203224345072598
	.quad	0x3fd74bf7ea273c78              # double 0.36401174418001103
	.quad	0x3feffeccf58888fa              # double 0.99985359149675834
	.quad	0x3fe2740d1a737e7a              # double 0.57666640440216033
	.quad	0x3fdc1204c1bd4dd6              # double 0.43859976692075742
	.quad	0x3fedb580175e7bc6              # double 0.9284058052470463
	.quad	0x3fc2a31312573e18              # double 0.14560163875147292
	.quad	0x3fc1c38dbb0d8ae8              # double 0.13878032334749624
	.quad	0x3fe26c8e764907b6              # double 0.57575152494995652
	.quad	0x3fdcd665f9737208              # double 0.45058583603329838
	.quad	0x3f81651d0df57cc0              # double 0.0084936399350098445
	.quad	0x3fe81e70bfde457a              # double 0.75371587251917949
	.quad	0x3feeda3a61562814              # double 0.9641391659836267
	.quad	0x3fe96ad6f22ae221              # double 0.79429194734899877
	.quad	0x3fcbdf5e3da1a800              # double 0.2177541542944823
	.quad	0x3fe4f5905f9b5e1a              # double 0.65497606919501838
	.quad	0x3fdda3629862f756              # double 0.46309723741057007
	.quad	0x3fe51074461be3cd              # double 0.65825856869843735
	.quad	0x3feed6af9ad75d5f              # double 0.96370678179202318
	.quad	0x3febc9c48792b341              # double 0.86837984541998747
	.quad	0x3fcf34230e4a77a0              # double 0.2437785930423475
	.quad	0x3fbc32dd08262c38              # double 0.11015111397698341
	.quad	0x3fbddf662f78ab48              # double 0.11669005068749272
	.quad	0x3fd44633d1141af0              # double 0.31678481500459466
	.quad	0x3fe7d80fddd84fe5              # double 0.74512475327582861
	.quad	0x3fd11af49eaf988e              # double 0.26727023598358179
	.quad	0x3fee70505fe2b8b4              # double 0.95121020057356142
	.quad	0x3fdec0b19ba9dc10              # double 0.48051109506144574
	.quad	0x3febb5ed16e2e8c4              # double 0.86595777959816944
	.quad	0x3fd488e4f5b8e24c              # double 0.32085536953266991
	.quad	0x3fec03f6ec07ca10              # double 0.87548395251934785
	.quad	0x3fee63b987122a0b              # double 0.94967342740102489
	.quad	0x3fd2ccb3a8fc53fe              # double 0.29374400618081598
	.quad	0x3fa2933544525f10              # double 0.03627935847288033
	.quad	0x3fe18dcb429830aa              # double 0.54855883604752376
	.quad	0x3fd253354c83a90c              # double 0.28632862541293558
	.quad	0x3fd49f2c8f175bcc              # double 0.32221521352533666
	.quad	0x3fd93fbb8bd50450              # double 0.39451492934683063
	.quad	0x3fb946e376487760              # double 0.098737923028662688
	.quad	0x3fede9073ba7d754              # double 0.93469583178987614
	.quad	0x3fcd23cf55546118              # double 0.22765533129200644
	.quad	0x3fe9a3d42867195b              # double 0.80124862567098931
	.quad	0x3f8da2e62210f0c0              # double 0.014470861353509057
	.quad	0x3fb121e77a7a51d0              # double 0.066923587228593151
	.quad	0x3fcf06682256383c              # double 0.24238301922417971
	.quad	0x3fcc68e66901bb2c              # double 0.22195129515918077
	.quad	0x3fa1f30170689590              # double 0.035057110759491583
	.quad	0x3fda840766faeba4              # double 0.41430840546279968
	.quad	0x3fd96221f2d1160e              # double 0.3966145392663244
	.quad	0x3fe718b374012af2              # double 0.72176525742665221
	.quad	0x3fe978233a9102c3              # double 0.79591523588904811
	.quad	0x3fdc40a39b951888              # double 0.44144525712580007
	.quad	0x3feeffb5646af471              # double 0.96871442425584863
	.quad	0x3fe9512726c62a8f              # double 0.79115636418403479
	.quad	0x3fb60ef38b4fa898              # double 0.086165639411463935
	.quad	0x3fc0fa64ac853bdc              # double 0.13264139579629741
	.quad	0x3f7b5cc8ebcab380              # double 0.0066802834013913737
	.quad	0x3fedc25b17476f7b              # double 0.92997507616699637
	.quad	0x3fb8c18a2f4208e0              # double 0.096703182733139936
	.quad	0x3fddadb23f6a0df0              # double 0.4637265795974761
	.quad	0x3fb83f9726f1d470              # double 0.094720313079805995
	.quad	0x3fec77517b33cb1b              # double 0.88956522047951425
	.quad	0x3fc485765aedad94              # double 0.16032294692864169
	.quad	0x3fd4296da882a50c              # double 0.31502858596884731
	.quad	0x3fd53fd4b8c8b37a              # double 0.33202093167601954
	.quad	0x3fd11d732a0d982c              # double 0.26742247683285103
	.quad	0x3fea6f846268dc29              # double 0.82611293049456436
	.quad	0x3fed4b9a112ffb9f              # double 0.91547873837395233
	.quad	0x3fe1769dfd7d74c2              # double 0.5457296324708738
	.quad	0x3fe1a17fc2b847e5              # double 0.55096424132557031
	.quad	0x3fed187a6a30fa6a              # double 0.90923805943004976
	.quad	0x3fe16911deafa68f              # double 0.54407590382943904
	.quad	0x3fc40c46d102998c              # double 0.1566246529157066
	.quad	0x3fdf3eb60547ec42              # double 0.48820257678716328
	.quad	0x3fd76691b728f348              # double 0.36563532721247727
	.quad	0x3fbb0e32fe182900              # double 0.10568541244007079
	.quad	0x3fb74b7d32926688              # double 0.090995621534967097
	.quad	0x3fe16b2353c7c05c              # double 0.54432836879096724
	.quad	0x3fedae3ad7723413              # double 0.92751829222982207
	.quad	0x3fe15ad65b4de526              # double 0.54233854134432558
	.quad	0x3fc6f0b5ae896e98              # double 0.17922087690646005
	.quad	0x3fe6642d9ccc7b94              # double 0.69972878098257008
	.quad	0x3fe43e5c7bfaed0a              # double 0.6326124593246345
	.quad	0x3fe4c5d652f2bc01              # double 0.64915004921738284
	.quad	0x3f988717c9f74720              # double 0.023952838613531147
	.quad	0x3fc437d219c3afd8              # double 0.15795351274516523
	.quad	0x3fef7c7cac635bc4              # double 0.98394616765551079
	.quad	0x3fde53fa10a8b08e              # double 0.47387553812837602
	.quad	0x3fdc521385c7a87a              # double 0.44250953735775733
	.quad	0x3fdc7f0128aa5700              # double 0.44525174113492483
	.quad	0x3fdc93755cd92bd2              # double 0.44650014941424587
	.quad	0x3fe7e013aba97780              # double 0.74610312965135961
	.quad	0x3fe3a9e248c635b1              # double 0.61448778356287026
	.quad	0x3fe646111128c18b              # double 0.69605306006819612
	.quad	0x3fdd305f8ecc9e8a              # double 0.4560774702572209
	.quad	0x3fe28c152d48e95a              # double 0.57959994167985518
	.quad	0x3fe07461c10d3f6d              # double 0.51420676904124962
	.quad	0x3fe6421625928c9d              # double 0.69556720102663727
	.quad	0x3fbd1a2b2e17ebc0              # double 0.11368055224731588
	.quad	0x3fceffab16ea6b88              # double 0.24217737788134408
	.quad	0x3fe24ea72f86a0ff              # double 0.57210120470429604
	.quad	0x3fbaae2776d15950              # double 0.10421988154243889
	.quad	0x3fb6b632b3a527b8              # double 0.088717621668506719
	.quad	0x3febd8c1d8547f76              # double 0.87020962001768853
	.quad	0x3fd4e317a7428504              # double 0.32636061986893616
	.quad	0x3fd6e3b848c69aae              # double 0.35764891726504799
	.quad	0x3fe2e81be6d02d7a              # double 0.59083361702634751
	.quad	0x3fd918525e276488              # double 0.39210948176111815
	.quad	0x3fdba56ce1e38b3c              # double 0.43197176036317209
	.quad	0x3fe691cd80475619              # double 0.70529818586755078
	.quad	0x3fceee22b546f21c              # double 0.24164232112333728
	.quad	0x3fe233f73f962f0e              # double 0.56884348315495159
	.quad	0x3fe6f1b02ddf8f0c              # double 0.71700295409797965
	.quad	0x3fe069fe7daabc82              # double 0.51293873352359776
	.quad	0x3fefa4ea52381dad              # double 0.98888126429021883
	.quad	0x3fc0a695814b4db8              # double 0.13008374036017556
	.quad	0x3fe748aad16196f7              # double 0.72762051481978929
	.quad	0x3fc41bd27c060244              # double 0.15709906631311032
	.quad	0x3fdefc638ab884e8              # double 0.48415459200812316
	.quad	0x3fdf5b3079bba8a6              # double 0.48994075668327708
	.quad	0x3fa83f2a3d6df190              # double 0.047356910704340227
	.quad	0x3fef280e60ce5b76              # double 0.97363966853559591
	.quad	0x3fe9b3795310c42c              # double 0.80315843795518082
	.quad	0x3fe7c4f6c8287703              # double 0.74279345601436864
	.quad	0x3fd8e9ee3219019e              # double 0.38927798168517735
	.quad	0x3fe191bfa5d88499              # double 0.54904158012154192
	.quad	0x3f8ad595f8fb30c0              # double 0.013102695141605003
	.quad	0x3fe70843ed7d749f              # double 0.71975895294930925
	.quad	0x3fd06ff04cd109e0              # double 0.25683219434372795
	.quad	0x3fb5b3c853dfea10              # double 0.084774513699734876
	.quad	0x3feedda332ba0970              # double 0.96455535800514092
	.quad	0x3fe461e938d473fb              # double 0.63695202922428906
	.quad	0x3fda50a863757eb6              # double 0.41117295944966814
	.quad	0x3fcb62b340fb85c4              # double 0.21394959137891878
	.quad	0x3fdbe0725e86a8c0              # double 0.43557414275222683
	.quad	0x3febe552453f4faa              # double 0.87174333119263747
	.quad	0x3fee3a55e0685c69              # double 0.94462102727528674
	.quad	0x3fe81ee755eb1667              # double 0.75377241879386936
	.quad	0x3fb98d85e3840740              # double 0.099815719648202794
	.quad	0x3fd2a60ef269ebbc              # double 0.29138539956300824
	.quad	0x3fe3f5526af498f8              # double 0.62369652642953977
	.quad	0x3fefd23794e2e400              # double 0.99441126899102983
	.quad	0x3fe143f8c91d4334              # double 0.53954734115732217
	.quad	0x3fc0fff7d175893c              # double 0.13281152465339996
	.quad	0x3fec58255b1b456d              # double 0.88576000017398615
	.quad	0x3fd31b49053c6734              # double 0.29854035865138262
	.quad	0x3fcbeb28a1ecf6d8              # double 0.21811397463345972
	.quad	0x3fdab08b8ae6b650              # double 0.41702545704433636
	.quad	0x3fe99c26c9fb4313              # double 0.80031146478185844
	.quad	0x3fe7908eedc8699a              # double 0.73639627878155811
	.quad	0x3fdf5b3a47331458              # double 0.48994309380606671
	.quad	0x3fee3c5b1750e217              # double 0.94486765436073739
	.quad	0x3fd1f6d6ac6061c4              # double 0.28069083055154587
	.quad	0x3fe65455b849b06d              # double 0.69779478067131395
	.quad	0x3fe54fec4215a1d3              # double 0.66600621134881022
	.quad	0x3feb150b171e09f7              # double 0.84631876483064061
	.quad	0x3fda7fd1c27db01e              # double 0.41405147546061183
	.quad	0x3fef655087598dfe              # double 0.98111750064384728
	.quad	0x3fd4dee340e6559c              # double 0.32610398614755254
	.quad	0x3fed9accc7570f64              # double 0.92514647420510387
	.quad	0x3fd27b99228a0974              # double 0.28879383442849549
	.quad	0x3fe906056282c7be              # double 0.78198498955156714
	.quad	0x3fe5f2a3a710c6e1              # double 0.68586905126559483
	.quad	0x3f773e9ff553ae00              # double 0.0056749580737505134
	.quad	0x3fd533d87c2e7e4e              # double 0.33128940703497711
	.quad	0x3fc915d6ebe25ecc              # double 0.19597898977075656
	.quad	0x3fed8515177e231e              # double 0.92249540890142945
	.quad	0x3fd03d204cfa581e              # double 0.25373084561704384
	.quad	0x3fe0dfccc315719f              # double 0.52731931783960195
	.quad	0x3fe8912ce653cfb2              # double 0.7677216051656528
	.quad	0x3fe857e067e0fef9              # double 0.76072712220044914
	.quad	0x3fe936b124d6ab5e              # double 0.7879262656691528
	.quad	0x3fcf5dbead320bd4              # double 0.24504836518107587
	.quad	0x3fec998923a14b68              # double 0.8937421508693264
	.quad	0x3fe74bfb4f899f00              # double 0.72802510771450102
	.quad	0x3fe3f1523ca74218              # double 0.62320815893514503
	.quad	0x3fe7a3acd292dbf0              # double 0.73872986915273309
	.quad	0x3fcb96beced6fefc              # double 0.21553788280106534
	.quad	0x3feb730ab99ad308              # double 0.85779320002492998
	.quad	0x3fe7455cf99ecc3c              # double 0.72721718553510284
	.quad	0x3fd96c585291326e              # double 0.39723785460663563
	.quad	0x3fd5525b3cf8a746              # double 0.33315163568714856
	.quad	0x3fe6e9cbf6086ba4              # double 0.71603963902758894
	.quad	0x3fd53812df67c2ae              # double 0.33154746834683635
	.quad	0x3feabddb0e7c103b              # double 0.83567574337985862
	.quad	0x3fc34a6c894b6e28              # double 0.15070873931732476
	.quad	0x3fe907c7abe866ab              # double 0.78219970298524311
	.quad	0x3fc514924cfd6cf0              # double 0.16469029197001062
	.quad	0x3feaa0049e6f7625              # double 0.83203345245755556
	.quad	0x3fed3b102d3b8a12              # double 0.91345986208426866
	.quad	0x3feab62c0e2a77b9              # double 0.83473780409598597
	.quad	0x3fbbe7b13f40c8c8              # double 0.10900409502281427
	.quad	0x3fd352be3d2bb9a6              # double 0.30192523931227766
	.quad	0x3fc4b42a8e2f4070              # double 0.16174823706251429
	.quad	0x3fbab7a9677cd7c8              # double 0.10436495567850479
	.quad	0x3fe41f0d1738f679              # double 0.62879042182585387
	.quad	0x3fba8125375c4a98              # double 0.10353310205054311
	.quad	0x3fe7aa8e3b1758f6              # double 0.7395697740674041
	.quad	0x3feeb5a97780a6bc              # double 0.95967553463307053
	.quad	0x3fe1581d063156cd              # double 0.54200602731244774
	.quad	0x3fe209cbda488c17              # double 0.56369583734010831
	.quad	0x3fdeb3a0e0313166              # double 0.47971364873662592
	.quad	0x3fc6bb9d6fcee628              # double 0.17760055503258454
	.quad	0x3fe070fc135cacea              # double 0.51379207402842764
	.quad	0x3fd78c53cc5edfe2              # double 0.36793990095202223
	.quad	0x3feaccf0ba4ba0de              # double 0.83751713167023545
	.quad	0x3fe6e06bf4de18fa              # double 0.71489522767731661
	.quad	0x3fe98b5fe194461d              # double 0.79826349314152234
	.quad	0x3fef88333b3bad32              # double 0.98537599152533617
	.quad	0x3fe74ac333bfe68a              # double 0.72787628276201244
	.quad	0x3febe163f3c72acf              # double 0.87126348126306563
	.quad	0x3fb05698e4446968              # double 0.06382136891298773
	.quad	0x3fe6a6623012300d              # double 0.70781049145580399
	.quad	0x3febffee0658ee7f              # double 0.87499142875408598
	.quad	0x3f9644ebb92309e0              # double 0.021747286963327173
	.quad	0x3fec0fd5b3a9bf33              # double 0.87693295565075002
	.quad	0x3fbc03e08102a660              # double 0.10943415784518029
	.quad	0x3fed64d63c1aca56              # double 0.91855918635549005
	.quad	0x3fbef87685e7c328              # double 0.12097874421284571
	.quad	0x3fd0fcb16689dbfe              # double 0.26542315495993296
	.quad	0x3faddfca05ad0ab0              # double 0.05834800071035795
	.quad	0x3fda0a0d1334f382              # double 0.40686346889179259
	.quad	0x3fcf036fb1f625ac              # double 0.24229236783530206
	.quad	0x3feacff05735dedc              # double 0.83788315804755653
	.quad	0x3fa47b2fcfe425d0              # double 0.040002340438217154
	.quad	0x3fed9d66d5d43a3e              # double 0.92546407474021186
	.quad	0x3fbaa90b3408c520              # double 0.10414190311782479
	.quad	0x3fe90d0bc16a9810              # double 0.78284251953732742
	.quad	0x3fe28e311f6e311e              # double 0.57985740793950291
	.quad	0x3fdbfb972aea270a              # double 0.43723086539158429
	.quad	0x3fc118a1971df37c              # double 0.13356418493995281
	.quad	0x3fee8ccf6d6909e9              # double 0.95468875283432653
	.quad	0x3fea25afcbc8c9cf              # double 0.81710042764307811
	.quad	0x3fe52d547a94a809              # double 0.66178344670811484
	.quad	0x3fe92dabf8cf78f2              # double 0.78682516666211044
	.quad	0x3fe30872f2c00771              # double 0.59478137409335663
	.quad	0x3fe01b2920130fae              # double 0.50331550850431994
	.quad	0x3fead40e274c1e25              # double 0.8383856551672052
	.quad	0x3fe258bf823dc932              # double 0.57333350599063793
	.quad	0x3fe693839ac855bb              # double 0.70550708991020572
	.quad	0x3f961696eea72b80              # double 0.021570547405456164
	.quad	0x3fd27de6aa0e07ac              # double 0.28893438918032177
	.quad	0x3fef251cf4f07410              # double 0.97328040923787462
	.quad	0x3fad1164f7bb4a10              # double 0.056773333779023827
	.quad	0x3fe7b5fe1732924b              # double 0.7409658864094778
	.quad	0x3fd1c312150c9b46              # double 0.27753116660681021
	.quad	0x3feab0ae2320b036              # double 0.83406741009594643
	.quad	0x3fe3abe5cd83cf20              # double 0.6147336019480214
	.quad	0x3fedc3f6da47caf5              # double 0.93017141945742188
	.quad	0x3fcb416b9139255c              # double 0.21293396559694144
	.quad	0x3fe6d275c72e3a2d              # double 0.71319092657524197
	.quad	0x3fe3353a7242c5a7              # double 0.60024759594505361
	.quad	0x3fe8e0fae93fcbc2              # double 0.77746339375004703
	.quad	0x3fed9c077cc84af2              # double 0.92529653903542752
	.quad	0x3fe90855f4d8f49e              # double 0.78226754972242296
	.quad	0x3fe8fa9b9f414d11              # double 0.78059178452022782
	.quad	0x3fdbac5265d38524              # double 0.43239269203157193
	.quad	0x3fd632dc5e4a1cc2              # double 0.34685429771384346
	.quad	0x3f96e690300d7dc0              # double 0.022363903935340934
	.quad	0x3feb2f8cdb288098              # double 0.84955447010362928
	.quad	0x3fe70cbd6550e869              # double 0.72030515468874257
	.quad	0x3fece1fb2145341f              # double 0.90258556841002135
	.quad	0x3fee8aa9f006801e              # double 0.9544267356868692
	.quad	0x3fa5d76e6818d2d0              # double 0.042659235198163281
	.quad	0x3fe5b36fbbe5aaea              # double 0.67815386484775542
	.quad	0x3fea6b4cec9a8ea7              # double 0.82559820377033055
	.quad	0x3fc694f5d7912938              # double 0.17642090821966305
	.quad	0x3fdf62e9a4b7f552              # double 0.49041215024756923
	.quad	0x3fd78d0160eb20dc              # double 0.36798128571218824
	.quad	0x3fdd7f4a2b68ac32              # double 0.46089414824627106
	.quad	0x3febdd5c1dbc405d              # double 0.87077146346747336
	.quad	0x3fdeee1559f1dca8              # double 0.48328145774525888
	.quad	0x3feee25e58193a71              # double 0.96513287741420417
	.quad	0x3fe7120ab1a5b431              # double 0.7209523648904278
	.quad	0x3fd20b9d8278bc80              # double 0.28195893994683985
	.quad	0x3fe99e70fa9b3b6f              # double 0.80059098192746869
	.quad	0x3fe49fe1c9f8f59d              # double 0.64451684425118894
	.quad	0x3fe161a28eeffacc              # double 0.54316833417382204
	.quad	0x3feaa3544f302bb2              # double 0.83243766275824371
	.quad	0x3fc5e3672705a74c              # double 0.1710022869622726
	.quad	0x3fe34853502f77bb              # double 0.60257878934111575
	.quad	0x3fc1608314851afc              # double 0.13575781347227422
	.quad	0x3fc0a12c18640d5c              # double 0.12991858664472999
	.quad	0x3fde4029e9c3f65e              # double 0.47266624287281001
	.quad	0x3fecfeacd469d4d7              # double 0.9060882710170074
	.quad	0x3fda6429e77b1664              # double 0.41236350637004748
	.quad	0x3feaa8b0139e70d7              # double 0.83309177238290999
	.quad	0x3fc750ee6d915848              # double 0.18215732908237414
	.quad	0x3fc8867223de0e38              # double 0.19160296202982052
	.quad	0x3fedcac46863c8e7              # double 0.93100185764913312
	.quad	0x3fe5a4ae9b6a2588              # double 0.67635279039784368
	.quad	0x3fe08b3210054d67              # double 0.51699164513631224
	.quad	0x3fe305ef8f266ba9              # double 0.59447458228111316
	.quad	0x3fd383ddf58dc016              # double 0.30492352466444694
	.quad	0x3fd1e654173e9c38              # double 0.27968313474633844
	.quad	0x3fe6f2a7ba35020b              # double 0.7171209942681015
	.quad	0x3fe7a90f740a9b88              # double 0.7393872515138904
	.quad	0x3fde65f990c64018              # double 0.47497405183912766
	.quad	0x3fd846a419002366              # double 0.37931158486804006
	.quad	0x3fe98c1fb5631f6a              # double 0.79835496356188895
	.quad	0x3fd2b934e0bb530a              # double 0.29255411097010209
	.quad	0x3fe66d602ea9ce6c              # double 0.70085152734686806
	.quad	0x3fdf928181d834dc              # double 0.49331700973637083
	.quad	0x3fc302e18b6865bc              # double 0.14852542216321563
	.quad	0x3fe5b4f20901501d              # double 0.67833806761564441
	.quad	0x3fd2c81ef959abc2              # double 0.29346441603291507
	.quad	0x3fc8e52fb5f9dcd0              # double 0.19449421296642422
	.quad	0x3feaffe39203fbb3              # double 0.84373644369758549
	.quad	0x3febd913fc16164d              # double 0.87024878726578836
	.quad	0x3fd697118e793538              # double 0.35297049439835204
	.quad	0x3fda68ea5cd1f26a              # double 0.41265353264296911
	.quad	0x3fe7cc592c4e295e              # double 0.74369486478216706
	.quad	0x3fe85612b75d4b58              # double 0.76050697148671542
	.quad	0x3fcd64aa325264e8              # double 0.22963454682466211
	.quad	0x3fe5d6631b735d57              # double 0.68242030488446914
	.quad	0x3fec7970227b6e86              # double 0.88982397780223788
	.quad	0x3feed280f2089e26              # double 0.96319625160407862
	.quad	0x3fc1883c9be11398              # double 0.13697011576928442
	.quad	0x3fe9172123373ae8              # double 0.78407341840815281
	.quad	0x3fca0dc12697ece4              # double 0.20354475387998783
	.quad	0x3fe3bb97020b4590              # double 0.61664915465569159
	.quad	0x3fbc1a403286d378              # double 0.10977555497704639
	.quad	0x3fca33c48c239594              # double 0.20470482676243462
	.quad	0x3fd7e9e6cbe3a66a              # double 0.37365121756611208
	.quad	0x3fe5c189a43532b1              # double 0.67987520286404479
	.quad	0x3fe995fca55994c3              # double 0.7995589475146051
	.quad	0x3fad1d5fb6652c50              # double 0.056864729895629851
	.quad	0x3fbfb62e88daf630              # double 0.12387362328714668
	.quad	0x3fe7463eb8cb05e7              # double 0.7273248299827032
	.quad	0x3fe682d1e1820bda              # double 0.70346921963243436
	.quad	0x3fd3c16590c1f0ce              # double 0.30867900024874195
	.quad	0x3fe7a1a8c234e309              # double 0.7384837906930396
	.quad	0x3fc57e7851f489ec              # double 0.16792205812187377
	.quad	0x3fd7b7aa42f85e04              # double 0.37058502712304198
	.quad	0x3fd17c12159c1852              # double 0.2731976710350682
	.quad	0x3fdcc8b6efb52228              # double 0.44975064667645137
	.quad	0x3fd8ffa8bd214fb2              # double 0.3906041953061915
	.quad	0x3fb3b9cfe7c17c00              # double 0.077054018097882704
	.quad	0x3fd803b02ebf63c0              # double 0.37522511067578179
	.quad	0x3fe46d00899c48fc              # double 0.63830592038200917
	.quad	0x3fec41f44fcc58db              # double 0.88305106721488913
	.quad	0x3fda7cb49b981fda              # double 0.41386141962766276
	.quad	0x3fe8d027c444e68a              # double 0.7754095872289366
	.quad	0x3fe66164699237c7              # double 0.69938870066993608
	.quad	0x3fd86409e63a529c              # double 0.3811058758085808
	.quad	0x3feb9fbddef21472              # double 0.86324971717898635
	.quad	0x3fe066a5e078a985              # double 0.51253026811654989
	.quad	0x3fe1ecbdf54223cd              # double 0.56014917280219267
	.quad	0x3febbd06cf16627c              # double 0.86682453581586527
	.quad	0x3fec7befd58a4dab              # double 0.89012901026801694
	.quad	0x3fe8b61112d16535              # double 0.77222493815785376
	.quad	0x3fdf937d60c299de              # double 0.49337706040605933
	.quad	0x3fb2aaa032bfcb00              # double 0.072916042699755934
	.quad	0x3fda57941c88e43a              # double 0.41159537111849753
	.quad	0x3fd79b0ee21cee88              # double 0.36883899766301242
	.quad	0x3fdeb0edb1af19f6              # double 0.479548858184358
	.quad	0x3fd4b849ca6703dc              # double 0.32374806180820115
	.quad	0x3fee3540031807fe              # double 0.94400024990341058
	.quad	0x3fe9456a9a5834fa              # double 0.78972368379041247
	.quad	0x3fe3dfc9edc14cfc              # double 0.62106796680964704
	.quad	0x3fc201fc8a9609c0              # double 0.14068562285326713
	.quad	0x3fea93e957dbc1a1              # double 0.83055560264442729
	.quad	0x3fe26bcaa82a8a60              # double 0.57565815777736518
	.quad	0x3fc15b216c57d498              # double 0.13559358396711185
	.quad	0x3fe3fde5c0366c5f              # double 0.62474334279557897
	.quad	0x3fdf79df17619abc              # double 0.49181344302489172
	.quad	0x3fc660ba1e1f4c4c              # double 0.17482687445462586
	.quad	0x3f95df495e2acca0              # double 0.02135958325625309
	.quad	0x3feb95f3fd399318              # double 0.86205481966007635
	.quad	0x3feb3568c438c198              # double 0.85026968311835827
	.quad	0x3fecebff4078b57d              # double 0.90380823700040447
	.quad	0x3f9b7c5568c072c0              # double 0.026841482656993376
	.quad	0x3fd1391937d65c78              # double 0.26911001637331067
	.quad	0x3fecaa7be052ed6a              # double 0.89581102193134865
	.quad	0x3fe21acd67be7fea              # double 0.56577177298094949
	.quad	0x3fe91f3ded8b1ef1              # double 0.78506370921328827
	.quad	0x3fd258ac3d080e5e              # double 0.28666215858559052
	.quad	0x3f9e5514cacffc00              # double 0.029621434096039678
	.quad	0x3fd753727c846f98              # double 0.36446821365256588
	.quad	0x3fd5ddd79cecc606              # double 0.34166517567345556
	.quad	0x3fe38c7692ed9fe1              # double 0.61089638420980574
	.quad	0x3fe9bce99036baf1              # double 0.80431059042697772
	.quad	0x3febcdfd74adfd94              # double 0.86889527119631049
	.quad	0x3fab8427debbb090              # double 0.053742643298250958
	.quad	0x3fe0b304f394b1e2              # double 0.52185294699080154
	.quad	0x3fce1cbc240a94b0              # double 0.23525192031698827
	.quad	0x3fed6232f5fb5dda              # double 0.9182371906599045
	.quad	0x3fecf16936afd87d              # double 0.90446911507639494
	.quad	0x3fedf3cc0778602b              # double 0.93601037463213765
	.quad	0x3fc61cdcee718b58              # double 0.17275582926512345
	.quad	0x3fd6f457e0aeda34              # double 0.35866352979374772
	.quad	0x3fd276e60a6718ea              # double 0.28850699439898497
	.quad	0x3fd9c7c4d0fc4cf6              # double 0.40281792076821377
	.quad	0x3fdce663142f120a              # double 0.4515617081745239
	.quad	0x3fcae0e70afe3fd8              # double 0.20998847996497605
	.quad	0x3fdd3412e42f4bd0              # double 0.4563033321730332
	.quad	0x3fe71feff8215e51              # double 0.72264860594709479
	.quad	0x3fd29b99c480e136              # double 0.29074711026943889
	.quad	0x3fe79761529d42eb              # double 0.73722902427297521
	.quad	0x3fe190e55e83a612              # double 0.54893749675574299
	.quad	0x3fe157d9d860c727              # double 0.54197399388633449
	.quad	0x3fd234d4ec55f410              # double 0.28447459296859368
	.quad	0x3faf252385162c30              # double 0.060830221172260557
	.quad	0x3f80295f63d14c00              # double 0.0078914120041755353
	.quad	0x3fe34a78c055a39f              # double 0.60284078183495982
	.quad	0x3fe9bbb6dbd3050a              # double 0.80416434225495093
	.quad	0x3fc0344951f543c0              # double 0.12659565450533528
	.quad	0x3fa470004bdd4400              # double 0.039917001019269094
	.quad	0x3fa65bc02770c540              # double 0.043668751539721828
	.quad	0x3fe84038cadd7d5d              # double 0.75783958074672919
	.quad	0x3fdbca147067f814              # double 0.43420897462044761
	.quad	0x3fde3e7c82107250              # double 0.47256386472307543
	.quad	0x3fd75ef2465aaa62              # double 0.36517006750606218
	.quad	0x3fefa6580d46e1ef              # double 0.98905565827504726
	.quad	0x3fca011c268c3728              # double 0.20315887338841176
	.quad	0x3fe586e8e9320c4b              # double 0.67271848245617016
	.quad	0x3fd30831deb4c120              # double 0.2973751711715682
	.quad	0x3fd081ede7b8a716              # double 0.25793025616677434
	.quad	0x3fe63db8d6dc5746              # double 0.69503442730886245
	.quad	0x3fe26f44e523eef3              # double 0.57608265642144685
	.quad	0x3fd84662a4377cae              # double 0.37929597889701483
	.quad	0x3feba5835e19f2b1              # double 0.86395424250766528
	.quad	0x3fb080c45331c5a0              # double 0.064464826880586745
	.quad	0x3fcc10ab9ee727bc              # double 0.21925874003346546
	.quad	0x3fde9762991d54d2              # double 0.47798981621356262
	.quad	0x3fea3005fc991a7f              # double 0.8183622296863432
	.quad	0x3fec4636f369ca22              # double 0.88357112447403474
	.quad	0x3fe58e45f6e22a81              # double 0.67361734599519718
	.quad	0x3fd5bbbeff187356              # double 0.33958411132498634
	.quad	0x3fbd714b2f16c598              # double 0.11500997447617178
	.quad	0x3fee161d89d8dfe9              # double 0.94019963191294409
	.quad	0x3fe505c0b3c340e2              # double 0.65695223913101253
	.quad	0x3fe197c6d571a87d              # double 0.54977742851521294
	.quad	0x3fd2407ebaecd866              # double 0.28518646482860388
	.quad	0x3fb3580c0842a3e8              # double 0.075562240616491416
	.quad	0x3fe639734131412e              # double 0.6945129655160025
	.quad	0x3fa75a6d1c422b90              # double 0.045611772250672478
	.quad	0x3fa72b89af954b30              # double 0.045254042323583099
	.quad	0x3fcfcd9be1c9c41c              # double 0.24846218609630533
	.quad	0x3fec33f53f4aa483              # double 0.88134252893100073
	.quad	0x3fd06d8c891c6d7e              # double 0.25668633832693633
	.quad	0x3fbfeb85949ab700              # double 0.12468752744709022
	.quad	0x3fe98787387c2151              # double 0.79779397041515143
	.quad	0x3fdb648e13256b00              # double 0.42801238889448712
	.quad	0x3fe258f53734f298              # double 0.5733591154344877
	.quad	0x3fe2a00fe4618442              # double 0.58203882794999395
	.quad	0x3fb4ebf39879f018              # double 0.081725334859527599
	.quad	0x3fc04b43abb67b28              # double 0.12729688534178618
	.quad	0x3feb36aa71b8e2a1              # double 0.85042307101601378
	.quad	0x3fd2cc490f37bfbc              # double 0.29371859060392658
	.quad	0x3fe71d0fc5b9b135              # double 0.72229755991205613
	.quad	0x3fe4ec731b2f7531              # double 0.65386348065991318
	.quad	0x3fbd79e630b16fa8              # double 0.11514128388210898
	.quad	0x3fef0a1676976540              # double 0.96998141443615537
	.quad	0x3fc8b1c6eb00a92c              # double 0.19292532419906061
	.quad	0x3fe28b8b0b4de9ec              # double 0.57953407485848407
	.quad	0x3febfcb905b197bf              # double 0.87459994422965071
	.quad	0x3fc8f581a6ac0024              # double 0.19499226225161792
	.quad	0x3fe7cf208a6ebcd1              # double 0.74403407132731492
	.quad	0x3fa9bfde59f5c730              # double 0.05029196594376939
	.quad	0x3fe9a60c10de98b3              # double 0.80151942534282339
	.quad	0x3fcb01f9c9ff59c8              # double 0.21099779475362213
	.quad	0x3f67c547c0a33000              # double 0.0029016877570935407
	.quad	0x3fd7e2ca6a7c52d0              # double 0.37321720503795763
	.quad	0x3fd01a0623a1f0fc              # double 0.2515883777594039
	.quad	0x3fde01df3489712e              # double 0.46886425142817501
	.quad	0x3fc19719fce606e4              # double 0.13742375229417469
	.quad	0x3feb5a8c5d15072d              # double 0.85480325870614637
	.quad	0x3feba921735b07f6              # double 0.86439583330525127
	.quad	0x3fba48900dcb8890              # double 0.10266971909325862
	.quad	0x3fd304417d02dbd6              # double 0.29713475425836344
	.quad	0x3fea5a1c911bce06              # double 0.82349994985128272
	.quad	0x3fd1101ea921bfe4              # double 0.26660887257366839
	.quad	0x3fe84bf6957d9e63              # double 0.75927285382654153
	.quad	0x3fe4e8456959f898              # double 0.65335341049628237
	.quad	0x3fe4347c8ebb7753              # double 0.63140704991722385
	.quad	0x3fd5649f9f16203e              # double 0.33426657233986024
	.quad	0x3fc08be4c2474f44              # double 0.12926921354539378
	.quad	0x3fe91d375548bebd              # double 0.78481642396032891
	.quad	0x3fef697cb1785c89              # double 0.98162684118405352
	.quad	0x3fe55e258d22927c              # double 0.66774251523436545
	.quad	0x3fe0b6e757fb5aeb              # double 0.52232711013752231
	.quad	0x3fef336769713b3e              # double 0.97502489656640257
	.quad	0x3fe475bd16e3d921              # double 0.63937239142140723
	.quad	0x3fe76db44e10db42              # double 0.73214164015994521
	.quad	0x3fea19c901d7317f              # double 0.81564760550968163
	.quad	0x3fd4dad410cd8278              # double 0.32585622445007045
	.quad	0x3febce26c690eac9              # double 0.86891497404516216
	.quad	0x3fdcfec28c29d28c              # double 0.45304931342915533
	.quad	0x3fce1b4e9e17c13c              # double 0.23520834655165312
	.quad	0x3fd366c36d317be4              # double 0.30314717925460699
	.quad	0x3fe7fc6d93c669ce              # double 0.74956396925272784
	.quad	0x3fe88b9648fcad01              # double 0.7670394349601396
	.quad	0x3fecc69abd01360f              # double 0.89924370684610888
	.quad	0x3fd63a7159760a7e              # double 0.34731706367907822
	.quad	0x3fed3c95cc9aa448              # double 0.91364564859134934
	.quad	0x3fca36738989c528              # double 0.20478672233324713
	.quad	0x3fd51b7ab64a8a3e              # double 0.32980220605728394
	.quad	0x3fd450638d03976c              # double 0.31740654726887985
	.quad	0x3fe9cade55cbf3d3              # double 0.80601422078290808
	.quad	0x3fc2f883a2c00634              # double 0.14820905157834974
	.quad	0x3fce998a9cfdd738              # double 0.23906071343997737
	.quad	0x3fd5957dec32d1c4              # double 0.33724926058064519
	.quad	0x3febbeb77902bd95              # double 0.86703084597495439
	.quad	0x3fd821a67fa9ee40              # double 0.37705385653655199
	.quad	0x3fe58e106d804503              # double 0.67359181773113652
	.quad	0x3fe6ada625db2625              # double 0.70869738954315109
	.quad	0x3fe2355dc0fcbba0              # double 0.56901443188495548
	.quad	0x3fe939c6b3fd1109              # double 0.78830275682460738
	.quad	0x3fedf40ed201537d              # double 0.93604222313534502
	.quad	0x3fd9e93c64c88196              # double 0.40486059038269084
	.quad	0x3fd2d2fb78fd47da              # double 0.29412733855599316
	.quad	0x3fc98351644461a4              # double 0.1993200053773424
	.quad	0x3fe80d3e6a34cb0b              # double 0.75161667579081504
	.quad	0x3fd5fe2e28a525c4              # double 0.34363893479584484
	.quad	0x3fcabfd741d23e00              # double 0.2089795180695404
	.quad	0x3f94b96a02a41b60              # double 0.020238548670956091
	.quad	0x3fd7af0aeb566d70              # double 0.37005875570476743
	.quad	0x3fdad8ee59523f60              # double 0.41949042055875019
	.quad	0x3fe8e6551760712d              # double 0.77811674657599428
	.quad	0x3fdadd0ace906dce              # double 0.41974134609492075
	.quad	0x3fbd647da407c950              # double 0.11481461767815415
	.quad	0x3f8f69a401e5a500              # double 0.015338212306874599
	.quad	0x3fe996d6106a244b              # double 0.79966262060146087
	.quad	0x3fcd99f33a8ae15c              # double 0.23126068457146232
	.quad	0x3fe684ccff7c1b85              # double 0.70371103190778739
	.quad	0x3fa5f04f3b777b80              # double 0.042849040993806931
	.quad	0x3feb75ad444b6e0b              # double 0.85811484659956372
	.quad	0x3fe7404de3e879fc              # double 0.72659964097311969
	.quad	0x3fd25fd52b42ecfc              # double 0.28709916329144369
	.quad	0x3fb4ae1c99ebd0c0              # double 0.080781734064490074
	.quad	0x3fd1ba7cf8be8626              # double 0.27700733462742944
	.quad	0x3fecf2eb5a90d430              # double 0.90465324104900979
	.quad	0x3fc1ce0d68b41318              # double 0.1391007195708418
	.quad	0x3fe2e8604426ae70              # double 0.59086621580850185
	.quad	0x3fef26e82dffd936              # double 0.97349938377627754
	.quad	0x3fd4851ecd55dd84              # double 0.32062501957212697
	.quad	0x3fd3df40a9e58c68              # double 0.31050125686142005
	.quad	0x3fde768563c711b8              # double 0.47598395103366498
	.quad	0x3febf69430ca07f4              # double 0.8738499596513507
	.quad	0x3fe0753f6c273e96              # double 0.51431246875468406
	.quad	0x3fe3e93f6c607f50              # double 0.62222262542125328
	.quad	0x3fd3f05b1888451e              # double 0.31154515643818737
	.quad	0x3fcef37504821420              # double 0.24180472107050921
	.quad	0x3fe98c4ef1867f1d              # double 0.79837748692441191
	.quad	0x3fe972c943b3d4b6              # double 0.79526198599946585
	.quad	0x3fedda5dc6a7d1fa              # double 0.93290604400550525
	.quad	0x3fc510849c4a1304              # double 0.16456658965412185
	.quad	0x3fec0d07db9da574              # double 0.8765906609889229
	.quad	0x3fec50e44c526343              # double 0.88487448603255137
	.quad	0x3fdaa90c82c3ab24              # double 0.41656792421297184
	.quad	0x3f97352c4a6d9780              # double 0.022663776438455852
	.quad	0x3fee9eeee72badc8              # double 0.95690102720748715
	.quad	0x3fe771593850b0de              # double 0.73258648871481191
	.quad	0x3fd7355451657406              # double 0.36262996624810773
	.quad	0x3fc24621442a2740              # double 0.14276519611694916
	.quad	0x3fd2c5915d73b226              # double 0.29330858350911837
	.quad	0x3feefb9d9b91402e              # double 0.96821480163817397
	.quad	0x3fe5526724528d9f              # double 0.66630894750817393
	.quad	0x3fd44dcfe240ba9e              # double 0.31724927039150852
	.quad	0x3fe08b6c020f685f              # double 0.51701927568798201
	.quad	0x3fdeef44ce5db130              # double 0.48335380700042929
	.quad	0x3fe6c594677ced5c              # double 0.71161861622332934
	.quad	0x3fe0b886004ece9d              # double 0.52252483425259622
	.quad	0x3fe50e0e127cbe8a              # double 0.65796569453046172
	.quad	0x3fb9712df37af880              # double 0.099383232062765003
	.quad	0x3fede804e0380d26              # double 0.93457263748897357
	.quad	0x3fe9afb8ed5098c2              # double 0.80270048475792799
	.quad	0x3fefaa38a477f2f1              # double 0.98952896235240761
	.quad	0x3fd43ddeb5f8e2fc              # double 0.31627624293064094
	.quad	0x3fe67f1d3620f093              # double 0.70301685878759412
	.quad	0x3fd80fbd99ef0af2              # double 0.37596073181718659
	.quad	0x3fd7895ffe387e42              # double 0.36775970293271965
	.quad	0x3feaf94501a1ef44              # double 0.84292841261729067
	.quad	0x3fe16a4b8f66a9d8              # double 0.5442254830170965
	.quad	0x3fedc82983b8111c              # double 0.93068385816926335
	.quad	0x3fe0c9b4681b29ea              # double 0.52462215741371421
	.quad	0x3fe3a7d467468745              # double 0.61423702403065106
	.quad	0x3fd268f68f80c7d4              # double 0.28765644086808817
	.quad	0x3feefbc5d9dfff79              # double 0.96823399118146291
	.quad	0x3fab60905146abf0              # double 0.053471097871202633
	.quad	0x3fe23f2a10916b6a              # double 0.57021048770853366
	.quad	0x3fa768326e8c0270              # double 0.045716835016723745
	.quad	0x3fec7b5070e7f7ab              # double 0.89005300571419832
	.quad	0x3fee2630b379c10b              # double 0.94216189435795294
	.quad	0x3fd9c708cbfe3a32              # double 0.40277309342573908
	.quad	0x3fcc9a31323fb6b0              # double 0.22345557168539676
	.quad	0x3fe97d3fa4fd884c              # double 0.79653913712196233
	.quad	0x3fe5e8d2050a1afa              # double 0.6846704576899747
	.quad	0x3fd8088071138ca4              # double 0.37551890413869615
	.quad	0x3fe4c8e3a06ffdf1              # double 0.64952260337298473
	.quad	0x3fa94dbfc9aa0be0              # double 0.049421304099290131
	.quad	0x3feb3fced1a4310c              # double 0.85153904862957707
	.quad	0x3fd79e2a5d8ee9fe              # double 0.36902865540073992
	.quad	0x3fe17cbd83cfafdd              # double 0.5464770864905365
	.quad	0x3feba4340c6af026              # double 0.86379434991204529
	.quad	0x3fe485821b6ad086              # double 0.64129739146166354
	.quad	0x3feddd4a64c34cb9              # double 0.93326301269771428
	.quad	0x3fee7cdde30c903d              # double 0.95274252267382276
	.quad	0x3fe6f82b695e2c06              # double 0.71779413776073464
	.quad	0x3fc74eeca20fd108              # double 0.18209607995198263
	.quad	0x3fcbb31200242d88              # double 0.21640229231739405
	.quad	0x3feab183e1ae0300              # double 0.83416933134148508
	.quad	0x3feaad5eee752aa1              # double 0.83366343091741524
	.quad	0x3fedf1fbe035c398              # double 0.93578904906290727
	.quad	0x3fe1de74c2e0bec3              # double 0.55840528547374679
	.quad	0x3fe9481643f2dd4b              # double 0.79004967948177673
	.quad	0x3fe2c64f6578834c              # double 0.58670778101450471
	.quad	0x3fe3f03c7623118f              # double 0.62307570527677736
	.quad	0x3fd856a70830f412              # double 0.38028884696888199
	.quad	0x3fd36b9170dc431c              # double 0.3034404375221571
	.quad	0x3fe92dcba8455a4d              # double 0.78684027543460788
	.quad	0x3fe114808f1e2b7f              # double 0.5337527079840213
	.quad	0x3fe12b0ffd13c29e              # double 0.53650664738787035
	.quad	0x3fd82824f349f602              # double 0.37745021589930172
	.quad	0x3f82133b95b68280              # double 0.0088257460654983522
	.quad	0x3fbb6c6000e5fa20              # double 0.10712242147381135
	.quad	0x3feb613ed66e9fa9              # double 0.85562078362726368
	.quad	0x3fc41feb48a8fb64              # double 0.15722409293990858
	.quad	0x3fcc5a14389627b8              # double 0.22149899256720373
	.quad	0x3fe685cebebeb783              # double 0.70383393530731586
	.quad	0x3fd10c2a775ba2a8              # double 0.2663675466160762
	.quad	0x3feaf7a1276f6b05              # double 0.8427282114238045
	.quad	0x3fad8ce1aae77460              # double 0.057715465652770304
	.quad	0x3f4c0e3b29f9e800              # double 8.5618866792391835E-4
	.quad	0x3fb94575e76b32a8              # double 0.098716134070125805
	.quad	0x3fef11b78254099a              # double 0.9709126992677739
	.quad	0x3fe5c51b9e699928              # double 0.68031102123203357
	.quad	0x3fe740045c0a2b19              # double 0.72656457878597103
	.quad	0x3fe75c96e9d6991f              # double 0.73005242988145713
	.quad	0x3fe380a0845a25f9              # double 0.60945154047038763
	.quad	0x3fd775bb611b226a              # double 0.36656078799254621
	.quad	0x3fe749c97cfaabe1              # double 0.72775720987317183
	.quad	0x3fdf86be2cd9c006              # double 0.4925990522378928
	.quad	0x3fdb7d6b99796432              # double 0.42953004825318708
	.quad	0x3fe2aca7e398530d              # double 0.5835761494841748
	.quad	0x3fd03a94f22eb466              # double 0.25357555056218073
	.quad	0x3fd1bbf8e82a6bb4              # double 0.27709791824753016
	.quad	0x3fbecacff3cc60b0              # double 0.12028217031582034
	.quad	0x3fc36e13350015d4              # double 0.15179672325045479
	.quad	0x3fd4bf02aa6a30f0              # double 0.32415835039206709
	.quad	0x3fe2bb61be5c384b              # double 0.5853737562154121
	.quad	0x3fa56c63a6dd1470              # double 0.041842569464770274
	.quad	0x3fed06ce57d4a2a5              # double 0.90708081392684348
	.quad	0x3fa23c8f4622d190              # double 0.035618283568882636
	.quad	0x3fd1aa1ba2e7f70c              # double 0.27600756558227668
	.quad	0x3fe40ab3e09fe097              # double 0.62630647537209228
	.quad	0x3fe70784870342f9              # double 0.71966768617320931
	.quad	0x3fec922796f82893              # double 0.89284114347653298
	.quad	0x3fc9ff1a35912cc8              # double 0.2030976068075232
	.quad	0x3fefe6fa78bcb7e0              # double 0.99694560605507476
	.quad	0x3feb5a9764ab3410              # double 0.85480851804607205
	.quad	0x3fefc6194a5cf098              # double 0.9929319813159223
	.quad	0x3fbd1fb0656a9870              # double 0.11376478649126098
	.quad	0x3fb05269feafe0e0              # double 0.063757538489770393
	.quad	0x3fdb46c3685190de              # double 0.42619404971470753
	.quad	0x3fee2493755032e3              # double 0.94196484482526122
	.quad	0x3fdb83e5af8e1478              # double 0.42992536682169868
	.quad	0x3fe27f040b0c5ad8              # double 0.57800485761512288
	.quad	0x3fe618839223e18f              # double 0.69049242537498567
	.quad	0x3fe6b83defaa017b              # double 0.70999047097579593
	.quad	0x3fc19ad6970e73b8              # double 0.13753778816035633
	.quad	0x3fef283bd85a6fa9              # double 0.97366134888169597
	.quad	0x3fef02458ae9f540              # double 0.96902730113621515
	.quad	0x3fd3f7bcd643952a              # double 0.31199570583551639
	.quad	0x3fd36cbf5fe04c9c              # double 0.30351242411524892
	.quad	0x3fe82e98384810a8              # double 0.75568781845551758
	.quad	0x3fc3b063da15b634              # double 0.15382049702331957
	.quad	0x3feafc30e56a0def              # double 0.84328503425098045
	.quad	0x3feed1b369006056              # double 0.96309824474429706
	.quad	0x3fe7fdab08a473e9              # double 0.74971534431426534
	.quad	0x3fb92f39bc8cfae0              # double 0.098376854451071249
	.quad	0x3fc5767f5d2d3c18              # double 0.16767875718730418
	.quad	0x3fdc717dd1aae8ac              # double 0.44442697024681865
	.quad	0x3fda36ac7783696c              # double 0.40958701773856521
	.quad	0x3f878a0f6df2b840              # double 0.011493797819948637
	.quad	0x3fac2fc18b0d4ce0              # double 0.055051849578967582
	.quad	0x3fe52923c2a625f9              # double 0.66127193467508427
	.quad	0x3fe941078e0281cb              # double 0.78918817268645947
	.quad	0x3fe2598585b12c5c              # double 0.57342792617545113
	.quad	0x3fecbed182d8f5d2              # double 0.89829326206352733
	.quad	0x3fe8b1b3eec5d91f              # double 0.77169224391289848
	.quad	0x3fec885cc986acd7              # double 0.89164580689012041
	.quad	0x3fe7518dde86aebb              # double 0.72870534383897423
	.quad	0x3fbbccbdc2a66588              # double 0.10859285356709425
	.quad	0x3fe242f76a304f65              # double 0.57067461719496448
	.quad	0x3fd29c56a2f665a2              # double 0.2907921401434469
	.quad	0x3fd841f30ecf8604              # double 0.37902523466445381
	.quad	0x3fe3f6844478d0dc              # double 0.62384236691880401
	.quad	0x3fe38d38aff7f17e              # double 0.61098894471028564
	.quad	0x3feffe1c7e1ded32              # double 0.99976944572646276
	.quad	0x3fe15fc1a072265e              # double 0.54293900811280671
	.quad	0x3fe7ed4474935bf0              # double 0.74771330612827391
	.quad	0x3fe4a3a50488e283              # double 0.6449761475151522
	.quad	0x3fd7e72fff4b5cba              # double 0.37348556452839043
	.quad	0x3fefafac4baf7b38              # double 0.99019446165389179
	.quad	0x3feb6b9236d55632              # double 0.8568812437976645
	.quad	0x3fb021dd7c38e578              # double 0.063016741588304614
	.quad	0x3fd3b026f63a2530              # double 0.30762647672289045
	.quad	0x3f6125c89d64e000              # double 0.0020932119615757472
	.quad	0x3fe5fd047a33f497              # double 0.68713592403186652
	.quad	0x3f9761bfc9bdcb00              # double 0.022833820999447418
	.quad	0x3fe6516a7b938c07              # double 0.69743847023016847
	.quad	0x3fecc039760ccac6              # double 0.89846489960321985
	.quad	0x3fdd8030b11b58a8              # double 0.46094910903537789
	.quad	0x3fda260b7e8de0ea              # double 0.40857207640466575
	.quad	0x3fe93be809c1c680              # double 0.788562792831911
	.quad	0x3feb677b1a4ad73e              # double 0.85638194213127128
	.quad	0x3fed2e80d1e1d08d              # double 0.91192666046710402
	.quad	0x3fdcc73db80ea730              # double 0.44966071104373651
	.quad	0x3fefcd219db365df              # double 0.99379044342930089
	.quad	0x3fe2a4e5236a6168              # double 0.5826287929258287
	.quad	0x3fe42670a688267f              # double 0.62969238782643788
	.quad	0x3fee9a708eb7d6e6              # double 0.95635249971993797
	.quad	0x3fe111a29aa3d078              # double 0.53340273097138802
	.quad	0x3fc64124a8661df0              # double 0.17386301252939473
	.quad	0x3fd1bf9aa2a683ca              # double 0.27731958278496605
	.quad	0x3fecf27608f3c2bd              # double 0.90459729908442166
	.quad	0x3fe4d61138620e38              # double 0.65113125812826578
	.quad	0x3f9ecd1a65e1ab20              # double 0.030079281299928984
	.quad	0x3fe4b17c0c36851f              # double 0.64666559586854422
	.quad	0x3fe47e5499f97f78              # double 0.64042120049633322
	.quad	0x3fe2718e1e5d416c              # double 0.57636171274684278
	.quad	0x3fb97d7c5d1492d0              # double 0.099571011280725985
	.quad	0x3fd6a78e3fa4dd8a              # double 0.35397678580508141
	.quad	0x3fea7d9f112a8a2d              # double 0.82783463814513925
	.quad	0x3fdbd6507a6c6668              # double 0.43495571093953922
	.quad	0x3fd834a1e928382c              # double 0.37821243066071264
	.quad	0x3fe1320908c49836              # double 0.53735782349099881
	.quad	0x3fe4fa0eab5a36cd              # double 0.65552457301392908
	.quad	0x3fab1633f0f19e70              # double 0.052903769647682064
	.quad	0x3fd0f5fb97e9865e              # double 0.26501359782387179
	.quad	0x3fe3492a25537ee0              # double 0.60268122949852554
	.quad	0x3fc00fa37d990e20              # double 0.12547725327213843
	.quad	0x3fd2bc291a8504c0              # double 0.29273440923504879
	.quad	0x3feaf929ce8b3f8a              # double 0.84291544285405107
	.quad	0x3fb8c6b12d7e5e18              # double 0.096781800848809829
	.quad	0x3fd7f01adb46c288              # double 0.37402984060012345
	.quad	0x3f91038227c02740              # double 0.016614946056541458
	.quad	0x3fc7f377d160ce40              # double 0.18711755488912907
	.quad	0x3fe6a2a8f45432e0              # double 0.70735595436562093
	.quad	0x3fe1e3566f82bac3              # double 0.55900117663789961
	.quad	0x3fc26348f5100fbc              # double 0.14365493741945368
	.quad	0x3fe9fec86650f2e0              # double 0.81235141738542537
	.quad	0x3fecc74b4a3f5fd1              # double 0.89932789327121487
	.quad	0x3fe0daafaff6253e              # double 0.52669510238153072
	.quad	0x3fe36a3aeac908b7              # double 0.60671754700185587
	.quad	0x3fe58cc4b55f8749              # double 0.67343364166684083
	.quad	0x3febd03c45ed7078              # double 0.86916936547960599
	.quad	0x3fe8cc67e24ee359              # double 0.77495187950908495
	.quad	0x3fcf31ac4b866a00              # double 0.24370340049502204
	.quad	0x3fd666c2e43098c6              # double 0.35002205166018674
	.quad	0x3fd8e3281bb4ee78              # double 0.38886454301584861
	.quad	0x3fc8adf6e9117fa8              # double 0.19280897503176431
	.quad	0x3fe32f96d13a799a              # double 0.59955921997952832
	.quad	0x3fbe5be55e8f7198              # double 0.11858972128488288
	.quad	0x3fc4044b9beb4724              # double 0.15638108361468384
	.quad	0x3fdf09091d294272              # double 0.48492648933191795
	.quad	0x3feb0befe2174a42              # double 0.84520715864557183
	.quad	0x3fd90a310499e442              # double 0.39124703835802077
	.quad	0x3fbb2fdaeec16c30              # double 0.10619896248810856
	.quad	0x3fa9bf3d8fba01d0              # double 0.050287174029111648
	.quad	0x3fed3b5add66ce4a              # double 0.91349547617432703
	.quad	0x3feb8035efb8b6ad              # double 0.85940071888554359
	.quad	0x3fcc1139945b692c              # double 0.21927566284177524
	.quad	0x3fbb7fe0688aa810              # double 0.10741999199186147
	.quad	0x3feb5cead7dcaf91              # double 0.85509245071942719
	.quad	0x3f9f41181ab81fc0              # double 0.030521752005398417
	.quad	0x3fc565875ffeb138              # double 0.16716091334581917
	.quad	0x3fe95759ef2dfd54              # double 0.79191300120138885
	.quad	0x3fe12f40f08679df              # double 0.53701827027890292
	.quad	0x3fc9faa8ede104a0              # double 0.2029620324629251
	.quad	0x3fd2b08c786d68e0              # double 0.29202567825781323
	.quad	0x3fe1bde250fd13e0              # double 0.554429205113248
	.quad	0x3fcb91f6474a1e60              # double 0.21539190751012693
	.quad	0x3f902a094e8de3a0              # double 0.015785355968066406
	.quad	0x3fcf34f66ba2e68c              # double 0.24380378966980165
	.quad	0x3fd0838a8a40cbbe              # double 0.25802863599090731
	.quad	0x3fe5fe4744547816              # double 0.68728984208769606
	.quad	0x3fe3da6dd450d238              # double 0.62041369884406716
	.quad	0x3fdf17f5234a85da              # double 0.48583725401303257
	.quad	0x3fdd1b8c2d562072              # double 0.45480637004266733
	.quad	0x3fe579044b9408a9              # double 0.67102255593660687
	.quad	0x3fa0ae27a6df7730              # double 0.032578696365574422
	.quad	0x3fd4e6d69b6f8e7a              # double 0.32658925227426716
	.quad	0x3fe81eb416f6d3ee              # double 0.75374798283757882
	.quad	0x3fe2e315b0c7d886              # double 0.59022030379743806
	.quad	0x3fcd47a2e871b2fc              # double 0.22874866819201845
	.quad	0x3fa905507fa8b3b0              # double 0.048868671019909882
	.quad	0x3fec8e89155f9f1a              # double 0.89239935087695987
	.quad	0x3fd2dc9fc41ec2e8              # double 0.29471582558021092
	.quad	0x3fdd5aa0db647a98              # double 0.45865651536034013
	.quad	0x3fd0e31810b33802              # double 0.26386071806780376
	.quad	0x3fe203dddbe3cd05              # double 0.56297200152621996
	.quad	0x3feec87e213cad35              # double 0.96197420589070381
	.quad	0x3fed302bd3fec8a8              # double 0.91213027386972545
	.quad	0x3fee15daa682cebb              # double 0.94016773721383318
	.quad	0x3fc8733d6609820c              # double 0.19101684076578385
	.quad	0x3fd70ae69ac8db2a              # double 0.36004033199008012
	.quad	0x3fe96e61180edc0a              # double 0.79472403239094658
	.quad	0x3fd6fa250413b22a              # double 0.35901761434687052
	.quad	0x3f72daabc1170400              # double 0.0046030720854455254
	.quad	0x3fdefcb35362c908              # double 0.48417361395981162
	.quad	0x3fb654cf2c54fe98              # double 0.08723158676456888
	.quad	0x3fd0b291808a4c84              # double 0.26089894821888771
	.quad	0x3fed0e1ddc12e586              # double 0.90797322257201141
	.quad	0x3f95c24abdaac2e0              # double 0.021248977495534116
	.quad	0x3fef5b9067c84c42              # double 0.97992725629809052
	.quad	0x3fe52a979c9457fd              # double 0.66144924718787446
	.quad	0x3fd2b63222b2acb6              # double 0.29237035168143721
	.quad	0x3fea5412644fbb47              # double 0.82276267616348597
	.quad	0x3feb31491d38cc57              # double 0.84976630885501947
	.quad	0x3fd180e1eb584b86              # double 0.27349136336231827
	.quad	0x3fe9d7f2403e8b48              # double 0.80761063144414269
	.quad	0x3fd1f569a4953380              # double 0.2806038005117486
	.quad	0x3fe8d60cbae03511              # double 0.77612911700421894
	.quad	0x3fc626c8adc9d7d0              # double 0.17305859075321317
	.quad	0x3fef6a076dd2e545              # double 0.98169299554789601
	.quad	0x3fe5b20639109228              # double 0.67798148293929206
	.quad	0x3fdb2fc760064842              # double 0.42479118707081309
	.quad	0x3fe904c1a4b1b93b              # double 0.78183061758844674
	.quad	0x3fe6bd9d0a2a055c              # double 0.71064617142853193
	.quad	0x3fec93015b0b3666              # double 0.89294498235694841
	.quad	0x3fd153ab7178827a              # double 0.27073179322363894
	.quad	0x3fd36df7e92fe30a              # double 0.30358693859265939
	.quad	0x3fc8ceae3f9e5958              # double 0.19380739313482809
	.quad	0x3feac8962736d4a9              # double 0.83698566111583717
	.quad	0x3fed2bde6392d55c              # double 0.91160506675684471
	.quad	0x3f72c4b3e8036900              # double 0.0045821216192172276
	.quad	0x3fe07b3b12627b95              # double 0.51504281607400293
	.quad	0x3febaff08ea3e25f              # double 0.86522701129349489
	.quad	0x3fe367479b37f419              # double 0.60635738674284589
	.quad	0x3feca79fd070ed95              # double 0.89546194754750508
	.quad	0x3fd71a17a87734ce              # double 0.36096755458568175
	.quad	0x3fdfc8bc0b836ce8              # double 0.49662686466554229
	.quad	0x3fdf06d32c1edd60              # double 0.484791558348169
	.quad	0x3fee1f25352a05c1              # double 0.94130192168830018
	.quad	0x3fd1ecf498d38510              # double 0.28008761333883658
	.quad	0x3fdb4541584cfd2a              # double 0.42610200522536223
	.quad	0x3fc3fc4b393e91f4              # double 0.15613689704072409
	.quad	0x3fb77bbb8319a058              # double 0.09173175764738184
	.quad	0x3fe13f6e9ed9c099              # double 0.53899317765719268
	.quad	0x3fd236b02bd87398              # double 0.28458790094173869
	.quad	0x3fe7019534f87860              # double 0.71894321771447878
	.quad	0x3fe7fb362db34854              # double 0.74941548276752678
	.quad	0x3fef60f9d1c17211              # double 0.98058787315273054
	.quad	0x3fd67d1220f64350              # double 0.35138371676389557
	.quad	0x3fb42039b15bb9d0              # double 0.07861672000920028
	.quad	0x3f26db8399e23000              # double 1.74388708675699E-4
	.quad	0x3f9cd3cfc7e2e6e0              # double 0.028151747298330032
	.quad	0x3fc5a05af7b36354              # double 0.16895615668070241
	.quad	0x3febb01998965d90              # double 0.86524658014507061
	.quad	0x3fed5f58272b4f07              # double 0.91788871431569496
	.quad	0x3fe15e6556ae2eec              # double 0.54277293138281157
	.quad	0x3fec399247333d75              # double 0.8820277586582238
	.quad	0x3fe5641ec04d5e79              # double 0.66847169455554856
	.quad	0x3fe2ac8885495246              # double 0.58356119186880373
	.quad	0x3fe4a7e3d5875dd5              # double 0.64549438195075004
	.quad	0x3f9027034db12340              # double 0.015773822419109296
	.quad	0x3fc8ca54ce054fbc              # double 0.19367466029745894
	.quad	0x3fda47583fc08bce              # double 0.41060453630251181
	.quad	0x3fe98766433588ae              # double 0.79777825476437214
	.quad	0x3faa9d35a327e420              # double 0.051980663458330634
	.quad	0x3fe1224a0fed30e1              # double 0.53543570624017545
	.quad	0x3fe136648505b71c              # double 0.53788972836420923
	.quad	0x3fb32c2db05cc068              # double 0.074892859990315253
	.quad	0x3fc3cd8f978f946c              # double 0.15471072102005523
	.quad	0x3fcddb7545947e50              # double 0.2332598294969892
	.quad	0x3fd0af3ec62cceba              # double 0.2606961188605329
	.quad	0x3fe614ab03d4ba71              # double 0.69002295253979018
	.quad	0x3fad3e0fb723c660              # double 0.057114115816045752
	.quad	0x3fd5045ca43baae8              # double 0.32839122808824905
	.quad	0x3fef145f27820459              # double 0.97123677936918817
	.quad	0x3fb38d4aedb42b00              # double 0.076374705346250238
	.quad	0x3fe47ca0a92a9c3e              # double 0.64021332779237361
	.quad	0x3feee64ab0494cd0              # double 0.96561178618358134
	.quad	0x3fd1d1ff8e108c2a              # double 0.27844227670192601
	.quad	0x3fe6404e3317854f              # double 0.69534978846437834
	.quad	0x3fc7fdf8d0b62c70              # double 0.18743810835835317
	.quad	0x3fed0d398277dd49              # double 0.90786433679651524
	.quad	0x3fef0720d0e9578b              # double 0.96962014010453978
	.quad	0x3fdf39c332e8f80c              # double 0.48790054294283958
	.quad	0x3fe3225c9046210f              # double 0.59794452837471279
	.quad	0x3fe9a02d0ad8be06              # double 0.80080272787557827
	.quad	0x3fed5bda8a3de363              # double 0.91746260643331501
	.quad	0x3fa92fb665374d50              # double 0.049192142348739254
	.quad	0x3fe8e55dc2f594d5              # double 0.77799881055821152
	.quad	0x3fef74e4def854fe              # double 0.98301929043614655
	.quad	0x3fec92294409f765              # double 0.89284194268087147
	.quad	0x3fe1ff4f0ef673b1              # double 0.56241562769320386
	.quad	0x3fe027e10631d1f5              # double 0.50486804208645586
	.quad	0x3fe8847b175481c5              # double 0.76617197567616613
	.quad	0x3fe5090b85153f6a              # double 0.65735412590764253
	.quad	0x3fdc6625e435fcbe              # double 0.44373461996287833
	.quad	0x3fe5106725c1b4c2              # double 0.65825230955456271
	.quad	0x3fe2f6254a7a31dd              # double 0.59254707857467859
	.quad	0x3fe25610af58b7d6              # double 0.57300600287794157
	.quad	0x3fed34da99402917              # double 0.91270189220202524
	.quad	0x3fab4025587532b0              # double 0.053223769233772145
	.quad	0x3fea4c80fd63c9a9              # double 0.82183885088152409
	.quad	0x3fec38b24bcda03f              # double 0.88192095570867213
	.quad	0x3fe0883c37ba5f7b              # double 0.51663027653101723
	.quad	0x3fd5892a1f6768a2              # double 0.33649685923377082
	.quad	0x3fe15e5c6e16ae83              # double 0.54276868344955209
	.quad	0x3fac3a4608b68960              # double 0.055132092059710258
	.quad	0x3fdaf6d0cd1f1a92              # double 0.42131443053623585
	.quad	0x3fd7c22feb214522              # double 0.37122724496755855
	.quad	0x3fda5e3ddb55427a              # double 0.41200205249064192
	.quad	0x3f73d19e86068b00              # double 0.0048385803533246285
	.quad	0x3fdd01eb49aee7a4              # double 0.45324213214518694
	.quad	0x3fdfc4b9f7913ec0              # double 0.49638222862720838
	.quad	0x3fe7026f0bfeeedc              # double 0.71904709189353921
	.quad	0x3fc84681df32e46c              # double 0.18965171240214163
	.quad	0x3fdf79a06383e598              # double 0.49179849355967908
	.quad	0x3fdf2e0aed71c640              # double 0.48718522251065011
	.quad	0x3fc327a6df167f54              # double 0.14964757817232999
	.quad	0x3fad0075bc3c5630              # double 0.056644133785237805
	.quad	0x3fd85b83f0e3ae26              # double 0.3805856563983262
	.quad	0x3feeaf72df682052              # double 0.95891708025102163
	.quad	0x3fdafd453d427df2              # double 0.42170840246578145
	.quad	0x3fef3a0005b538a6              # double 0.97583008875678412
	.quad	0x3fe60a5ca535ea9d              # double 0.68876487987229817
	.quad	0x3fec20cb29e0dd0c              # double 0.87900312594766338
	.quad	0x3fea912c0652fe10              # double 0.83022118792718125
	.quad	0x3fdb302432b6b7e8              # double 0.42481331779970199
	.quad	0x3fd7a525c4684448              # double 0.36945480518722151
	.quad	0x3fe69ede5ffcef42              # double 0.70689314601575171
	.quad	0x3face653b8f11e70              # double 0.056444755865013074
	.quad	0x3fd7692db5b02c06              # double 0.36579458945260546
	.quad	0x3fddc62d53c48254              # double 0.46522076778822918
	.quad	0x3fef322bfb6f0707              # double 0.97487448795456621
	.quad	0x3fabee6c50fafaa0              # double 0.054553398976613154
	.quad	0x3fbc5fe4e4aef260              # double 0.11083822806444621
	.quad	0x3fccc3ce8cd04568              # double 0.22472555041944564
	.quad	0x3fcf032a52dc87a0              # double 0.24228409810990303
	.quad	0x3fe2b4c495ae587d              # double 0.58456639513566666
	.quad	0x3fe2654a9ed71504              # double 0.5748646833750688
	.quad	0x3fe5078365244f9c              # double 0.65716714624658179
	.quad	0x3fef00fbe2a0eaa2              # double 0.96887010825533459
	.quad	0x3fe235e904f67510              # double 0.56908083886415461
	.quad	0x3fe06ca8fa7c8ffc              # double 0.51326416896017646
	.quad	0x3fd6631d6d3b5df4              # double 0.34979949633768048
	.quad	0x3fd8f8682fef0d1c              # double 0.3901615589240508
	.quad	0x3fcda4c57e29dc4c              # double 0.23159092579200757
	.quad	0x3fea6615f4992772              # double 0.8249616410550813
	.quad	0x3feed4fce54cc275              # double 0.96349949631810594
	.quad	0x3f838d840e9cd380              # double 0.0095472638091480543
	.quad	0x3fcef7e8ba6bf9f0              # double 0.241940585161458
	.quad	0x3fe178ea984b3239              # double 0.54601030106420645
	.quad	0x3fd2a6e84445659c              # double 0.29143721263025113
	.quad	0x3fec7de3dbdedae1              # double 0.89036744063818329
	.quad	0x3fcb7846e5061050              # double 0.21460806067273319
	.quad	0x3fead7f8a178d3b4              # double 0.83886367356773527
	.quad	0x3fc8d3366ca2b3c4              # double 0.19394569687338337
	.quad	0x3fcd3ba8d0584af0              # double 0.22838316128817082
	.quad	0x3fe9302fc097b685              # double 0.78713214507816132
	.quad	0x3fd4d70f0ed6a096              # double 0.3256261486917621
	.quad	0x3fe1148c6fa423ba              # double 0.53375837140003246
	.quad	0x3fe405a6247730bf              # double 0.62568957445321149
	.quad	0x3fe9aa5e166362fb              # double 0.80204681751919737
	.quad	0x3fead21a0d04f4c1              # double 0.83814718764156038
	.quad	0x3fea0b2f0d7fc577              # double 0.81386520992798139
	.quad	0x3fef54229cc34832              # double 0.97902041070688584
	.quad	0x3fc3034adcf8b57c              # double 0.14853797711968386
	.quad	0x3feea057eaf69d1d              # double 0.95707317248607959
	.quad	0x3fecd13288be99ad              # double 0.90053679187695013
	.quad	0x3fd9689ae11cfc92              # double 0.39700958236421358
	.quad	0x3fe8601abaa16e3b              # double 0.76173149539267315
	.quad	0x3fe56292fe184a9a              # double 0.66828298213870885
	.quad	0x3fd8225593235d1c              # double 0.37709559792479452
	.quad	0x3fdb85b3045f5e8a              # double 0.43003535677915095
	.quad	0x3fd631cbd3125f40              # double 0.34678931820370806
	.quad	0x3fefef4fa6581c2f              # double 0.99796278466317811
	.quad	0x3fa6b996ec1d9dd0              # double 0.04438468582412336
	.quad	0x3fe5ea23dce7d84b              # double 0.68483155389436356
	.quad	0x3fd25aee258b2740              # double 0.28679994264949826
	.quad	0x3fd496e456551f3a              # double 0.32170971327694853
	.quad	0x3fec3aa7b7a33f40              # double 0.882160051982261
	.quad	0x3fe2839897c1a67f              # double 0.57856397285395633
	.quad	0x3fe182c31dd3f05e              # double 0.54721217942961764
	.quad	0x3fd67c5e728f81d8              # double 0.35134087741428521
	.quad	0x3fdc7916290331a2              # double 0.44489053731083505
	.quad	0x3fe69da874dc2dbc              # double 0.70674536537392596
	.quad	0x3fdc082fcb487d86              # double 0.43799967624541869
	.quad	0x3fd742a9e1d01920              # double 0.36344382335700409
	.quad	0x3fe5c6e7fcbd2715              # double 0.6805305420213893
	.quad	0x3fcd4760844327a4              # double 0.22874075372811575
	.quad	0x3feb0dd616af414b              # double 0.84543899946769707
	.quad	0x3fdfd050858e5f5e              # double 0.49708951037017879
	.quad	0x3fc70630042b3308              # double 0.17987632945587273
	.quad	0x3fee766916171625              # double 0.95195440592278102
	.quad	0x3fbcc91eba6ee338              # double 0.11244384814825714
	.quad	0x3feb9799d11e6452              # double 0.86225596278667127
	.quad	0x3fe77f65689a9c2e              # double 0.7343012850805104
	.quad	0x3fee0f64e00ceb48              # double 0.93937915572983232
	.quad	0x3febe0fdf4ab7b77              # double 0.87121484553413964
	.quad	0x3fe181ac8eeb472f              # double 0.54707935251119533
	.quad	0x3fe4d928ad33c177              # double 0.65150865391301138
	.quad	0x3fcde61241d26dd4              # double 0.23358371938671374
	.quad	0x3fc412ac9cc524e4              # double 0.15681989340581659
	.quad	0x3fb3d5fede5ffd28              # double 0.077484063425789729
	.quad	0x3fd461806cf8b9f2              # double 0.31845102922207424
	.quad	0x3fe3921c1d90ac64              # double 0.61158567213477655
	.quad	0x3fe47b047901308b              # double 0.6400167811748515
	.quad	0x3fa6e167e018f960              # double 0.044688459497126187
	.quad	0x3fd1508d604fa004              # double 0.27054151921629477
	.quad	0x3fd24611e973ab7a              # double 0.285526731472309
	.quad	0x3feb826653c84401              # double 0.85966793407180842
	.quad	0x3fe6e38a057901f5              # double 0.71527577465900427
	.quad	0x3fe19252f750d4f5              # double 0.54911182693345373
	.quad	0x3fc20803e963791c              # double 0.14086960693288908
	.quad	0x3fd70656cc6891d0              # double 0.35976190530552987
	.quad	0x3fc5edb15b771d80              # double 0.17131630865172198
	.quad	0x3fb49f90b989eb68              # double 0.080559773728891337
	.quad	0x3fe877d0585aef12              # double 0.76462571389081035
	.quad	0x3fd16bfb614c02e2              # double 0.27221569539692159
	.quad	0x3fed8e277f2a7ee7              # double 0.92360281788930088
	.quad	0x3fefd4a7496bf549              # double 0.9947086748140147
	.quad	0x3fefc046826f82b1              # double 0.99222112155628938
	.quad	0x3fb097ef6573b530              # double 0.064818346279669425
	.quad	0x3fd5b5c6f66ee418              # double 0.33921979966868454
	.quad	0x3fdb19c22068c7d0              # double 0.42344716229410739
	.quad	0x3fc1287b6c981c10              # double 0.13404791643571956
	.quad	0x3fdb8e010fbfb4f4              # double 0.43054224527334317
	.quad	0x3fe00868f0ce534a              # double 0.50102660210050343
	.quad	0x3fd9d519592d7402              # double 0.4036315317987943
	.quad	0x3fe03873a137f114              # double 0.50689107406609191
	.quad	0x3fea933316cc61a1              # double 0.83046869709783178
	.quad	0x3fd151b6373aee84              # double 0.27061229127478037
	.quad	0x3fcc935715dbd638              # double 0.22324646537133375
	.quad	0x3fe7e974df69af78              # double 0.74724811206168251
	.quad	0x3fe3be5148ae6b46              # double 0.61698211856433072
	.quad	0x3fe4846b145196d2              # double 0.64116434067246986
	.quad	0x3fc2508e1a54e3d8              # double 0.14308334623072372
	.quad	0x3fee3b2595d7dda1              # double 0.94472007051711071
	.quad	0x3fe3f68232c1527d              # double 0.62384138024442815
	.quad	0x3fe119310e261fe7              # double 0.53432514918767715
	.quad	0x3fe696c90d9ec70a              # double 0.7059064165134441
	.quad	0x3fc59bdc10b33894              # double 0.16881895842965788
	.quad	0x3fcf7971010b3338              # double 0.24589359808887834
	.quad	0x3fec306fd3d5ab02              # double 0.88091269849732634
	.quad	0x3fb4c39e8eca1c08              # double 0.081109914646830927
	.quad	0x3fe6071c2924b121              # double 0.68836792026334959
	.quad	0x3fa4a24b32e76020              # double 0.040300703014225059
	.quad	0x3fc8e5cc3d35f9bc              # double 0.19451287258921279
	.quad	0x3fa120e6ae0ea8e0              # double 0.033454140422081613
	.quad	0x3fdca48568a4f4f2              # double 0.44754157275367767
	.quad	0x3fe372b556325109              # double 0.60775248370421864
	.quad	0x3fd5a2c678f7de6a              # double 0.33806001485161252
	.quad	0x3fe885f590462656              # double 0.76635244539756786
	.quad	0x3fc6811a73f677c8              # double 0.17581492101902385
	.quad	0x3fb5ce31247d4c20              # double 0.085177489670329454
	.quad	0x3fe7a82ed30b9861              # double 0.73928014011177023
	.quad	0x3fea6a017e6e1473              # double 0.82544016545638355
	.quad	0x3fbbedc54d526eb0              # double 0.10909684312576462
	.quad	0x3fe6f88da8c10347              # double 0.71784098586804468
	.quad	0x3fd373823af49eec              # double 0.30392509229066778
	.quad	0x3fc0f15681c1af48              # double 0.13236504874964283
	.quad	0x3fe01eb01b77e059              # double 0.50374608387847808
	.quad	0x3fe1b8a485388424              # double 0.55378938693695945
	.quad	0x3fe78959fc78f57c              # double 0.73551654158624968
	.quad	0x3fb9f131f1b72d60              # double 0.10133659507044035
	.quad	0x3fc2c99801dec420              # double 0.14677715388600721
	.quad	0x3fd4bf241c61f3e2              # double 0.32416632434597947
	.quad	0x3fa358c495f40010              # double 0.037786620430779405
	.quad	0x3fe2ad3c40b759d8              # double 0.58364689483533549
	.quad	0x3fd078a45f7034fa              # double 0.25736340828082371
	.quad	0x3fda831124480ad8              # double 0.41424969237429599
	.quad	0x3fe906e665bd2b0f              # double 0.78209228392492658
	.quad	0x3fcbf117adde1fb0              # double 0.21829505910522817
	.quad	0x3fe8c4d982cd664b              # double 0.77402949855167813
	.quad	0x3f8a5afe83930e80              # double 0.012868870153744938
	.quad	0x3fce035e2983d834              # double 0.23447777773952938
	.quad	0x3fd2a0a69c232a16              # double 0.29105534789837983
	.quad	0x3fd2a8850d8b7c82              # double 0.29153562853566239
	.quad	0x3fc9774bc65fd904              # double 0.19895312486887218
	.quad	0x3fd96107504db580              # double 0.39654715387481332
	.quad	0x3fd9929132a78032              # double 0.39957075068196268
	.quad	0x3fecd61ba9753391              # double 0.90113623711805435
	.quad	0x3fdccb9545029fe4              # double 0.44992572535784192
	.quad	0x3fe974845eec50d2              # double 0.79547327556294989
	.quad	0x3fefa12bbbca5c5d              # double 0.9884241740973142
	.quad	0x3fe8fe22a7878986              # double 0.78102238388628176
	.quad	0x3fec419b2e10a18b              # double 0.883008565874705
	.quad	0x3fd999c757ee0732              # double 0.40001090609449641
	.quad	0x3fcb35837ac9939c              # double 0.2125706052348989
	.quad	0x3feacfb0c287f7d1              # double 0.83785284036980034
	.quad	0x3fec41d2cdba3d7f              # double 0.88303508931305419
	.quad	0x3fe0377eedd34a1a              # double 0.50677439165366711
	.quad	0x3fafadb21ac6b9f0              # double 0.061872068184459894
	.quad	0x3fd8038972411fb2              # double 0.37521587522177946
	.quad	0x3fd179b5e9313dcc              # double 0.27305362484636642
	.quad	0x3fdeae210cec3a30              # double 0.47937799703587114
	.quad	0x3fd7db31e59dcdda              # double 0.37275359557608356
	.quad	0x3fdf9ea0173dabaa              # double 0.49405672330493167
	.quad	0x3feba481579d2486              # double 0.86383120643689959
	.quad	0x3fcd0a2dc94476b4              # double 0.22687313392173325
	.quad	0x3fcee26f7e0760c0              # double 0.24128526357413271
	.quad	0x3fe793375137df7f              # double 0.73672071326198807
	.quad	0x3fb19d941a2fb9c0              # double 0.06881070746724216
	.quad	0x3fca8ad906bbf3d0              # double 0.20736229733293365
	.quad	0x3fea88a40ca11cd1              # double 0.82917978731793529
	.quad	0x3fe753eff5047ce3              # double 0.72899625639902543
	.quad	0x3fec0753196c0558              # double 0.87589411702371489
	.quad	0x3fc3852fd9b0c6a8              # double 0.15250204209728691
	.quad	0x3fe6eac2f83307a0              # double 0.71615742184097897
	.quad	0x3fe49555e5302ef2              # double 0.64322943461726667
	.quad	0x3fd9f5d01fa459be              # double 0.40562823381460678
	.quad	0x3fad5605952472e0              # double 0.057296919303757354
	.quad	0x3fe6ece56ed59081              # double 0.71641799590408095
	.quad	0x3fe5b0264388d0f7              # double 0.67775262060470609
	.quad	0x3fefc5032992befc              # double 0.99279935951014364
	.quad	0x3fea2f6a0301a9ff              # double 0.81828785502631252
	.quad	0x3fee15162291ac9d              # double 0.94007403136983536
	.quad	0x3fd73617b7bb858c              # double 0.36267655317905034
	.quad	0x3fdefab34152ae70              # double 0.4840515268249197
	.quad	0x3fe4b3fa61d98ad3              # double 0.64696997748645868
	.quad	0x3fe14db4b8936227              # double 0.54073558855003945
	.quad	0x3fd338d4cf750fa6              # double 0.30034370669840837
	.quad	0x3fe8752e1a9c93ad              # double 0.76430421063979781
	.quad	0x3fe3e02897f5216b              # double 0.62111310652930507
	.quad	0x3febd189f77e3aa4              # double 0.86932848299496301
	.quad	0x3fc8ab32eecf590c              # double 0.19272457752840244
	.quad	0x3fd04b9cc637cfe6              # double 0.25461501462200287
	.quad	0x3fcd7e959c3c7e54              # double 0.23042554978109087
	.quad	0x3fe4c2601ded1747              # double 0.64872747273396036
	.quad	0x3fef927c39a64ee5              # double 0.98663150081344197
	.quad	0x3fcf6009c3635978              # double 0.24511835136827265
	.quad	0x3fe20f12af9af17a              # double 0.56433996484660942
	.quad	0x3fe643828e4037d6              # double 0.69574096473092584
	.quad	0x3fe95673008e75ce              # double 0.79180288418472755
	.quad	0x3fe78b01cedb2d45              # double 0.7357186355742803
	.quad	0x3fdd5fb30ebc5926              # double 0.45896603049313212
	.quad	0x3fe0748e17a5f200              # double 0.51422791117471434
	.quad	0x3fda16b19bd64518              # double 0.40763511866050939
	.quad	0x3fc397174b582f44              # double 0.15304843119553813
	.quad	0x3fe2ecbd5275a597              # double 0.59139886956579601
	.quad	0x3fd532719d53e91a              # double 0.3312038456348475
	.quad	0x3fc9ac193c2878c0              # double 0.20056453168303356
	.quad	0x3fd33ec211caf77e              # double 0.30070544946271827
	.quad	0x3fce9602ad54279c              # double 0.23895295584980836
	.quad	0x3fef0d16c6bf3e9e              # double 0.97034777467520761
	.quad	0x3fd559fd83830c8c              # double 0.3336175712867735
	.quad	0x3fde651978f07a6c              # double 0.47492062387929113
	.quad	0x3fe0d5ed3406e711              # double 0.52611408387676495
	.quad	0x3fe1380ba50afa6b              # double 0.53809149012506674
	.quad	0x3fe4759885037c54              # double 0.63935495356771321
	.quad	0x3fc436e632a91f48              # double 0.15792539094604252
	.quad	0x3fe2997fb777f682              # double 0.58123765786849924
	.quad	0x3fe9b7c0590f6fb7              # double 0.80368058580960777
	.quad	0x3fecb48ebbfe0a96              # double 0.89704071728950185
	.quad	0x3fd01b87f9912ba2              # double 0.25168036815437678
	.quad	0x3fee157f2c54a65e              # double 0.94012411745388724
	.quad	0x3feb8c75b651bcae              # double 0.86089597329364209
	.quad	0x3fd5f157b0325324              # double 0.34285537916848541
	.quad	0x3fd76da82692a636              # double 0.3660679222763038
	.quad	0x3fea6112899cbb49              # double 0.82434965970410545
	.quad	0x3fdb673c09c642e4              # double 0.42817593531166964
	.quad	0x3fe359e07288e27e              # double 0.60472128267345204
	.quad	0x3fe664cafbb2f817              # double 0.69980382118206108
	.quad	0x3fedc94719fbe459              # double 0.93082003664961654
	.quad	0x3f9c2668a0e3ff80              # double 0.02749026758192441
	.quad	0x3fd7f7a93bd93338              # double 0.37449103207181933
	.quad	0x3fe6b0affe8a80bc              # double 0.70906829562229445
	.quad	0x3f72c0aef3febd00              # double 0.0045782884698575277
	.quad	0x3fe9dc59ec852b84              # double 0.80814834781027444
	.quad	0x3fec6276e6d022f3              # double 0.88701958733244479
	.quad	0x3fe2949a432f5122              # double 0.58063996431386422
	.quad	0x3fe169d25752feca              # double 0.5441676812697207
	.quad	0x3feab65de26875e0              # double 0.83476156444856641
	.quad	0x3fe2d47dda21b225              # double 0.5884389171965877
	.quad	0x3fe57f6626175f83              # double 0.67180163802821402
	.quad	0x3fab91a3bde7c3e0              # double 0.053845517093470852
	.quad	0x3fd7ac780125488e              # double 0.36990165817145104
	.quad	0x3fc25fe2d382bf90              # double 0.14355120971367485
	.quad	0x3fc99733714085fc              # double 0.19992678670773489
	.quad	0x3fd41ff1e82ff8e2              # double 0.31444976496267263
	.quad	0x3fdbbf0b0a24677c              # double 0.4335353468937837
	.quad	0x3fe18b2fe29a05d7              # double 0.54824060686240272
	.quad	0x3fec133900d4f582              # double 0.87734651720499834
	.quad	0x3fd4fe90cea4416c              # double 0.32803745441289922
	.quad	0x3fe43f3782e1dd00              # double 0.63271689951844223
	.quad	0x3fece694f024448b              # double 0.90314719107313246
	.quad	0x3faac0c00c4209f0              # double 0.052251817222913277
	.quad	0x3fe061c6957e0f2e              # double 0.51193551252115355
	.quad	0x3fee33a3e7026d61              # double 0.94380374068297723
	.quad	0x3fd7af172cc0d2dc              # double 0.37006167765075104
	.quad	0x3fef4ec2a28965c4              # double 0.97836429353190412
	.quad	0x3feb553f9293bc33              # double 0.8541562903245733
	.quad	0x3fc0d1f210c051e8              # double 0.13140703027660483
	.quad	0x3fdc60ac7d1ce2f2              # double 0.44340049951601579
	.quad	0x3fd39248a20e9a6a              # double 0.30580344987757846
	.quad	0x3fe7fb79f99a8290              # double 0.74944781065649302
	.quad	0x3fea6f0ee8d1ce62              # double 0.82605691406793036
	.quad	0x3fc41347b6a8eb0c              # double 0.15683838290154772
	.quad	0x3fbdf0226358d7b8              # double 0.11694540906395801
	.quad	0x3fe6b5779238bbfe              # double 0.70965174254331465
	.quad	0x3fc5ca80713f7eac              # double 0.17024236230553436
	.quad	0x3fe9bfd36c3c9a83              # double 0.80466624393450592
	.quad	0x3fe14a0839928a98              # double 0.54028712505926801
	.quad	0x3fe35b09e2bb3c73              # double 0.6048631122920497
	.quad	0x3fdf3ee0ba25f352              # double 0.48821275881328063
	.quad	0x3feff7527afe3e65              # double 0.99894069692704745
	.quad	0x3fd4e4f0b1db190e              # double 0.32647340172515349
	.quad	0x3fea63cda6f7ec97              # double 0.82468302355791223
	.quad	0x3fec5a0977dade68              # double 0.88599084290667651
	.quad	0x3fea2386c78b1c1a              # double 0.81683672879524072
	.quad	0x3fac02b10f395970              # double 0.054708035572434421
	.quad	0x3fe4638f2f95e57f              # double 0.63715323728608542
	.quad	0x3fecdfab09e08b9c              # double 0.90230323723914152
	.quad	0x3fe67524fa8baa73              # double 0.70179985937768519
	.quad	0x3fd235006aa2e2c4              # double 0.28448496259401801
	.quad	0x3feeba2f04f5de9f              # double 0.96022749871095303
	.quad	0x3fd5b3937c869240              # double 0.33908545647344468
	.quad	0x3fe531f9d758eb10              # double 0.66235057888056481
	.quad	0x3fd93756930faeee              # double 0.39400257455302679
	.quad	0x3fea06d7d15baaf3              # double 0.81333533182382067
	.quad	0x3fc54201ff372f24              # double 0.16607689820954719
	.quad	0x3fa44cc81484b820              # double 0.039648296837512698
	.quad	0x3fdb1add83444c6e              # double 0.42351472682020741
	.quad	0x3fe2aa4f1f55d2f3              # double 0.58328968162694961
	.quad	0x3feb86e33dbe011b              # double 0.86021577891372958
	.quad	0x3fd62571ee73c3d0              # double 0.34603546415661146
	.quad	0x3fe2c4fb1d13c7ae              # double 0.58654552153733674
	.quad	0x3fcd77759ca1547c              # double 0.23020811222037085
	.quad	0x3fc05b5e5f04247c              # double 0.12778834952795026
	.quad	0x3fe765eb218c1c7e              # double 0.73119122078141152
	.quad	0x3fe01d2f79ef2cc9              # double 0.50356267752922534
	.quad	0x3fe43d7bfba3a21c              # double 0.63250540874747996
	.quad	0x3fc0f0d08cf2ba50              # double 0.13234907991632605
	.quad	0x3fed1d0fccab702d              # double 0.90979757284686047
	.quad	0x3fe27815689c211f              # double 0.57715864593140853
	.quad	0x3fc11e0b5f93b53c              # double 0.13372938315243654
	.quad	0x3fc375246edd5dd0              # double 0.15201239980045367
	.quad	0x3fe1026e3b1f7699              # double 0.53154670283739158
	.quad	0x3fe09f5aca56de81              # double 0.51945247191811472
	.quad	0x3fd8b1cdb9c32922              # double 0.38585227146963252
	.quad	0x3fe00871877874b2              # double 0.50103069743240369
	.quad	0x3fe1b6ae97dab257              # double 0.55355004939117236
	.quad	0x3fd49b1abf582fc0              # double 0.3219668263052391
	.quad	0x3fc616fd623d5918              # double 0.17257659241540391
	.quad	0x3fc9e124fbc0e92c              # double 0.20218336384443469
	.quad	0x3fc3bcf810072d70              # double 0.15420437605494497
	.quad	0x3fe1111dc7d0747d              # double 0.53333939577318257
	.quad	0x3fed709396cef1a4              # double 0.91999225096474335
	.quad	0x3fc838893a038490              # double 0.189225343062422
	.quad	0x3fe3d4315ace48a6              # double 0.61965244040972745
	.quad	0x3fe21a85ae1e70f0              # double 0.56573757178878559
	.quad	0x3fec0e046687eeb8              # double 0.87671108270247711
	.quad	0x3feb0fb623426d39              # double 0.84566790472619069
	.quad	0x3fecaff87cc54ab7              # double 0.89648079270622005
	.quad	0x3fee87e2a77aaf6d              # double 0.95408756933964656
	.quad	0x3fcc0fcbfbe86a44              # double 0.21923208046139753
	.quad	0x3fc6c85449bfee0c              # double 0.17798856354771464
	.quad	0x3fe43e376f28ca91              # double 0.63259479246910832
	.quad	0x3fe11cec9357178f              # double 0.53478077676185076
	.quad	0x3fd05844ca324d1a              # double 0.2553874945235336
	.quad	0x3fe031295788a1f7              # double 0.50600115868024786
	.quad	0x3fd560af336253f6              # double 0.33402614610650916
	.quad	0x3fdd3aaf58b82c56              # double 0.45670684494024749
	.quad	0x3fceb853731ac5f8              # double 0.24000018234578113
	.quad	0x3fd6a0fb29df034c              # double 0.35357550705889618
	.quad	0x3fda9a1cdda3acae              # double 0.41565629620044831
	.quad	0x3fd89e7d57e70b9c              # double 0.38467343887548977
	.quad	0x3fc3a81f2ac8be8c              # double 0.15356816853590194
	.quad	0x3fdc434bbbbe265c              # double 0.44160741171126516
	.quad	0x3fb19cf46cd423a8              # double 0.068801189965724263
	.quad	0x3fb9b6d1d85970f0              # double 0.10044585735289835
	.quad	0x3fcd3a22a22f0cbc              # double 0.22833664816980626
	.quad	0x3feac9699e9031b5              # double 0.83708649606119556
	.quad	0x3fe325a18f28ccd0              # double 0.59834363900008647
	.quad	0x3fefbd678fb57731              # double 0.99187067096838721
	.quad	0x3fd228ce035ed17a              # double 0.28374052361620949
	.quad	0x3fe7fae8a35d2649              # double 0.74937850863461464
	.quad	0x3fd8084e209fefe6              # double 0.3755069082833401
	.quad	0x3fd0d76e00d9c00a              # double 0.26314878542962161
	.quad	0x3fcf9b75e30def54              # double 0.24693177782671205
	.quad	0x3fdea28827ba28b2              # double 0.4786701572380806
	.quad	0x3fdeaaaecd6ca08c              # double 0.47916765271157469
	.quad	0x3fe98f98239095d0              # double 0.79877860018012292
	.quad	0x3fea7d14e401a261              # double 0.82776875050064913
	.quad	0x3fe13d8f056b7635              # double 0.5387644868712359
	.quad	0x3fc7618e78b56390              # double 0.1826646890065402
	.quad	0x3fd20fd87da5f7f8              # double 0.28221714277594812
	.quad	0x3fe8ff8799681c85              # double 0.78119258844607542
	.quad	0x3fe1df2c5577db0c              # double 0.55849281971936326
	.quad	0x3fe2811cba1d239f              # double 0.57826076841694263
	.quad	0x3fdd8f9481381bb4              # double 0.46188843363818965
	.quad	0x3fe65dcda155cde2              # double 0.69895059119010861
	.quad	0x3feacaed493e8c21              # double 0.83727134995968211
	.quad	0x3feb9ad1df6d0582              # double 0.86264890325416865
	.quad	0x3fd0c684f10aeafa              # double 0.26211665667840089
	.quad	0x3fe81e9bdd181fdd              # double 0.75373643095462806
	.quad	0x3fe1e077a4b1c479              # double 0.55865080038905923
	.quad	0x3fca3f2293780818              # double 0.2050517292082652
	.quad	0x3fc5d2369e0b21f4              # double 0.17047770230261927
	.quad	0x3fd268a1e349e0f4              # double 0.28763625332022902
	.quad	0x3fc8fd6638104ce4              # double 0.19523313271984144
	.quad	0x3fe90294f774c9fd              # double 0.78156517344751786
	.quad	0x3fe38d8ecb60ae1a              # double 0.61103000375937033
	.quad	0x3fd26f056402bada              # double 0.28802618757883425
	.quad	0x3fe9511f60cfb1a3              # double 0.79115265758951059
	.quad	0x3fe054a428cd9f70              # double 0.51033218354585408
	.quad	0x3fc3fb9dbf293804              # double 0.15611621698411693
	.quad	0x3fed029354c4274a              # double 0.90656439357665275
	.quad	0x3fd581316db9280e              # double 0.3360103198543819
	.quad	0x3fc6f4e5b1b96648              # double 0.17934867074909477
	.quad	0x3fee2ec853a6fac2              # double 0.94321075762112394
	.quad	0x3fda413298c53428              # double 0.41022934836365943
	.quad	0x3febc9c86b0b0165              # double 0.86838169962724676
	.quad	0x3fb0179d61dbfd10              # double 0.062860332862318069
	.quad	0x3fe2a1b58b398dac              # double 0.58223988716456665
	.quad	0x3fd23608bb25868e              # double 0.28454798007997162
	.quad	0x3fe3924ebffb1580              # double 0.61160981651543977
	.quad	0x3fe3abf2a7867c60              # double 0.61473973007003835
	.quad	0x3fecf4addef3d519              # double 0.90486806435970657
	.quad	0x3fdc6e774270609e              # double 0.44424230087452965
	.quad	0x3fee3d057180a30d              # double 0.94494888466314964
	.quad	0x3fdfbb269a27928c              # double 0.49579777769239608
	.quad	0x3fe4e8fb16a2c1ba              # double 0.65344004078911344
	.quad	0x3fc08ff1f10c4010              # double 0.12939285535731004
	.quad	0x3fe485c1c0b4b9b6              # double 0.64132774007685245
	.quad	0x3fdb32aded1ba192              # double 0.42496822505065623
	.quad	0x3fb27484d3630fa8              # double 0.07209043656172176
	.quad	0x3fca68e557653840              # double 0.20632616774895673
	.quad	0x3fd2cb83b4ff7198              # double 0.2936715381199746
	.quad	0x3fe783bb44de6e4f              # double 0.73483050776435188
	.quad	0x3feae06e7da532dd              # double 0.83989643612002463
	.quad	0x3fba8e4b43452d68              # double 0.10373373405780273
	.quad	0x3fea7c4c509c385e              # double 0.82767310852228682
	.quad	0x3fd967c007455a10              # double 0.39695740423249593
	.quad	0x3fe092ade0110036              # double 0.51790517580957984
	.quad	0x3fc3c64e8bde0ab8              # double 0.15448934392414571
	.quad	0x3fe32c571e01305a              # double 0.59916263447076834
	.quad	0x3fe7a15f6c604138              # double 0.73844882170855097
	.quad	0x3fecb9c914727bd5              # double 0.8976788901671805
	.quad	0x3feea2daf60de47c              # double 0.95737979943727635
	.quad	0x3fee5a9d48ddbe79              # double 0.94856132728268883
	.quad	0x3fc0d1b3774e91e4              # double 0.13139956784756557
	.quad	0x3feaaf1313a96db1              # double 0.83387140121651815
	.quad	0x3fdcf7acaf28aef8              # double 0.45261685471881163
	.quad	0x3fed94e9b23f9163              # double 0.92442784132121536
	.quad	0x3fb946466dae0b80              # double 0.098728563096342369
	.quad	0x3fd9c067d4ba0480              # double 0.40236850523076129
	.quad	0x3fd32eabaeeabc3e              # double 0.29972354966861647
	.quad	0x3f9a460796132ce0              # double 0.025657766852231201
	.quad	0x3fd561d7e485dcba              # double 0.33409688297929174
	.quad	0x3fde820b26c28d26              # double 0.47668722901490168
	.quad	0x3fec5aa56d47f9d0              # double 0.88606520980811787
	.quad	0x3fc2e5f6d5a5e09c              # double 0.14764295036343789
	.quad	0x3fe14df4839eb6b9              # double 0.54076600749041071
	.quad	0x3fd559c93a681850              # double 0.33360510543605404
	.quad	0x3fe8e1a864f23bd7              # double 0.77754611698207554
	.quad	0x3fb9f413b14378b0              # double 0.10138056829188957
	.quad	0x3fc4c3b5609beb00              # double 0.16222254960288041
	.quad	0x3fd73b1bff61496c              # double 0.3629827493615696
	.quad	0x3fe57632deea721a              # double 0.67067855394595033
	.quad	0x3feb7a465fd95ffc              # double 0.85867613525897423
	.quad	0x3feac80895340c2d              # double 0.83691815511008871
	.quad	0x3fedfd98ce0ed729              # double 0.93720665212342624
	.quad	0x3fbfb606304230f0              # double 0.12387121847331506
	.quad	0x3fd264dbae623ade              # double 0.2874058917013097
	.quad	0x3fbe854d80487588              # double 0.11922153837118377
	.quad	0x3fe63b8753f5bf25              # double 0.69476667784144708
	.quad	0x3fe2d8d0b49251de              # double 0.58896670596964973
	.quad	0x3fe34f4fc4178041              # double 0.60343159007243952
	.quad	0x3feec80d917a5526              # double 0.96192053235669017
	.quad	0x3fe82966b96dd8e3              # double 0.755053865591233
	.quad	0x3fcaec2fed664a94              # double 0.21033286182190081
	.quad	0x3fe9f3e429ff2411              # double 0.81102188303441569
	.quad	0x3fdb5acb7205ebec              # double 0.42741666922637367
	.quad	0x3feae17b9b8fb4a6              # double 0.84002476103855339
	.quad	0x3fd99ffc43472da0              # double 0.40038973398324096
	.quad	0x3fee231bd7cea606              # double 0.94178573751304451
	.quad	0x3fe20a44a30c8934              # double 0.56375343175412818
	.quad	0x3f95c4d7a5b659c0              # double 0.021258706559444951
	.quad	0x3fcc7468d7d2a94c              # double 0.22230253732898075
	.quad	0x3fd3a74d2f80e97a              # double 0.30708627356548102
	.quad	0x3fdc339a5f4e57b0              # double 0.44064959819058469
	.quad	0x3fcf4276caec5e38              # double 0.24421582134594799
	.quad	0x3fe5a6b651cde418              # double 0.67660060861010418
	.quad	0x3fe4218c8ec6a5f7              # double 0.62909534345561624
	.quad	0x3fd81c80159badd8              # double 0.37673952207725625
	.quad	0x3febfb85b86c0345              # double 0.87445341129214482
	.quad	0x3fd8926605e7d546              # double 0.38393545700758513
	.quad	0x3fd9b337922cce4e              # double 0.40156354212669931
	.quad	0x3fd44242dd7e2580              # double 0.31654426221992793
	.quad	0x3fe56aff2c42a8bc              # double 0.66931112904173728
	.quad	0x3fe2d8d38598b4e9              # double 0.58896804898327304
	.quad	0x3fe9eb299438fa34              # double 0.80995634984703324
	.quad	0x3fa32c2c95de62e0              # double 0.03744639710857256
	.quad	0x3fa8d63f997cd170              # double 0.048509585844302872
	.quad	0x3fe789a427002a0e              # double 0.7355519067508014
	.quad	0x3fb61b58c9347a58              # double 0.086354779360115486
	.quad	0x3fd208bff8cdd3a0              # double 0.28178405091539993
	.quad	0x3fe69f19cdb72d3d              # double 0.70692148379149666
	.quad	0x3fed815f09bf22d4              # double 0.92204238799703341
	.quad	0x3fd1456bfddaeb78              # double 0.26986217299025084
	.quad	0x3fca861086b24340              # double 0.20721632554025327
	.quad	0x3fdc181ef11b4334              # double 0.43897222085529397
	.quad	0x3fd9da48b2bc4ede              # double 0.40394799666067438
	.quad	0x3feaf55509dc68cc              # double 0.84244777608844279
	.quad	0x3fd6c51b6a9f1f6e              # double 0.35578046238196392
	.quad	0x3fc64d1844b5632c              # double 0.1742277465334835
	.quad	0x3fe4c272c9682ee3              # double 0.64873637521074234
	.quad	0x3fe1b09e5daf246e              # double 0.55280988977132295
	.quad	0x3fee9e4a17a1a0ce              # double 0.95682243934154498
	.quad	0x3fd1e5a644f16824              # double 0.27964169247354875
	.quad	0x3fcb1c9f6fdc9a54              # double 0.2118109985542157
	.quad	0x3fee1a7b30659780              # double 0.94073256924160376
	.quad	0x3fb859e0f99b7ad0              # double 0.095121441783230453
	.quad	0x3fb047fa86bd86f0              # double 0.06359830655631149
	.quad	0x3fe499cb72da75fe              # double 0.64377376968667455
	.quad	0x3fd85277970356b2              # double 0.3800333952652678
	.quad	0x3fef4c7e11a0764e              # double 0.97808745806441677
	.quad	0x3feaeb9c3e3ac441              # double 0.84126102594576235
	.quad	0x3fc0f3e165c58cc8              # double 0.13244264096565517
	.quad	0x3fd6730489ed476a              # double 0.35077012509747496
	.quad	0x3fda279ccd54f73c              # double 0.40866775562232127
	.quad	0x3fe2da77be11e4f0              # double 0.5891684257796026
	.quad	0x3fd295d3ad69a7fa              # double 0.2903947061046207
	.quad	0x3fcd6219351d2348              # double 0.22955622762153838
	.quad	0x3fe7cf6170c8cdeb              # double 0.74406501796914648
	.quad	0x3fef077018f5b843              # double 0.96965794444054898
	.quad	0x3fedb26acad3a1ef              # double 0.92802943815791916
	.quad	0x3fd0257587024c0e              # double 0.25228632149190922
	.quad	0x3fe84c75fb778dc1              # double 0.75933360209131007
	.quad	0x3f90a1a5725cdf80              # double 0.01624163160815284
	.quad	0x3fe54881dd7bbbdb              # double 0.66510098703826814
	.quad	0x3fc1620a1554d514              # double 0.13580442468234166
	.quad	0x3fcd78368842d9fc              # double 0.23023111012817299
	.quad	0x3fee1c51dd1cd5f0              # double 0.94095700441419972
	.quad	0x3f73f13851822f00              # double 0.0048687171876158342
	.quad	0x3fe3b582a3101ab8              # double 0.61590701912140045
	.quad	0x3fe896369336ba03              # double 0.76833657028856839
	.quad	0x3fd6388d95205c12              # double 0.34720172465444066
	.quad	0x3fe6aa561574a63d              # double 0.70829300108488946
	.quad	0x3fd0f37859f6877e              # double 0.26486023698281957
	.quad	0x3fed4fc7c100302a              # double 0.91598880477386513
	.quad	0x3fe871f91cf678be              # double 0.76391273171227403
	.quad	0x3fe00ac6976dc944              # double 0.50131539894054145
	.quad	0x3fdf7539b2e47ab8              # double 0.49152986974688018
	.quad	0x3fe88ced240c672f              # double 0.76720292130196366
	.quad	0x3fd495947e6a1652              # double 0.32162964196354438
	.quad	0x3fd87aeb753ce572              # double 0.38250242661486944
	.quad	0x3fd715a9a724c156              # double 0.36069718668570283
	.quad	0x3fedb8d434b1d758              # double 0.92881212512905176
	.quad	0x3fed0441aa9802e8              # double 0.90676959342098673
	.quad	0x3fdf408a8f0436a0              # double 0.48831428495837237
	.quad	0x3fd9a2cf96f091d2              # double 0.40056218853194736
	.quad	0x3fccd067e10a5f34              # double 0.22511003959947973
	.quad	0x3fed58c9bbfc89c4              # double 0.91708838192089858
	.quad	0x3feea73c33179082              # double 0.95791444758334898
	.quad	0x3fc38f449ba81058              # double 0.15280969238677033
	.quad	0x3fd138635fca1888              # double 0.26906666140019597
	.quad	0x3fc45700e735d2c0              # double 0.15890513696253628
	.quad	0x3fe733906312cf62              # double 0.72504443502701243
	.quad	0x3fe00de2046cbbf6              # double 0.5016946875019801
	.quad	0x3fe19d8eb8800298              # double 0.5504830935970686
	.quad	0x3fd8c1257441e402              # double 0.38678871491680422
	.quad	0x3fdb75faf2efc406              # double 0.42907594417835104
	.quad	0x3fc5e4690a8e2c20              # double 0.17103302970312573
	.quad	0x3fec30848a4655ba              # double 0.88092257506166693
	.quad	0x3fe0c556c03f1cc9              # double 0.52408921764517757
	.quad	0x3fd2fca97828d802              # double 0.29667126402216593
	.quad	0x3fde461f0da1d23e              # double 0.47302986460934793
	.quad	0x3fc7d02d6c4aa224              # double 0.18604057109520611
	.quad	0x3febfbcd859f2363              # double 0.8744876489446195
	.quad	0x3fe39dd3a6972e97              # double 0.61301596200196939
	.quad	0x3fbde2e583094898              # double 0.11674341630103624
	.quad	0x3fe765cc2ef20dd9              # double 0.73117646378562562
	.quad	0x3fd5ecfc4119f7cc              # double 0.34258943898737182
	.quad	0x3fc34d184d43778c              # double 0.15079025051721506
	.quad	0x3fd1f95775b13700              # double 0.28084360593207691
	.quad	0x3feb6c9b344d9754              # double 0.85700760093161898
	.quad	0x3fdb5e8f6a696b80              # double 0.42764649764801987
	.quad	0x3fe3535dc7e7d2dc              # double 0.60392655414633678
	.quad	0x3fe9cfbd87907b5d              # double 0.80660892941873963
	.quad	0x3fe70af7b04a5a6e              # double 0.72008881026961347
	.quad	0x3fbf93caf4abe300              # double 0.12334888909743924
	.quad	0x3fe7f0207bcce5b4              # double 0.74806236438523976
	.quad	0x3fd4c7ae40231e76              # double 0.32468754065892058
	.quad	0x3fe376c9603c0cf5              # double 0.60825032039465887
	.quad	0x3fe9d5541fe31921              # double 0.80729109027814527
	.quad	0x3feff67b5e552dff              # double 0.99883812355386669
	.quad	0x3fea612c3f2987b7              # double 0.82436191879627685
	.quad	0x3fdc22be486c706e              # double 0.4396205622922541
	.quad	0x3fe679710bc8b937              # double 0.70232441236092924
	.quad	0x3feea3705697c24e              # double 0.95745102799089365
	.quad	0x3fc316f95799b6a4              # double 0.14913861062398326
	.quad	0x3fee05a48875ac81              # double 0.9381888070323755
	.quad	0x3fe9351cda874c19              # double 0.78773348504398932
	.quad	0x3fb6b5e48170fce0              # double 0.088712960817236119
	.quad	0x3fcd92b82291e1dc              # double 0.2310400170133694
	.quad	0x3fed1b1738fdffce              # double 0.90955697184835471
	.quad	0x3fb55a2485678020              # double 0.083406717843445666
	.quad	0x3fe7b3327f014bac              # double 0.74062466436077079
	.quad	0x3fb00ca6670b19d8              # double 0.062693023831435268
	.quad	0x3fb810d2a972ee00              # double 0.094006697053309551
	.quad	0x3feb213fcdb9cb33              # double 0.84780874424754982
	.quad	0x3fd6429994bd7600              # double 0.34781493688009846
	.quad	0x3fec125fbd52627d              # double 0.87724291779439023
	.quad	0x3fe77a46e058a61a              # double 0.73367637460359281
	.quad	0x3fa48ad547e6f2c0              # double 0.04012171271049203
	.quad	0x3febc7d340add29b              # double 0.86814272530189684
	.quad	0x3fc3cc0393a7deb0              # double 0.15466351232293141
	.quad	0x3fe94ea28f8ffc4d              # double 0.790848999400518
	.quad	0x3fe974a04ca1f9d9              # double 0.79548659293487411
	.quad	0x3fe988e0f78485fd              # double 0.79795883506102394
	.quad	0x3fc643d289712b70              # double 0.17394477568663147
	.quad	0x3fd0eee9cacff0c4              # double 0.26458210760007383
	.quad	0x3fd74c671c12b3a2              # double 0.3640382551337159
	.quad	0x3fe9da7fd4926fd1              # double 0.80792228239033126
	.quad	0x3fd20eb32e82338e              # double 0.28214721242766749
	.quad	0x3fc5a2f37e896410              # double 0.16903537443684558
	.quad	0x3fc555017a4f2f70              # double 0.16665667030462883
	.quad	0x3fd3bc5881979b7e              # double 0.30837071090211754
	.quad	0x3fd261283dc09be6              # double 0.2871800044107985
	.quad	0x3fe9051e7cff285c              # double 0.78187488950176087
	.quad	0x3febe04d531914f6              # double 0.87113062124322371
	.quad	0x3fe786690a030180              # double 0.73515750842493333
	.quad	0x3fd80436f9b3e110              # double 0.3752572477819891
	.quad	0x3fef81384d2039ad              # double 0.98452391685150575
	.quad	0x3fce5b392b773e94              # double 0.23715891477921913
	.quad	0x3fbae63b1edf7fd0              # double 0.10507554534660746
	.quad	0x3fe9db98dfc656a3              # double 0.80805629449851712
	.quad	0x3fc98ab1b7a6f01c              # double 0.19954511134517439
	.quad	0x3febe2f5cd1e8ae8              # double 0.87145509779324204
	.quad	0x3fcbe1446aa4d8bc              # double 0.21781211096976516
	.quad	0x3fba58a2dd6818e8              # double 0.10291498094020179
	.quad	0x3fe2656eb8148fcc              # double 0.57488189652621591
	.quad	0x3fdde85878ac0876              # double 0.46730624946952248
	.quad	0x3fe3fc035b4bc3ce              # double 0.62451331931344511
	.quad	0x3fcd3c527ba8a2f0              # double 0.22840338743232946
	.quad	0x3fde0eaba439ccfa              # double 0.46964541471170629
	.quad	0x3fed96bd7c853b38              # double 0.92465090103528436
	.quad	0x3fec8d95093cac1a              # double 0.89228298000432749
	.quad	0x3fe1cff43456d20f              # double 0.5566350004433519
	.quad	0x3fe55d54dbea6832              # double 0.66764300300861223
	.quad	0x3fe2a061f4b96c0a              # double 0.58207795903888493
	.quad	0x3fd47c505127f74e              # double 0.32008750844385225
	.quad	0x3fe395ae6258d45a              # double 0.61202162941357163
	.quad	0x3fec7695ae3d8cd5              # double 0.88947567015966433
	.quad	0x3feab0cf71bee16e              # double 0.83408329215948895
	.quad	0x3fe26ac80d354bf3              # double 0.57553484515881193
	.quad	0x3fd24c10509028fe              # double 0.28589256160252308
	.quad	0x3fda4eea09d9e1d6              # double 0.41106654130956366
	.quad	0x3fc7380d999dbd5c              # double 0.18139810562886793
	.quad	0x3fe7aa9d2aefa886              # double 0.73957689653367775
	.quad	0x3fc6aba2a9bbd458              # double 0.17711289680269959
	.quad	0x3febd167edaeb723              # double 0.86931225225791697
	.quad	0x3fef509a6f79d27e              # double 0.97858926556234826
	.quad	0x3fe2404bc70085fd              # double 0.57034863345705811
	.quad	0x3fed3819b99ad2b4              # double 0.9130982041447937
	.quad	0x3f95a2714aba3700              # double 0.021127481637953416
	.quad	0x3febe0c078de004f              # double 0.87118552786706427
	.quad	0x3fc959d8c1265d7c              # double 0.19805440360208226
	.quad	0x3fc287c4af442d7c              # double 0.1447683196823667
	.quad	0x3fe25a1f9252d4c4              # double 0.57350138262577177
	.quad	0x3fd8fae23745e72e              # double 0.39031272313842436
	.quad	0x3fbbbad8862c1388              # double 0.10831979060828989
	.quad	0x3fd8817dbd4568d2              # double 0.38290351375111442
	.quad	0x3fc73e97faac0458              # double 0.18159770717469104
	.quad	0x3fe9a0c0298ada73              # double 0.80087288011311697
	.quad	0x3fc93e6718c0a59c              # double 0.19721687992686732
	.quad	0x3fee2e079957d195              # double 0.94311885785878025
	.quad	0x3fce1ea6bcf42cd4              # double 0.23531040407428938
	.quad	0x3fe7748661961e21              # double 0.73297423419802865
	.quad	0x3fb87bc41dc13690              # double 0.095638520492878464
	.quad	0x3fe8d3d0ce5c2107              # double 0.77585640244163379
	.quad	0x3fd05feea5573bfa              # double 0.25585523745115746
	.quad	0x3fe102b1f7f479d6              # double 0.53157900265415026
	.quad	0x3fe5eda0a9a4b6ea              # double 0.6852572739932985
	.quad	0x3fe9c144d2a246da              # double 0.80484238757545801
	.quad	0x3f9f31794832d5a0              # double 0.030462164909030087
	.quad	0x3fdf48aa5316dc56              # double 0.48881013979138765
	.quad	0x3fedc93938973439              # double 0.93081341793879979
	.quad	0x3fd162e3ef3c383e              # double 0.27166078913512937
	.quad	0x3fd5e85d9d4cc4d0              # double 0.34230747567478392
	.quad	0x3feaad82ae3e801d              # double 0.83368047744807294
	.quad	0x3fe75fe525a2b943              # double 0.73045594549856963
	.quad	0x3fc5cbfc3a5a8de8              # double 0.17028763627341381
	.quad	0x3fe2ce6465b513a7              # double 0.58769435753548727
	.quad	0x3fe0101fb55ea78e              # double 0.50196824477937851
	.quad	0x3fbb54dd4bfc4bc0              # double 0.10676367859950542
	.quad	0x3fd6002b27990b26              # double 0.34376028887725096
	.quad	0x3fe52f8cd56f19af              # double 0.66205445944142649
	.quad	0x3fddd759951e0204              # double 0.46626891672352166
	.quad	0x3fea6ec6a694af33              # double 0.82602245841324018
	.quad	0x3fc2952559e42f88              # double 0.14517657174326026
	.quad	0x3fef4113d6958ebe              # double 0.97669402991274246
	.quad	0x3febf13c4b0cf1be              # double 0.8731976953345606
	.quad	0x3fd333352c9bb6ae              # double 0.30000047069811842
	.quad	0x3fec6753a1a3f8e7              # double 0.88761312075055521
	.quad	0x3fd69f47d2b7a2e2              # double 0.35347171380867171
	.quad	0x3fee49cd5bdf13aa              # double 0.94650905555373765
	.quad	0x3fe23d1a3ba34db2              # double 0.56995879791286641
	.quad	0x3fe3b220e81cb197              # double 0.61549420675651134
	.quad	0x3fea91e58fc9ff7f              # double 0.83030965884971397
	.quad	0x3fc7370b9a39a708              # double 0.18136734991576753
	.quad	0x3fea911b0585591d              # double 0.83021308019923235
	.quad	0x3fd7f29d9803821a              # double 0.37418308110321308
	.quad	0x3f9c54b732305180              # double 0.027666914404180343
	.quad	0x3fe6776ce6f23a87              # double 0.70207829577141545
	.quad	0x3f9decd39598ec80              # double 0.029223733907411731
	.quad	0x3fc91e9668c10ee0              # double 0.19624595751712715
	.quad	0x3fd71c622dba260e              # double 0.36110739198247266
	.quad	0x3fd0936f23ac0468              # double 0.25899866565311536
	.quad	0x3fc4830cd4f4673c              # double 0.16024933241060946
	.quad	0x3fa2af4ee4441ad0              # double 0.036493745197778815
	.quad	0x3fd1e0cf8e7589c0              # double 0.27934636032128068
	.quad	0x3fa9902ddf8a5940              # double 0.049928124940537888
	.quad	0x3fe5445439751f4e              # double 0.66459094259423934
	.quad	0x3fe7503dd088c686              # double 0.72854510049201404
	.quad	0x3fda17b58ff6ea38              # double 0.40769709643396679
	.quad	0x3fd121202552f4fa              # double 0.2676468243115121
	.quad	0x3fce105327672108              # double 0.23487319396941353
	.quad	0x3fdc6766b0673b5e              # double 0.44381110407714697
	.quad	0x3fa552e703e74980              # double 0.041648120142457223
	.quad	0x3fe28e16adaa1977              # double 0.57984479826772783
	.quad	0x3fc8c36f348a8d8c              # double 0.19346418443192837
	.quad	0x3fe035d910aaea39              # double 0.50657323127172227
	.quad	0x3fade3e8501ec690              # double 0.05837942102460858
	.quad	0x3fc3cc1b1e1e2a2c              # double 0.15466631861302582
	.quad	0x3fd659ad1f1033f0              # double 0.34922340425038012
	.quad	0x3fcbe6a39d38d190              # double 0.21797604729512132
	.quad	0x3fd4a55a1a658134              # double 0.32259228303702803
	.quad	0x3fd5395374915408              # double 0.33162390121043517
	.quad	0x3fe7227688f4bdd5              # double 0.72295691251013727
	.quad	0x3fea68406694427c              # double 0.82522602114666154
	.quad	0x3f72b6267b967300              # double 0.0045682433350549001
	.quad	0x3fe5efcbc726ba7d              # double 0.68552197357878664
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
