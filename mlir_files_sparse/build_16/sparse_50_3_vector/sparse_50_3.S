	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"LLVMDialectModule"
	.text
	.globl	compute_sum                     # -- Begin function compute_sum
	.p2align	1
	.type	compute_sum,@function
compute_sum:                            # @compute_sum
	.cfi_startproc
# %bb.0:
	li	a6, 0
	li	a2, 0
	fmv.d.x	fa0, zero
	li	a3, 99
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	a2, a2, 1
	addi	a6, a6, 800
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	blt	a3, a2, .LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	li	a4, 0
	mv	a0, a6
	bltz	a3, .LBB0_1
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a5, a1, a0
	fld	fa5, 0(a5)
	addi	a4, a4, 1
	fadd.d	fa0, fa0, fa5
	addi	a0, a0, 8
	bge	a3, a4, .LBB0_4
	j	.LBB0_1
.LBB0_5:
	ret
.Lfunc_end0:
	.size	compute_sum, .Lfunc_end0-compute_sum
	.cfi_endproc
                                        # -- End function
	.globl	sparse_sparse_matmul            # -- Begin function sparse_sparse_matmul
	.p2align	1
	.type	sparse_sparse_matmul,@function
sparse_sparse_matmul:                   # @sparse_sparse_matmul
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -160
	.cfi_def_cfa_offset 160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
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
	li	a3, 34
	mul	a1, a1, a3
	sub	sp, sp, a1
	.cfi_escape 0x0f, 0x0e, 0x72, 0x00, 0x11, 0xa0, 0x01, 0x22, 0x11, 0x22, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 160 + 34 * vlenb
	li	t6, 0
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 472(a1)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 464(a1)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 456(a1)
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	t2, 448(a1)
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	t3, 440(a1)
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	t5, 432(a1)
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	t4, 424(a1)
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	s3, 192(a1)
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	s5, 352(a1)
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	s6, 272(a1)
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	s7, 312(a1)
	csrr	t1, vlenb
	li	s2, 99
	slli	s11, t1, 4
	slli	ra, t1, 1
	slli	t1, t1, 3
	li	s4, 800
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi	t6, t6, 1
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_8 Depth 3
	blt	s2, t6, .LBB1_11
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	slli	a1, t6, 3
	add	a1, a1, a2
	lwu	a3, 4(a1)
	lwu	a4, 0(a1)
	lwu	a5, 12(a1)
	lwu	a1, 8(a1)
	slli	a3, a3, 32
	or	s9, a3, a4
	slli	a5, a5, 32
	or	s8, a5, a1
	mul	a5, t6, s4
	add	a5, a5, t5
	j	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=2
	addi	s9, s9, 1
.LBB1_5:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_8 Depth 3
	bge	s9, s8, .LBB1_1
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	slli	a1, s9, 3
	add	a3, a7, a1
	lwu	a4, 0(a3)
	lwu	a3, 4(a3)
	slli	a4, a4, 3
	slli	a3, a3, 35
	or	a3, a3, a4
	add	a3, a3, s6
	lwu	a4, 0(a3)
	lwu	s0, 4(a3)
	lwu	s1, 8(a3)
	lwu	a3, 12(a3)
	add	a1, a1, s3
	fld	fa5, 0(a1)
	slli	s0, s0, 32
	slli	a3, a3, 32
	or	a6, s0, a4
	or	s10, a3, s1
	slli	a1, a6, 3
	add	s1, s5, a1
	add	a1, a1, s7
	sub	a3, s10, a6
	j	.LBB1_8
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=3
	vsetvli	t0, zero, e32, m8, ta, ma
	vmv.v.x	v8, a4
	csrr	a4, vlenb
	li	t0, 26
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vs8r.v	v8, (a4)                        # Unknown-size Folded Spill
	add	a4, a1, t1
	vsetvli	s0, zero, e64, m8, ta, ma
	vmv.v.i	v8, 0
	vmv.v.i	v24, 0
	csrr	t0, vlenb
	li	s0, 10
	mul	t0, t0, s0
	add	t0, t0, sp
	addi	t0, t0, 48
	vs8r.v	v8, (t0)                        # Unknown-size Folded Spill
	csrr	t0, vlenb
	li	s0, 26
	mul	t0, t0, s0
	add	t0, t0, sp
	addi	t0, t0, 48
	vl8r.v	v16, (t0)                       # Unknown-size Folded Reload
	vsetvli	s0, zero, e32, m8, ta, ma
	vid.v	v0
	vsetvli	s0, zero, e32, m4, ta, ma
	vmslt.vv	v0, v4, v20
	csrr	t0, vlenb
	li	s0, 26
	mul	t0, t0, s0
	add	t0, t0, sp
	addi	t0, t0, 48
	vl8r.v	v16, (t0)                       # Unknown-size Folded Reload
	vsetvli	s0, zero, e32, m8, ta, ma
	vid.v	v8
	vsetvli	s0, zero, e32, m4, ta, ma
	vmslt.vv	v6, v8, v16
	vmv1r.v	v7, v0
	csrr	t0, vlenb
	slli	s0, t0, 3
	add	t0, t0, s0
	add	t0, t0, sp
	addi	t0, t0, 48
	vs1r.v	v0, (t0)                        # Unknown-size Folded Spill
	vsetvli	zero, zero, e64, m8, ta, mu
	vle64.v	v24, (a4), v0.t
	csrr	a4, vlenb
	li	t0, 18
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vs8r.v	v24, (a4)                       # Unknown-size Folded Spill
	vmv1r.v	v0, v6
	csrr	a4, vlenb
	li	t0, 10
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vl8r.v	v8, (a4)                        # Unknown-size Folded Reload
	vle64.v	v8, (a1), v0.t
	vmv.v.i	v16, 0
	vsll.vi	v24, v8, 3
	csrr	a4, vlenb
	li	t0, 26
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vs8r.v	v24, (a4)                       # Unknown-size Folded Spill
	vmv.v.i	v8, 0
	csrr	a4, vlenb
	slli	a4, a4, 3
	add	a4, a4, sp
	addi	a4, a4, 48
	vs1r.v	v6, (a4)                        # Unknown-size Folded Spill
	vluxei64.v	v8, (a5), v24, v0.t
	csrr	a4, vlenb
	li	t0, 10
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vs8r.v	v8, (a4)                        # Unknown-size Folded Spill
	csrr	a4, vlenb
	li	t0, 18
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vl8r.v	v8, (a4)                        # Unknown-size Folded Reload
	vsll.vi	v8, v8, 3
	csrr	a4, vlenb
	li	t0, 18
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vs8r.v	v8, (a4)                        # Unknown-size Folded Spill
	vmv.v.i	v24, 0
	vmv1r.v	v0, v7
	vluxei64.v	v24, (a5), v8, v0.t
	addi	a4, sp, 48
	vs8r.v	v24, (a4)                       # Unknown-size Folded Spill
	add	a4, s1, t1
	vmv.v.i	v8, 0
	vle64.v	v8, (a4), v0.t
	vmv1r.v	v0, v6
	vle64.v	v16, (s1), v0.t
	vfmul.vf	v16, v16, fa5
	csrr	a4, vlenb
	li	t0, 10
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vl8r.v	v0, (a4)                        # Unknown-size Folded Reload
	vfadd.vv	v16, v0, v16
	csrr	a4, vlenb
	li	t0, 10
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vs8r.v	v16, (a4)                       # Unknown-size Folded Spill
	csrr	a4, vlenb
	slli	a4, a4, 3
	add	a4, a4, sp
	addi	a4, a4, 48
	vl1r.v	v0, (a4)                        # Unknown-size Folded Reload
	csrr	a4, vlenb
	li	t0, 26
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vl8r.v	v16, (a4)                       # Unknown-size Folded Reload
	csrr	a4, vlenb
	li	t0, 10
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vl8r.v	v24, (a4)                       # Unknown-size Folded Reload
	vsoxei64.v	v24, (a5), v16, v0.t
	vfmul.vf	v8, v8, fa5
	addi	a4, sp, 48
	vl8r.v	v16, (a4)                       # Unknown-size Folded Reload
	vfadd.vv	v8, v16, v8
	csrr	a4, vlenb
	slli	t0, a4, 3
	add	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vl1r.v	v0, (a4)                        # Unknown-size Folded Reload
	csrr	a4, vlenb
	li	t0, 18
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vl8r.v	v16, (a4)                       # Unknown-size Folded Reload
	vsoxei64.v	v8, (a5), v16, v0.t
	add	a6, a6, ra
	add	a1, a1, s11
	add	s1, s1, s11
	sub	a3, a3, ra
.LBB1_8:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bge	a6, s10, .LBB1_4
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=3
	mv	a4, ra
	blt	ra, a3, .LBB1_7
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=3
	mv	a4, a3
	j	.LBB1_7
.LBB1_11:
	sd	t4, 0(a0)
	sd	t5, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sd	a1, 32(a0)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sd	a1, 48(a0)
	csrr	a0, vlenb
	li	a1, 34
	mul	a0, a0, a1
	add	sp, sp, a0
	.cfi_def_cfa sp, 160
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
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
	addi	sp, sp, 160
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	sparse_sparse_matmul, .Lfunc_end1-sparse_sparse_matmul
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI2_0:
	.quad	0x41437e4ae938a3b5              # double 2555029.8220409998
	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -816
	.cfi_def_cfa_offset 816
	sd	ra, 808(sp)                     # 8-byte Folded Spill
	sd	s0, 800(sp)                     # 8-byte Folded Spill
	sd	s1, 792(sp)                     # 8-byte Folded Spill
	sd	s2, 784(sp)                     # 8-byte Folded Spill
	sd	s3, 776(sp)                     # 8-byte Folded Spill
	sd	s4, 768(sp)                     # 8-byte Folded Spill
	sd	s5, 760(sp)                     # 8-byte Folded Spill
	sd	s6, 752(sp)                     # 8-byte Folded Spill
	sd	s7, 744(sp)                     # 8-byte Folded Spill
	sd	s8, 736(sp)                     # 8-byte Folded Spill
	sd	s9, 728(sp)                     # 8-byte Folded Spill
	sd	s10, 720(sp)                    # 8-byte Folded Spill
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
	csrr	a0, vlenb
	li	a1, 6
	mul	a0, a0, a1
	sub	sp, sp, a0
	.cfi_escape 0x0f, 0x0e, 0x72, 0x00, 0x11, 0xb0, 0x06, 0x22, 0x11, 0x06, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 816 + 6 * vlenb
	lui	a0, 20
	addiw	a0, a0, -1856
	call	malloc
	mv	s0, a0
	addi	a0, a0, 63
	andi	s9, a0, -64
	addi	a0, sp, 560
	call	assemble_sparse_tensor1
	addi	a0, sp, 680
	addi	a1, sp, 616
	ld	s2, 592(sp)
	ld	s4, 600(sp)
	ld	s3, 608(sp)
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a0)
	csrr	a0, vlenb
	slli	a0, a0, 2
	add	a0, a0, sp
	addi	a0, a0, 720
	vs2r.v	v8, (a0)                        # Unknown-size Folded Spill
	ld	s6, 560(sp)
	ld	s5, 568(sp)
	ld	s8, 576(sp)
	ld	s7, 584(sp)
	vsetivli	zero, 8, e64, m4, ta, ma
	vle64.v	v8, (a1)
	addi	a0, sp, 720
	vs4r.v	v8, (a0)                        # Unknown-size Folded Spill
	ld	s1, 712(sp)
	addi	a0, sp, 400
	addi	s10, sp, 400
	call	assemble_sparse_tensor2
	vsetivli	zero, 16, e64, m8, ta, ma
	vle64.v	v8, (s10)
	addi	a0, sp, 528
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v16, (a0)
	sd	s0, 264(sp)
	sd	s9, 272(sp)
	sd	zero, 280(sp)
	sd	s1, 96(sp)
	addi	a0, sp, 720
	vl4r.v	v20, (a0)                       # Unknown-size Folded Reload
	vsetivli	zero, 8, e64, m4, ta, ma
	vse64.v	v20, (sp)
	lui	a0, 5702
	addi	a1, sp, 288
	addi	a2, sp, 232
	addi	a0, a0, 1124
	vmv.s.x	v18, a0
	addi	a3, sp, 104
	vsetivli	zero, 4, e64, m2, ta, ma
	vsext.vf8	v20, v18
	vse64.v	v20, (a1)
	addi	a1, sp, 64
	vse64.v	v16, (a2)
	addi	a0, sp, 344
	vsetivli	zero, 16, e64, m8, ta, ma
	vse64.v	v8, (a3)
	csrr	a2, vlenb
	slli	a2, a2, 2
	add	a2, a2, sp
	addi	a2, a2, 720
	vl2r.v	v8, (a2)                        # Unknown-size Folded Reload
	vsetivli	zero, 4, e64, m2, ta, ma
	vse64.v	v8, (a1)
	mv	a1, s6
	mv	a2, s5
	mv	a3, s8
	mv	a4, s7
	mv	a5, s2
	mv	a6, s4
	mv	a7, s3
	call	sparse_sparse_matmul
	ld	a4, 376(sp)
	ld	a5, 384(sp)
	ld	a6, 392(sp)
	ld	a0, 344(sp)
	ld	a1, 352(sp)
	ld	a2, 360(sp)
	ld	a3, 368(sp)
	call	compute_sum
	lui	a0, %hi(.LCPI2_0)
	fld	fa5, %lo(.LCPI2_0)(a0)
	feq.d	a0, fa0, fa5
	xori	a0, a0, 1
	csrr	a1, vlenb
	li	a2, 6
	mul	a1, a1, a2
	add	sp, sp, a1
	.cfi_def_cfa sp, 816
	ld	ra, 808(sp)                     # 8-byte Folded Reload
	ld	s0, 800(sp)                     # 8-byte Folded Reload
	ld	s1, 792(sp)                     # 8-byte Folded Reload
	ld	s2, 784(sp)                     # 8-byte Folded Reload
	ld	s3, 776(sp)                     # 8-byte Folded Reload
	ld	s4, 768(sp)                     # 8-byte Folded Reload
	ld	s5, 760(sp)                     # 8-byte Folded Reload
	ld	s6, 752(sp)                     # 8-byte Folded Reload
	ld	s7, 744(sp)                     # 8-byte Folded Reload
	ld	s8, 736(sp)                     # 8-byte Folded Reload
	ld	s9, 728(sp)                     # 8-byte Folded Reload
	ld	s10, 720(sp)                    # 8-byte Folded Reload
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
	addi	sp, sp, 816
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function assemble_sparse_tensor1
.LCPI3_0:
	.quad	0                               # 0x0
	.quad	5000                            # 0x1388
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	5000                            # 0x1388
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI3_2:
	.quad	0                               # 0x0
	.quad	101                             # 0x65
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
	.text
	.globl	assemble_sparse_tensor1
	.p2align	1
	.type	assemble_sparse_tensor1,@function
assemble_sparse_tensor1:                # @assemble_sparse_tensor1
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_101xindex)
	addi	a1, a1, %lo(.L__constant_101xindex)
	lui	a7, %hi(.L__constant_5000xindex)
	addi	a7, a7, %lo(.L__constant_5000xindex)
	lui	t0, %hi(.L__constant_5000xf64)
	addi	t0, t0, %lo(.L__constant_5000xf64)
	li	a6, 101
	li	a5, 100
	lui	a4, 228023
	lui	a2, %hi(.LCPI3_0)
	addi	a2, a2, %lo(.LCPI3_0)
	addi	a3, a0, 96
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a2)
	lui	a2, %hi(.LCPI3_1)
	addi	a2, a2, %lo(.LCPI3_1)
	vle64.v	v10, (a2)
	ld	a2, 800(a1)
	slli	a4, a4, 2
	addi	a4, a4, -273
	sd	a4, 0(a0)
	sd	a1, 8(a0)
	sd	a7, 48(a0)
	sd	t0, 88(a0)
	lui	a1, %hi(.LCPI3_2)
	addi	a1, a1, %lo(.LCPI3_2)
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
.Lfunc_end3:
	.size	assemble_sparse_tensor1, .Lfunc_end3-assemble_sparse_tensor1
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function assemble_sparse_tensor2
.LCPI4_0:
	.quad	0                               # 0x0
	.quad	1999                            # 0x7cf
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI4_1:
	.quad	0                               # 0x0
	.quad	1999                            # 0x7cf
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI4_2:
	.quad	0                               # 0x0
	.quad	101                             # 0x65
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
	.text
	.globl	assemble_sparse_tensor2
	.p2align	1
	.type	assemble_sparse_tensor2,@function
assemble_sparse_tensor2:                # @assemble_sparse_tensor2
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_101xindex_0)
	addi	a1, a1, %lo(.L__constant_101xindex_0)
	lui	a7, %hi(.L__constant_1999xindex)
	addi	a7, a7, %lo(.L__constant_1999xindex)
	lui	t0, %hi(.L__constant_1999xf64)
	addi	t0, t0, %lo(.L__constant_1999xf64)
	li	a6, 101
	li	a5, 100
	lui	a4, 228023
	lui	a2, %hi(.LCPI4_0)
	addi	a2, a2, %lo(.LCPI4_0)
	addi	a3, a0, 96
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a2)
	lui	a2, %hi(.LCPI4_1)
	addi	a2, a2, %lo(.LCPI4_1)
	vle64.v	v10, (a2)
	ld	a2, 800(a1)
	slli	a4, a4, 2
	addi	a4, a4, -273
	sd	a4, 0(a0)
	sd	a1, 8(a0)
	sd	a7, 48(a0)
	sd	t0, 88(a0)
	lui	a1, %hi(.LCPI4_2)
	addi	a1, a1, %lo(.LCPI4_2)
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
.Lfunc_end4:
	.size	assemble_sparse_tensor2, .Lfunc_end4-assemble_sparse_tensor2
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_101xindex_0,@object # @__constant_101xindex_0
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_101xindex_0:
	.quad	0                               # 0x0
	.quad	38                              # 0x26
	.quad	38                              # 0x26
	.quad	81                              # 0x51
	.quad	81                              # 0x51
	.quad	124                             # 0x7c
	.quad	124                             # 0x7c
	.quad	171                             # 0xab
	.quad	171                             # 0xab
	.quad	204                             # 0xcc
	.quad	204                             # 0xcc
	.quad	244                             # 0xf4
	.quad	244                             # 0xf4
	.quad	283                             # 0x11b
	.quad	283                             # 0x11b
	.quad	327                             # 0x147
	.quad	327                             # 0x147
	.quad	361                             # 0x169
	.quad	361                             # 0x169
	.quad	399                             # 0x18f
	.quad	399                             # 0x18f
	.quad	440                             # 0x1b8
	.quad	440                             # 0x1b8
	.quad	484                             # 0x1e4
	.quad	484                             # 0x1e4
	.quad	522                             # 0x20a
	.quad	522                             # 0x20a
	.quad	559                             # 0x22f
	.quad	559                             # 0x22f
	.quad	596                             # 0x254
	.quad	596                             # 0x254
	.quad	637                             # 0x27d
	.quad	637                             # 0x27d
	.quad	675                             # 0x2a3
	.quad	675                             # 0x2a3
	.quad	719                             # 0x2cf
	.quad	719                             # 0x2cf
	.quad	763                             # 0x2fb
	.quad	763                             # 0x2fb
	.quad	801                             # 0x321
	.quad	801                             # 0x321
	.quad	836                             # 0x344
	.quad	836                             # 0x344
	.quad	872                             # 0x368
	.quad	872                             # 0x368
	.quad	913                             # 0x391
	.quad	913                             # 0x391
	.quad	953                             # 0x3b9
	.quad	953                             # 0x3b9
	.quad	996                             # 0x3e4
	.quad	996                             # 0x3e4
	.quad	1037                            # 0x40d
	.quad	1037                            # 0x40d
	.quad	1076                            # 0x434
	.quad	1076                            # 0x434
	.quad	1117                            # 0x45d
	.quad	1117                            # 0x45d
	.quad	1156                            # 0x484
	.quad	1156                            # 0x484
	.quad	1194                            # 0x4aa
	.quad	1194                            # 0x4aa
	.quad	1238                            # 0x4d6
	.quad	1238                            # 0x4d6
	.quad	1279                            # 0x4ff
	.quad	1279                            # 0x4ff
	.quad	1323                            # 0x52b
	.quad	1323                            # 0x52b
	.quad	1362                            # 0x552
	.quad	1362                            # 0x552
	.quad	1407                            # 0x57f
	.quad	1407                            # 0x57f
	.quad	1451                            # 0x5ab
	.quad	1451                            # 0x5ab
	.quad	1493                            # 0x5d5
	.quad	1493                            # 0x5d5
	.quad	1530                            # 0x5fa
	.quad	1530                            # 0x5fa
	.quad	1562                            # 0x61a
	.quad	1562                            # 0x61a
	.quad	1601                            # 0x641
	.quad	1601                            # 0x641
	.quad	1646                            # 0x66e
	.quad	1646                            # 0x66e
	.quad	1689                            # 0x699
	.quad	1689                            # 0x699
	.quad	1729                            # 0x6c1
	.quad	1729                            # 0x6c1
	.quad	1772                            # 0x6ec
	.quad	1772                            # 0x6ec
	.quad	1813                            # 0x715
	.quad	1813                            # 0x715
	.quad	1849                            # 0x739
	.quad	1849                            # 0x739
	.quad	1889                            # 0x761
	.quad	1889                            # 0x761
	.quad	1925                            # 0x785
	.quad	1925                            # 0x785
	.quad	1963                            # 0x7ab
	.quad	1963                            # 0x7ab
	.quad	1999                            # 0x7cf
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
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
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
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
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
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
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
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
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	48                              # 0x30
	.quad	52                              # 0x34
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
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	18                              # 0x12
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
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
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
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
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
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
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
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.size	.L__constant_1999xindex, 15992

	.type	.L__constant_1999xf64,@object   # @__constant_1999xf64
	.p2align	6, 0x0
.L__constant_1999xf64:
	.quad	0x400d7a059a73b42d              # double 3.6845810000000001
	.quad	0x400419c0ebedfa44              # double 2.512575
	.quad	0x40145154866a11ed              # double 5.0794240000000004
	.quad	0x4000692ff4ba51a0              # double 2.051361
	.quad	0x4010af1a5ca29846              # double 4.1709990000000001
	.quad	0x4010bd3aa369fcf4              # double 4.1847940000000001
	.quad	0x4017154bcf0b6b6e              # double 5.770797
	.quad	0x4020d2326e115593              # double 8.4105410000000003
	.quad	0x400e0f6512a94ff0              # double 3.757517
	.quad	0x401d13e100607810              # double 7.2694130000000001
	.quad	0x4010aaec8d5c7475              # double 4.1669179999999999
	.quad	0x401e76b50b0f27bb              # double 7.6159249999999998
	.quad	0x3ff050092ccf6be3              # double 1.0195399999999999
	.quad	0x4023b984e3ffef39              # double 9.8623419999999999
	.quad	0x401a2c0ce91c8eac              # double 6.543018
	.quad	0x40224832db1e9f27              # double 9.1410129999999992
	.quad	0x3fe4883126e978d5              # double 0.641625
	.quad	0x3ff528f29d40ee07              # double 1.322497
	.quad	0x4002b4562e09fe87              # double 2.3380550000000002
	.quad	0x401b404e618ce2d2              # double 6.812799
	.quad	0x400292513b5bf6a1              # double 2.3214440000000001
	.quad	0x4018c102ff8ec0f9              # double 6.1884880000000004
	.quad	0x401705d6bebe1651              # double 5.7557020000000003
	.quad	0x400c95818c5c9a35              # double 3.5730010000000001
	.quad	0x3fff4ca0c282c6ef              # double 1.9562079999999999
	.quad	0x402245d851654d62              # double 9.1364160000000005
	.quad	0x40206154c985f06f              # double 8.1900999999999993
	.quad	0x4015d4c55432873c              # double 5.4577840000000002
	.quad	0x4011a40d90e23af3              # double 4.4102079999999999
	.quad	0x400d27c8d195896a              # double 3.6444260000000002
	.quad	0x4023b1a4df47f994              # double 9.8469610000000002
	.quad	0x4011cd2d87f88766              # double 4.4503690000000002
	.quad	0x4017493d102bc72e              # double 5.8215219999999999
	.quad	0x401bc107b784662c              # double 6.9385060000000003
	.quad	0x401b4dcebfec13ba              # double 6.8259840000000001
	.quad	0x40067dff3f0fe048              # double 2.8115220000000001
	.quad	0x3ff982938de6ddf0              # double 1.594379
	.quad	0x3fe8f329c347e8cd              # double 0.77968300000000001
	.quad	0x4023671f57b41bfc              # double 9.7014110000000002
	.quad	0x401fec343b70ef56              # double 7.9806679999999997
	.quad	0x40210b84ba0e8427              # double 8.5224969999999995
	.quad	0x4008e1a261bf37b9              # double 3.1101730000000001
	.quad	0x4014c87d6f976790              # double 5.1957909999999998
	.quad	0x40216f3cf70153bd              # double 8.7172619999999998
	.quad	0x4023a0a7a41e57da              # double 9.8137790000000003
	.quad	0x4013228522ea0fd4              # double 4.7837110000000003
	.quad	0x401658140dd3fe19              # double 5.5860139999999996
	.quad	0x40239c1bb8c32a8d              # double 9.8048990000000006
	.quad	0x3ffb8271fff79c84              # double 1.719347
	.quad	0x40221676640a6b94              # double 9.0438720000000003
	.quad	0x4011416c61522a6f              # double 4.3138899999999998
	.quad	0x400d159ddc1e7968              # double 3.6355550000000001
	.quad	0x4015eba16e7a311f              # double 5.4801080000000004
	.quad	0x40118424e5929670              # double 4.3790469999999999
	.quad	0x400138a4c1ebc83b              # double 2.1526580000000002
	.quad	0x3fccb7995ee136e7              # double 0.224353
	.quad	0x3ffacfffbce4217d              # double 1.675781
	.quad	0x4010f9a5a89b951c              # double 4.2437959999999997
	.quad	0x4021cbedfa43fe5d              # double 8.8983000000000008
	.quad	0x4017944bf4cb1898              # double 5.8948210000000003
	.quad	0x401638887229e908              # double 5.5552080000000004
	.quad	0x402127903211cb04              # double 8.5772720000000006
	.quad	0x400aca41a261bf38              # double 3.3487580000000001
	.quad	0x401bf38a7e73a366              # double 6.9878330000000002
	.quad	0x401e546f15619115              # double 7.5824550000000003
	.quad	0x402375477bbf93ff              # double 9.7290609999999997
	.quad	0x40117f8bdec5f395              # double 4.3745570000000003
	.quad	0x4016f78316a05575              # double 5.7417109999999996
	.quad	0x4014aec918e325d5              # double 5.1706890000000003
	.quad	0x4018d925fe974a34              # double 6.212059
	.quad	0x40209dd031055b8a              # double 8.3082290000000008
	.quad	0x40127146e4c0df59              # double 4.6106220000000002
	.quad	0x4019b4484944ed70              # double 6.4260570000000001
	.quad	0x400f9bb0e5e67946              # double 3.9510209999999999
	.quad	0x3ff95c75818c5c9a              # double 1.585073
	.quad	0x40136859c8c9320e              # double 4.8519050000000004
	.quad	0x40101d4024b33db0              # double 4.0285650000000004
	.quad	0x4013e8b220791c4c              # double 4.9772420000000004
	.quad	0x3ff5a7e846a5d6bf              # double 1.3534930000000001
	.quad	0x401daf2e8c0485a1              # double 7.4210760000000002
	.quad	0x401ea7353b4b2fa9              # double 7.6632889999999997
	.quad	0x400d6189374bc6a8              # double 3.672625
	.quad	0x4023db3bd9cae211              # double 9.9281909999999999
	.quad	0x401176fc158fb43e              # double 4.3661960000000004
	.quad	0x401e9c73abc94706              # double 7.6527849999999997
	.quad	0x4014bded288ce704              # double 5.1854750000000003
	.quad	0x402340e60807357e              # double 9.6267549999999993
	.quad	0x3fbf2ecf20642396              # double 0.121808
	.quad	0x402020e2e2b8c75c              # double 8.0642309999999994
	.quad	0x401224638c975297              # double 4.5355359999999996
	.quad	0x40197185cee17a03              # double 6.360862
	.quad	0x4020b04cad57bc7f              # double 8.3443349999999992
	.quad	0x3feb204af922962d              # double 0.847692
	.quad	0x3ffd5dd5d3dc8b87              # double 1.8354090000000001
	.quad	0x4015b955b4677b39              # double 5.4309909999999997
	.quad	0x40080b29e4d5d80e              # double 3.0054509999999999
	.quad	0x40224626916440f2              # double 9.1370129999999996
	.quad	0x3ff37c64345cfedf              # double 1.2178690000000001
	.quad	0x401605f3519bd406              # double 5.5058109999999996
	.quad	0x401e585510d38cda              # double 7.5862619999999996
	.quad	0x401ea9e7b80a9de9              # double 7.6659230000000002
	.quad	0x401eefc6da448494              # double 7.7341569999999997
	.quad	0x4019bc753e707e17              # double 6.4340409999999997
	.quad	0x401b2bda5119ce07              # double 6.7928249999999997
	.quad	0x401db24dd2f1a9fc              # double 7.4241250000000001
	.quad	0x4023ebcc8de2ac32              # double 9.9605449999999998
	.quad	0x40182414a4d2b2c0              # double 6.0352350000000001
	.quad	0x3fff3b0b39192642              # double 1.9519150000000001
	.quad	0x402149904b3c3e75              # double 8.6436790000000006
	.quad	0x402142f294dd7236              # double 8.6307569999999991
	.quad	0x40227372c5197a25              # double 9.2254850000000008
	.quad	0x3ffd3e07a28bb0a3              # double 1.827644
	.quad	0x400154bd76ee73e7              # double 2.1663770000000002
	.quad	0x401dcf8769ec2ce4              # double 7.4526649999999997
	.quad	0x4022f0eb0318b934              # double 9.4705429999999992
	.quad	0x4023c6faa4766c6e              # double 9.8886310000000002
	.quad	0x4001313ad5bee3d6              # double 2.149038
	.quad	0x40227f01fb82c2bd              # double 9.2480619999999991
	.quad	0x3fffc75d56f32bdc              # double 1.986173
	.quad	0x4015832d2bb23572              # double 5.3781020000000002
	.quad	0x3ff6ae4b018611fd              # double 1.4175519999999999
	.quad	0x40213c4f3ba775fb              # double 8.6177919999999997
	.quad	0x401f1f1dc50ce4eb              # double 7.7803870000000001
	.quad	0x401356b441bb8c33              # double 4.8346720000000003
	.quad	0x40169932d6ece13f              # double 5.6496079999999997
	.quad	0x402001ce075f6fd2              # double 8.0035249999999998
	.quad	0x4021f211cb039ef1              # double 8.9727920000000001
	.quad	0x3fe978140dd3fe19              # double 0.79590799999999995
	.quad	0x3fec067ad8e43244              # double 0.87579099999999998
	.quad	0x3fec16c82e019b0b              # double 0.87778100000000003
	.quad	0x4013c07faa044ae8              # double 4.9379869999999997
	.quad	0x4020aad948dc11e4              # double 8.3336889999999996
	.quad	0x4004a1ee675147f1              # double 2.5790679999999999
	.quad	0x4018ca47ecfe9b7c              # double 6.19754
	.quad	0x4019097635e7429a              # double 6.2592400000000001
	.quad	0x40204b2af145521a              # double 8.1468120000000006
	.quad	0x4020f1d4b6a619db              # double 8.4723260000000007
	.quad	0x401c656861e92924              # double 7.0990310000000001
	.quad	0x3ffea9b6b2af1455              # double 1.916434
	.quad	0x40140e88df37329c              # double 5.0141939999999998
	.quad	0x401fd9741d084e83              # double 7.9623569999999999
	.quad	0x3ffa0be7296f6513              # double 1.6279060000000001
	.quad	0x4008cda3c21187e8              # double 3.1004100000000001
	.quad	0x3ff70cf1800a7c5b              # double 1.4406600000000001
	.quad	0x401eac3c18b502ac              # double 7.6681980000000003
	.quad	0x3fd6e7d9988d2a20              # double 0.35790100000000002
	.quad	0x4019d577963992c9              # double 6.4584640000000002
	.quad	0x4017fd86a8fc0d2c              # double 5.9975839999999998
	.quad	0x3fffcd0dcfcc5b8e              # double 1.9875620000000001
	.quad	0x4020029aa1d755bd              # double 8.0050860000000004
	.quad	0x401c8009f623076c              # double 7.125038
	.quad	0x4009ef08cc575c07              # double 3.2417159999999998
	.quad	0x402204f227d028a2              # double 9.0096600000000002
	.quad	0x401ac2df9378ee28              # double 6.6903059999999996
	.quad	0x400aee0221426fe7              # double 3.366215
	.quad	0x40100a0407cc7d1c              # double 4.0097810000000003
	.quad	0x3fe29ae4f3343fa3              # double 0.58140800000000004
	.quad	0x401fd0b4e11dbca9              # double 7.9538149999999996
	.quad	0x4011934a01abd1ab              # double 4.3938370000000004
	.quad	0x3fd5e631f8a0902e              # double 0.34217500000000001
	.quad	0x401871be2b4959e6              # double 6.1110769999999999
	.quad	0x401c640a6b93ccd1              # double 7.097696
	.quad	0x402087240fa9c12f              # double 8.2639469999999999
	.quad	0x40185b530ced4e4d              # double 6.0891840000000004
	.quad	0x4015c0da5daf07c0              # double 5.4383330000000001
	.quad	0x4020037718655193              # double 8.0067679999999992
	.quad	0x40096f4d7add15f0              # double 3.1793469999999999
	.quad	0x400d793ff25e56cd              # double 3.6842039999999998
	.quad	0x4003d78897e99631              # double 2.4802409999999999
	.quad	0x40199c8c0ce91c8f              # double 6.4028780000000003
	.quad	0x4023bdb1422ccb3a              # double 9.8704929999999997
	.quad	0x401493e63e8dda49              # double 5.1444330000000003
	.quad	0x3ffe6c02f2f98740              # double 1.90137
	.quad	0x4006212c6ac215ba              # double 2.7661980000000002
	.quad	0x40223a63736cdf26              # double 9.1140399999999993
	.quad	0x3fb33ce63a5c1c61              # double 0.075148000000000006
	.quad	0x3ff2d48238540464              # double 1.176882
	.quad	0x40124b0e5e679464              # double 4.5732970000000002
	.quad	0x401fa6d2674080fa              # double 7.9129120000000004
	.quad	0x40180dd377e1b8ed              # double 6.0135019999999999
	.quad	0x4020e2a6b0d95140              # double 8.4426780000000008
	.quad	0x3fb128bf3bea91da              # double 0.067028000000000004
	.quad	0x40182a77e5eaab04              # double 6.0414729999999999
	.quad	0x3fdbc32a8c9b8455              # double 0.43378699999999998
	.quad	0x402256f7c243dccf              # double 9.1698590000000006
	.quad	0x3fe8c6e8f29d40ee              # double 0.774281
	.quad	0x4012f75ff609dcf9              # double 4.7415770000000004
	.quad	0x40135bb4d48882f1              # double 4.8395570000000001
	.quad	0x4015e08aefb2aae3              # double 5.4692800000000004
	.quad	0x40208cf893faf428              # double 8.2753340000000009
	.quad	0x3ffc935fc3b4f616              # double 1.7859799999999999
	.quad	0x40018b8a5ce5b424              # double 2.1931349999999998
	.quad	0x4020c27b2cc70868              # double 8.3798460000000006
	.quad	0x3ff52102795703f3              # double 1.320559
	.quad	0x40208ea11ec918e3              # double 8.2785729999999997
	.quad	0x3ffb2856605ee569              # double 1.6973480000000001
	.quad	0x40231a26a22b3893              # double 9.5510760000000001
	.quad	0x4012932c1f42bb66              # double 4.6437229999999996
	.quad	0x4021c06a098915be              # double 8.8758090000000003
	.quad	0x400fdc90c4dec1c2              # double 3.9826980000000001
	.quad	0x4013f9220ff54089              # double 4.9932939999999997
	.quad	0x401bc37e2c55c960              # double 6.9409109999999998
	.quad	0x3ffba0642396073e              # double 1.726658
	.quad	0x400cef533f42352f              # double 3.6168580000000001
	.quad	0x4022a5d8b60f1b26              # double 9.3239190000000001
	.quad	0x401efb1af3a14cec              # double 7.7452199999999998
	.quad	0x401733947496aad2              # double 5.8003710000000002
	.quad	0x40220a72ead9274e              # double 9.0204079999999998
	.quad	0x400ed1feeb2d0a24              # double 3.8525369999999999
	.quad	0x4012341bb8c32a8d              # double 4.5508870000000003
	.quad	0x401ad878fabda0e0              # double 6.7113990000000001
	.quad	0x3fc2145953586ca9              # double 0.14124600000000001
	.quad	0x40130a26e5471716              # double 4.7599140000000002
	.quad	0x400634289118c198              # double 2.775468
	.quad	0x401dfc2bd7f51efb              # double 7.4962609999999996
	.quad	0x401dc4bdba0a5269              # double 7.4421299999999997
	.quad	0x40132ea9e6eeb702              # double 4.7955699999999997
	.quad	0x40029e963dc486ad              # double 2.3274349999999999
	.quad	0x400f53910c2c5e2d              # double 3.9158040000000001
	.quad	0x402043b01c92ddbe              # double 8.1322030000000005
	.quad	0x401705ee99a62ed3              # double 5.7557929999999997
	.quad	0x401d61a11233df2b              # double 7.3453410000000003
	.quad	0x40044918e325d4a6              # double 2.5356920000000001
	.quad	0x401edcb10342aa9f              # double 7.7155189999999995
	.quad	0x3fe67f993d5347a6              # double 0.70307600000000003
	.quad	0x3fddb5a63f9a49c3              # double 0.46421200000000001
	.quad	0x40180baa9b499d02              # double 6.011393
	.quad	0x4020b126a65cf67b              # double 8.3459979999999998
	.quad	0x400e332df505d0fa              # double 3.7749899999999998
	.quad	0x4007095421c04428              # double 2.8795549999999999
	.quad	0x3fe88d4562e09fe8              # double 0.76724499999999995
	.quad	0x4019943d03968d76              # double 6.3947640000000003
	.quad	0x3feb163dc486ad2e              # double 0.84646500000000002
	.quad	0x401b6b17ce52deca              # double 6.8545829999999999
	.quad	0x3ffd86b7aa25d8d8              # double 1.8453900000000001
	.quad	0x401c379357603926              # double 7.0542730000000002
	.quad	0x40197b59146e4c0e              # double 6.370457
	.quad	0x401416cb966be7b0              # double 5.0222610000000003
	.quad	0x4018243c7d5ed070              # double 6.0353870000000001
	.quad	0x3ff7e90257c914b1              # double 1.4943869999999999
	.quad	0x4018b99fe43675de              # double 6.1812740000000002
	.quad	0x40134b1b79d909f2              # double 4.8233470000000001
	.quad	0x3ffad99cbee807bc              # double 1.6781280000000001
	.quad	0x4012f82cf52b90a8              # double 4.7423590000000004
	.quad	0x4021e6b6bf444e0e              # double 8.9506130000000006
	.quad	0x40136dddb1209edc              # double 4.857291
	.quad	0x3ff5c11a11233df3              # double 1.3596440000000001
	.quad	0x401edae3a3a8e714              # double 7.7137589999999996
	.quad	0x401f0ed288ce703b              # double 7.764475
	.quad	0x4015aae3608d0892              # double 5.4168830000000003
	.quad	0x40227243fe5c91d1              # double 9.2231749999999995
	.quad	0x4018373a365cb35f              # double 6.0539329999999998
	.quad	0x401711deefe4ffc9              # double 5.7674519999999996
	.quad	0x4020ff11f926c7eb              # double 8.4981840000000002
	.quad	0x401c25069a4df480              # double 7.0361580000000004
	.quad	0x4023393293d102bc              # double 9.6117139999999992
	.quad	0x401947542a23bff9              # double 6.3196570000000003
	.quad	0x400ae46e8f29d40f              # double 3.3615390000000001
	.quad	0x3f97af20ea5b530d              # double 0.023129
	.quad	0x4016dcff64cf8d71              # double 5.7158179999999996
	.quad	0x402180705425f202              # double 8.7508569999999999
	.quad	0x40049001d5c31594              # double 2.570316
	.quad	0x4015b99c7bcc2939              # double 5.4312610000000001
	.quad	0x4023384f8f8a4c1f              # double 9.6099820000000004
	.quad	0x4022a6ae18ac9f30              # double 9.3255470000000003
	.quad	0x4000cd7518b0d0ee              # double 2.1003210000000001
	.quad	0x4022dbeb399f5dff              # double 9.4295290000000004
	.quad	0x4017888ca3e7d135              # double 5.8833489999999999
	.quad	0x40225f80fdc1615f              # double 9.1865310000000004
	.quad	0x3febd12231832fcb              # double 0.86927900000000002
	.quad	0x402382314013ec46              # double 9.7542819999999999
	.quad	0x4015f861e92923e6              # double 5.4925610000000002
	.quad	0x4011ad9cf13cee9e              # double 4.4195440000000001
	.quad	0x40114c89b0ee49f5              # double 4.3247439999999999
	.quad	0x401f84228997c3d7              # double 7.8790380000000004
	.quad	0x40204e33eff19503              # double 8.1527399999999997
	.quad	0x4023d42cc2d6a9c5              # double 9.9144039999999993
	.quad	0x400263f8982cb210              # double 2.2988140000000001
	.quad	0x4006a8adeebb341e              # double 2.832363
	.quad	0x3fcc536d655e28aa              # double 0.22129599999999999
	.quad	0x4016e7214f0520d1              # double 5.7257129999999998
	.quad	0x400db1e96c3fc43b              # double 3.7118709999999999
	.quad	0x40002d5cfaacd9e8              # double 2.0221499999999999
	.quad	0x4018d505d0fa58f7              # double 6.2080299999999999
	.quad	0x401d974c8ffb8b26              # double 7.3977529999999998
	.quad	0x40115f3c2dadb835              # double 4.3430030000000004
	.quad	0x401b7cb4289118c2              # double 6.8717810000000004
	.quad	0x3ff736b3bb83cf2d              # double 1.450855
	.quad	0x4023714ff0025bfb              # double 9.7213130000000003
	.quad	0x40203cf1c3265ade              # double 8.1190320000000007
	.quad	0x401eb1758e219653              # double 7.6733000000000002
	.quad	0x3ffefa3875925354              # double 1.9360889999999999
	.quad	0x3fc34ddf86e3b470              # double 0.150814
	.quad	0x40171cdf69878317              # double 5.7781960000000003
	.quad	0x401a015ce9e5e248              # double 6.5013310000000004
	.quad	0x4000452d666a9824              # double 2.0337779999999999
	.quad	0x4017c3b4b2fa93af              # double 5.9411189999999996
	.quad	0x40162c6b8b69552e              # double 5.5433789999999998
	.quad	0x400e693af74cd317              # double 3.8013819999999998
	.quad	0x40123e7ddca4b125              # double 4.5610270000000002
	.quad	0x401576e9bbf0dc77              # double 5.3661260000000004
	.quad	0x3fffeb5f5f0b2852              # double 1.994964
	.quad	0x401f9dac68a936c6              # double 7.9039780000000004
	.quad	0x401cf6f4be835dee              # double 7.241168
	.quad	0x40199b2702a3486f              # double 6.401516
	.quad	0x3ff0a43ed959a30a              # double 1.0400990000000001
	.quad	0x4019ca74c09c3ce2              # double 6.447711
	.quad	0x400631455219a848              # double 2.7740580000000001
	.quad	0x401dc8262456f75e              # double 7.4454580000000004
	.quad	0x3fed0ff10ecb74de              # double 0.908196
	.quad	0x3ffaa4ece9a2c669              # double 1.665265
	.quad	0x401dcd627bf61aa4              # double 7.4505710000000001
	.quad	0x40069cb1cc964628              # double 2.826511
	.quad	0x4012efba01eeed89              # double 4.734108
	.quad	0x4013d05bc01a36e3              # double 4.9534750000000001
	.quad	0x40161674080f98fa              # double 5.5219269999999998
	.quad	0x3ff0909070fbeb9e              # double 1.0352939999999999
	.quad	0x3fecbb55ac03ff69              # double 0.897868
	.quad	0x401e5e6644d87725              # double 7.592187
	.quad	0x400b1694467381d8              # double 3.3860250000000001
	.quad	0x3ff4c11d3671ac15              # double 1.297147
	.quad	0x400fdcab81f969e4              # double 3.9827490000000001
	.quad	0x4013bbfa4c61d862              # double 4.9335719999999998
	.quad	0x3fd348626f60e0eb              # double 0.30129299999999998
	.quad	0x3ff9c5f28848387e              # double 1.610827
	.quad	0x4019e78d4fdf3b64              # double 6.4761249999999997
	.quad	0x4009a5d0fa58f712              # double 3.205965
	.quad	0x3fefae31d712a0ec              # double 0.99001399999999994
	.quad	0x400832849cb252ce              # double 3.024667
	.quad	0x40213a26c3b927d4              # double 8.6135769999999993
	.quad	0x4010e1ad6451b930              # double 4.2203879999999998
	.quad	0x402170183f91e647              # double 8.7189350000000001
	.quad	0x3fe185942917507f              # double 0.54755600000000004
	.quad	0x400e8f6b5d462c34              # double 3.8200289999999999
	.quad	0x40239a80064a9cdc              # double 9.8017579999999995
	.quad	0x401640b2c83ec893              # double 5.5631820000000003
	.quad	0x401a52df9378ee28              # double 6.5809309999999996
	.quad	0x3fe4d6a7ac81d3aa              # double 0.65120299999999998
	.quad	0x3febb5efa615a8df              # double 0.86595900000000003
	.quad	0x4022953c36113405              # double 9.2914750000000002
	.quad	0x40184b1ab0856e69              # double 6.0733439999999996
	.quad	0x401f1521dda059a7              # double 7.7706369999999997
	.quad	0x401a345132f87ad1              # double 6.5510910000000004
	.quad	0x401b44628027d88c              # double 6.8167819999999999
	.quad	0x401cd380cb6c7a7d              # double 7.2065460000000003
	.quad	0x4018f1dd1a21ea36              # double 6.2361950000000004
	.quad	0x400020c49ba5e354              # double 2.016
	.quad	0x40225070da5daf08              # double 9.1571110000000004
	.quad	0x402344117f84449e              # double 9.6329460000000005
	.quad	0x401c598f1d3ed528              # double 7.0874600000000001
	.quad	0x400fa60fe47991bc              # double 3.9560849999999999
	.quad	0x401b121d10b1feeb              # double 6.7676889999999998
	.quad	0x3ffeaab25b317efe              # double 1.916674
	.quad	0x3fe5421e1d2178f7              # double 0.66432100000000005
	.quad	0x4019e3a14cec41dd              # double 6.4722949999999999
	.quad	0x4016d6f1dc50ce4f              # double 5.7099070000000003
	.quad	0x4019308919ef954f              # double 6.2973980000000003
	.quad	0x400e155043e5321e              # double 3.7604069999999998
	.quad	0x401b7c11a11233df              # double 6.8711609999999999
	.quad	0x401c15fe111276fb              # double 7.021477
	.quad	0x4009b3dc8b86b160              # double 3.2128230000000002
	.quad	0x401d6c964628027e              # double 7.3560420000000004
	.quad	0x3ffd5ee675147f13              # double 1.835669
	.quad	0x3fd132096787ce96              # double 0.268679
	.quad	0x3fcccd9620685554              # double 0.225024
	.quad	0x401754cf4a558ea8              # double 5.8328220000000002
	.quad	0x40057754b05b7cfe              # double 2.6832669999999998
	.quad	0x40196ee957470eb2              # double 6.3583119999999997
	.quad	0x3fe3ebdf4c2b51bd              # double 0.62254299999999996
	.quad	0x3ff1c8461f9f01b8              # double 1.1113949999999999
	.quad	0x4019517763e4abe7              # double 6.3295570000000003
	.quad	0x400c902de00d1b71              # double 3.5703999999999998
	.quad	0x40214f0f5a1016ce              # double 8.6544139999999992
	.quad	0x401085f5275ee99a              # double 4.1308179999999997
	.quad	0x401ccc0fcb4f1e4b              # double 7.1992789999999998
	.quad	0x401c2df9378ee286              # double 7.0448959999999996
	.quad	0x40055de37585be1b              # double 2.6708440000000002
	.quad	0x4023e7314ca925ff              # double 9.9515480000000007
	.quad	0x3ff0b4df04ddb552              # double 1.0441579999999999
	.quad	0x4019e383ad9f0a1c              # double 6.4721820000000001
	.quad	0x401f7fbb517a4617              # double 7.8747379999999997
	.quad	0x3ff765625a682b63              # double 1.4622520000000001
	.quad	0x3fc9e9531550ca1d              # double 0.202433
	.quad	0x401c4bb5e0f7fcfc              # double 7.0739359999999998
	.quad	0x400c8452c59fb1e2              # double 3.5646110000000002
	.quad	0x4022571ac14c660a              # double 9.1701259999999998
	.quad	0x4017bfe047d3d428              # double 5.937379
	.quad	0x400484ca4f440af2              # double 2.5648390000000001
	.quad	0x4023325072085b18              # double 9.5982699999999994
	.quad	0x3ff4b02b40f66a55              # double 1.29301
	.quad	0x3feada4f00ef1349              # double 0.83914900000000003
	.quad	0x401f3694ccab3ede              # double 7.8033020000000004
	.quad	0x4019055c52e72da1              # double 6.2552349999999999
	.quad	0x4022b898b2e9ccb8              # double 9.3605400000000003
	.quad	0x4021ba7221858bc6              # double 8.8641520000000007
	.quad	0x4017aababead4f59              # double 5.916728
	.quad	0x4023d67f6f4be836              # double 9.9189410000000002
	.quad	0x3fffc87ca643cc08              # double 1.9864470000000001
	.quad	0x400a92f449129889              # double 3.321755
	.quad	0x3f9b84988094e5d6              # double 0.026873000000000001
	.quad	0x3ffa703f2d3c792d              # double 1.652404
	.quad	0x3ff11cda2b5a20de              # double 1.0695440000000001
	.quad	0x4021a72f76e6106b              # double 8.8265340000000005
	.quad	0x401d2f1ed17c5ef6              # double 7.2960159999999998
	.quad	0x400801fb82c2bd7f              # double 3.0009679999999999
	.quad	0x4021ad5347a5b0ff              # double 8.8385259999999999
	.quad	0x3ffcf9ca5bd944aa              # double 1.8109839999999999
	.quad	0x3fc406c8711d798e              # double 0.15645700000000001
	.quad	0x3ff523e39f77292c              # double 1.3212619999999999
	.quad	0x400ce97e132b55ef              # double 3.6140099999999999
	.quad	0x3fe1a65f0f5a1017              # double 0.55155900000000002
	.quad	0x40165e7685985ad5              # double 5.5922489999999998
	.quad	0x4014783f91e646f1              # double 5.1174299999999997
	.quad	0x4017b090f733a8a4              # double 5.922428
	.quad	0x3ff549adc8fb86f4              # double 1.3304879999999999
	.quad	0x401ab598e10cf5b2              # double 6.6773410000000002
	.quad	0x401cb9a847b24639              # double 7.1813060000000002
	.quad	0x401da2bd3c361134              # double 7.408925
	.quad	0x401992bfdb4cc250              # double 6.3933099999999996
	.quad	0x3fff2513b5bf6a0e              # double 1.9465520000000001
	.quad	0x3ffa5bfbdf090f73              # double 1.6474569999999999
	.quad	0x401d877531db445f              # double 7.3822830000000002
	.quad	0x4020d352c9d16fca              # double 8.4127410000000005
	.quad	0x3ff0b1172ef0ae53              # double 1.0432349999999999
	.quad	0x3ffa89b1fab96f22              # double 1.658617
	.quad	0x400363632c1f42bb              # double 2.4235289999999998
	.quad	0x3fe2bdfd2630ec31              # double 0.58569199999999999
	.quad	0x401d9e3a7daa4fca              # double 7.4045199999999998
	.quad	0x3fc556fb8f57f738              # double 0.166717
	.quad	0x3ff28919ef954eb1              # double 1.1584719999999999
	.quad	0x3fdd52934acaff6d              # double 0.45816499999999999
	.quad	0x401af03ab862b27d              # double 6.7345990000000002
	.quad	0x4010803b3e9a6f82              # double 4.1252259999999996
	.quad	0x401e8b5bb384fd2a              # double 7.6360919999999997
	.quad	0x4001da708ede54b5              # double 2.2316600000000002
	.quad	0x4008f551d68c692f              # double 3.1197849999999998
	.quad	0x401a0631b584b1ab              # double 6.506049
	.quad	0x40069b3f20a73f75              # double 2.8258040000000002
	.quad	0x4021701de2691644              # double 8.7189779999999998
	.quad	0x3fe9b3bd9cae2110              # double 0.80319099999999999
	.quad	0x3ffb3bf0dc768dfc              # double 1.702134
	.quad	0x40218be553ac4f7f              # double 8.7732340000000004
	.quad	0x401de876e1deacc9              # double 7.4770159999999999
	.quad	0x401118bdec5f394b              # double 4.2741619999999996
	.quad	0x3fed18f605ab3aac              # double 0.90929700000000002
	.quad	0x401268655193708b              # double 4.6019490000000003
	.quad	0x401daf8f8a4c1ebd              # double 7.4214460000000004
	.quad	0x4018a45f5ad96a6a              # double 6.16052
	.quad	0x4007e2107b784663              # double 2.9853830000000001
	.quad	0x4023fff69014b59a              # double 9.9999280000000006
	.quad	0x401c2def416bdb1a              # double 7.0448579999999996
	.quad	0x4011701eeed8904f              # double 4.3594929999999996
	.quad	0x400829a459103c8e              # double 3.0203329999999999
	.quad	0x401a2b588e368f08              # double 6.5423299999999998
	.quad	0x401a873365881a15              # double 6.6320319999999997
	.quad	0x4019921c8a7a41e5              # double 6.3926869999999996
	.quad	0x4020d6013660e51d              # double 8.4179779999999997
	.quad	0x4013ffc32ebe596d              # double 4.9997680000000004
	.quad	0x3fb5146e4c0df58c              # double 0.082343
	.quad	0x3ffb08323358f2e0              # double 1.6895009999999999
	.quad	0x4018f8f57f737da6              # double 6.2431239999999999
	.quad	0x3fdaf826edaa92e6              # double 0.42139599999999999
	.quad	0x402182be27179bfe              # double 8.7553570000000001
	.quad	0x4022c5fb0d51f81a              # double 9.3866809999999994
	.quad	0x400a94690de09353              # double 3.3224659999999999
	.quad	0x400f201abd1aa822              # double 3.890676
	.quad	0x40149051c9f72f77              # double 5.1409370000000001
	.quad	0x4009fbbb62413db8              # double 3.247916
	.quad	0x3fe3a2467be553ac              # double 0.61355899999999997
	.quad	0x3ff59973d9ec7000              # double 1.3499639999999999
	.quad	0x4007608d8ec95bff              # double 2.922145
	.quad	0x3fe7a5ebb7739f34              # double 0.73900399999999999
	.quad	0x4020517507e9d94d              # double 8.1590959999999999
	.quad	0x4015b7192ea52ef9              # double 5.4288069999999999
	.quad	0x401e8c432ca57a78              # double 7.6369749999999996
	.quad	0x4011510dbf0563ed              # double 4.3291539999999999
	.quad	0x3fbb76b3bb83cf2d              # double 0.10728
	.quad	0x4005b21ccd962068              # double 2.7119689999999999
	.quad	0x4023916312f4cf4a              # double 9.7839589999999994
	.quad	0x4012d4fdf3b645a2              # double 4.7080000000000002
	.quad	0x40206d069a4df480              # double 8.2129410000000007
	.quad	0x4005fe9af5ba2be0              # double 2.7493189999999998
	.quad	0x3fd53a4723aafff3              # double 0.33168199999999998
	.quad	0x4012433daf8df7a5              # double 4.5656650000000001
	.quad	0x4022bf3c4f3ba776              # double 9.373507
	.quad	0x400c2c46950fc71d              # double 3.5216189999999998
	.quad	0x401c2f359ff4fd6d              # double 7.0461029999999996
	.quad	0x3ffef2702a3486f0              # double 1.9341889999999999
	.quad	0x4019ebfad2999568              # double 6.4804490000000001
	.quad	0x40234b302f72b453              # double 9.6468520000000008
	.quad	0x400200c7c0f45176              # double 2.250381
	.quad	0x4017afcefaa4766c              # double 5.9216879999999996
	.quad	0x401c58b1572580c3              # double 7.086614
	.quad	0x40153a22b3892ee8              # double 5.3067729999999997
	.quad	0x401c4886df82b1f7              # double 7.0708270000000004
	.quad	0x4013b3022dd7a9a0              # double 4.9248130000000003
	.quad	0x401147778dd616f8              # double 4.3197919999999996
	.quad	0x40226640420f6f09              # double 9.1997090000000004
	.quad	0x4015fac36544fe37              # double 5.4948860000000002
	.quad	0x4023ceca25529fe0              # double 9.903886
	.quad	0x4005543fa2ad3e92              # double 2.666137
	.quad	0x402366f99806f263              # double 9.7011230000000008
	.quad	0x4000e76fb09203a3              # double 2.1130059999999999
	.quad	0x4009fe093532e7b4              # double 3.2490410000000001
	.quad	0x3ffbd818c5c9a34d              # double 1.7402580000000001
	.quad	0x40186116a8b8f14e              # double 6.0948130000000003
	.quad	0x40076ec95bff0457              # double 2.9290949999999998
	.quad	0x401f1e6a76965f52              # double 7.7797029999999996
	.quad	0x400fb124d099e0e7              # double 3.9614959999999999
	.quad	0x4022fddf2239e6ac              # double 9.4958430000000006
	.quad	0x401d5faeff5c6c12              # double 7.3434410000000003
	.quad	0x402084d3bf2f5558              # double 8.2594279999999998
	.quad	0x3fedfe28240b7803              # double 0.93727499999999997
	.quad	0x4018763ed0f62739              # double 6.1154739999999999
	.quad	0x400e33b96af038e3              # double 3.7752560000000002
	.quad	0x401a6ecaab8a5ce6              # double 6.6081950000000003
	.quad	0x401b9ab474107315              # double 6.9010790000000002
	.quad	0x4022f0dd82fd75e2              # double 9.47044
	.quad	0x4012168943e10060              # double 4.5220079999999996
	.quad	0x40111a4ebdd334c6              # double 4.2756910000000001
	.quad	0x401e6a0cf1800a7c              # double 7.6035649999999997
	.quad	0x3fb0b2745bf26f1e              # double 0.065223000000000003
	.quad	0x4022692599ed7c70              # double 9.2053650000000005
	.quad	0x401af77f27fe4bcb              # double 6.7416960000000001
	.quad	0x4021982645e4e69f              # double 8.797167
	.quad	0x4020545436b8f9b1              # double 8.1647049999999997
	.quad	0x3ff72dca07f66e87              # double 1.4486790000000001
	.quad	0x400f8007570c5650              # double 3.9375140000000002
	.quad	0x4019d7e34b945309              # double 6.4608280000000002
	.quad	0x4015141b75a74c0a              # double 5.2696360000000002
	.quad	0x40203329e4d5d80e              # double 8.0999289999999995
	.quad	0x4021851eb851eb85              # double 8.7599999999999998
	.quad	0x4011c0d2c386d2ed              # double 4.4383039999999996
	.quad	0x400a43fb3743632c              # double 3.2831939999999999
	.quad	0x4020c7e90ff97247              # double 8.3904499999999995
	.quad	0x401a99984a0e410b              # double 6.6499949999999997
	.quad	0x401c4ddbdb5d8948              # double 7.0760339999999999
	.quad	0x401e3f4a98aa8651              # double 7.561808
	.quad	0x4017d16a48733659              # double 5.9545070000000004
	.quad	0x4013548e8a71de6a              # double 4.8325750000000003
	.quad	0x4013abe7afa72218              # double 4.9178759999999997
	.quad	0x3fe1caff6d330942              # double 0.55603000000000002
	.quad	0x4016dbb6ed677708              # double 5.7145650000000003
	.quad	0x402361348b220792              # double 9.6898540000000004
	.quad	0x401561c219eb6391              # double 5.3454670000000002
	.quad	0x40239146a1a500d6              # double 9.7837420000000002
	.quad	0x40197b3e1437c569              # double 6.3703539999999998
	.quad	0x3ff1daf9ebe9c886              # double 1.115961
	.quad	0x3ffa2d4e4c942d49              # double 1.636061
	.quad	0x40216c562e09fe87              # double 8.7115950000000009
	.quad	0x400a445a1cac0831              # double 3.2833749999999999
	.quad	0x4022fb3f85510d39              # double 9.4907190000000003
	.quad	0x402207ab324851a8              # double 9.0149779999999993
	.quad	0x400a127807789a46              # double 3.2590180000000002
	.quad	0x400115feda661284              # double 2.1357400000000002
	.quad	0x40020b94d9407896              # double 2.255655
	.quad	0x40174f1886df82b2              # double 5.827242
	.quad	0x401b53f52fc2656b              # double 6.8319900000000002
	.quad	0x401f14827b6fe2e7              # double 7.770029
	.quad	0x401e87a02fb5d031              # double 7.6324469999999999
	.quad	0x40236f4e4430b179              # double 9.7173940000000005
	.quad	0x40133a82e87d2c7c              # double 4.8071400000000004
	.quad	0x401f4fd1dcd7060c              # double 7.8279490000000003
	.quad	0x40079f78359bc340              # double 2.9528660000000002
	.quad	0x4016e9d1b2e59afa              # double 5.7283390000000001
	.quad	0x40128077036c9c0b              # double 4.6254540000000004
	.quad	0x4016ee5de15ca6ca              # double 5.73278
	.quad	0x3feaac2bd7f51efb              # double 0.83351699999999995
	.quad	0x401f2ad9f0a1be2b              # double 7.7918469999999997
	.quad	0x400dec764adff823              # double 3.7404600000000001
	.quad	0x4020434b2fa93af7              # double 8.1314329999999995
	.quad	0x400b3e39f77292c5              # double 3.4053840000000002
	.quad	0x401348405b39e27a              # double 4.8205580000000001
	.quad	0x3ff09f6a93f290ac              # double 1.0389200000000001
	.quad	0x40127d2674080f99              # double 4.622217
	.quad	0x4017c219a847b246              # double 5.9395509999999998
	.quad	0x3ffbdcb46bacf744              # double 1.7413829999999999
	.quad	0x401300079a2834d2              # double 4.7500289999999996
	.quad	0x401fe5553ef6b5d4              # double 7.9739579999999997
	.quad	0x402110750c1b9735              # double 8.5321429999999996
	.quad	0x3fe41d25aab47410              # double 0.62855799999999995
	.quad	0x3fea08ebcc6c54bd              # double 0.81358900000000001
	.quad	0x4013a4ad362e9036              # double 4.9108169999999998
	.quad	0x401db8a82a5614e0              # double 7.4303290000000004
	.quad	0x4010fb0079a2834d              # double 4.2451189999999999
	.quad	0x4020c3779e9d0e99              # double 8.3817719999999998
	.quad	0x4021387075b3e143              # double 8.6102329999999991
	.quad	0x4020ae26d4801f75              # double 8.3401399999999999
	.quad	0x4019fa06e9ff0cbb              # double 6.494167
	.quad	0x40196c011d3671ac              # double 6.3554729999999999
	.quad	0x401546c97d8cf399              # double 5.3191280000000001
	.quad	0x4002f7995ee136e7              # double 2.3708979999999999
	.quad	0x40143383ad9f0a1c              # double 5.0503070000000001
	.quad	0x4023c742bb6672fc              # double 9.8891810000000006
	.quad	0x40232ed288ce703b              # double 9.59145
	.quad	0x4014757646ae3a3b              # double 5.1147090000000004
	.quad	0x4009f84c271fff7a              # double 3.2462390000000001
	.quad	0x40112a294141e9af              # double 4.2911729999999997
	.quad	0x40102295208e1501              # double 4.0337719999999999
	.quad	0x4010df3a9b068124              # double 4.2179970000000004
	.quad	0x400232c59fb1e18f              # double 2.274791
	.quad	0x401ba225742dcf46              # double 6.9083459999999999
	.quad	0x400674784230fcf8              # double 2.80687
	.quad	0x4000f4bad7d7c2ca              # double 2.119497
	.quad	0x3ff156fda836eb4f              # double 1.0837380000000001
	.quad	0x401cfa7829068987              # double 7.244599
	.quad	0x3ff8629845dc8323              # double 1.524071
	.quad	0x40128a372606fac6              # double 4.634976
	.quad	0x4001c0e1f7d73c92              # double 2.2191809999999998
	.quad	0x4013a5475a31a4be              # double 4.9114050000000002
	.quad	0x3ffb7734b51372a4              # double 1.7166030000000001
	.quad	0x401a7b5d462c343b              # double 6.6204729999999996
	.quad	0x40216787f023e9ea              # double 8.7022089999999999
	.quad	0x3ff0717ce52deca2              # double 1.0277069999999999
	.quad	0x3ffbb48e4755ffe7              # double 1.731581
	.quad	0x4010c4bc27631b58              # double 4.1921239999999997
	.quad	0x4019d4fa8b4bf8fd              # double 6.4579870000000001
	.quad	0x4020db92e1ef73c1              # double 8.4288550000000004
	.quad	0x4001485db76b3bb8              # double 2.1603349999999999
	.quad	0x4020e16b3354c122              # double 8.4402709999999992
	.quad	0x401524cc6822ff09              # double 5.2859360000000004
	.quad	0x4021a8dcfcc5b8dc              # double 8.8298109999999994
	.quad	0x40235aae6c8f7553              # double 9.6771119999999992
	.quad	0x3ff4c8a58b3f63c3              # double 1.298986
	.quad	0x40191b08dd1e53a8              # double 6.2764009999999999
	.quad	0x4018b7f51efb6dca              # double 6.179646
	.quad	0x400908feac42e98a              # double 3.1293920000000002
	.quad	0x400d1992c8c50050              # double 3.6374870000000001
	.quad	0x401716266fd651b1              # double 5.7716310000000002
	.quad	0x4023d8283d35eb74              # double 9.9221819999999993
	.quad	0x3fc9c18b502ababf              # double 0.20121900000000001
	.quad	0x40173fb9bed30f06              # double 5.8122319999999998
	.quad	0x3ff6624894c447c3              # double 1.398995
	.quad	0x4014a65f0f5a1017              # double 5.1624720000000002
	.quad	0x401998198f1d3ed5              # double 6.3985349999999999
	.quad	0x3fef5a8bd230b9dc              # double 0.97980299999999997
	.quad	0x401cb48cf7caa759              # double 7.1763190000000003
	.quad	0x3ff99e55c0fcb4f2              # double 1.601156
	.quad	0x4023eb56da0168b6              # double 9.9596470000000004
	.quad	0x401928958d9b5e96              # double 6.2896330000000003
	.quad	0x40016663c74fb54a              # double 2.174995
	.quad	0x40136cce5f7403de              # double 4.8562560000000001
	.quad	0x4017e620685553ef              # double 5.9747329999999996
	.quad	0x40227ce8b7e4de3c              # double 9.2439630000000008
	.quad	0x4005c8f8e7ddca4b              # double 2.723131
	.quad	0x402031709310129d              # double 8.0965620000000005
	.quad	0x3ff88c76d117b528              # double 1.5342929999999999
	.quad	0x401aeb23dd54da4d              # double 6.7296290000000001
	.quad	0x4013d441355475a3              # double 4.9572799999999999
	.quad	0x3ff0e35f80991794              # double 1.0555110000000001
	.quad	0x4016658c8eef1bac              # double 5.5991689999999998
	.quad	0x401f81351159c497              # double 7.8761789999999995
	.quad	0x401d455d1c3ac92a              # double 7.3177380000000003
	.quad	0x3fc98f68be2f7b18              # double 0.19968900000000001
	.quad	0x4021aa1ec4e7253e              # double 8.8322660000000006
	.quad	0x4009c0b6f9fcb0c0              # double 3.2190989999999999
	.quad	0x401d5822ff08893b              # double 7.3360709999999996
	.quad	0x401e35350092ccf7              # double 7.5519600000000002
	.quad	0x401b5dbe7f2c300a              # double 6.8415470000000003
	.quad	0x4002148cb4aec8d6              # double 2.2600340000000001
	.quad	0x4011ce83e425aee6              # double 4.4516749999999998
	.quad	0x401d84cd31769a91              # double 7.3796889999999999
	.quad	0x401f11ac57e23f25              # double 7.7672590000000001
	.quad	0x3fd96e2a80064a9d              # double 0.39734900000000001
	.quad	0x401f3dc1e7967caf              # double 7.8103100000000003
	.quad	0x4019a18266772d5e              # double 6.407724
	.quad	0x402011c0ca600b03              # double 8.0346740000000008
	.quad	0x4010c9ffd60e94ee              # double 4.1972649999999998
	.quad	0x3ffd926202539757              # double 1.848238
	.quad	0x3ff6e37de939eadd              # double 1.4305399999999999
	.quad	0x4022bd2ce032db1f              # double 9.3694830000000006
	.quad	0x4011a2ee84ad794a              # double 4.4091129999999996
	.quad	0x4023b499d0203e64              # double 9.8527360000000001
	.quad	0x3ff373860999dcb5              # double 1.2157039999999999
	.quad	0x4015d0d3cff64cf9              # double 5.4539330000000001
	.quad	0x3ff04e13f4a98aa8              # double 1.0190619999999999
	.quad	0x4005e33df2a9d628              # double 2.7359580000000001
	.quad	0x4011689b0ee49f51              # double 4.3521539999999996
	.quad	0x4014614d2f5dbb9d              # double 5.095021
	.quad	0x3fed045564b662fe              # double 0.906779
	.quad	0x3fe15308bb906467              # double 0.54138600000000003
	.quad	0x4023016ededaec4a              # double 9.5027989999999996
	.quad	0x400f144e50c5eb31              # double 3.8849149999999999
	.quad	0x400e4ee9dd7ecbb8              # double 3.788532
	.quad	0x4019832ce89656ef              # double 6.378101
	.quad	0x4021a2bb44e50c5f              # double 8.8178350000000005
	.quad	0x3fd7904b3c3e74b0              # double 0.36818200000000001
	.quad	0x40233bcbe61cffeb              # double 9.6167899999999999
	.quad	0x401a8b1ab0856e69              # double 6.6358439999999996
	.quad	0x402122b66b6177ea              # double 8.5677979999999998
	.quad	0x3f9ec31162281345              # double 0.030041000000000002
	.quad	0x401b4a50d6b228dd              # double 6.8225740000000004
	.quad	0x4008d09289dadfb5              # double 3.101842
	.quad	0x400ffc7d5ed06fef              # double 3.9982859999999998
	.quad	0x40054a0232096788              # double 2.6611370000000001
	.quad	0x40108a9f7b5aea31              # double 4.1353739999999997
	.quad	0x4020f723033a4724              # double 8.4826890000000005
	.quad	0x3fc3ce2089e34331              # double 0.154728
	.quad	0x402014985f06f694              # double 8.0402249999999995
	.quad	0x4017429f59ccfaf0              # double 5.815061
	.quad	0x4016f7ab324851a8              # double 5.7418639999999996
	.quad	0x401261eeaa6d2674              # double 4.595637
	.quad	0x4019e14a4d2b2bfe              # double 6.4700100000000003
	.quad	0x400095f99c38b04b              # double 2.0732300000000001
	.quad	0x40076f5fd47bedb7              # double 2.9293819999999999
	.quad	0x40136a7b0b391926              # double 4.8539849999999998
	.quad	0x401c7af533f42353              # double 7.1200760000000001
	.quad	0x401e8382a12f9011              # double 7.6284280000000004
	.quad	0x4004ad8ec95bff04              # double 2.5847449999999998
	.quad	0x4023d2400fba8827              # double 9.9106450000000005
	.quad	0x402179b3aeee9574              # double 8.7376989999999992
	.quad	0x4023d620ab713272              # double 9.9182179999999995
	.quad	0x40121616b54e2b06              # double 4.5215709999999998
	.quad	0x40239267e846a5d7              # double 9.7859490000000004
	.quad	0x401fa0c176577532              # double 7.9069880000000001
	.quad	0x40226afc69728a61              # double 9.2089569999999998
	.quad	0x3feeba8a3f8982cb              # double 0.96027099999999998
	.quad	0x4002b090f733a8a4              # double 2.336214
	.quad	0x3ff348c8259e1f3a              # double 1.2052689999999999
	.quad	0x401b4fbeb9e492bc              # double 6.8278759999999998
	.quad	0x4001e39e6ab9b23e              # double 2.2361420000000001
	.quad	0x401e9b3d07c84b5e              # double 7.6516000000000002
	.quad	0x402218f733a8a3f9              # double 9.0487610000000007
	.quad	0x40043c11e42e1262              # double 2.529331
	.quad	0x40170497fa5d28d0              # double 5.754486
	.quad	0x401e0fcdee34fc61              # double 7.5154339999999999
	.quad	0x401aecaf2d7f950c              # double 6.7311370000000004
	.quad	0x402074e746cb966c              # double 8.2283270000000001
	.quad	0x4003ba6d698fe692              # double 2.4660289999999998
	.quad	0x3fe67d41743e963e              # double 0.70279000000000003
	.quad	0x401ceb35f3d7d391              # double 7.229698
	.quad	0x3f87dbf487fcb924              # double 0.011650000000000001
	.quad	0x4011dfdb8fde2ef5              # double 4.4686110000000001
	.quad	0x400db43419e30015              # double 3.71299
	.quad	0x401cddc1615ebfa9              # double 7.216558
	.quad	0x40127167ec7863bf              # double 4.6107480000000001
	.quad	0x4015b01b43526528              # double 5.4219790000000003
	.quad	0x3fcf2e9ccb7d4174              # double 0.24360999999999999
	.quad	0x401b0f533f42352f              # double 6.7649660000000003
	.quad	0x401d7b60ae9680e0              # double 7.3704859999999996
	.quad	0x4020dec311622813              # double 8.4350819999999995
	.quad	0x401191aa821f2991              # double 4.392252
	.quad	0x400bd54195cc857f              # double 3.4791289999999999
	.quad	0x401a55043e5321e6              # double 6.583024
	.quad	0x400d8f9ca5bd944b              # double 3.6951230000000002
	.quad	0x4023cd1a21ea3593              # double 9.9005899999999993
	.quad	0x3ffb1df761cbccf3              # double 1.6948160000000001
	.quad	0x400a91c8eabffcdb              # double 3.3211840000000001
	.quad	0x3febf0bf1a5ca298              # double 0.87313799999999997
	.quad	0x40158f78feef5ec8              # double 5.39011
	.quad	0x40103189bd8383ae              # double 4.0483770000000003
	.quad	0x401d55f78359bc34              # double 7.333952
	.quad	0x4022f5188f42fe82              # double 9.4787029999999994
	.quad	0x40212cee5abc0e39              # double 8.5877560000000006
	.quad	0x400c38eeae9ee45c              # double 3.5277989999999999
	.quad	0x3fff6c13b9f127f6              # double 1.963886
	.quad	0x4014ccdc8754f377              # double 5.2000599999999997
	.quad	0x40151b11c6d1e109              # double 5.2764350000000002
	.quad	0x402034c76d117b53              # double 8.1030840000000008
	.quad	0x40163705425f2021              # double 5.553731
	.quad	0x3fc812e83a109d06              # double 0.18807699999999999
	.quad	0x401f6035371971c1              # double 7.8439529999999999
	.quad	0x3ff1f822bbecaab9              # double 1.1230800000000001
	.quad	0x4018835371971c11              # double 6.1282480000000001
	.quad	0x40111567125dd096              # double 4.2709010000000003
	.quad	0x3fe35ad106ee30cb              # double 0.60483600000000004
	.quad	0x3fe479c62a1b5c7d              # double 0.63986500000000002
	.quad	0x400914af4f0d844d              # double 3.1351
	.quad	0x400d4c450268900c              # double 3.6622409999999999
	.quad	0x3ff063b9ae0c1765              # double 1.0243469999999999
	.quad	0x40232ed0d49949e9              # double 9.5914370000000008
	.quad	0x40017018e757928e              # double 2.179735
	.quad	0x40057f865d7cb2d9              # double 2.687268
	.quad	0x3ff82774eebf65dc              # double 1.509633
	.quad	0x401a63c07ee0b0af              # double 6.5974139999999997
	.quad	0x3fe796e7a311e860              # double 0.73717100000000002
	.quad	0x3ff2193b3a68b19a              # double 1.1311599999999999
	.quad	0x3fc1c67dfe32a066              # double 0.13886999999999999
	.quad	0x4021d376922d948e              # double 8.9130140000000004
	.quad	0x4017729f59ccfaf0              # double 5.861936
	.quad	0x400efcb1465e8922              # double 3.8733849999999999
	.quad	0x3fce306e5cd4ed2d              # double 0.23585300000000001
	.quad	0x3ffdd1d798d8a97a              # double 1.863731
	.quad	0x3ffb59b8023a6ce3              # double 1.7094039999999999
	.quad	0x40111a116659d12d              # double 4.2754570000000003
	.quad	0x4023d2c450268901              # double 9.9116540000000004
	.quad	0x3fd7aa9717df19d6              # double 0.36978699999999998
	.quad	0x4012fc5718eb8950              # double 4.7464259999999996
	.quad	0x3fdbcd74927913e8              # double 0.434415
	.quad	0x40229f985271bcdc              # double 9.3117090000000004
	.quad	0x402134983d790753              # double 8.6027240000000003
	.quad	0x3fa058793dd97f63              # double 0.031925000000000002
	.quad	0x401fa47bedb72820              # double 7.9106290000000001
	.quad	0x40179faeff5c6c12              # double 5.9059410000000003
	.quad	0x4023a1a0ad8a1166              # double 9.8156789999999994
	.quad	0x401a97518b0d0edc              # double 6.6477719999999998
	.quad	0x3fe2c17225b749ae              # double 0.58611400000000002
	.quad	0x400a7e518f3eccc4              # double 3.3116789999999998
	.quad	0x3ffe07b890d5a5b9              # double 1.8768849999999999
	.quad	0x40126da1a93293d1              # double 4.607062
	.quad	0x4020c2a411c2a023              # double 8.3801579999999998
	.quad	0x401daf29d40ee06e              # double 7.4210580000000004
	.quad	0x3fad50ca1cef2410              # double 0.057257000000000002
	.quad	0x4015322d948dc11e              # double 5.2990019999999998
	.quad	0x40069dccea28fe26              # double 2.827051
	.quad	0x3feac10b630a9153              # double 0.83606499999999995
	.quad	0x3fd6f30e7ff583a5              # double 0.35858499999999999
	.quad	0x40222f02602c9082              # double 9.0918150000000004
	.quad	0x3ffbd1212513b5bf              # double 1.7385569999999999
	.quad	0x4002de2046c764ae              # double 2.35846
	.quad	0x3ff49e03f705857b              # double 1.288578
	.quad	0x400a99620685553f              # double 3.324894
	.quad	0x40038a9ac36544fe              # double 2.4426779999999999
	.quad	0x3ffc4854cdb7ae58              # double 1.7676590000000001
	.quad	0x4022521fd1569f49              # double 9.160399
	.quad	0x401c97e56473471f              # double 7.1483359999999996
	.quad	0x3ffcd37e2c55c960              # double 1.801634
	.quad	0x3fe3b3fc86cebbba              # double 0.61572099999999996
	.quad	0x400779841aac53b1              # double 2.9343340000000002
	.quad	0x401a0c8eef1bac2e              # double 6.5122640000000001
	.quad	0x3ff77c7607c419a0              # double 1.467886
	.quad	0x4010c5675579af19              # double 4.1927770000000004
	.quad	0x401ac00b45ae5ffa              # double 6.6875429999999998
	.quad	0x4021606bbdbe3c10              # double 8.6883219999999994
	.quad	0x401d2e6ab9b23dd5              # double 7.2953289999999997
	.quad	0x40238eece13f4a99              # double 9.7791510000000005
	.quad	0x40078955b4677b39              # double 2.9420579999999998
	.quad	0x401f0f533f42352f              # double 7.7649660000000002
	.quad	0x4003064c2f837b4a              # double 2.3780749999999999
	.quad	0x4003531337eb28d8              # double 2.4155639999999998
	.quad	0x40237d9bc33f8551              # double 9.7453289999999999
	.quad	0x40227eb356da0169              # double 9.2474620000000005
	.quad	0x4007da187a4a48f9              # double 2.9814919999999998
	.quad	0x4019b446b69db65f              # double 6.4260510000000002
	.quad	0x4012cde33269df98              # double 4.7010620000000003
	.quad	0x40022ba6aca79357              # double 2.2713139999999998
	.quad	0x3ff25a6a44417870              # double 1.1470739999999999
	.quad	0x40147ff1950331e4              # double 5.1249450000000003
	.quad	0x40115640a6b93ccd              # double 4.3342309999999999
	.quad	0x4016701a79fec99f              # double 5.6094759999999999
	.quad	0x401564998d045fe1              # double 5.3482419999999999
	.quad	0x3febaa8c9b845565              # double 0.86456900000000003
	.quad	0x4021ee7685985ad5              # double 8.9657479999999996
	.quad	0x401068f75536933a              # double 4.102506
	.quad	0x40236ad666a98245              # double 9.7086670000000001
	.quad	0x402217727136a401              # double 9.045795
	.quad	0x40021d72bcb5fe54              # double 2.2643789999999999
	.quad	0x40209f16b11c6d1e              # double 8.3107199999999999
	.quad	0x4011f6801711947d              # double 4.490723
	.quad	0x402388d2a1f8e3ac              # double 9.7672319999999999
	.quad	0x4010c071c53f39d2              # double 4.1879340000000003
	.quad	0x401cb763e4abe6a3              # double 7.1790919999999998
	.quad	0x4014bb5aea3161a2              # double 5.1829640000000001
	.quad	0x40232b1209edbf8c              # double 9.5841220000000006
	.quad	0x4009ee5471715c64              # double 3.2413720000000001
	.quad	0x40223277c45cbbc3              # double 9.0985700000000005
	.quad	0x400c9ccfaeff5c6c              # double 3.576568
	.quad	0x3ffd04d76ab58080              # double 1.813682
	.quad	0x40165649906cca2e              # double 5.5842650000000003
	.quad	0x4013ade7ea5f84cb              # double 4.9198300000000001
	.quad	0x40081f162ae4b018              # double 3.0151789999999998
	.quad	0x400f241248d7e026              # double 3.8926129999999999
	.quad	0x400951e42e126202              # double 3.1649859999999999
	.quad	0x401a5c56d5cfaace              # double 6.5901750000000003
	.quad	0x4023d87a28bb0a2d              # double 9.9228070000000005
	.quad	0x4022a9409a240315              # double 9.3305710000000008
	.quad	0x401fff57f737da62              # double 7.9993590000000001
	.quad	0x401db52c9d16fc9c              # double 7.4269280000000002
	.quad	0x4015f6da0168b5cc              # double 5.491066
	.quad	0x40198311a543f1c7              # double 6.3779969999999997
	.quad	0x401a6b8cb8e086be              # double 6.605029
	.quad	0x40153a87e38eb032              # double 5.3071590000000004
	.quad	0x3fe0280cf9e3864d              # double 0.50488900000000003
	.quad	0x4022bf5b5fa22707              # double 9.3737440000000002
	.quad	0x4018a87f88765ba7              # double 6.1645490000000001
	.quad	0x3fdd25d4a5df223a              # double 0.45543400000000001
	.quad	0x40207fb24638c975              # double 8.2494069999999997
	.quad	0x4023ba9da597d49d              # double 9.8644839999999991
	.quad	0x40207a7b2cc70868              # double 8.2392210000000006
	.quad	0x401c44ca4f440af2              # double 7.0671780000000002
	.quad	0x3fd96b441bb8c32b              # double 0.39717200000000003
	.quad	0x4011aa4e7ab75643              # double 4.416315
	.quad	0x4020ca0d130df9be              # double 8.3946310000000004
	.quad	0x400b0a76965f5276              # double 3.380109
	.quad	0x401db93d102bc72e              # double 7.4308969999999999
	.quad	0x401f9996b76709fa              # double 7.8999889999999997
	.quad	0x4021904230fcf80e              # double 8.7817550000000004
	.quad	0x3ffa73f42352eb5f              # double 1.6533089999999999
	.quad	0x3fe4f952d234eb9a              # double 0.65543499999999999
	.quad	0x402122bde3fbbd7b              # double 8.5678549999999998
	.quad	0x40232e92f6e8294a              # double 9.5909650000000006
	.quad	0x4015079d909f1f15              # double 5.2574370000000004
	.quad	0x400dd33c1ce6c094              # double 3.7281420000000001
	.quad	0x4015971327243138              # double 5.3975340000000003
	.quad	0x3ff86801711947d0              # double 1.5253920000000001
	.quad	0x40002eba27ae9ab3              # double 2.0228160000000002
	.quad	0x4023a5f0d413122b              # double 9.8241029999999991
	.quad	0x3fff9ff0cbaf965b              # double 1.976548
	.quad	0x40200b9cb6848beb              # double 8.0226799999999994
	.quad	0x402145c9c4da9004              # double 8.6363050000000001
	.quad	0x4023de71cda2b5a2              # double 9.9344619999999999
	.quad	0x4020f0d2a1f8e3ac              # double 8.4703569999999999
	.quad	0x4020fd7a56de3327              # double 8.4950740000000007
	.quad	0x400f66466b1e5c0c              # double 3.9249390000000002
	.quad	0x3ff09529fe004b7f              # double 1.0364169999999999
	.quad	0x40238b2f44912989              # double 9.7718450000000007
	.quad	0x40209f640639d5e5              # double 8.3113100000000006
	.quad	0x401c0f1b69121251              # double 7.0147529999999998
	.quad	0x3fede8576cce5f74              # double 0.93461199999999999
	.quad	0x401b2494d50ebaae              # double 6.7857240000000001
	.quad	0x3ffec9d6adf71eb0              # double 1.924277
	.quad	0x4016be158750c1b9              # double 5.6856289999999996
	.quad	0x3ff93bafd976ff3b              # double 1.577072
	.quad	0x401e4b417ca2120e              # double 7.5734919999999999
	.quad	0x401f7e9424e59296              # double 7.8736119999999996
	.quad	0x402332bffcdab192              # double 9.5991210000000002
	.quad	0x4002f5e5aff2a173              # double 2.3700670000000001
	.quad	0x4020ebe3193f6c27              # double 8.4607170000000007
	.quad	0x3fb1351159c49774              # double 0.067215999999999998
	.quad	0x402112b1704ff434              # double 8.5365099999999998
	.quad	0x401d4759253543af              # double 7.3196760000000003
	.quad	0x400f3dba908a265f              # double 3.905141
	.quad	0x3feebd25247cb70b              # double 0.96058900000000002
	.quad	0x4009257c914b167f              # double 3.1433040000000001
	.quad	0x40236827b6fe2e6f              # double 9.7034280000000006
	.quad	0x3ffd28ccdd93c46e              # double 1.8224610000000001
	.quad	0x40091890d5a5b963              # double 3.1369950000000002
	.quad	0x4021fc9ea9a3d2d8              # double 8.9933979999999991
	.quad	0x40170a797891e215              # double 5.7602289999999998
	.quad	0x3ff6a25d8d79d0a6              # double 1.4146399999999999
	.quad	0x4007e2c98e53eb3a              # double 2.9857360000000002
	.quad	0x4014c7a5b0ff10ed              # double 5.1949680000000003
	.quad	0x4009748909289dae              # double 3.181902
	.quad	0x4021e754b05b7cfe              # double 8.9518179999999994
	.quad	0x4011de7ea5f84cad              # double 4.4672799999999997
	.quad	0x401fe438d1d8a548              # double 7.9728729999999998
	.quad	0x40231288051c9f73              # double 9.536194
	.quad	0x3ff775d56f32bdc2              # double 1.4662679999999999
	.quad	0x40079e468cac4b4d              # double 2.952283
	.quad	0x3ff403eb7cbb3c82              # double 1.2509570000000001
	.quad	0x402232e1049235f8              # double 9.0993729999999999
	.quad	0x4023b116a8b8f14e              # double 9.8458760000000005
	.quad	0x40209313165d3997              # double 8.287255
	.quad	0x401602602c9081c3              # double 5.5023200000000001
	.quad	0x4021f46759ab6d01              # double 8.9773510000000005
	.quad	0x40136f5d35653c9b              # double 4.8587540000000002
	.quad	0x3ffd357e670e2c13              # double 1.8255600000000001
	.quad	0x4023dd4152b0a6fc              # double 9.9321389999999993
	.quad	0x3ff253953dea465a              # double 1.1454059999999999
	.quad	0x4021f5cf67b1c001              # double 8.9800979999999999
	.quad	0x401aaf7121ab4b73              # double 6.6713300000000002
	.quad	0x400119ed7c6fbd27              # double 2.1376599999999999
	.quad	0x40119ea8112ba16e              # double 4.4049379999999996
	.quad	0x401798893b7d8490              # double 5.8989609999999999
	.quad	0x401d22fd75e2046c              # double 7.2841699999999996
	.quad	0x4012bff8ec0f8833              # double 4.6874729999999998
	.quad	0x401c06d82ba5a038              # double 7.0066839999999999
	.quad	0x401f7baba7b9170d              # double 7.8707719999999996
	.quad	0x40166523b3636f3b              # double 5.5987689999999999
	.quad	0x4000f930be0ded29              # double 2.1216750000000002
	.quad	0x3fd6387160956c0d              # double 0.34719499999999998
	.quad	0x4007311ada76d97b              # double 2.8989769999999999
	.quad	0x4021689d6adf71eb              # double 8.704326
	.quad	0x401ed60913a4f872              # double 7.7090189999999996
	.quad	0x3ff73193f6c2699c              # double 1.4496039999999999
	.quad	0x3fe5ed84d338f798              # double 0.68524399999999996
	.quad	0x401a022813448063              # double 6.5021060000000004
	.quad	0x400983382e44b6e9              # double 3.1890719999999999
	.quad	0x40131f48c2e770bd              # double 4.780551
	.quad	0x4019a0010c6f7a0b              # double 6.4062539999999997
	.quad	0x400992990f301eac              # double 3.1965810000000001
	.quad	0x40029cc1871e6cd3              # double 2.3265410000000002
	.quad	0x40012b7dc7abfb9c              # double 2.146236
	.quad	0x4014e014b599aa61              # double 5.2188290000000004
	.quad	0x401ec3d6c7219221              # double 7.691249
	.quad	0x402126b4c7f34938              # double 8.5755979999999994
	.quad	0x401074abe6a337a8              # double 4.113937
	.quad	0x401153cf70153bd1              # double 4.3318459999999996
	.quad	0x4019a8869c66d374              # double 6.4145760000000003
	.quad	0x40105d438d1d8a55              # double 4.0910780000000004
	.quad	0x40084084a515ce9e              # double 3.0315029999999998
	.quad	0x4023f61672324c83              # double 9.9806399999999992
	.quad	0x3fd314ca925fe975              # double 0.29814400000000002
	.quad	0x3ffe732acfb762d8              # double 1.9031169999999999
	.quad	0x3fe7fd9dba908a26              # double 0.74970899999999996
	.quad	0x401a08a6dacabc51              # double 6.5084489999999997
	.quad	0x40206eb52c9d16fd              # double 8.2162260000000007
	.quad	0x400e45d4a5df223a              # double 3.784097
	.quad	0x3fe69b994e1a3f46              # double 0.70649399999999996
	.quad	0x40154d15f02c4d66              # double 5.3252790000000001
	.quad	0x3fe522749f0e4da1              # double 0.66045600000000004
	.quad	0x3fe49a7e30878748              # double 0.64385899999999996
	.quad	0x4021b33e35c5b4ab              # double 8.8500840000000007
	.quad	0x40203dcdf6987831              # double 8.1207119999999993
	.quad	0x401b76ba0620ab71              # double 6.8659439999999998
	.quad	0x400e463d816aceab              # double 3.784297
	.quad	0x400e3bfc6540cc79              # double 3.77929
	.quad	0x3fdbe3eaf6837f7c              # double 0.43578600000000001
	.quad	0x3ff57c2656abde40              # double 1.3428100000000001
	.quad	0x3fb3a604e1e71045              # double 0.076752000000000001
	.quad	0x3fadc31593e5fb72              # double 0.058129
	.quad	0x4021697ebaf10236              # double 8.7060449999999996
	.quad	0x3fe964430b178b37              # double 0.793489
	.quad	0x4000919ef954eb14              # double 2.0711040000000001
	.quad	0x401ceec8d5c74752              # double 7.2331880000000002
	.quad	0x401996052502eec8              # double 6.3965040000000002
	.quad	0x400aaef34d6a161e              # double 3.3354249999999999
	.quad	0x4013038151a43782              # double 4.7534229999999997
	.quad	0x4018b6eac8605682              # double 6.1786300000000001
	.quad	0x4017c9ecb31c219f              # double 5.9471920000000003
	.quad	0x40193043e5321e60              # double 6.2971339999999998
	.quad	0x401d4c16df3f9618              # double 7.3243059999999999
	.quad	0x40191d2630ec3116              # double 6.2784659999999999
	.quad	0x4008615b9a5a89b9              # double 3.0475379999999999
	.quad	0x401a3046412cf0fa              # double 6.5471430000000002
	.quad	0x4022082a9930be0e              # double 9.0159500000000001
	.quad	0x4020afbeb9e492bc              # double 8.3432519999999996
	.quad	0x401390fcf80dc337              # double 4.8915899999999999
	.quad	0x401b811233df2a9d              # double 6.8760459999999997
	.quad	0x4018adc69f8c21e2              # double 6.1697030000000002
	.quad	0x4022d1fe86833c60              # double 9.410145
	.quad	0x401746798958d9b6              # double 5.8188230000000001
	.quad	0x40070a9691a75cd1              # double 2.8801700000000001
	.quad	0x400769b6b2af1455              # double 2.9266179999999999
	.quad	0x4016a755ffe6d58d              # double 5.6634140000000004
	.quad	0x401eebdd334c5da7              # double 7.7303360000000003
	.quad	0x4001323033a4723b              # double 2.1495060000000001
	.quad	0x4010f0d349be8ff3              # double 4.2351809999999999
	.quad	0x4000d074213a0c6b              # double 2.1017839999999999
	.quad	0x401f513986338b48              # double 7.8293210000000001
	.quad	0x4020c2f35e310dbf              # double 8.380763
	.quad	0x401bf3eccc469510              # double 6.9882080000000002
	.quad	0x401921a2e7f6f4bf              # double 6.2828480000000004
	.quad	0x4006cef0ae536502              # double 2.8510450000000001
	.quad	0x4010ba1a0cf1800a              # double 4.1817399999999996
	.quad	0x4015630caa326e11              # double 5.3467279999999997
	.quad	0x401e5c18b502abac              # double 7.5899380000000001
	.quad	0x400e6213a0c6b485              # double 3.7978890000000001
	.quad	0x4022c75cf2495e18              # double 9.3893810000000001
	.quad	0x4022f4e89656eefa              # double 9.4783369999999998
	.quad	0x400ce9be8ff327aa              # double 3.6141329999999998
	.quad	0x40229898d477bbf9              # double 9.2980409999999996
	.quad	0x4016124638c97529              # double 5.5178459999999996
	.quad	0x40214c5f17bd8be7              # double 8.6491629999999997
	.quad	0x40124e4de3b8a19d              # double 4.5764690000000003
	.quad	0x401b2342edbb59de              # double 6.7844350000000002
	.quad	0x402309a415f45e0b              # double 9.5188299999999994
	.quad	0x402346c8f7553693              # double 9.6382519999999995
	.quad	0x401d4096feb4a665              # double 7.3130759999999997
	.quad	0x400bc0f238972043              # double 3.4692120000000002
	.quad	0x400a369014b599aa              # double 3.2766419999999998
	.quad	0x3ff9f018611fd588              # double 1.6211169999999999
	.quad	0x4016a282c6ef3d3a              # double 5.6587019999999999
	.quad	0x3ffcfd987c6327ee              # double 1.8119130000000001
	.quad	0x3ff4693f290abb45              # double 1.275695
	.quad	0x4009b170d62bf120              # double 3.2116410000000002
	.quad	0x4019aa0407cc7d1c              # double 6.4160310000000003
	.quad	0x3ff2694680171194              # double 1.1507019999999999
	.quad	0x3ff6dbeb18116ebd              # double 1.4286909999999999
	.quad	0x4014815d701d9f4d              # double 5.1263329999999998
	.quad	0x401324b662fdfc1a              # double 4.7858520000000002
	.quad	0x4007ad63cb817332              # double 2.9596629999999999
	.quad	0x402249709310129d              # double 9.1434370000000005
	.quad	0x40223e81450efdca              # double 9.1220800000000004
	.quad	0x401de5f9df548ece              # double 7.4745860000000004
	.quad	0x401f4f166e008e9b              # double 7.8272339999999998
	.quad	0x4023f382c2bd7f52              # double 9.9756070000000001
	.quad	0x4002d1c75818c5ca              # double 2.3524310000000002
	.quad	0x40225ad85dfa871a              # double 9.1774319999999996
	.quad	0x4015deef5ec80c74              # double 5.4677100000000003
	.quad	0x40235e1e92923e5c              # double 9.6838270000000008
	.quad	0x4014845e9185cee1              # double 5.1292669999999996
	.quad	0x4002ace9a2c66905              # double 2.3344299999999998
	.quad	0x40229a3b9ae0c176              # double 9.3012359999999994
	.quad	0x401bfd4024b33db0              # double 6.9973150000000004
	.quad	0x400f4614163779ea              # double 3.9092180000000001
	.quad	0x3fed0055fbb517a4              # double 0.90629099999999995
	.quad	0x401bdc2699c7bcc3              # double 6.9649910000000004
	.quad	0x40227c3393ab430f              # double 9.2425809999999995
	.quad	0x3ff3ea60913a4f87              # double 1.244721
	.quad	0x4023138476f2a5a4              # double 9.5381199999999992
	.quad	0x3fe5e846a5d6bebe              # double 0.68460399999999999
	.quad	0x3fe9823a6ce3582a              # double 0.79714700000000005
	.quad	0x401e4682b6284599              # double 7.5688579999999996
	.quad	0x4020121272c94b38              # double 8.0352969999999999
	.quad	0x4021e8a2877ee4e2              # double 8.9543649999999992
	.quad	0x40162d66f0cfe154              # double 5.5443379999999998
	.quad	0x402090ce4ead0c3d              # double 8.2828239999999997
	.quad	0x401ba3ffef39085f              # double 6.9101559999999997
	.quad	0x40041fbd6a593a2e              # double 2.515498
	.quad	0x40237f5ec80c73ac              # double 9.7487700000000003
	.quad	0x402197763e4abe6a              # double 8.7958239999999996
	.quad	0x400bde542e557de1              # double 3.4835590000000001
	.quad	0x401da2aa19439de5              # double 7.4088520000000004
	.quad	0x40214270d1fa3337              # double 8.6297669999999993
	.quad	0x402133506dd69d30              # double 8.6002229999999997
	.quad	0x401979ba5e353f7d              # double 6.3688750000000001
	.quad	0x40238489d27c3937              # double 9.7588640000000008
	.quad	0x4023c4ed0b30b5aa              # double 9.8846209999999992
	.quad	0x3ffee427c7c5260f              # double 1.9307019999999999
	.quad	0x4002a09dcf893faf              # double 2.3284259999999999
	.quad	0x401c6d6c72192210              # double 7.106859
	.quad	0x401f53a5c1c6088d              # double 7.8316869999999996
	.quad	0x40149ce5f7403dde              # double 5.1532210000000003
	.quad	0x401f61b60ae9680e              # double 7.845421
	.quad	0x3ff8c0bfe3b03e21              # double 1.547058
	.quad	0x4004886e7e62dc6e              # double 2.5666169999999999
	.quad	0x400bdb2f661f18ca              # double 3.482024
	.quad	0x3fd15460aa64c2f8              # double 0.27077499999999999
	.quad	0x40023f2d3c792d13              # double 2.2808480000000002
	.quad	0x401d87460242d05f              # double 7.3821029999999999
	.quad	0x3ff99f080303c07f              # double 1.601326
	.quad	0x4018107bbb62413e              # double 6.0160970000000002
	.quad	0x401546ededaec4a4              # double 5.319267
	.quad	0x40125b7c7820a30e              # double 4.5893420000000003
	.quad	0x3fdb424e59296702              # double 0.42592200000000002
	.quad	0x401f4b1e18efbb0e              # double 7.8233569999999997
	.quad	0x401fb1287c200c0f              # double 7.9230059999999999
	.quad	0x40160ca9ac365450              # double 5.5123660000000001
	.quad	0x401b13baba7b9171              # double 6.7692670000000001
	.quad	0x400927d1bb4916ca              # double 3.1444429999999999
	.quad	0x401e17d77fae3609              # double 7.5232830000000001
	.quad	0x3ff49c8b86b15f89              # double 1.288219
	.quad	0x4008077d523b3637              # double 3.003657
	.quad	0x4011014f0520d131              # double 4.2512780000000001
	.quad	0x3feadb573eab367a              # double 0.83927499999999999
	.quad	0x400b3cd91eeaa6d2              # double 3.4047109999999998
	.quad	0x401b8fe2e6ea8544              # double 6.8905139999999996
	.quad	0x40138c9752977c89              # double 4.8872960000000001
	.quad	0x4015f6177ea1c68f              # double 5.4903240000000002
	.quad	0x3ffd6e6644d87725              # double 1.839453
	.quad	0x4015bd0d49949e88              # double 5.4346209999999999
	.quad	0x4011bcdf266ba494              # double 4.4344450000000002
	.quad	0x3feb60e736049ecb              # double 0.85557899999999998
	.quad	0x401e58240b780347              # double 7.5860750000000001
	.quad	0x40099ff8a8f3a9b0              # double 3.2031109999999998
	.quad	0x401509c065b63d3e              # double 5.2595229999999997
	.quad	0x401360c88a47ecff              # double 4.8445150000000003
	.quad	0x40138708ede54b49              # double 4.8818700000000002
	.quad	0x40180d04a2fcefaa              # double 6.0127129999999998
	.quad	0x401c2a3c21187e7c              # double 7.041245
	.quad	0x4012d17e34b94531              # double 4.7045830000000004
	.quad	0x4019c36a400fba88              # double 6.4408349999999999
	.quad	0x40210669ced0b30b              # double 8.5125259999999994
	.quad	0x3ff8549d7ba6698c              # double 1.5206580000000001
	.quad	0x4017ccf52b90a783              # double 5.9501540000000004
	.quad	0x400f00a2014727dd              # double 3.8753090000000001
	.quad	0x3ff543558a761028              # double 1.3289390000000001
	.quad	0x401dd6a26e547171              # double 7.4596039999999997
	.quad	0x4011312ec6bce853              # double 4.2980299999999998
	.quad	0x40081e2cdc011d36              # double 3.0147339999999998
	.quad	0x401abdd0d8cb07d1              # double 6.6853670000000003
	.quad	0x400ee33df2a9d628              # double 3.8609580000000001
	.quad	0x3fd4250b524399b3              # double 0.31476100000000001
	.quad	0x4016327e9531550d              # double 5.5493110000000003
	.quad	0x40217d37e2c55c96              # double 8.744567
	.quad	0x4022e54195cc857f              # double 9.4477659999999996
	.quad	0x402167cd03537197              # double 8.7027359999999998
	.quad	0x401d9cee9dd7ecbb              # double 7.4032539999999996
	.quad	0x401e3065f9591cd2              # double 7.5472640000000002
	.quad	0x3fed4dcca70d1fa3              # double 0.91574699999999998
	.quad	0x401024be835dedf2              # double 4.0358830000000001
	.quad	0x400f0f0cfe154435              # double 3.882349
	.quad	0x3fab3b320535c9e6              # double 0.053185999999999997
	.quad	0x40203034b0e1b4bb              # double 8.0941519999999993
	.quad	0x40229969a0ad8a11              # double 9.2996339999999993
	.quad	0x3ff44a7b4e54f7a9              # double 1.268184
	.quad	0x3fa6425aee631f8a              # double 0.043475
	.quad	0x401d5b890d5a5b96              # double 7.3393899999999999
	.quad	0x40132f4128bf3beb              # double 4.7961470000000004
	.quad	0x401a43c4b09e98dd              # double 6.5661800000000001
	.quad	0x401ba610f0e90bc8              # double 6.9121740000000003
	.quad	0x40071e0ef99806f2              # double 2.8896769999999998
	.quad	0x400d9869835158b8              # double 3.6994199999999999
	.quad	0x4016afd976ff3ade              # double 5.6717279999999999
	.quad	0x4014de86c6583e85              # double 5.2173109999999996
	.quad	0x4020604a515ce9e6              # double 8.1880670000000002
	.quad	0x40114f2e05ccc89b              # double 4.3273239999999999
	.quad	0x40202035158b8280              # double 8.0629050000000007
	.quad	0x3fed73929ed3953e              # double 0.92035800000000001
	.quad	0x401638c4bd33d295              # double 5.5554379999999997
	.quad	0x3fff51ec918e325d              # double 1.9575009999999999
	.quad	0x401dc79cc74b838c              # double 7.4449339999999999
	.quad	0x3ffd453e2d6238da              # double 1.8294049999999999
	.quad	0x40226571d1d4738a              # double 9.1981339999999996
	.quad	0x4003f894812be48a              # double 2.4963769999999998
	.quad	0x401169dece571088              # double 4.353389
	.quad	0x400bab4aec8d5c74              # double 3.4586389999999998
	.quad	0x4022aafad6cb5350              # double 9.3339449999999999
	.quad	0x4013d8fd9fd36f7e              # double 4.9619049999999998
	.quad	0x40138f648c7192ea              # double 4.8900319999999997
	.quad	0x402128efbb0e5e68              # double 8.5799540000000007
	.quad	0x3ffa27296f6512a9              # double 1.6345609999999999
	.quad	0x3fd54a558ea7ce10              # double 0.33266200000000001
	.quad	0x40070d362e903644              # double 2.8814510000000002
	.quad	0x400033c89f40a287              # double 2.0252849999999998
	.quad	0x402293675ddd2ae9              # double 9.2878980000000002
	.quad	0x400d83cfb3311a54              # double 3.6893609999999999
	.quad	0x4022227935760392              # double 9.0673309999999994
	.quad	0x3fb4405b39e279dd              # double 0.079106999999999997
	.quad	0x402342ff2a172abf              # double 9.6308530000000001
	.quad	0x40230271151611ba              # double 9.5047689999999996
	.quad	0x40213f0cdc8754f3              # double 8.6231449999999992
	.quad	0x4013cfc71d606317              # double 4.9529079999999999
	.quad	0x40216995aaf78fef              # double 8.7062200000000001
	.quad	0x4019cd8a116659d1              # double 6.4507219999999998
	.quad	0x3ff65f98b71b8aa0              # double 1.398339
	.quad	0x401163dccea28fe2              # double 4.3475219999999997
	.quad	0x402187b762d83c6d              # double 8.7650710000000007
	.quad	0x40010c11a11233df              # double 2.1308929999999999
	.quad	0x4019c56861e92924              # double 6.4427810000000001
	.quad	0x401b48d5410f94c8              # double 6.8211259999999996
	.quad	0x3fc19f666234a87e              # double 0.13767699999999999
	.quad	0x402326759ab6d00b              # double 9.5751159999999995
	.quad	0x402067e0ef99806f              # double 8.2028879999999997
	.quad	0x4010f923a29c779a              # double 4.2432999999999996
	.quad	0x3fa015c209246bf0              # double 0.031415999999999999
	.quad	0x4020d25f633ce63a              # double 8.4108839999999994
	.quad	0x401b9a32f4491299              # double 6.9005850000000004
	.quad	0x40137eae5bc87db3              # double 4.8737120000000003
	.quad	0x3ffb55cc857f3062              # double 1.708447
	.quad	0x4017e490e66cb103              # double 5.9732089999999998
	.quad	0x402058c23fab10ba              # double 8.1733569999999993
	.quad	0x40235b723ee1bd1f              # double 9.6786060000000002
	.quad	0x400fe5479d4d8341              # double 3.9869530000000002
	.quad	0x4020d588a04d1202              # double 8.4170580000000008
	.quad	0x4023a891c087442c              # double 9.8292369999999991
	.quad	0x401cde6afcce1c58              # double 7.2172049999999999
	.quad	0x3fd4e5a35d67ba23              # double 0.32651599999999997
	.quad	0x4020720bc382a130              # double 8.2227460000000008
	.quad	0x40011b20b8066c2b              # double 2.1382460000000001
	.quad	0x3fd7171e29b6b2af              # double 0.360786
	.quad	0x3fc25f0f5a1016ce              # double 0.14352599999999999
	.quad	0x40110875d56f32be              # double 4.2582620000000002
	.quad	0x4018609784ec636b              # double 6.094328
	.quad	0x401c4fe32a0663c7              # double 7.0780149999999997
	.quad	0x40234bfaf42784a9              # double 9.6483989999999995
	.quad	0x40185f8ec0f88334              # double 6.093318
	.quad	0x401f9fdb8fde2ef5              # double 7.9061110000000001
	.quad	0x3fff14bad7d7c2ca              # double 1.942561
	.quad	0x401ca3cd9a52263e              # double 7.1599640000000004
	.quad	0x4018d667f90d9d77              # double 6.2093809999999996
	.quad	0x3ffe7a3ec02f2f98              # double 1.9048449999999999
	.quad	0x401b22684cf0739b              # double 6.783601
	.quad	0x40092f1e4b44a1f1              # double 3.1480070000000002
	.quad	0x4022649ba5e353f8              # double 9.1965000000000003
	.quad	0x401c541b328b6d87              # double 7.0821350000000001
	.quad	0x401cf472c0e7bc3c              # double 7.2387189999999997
	.quad	0x4021a396073de1e3              # double 8.8195040000000002
	.quad	0x3ff04793dd97f62b              # double 1.0174749999999999
	.quad	0x401e5a0232096788              # double 7.5878990000000001
	.quad	0x402373cea6c1a049              # double 9.7261860000000002
	.quad	0x4002b62f9ca5bd94              # double 2.3389579999999999
	.quad	0x400e0dca8e2e2b8c              # double 3.7567339999999998
	.quad	0x4021d9934efcbd55              # double 8.9249519999999993
	.quad	0x400b64dca8e2e2b9              # double 3.4242490000000001
	.quad	0x40124dcd7060bb2c              # double 4.5759790000000002
	.quad	0x4012f830a0b1bbcf              # double 4.7423729999999997
	.quad	0x4022fb5dcc63f141              # double 9.4909499999999997
	.quad	0x4011f930be0ded29              # double 4.4933500000000004
	.quad	0x3ff0101f31f46ed2              # double 1.0039359999999999
	.quad	0x4020d93af74cd317              # double 8.4242779999999993
	.quad	0x400844b3c3e74afd              # double 3.0335459999999999
	.quad	0x400643d68405b39e              # double 2.7831239999999999
	.quad	0x401d85aaf78feef6              # double 7.3805350000000001
	.quad	0x4022fccb5bb384fd              # double 9.4937389999999997
	.quad	0x3fe81aa60913a4f8              # double 0.75325299999999995
	.quad	0x3fa9fa97e132b55f              # double 0.05074
	.quad	0x400df77186551937              # double 3.745822
	.quad	0x4022958622c45027              # double 9.2920390000000008
	.quad	0x4022b41205bc01a3              # double 9.3516999999999992
	.quad	0x400d83ef284167a9              # double 3.6894209999999998
	.quad	0x4017bff3ade225fa              # double 5.9374529999999996
	.quad	0x3fc2a2e3c536d656              # double 0.145596
	.quad	0x40062aeea63b688c              # double 2.7709630000000001
	.quad	0x40002920c069e7fb              # double 2.0200819999999999
	.quad	0x3f8d08d4bad7d7c3              # double 0.014177
	.quad	0x40103378ab0c88a4              # double 4.0502649999999996
	.quad	0x4020034070329803              # double 8.0063510000000004
	.quad	0x401d469a91105e1c              # double 7.3189489999999999
	.quad	0x4010647bedb72820              # double 4.0981290000000001
	.quad	0x3ff498aa8650e779              # double 1.287272
	.quad	0x3ff30816f0068db9              # double 1.1894750000000001
	.quad	0x401d92923e5b8562              # double 7.3931360000000002
	.quad	0x3fb470fbeb9e492c              # double 0.079849000000000003
	.quad	0x402249c432ca57a8              # double 9.1440750000000008
	.quad	0x401267f0aa21a71a              # double 4.6015040000000003
	.quad	0x401c0eb28d8665e0              # double 7.0143529999999998
	.quad	0x400c32e946801712              # double 3.5248590000000002
	.quad	0x40165ada33bd9cae              # double 5.5887229999999999
	.quad	0x4023695aaf78feef              # double 9.7057699999999993
	.quad	0x4022bb256ffc115e              # double 9.3655200000000001
	.quad	0x401c737154003255              # double 7.1127370000000001
	.quad	0x401a275360d02470              # double 6.5384039999999999
	.quad	0x3ff26db2f661f18d              # double 1.1517820000000001
	.quad	0x3fc7c7ef177a7009              # double 0.18578900000000001
	.quad	0x401e1e3b46fdeb53              # double 7.5295230000000001
	.quad	0x3fffdd72367e414e              # double 1.9915639999999999
	.quad	0x40154f383f0bae8a              # double 5.3273630000000001
	.quad	0x40093989df1172ef              # double 3.153095
	.quad	0x401c931ceaf251c2              # double 7.1436650000000004
	.quad	0x401b07aaef2c7326              # double 6.7574880000000004
	.quad	0x40030b93ccd0fe8b              # double 2.3806530000000001
	.quad	0x401de2d77318fc50              # double 7.4715249999999997
	.quad	0x4010f9d40ee06d94              # double 4.2439730000000004
	.quad	0x3fff519157abb880              # double 1.957414
	.quad	0x3ff7642070b8cfc0              # double 1.4619450000000001
	.quad	0x4009be586013660e              # double 3.2179419999999999
	.quad	0x4021a5c7abfb9bed              # double 8.8237889999999997
	.quad	0x400da6f36ef80560              # double 3.7065190000000001
	.quad	0x40171d68405b39e2              # double 5.7787179999999996
	.quad	0x401cb05b7cfe5860              # double 7.1722239999999999
	.quad	0x401f94eebf65dbfd              # double 7.895442
	.quad	0x4023f29d40ee06d9              # double 9.9738559999999996
	.quad	0x4011f1a21ea35936              # double 4.48597
	.quad	0x3fce4febd09e12a5              # double 0.236814
	.quad	0x4021f06d2ed783e0              # double 8.9695830000000001
	.quad	0x40195d9b1b79d90a              # double 6.341412
	.quad	0x4018d917939a7c18              # double 6.2120040000000003
	.quad	0x4001581626b2f230              # double 2.1680109999999999
	.quad	0x40125490e66cb103              # double 4.5825839999999998
	.quad	0x4022b64628027d89              # double 9.3560040000000004
	.quad	0x3ff8e5c0b9991362              # double 1.556092
	.quad	0x401a5c7192ea52f0              # double 6.5902770000000004
	.quad	0x401d73cc07aaef2c              # double 7.3630829999999996
	.quad	0x3ffbbc408d8ec95c              # double 1.73346
	.quad	0x400ada5ebb7739f3              # double 3.3566259999999999
	.quad	0x3ff74be0ded288ce              # double 1.4560249999999999
	.quad	0x40177fd00713f078              # double 5.8748170000000002
	.quad	0x40104d27807789a4              # double 4.0753459999999997
	.quad	0x3ff3d270b06c43f6              # double 1.238877
	.quad	0x4012ab8348f53c58              # double 4.6674930000000003
	.quad	0x400693d4280ae105              # double 2.8221820000000002
	.quad	0x4021a5b7281fd9ba              # double 8.8236629999999998
	.quad	0x401b252e72da1230              # double 6.7863100000000003
	.quad	0x3ff0e8f8e7ddca4b              # double 1.056878
	.quad	0x40128e1719f7f8cb              # double 4.6387600000000004
	.quad	0x3ffd144aa53fc009              # double 1.8174539999999999
	.quad	0x401e2a89b951c5c5              # double 7.5415409999999996
	.quad	0x4020e70cdc8754f3              # double 8.4512699999999992
	.quad	0x3ff5aaad1d041cc5              # double 1.354169
	.quad	0x3ff1c70eb24a6a87              # double 1.1110979999999999
	.quad	0x3feaf9bdc69f8c22              # double 0.84298600000000001
	.quad	0x4005888509bf9c63              # double 2.6916600000000002
	.quad	0x401346c2efd438d2              # double 4.8191030000000001
	.quad	0x401cf85cee17a030              # double 7.2425420000000003
	.quad	0x3ffab2c1f42bb667              # double 1.668642
	.quad	0x4023e395c4220360              # double 9.944502
	.quad	0x4021dc59b8023a6d              # double 8.9303720000000002
	.quad	0x4014b47cb70ac3a8              # double 5.1762569999999997
	.quad	0x400cfc2656abde40              # double 3.6231200000000001
	.quad	0x3fef8c8472c0e7bc              # double 0.98590299999999997
	.quad	0x401436a11ec918e3              # double 5.0533489999999999
	.quad	0x4005f89efd86a8fc              # double 2.746397
	.quad	0x40165e4649906cca              # double 5.5920649999999998
	.quad	0x400260c8472c0e7c              # double 2.2972570000000001
	.quad	0x400949db65ecc3e3              # double 3.161063
	.quad	0x4022137ae5796bfd              # double 9.0380470000000006
	.quad	0x4020d0a548238540              # double 8.4075109999999995
	.quad	0x40174ed288ce703b              # double 5.826975
	.quad	0x3fc9346994185059              # double 0.196912
	.quad	0x4008b50fc71d6063              # double 3.088409
	.quad	0x3feae06d938151a4              # double 0.83989599999999997
	.quad	0x40109275ab7dc7ac              # double 4.143027
	.quad	0x400106b053198288              # double 2.128266
	.quad	0x3ffbc07570c564f9              # double 1.7344869999999999
	.quad	0x401f937824d4cb9f              # double 7.8940130000000001
	.quad	0x4018a8c36da87a07              # double 6.1648079999999998
	.quad	0x401893c9eecbfb16              # double 6.1443250000000003
	.quad	0x3fdae06961c36977              # double 0.41994700000000001
	.quad	0x3ffeee297396d091              # double 1.9331449999999999
	.quad	0x3ffe0061847f5621              # double 1.8750929999999999
	.quad	0x400115f5f0b28523              # double 2.135723
	.quad	0x4019bfa5d28d002e              # double 6.4371559999999999
	.quad	0x401fa29068986fce              # double 7.9087540000000001
	.quad	0x400ce9d40ee06d94              # double 3.6141740000000002
	.quad	0x401366950fc71d60              # double 4.8501779999999997
	.quad	0x3ff0fadf2ecf2064              # double 1.061248
	.quad	0x400499ff4fd6d7e9              # double 2.5751940000000002
	.quad	0x40171c61d8622c45              # double 5.777717
	.quad	0x401341be2b4959e6              # double 4.8142019999999999
	.quad	0x4020a7c957cd466f              # double 8.3277079999999994
	.quad	0x3fedd4a5df2239e7              # double 0.93220800000000004
	.quad	0x3ff7bb02d59d55e7              # double 1.4831570000000001
	.quad	0x401c9ad03d9a9542              # double 7.1511849999999999
	.quad	0x4013d25b749adc90              # double 4.9554270000000002
	.quad	0x3ffdb1422ccb3a26              # double 1.8557760000000001
	.quad	0x3fe23bfb58d1526e              # double 0.56982200000000005
	.quad	0x4021f93986338b48              # double 8.9867670000000004
	.quad	0x401de597d49d7ba6              # double 7.4742119999999996
	.quad	0x4011ceee0f3cb3e5              # double 4.4520799999999996
	.quad	0x3fc35a3a08398a65              # double 0.15119099999999999
	.quad	0x401963708aac96cc              # double 6.3471089999999997
	.quad	0x4019895c853c1483              # double 6.3841419999999998
	.quad	0x400415568e820e63              # double 2.5104190000000002
	.quad	0x3ff9e604e1e71045              # double 1.618657
	.quad	0x401a71144cbe1eb4              # double 6.6104289999999999
	.quad	0x3ffac346dc5d6388              # double 1.6726749999999999
	.quad	0x4018b039ef0f16f4              # double 6.1720959999999998
	.quad	0x4012b48b220791c5              # double 4.6763120000000002
	.quad	0x3ff0d0e8858ff759              # double 1.0510029999999999
	.quad	0x40063740c4156e26              # double 2.7769789999999999
	.quad	0x401154af4f0d844d              # double 4.3327
	.quad	0x4002a6d8b1dd5d3e              # double 2.3314680000000001
	.quad	0x400667e38eb0318c              # double 2.8007270000000002
	.quad	0x40107e43ed959a31              # double 4.1233060000000004
	.quad	0x402262a582dbe7f3              # double 9.1926690000000004
	.quad	0x4023c398a65492ff              # double 9.8820239999999994
	.quad	0x4015a107b784662c              # double 5.4072560000000003
	.quad	0x4019a82f944241c4              # double 6.4142440000000001
	.quad	0x4023c4493426783a              # double 9.8833710000000004
	.quad	0x4023e138fffbce42              # double 9.9398879999999998
	.quad	0x40067f25e56cd6c3              # double 2.812084
	.quad	0x3ffcc04a72ead927              # double 1.7969459999999999
	.quad	0x402394d8ba40d90e              # double 9.7907159999999998
	.quad	0x400216073de1e2df              # double 2.2607560000000002
	.quad	0x400b7e5321e603d5              # double 3.4366819999999998
	.quad	0x4019f36b8f9b1316              # double 6.4877149999999997
	.quad	0x4011a3f0bae89eba              # double 4.4100979999999996
	.quad	0x4018fe047d3d4281              # double 6.2480640000000003
	.quad	0x4022b8507a6bd6e9              # double 9.3599890000000005
	.quad	0x4019e6bdf4c2b51c              # double 6.4753340000000001
	.quad	0x4014442d8c2a454e              # double 5.0665800000000001
	.quad	0x3fe30711d798d8a9              # double 0.59461299999999995
	.quad	0x40239f69a91105e2              # double 9.8113530000000004
	.quad	0x3fce72f33ca31e7e              # double 0.23788300000000001
	.quad	0x4020d6c17ebaf102              # double 8.4194449999999996
	.quad	0x400c3d3d4280ae10              # double 3.5299019999999999
	.quad	0x401eb20ff540895d              # double 7.6738889999999999
	.quad	0x401fe3d96638433d              # double 7.9725089999999996
	.quad	0x400e907c84b5dcc6              # double 3.8205499999999999
	.quad	0x401f2af20ea5b531              # double 7.7919390000000001
	.quad	0x3feabd48cb4aec8d              # double 0.83560599999999996
	.quad	0x402136cd29131ec1              # double 8.6070340000000005
	.quad	0x401ecc297bfa4c62              # double 7.6993770000000001
	.quad	0x4018909dcf893faf              # double 6.1412269999999998
	.quad	0x400ba40420f6f08d              # double 3.4550860000000001
	.quad	0x401326b4c7f34938              # double 4.7877989999999997
	.quad	0x40217a2af5771002              # double 8.7386090000000003
	.quad	0x4021317b7414a4d3              # double 8.5966450000000005
	.quad	0x4018b636f3b213e4              # double 6.1779440000000001
	.quad	0x3fe73aecd07852f8              # double 0.725943
	.quad	0x40008c093d966384              # double 2.0683769999999999
	.quad	0x40218851eb851eb8              # double 8.7662499999999994
	.quad	0x401cdb5286b59147              # double 7.2141820000000001
	.quad	0x40176436fc158fb4              # double 5.8478659999999998
	.quad	0x401b804f6dfc5cdd              # double 6.8753029999999997
	.quad	0x4001167903211cb0              # double 2.1359729999999999
	.quad	0x401d6c725c3dee78              # double 7.3559049999999999
	.quad	0x401b92328f9f44d4              # double 6.8927709999999998
	.quad	0x402199e3864cb5bb              # double 8.8005639999999996
	.quad	0x3fe068a0d349be90              # double 0.51277200000000001
	.quad	0x401557fcb923a29c              # double 5.3359249999999996
	.quad	0x401e197891e21533              # double 7.5248739999999996
	.quad	0x4014bebdd334c5da              # double 5.1862709999999996
	.quad	0x400b7e279dd3bafe              # double 3.4365990000000002
	.quad	0x40224db0bbf50e34              # double 9.1517389999999991
	.quad	0x4018fc3b4f616723              # double 6.2463199999999999
	.quad	0x40089d66adb402d1              # double 3.0768559999999998
	.quad	0x401fe341e14bdfd2              # double 7.9719309999999997
	.quad	0x4022ad783dff3f10              # double 9.3388080000000002
	.quad	0x401daa48f96e1587              # double 7.4162939999999997
	.quad	0x400cb347a5b0ff11              # double 3.587539
	.quad	0x40005fe974a3400c              # double 2.0468320000000002
	.quad	0x401098b934699418              # double 4.1491439999999997
	.quad	0x4023b5393250b524              # double 9.8539519999999996
	.quad	0x3ffe366e86c6583f              # double 1.8882890000000001
	.quad	0x401fb05d95dd4c77              # double 7.9222320000000001
	.quad	0x4019d9b30728e92d              # double 6.4625969999999997
	.quad	0x401590642396073e              # double 5.3910070000000001
	.quad	0x400572934acaff6d              # double 2.6809449999999999
	.quad	0x4018d436fc158fb4              # double 6.2072409999999998
	.quad	0x401ed7d9dba908a2              # double 7.7107919999999996
	.quad	0x3fd18bda9435ac8a              # double 0.27416099999999999
	.quad	0x4017ad74d594f26b              # double 5.9193910000000001
	.quad	0x40126b1960fa15db              # double 4.6045889999999998
	.quad	0x40174113404ea4a9              # double 5.8135500000000002
	.quad	0x3feabc21187e7c07              # double 0.83546500000000001
	.quad	0x3ffe87b890d5a5b9              # double 1.9081349999999999
	.quad	0x3ffb9c422036006d              # double 1.725649
	.quad	0x40141b456b441bb9              # double 5.0266320000000002
	.quad	0x4020125a250f8402              # double 8.0358440000000009
	.quad	0x4001b457c0b13598              # double 2.2130580000000002
	.quad	0x40008fe3f359ff50              # double 2.0702590000000001
	.quad	0x4007c77574f722e2              # double 2.9723920000000001
	.quad	0x4020dbffac1d29dc              # double 8.4296849999999992
	.quad	0x3fe044ed6fda836f              # double 0.50841400000000003
	.quad	0x40124379314445aa              # double 4.5658919999999998
	.quad	0x40139593e5fb71fc              # double 4.8960720000000002
	.quad	0x4020b47c957cd467              # double 8.3525130000000001
	.quad	0x400abc9abb01c92e              # double 3.3420920000000001
	.quad	0x40227e3d816aceab              # double 9.2465630000000001
	.quad	0x4011456f32bdc26e              # double 4.3178070000000002
	.quad	0x40045b2b3461309c              # double 2.5445159999999998
	.quad	0x401efc957cd466f5              # double 7.7466639999999999
	.quad	0x4017088b11409a24              # double 5.758343
	.quad	0x400dd9fcb0c026cc              # double 3.731439
	.quad	0x3fccfbd273d5bab2              # double 0.226435
	.quad	0x3ff52da98676a726              # double 1.3236479999999999
	.quad	0x4023e41fa7653437              # double 9.9455539999999995
	.quad	0x4016837bd05af6c7              # double 5.6284020000000003
	.quad	0x4000a65f0f5a1017              # double 2.0812360000000001
	.quad	0x401a9c8472c0e7bc              # double 6.6528489999999998
	.quad	0x401da997c3d68406              # double 7.4156180000000003
	.quad	0x4021fd8a76102795              # double 8.9951969999999992
	.quad	0x401fadfa871a3b15              # double 7.9199010000000003
	.quad	0x401810b0af5fd47c              # double 6.0162990000000001
	.quad	0x4020e0e8427418d7              # double 8.4392720000000008
	.quad	0x3fffdb4edb2f661f              # double 1.991042
	.quad	0x4018b84fd2a62aa2              # double 6.1799920000000004
	.quad	0x401fee7e62dc6e2b              # double 7.9829040000000004
	.quad	0x4015144c7b02d59d              # double 5.2698229999999997
	.quad	0x400205ccc89b0ee5              # double 2.2528320000000002
	.quad	0x400c4265f0f5a101              # double 3.5324209999999998
	.quad	0x400360d23d4f15e8              # double 2.4222760000000001
	.quad	0x401a747e8ccdd93c              # double 6.6137639999999998
	.quad	0x400917e45803cd14              # double 3.136666
	.quad	0x402321d2178f68be              # double 9.5660559999999997
	.quad	0x4013a8958d9b5e96              # double 4.9146330000000003
	.quad	0x3ff01042d8c2a455              # double 1.00397
	.quad	0x4009b6dfc5cdd50b              # double 3.2142940000000002
	.quad	0x401e7246bf01322f              # double 7.6115979999999998
	.quad	0x40176027d88c1db0              # double 5.8439019999999999
	.quad	0x4008b035371971c1              # double 3.086039
	.quad	0x401caa697aeddce8              # double 7.1664180000000002
	.quad	0x401ff96e58a32f45              # double 7.9935850000000003
	.quad	0x4021048de2ac3223              # double 8.5088950000000008
	.quad	0x40234cbe40420f6f              # double 9.6498889999999999
	.quad	0x40142738a3b57c4e              # double 5.0383019999999998
	.quad	0x401f5368ad688377              # double 7.8314539999999999
	.quad	0x401f7a3c64345cff              # double 7.8693710000000001
	.quad	0x4008e4c48adeebb3              # double 3.1117029999999999
	.quad	0x40207655c0fcb4f2              # double 8.2311230000000002
	.quad	0x3ff3b2cb641700ce              # double 1.2311510000000001
	.quad	0x400a9be9856a37ac              # double 3.3261289999999999
	.quad	0x401809a2c669057d              # double 6.0094099999999999
	.quad	0x4015c4dec1c1d6d0              # double 5.4422560000000004
	.quad	0x4023c789613d31ba              # double 9.8897200000000005
	.quad	0x400a5c72e275ab7e              # double 3.2951410000000001
	.quad	0x4016bdc55000c954              # double 5.6853230000000003
	.quad	0x4003b074213a0c6b              # double 2.4611589999999999
	.quad	0x400acbc1eff9f87f              # double 3.349491
	.quad	0x4023c3037d63022e              # double 9.8808860000000003
	.quad	0x401df2231832fcad              # double 7.4864620000000003
	.quad	0x4021b9ef73c0c1fd              # double 8.8631550000000008
	.quad	0x4017c02e6644d877              # double 5.9376769999999999
	.quad	0x4003ea6ca03c4b0a              # double 2.489465
	.quad	0x4010222036006d0d              # double 4.0333259999999997
	.quad	0x4022a1c3ac929aa2              # double 9.3159460000000003
	.quad	0x4023a5f761cbccf3              # double 9.8241530000000008
	.quad	0x4004ba79fec99f1b              # double 2.5910530000000001
	.quad	0x40163485e3da2f8c              # double 5.5512920000000001
	.quad	0x4023ac2fe82517e7              # double 9.8363029999999991
	.quad	0x3fec1a027525460b              # double 0.87817500000000004
	.quad	0x3fda074213a0c6b5              # double 0.40669300000000003
	.quad	0x3fe731a2a4db163c              # double 0.72480900000000004
	.quad	0x4010a75a74c09c3d              # double 4.1634310000000001
	.quad	0x401e7100e6afcce2              # double 7.6103550000000002
	.quad	0x401f6a0a958537e3              # double 7.8535560000000002
	.quad	0x400ca3be6601bc99              # double 3.5799530000000002
	.quad	0x3fd5806290eed02d              # double 0.33596100000000001
	.quad	0x402092ccb3a2595c              # double 8.2867180000000004
	.quad	0x400b27d1351159c5              # double 3.3944420000000002
	.quad	0x401f6c4dec1c1d6d              # double 7.855766
	.quad	0x401e6b430f49491f              # double 7.6047479999999998
	.quad	0x4017f2bf9830e3ce              # double 5.9870590000000004
	.quad	0x402195fe974a3401              # double 8.7929580000000005
	.quad	0x4003f4e4430b178b              # double 2.4945759999999999
	.quad	0x4016c2e0e30446b7              # double 5.6903110000000003
	.quad	0x401fa33f42352eb6              # double 7.909421
	.quad	0x4002d71eafee6fb5              # double 2.3550390000000001
	.quad	0x3fc4129cbab649d4              # double 0.15681800000000001
	.quad	0x4016116c61522a6f              # double 5.5170149999999998
	.quad	0x40194a821f2990f3              # double 6.322762
	.quad	0x401fbeb399f5dfec              # double 7.9362320000000004
	.quad	0x4003716a055757d6              # double 2.4303780000000001
	.quad	0x402210e219652bd4              # double 9.0329750000000004
	.quad	0x401a1435efa615a9              # double 6.5197370000000001
	.quad	0x40029e35c5b4aa97              # double 2.327251
	.quad	0x40058b8bef8ceb35              # double 2.6931379999999998
	.quad	0x40151babead4f590              # double 5.2770229999999998
	.quad	0x400f4623d0bfa094              # double 3.9092479999999998
	.quad	0x400caa5482385404              # double 3.5831689999999998
	.quad	0x3ffddeabbcb1cc96              # double 1.8668629999999999
	.quad	0x4022dfe718a86d72              # double 9.4373100000000001
	.quad	0x4000f3d7d3910c2c              # double 2.1190639999999998
	.quad	0x40030138fffbce42              # double 2.375597
	.quad	0x400a43f3e0370cdd              # double 3.2831800000000002
	.quad	0x401d7a272862f599              # double 7.3692900000000003
	.quad	0x401d45b1c8648840              # double 7.3180610000000001
	.quad	0x401b4ba6efc371da              # double 6.8238789999999998
	.quad	0x4011a31fcd24e161              # double 4.4093010000000001
	.quad	0x400eeccf6be37de9              # double 3.8656299999999999
	.quad	0x401a14067cf1c326              # double 6.5195559999999997
	.quad	0x3fd4b65668c26139              # double 0.323629
	.quad	0x3fd4587d6f976790              # double 0.31790099999999999
	.quad	0x4023f60a41a261bf              # double 9.9805469999999996
	.quad	0x3f9534373f316e37              # double 0.020707
	.quad	0x4023d15dd4c76d11              # double 9.9089189999999991
	.quad	0x402162af35e310dc              # double 8.6927430000000001
	.quad	0x40183764adff822c              # double 6.0540950000000002
	.quad	0x4006f586ca89fc6e              # double 2.8698860000000002
	.quad	0x401cef1886df82b2              # double 7.233492
	.quad	0x4010ffec56d5cfab              # double 4.2499250000000002
	.quad	0x3ffb576bc1eff9f8              # double 1.7088429999999999
	.quad	0x4005cf9335d249e4              # double 2.7263549999999999
	.quad	0x3ffdfdfb0d51f81a              # double 1.8745069999999999
	.quad	0x401eaece5710880e              # double 7.6707090000000004
	.quad	0x40206afec56d5cfb              # double 8.2089750000000006
	.quad	0x3ffe387ad080b674              # double 1.8887890000000001
	.quad	0x4023f207d4e09785              # double 9.9727160000000001
	.quad	0x40105564f97edc7f              # double 4.0833930000000001
	.quad	0x401ffdf4c2b51bd6              # double 7.9980039999999999
	.quad	0x40213f0196d8f4f9              # double 8.6230589999999996
	.quad	0x4011031fcd24e161              # double 4.2530510000000001
	.quad	0x40126b2d4d4024b3              # double 4.6046649999999998
	.quad	0x400cc368f08461fa              # double 3.595415
	.quad	0x3feb9fc6da448494              # double 0.86325399999999996
	.quad	0x3ff0d3a0c6b484d7              # double 1.0516669999999999
	.quad	0x4022024a8c154c98              # double 9.0044749999999993
	.quad	0x401f6b65a9a80496              # double 7.8548799999999996
	.quad	0x400e20578e5c4eb5              # double 3.7657919999999998
	.quad	0x4007407e5a78f25a              # double 2.9064909999999999
	.quad	0x4001be5c0b999136              # double 2.2179489999999999
	.quad	0x401b5d1351159c49              # double 6.8408939999999996
	.quad	0x40101524bfd2e947              # double 4.0206480000000004
	.quad	0x3ff25bc98a222d51              # double 1.1474089999999999
	.quad	0x4022e0e2c12ad81b              # double 9.4392300000000002
	.quad	0x4021894812be48a6              # double 8.7681280000000008
	.quad	0x401fb9f94855da27              # double 7.9316149999999998
	.quad	0x4023230a6fc58ab9              # double 9.5684389999999996
	.quad	0x40152bacb4289119              # double 5.2926510000000002
	.quad	0x4022ee39f77292c5              # double 9.4652860000000007
	.quad	0x400b2db37c99ae92              # double 3.3973149999999999
	.quad	0x401bac6b484d76ab              # double 6.9183779999999997
	.quad	0x3feed48238540464              # double 0.96344099999999999
	.quad	0x401d3d4e4c942d49              # double 7.309869
	.quad	0x401fd8db8bac710d              # double 7.9617750000000002
	.quad	0x3ff46b7995ee136e              # double 1.2762389999999999
	.quad	0x40159d31337eb28e              # double 5.4035080000000004
	.quad	0x40029995ee136e72              # double 2.3249930000000001
	.quad	0x40203ab6ae7d566d              # double 8.1146750000000001
	.quad	0x400407863beec398              # double 2.5036740000000002
	.quad	0x4021883558a76102              # double 8.7660319999999992
	.quad	0x3ff57049a9973d9f              # double 1.339914
	.quad	0x402084488c60cbf3              # double 8.2583660000000005
	.quad	0x4019335a426bb55b              # double 6.3001490000000002
	.quad	0x402236d99cbee808              # double 9.1071290000000005
	.quad	0x401b5ae2541d8e86              # double 6.8387539999999998
	.quad	0x40206c96249a133c              # double 8.2120829999999997
	.quad	0x401855f3d7d3910c              # double 6.0839379999999998
	.quad	0x401fa439de481f54              # double 7.9103770000000004
	.quad	0x402398c197e56473              # double 9.7983519999999995
	.quad	0x3ff5e2f8bdec5f39              # double 1.3679129999999999
	.quad	0x4016cedaec4a4096              # double 5.702007
	.quad	0x401166234a87e38f              # double 4.3497440000000003
	.quad	0x401feb76f6d76252              # double 7.979946
	.quad	0x400a15c74751ce29              # double 3.260634
	.quad	0x3feade4c51116a8c              # double 0.83963600000000004
	.quad	0x4020df240fa9c12f              # double 8.4358219999999999
	.quad	0x401b3b068123810f              # double 6.8076420000000004
	.quad	0x400e382ba5a03819              # double 3.7774269999999999
	.quad	0x400996501e2584f5              # double 3.1983950000000001
	.quad	0x401ffc23315d701e              # double 7.9962280000000003
	.quad	0x4018c822ff08893b              # double 6.1954459999999996
	.quad	0x4006ba3875925354              # double 2.8409279999999999
	.quad	0x40171535c9e6687f              # double 5.7707129999999998
	.quad	0x401660b9dc2f405f              # double 5.5944589999999996
	.quad	0x3ff02aad1d041cc5              # double 1.010419
	.quad	0x401e9ef30a4e379b              # double 7.6552239999999995
	.quad	0x40103528283d35eb              # double 4.0519109999999996
	.quad	0x40059835158b8280              # double 2.6993200000000002
	.quad	0x40156f8ec0f88334              # double 5.358943
	.quad	0x401bdc486ad2dcb1              # double 6.9651199999999998
	.quad	0x4011abfad2999568              # double 4.4179490000000001
	.quad	0x40153f2f9873ffac              # double 5.3117049999999999
	.quad	0x4015e3d7d3910c2c              # double 5.4725029999999997
	.quad	0x3ff7f51ce28ed5f1              # double 1.497342
	.quad	0x3fd3c27a63736cdf              # double 0.30874499999999999
	.quad	0x40072f9c1f85d745              # double 2.898247
	.quad	0x401981a1db877ab3              # double 6.3765939999999999
	.quad	0x4008cdc443914f48              # double 3.1004719999999999
	.quad	0x40164b56b8737974              # double 5.5735729999999997
	.quad	0x401053947496aad2              # double 4.0816210000000002
	.quad	0x401a3267c6b8b695              # double 6.5492239999999997
	.quad	0x3ff4cabb44e50c5f              # double 1.2994950000000001
	.quad	0x4023930f49491f2e              # double 9.7872260000000004
	.quad	0x400265e2cdc011d3              # double 2.2997489999999998
	.quad	0x401b190f301eabbd              # double 6.7744720000000003
	.quad	0x400e29bd8383ad9f              # double 3.770381
	.quad	0x4008e012599ed7c7              # double 3.10941
	.quad	0x4009c30b9dc2f406              # double 3.220237
	.quad	0x401421c0010c6f7a              # double 5.032959
	.quad	0x401651eeaa6d2674              # double 5.580012
	.quad	0x4004e1919ac79703              # double 2.610141
	.quad	0x3ffedcdc443914f5              # double 1.9289210000000001
	.quad	0x4022cfcd24e160d9              # double 9.4058620000000008
	.quad	0x3ffd66d9be4cd749              # double 1.83761
	.quad	0x401d6484d76ab580              # double 7.3481629999999996
	.quad	0x400fe78c868b9fdc              # double 3.9880610000000001
	.quad	0x400e0bedfa43fe5d              # double 3.7558250000000002
	.quad	0x400108d10f51ac9b              # double 2.129305
	.quad	0x4019a636f3b213e4              # double 6.4123190000000001
	.quad	0x4022db417ca2120e              # double 9.4282339999999998
	.quad	0x4022dc4827b6fe2e              # double 9.4302379999999992
	.quad	0x4022b0359bc33f85              # double 9.3441589999999994
	.quad	0x4016296fa82e87d3              # double 5.5404650000000002
	.quad	0x4021c72ae07e5a79              # double 8.8889990000000001
	.quad	0x4020a7b395c42203              # double 8.3275419999999993
	.quad	0x4023ad6adf71eaff              # double 9.8387060000000001
	.quad	0x4022827913e81451              # double 9.2548300000000001
	.quad	0x4018304c8bc9cd3e              # double 6.047167
	.quad	0x40213d2674080f99              # double 8.619434
	.quad	0x402171a8ef77f280              # double 8.7219920000000002
	.quad	0x4023c4330d73860a              # double 9.8832020000000007
	.quad	0x40117e32a0663c75              # double 4.37324
	.quad	0x4020e743c7d5ed07              # double 8.451689
	.quad	0x40064c929aa1d756              # double 2.7873890000000001
	.quad	0x40239c840e1719f8              # double 9.805695
	.quad	0x3fbde236c15d2d02              # double 0.116733
	.quad	0x401a57afa7221859              # double 6.5856310000000002
	.quad	0x401569a5a89b951c              # double 5.3531709999999997
	.quad	0x401ed5918a009f62              # double 7.7085629999999998
	.quad	0x402079bef49cf56f              # double 8.2377850000000006
	.quad	0x4023baa68f4b61fe              # double 9.8645519999999998
	.quad	0x3fdf566490a350d3              # double 0.48964800000000003
	.quad	0x401662745bf26f1e              # double 5.5961470000000002
	.quad	0x40225f192ea52ef9              # double 9.1857389999999999
	.quad	0x401c07481b21c476              # double 7.0071110000000001
	.quad	0x4020ff62b6ae7d56              # double 8.4987999999999992
	.quad	0x401824f2f123c42a              # double 6.0360829999999996
	.quad	0x4023bc8fd9fd36f8              # double 9.8682850000000001
	.quad	0x40166182235b4edb              # double 5.5952229999999998
	.quad	0x40186463497b7415              # double 6.0980350000000003
	.quad	0x4019b530489d27c4              # double 6.4269420000000004
	.quad	0x4014c7dae81882ae              # double 5.1951710000000002
	.quad	0x3fd4674d1633482c              # double 0.31880500000000001
	.quad	0x3ff95769a91105e2              # double 1.5838410000000001
	.quad	0x401cde0eb67c2870              # double 7.2168530000000004
	.quad	0x4012ec2e770bd018              # double 4.7306460000000001
	.quad	0x401ab033e78e1933              # double 6.6720730000000001
	.quad	0x3ff6f90214ad362f              # double 1.4357930000000001
	.quad	0x401f6154866a11ed              # double 7.8450490000000003
	.quad	0x3fe516c82e019b0b              # double 0.65903100000000003
	.quad	0x3ffab10880d801b4              # double 1.668221
	.quad	0x4001b9096bb98c7e              # double 2.2153499999999999
	.quad	0x3ffc2b8a5ce5b424              # double 1.7606299999999999
	.quad	0x4020316db0dd82fd              # double 8.0965399999999992
	.quad	0x401e60da5daf07c0              # double 7.5945830000000001
	.quad	0x4004bad31fcd24e1              # double 2.5912229999999998
	.quad	0x4011e00c0f01fb83              # double 4.4687960000000002
	.quad	0x3ffe74213a0c6b48              # double 1.9033519999999999
	.quad	0x401ae29d40ee06d9              # double 6.7213029999999998
	.quad	0x4015c62888b545c8              # double 5.4435140000000004
	.quad	0x401e349b62c77575              # double 7.551374
	.quad	0x40129a04d12018a4              # double 4.6504089999999998
	.quad	0x4001eb7aa25d8d7a              # double 2.2399800000000001
	.quad	0x4020017aeddce7cd              # double 8.002891
	.quad	0x401f68c111ada76e              # double 7.8522990000000004
	.quad	0x4021f3925bb7b6bb              # double 8.9757259999999999
	.quad	0x401907ebaf102364              # double 6.2577350000000003
	.quad	0x401656687f455a7d              # double 5.5843829999999999
	.quad	0x4021e1f1f14983d8              # double 8.9412990000000008
	.quad	0x4015fc11e42e1262              # double 5.496162
	.quad	0x3ffbfeed45e9185d              # double 1.749738
	.quad	0x3febf9d4d834091c              # double 0.87424699999999999
	.quad	0x401894a38327674d              # double 6.1451549999999999
	.quad	0x400fd963992c8c50              # double 3.981147
	.quad	0x401af8abd5dc4007              # double 6.7428429999999997
	.quad	0x4012ca322af57710              # double 4.697457
	.quad	0x4020a7e36d22424a              # double 8.3279069999999997
	.quad	0x3ff6276640a6b93d              # double 1.384619
	.quad	0x3f92c2374794ea07              # double 0.018318999999999998
	.quad	0x40175cdd93c46d83              # double 5.8406890000000002
	.quad	0x4013f743a647fdc6              # double 4.9914690000000004
	.quad	0x401ebf8a0902de01              # double 7.6870500000000001
	.quad	0x401be5e74299d884              # double 6.9745150000000002
	.quad	0x3ff3e29b6b2af145              # double 1.2428239999999999
	.quad	0x400e672da122fad7              # double 3.8003800000000001
	.quad	0x4011c4d26fa3fcca              # double 4.4422090000000001
	.quad	0x40215a3ee1bd1eda              # double 8.6762610000000002
	.quad	0x4022e550ebaade65              # double 9.4478829999999991
	.quad	0x40151abbcb1cc964              # double 5.2761069999999997
	.quad	0x400174280ae10492              # double 2.1817169999999999
	.quad	0x400e64a48f96e158              # double 3.7991419999999998
	.quad	0x4023b910a137f38c              # double 9.8614549999999994
	.quad	0x401b2e1c58255b03              # double 6.7950299999999997
	.quad	0x401d7774256bca53              # double 7.3666539999999996
	.quad	0x4011cd0a67620ee9              # double 4.4502350000000002
	.quad	0x4006575d9a0f0a5f              # double 2.792659
	.quad	0x4013255821294574              # double 4.7864690000000003
	.quad	0x4019caa326e11559              # double 6.4478879999999998
	.quad	0x4003441e57d9dba9              # double 2.408261
	.quad	0x402376f1348b2208              # double 9.7323090000000007
	.quad	0x3ff466e5471715c6              # double 1.2751209999999999
	.quad	0x401e2bf0995aaf79              # double 7.54291
	.quad	0x401a05d18090b418              # double 6.5056820000000002
	.quad	0x4022676a2f48c2e7              # double 9.2019819999999992
	.quad	0x400fa13cab81f96a              # double 3.953729
	.quad	0x4010f9c347e8ccde              # double 4.2439090000000004
	.quad	0x4020f4f6598e10cf              # double 8.4784419999999994
	.quad	0x40168c069e7fb268              # double 5.6367440000000002
	.quad	0x3fcb4057082491b0              # double 0.21290100000000001
	.quad	0x3fec28112ba16e7a              # double 0.87989099999999998
	.quad	0x3ff6614f0520d131              # double 1.398757
	.quad	0x402275f1e0828c37              # double 9.2303610000000003
	.quad	0x4022d9248d7e0264              # double 9.4241069999999993
	.quad	0x401a9e9707182236              # double 6.6548730000000003
	.quad	0x400e9e518f3eccc4              # double 3.8273039999999998
	.quad	0x401be1754b05b7d0              # double 6.9701740000000001
	.quad	0x401682e48e8a71de              # double 5.6278249999999996
	.quad	0x3fff7e5321e603d5              # double 1.9683409999999999
	.quad	0x4008bdffc5479d4e              # double 3.0927730000000002
	.quad	0x4020f733a8a3f898              # double 8.4828159999999997
	.quad	0x40114440af1cb89d              # double 4.3166529999999996
	.quad	0x4019822a6f3f52fc              # double 6.3771149999999999
	.quad	0x40226baa582dbe7f              # double 9.2102839999999997
	.quad	0x3ffdab1a2a4db164              # double 1.8542730000000001
	.quad	0x402283fa2ad3e921              # double 9.2577680000000004
	.quad	0x40190b4f1e4b44a2              # double 6.2610440000000001
	.quad	0x3fdd2c3c9eecbfb1              # double 0.45582499999999998
	.quad	0x401ec53b0813cab8              # double 7.6926079999999998
	.quad	0x401d948f53c579f2              # double 7.3950779999999998
	.quad	0x4016a6c8f7553693              # double 5.6628759999999998
	.quad	0x4015761847f56217              # double 5.3653269999999997
	.quad	0x4020af644955b467              # double 8.3425619999999991
	.quad	0x40191532e7b3d8e0              # double 6.270702
	.quad	0x4021b0c5a8155d5f              # double 8.8452579999999994
	.quad	0x4010318611fd5886              # double 4.0483630000000002
	.quad	0x40219d0225742dcf              # double 8.8066569999999995
	.quad	0x400dc79a2834d270              # double 3.7224620000000002
	.quad	0x3fa3e0370cdc8755              # double 0.03882
	.quad	0x400f02df9378ee28              # double 3.8764029999999998
	.quad	0x40233531337eb28e              # double 9.6038910000000008
	.quad	0x400aabd9018e7579              # double 3.3339099999999999
	.quad	0x3fc982b1f687b13a              # double 0.19930100000000001
	.quad	0x4017b164840e171a              # double 5.923235
	.quad	0x40234a8eb463497b              # double 9.6456199999999991
	.quad	0x40070a9cdc443915              # double 2.880182
	.quad	0x401e68c75c4a83b2              # double 7.6023230000000002
	.quad	0x4021dc80e8c8abd6              # double 8.9306710000000002
	.quad	0x4017f99d451fc4c1              # double 5.9937639999999996
	.quad	0x3fe2439bcba30121              # double 0.57075299999999995
	.quad	0x400b549f0e4da09d              # double 3.4163190000000001
	.quad	0x3fe4f3f961804d98              # double 0.65478199999999998
	.quad	0x3fa5604189374bc7              # double 0.041750000000000002
	.quad	0x4013b47baa9b499d              # double 4.926253
	.quad	0x3ff98c92146a1a50              # double 1.596819
	.quad	0x3ff11530489d27c4              # double 1.0676730000000001
	.quad	0x401e66a93f290abb              # double 7.6002549999999997
	.quad	0x401db060780fdc16              # double 7.4222429999999999
	.quad	0x4017ddbe7f2c300a              # double 5.9665470000000003
	.quad	0x4003c7a6bd6e8af8              # double 2.472486
	.quad	0x40117240fa9c12f1              # double 4.3615760000000003
	.quad	0x4021df0329802c0a              # double 8.9355709999999995
	.quad	0x4002718b93469942              # double 2.3054420000000002
	.quad	0x3ffc092ab68cef67              # double 1.752238
	.quad	0x401e174080f98fa3              # double 7.5227069999999995
	.quad	0x4014dca7503b81b6              # double 5.2154819999999997
	.quad	0x3ff067d1351159c5              # double 1.0253460000000001
	.quad	0x3ff2a81fd9ba1b19              # double 1.1660459999999999
	.quad	0x4003ef9e3864cb5c              # double 2.4920010000000001
	.quad	0x40174dd7a99fa11b              # double 5.8260180000000004
	.quad	0x3fd84f82f5126634              # double 0.379853
	.quad	0x400c2c81d3aa36a0              # double 3.5217320000000001
	.quad	0x400d088e79aae6c9              # double 3.629178
	.quad	0x3feeae642bf9830e              # double 0.95878799999999997
	.quad	0x40053b9a5a89b952              # double 2.6541030000000001
	.quad	0x4023c7bca1059ea5              # double 9.8901109999999992
	.quad	0x400c262dc6e2a800              # double 3.5186419999999998
	.quad	0x401a1d438d1d8a55              # double 6.5285780000000004
	.quad	0x3fff3c5479d4d834              # double 1.952229
	.quad	0x401e7cb6c7a7c9de              # double 7.621791
	.quad	0x40218e89a88ace25              # double 8.7783940000000005
	.quad	0x3fe0ad6451b93038              # double 0.52116600000000002
	.quad	0x4013820c49ba5e35              # double 4.8769999999999998
	.quad	0x40132c39bcba3012              # double 4.7931889999999999
	.quad	0x4016ffb86f47b678              # double 5.749727
	.quad	0x3fdd3586ca89fc6e              # double 0.45639200000000002
	.quad	0x4023105ad538ac19              # double 9.531943
	.quad	0x3fdcef06b37867f1              # double 0.45208900000000002
	.quad	0x40181a3b57c4e2f3              # double 6.0256169999999996
	.quad	0x400952f01754b05b              # double 3.1654969999999998
	.quad	0x40014a958537e2c5              # double 2.1614179999999998
	.quad	0x400539e59f2ba9d2              # double 2.65327
	.quad	0x3ff69019f3c70c99              # double 1.4101809999999999
	.quad	0x401c7a5870da5daf              # double 7.119478
	.quad	0x4010cdcb5781c715              # double 4.200971
	.quad	0x4013185122318330              # double 4.7737470000000002
	.quad	0x4017bf544bb1af3a              # double 5.9368449999999999
	.quad	0x4011d5e74299d884              # double 4.4588900000000002
	.quad	0x401a8840181e03f7              # double 6.633057
	.quad	0x402117bc3c5bd0e1              # double 8.5463579999999997
	.quad	0x4013221d10b1feeb              # double 4.7833139999999998
	.quad	0x3ff8b49385836220              # double 1.5440860000000001
	.quad	0x401c310e8858ff76              # double 7.0479070000000004
	.quad	0x40204250507a6bd7              # double 8.1295190000000002
	.quad	0x401e06c8f7553693              # double 7.5066259999999997
	.quad	0x4016db9628cbd124              # double 5.7144399999999997
	.quad	0x4008e04189374bc7              # double 3.1095000000000002
	.quad	0x4021c06c43f5f916              # double 8.875826
	.quad	0x3fe60476f2a5a46a              # double 0.68804500000000002
	.quad	0x3ff3765cb35f3d7d              # double 1.216397
	.quad	0x3ffba53005814941              # double 1.7278290000000001
	.quad	0x40197a9b06812381              # double 6.3697319999999999
	.quad	0x400c9b3d07c84b5e              # double 3.5758000000000001
	.quad	0x40156328b6d86ec1              # double 5.3468349999999996
	.quad	0x4014725d4a5df224              # double 5.1116840000000003
	.quad	0x401b07403dddb121              # double 6.7570810000000003
	.quad	0x401c68509bf9c62a              # double 7.1018699999999999
	.quad	0x4003a74afd545415              # double 2.4566859999999999
	.quad	0x40137931ca7d6734              # double 4.8683540000000001
	.quad	0x400943f1c75818c6              # double 3.1581760000000001
	.quad	0x4017c974e65bea0c              # double 5.9467350000000003
	.quad	0x40140f8b9baa1512              # double 5.0151810000000001
	.quad	0x40201d52e2fbe33b              # double 8.0572730000000004
	.quad	0x400c7a355043e532              # double 3.5596719999999999
	.quad	0x401ac5bab21815a0              # double 6.6930949999999996
	.quad	0x3ffc6b3461309c80              # double 1.776173
	.quad	0x401fdc3dab5c39bd              # double 7.9650790000000002
	.quad	0x3fc5f47735c182ed              # double 0.17152300000000001
	.quad	0x3ff54b75ea67e847              # double 1.3309230000000001
	.quad	0x3ff70aeea63b688c              # double 1.440169
	.quad	0x4020fac3eb7cbb3d              # double 8.4897760000000009
	.quad	0x40239eab7995ee13              # double 9.8099019999999992
	.quad	0x4013f9934efcbd55              # double 4.9937259999999997
	.quad	0x401c2ddc6195464e              # double 7.0447860000000002
	.quad	0x402200984e3ffef4              # double 9.0011620000000007
	.quad	0x40122a493c89f40a              # double 4.5412949999999999
	.quad	0x40098e3a3a8e7147              # double 3.1944469999999998
	.quad	0x400ddff36ac64778              # double 3.7343510000000002
	.quad	0x400a7ef39085f4a1              # double 3.3119879999999999
	.quad	0x401f0bc59b8023a7              # double 7.7614960000000001
	.quad	0x3fec9707182235b5              # double 0.89343600000000001
	.quad	0x4007315c63ae2542              # double 2.8991020000000001
	.quad	0x3fd449491f2dc2b1              # double 0.316973
	.quad	0x3ff01327243137b0              # double 1.0046759999999999
	.quad	0x401303382e44b6e9              # double 4.7531439999999998
	.quad	0x401815810624dd2f              # double 6.0209999999999999
	.quad	0x4022f195ee136e72              # double 9.4718470000000003
	.quad	0x40115ac68a936c59              # double 4.3386480000000001
	.quad	0x402082b7fe08aefb              # double 8.2553099999999997
	.quad	0x401616f4be835dee              # double 5.522418
	.quad	0x4022e86e7e62dc6e              # double 9.4539679999999997
	.quad	0x4003808d08919ef9              # double 2.4377689999999999
	.quad	0x3feb7a93af74cd31              # double 0.85871299999999995
	.quad	0x4013be368f084620              # double 4.9357550000000003
	.quad	0x40134ae07e5a78f2              # double 4.8231219999999997
	.quad	0x401e7e86c6583e85              # double 7.6235609999999995
	.quad	0x4012699d0203e63f              # double 4.6031380000000004
	.quad	0x3ff0f0941c8216c6              # double 1.058735
	.quad	0x3fea766c6de76428              # double 0.82695600000000002
	.quad	0x400461cd5f99c38b              # double 2.547755
	.quad	0x3ffc0f605ab3aabd              # double 1.753754
	.quad	0x4014a8f9b13165d4              # double 5.1650150000000004
	.quad	0x40101301a79fec9a              # double 4.018561
	.quad	0x40148907d912556d              # double 5.1338189999999999
	.quad	0x4019b9bd4067cf1c              # double 6.4313859999999998
	.quad	0x4002631ad2135dab              # double 2.2983910000000001
	.quad	0x3fe79cc532a497fa              # double 0.73788699999999996
	.quad	0x401659acbc8c0ce9              # double 5.5875729999999999
	.quad	0x401d4b1ee2435697              # double 7.3233600000000001
	.quad	0x3ff8b9756c93a711              # double 1.5452779999999999
	.quad	0x401fc02c9081c2e3              # double 7.9376699999999997
	.quad	0x401c2c7abfb9bed3              # double 7.0434369999999999
	.quad	0x4023ef644955b467              # double 9.9675619999999991
	.quad	0x4023dd70a3d70a3d              # double 9.9324999999999992
	.quad	0x4023de6e86c6583f              # double 9.9344370000000008
	.quad	0x3ff0286833c6002a              # double 1.009865
	.quad	0x400a299c7bcc2939              # double 3.2703180000000001
	.quad	0x400c4363b256ffc1              # double 3.532905
	.quad	0x4017acd39da16617              # double 5.9187760000000003
	.quad	0x4000d421c044284e              # double 2.10358
	.quad	0x401a6961c36976bc              # double 6.6029119999999999
	.quad	0x40220280cf9e3865              # double 9.0048890000000004
	.quad	0x3fe376d117b5286b              # double 0.60825399999999996
	.quad	0x4022fd27e5215769              # double 9.4944450000000006
	.quad	0x3ff57c87db2b3461              # double 1.342903
	.quad	0x40159575c0767d35              # double 5.3959570000000001
	.quad	0x4020209b30728e93              # double 8.0636840000000003
	.quad	0x401264178705425f              # double 4.5977459999999999
	.quad	0x401abc39ffd60e95              # double 6.6838150000000001
	.quad	0x4010ec471b478423              # double 4.2307399999999999
	.quad	0x4021b165d3996fa8              # double 8.8464799999999997
	.quad	0x401eaaad1d041cc5              # double 7.6666759999999998
	.quad	0x3feb9b3d07c84b5e              # double 0.86270000000000002
	.quad	0x40225153dea465a5              # double 9.1588429999999992
	.quad	0x402189c886162f16              # double 8.7691079999999992
	.quad	0x401c4b24638c9753              # double 7.0733810000000004
	.quad	0x402216481f53825e              # double 9.0435189999999999
	.quad	0x4002dea78af3e469              # double 2.3587180000000001
	.quad	0x4015b938151a4378              # double 5.4308779999999999
	.quad	0x401bfdafd113836b              # double 6.9977410000000004
	.quad	0x401e2cfc3f811f4f              # double 7.5439309999999997
	.quad	0x40206480841ede12              # double 8.1962930000000007
	.quad	0x4012c7c0f4517614              # double 4.6950719999999997
	.quad	0x4010756c0d6f544c              # double 4.1146700000000003
	.quad	0x40177d2999567dbb              # double 5.8722289999999999
	.quad	0x400397e80389f83c              # double 2.449173
	.size	.L__constant_1999xf64, 15992

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	71                              # 0x47
	.quad	117                             # 0x75
	.quad	154                             # 0x9a
	.quad	216                             # 0xd8
	.quad	265                             # 0x109
	.quad	316                             # 0x13c
	.quad	384                             # 0x180
	.quad	430                             # 0x1ae
	.quad	478                             # 0x1de
	.quad	546                             # 0x222
	.quad	595                             # 0x253
	.quad	641                             # 0x281
	.quad	707                             # 0x2c3
	.quad	751                             # 0x2ef
	.quad	792                             # 0x318
	.quad	855                             # 0x357
	.quad	900                             # 0x384
	.quad	954                             # 0x3ba
	.quad	1023                            # 0x3ff
	.quad	1068                            # 0x42c
	.quad	1106                            # 0x452
	.quad	1160                            # 0x488
	.quad	1204                            # 0x4b4
	.quad	1250                            # 0x4e2
	.quad	1307                            # 0x51b
	.quad	1341                            # 0x53d
	.quad	1388                            # 0x56c
	.quad	1447                            # 0x5a7
	.quad	1489                            # 0x5d1
	.quad	1525                            # 0x5f5
	.quad	1587                            # 0x633
	.quad	1633                            # 0x661
	.quad	1669                            # 0x685
	.quad	1735                            # 0x6c7
	.quad	1773                            # 0x6ed
	.quad	1825                            # 0x721
	.quad	1883                            # 0x75b
	.quad	1922                            # 0x782
	.quad	1960                            # 0x7a8
	.quad	2024                            # 0x7e8
	.quad	2076                            # 0x81c
	.quad	2118                            # 0x846
	.quad	2178                            # 0x882
	.quad	2225                            # 0x8b1
	.quad	2270                            # 0x8de
	.quad	2328                            # 0x918
	.quad	2371                            # 0x943
	.quad	2417                            # 0x971
	.quad	2476                            # 0x9ac
	.quad	2515                            # 0x9d3
	.quad	2550                            # 0x9f6
	.quad	2604                            # 0xa2c
	.quad	2653                            # 0xa5d
	.quad	2690                            # 0xa82
	.quad	2758                            # 0xac6
	.quad	2805                            # 0xaf5
	.quad	2842                            # 0xb1a
	.quad	2907                            # 0xb5b
	.quad	2949                            # 0xb85
	.quad	2986                            # 0xbaa
	.quad	3043                            # 0xbe3
	.quad	3089                            # 0xc11
	.quad	3132                            # 0xc3c
	.quad	3195                            # 0xc7b
	.quad	3222                            # 0xc96
	.quad	3269                            # 0xcc5
	.quad	3326                            # 0xcfe
	.quad	3374                            # 0xd2e
	.quad	3421                            # 0xd5d
	.quad	3488                            # 0xda0
	.quad	3530                            # 0xdca
	.quad	3573                            # 0xdf5
	.quad	3633                            # 0xe31
	.quad	3673                            # 0xe59
	.quad	3712                            # 0xe80
	.quad	3773                            # 0xebd
	.quad	3827                            # 0xef3
	.quad	3874                            # 0xf22
	.quad	3937                            # 0xf61
	.quad	3976                            # 0xf88
	.quad	4022                            # 0xfb6
	.quad	4084                            # 0xff4
	.quad	4135                            # 0x1027
	.quad	4187                            # 0x105b
	.quad	4254                            # 0x109e
	.quad	4299                            # 0x10cb
	.quad	4336                            # 0x10f0
	.quad	4407                            # 0x1137
	.quad	4449                            # 0x1161
	.quad	4489                            # 0x1189
	.quad	4558                            # 0x11ce
	.quad	4599                            # 0x11f7
	.quad	4645                            # 0x1225
	.quad	4709                            # 0x1265
	.quad	4752                            # 0x1290
	.quad	4795                            # 0x12bb
	.quad	4856                            # 0x12f8
	.quad	4896                            # 0x1320
	.quad	4933                            # 0x1345
	.quad	5000                            # 0x1388
	.size	.L__constant_101xindex, 808

	.type	.L__constant_5000xindex,@object # @__constant_5000xindex
	.p2align	6, 0x0
.L__constant_5000xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
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
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
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
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
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
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
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
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.size	.L__constant_5000xindex, 40000

	.type	.L__constant_5000xf64,@object   # @__constant_5000xf64
	.p2align	6, 0x0
.L__constant_5000xf64:
	.quad	0x401294e160d887ec              # double 4.645391
	.quad	0x3ff35a8cdea033e8              # double 1.2096070000000001
	.quad	0x401646559f6ec5b0              # double 5.5686859999999996
	.quad	0x400c1d5d3dc8b86b              # double 3.514338
	.quad	0x3fb6559f6ec5b079              # double 0.087244000000000002
	.quad	0x3fba5d7cb2d905c0              # double 0.102989
	.quad	0x4023171cfbb94962              # double 9.5451429999999995
	.quad	0x3ff3effb04ee7c4a              # double 1.246089
	.quad	0x401df37bd05af6c7              # double 7.4877770000000003
	.quad	0x3f9f759685122318              # double 0.030721999999999999
	.quad	0x401cc063e07a28bb              # double 7.187881
	.quad	0x40233ee653868fd2              # double 9.6228510000000007
	.quad	0x40220424a276b7ed              # double 9.0080919999999995
	.quad	0x40203262888b545c              # double 8.0984079999999991
	.quad	0x402191dda059a73b              # double 8.7848939999999995
	.quad	0x400f85186db50f41              # double 3.939988
	.quad	0x401ee0e7ff583a54              # double 7.7196350000000002
	.quad	0x40216fc47e49b1fb              # double 8.7182960000000005
	.quad	0x3fbe08bfc2224edf              # double 0.11732099999999999
	.quad	0x4017f556084a515d              # double 5.9895860000000001
	.quad	0x3fc5c10d7be9856a              # double 0.16995399999999999
	.quad	0x400d5d84901d1915              # double 3.6706629999999998
	.quad	0x3fe459641f644956              # double 0.63591200000000003
	.quad	0x4013f4b44a1f0803              # double 4.988969
	.quad	0x401cef81626b2f23              # double 7.233892
	.quad	0x4018f683c297bfa5              # double 6.2407370000000002
	.quad	0x3fe0ede33269df98              # double 0.52903900000000004
	.quad	0x401385f5275ee99a              # double 4.8808179999999997
	.quad	0x4011cc18f81e8a2f              # double 4.4493140000000002
	.quad	0x3ffd225e99e94ab2              # double 1.820891
	.quad	0x401d9316e3715400              # double 7.3936419999999998
	.quad	0x400d886f8ad2567a              # double 3.6916190000000002
	.quad	0x40222e7a52ac753e              # double 9.0907769999999992
	.quad	0x401969aed56b0100              # double 6.3532060000000001
	.quad	0x40218516db0dd830              # double 8.7599400000000003
	.quad	0x402140487b99d452              # double 8.625553
	.quad	0x4012423465625a68              # double 4.5646529999999998
	.quad	0x3feb87a8d64d7f0f              # double 0.86031000000000002
	.quad	0x4020e691212513b6              # double 8.4503260000000004
	.quad	0x40219feda6612839              # double 8.81236
	.quad	0x3f972b4528283d36              # double 0.022626
	.quad	0x40136b256ffc115e              # double 4.854635
	.quad	0x3ff0a789e774eebf              # double 1.0409029999999999
	.quad	0x40139fe542e557de              # double 4.906148
	.quad	0x3feba15336deb95e              # double 0.86344299999999996
	.quad	0x3ffe3c4b09e98dce              # double 1.8897200000000001
	.quad	0x401ac8c7192ea52f              # double 6.696072
	.quad	0x40208d3ed527e521              # double 8.2758699999999994
	.quad	0x4020abb2788db057              # double 8.3353459999999995
	.quad	0x4021e60b2c83ec89              # double 8.9493039999999997
	.quad	0x4022518def416bdb              # double 9.1592859999999998
	.quad	0x40204a4d099e0e73              # double 8.1451189999999993
	.quad	0x3ff9558750c1b973              # double 1.5833809999999999
	.quad	0x400da9f05ea24cc7              # double 3.7079780000000002
	.quad	0x3ffbcbed740c4157              # double 1.737287
	.quad	0x4014f0e347629521              # double 5.2352420000000004
	.quad	0x400976a0dbad3a60              # double 3.1829239999999999
	.quad	0x401b3893faf42785              # double 6.8052520000000003
	.quad	0x40056f9767903212              # double 2.6794880000000001
	.quad	0x4005e6e115592d99              # double 2.7377340000000001
	.quad	0x4021da07d4e09785              # double 8.9258410000000001
	.quad	0x4022518288051c9f              # double 9.1591989999999992
	.quad	0x401061fd9ba1b196              # double 4.0956939999999999
	.quad	0x4014838759253544              # double 5.1284460000000003
	.quad	0x401a3d9274e22a2c              # double 6.5601289999999999
	.quad	0x401ca3968d759ee9              # double 7.1597540000000004
	.quad	0x401c24bfd2e94680              # double 7.0358879999999999
	.quad	0x4017ae1c58255b03              # double 5.9200299999999997
	.quad	0x401797924af0bf1a              # double 5.8980189999999997
	.quad	0x3fe8d71d1d4738a4              # double 0.77625900000000003
	.quad	0x4017a7e8ccdd93c4              # double 5.9139739999999996
	.quad	0x4009342917507e9e              # double 3.1504690000000002
	.quad	0x3ffa7102363b2570              # double 1.65259
	.quad	0x3ff4da4ce8101f32              # double 1.303296
	.quad	0x400bfbcd35a85879              # double 3.4979499999999999
	.quad	0x4010f4f6598e10cf              # double 4.2392209999999997
	.quad	0x401c3cd3e0bd449a              # double 7.0594020000000004
	.quad	0x40128abe27179bfe              # double 4.635491
	.quad	0x3ff7964302b40f67              # double 1.4741850000000001
	.quad	0x3ffc5524bfd2e947              # double 1.7707870000000001
	.quad	0x400956c8b4395810              # double 3.1673749999999998
	.quad	0x401e47264a16a487              # double 7.5694819999999998
	.quad	0x40129d9f0a1be2b5              # double 4.6539270000000004
	.quad	0x4008f4b838c111ae              # double 3.1194920000000002
	.quad	0x401989ae4f3343fa              # double 6.3844539999999999
	.quad	0x40172b7132724313              # double 5.7924239999999996
	.quad	0x3ff0e9888f861a61              # double 1.057015
	.quad	0x4012cde2ac322292              # double 4.70106
	.quad	0x40189e33269df97b              # double 6.1544920000000003
	.quad	0x3fe372990f301eac              # double 0.60773900000000003
	.quad	0x40162c9b845564b6              # double 5.5435619999999997
	.quad	0x400a41797cc39ffd              # double 3.2819699999999998
	.quad	0x400638bd66277c46              # double 2.7777050000000001
	.quad	0x400683da2f8bdec6              # double 2.814381
	.quad	0x401ee2e6644d8772              # double 7.7215819999999997
	.quad	0x4009157de0d66f0d              # double 3.135494
	.quad	0x3fe90ecd8dbcec85              # double 0.783057
	.quad	0x3feae0114d2f5dbc              # double 0.83985200000000004
	.quad	0x4022b08a697aeddd              # double 9.3448060000000002
	.quad	0x4016b8af81626b2f              # double 5.6803569999999999
	.quad	0x400c2a0f4d7add16              # double 3.520537
	.quad	0x400e7cae21101b00              # double 3.8108789999999999
	.quad	0x3ff1ad6238da3c21              # double 1.10483
	.quad	0x3fe241e14bdfd263              # double 0.57054199999999999
	.quad	0x400927e73a365cb3              # double 3.1444839999999998
	.quad	0x401fa3d74d594f27              # double 7.9100010000000002
	.quad	0x40097d9f4d37c137              # double 3.1863389999999998
	.quad	0x401af67c6b8b6955              # double 6.7407089999999998
	.quad	0x4005a061847f5621              # double 2.7033109999999998
	.quad	0x3ff01feeb2d0a244              # double 1.0077959999999999
	.quad	0x400a464d3bf2f556              # double 3.2843270000000002
	.quad	0x4021e2d42c3c9eed              # double 8.9430250000000004
	.quad	0x4020dbf811f4f50a              # double 8.429627
	.quad	0x40143cdc443914f5              # double 5.0594340000000004
	.quad	0x401b3caa7589efd8              # double 6.8092439999999996
	.quad	0x3ffcf2cc70867ad9              # double 1.809277
	.quad	0x4021770c1333b96b              # double 8.7325140000000001
	.quad	0x40229fa7eb6bf445              # double 9.3118280000000002
	.quad	0x4016c291b823c85c              # double 5.6900089999999999
	.quad	0x3ffd55ee136e71ce              # double 1.8334790000000001
	.quad	0x3ff69903a7546d40              # double 1.4123570000000001
	.quad	0x3fe3a78d0cc35ce2              # double 0.61420300000000005
	.quad	0x40205304ab606b7b              # double 8.1621450000000006
	.quad	0x400b331f46ed245b              # double 3.3999619999999999
	.quad	0x401540e0a84be404              # double 5.3133569999999999
	.quad	0x40052df8b1572581              # double 2.6474470000000001
	.quad	0x4022904c8bc9cd3e              # double 9.2818339999999999
	.quad	0x40162a5c1c6088d7              # double 5.5413670000000002
	.quad	0x4022ab089a027525              # double 9.3340499999999995
	.quad	0x4010955e28aa4335              # double 4.145867
	.quad	0x40208d536933a040              # double 8.2760269999999991
	.quad	0x400f7ac710cb295f              # double 3.9349500000000002
	.quad	0x40229a3a29c779a7              # double 9.3012250000000005
	.quad	0x400f9e1eb4202d9d              # double 3.952207
	.quad	0x3ffc01b64e054691              # double 1.750418
	.quad	0x4023263fbbd7b203              # double 9.5747049999999997
	.quad	0x3ff5c644523f67f5              # double 1.360905
	.quad	0x3fef8cc78e9f6a94              # double 0.985935
	.quad	0x3ff2eb0ea18372e7              # double 1.1823870000000001
	.quad	0x401ffe70c1333b97              # double 7.9984770000000002
	.quad	0x402190f51ac9afe2              # double 8.7831200000000003
	.quad	0x400a666a98244e94              # double 3.3000080000000001
	.quad	0x400e852b4d8ba40e              # double 3.8150240000000002
	.quad	0x40221f2452c59fb2              # double 9.0608240000000002
	.quad	0x3feadde9c0229a5f              # double 0.83958900000000003
	.quad	0x4008c7496aad1d04              # double 3.097308
	.quad	0x4018df87ad080b67              # double 6.2182909999999998
	.quad	0x4010ce60807357e6              # double 4.2015399999999996
	.quad	0x401817d1bb4916ca              # double 6.0232609999999998
	.quad	0x401e52a80064a9ce              # double 7.5807190000000002
	.quad	0x4023a83c6c97d8cf              # double 9.8285859999999996
	.quad	0x401549f0a1be2b49              # double 5.3222069999999997
	.quad	0x40201fe49b1fab97              # double 8.0622910000000001
	.quad	0x3ffdf1f79420b3d5              # double 1.8715740000000001
	.quad	0x4012811b1d92b7fe              # double 4.62608
	.quad	0x402350e8c8abd5dc              # double 9.6580259999999995
	.quad	0x40006aab8a5ce5b4              # double 2.0520849999999999
	.quad	0x40153a2339c0ebee              # double 5.306775
	.quad	0x401d1823c85c24c4              # double 7.273574
	.quad	0x4014a4f2f123c42a              # double 5.1610829999999996
	.quad	0x400e1e646f156191              # double 3.76484
	.quad	0x402102c3009b3073              # double 8.5053940000000008
	.quad	0x4023c85015c20924              # double 9.8912359999999992
	.quad	0x400e20b3d4ae429e              # double 3.765968
	.quad	0x400e1d35eb7457c1              # double 3.7642630000000001
	.quad	0x401dd2af9a8cdea0              # double 7.4557479999999998
	.quad	0x4013377292c49342              # double 4.8041479999999996
	.quad	0x4014ad7f950b955f              # double 5.1694319999999996
	.quad	0x3ff18ac8e68e3ef3              # double 1.0963830000000001
	.quad	0x401ac1986b9c304d              # double 6.6890580000000002
	.quad	0x401b73cfb3311a54              # double 6.8630969999999998
	.quad	0x4021c2f0e0a84be4              # double 8.8807439999999999
	.quad	0x401e93b688bda943              # double 7.6442509999999996
	.quad	0x401601d2178f68be              # double 5.5017779999999998
	.quad	0x400e34c016052503              # double 3.775757
	.quad	0x3ff0a467be553ac5              # double 1.040138
	.quad	0x401cde707e175d14              # double 7.2172260000000001
	.quad	0x402105204af92296              # double 8.5100119999999997
	.quad	0x401e3d45a5fc7e6b              # double 7.5598359999999997
	.quad	0x40167ce075f6fd22              # double 5.62195
	.quad	0x400198b588e368f1              # double 2.1995650000000002
	.quad	0x4001043137b07076              # double 2.1270470000000001
	.quad	0x402366d8904f6dfc              # double 9.7008709999999993
	.quad	0x3ff0d13836a832ba              # double 1.0510790000000001
	.quad	0x401c1aeee957470f              # double 7.0263020000000003
	.quad	0x400906d7a56de332              # double 3.1283409999999998
	.quad	0x40198202d9cf13cf              # double 6.3769640000000001
	.quad	0x40207ecc3e3193f7              # double 8.2476520000000004
	.quad	0x4015d068db8bac71              # double 5.453525
	.quad	0x401c230014f8b589              # double 7.0341800000000001
	.quad	0x40232079e59f2baa              # double 9.5634300000000003
	.quad	0x3ffe1327243137b0              # double 1.8796759999999999
	.quad	0x40212d07e9d94d0e              # double 8.5879510000000003
	.quad	0x40228823e9ea1405              # double 9.2658989999999992
	.quad	0x40090a326e115593              # double 3.1299790000000001
	.quad	0x401995c896dd26b7              # double 6.3962729999999999
	.quad	0x40101e2ef4e0114d              # double 4.0294759999999998
	.quad	0x401579ce8d972cd8              # double 5.3689520000000002
	.quad	0x3fbdaec4a4095f24              # double 0.115948
	.quad	0x400b39a0f0a5efe9              # double 3.4031389999999999
	.quad	0x400062f837b4a234              # double 2.0483250000000002
	.quad	0x402133b256ffc116              # double 8.6009700000000002
	.quad	0x401f2af9a8cdea03              # double 7.7919679999999997
	.quad	0x4021859f2ba9d1f6              # double 8.76098
	.quad	0x40228bb98c7e2824              # double 9.2728999999999999
	.quad	0x3fce6be7afa72218              # double 0.23766799999999999
	.quad	0x401de92d55a3a084              # double 7.4777120000000004
	.quad	0x401ba7dbb16c1e36              # double 6.9139239999999997
	.quad	0x402058da5daf07c0              # double 8.1735410000000002
	.quad	0x400ec9c560c7c0f4              # double 3.8485209999999999
	.quad	0x400968bda9435ac9              # double 3.1761430000000002
	.quad	0x401bf845564b6630              # double 6.9924520000000001
	.quad	0x3ffd9b9f98b71b8b              # double 1.8504940000000001
	.quad	0x40071248d7e02646              # double 2.883928
	.quad	0x40163fa15db3397e              # double 5.5621390000000002
	.quad	0x401ccfd113836a83              # double 7.2029459999999998
	.quad	0x4023f94185058dde              # double 9.9868279999999992
	.quad	0x4014753c9abb01c9              # double 5.1144889999999998
	.quad	0x3fc3c087442c7fbb              # double 0.15431300000000001
	.quad	0x40143b3700474d9c              # double 5.0578269999999996
	.quad	0x3fe87b9e060fe47a              # double 0.76509000000000005
	.quad	0x40079d6e04c05921              # double 2.95187
	.quad	0x400e35629d8409e5              # double 3.7760669999999998
	.quad	0x3ff5ab24a6a875d5              # double 1.3542829999999999
	.quad	0x400c8da122fad6cb              # double 3.5691549999999999
	.quad	0x4009a2480e8c8abd              # double 3.2042389999999998
	.quad	0x401f62074ea8da7f              # double 7.8457309999999997
	.quad	0x3fd56bf8769ec2ce              # double 0.33471499999999998
	.quad	0x40235f0739b024f6              # double 9.6856019999999994
	.quad	0x40055797460242d0              # double 2.6677689999999998
	.quad	0x40143ba8c586876e              # double 5.0582609999999999
	.quad	0x401bc51a86940358              # double 6.9424840000000003
	.quad	0x3ff95759ee88df37              # double 1.583826
	.quad	0x3ff5e19a847b2464              # double 1.3675790000000001
	.quad	0x4016256c93a71151              # double 5.5365469999999997
	.quad	0x3fff5fa871a3b14b              # double 1.9608540000000001
	.quad	0x4005eddbdb5d8948              # double 2.741142
	.quad	0x4023aece789e774f              # double 9.8414190000000001
	.quad	0x401700767d34df05              # double 5.7504520000000001
	.quad	0x4010d00ffda4052d              # double 4.2031859999999996
	.quad	0x40132671ac14c661              # double 4.7875430000000003
	.quad	0x3ffcda31a4bdba0a              # double 1.8032699999999999
	.quad	0x401ce0f7b9e060fe              # double 7.2196949999999998
	.quad	0x40196151e75360d0              # double 6.3450389999999999
	.quad	0x4022d626b2f23034              # double 9.4182640000000006
	.quad	0x40035dcdf6987831              # double 2.4208029999999998
	.quad	0x400301d2178f68be              # double 2.3758889999999999
	.quad	0x3ff1923b3636f3b2              # double 1.098201
	.quad	0x40159c23315d701e              # double 5.4024780000000003
	.quad	0x3ff5d77fae3608d1              # double 1.3651120000000001
	.quad	0x4013b8c7192ea52f              # double 4.930447
	.quad	0x401875b9628cbd12              # double 6.1149649999999998
	.quad	0x3ff6e19b90ea9e6f              # double 1.43008
	.quad	0x40162e97d06bbdbe              # double 5.5455009999999998
	.quad	0x40204975afaf8594              # double 8.1434759999999997
	.quad	0x3f9ba1f4b1ee2435              # double 0.026984999999999999
	.quad	0x401bc3d07c84b5dd              # double 6.9412250000000002
	.quad	0x40025564302b40f6              # double 2.2916949999999998
	.quad	0x400283393ab430f5              # double 2.3140740000000002
	.quad	0x40202522424a276b              # double 8.0725269999999991
	.quad	0x4014dfd36f7e3d1d              # double 5.2185800000000002
	.quad	0x3fe88ede54b48d3b              # double 0.76744000000000001
	.quad	0x40177da0dfdef848              # double 5.8726839999999996
	.quad	0x40165bb01c92ddbe              # double 5.5895390000000003
	.quad	0x4018d6e32e3821af              # double 6.2098509999999996
	.quad	0x4021badadb8348f5              # double 8.8649509999999996
	.quad	0x4004fa975afaf859              # double 2.6223589999999999
	.quad	0x4019ae5de15ca6ca              # double 6.42028
	.quad	0x40221368f08461fa              # double 9.0379100000000001
	.quad	0x3ff38487b99d4520              # double 1.2198560000000001
	.quad	0x40180e6644d87725              # double 6.014062
	.quad	0x3fe998cc144028e5              # double 0.799902
	.quad	0x40171425f202107b              # double 5.7696759999999996
	.quad	0x4018f923e5b8561d              # double 6.2433009999999998
	.quad	0x40086a65cf67b1c0              # double 3.051952
	.quad	0x3ff9576ab5807fed              # double 1.583842
	.quad	0x401afbfb15b573eb              # double 6.7460750000000003
	.quad	0x40208ae90364388f              # double 8.2713090000000005
	.quad	0x401a9c68661ae70c              # double 6.6527419999999999
	.quad	0x40232856605ee569              # double 9.5787840000000006
	.quad	0x40179c84f8f8a4c2              # double 5.9028510000000001
	.quad	0x4021f20fb224aada              # double 8.9727759999999996
	.quad	0x4023498e97071822              # double 9.6436659999999996
	.quad	0x401e0a88ace24bba              # double 7.5102869999999999
	.quad	0x3fd6290eed02cd3a              # double 0.34625600000000001
	.quad	0x3ff9d4de7ea5f84d              # double 1.6144700000000001
	.quad	0x40211185058dde7a              # double 8.5342179999999992
	.quad	0x3fb4c8eef1bac2df              # double 0.081190999999999999
	.quad	0x401b8b00bcbe61d0              # double 6.885745
	.quad	0x3ffb7dac68a936c6              # double 1.7181820000000001
	.quad	0x401a4bd944aa53fc              # double 6.574071
	.quad	0x40149f5ec80c73ac              # double 5.1556350000000002
	.quad	0x401fce75ff609dd0              # double 7.9516220000000004
	.quad	0x40235973fb7a5f42              # double 9.6747130000000006
	.quad	0x40060efc371da37f              # double 2.757317
	.quad	0x40104fbf401c4fc2              # double 4.0778780000000001
	.quad	0x4023a8aa64c2f838              # double 9.8294250000000005
	.quad	0x4005f27fe4bcad9b              # double 2.7434080000000001
	.quad	0x401cd02c9081c2e3              # double 7.2032949999999998
	.quad	0x3fd12107b784662c              # double 0.26764100000000002
	.quad	0x402162ea52ef911d              # double 8.6931940000000001
	.quad	0x40228deb7457c0b1              # double 9.2771869999999996
	.quad	0x4023c0be9424e593              # double 9.8764540000000007
	.quad	0x3ff1818f81e8a2ec              # double 1.094131
	.quad	0x401aae2d6238da3c              # double 6.6700949999999999
	.quad	0x40210a1554fbdad7              # double 8.5196939999999994
	.quad	0x4023c5aea3161a1e              # double 9.8860980000000005
	.quad	0x401eebfb58d1526e              # double 7.7304510000000004
	.quad	0x3fe8e394face67d7              # double 0.77778099999999994
	.quad	0x3ffad752977c88e8              # double 1.6775690000000001
	.quad	0x401cd0b1bbcf4e87              # double 7.2038029999999997
	.quad	0x402263cab81f969e              # double 9.1949059999999996
	.quad	0x402113b4f6167232              # double 8.5384899999999995
	.quad	0x4010c612839042d9              # double 4.1934300000000002
	.quad	0x40227225d8d79d0a              # double 9.2229449999999993
	.quad	0x40234ed19dece571              # double 9.6539429999999999
	.quad	0x401dc690de093533              # double 7.4439120000000001
	.quad	0x4011bbd66277c45d              # double 4.4334350000000002
	.quad	0x40009fd2630ec311              # double 2.0780379999999998
	.quad	0x40210fb395c42203              # double 8.5306669999999993
	.quad	0x400312441fea8113              # double 2.3839190000000001
	.quad	0x40178bb01c92ddbe              # double 5.8864140000000003
	.quad	0x40239999567dbb17              # double 9.7999980000000004
	.quad	0x401162ae07e5a78f              # double 4.3463669999999999
	.quad	0x40182fbce4217d28              # double 6.0466189999999997
	.quad	0x401a4f944241c3f0              # double 6.5777140000000003
	.quad	0x40139738e6d15ad1              # double 4.897678
	.quad	0x40227cfc829cfdd2              # double 9.2441139999999997
	.quad	0x4003a62131a8ef78              # double 2.456118
	.quad	0x401925e74299d884              # double 6.2870150000000002
	.quad	0x4013ee1c58255b03              # double 4.9825299999999997
	.quad	0x401a0393250b5244              # double 6.5034910000000004
	.quad	0x401cfa62ed352221              # double 7.2445180000000002
	.quad	0x401af0331e3a7daa              # double 6.7345699999999997
	.quad	0x3ff6874107314ca9              # double 1.408021
	.quad	0x4022a97e132b55ef              # double 9.3310399999999998
	.quad	0x4001b5454152b0a7              # double 2.213511
	.quad	0x40131d1c7de5082d              # double 4.778429
	.quad	0x4005876c050bd87b              # double 2.6911239999999998
	.quad	0x3fd3be2b4959e625              # double 0.30848199999999998
	.quad	0x3fa00de4c51116a9              # double 0.031356000000000002
	.quad	0x4017da3d70a3d70a              # double 5.9631249999999998
	.quad	0x4018184901d19158              # double 6.0237160000000003
	.quad	0x40228cafd5454153              # double 9.2747790000000006
	.quad	0x401564b5dcc63f14              # double 5.3483499999999999
	.quad	0x402318472c0e7bc4              # double 9.5474180000000004
	.quad	0x40187baa9b499d02              # double 6.120768
	.quad	0x4022e86a4ca4f441              # double 9.4539360000000005
	.quad	0x3fd9fda4052d666b              # double 0.40610600000000002
	.quad	0x401bb7ecfe9b7bf2              # double 6.9296150000000001
	.quad	0x3ff4bb9ae0c17657              # double 1.2958019999999999
	.quad	0x3fbbf6c2699c7bcc              # double 0.109234
	.quad	0x4015257689ca18bd              # double 5.2865849999999996
	.quad	0x401f6cec41dd1a22              # double 7.8563700000000001
	.quad	0x4018c2e59af9ebea              # double 6.1903290000000002
	.quad	0x401f5a871a3b14a9              # double 7.8384059999999999
	.quad	0x4016586338b47c74              # double 5.5863160000000001
	.quad	0x40074d9620685554              # double 2.912884
	.quad	0x4022c455432873bd              # double 9.3834630000000007
	.quad	0x401194a0e410b631              # double 4.3951450000000003
	.quad	0x401bf01f31f46ed2              # double 6.9844939999999998
	.quad	0x400d864c2f837b4a              # double 3.6905749999999999
	.quad	0x4017d7064ece9a2c              # double 5.9599849999999996
	.quad	0x402314523f67f4dc              # double 9.5396900000000002
	.quad	0x40234c4a6223e187              # double 9.6490050000000007
	.quad	0x402156113404ea4b              # double 8.6681000000000008
	.quad	0x4021849320d9945b              # double 8.7589349999999992
	.quad	0x4021442b734b5137              # double 8.6331439999999997
	.quad	0x400999dfdac68a93              # double 3.2001339999999998
	.quad	0x4001746994185059              # double 2.1818420000000001
	.quad	0x4023d34549b62c77              # double 9.9126379999999993
	.quad	0x4021af8a2a90cd42              # double 8.8428509999999996
	.quad	0x401ee8e64b231401              # double 7.7274409999999997
	.quad	0x4022629f16b11c6d              # double 9.1926199999999998
	.quad	0x4004cd4a1ad6451c              # double 2.6002390000000002
	.quad	0x40177f29d40ee06e              # double 5.8741830000000004
	.quad	0x401f9116659d12cb              # double 7.8916870000000001
	.quad	0x3f7cbab649d388a9              # double 0.0070140000000000003
	.quad	0x3feafad080b673c5              # double 0.84311700000000001
	.quad	0x401886f112fd32c6              # double 6.1317789999999999
	.quad	0x3ff18d5842b734b5              # double 1.097008
	.quad	0x3ffd4dc33721d53d              # double 1.831485
	.quad	0x3ffa772c5197a249              # double 1.6540950000000001
	.quad	0x402170164840e172              # double 8.7189200000000007
	.quad	0x3fea109289dadfb5              # double 0.814523
	.quad	0x4018a10a137f38c5              # double 6.1572649999999998
	.quad	0x4020af15a4acf313              # double 8.3419620000000005
	.quad	0x401db2c386d2ed78              # double 7.4245739999999997
	.quad	0x3ff699c27e953155              # double 1.412539
	.quad	0x3fcdf84449dbec25              # double 0.23413900000000001
	.quad	0x400680c7c0f45176              # double 2.812881
	.quad	0x4008b89d6adf71eb              # double 3.090144
	.quad	0x401105abc0e38a7e              # double 4.2555379999999996
	.quad	0x4016f37bd05af6c7              # double 5.7377770000000003
	.quad	0x3fc87fed20296b33              # double 0.19140399999999999
	.quad	0x3fe1dea24cc68230              # double 0.55842700000000001
	.quad	0x40213800c9539b89              # double 8.6093810000000008
	.quad	0x4009835158b827fa              # double 3.18912
	.quad	0x4018c51dabe2717a              # double 6.1924960000000002
	.quad	0x401c4a1a93293d10              # double 7.0723669999999998
	.quad	0x4021121f2990f302              # double 8.5353940000000001
	.quad	0x401a5c126a65cf68              # double 6.5899140000000003
	.quad	0x40131efa615a8deb              # double 4.7802519999999999
	.quad	0x402313bb83cf2cf9              # double 9.5385399999999993
	.quad	0x4013cf68be2f7b18              # double 4.9525480000000002
	.quad	0x3feacb1cc9646280              # double 0.83729399999999998
	.quad	0x3fa2702a3486f04a              # double 0.036012000000000002
	.quad	0x40125c4199fe4367              # double 4.5900939999999997
	.quad	0x40215c21c044284e              # double 8.679945
	.quad	0x3fea926202539757              # double 0.83036900000000002
	.quad	0x3fd72eb5f5f0b285              # double 0.36222599999999999
	.quad	0x401c407d4e09784f              # double 7.0629780000000002
	.quad	0x400214057082491b              # double 2.259776
	.quad	0x40178d8c2a454de8              # double 5.8882300000000001
	.quad	0x4014e22467be553b              # double 5.2208420000000002
	.quad	0x4011a3d9ec700043              # double 4.4100109999999999
	.quad	0x402210cb295e9e1b              # double 9.0327999999999999
	.quad	0x40188fb65668c261              # double 6.1403439999999998
	.quad	0x4023212cf0f9d2bf              # double 9.5647959999999994
	.quad	0x400a5c5a3e39f773              # double 3.2950940000000002
	.quad	0x4021f2b5807fed20              # double 8.9740409999999997
	.quad	0x4011619eb6390c91              # double 4.345332
	.quad	0x401a03e78e1932d7              # double 6.5038130000000001
	.quad	0x4002ef9a8cdea034              # double 2.366994
	.quad	0x3ff55e2478854cdb              # double 1.3354839999999999
	.quad	0x4020153cff64cf8d              # double 8.0414809999999992
	.quad	0x401bad045fe11127              # double 6.9189619999999996
	.quad	0x4018558ab92c0618              # double 6.0835369999999998
	.quad	0x3ff8f29a1b9f98b7              # double 1.559229
	.quad	0x401ff32873bc903f              # double 7.9874590000000003
	.quad	0x400c0c6cdaf4adbc              # double 3.5060669999999998
	.quad	0x4010c963dc486ad3              # double 4.1966700000000001
	.quad	0x40171b8f9b13165d              # double 5.7769149999999998
	.quad	0x401be5cdd50a88f0              # double 6.974418
	.quad	0x402121210385c67e              # double 8.564705
	.quad	0x3fe3659af9ebe9c9              # double 0.60615300000000005
	.quad	0x3ff352f5dbb9cf9a              # double 1.207754
	.quad	0x3ff26b4e9813879c              # double 1.1511979999999999
	.quad	0x401f3723aafff36b              # double 7.8038470000000002
	.quad	0x40141bae89eba6ad              # double 5.0270330000000003
	.quad	0x401921e18efbb0e6              # double 6.2830870000000001
	.quad	0x401b855b89939219              # double 6.8802320000000003
	.quad	0x4023ef1c970f7b9e              # double 9.967015
	.quad	0x3ffc83a53b8e4b88              # double 1.7821400000000001
	.quad	0x400f3e1eb4202d9d              # double 3.905332
	.quad	0x401352cf95d4e8fb              # double 4.83087
	.quad	0x4023289c3ce2089e              # double 9.5793169999999996
	.quad	0x402071ecd4aa10e0              # double 8.2225099999999998
	.quad	0x4012d73f316e3715              # double 4.7102019999999998
	.quad	0x3ff60f32378ab0c9              # double 1.3787100000000001
	.quad	0x400ca954a7f8012e              # double 3.582681
	.quad	0x4020e37f1737542a              # double 8.4443289999999998
	.quad	0x40211d271bcdbbe0              # double 8.5569389999999999
	.quad	0x40217fbc7f77af64              # double 8.7494849999999999
	.quad	0x4017c2a737110e45              # double 5.9400909999999998
	.quad	0x400a238c111ada77              # double 3.2673570000000001
	.quad	0x4020b097a67a52ac              # double 8.3449069999999991
	.quad	0x402213892ee84ad8              # double 9.0381560000000007
	.quad	0x40005b7b6bb12902              # double 2.0446689999999998
	.quad	0x3fd5b0b7c3504c49              # double 0.33891100000000002
	.quad	0x3ffa809a24031487              # double 1.6563969999999999
	.quad	0x3ffed6fc9bc77143              # double 1.927487
	.quad	0x4000d8d3f1843c3a              # double 2.1058729999999999
	.quad	0x3ffe415e39713ad6              # double 1.8909590000000001
	.quad	0x3fe4e225fa658c4c              # double 0.65260600000000002
	.quad	0x3fe5ab302f72b453              # double 0.67714700000000005
	.quad	0x40238fcc39ffd60f              # double 9.7808550000000007
	.quad	0x3ffe9805e5f30e80              # double 1.912115
	.quad	0x400da949a5657fb7              # double 3.7076600000000002
	.quad	0x3ffa9e0828c36da8              # double 1.6635819999999999
	.quad	0x401f243cc07aaef3              # double 7.7853880000000001
	.quad	0x40201d02ababead5              # double 8.0566610000000001
	.quad	0x3ff916440f238972              # double 1.567936
	.quad	0x401812e3c536d656              # double 6.0184470000000001
	.quad	0x40146992428d434a              # double 5.103097
	.quad	0x401cc7b99d451fc5              # double 7.1950440000000002
	.quad	0x40123d39da16616b              # double 4.5597909999999997
	.quad	0x3fff422467be553b              # double 1.9536480000000001
	.quad	0x3ff6af9767903212              # double 1.417869
	.quad	0x40151361565c2d28              # double 5.2689260000000004
	.quad	0x400008259e1f3a58              # double 2.003978
	.quad	0x401c6672fba01eef              # double 7.1000480000000001
	.quad	0x4020cf2367e414e8              # double 8.4045670000000001
	.quad	0x400209ca18bd6627              # double 2.2547799999999998
	.quad	0x401c7899bf5946c3              # double 7.1177739999999998
	.quad	0x4020c4c100e6afcd              # double 8.3842850000000002
	.quad	0x401e8a98aa8650e7              # double 7.6353479999999995
	.quad	0x4007cd5f99c38b05              # double 2.9752800000000001
	.quad	0x4010aa8b4bf8fcd6              # double 4.1665469999999996
	.quad	0x402005d590c0ad04              # double 8.0113950000000002
	.quad	0x4017feda66128390              # double 5.9988799999999998
	.quad	0x40213011b1d92b80              # double 8.5938850000000002
	.quad	0x401fc16f0068db8c              # double 7.9389000000000003
	.quad	0x3ff991a005c4651f              # double 1.5980529999999999
	.quad	0x401b88a265f0f5a1              # double 6.883432
	.quad	0x3fec62cba732df50              # double 0.88705999999999996
	.quad	0x401d08cf398e9707              # double 7.2586029999999999
	.quad	0x40147cf6be37de94              # double 5.1220350000000003
	.quad	0x401f1dc69f8c21e2              # double 7.7790780000000002
	.quad	0x3fe16f1348b22079              # double 0.54480899999999999
	.quad	0x3ff2543f1c75818c              # double 1.1455679999999999
	.quad	0x3fe8859641f64495              # double 0.76630699999999996
	.quad	0x40127147ae147ae1              # double 4.6106249999999998
	.quad	0x40174e57d9dba909              # double 5.8265070000000003
	.quad	0x3ff42ea52ef911cf              # double 1.261388
	.quad	0x3ffbb91b3f20a73f              # double 1.7326919999999999
	.quad	0x3ffc6e19b90ea9e7              # double 1.77688
	.quad	0x401d8307f23cc8de              # double 7.3779599999999999
	.quad	0x4002200a7c5ac472              # double 2.2656450000000001
	.quad	0x4010f38ac18f81e9              # double 4.2378340000000003
	.quad	0x40221d6ba8c58687              # double 9.0574619999999992
	.quad	0x401d5b0e5e679464              # double 7.3389220000000002
	.quad	0x4014ed78c436fc16              # double 5.2319060000000004
	.quad	0x401478d045fe1112              # double 5.1179819999999996
	.quad	0x3fe5676ea4228998              # double 0.66887600000000003
	.quad	0x40206f92af9a8cdf              # double 8.2179160000000007
	.quad	0x401164484944ed70              # double 4.3479320000000001
	.quad	0x4015f03c4b09e98e              # double 5.4846050000000002
	.quad	0x3fcb3879c4113c68              # double 0.21266099999999999
	.quad	0x40116d6a161e4f76              # double 4.3568499999999997
	.quad	0x40193187a4a48f97              # double 6.2983690000000001
	.quad	0x3fe34558644523f6              # double 0.60221499999999994
	.quad	0x40224a7ac81d3aa3              # double 9.1454679999999993
	.quad	0x3fcd9ef954eb13e0              # double 0.23141400000000001
	.quad	0x40042a00192a7371              # double 2.520508
	.quad	0x3ffad8c08b75ea68              # double 1.677918
	.quad	0x3fefe98dcdb37c9a              # double 0.99726000000000004
	.quad	0x4022f648a58b3f64              # double 9.4810230000000004
	.quad	0x400964a4095f2453              # double 3.1741410000000001
	.quad	0x40205a5785f8d2e5              # double 8.1764489999999999
	.quad	0x4016a6d7625204b0              # double 5.6629310000000004
	.quad	0x4021cf7d0f1f57b4              # double 8.9052509999999998
	.quad	0x401f1adfb506dd6a              # double 7.7762440000000002
	.quad	0x4013f4988094e5d6              # double 4.9888630000000003
	.quad	0x40029212513b5bf7              # double 2.3213240000000002
	.quad	0x3ffde8dc981beb18              # double 1.869351
	.quad	0x3ffd767903211cb0              # double 1.8414239999999999
	.quad	0x402361c2a0232096              # double 9.6909379999999992
	.quad	0x402131641f644956              # double 8.5964670000000005
	.quad	0x400602b7baecd078              # double 2.7513269999999999
	.quad	0x40175d3d859c8c93              # double 5.8410549999999999
	.quad	0x3ffca56ffc115df6              # double 1.7903899999999999
	.quad	0x40107c4199fe4367              # double 4.1213439999999997
	.quad	0x40114bf11f926c7f              # double 4.3241620000000003
	.quad	0x400bea47ecfe9b7c              # double 3.489395
	.quad	0x3fe9e24dd2f1a9fc              # double 0.80887500000000001
	.quad	0x40058cad57bc7f78              # double 2.6936900000000001
	.quad	0x401a194c447c30d3              # double 6.524705
	.quad	0x40237b671ac14c66              # double 9.7410209999999999
	.quad	0x4015c055757d5a9f              # double 5.4378260000000003
	.quad	0x40183aab042528ae              # double 6.0572929999999996
	.quad	0x40158097c80841ee              # double 5.3755790000000001
	.quad	0x3ff79e6362a5e786              # double 1.4761690000000001
	.quad	0x401544de3b8a19ca              # double 5.3172540000000001
	.quad	0x40216c343b70ef56              # double 8.7113359999999993
	.quad	0x40213e81ecd4aa11              # double 8.6220850000000002
	.quad	0x400b6c8abd5dc400              # double 3.4279989999999998
	.quad	0x4001634e3369b9d8              # double 2.173489
	.quad	0x40153d06bbdbe3c1              # double 5.309596
	.quad	0x3fac2f837b4a233a              # double 0.055050000000000002
	.quad	0x40210cf312b1b36c              # double 8.5252920000000003
	.quad	0x4018ba9fbe76c8b4              # double 6.1822499999999998
	.quad	0x401cd5da272862f6              # double 7.2088400000000004
	.quad	0x401be4d26fa3fcca              # double 6.9734590000000001
	.quad	0x4016ecbd1244a622              # double 5.7311899999999998
	.quad	0x3fe7c55a7d24180d              # double 0.74284099999999997
	.quad	0x401c79f59ccfaeff              # double 7.1191009999999997
	.quad	0x400a0ed6fda836eb              # double 3.2572459999999999
	.quad	0x4020331704ff4342              # double 8.0997850000000007
	.quad	0x40069cf5f4e4430b              # double 2.826641
	.quad	0x400fb58537e2c55d              # double 3.9636330000000002
	.quad	0x4021bcfe58601366              # double 8.8691279999999999
	.quad	0x40154cb20fb224ab              # double 5.3248980000000001
	.quad	0x40208897e996312f              # double 8.2667839999999995
	.quad	0x3ffdbd651b0ccbc0              # double 1.8587389999999999
	.quad	0x401ecb8e086bdf4c              # double 7.6987839999999998
	.quad	0x401bf85a0be51090              # double 6.9925309999999996
	.quad	0x4020b0dbf0563ed1              # double 8.3454280000000001
	.quad	0x3ffec3361565c2d2              # double 1.9226589999999999
	.quad	0x4015f0af5fd47bee              # double 5.4850440000000003
	.quad	0x40086869c66d373b              # double 3.050983
	.quad	0x3ffcdd909f1f1498              # double 1.8040929999999999
	.quad	0x40227178d4fdf3b6              # double 9.2216249999999995
	.quad	0x401c4c4c5974e65c              # double 7.0745100000000001
	.quad	0x401e3231c64ba94c              # double 7.5490180000000002
	.quad	0x400c8065b63d3e4f              # double 3.562694
	.quad	0x401787b1c0010c6f              # double 5.8825139999999996
	.quad	0x400351d606317269              # double 2.4149590000000001
	.quad	0x3ffdc50374ff865d              # double 1.8605989999999999
	.quad	0x3ff7426bb55ac040              # double 1.453716
	.quad	0x4008be004b7f5a53              # double 3.0927739999999999
	.quad	0x3ff0fb9bed30f063              # double 1.061428
	.quad	0x40127117720c8cd6              # double 4.6104409999999998
	.quad	0x4012857bc7f77af6              # double 4.6303549999999998
	.quad	0x40094797891e2153              # double 3.1599569999999999
	.quad	0x4012a0dfdef8487c              # double 4.6571040000000004
	.quad	0x3ffde871a3b14a90              # double 1.8692489999999999
	.quad	0x401ffa5ebb7739f3              # double 7.9945019999999997
	.quad	0x40226eb723ee1bd2              # double 9.2162410000000001
	.quad	0x400011c970f7b9e0              # double 2.0086849999999998
	.quad	0x40223c0229a5ebb7              # double 9.1172039999999992
	.quad	0x401ad6965f5275ef              # double 6.7095580000000004
	.quad	0x3ff5a4840e1719f8              # double 1.352665
	.quad	0x401a156b00ffda40              # double 6.5209159999999997
	.quad	0x3fe1522424a276b8              # double 0.54127700000000001
	.quad	0x3ff3fedc7ef177a7              # double 1.249722
	.quad	0x3ff128d21bc126a6              # double 1.0724659999999999
	.quad	0x4021d01882adc4ca              # double 8.9064370000000004
	.quad	0x4019faa9b499d020              # double 6.4947879999999998
	.quad	0x400904934267839d              # double 3.1272340000000001
	.quad	0x400069717df19d67              # double 2.0514860000000001
	.quad	0x401bdab191dde376              # double 6.9635680000000004
	.quad	0x3ff83f705857afea              # double 1.5154879999999999
	.quad	0x402259b1fab96f22              # double 9.1751860000000001
	.quad	0x400afbd05af6c69b              # double 3.3729559999999998
	.quad	0x400e9c79b34a44c8              # double 3.8264040000000001
	.quad	0x400a4bcf91a32b13              # double 3.2870170000000001
	.quad	0x4012d8800eae18ad              # double 4.7114260000000003
	.quad	0x4017cf37329c347f              # double 5.9523590000000004
	.quad	0x4006e087442c7fbb              # double 2.8596330000000001
	.quad	0x4020c5c03361565c              # double 8.3862319999999996
	.quad	0x3fd6dd1a21ea3593              # double 0.35724499999999998
	.quad	0x4018322ee41919ac              # double 6.0490069999999996
	.quad	0x4012ac100e6afcce              # double 4.6680299999999999
	.quad	0x3ff838066c2acb86              # double 1.5136780000000001
	.quad	0x3fff705532617c1c              # double 1.964925
	.quad	0x3ff5cafd5454152b              # double 1.362058
	.quad	0x4007a1b003686a4d              # double 2.9539490000000002
	.quad	0x401188583621fafd              # double 4.3831490000000004
	.quad	0x40210af87ad080b6              # double 8.5214269999999992
	.quad	0x4022da07f66e86c6              # double 9.4258419999999994
	.quad	0x40225e9ca9ef5233              # double 9.1847890000000003
	.quad	0x4003ae3ac0c62e4d              # double 2.460073
	.quad	0x4004df7b5aea3162              # double 2.6091220000000002
	.quad	0x40211fabb8800eae              # double 8.5618569999999998
	.quad	0x3ff55490e66cb103              # double 1.3331459999999999
	.quad	0x4004fed740c4156e              # double 2.6244339999999999
	.quad	0x400b8e9b38d60a63              # double 3.4446319999999999
	.quad	0x4010822ccb3a2596              # double 4.1271240000000002
	.quad	0x3fd5b77c02afdda9              # double 0.33932400000000001
	.quad	0x401b64b61fe21d97              # double 6.8483510000000001
	.quad	0x401f22a497fa5d29              # double 7.7838310000000001
	.quad	0x40171fb8f57f737e              # double 5.7809790000000003
	.quad	0x401790c62e4d1a65              # double 5.891381
	.quad	0x40038b8a5ce5b424              # double 2.4431349999999998
	.quad	0x40227beaf6837f7c              # double 9.2420270000000002
	.quad	0x4005c5ca29845dc8              # double 2.7215769999999999
	.quad	0x401b0ffb04ee7c4a              # double 6.765606
	.quad	0x3ff6f52eb5f5f0b3              # double 1.4348590000000001
	.quad	0x3ff7aa3486f049aa              # double 1.4790540000000001
	.quad	0x40211c4c165907d9              # double 8.5552679999999999
	.quad	0x40173e3150dae3e7              # double 5.8107350000000002
	.quad	0x401c73d29563a9f4              # double 7.1131080000000004
	.quad	0x4021c4fe9b7bf1e9              # double 8.8847550000000002
	.quad	0x401381001d5c3159              # double 4.8759769999999998
	.quad	0x4013402c0a4a05de              # double 4.8126680000000004
	.quad	0x4015c3f7ced91687              # double 5.4413749999999999
	.quad	0x40142b1feeb2d0a2              # double 5.0421139999999998
	.quad	0x3fece56abde3fbbd              # double 0.90300499999999995
	.quad	0x401973925bb7b6bb              # double 6.3628629999999999
	.quad	0x40185c126a65cf68              # double 6.0899140000000003
	.quad	0x400cd3ac4f7ec354              # double 3.6033559999999998
	.quad	0x4020387357e670e3              # double 8.1102550000000004
	.quad	0x3ff58ebbba55d1c4              # double 1.3473470000000001
	.quad	0x400aa7d1bb4916ca              # double 3.3319429999999999
	.quad	0x4017a7913e81450f              # double 5.91364
	.quad	0x401e0d5347a5b0ff              # double 7.5130129999999999
	.quad	0x40164f32bdc26dce              # double 5.5773419999999998
	.quad	0x401ddd02cd39da16              # double 7.4658309999999997
	.quad	0x400df28522ea0fd4              # double 3.7434180000000001
	.quad	0x3fd2a8d21bc126a6              # double 0.29155399999999998
	.quad	0x400ad1fb3fa6defc              # double 3.3525299999999998
	.quad	0x40137a465a57646b              # double 4.8694090000000001
	.quad	0x4020aa116659d12d              # double 8.3321640000000006
	.quad	0x3fd68655193708ab              # double 0.35194900000000001
	.quad	0x40187481b21c475e              # double 6.1137759999999997
	.quad	0x40040bb1af3a14cf              # double 2.5057100000000001
	.quad	0x400f394face67d78              # double 3.902984
	.quad	0x4022b56a593a2df9              # double 9.3543269999999996
	.quad	0x401ed28c79f66623              # double 7.7056139999999997
	.quad	0x401839d451fc4c16              # double 6.0564739999999997
	.quad	0x400d6f2c7325918a              # double 3.679284
	.quad	0x3ff5ff9f87f023ea              # double 1.374908
	.quad	0x3ff27e43675ddd2b              # double 1.155826
	.quad	0x401abbc382a12f90              # double 6.6833629999999999
	.quad	0x401ecf9bdc69f8c2              # double 7.7027429999999999
	.quad	0x40205d9146e4c0df              # double 8.1827489999999994
	.quad	0x3ff2f0e2c12ad81b              # double 1.18381
	.quad	0x40047214f0520d13              # double 2.555704
	.quad	0x4001d0c1333b96af              # double 2.226931
	.quad	0x401648feac42e98a              # double 5.5712840000000003
	.quad	0x401e03fc0096feb5              # double 7.5038910000000003
	.quad	0x401f6bbc2b94d940              # double 7.8552099999999996
	.quad	0x4014e0a4a05dd8f9              # double 5.2193779999999999
	.quad	0x40221cd056c508b3              # double 9.0562769999999997
	.quad	0x401763b1d0c80410              # double 5.8473579999999998
	.quad	0x3fa10eed02cd39da              # double 0.033316999999999999
	.quad	0x40200e21d96e9bbf              # double 8.0276019999999999
	.quad	0x4020aad5171e29b7              # double 8.3336570000000005
	.quad	0x400608e8a71de69b              # double 2.7543500000000001
	.quad	0x4017f995aaf78fef              # double 5.993735
	.quad	0x401a47d1782d3847              # double 6.5701349999999996
	.quad	0x40209b08bb906467              # double 8.3028010000000005
	.quad	0x4011b59ff4fd6d7f              # double 4.4273680000000004
	.quad	0x3fe944b6e935b91f              # double 0.78963799999999995
	.quad	0x401a24bf0995aaf8              # double 6.5358850000000004
	.quad	0x4023c2d6cb535009              # double 9.8805449999999996
	.quad	0x40205de82d7b634e              # double 8.1834120000000006
	.quad	0x3fe4fb86f47b677f              # double 0.65570399999999995
	.quad	0x4016b8244e93e1ca              # double 5.6798260000000003
	.quad	0x400e004b7f5a5333              # double 3.7501440000000001
	.quad	0x4017e7d30ad46f58              # double 5.9763909999999996
	.quad	0x4006dd095af294dd              # double 2.8579279999999998
	.quad	0x40170082491afc05              # double 5.7504970000000002
	.quad	0x40236fa82e87d2c8              # double 9.7180800000000004
	.quad	0x400b5b3311a543f2              # double 3.4195310000000001
	.quad	0x4003bf23465625a7              # double 2.4683290000000002
	.quad	0x400b866cb10342ab              # double 3.4406370000000002
	.quad	0x402008cc575c0768              # double 8.0171840000000003
	.quad	0x4020e99b0ab2e169              # double 8.4562609999999996
	.quad	0x401013e5fb71fbc6              # double 4.0194320000000001
	.quad	0x402054f2ae07e5a8              # double 8.1659140000000008
	.quad	0x3ffe47ae147ae148              # double 1.8925000000000001
	.quad	0x3fd0f40a2877ee4e              # double 0.26489499999999999
	.quad	0x400e8fa15db3397e              # double 3.8201320000000001
	.quad	0x401ce853c148344c              # double 7.2268819999999998
	.quad	0x401401a543f1c758              # double 5.0016069999999999
	.quad	0x401b6f23465625a7              # double 6.8585330000000004
	.quad	0x4021ff87485e3da3              # double 8.9990790000000001
	.quad	0x3fd9f74cd31769a9              # double 0.405719
	.quad	0x400e7d3f5b5fa227              # double 3.811156
	.quad	0x40235b58f2e05ccd              # double 9.6784130000000008
	.quad	0x402126d0917d6b66              # double 8.5758100000000006
	.quad	0x402290bcdfefbf40              # double 9.2826909999999998
	.quad	0x40036acd184c2720              # double 2.427149
	.quad	0x4014e2c12ad81adf              # double 5.2214400000000003
	.quad	0x3fe9adf2ecf20642              # double 0.80248399999999998
	.quad	0x40123a2f8bdec5f4              # double 4.5568220000000004
	.quad	0x4011b7ca643cc07b              # double 4.4294830000000003
	.quad	0x40020b599aa60914              # double 2.2555420000000002
	.quad	0x40141f54d1e96c40              # double 5.0305970000000002
	.quad	0x4023c96e7a311e86              # double 9.893421
	.quad	0x4016185cee17a030              # double 5.5237920000000003
	.quad	0x401c19b6b2af1455              # double 7.0251109999999999
	.quad	0x401d154c55432874              # double 7.2707990000000002
	.quad	0x40220382e44b6e93              # double 9.0068579999999994
	.quad	0x402355b59578a2a9              # double 9.6674009999999999
	.quad	0x400e8e4b018611fd              # double 3.8194789999999998
	.quad	0x3ff1c2c0a4a05dd9              # double 1.110047
	.quad	0x40183dffc5479d4e              # double 6.0605460000000004
	.quad	0x401536a3bddfca00              # double 5.3033590000000004
	.quad	0x4010b0df58c08b76              # double 4.1727270000000001
	.quad	0x4020f75275ee99a6              # double 8.4830509999999997
	.quad	0x4015f36199780baa              # double 5.4876769999999997
	.quad	0x4006eb7ed41b75a7              # double 2.8649879999999999
	.quad	0x4018ebf487fcb924              # double 6.2304250000000003
	.quad	0x4001d52da98676a7              # double 2.2290909999999999
	.quad	0x4015ded245b291b8              # double 5.4675989999999999
	.quad	0x401cd02bc72e275b              # double 7.2032920000000003
	.quad	0x4005c2856605ee57              # double 2.7199810000000002
	.quad	0x402085a836eb4e98              # double 8.2610489999999999
	.quad	0x3fea061847f56217              # double 0.81324399999999997
	.quad	0x3ff947cc7d1bb491              # double 1.5800289999999999
	.quad	0x40089413122b7baf              # double 3.0723020000000001
	.quad	0x3fe72d72ffd1dcd7              # double 0.724298
	.quad	0x401b33e78e1932d7              # double 6.8006880000000001
	.quad	0x4022a329a1b9f98b              # double 9.3186769999999992
	.quad	0x40147947496aad1d              # double 5.118436
	.quad	0x40206520f2becedd              # double 8.1975169999999995
	.quad	0x4006e9de8b3b3205              # double 2.8641939999999999
	.quad	0x4021f71a9fbe76c9              # double 8.9826250000000005
	.quad	0x401a72f405f6ba06              # double 6.6122589999999999
	.quad	0x3fff43fe5c91d14e              # double 1.9540999999999999
	.quad	0x40197d5ed06fef7c              # double 6.3724319999999999
	.quad	0x40035c74751ce28f              # double 2.4201440000000001
	.quad	0x40070d8b1dd5d3dd              # double 2.8816130000000002
	.quad	0x401516223e186983              # double 5.2716149999999997
	.quad	0x3ff25ab7dc7abfba              # double 1.1471480000000001
	.quad	0x4010d5061416377a              # double 4.2080310000000001
	.quad	0x3fffdac79702e664              # double 1.9909129999999999
	.quad	0x4011e3bb83cf2cf9              # double 4.4723949999999997
	.quad	0x401925286b59146e              # double 6.2862869999999997
	.quad	0x400d7a8a3f8982cb              # double 3.6848339999999999
	.quad	0x4021d055970b49e0              # double 8.9069029999999998
	.quad	0x401fdb8aa00192a7              # double 7.9643959999999998
	.quad	0x3fde0f062d40aaeb              # double 0.469667
	.quad	0x4020ecaf4f0d844d              # double 8.462275
	.quad	0x3fea17f1f9acffa8              # double 0.81542300000000001
	.quad	0x3fedffef39085f4a              # double 0.93749199999999999
	.quad	0x400e38b69552e2fc              # double 3.777692
	.quad	0x3fd1ef30a4e379b7              # double 0.28022399999999997
	.quad	0x40024645e4e69f06              # double 2.284313
	.quad	0x3ff9f0aa21a719b5              # double 1.621256
	.quad	0x4021125f202107b8              # double 8.5358820000000009
	.quad	0x400944d1a6506141              # double 3.1586029999999998
	.quad	0x40125c8f32378ab1              # double 4.5903900000000002
	.quad	0x401a79424e592967              # double 6.618417
	.quad	0x40003e2584f4c6e7              # double 2.0303450000000001
	.quad	0x401db23422467be5              # double 7.4240269999999997
	.quad	0x400842f37fbefd00              # double 3.0326909999999998
	.quad	0x4004bbe2b4959e62              # double 2.5917409999999999
	.quad	0x401651cffeb074a7              # double 5.5798949999999996
	.quad	0x4023308377186552              # double 9.5947530000000008
	.quad	0x402000b673c4f3ba              # double 8.0013919999999992
	.quad	0x40214a3f034b0e1b              # double 8.6450119999999995
	.quad	0x4021e67f0aa21a72              # double 8.9501880000000007
	.quad	0x40168cfbb949624a              # double 5.6376790000000003
	.quad	0x4013e11be6e65387              # double 4.9698330000000004
	.quad	0x3ff7240d90e23af3              # double 1.446302
	.quad	0x4021c2c9081c2e34              # double 8.8804400000000001
	.quad	0x4021ef1cb89d6adf              # double 8.9670159999999992
	.quad	0x3fd36ac647778dd6              # double 0.303392
	.quad	0x400695cc857f3062              # double 2.8231440000000001
	.quad	0x40023063e07a28bb              # double 2.273628
	.quad	0x3fdae8ff327aa68f              # double 0.42047099999999998
	.quad	0x40120d955714b9cb              # double 4.5132649999999996
	.quad	0x401c04af0bf1a5ca              # double 7.0045739999999999
	.quad	0x4023ba0817fc7608              # double 9.8633430000000004
	.quad	0x4012aee2003ab863              # double 4.6707840000000003
	.quad	0x3fecce39b456b442              # double 0.90017400000000003
	.quad	0x402188fd3b29a1ba              # double 8.767557
	.quad	0x40049d894812be49              # double 2.5769220000000002
	.quad	0x3fd1d230b9dc2f40              # double 0.27845399999999998
	.quad	0x400eb776c4827b70              # double 3.8395820000000001
	.quad	0x401b281a9b8cb8e1              # double 6.7891640000000004
	.quad	0x4019895208e15012              # double 6.3841020000000004
	.quad	0x401ad1a3f4666eca              # double 6.7047270000000001
	.quad	0x400435c0fcb4f1e5              # double 2.5262470000000001
	.quad	0x3fc33996fa82e87d              # double 0.150195
	.quad	0x401cd380cb6c7a7d              # double 7.2065460000000003
	.quad	0x4016bce789e774ef              # double 5.6844770000000002
	.quad	0x400d054477ff151e              # double 3.6275719999999998
	.quad	0x401ce58b3f63c31e              # double 7.224164
	.quad	0x401dab063e07a28c              # double 7.4170160000000003
	.quad	0x400d01294573a798              # double 3.6255670000000002
	.quad	0x401421a21ea35936              # double 5.032845
	.quad	0x40014b8305d95dd5              # double 2.1618710000000001
	.quad	0x40101c5c9a34ca0c              # double 4.0276969999999999
	.quad	0x40213982235b4edb              # double 8.6123209999999997
	.quad	0x400335cb790fb656              # double 2.4012669999999998
	.quad	0x40229b14445aa2e4              # double 9.3028890000000004
	.quad	0x3fe42f81626b2f23              # double 0.630799
	.quad	0x40232faf20ea5b53              # double 9.5931329999999999
	.quad	0x401d3d31769a9110              # double 7.3097589999999997
	.quad	0x4023238a7e73a366              # double 9.5694160000000004
	.quad	0x401600de4c51116b              # double 5.5008480000000004
	.quad	0x4020827d028a1dfc              # double 8.2548600000000007
	.quad	0x3f7fc2a8869c66d3              # double 0.0077539999999999996
	.quad	0x4002c1f644955b46              # double 2.3447079999999998
	.quad	0x401a65681ecd4aa1              # double 6.59903
	.quad	0x401a82b628459967              # double 6.6276479999999998
	.quad	0x401b883e425aee63              # double 6.8830499999999999
	.quad	0x400c87fbacb42891              # double 3.566398
	.quad	0x4011e87b139c94f7              # double 4.4770320000000003
	.quad	0x400c8774eebf65dc              # double 3.566141
	.quad	0x4008fa921ccd9620              # double 3.1223489999999998
	.quad	0x4015a06d938151a4              # double 5.4066679999999998
	.quad	0x400fec54bcf0b6b7              # double 3.9903960000000001
	.quad	0x40137b213e3e2930              # double 4.8702439999999996
	.quad	0x400a5f0b28522ea1              # double 3.296408
	.quad	0x4017c08e581cf788              # double 5.9380430000000004
	.quad	0x3fe95c63ae2541d9              # double 0.79252800000000001
	.quad	0x402072aeafab53d6              # double 8.2239889999999995
	.quad	0x3ffec80b673c4f3c              # double 1.9238390000000001
	.quad	0x3fea38433d6c7219              # double 0.81936799999999999
	.quad	0x3ff94a36199780bb              # double 1.5806180000000001
	.quad	0x3fc3a91105e1c151              # double 0.15359700000000001
	.quad	0x4020f45ed4a1ad64              # double 8.4772859999999994
	.quad	0x40165c8ffb8b2639              # double 5.5903929999999997
	.quad	0x3fff89906cca2db6              # double 1.971085
	.quad	0x3ff468be2f7b17ce              # double 1.2755719999999999
	.quad	0x4012e5a1016ce78a              # double 4.7242470000000001
	.quad	0x401a8b5e95b78cca              # double 6.6361030000000003
	.quad	0x401da59ea57214f0              # double 7.4117379999999997
	.quad	0x4015bc83a96d4c34              # double 5.4340960000000003
	.quad	0x401a7802c0a4a05e              # double 6.6171980000000001
	.quad	0x40210474b838c112              # double 8.5087030000000006
	.quad	0x3ff0dc8eabffcdab              # double 1.053847
	.quad	0x40032a087ca643cc              # double 2.395524
	.quad	0x40233a48b6523704              # double 9.6138359999999991
	.quad	0x40065ac4f7ec3548              # double 2.7943210000000001
	.quad	0x3fedbb85e80bed74              # double 0.92914099999999999
	.quad	0x4020f9b738e6d15b              # double 8.4877260000000003
	.quad	0x401a7adab9f559b4              # double 6.6199750000000002
	.quad	0x400c3395c4220360              # double 3.525188
	.quad	0x401120dc768dfbd7              # double 4.2820910000000003
	.quad	0x4018fb3bfb58d152              # double 6.2453459999999996
	.quad	0x40204ec02f2f9874              # double 8.15381
	.quad	0x401ae8def416bdb2              # double 6.7274130000000003
	.quad	0x401f919c17225b75              # double 7.8921970000000003
	.quad	0x401bda4e7ab75643              # double 6.96319
	.quad	0x3fda088d6d3b6cbe              # double 0.40677200000000002
	.quad	0x401504180d3cff65              # double 5.2539980000000002
	.quad	0x400c555ef1fddebe              # double 3.5416850000000002
	.quad	0x4006be3a7daa4fca              # double 2.8428849999999999
	.quad	0x402230d844d013a9              # double 9.0953999999999997
	.quad	0x3fd8da4052d666aa              # double 0.38832100000000003
	.quad	0x400ab23fee2c98e5              # double 3.3370359999999999
	.quad	0x3ffccfa69be09bb7              # double 1.8006960000000001
	.quad	0x40235fb7e90ff972              # double 9.6869499999999995
	.quad	0x3fd086876e1deacd              # double 0.25821100000000002
	.quad	0x3fed08b545c78a6e              # double 0.90731300000000004
	.quad	0x40225f53e707e176              # double 9.1861870000000003
	.quad	0x4019bac929aa1d75              # double 6.4324079999999997
	.quad	0x3ff6a38eb0318b93              # double 1.4149309999999999
	.quad	0x4013081cb46bacf7              # double 4.7579219999999998
	.quad	0x401db7dcbddb9842              # double 7.4295530000000003
	.quad	0x4021ec5bd0e12e84              # double 8.9616380000000006
	.quad	0x3fe83ff69014b59a              # double 0.75780800000000004
	.quad	0x401e0d38476f2a5a              # double 7.5129099999999998
	.quad	0x402097e931876189              # double 8.2967010000000005
	.quad	0x3ffc8ec52a411c2a              # double 1.784856
	.quad	0x40195fec99f1ae2e              # double 6.3436760000000003
	.quad	0x4011104790b84988              # double 4.265898
	.quad	0x40221b3d8e000863              # double 9.0532039999999991
	.quad	0x40105bae89eba6ad              # double 4.0895330000000003
	.quad	0x3ff881b54195cc85              # double 1.5316669999999999
	.quad	0x3fe9d564b662fdfc              # double 0.80729899999999998
	.quad	0x402063dd11be6e65              # double 8.1950459999999996
	.quad	0x400e6d38cda6e760              # double 3.803331
	.quad	0x3fe7d6a161e4f766              # double 0.74495
	.quad	0x4010a214f0520d13              # double 4.158283
	.quad	0x401454cad57bc7f7              # double 5.0828049999999996
	.quad	0x401d3ae7924af0bf              # double 7.3075239999999999
	.quad	0x402234bb3c81908e              # double 9.1029909999999994
	.quad	0x401a64894c447c31              # double 6.5981800000000002
	.quad	0x3fdff177a7008a69              # double 0.49911299999999997
	.quad	0x401138e581cf7879              # double 4.3055630000000003
	.quad	0x3ff365796bfca85d              # double 1.2122740000000001
	.quad	0x4017fc3d68405b3a              # double 5.9963280000000001
	.quad	0x40184d0a67620ee9              # double 6.0752350000000002
	.quad	0x400a5f39d1b2e59b              # double 3.296497
	.quad	0x400a74d6a161e4f7              # double 3.3070499999999998
	.quad	0x40186ec2480e8c8b              # double 6.1081630000000002
	.quad	0x3ffcc9eba6aca793              # double 1.7992969999999999
	.quad	0x3ff36a4db163baba              # double 1.2134529999999999
	.quad	0x4015bf23465625a7              # double 5.4366580000000004
	.quad	0x40034ce4649906cd              # double 2.4125450000000002
	.quad	0x3ff3b42dcf4623d1              # double 1.2314890000000001
	.quad	0x4011fc7192ea52f0              # double 4.4965270000000004
	.quad	0x401a7f722e1ac57e              # double 6.6244589999999999
	.quad	0x400b005ee568a505              # double 3.375181
	.quad	0x4023849129888f86              # double 9.7589199999999998
	.quad	0x3fe46e3f78bbd380              # double 0.63845799999999997
	.quad	0x4023b7ace67d77fb              # double 9.8587410000000001
	.quad	0x40226a51a005c465              # double 9.2076539999999998
	.quad	0x4023e3c48f10a99b              # double 9.9448589999999992
	.quad	0x4003f1f255f3519c              # double 2.4931380000000001
	.quad	0x401e932c625e99e9              # double 7.6437239999999997
	.quad	0x40165840e1719f80              # double 5.5861850000000004
	.quad	0x401416ba0620ab71              # double 5.0221939999999998
	.quad	0x401451b2a27f1b69              # double 5.0797829999999999
	.quad	0x3fdb845132f87ad1              # double 0.42995100000000003
	.quad	0x401215f202107b78              # double 4.5214309999999998
	.quad	0x3f7ce39b456b441c              # double 0.0070530000000000002
	.quad	0x401373f961804d98              # double 4.8632559999999998
	.quad	0x400c93ed527e5215              # double 3.5722299999999998
	.quad	0x401f5aa8650e7792              # double 7.838533
	.quad	0x40162ed8904f6dfc              # double 5.5457479999999997
	.quad	0x4022ec2fa5093965              # double 9.4613010000000006
	.quad	0x40206e073de1e2df              # double 8.2148990000000008
	.quad	0x4022e3ae46cfc82a              # double 9.4446890000000003
	.quad	0x401237f27fe4bcae              # double 4.5546360000000004
	.quad	0x3ffbe5daf07bfe7e              # double 1.743617
	.quad	0x4020ca4d6e47dc38              # double 8.3951220000000006
	.quad	0x3ff5378ab0c88a48              # double 1.32606
	.quad	0x401503354c12274a              # double 5.2531330000000001
	.quad	0x40226d3005814941              # double 9.2132570000000005
	.quad	0x40207b66d7a56de3              # double 8.2410189999999997
	.quad	0x40057bf7ad4b2746              # double 2.6855310000000001
	.quad	0x3ff88305d95dd4c7              # double 1.5319879999999999
	.quad	0x401cc83f4eca686e              # double 7.1955539999999996
	.quad	0x401bc679cc74b839              # double 6.9438240000000002
	.quad	0x4005f2d55a3a083a              # double 2.7435710000000002
	.quad	0x40023d2e94680171              # double 2.279874
	.quad	0x3ffe6719b4dcebff              # double 1.9001710000000001
	.quad	0x3fd18c6d612c6ac2              # double 0.274196
	.quad	0x40222a77a2cecc81              # double 9.0829439999999995
	.quad	0x4022b910e453d20f              # double 9.3614569999999996
	.quad	0x40219afa2f05a709              # double 8.8026900000000001
	.quad	0x401353b81b64e054              # double 4.8317569999999996
	.quad	0x4023a468a936c58f              # double 9.8211110000000001
	.quad	0x4021b44806290eed              # double 8.852112
	.quad	0x3ff4ffee2c98e53f              # double 1.3124830000000001
	.quad	0x40223c49fd7a13c2              # double 9.1177519999999994
	.quad	0x4004a2c9081c2e34              # double 2.579485
	.quad	0x401d164cf8d716d3              # double 7.2717780000000003
	.quad	0x4020b199dcb5781c              # double 8.3468769999999992
	.quad	0x400fabc5154866a1              # double 3.9588719999999999
	.quad	0x4013f882adc4c9c9              # double 4.992686
	.quad	0x4013d8f605ab3aac              # double 4.9618760000000002
	.quad	0x4021ad8fd5cb7910              # double 8.8389880000000005
	.quad	0x40206ba27ae9ab2a              # double 8.2102240000000002
	.quad	0x402338dc768dfbd7              # double 9.6110570000000006
	.quad	0x4021a5be5d9e40c8              # double 8.8237179999999995
	.quad	0x4017e4aa10e02214              # double 5.9733049999999999
	.quad	0x4020988effe2a3cf              # double 8.2979660000000006
	.quad	0x3fb78c64fdb09a67              # double 0.091985999999999998
	.quad	0x4023f997c3d68406              # double 9.9874860000000005
	.quad	0x3fffb0b178b37004              # double 1.9806379999999999
	.quad	0x4011dc165907d912              # double 4.4649289999999997
	.quad	0x401845cdd50a88f0              # double 6.068168
	.quad	0x40189cf41f212d77              # double 6.1532749999999998
	.quad	0x4003cabcd78c4370              # double 2.4739930000000001
	.quad	0x4022280baa582dbe              # double 9.0782139999999991
	.quad	0x400f521e603d5779              # double 3.9150969999999998
	.quad	0x401898a2a90cd424              # double 6.1490580000000001
	.quad	0x401b94399b2c40d1              # double 6.8947510000000003
	.quad	0x3fe7e85fd04a2fcf              # double 0.747116
	.quad	0x4007c1bfbdf090f7              # double 2.9696039999999999
	.quad	0x3ff6b78359bc33f8              # double 1.4198029999999999
	.quad	0x401c5fa6defc7a3a              # double 7.0934100000000004
	.quad	0x402327e175d13d75              # double 9.5778920000000002
	.quad	0x3ff7819c17225b75              # double 1.4691430000000001
	.quad	0x4010a78ee2867275              # double 4.1636309999999996
	.quad	0x401825e9185cee18              # double 6.0370220000000003
	.quad	0x401f36394face67d              # double 7.8029529999999995
	.quad	0x4023e7b65668c261              # double 9.9525629999999996
	.quad	0x402114fa48301a7a              # double 8.540972
	.quad	0x40209b4d056c508b              # double 8.3033219999999996
	.quad	0x401b24e4c942d491              # double 6.7860290000000001
	.quad	0x4004fbcec84f8f8a              # double 2.6229529999999999
	.quad	0x4013ba17b0f6ad71              # double 4.9317310000000001
	.quad	0x3fc05d63886594af              # double 0.12784999999999999
	.quad	0x400c8420f6f08cc5              # double 3.5645159999999998
	.quad	0x401c9574f722e1ac              # double 7.1459539999999997
	.quad	0x3fff5d1e53a81dc1              # double 1.960234
	.quad	0x40060ed3d859c8c9              # double 2.7572399999999999
	.quad	0x401583b4b2fa93af              # double 5.3786189999999996
	.quad	0x40170aa79bbadc0a              # double 5.7604050000000004
	.quad	0x3ff2f16d2aa5c5f8              # double 1.183942
	.quad	0x400de30984e3ffef              # double 3.7358579999999999
	.quad	0x401c1848387df5cf              # double 7.0237129999999999
	.quad	0x40035247cb70ac3b              # double 2.4151760000000002
	.quad	0x4020766ec9e236c1              # double 8.2313139999999994
	.quad	0x3ffd7b9bed30f063              # double 1.842678
	.quad	0x40099826edaa92e6              # double 3.1992929999999999
	.quad	0x401e74959e625636              # double 7.6138519999999996
	.quad	0x400e2637bd05af6c              # double 3.7686609999999998
	.quad	0x4019cd45e9185cee              # double 6.4504619999999999
	.quad	0x401907f455a7d242              # double 6.2577680000000004
	.quad	0x40175b9346994185              # double 5.839429
	.quad	0x3ff2eebe596c82e0              # double 1.183287
	.quad	0x3fbc6cebbba55d1c              # double 0.111037
	.quad	0x401f0bbcf4e874c9              # double 7.761463
	.quad	0x4023627935760392              # double 9.6923309999999994
	.quad	0x400ecdb2f661f18d              # double 3.8504390000000002
	.quad	0x3ff0a68d32830a0b              # double 1.040662
	.quad	0x40163efe93187619              # double 5.5615180000000004
	.quad	0x4011e28f9f44d445              # double 4.4712509999999996
	.quad	0x401b21e57d9dba91              # double 6.7831020000000004
	.quad	0x4021a01908e581cf              # double 8.8126909999999992
	.quad	0x4018325d8d79d0a6              # double 6.0491849999999996
	.quad	0x40098576cce5f740              # double 3.1901679999999999
	.quad	0x4022d3f1e8e60807              # double 9.4139549999999996
	.quad	0x400fcebedfa43fe6              # double 3.9759500000000001
	.quad	0x4022990b630a9153              # double 9.2989149999999992
	.quad	0x4013a1cc100e6afd              # double 4.9080050000000002
	.quad	0x401be023e9ea1405              # double 6.9688869999999996
	.quad	0x400ab86a098915be              # double 3.3400460000000001
	.quad	0x3ff0003686a4ca4f              # double 1.0000519999999999
	.quad	0x4011d38e29f9ce8e              # double 4.4565970000000004
	.quad	0x4011bf6b5d462c34              # double 4.4369329999999998
	.quad	0x4017f0e991ff7165              # double 5.9852660000000002
	.quad	0x3ffb5c91d14e3bcd              # double 1.7101
	.quad	0x3fd6cc532a497fa6              # double 0.35622100000000001
	.quad	0x3ffe246cfc829cfe              # double 1.883893
	.quad	0x400ba4f00ef1348b              # double 3.4555359999999999
	.quad	0x3fea5912556d19df              # double 0.82337300000000002
	.quad	0x401b0bf26f1dc50d              # double 6.7616670000000001
	.quad	0x3ff6bc1eff9f87f0              # double 1.420928
	.quad	0x402135510d38cda7              # double 8.6041340000000002
	.quad	0x400da7a4a48f96e1              # double 3.7068569999999998
	.quad	0x40064f01754b05b8              # double 2.7885770000000001
	.quad	0x401b6301a79fec9a              # double 6.846686
	.quad	0x40214db9841aac54              # double 8.6518060000000005
	.quad	0x40202a843808850a              # double 8.0830400000000004
	.quad	0x401551f31f46ed24              # double 5.3300289999999997
	.quad	0x4015e7e80389f83c              # double 5.4764710000000001
	.quad	0x401a906530058149              # double 6.6410109999999998
	.quad	0x4020eee32e3821af              # double 8.4665769999999991
	.quad	0x4023e56e264e4862              # double 9.9481059999999992
	.quad	0x402023be6601bc99              # double 8.0698120000000007
	.quad	0x40021903a7546d40              # double 2.2622140000000002
	.quad	0x401c9f0c77dd872f              # double 7.1553209999999998
	.quad	0x3f92a5e785b5b707              # double 0.018211000000000001
	.quad	0x4022eaa4766c6de7              # double 9.4582859999999993
	.quad	0x3fe44bc6a7ef9db2              # double 0.63424999999999998
	.quad	0x3fe9a411c2a02321              # double 0.80127800000000005
	.quad	0x4021308f648c7193              # double 8.5948440000000002
	.quad	0x4003cbb6ed677708              # double 2.4744700000000002
	.quad	0x4005564bec679cc7              # double 2.6671369999999999
	.quad	0x4005bc4199fe4367              # double 2.7169219999999998
	.quad	0x4023f7c6759ab6d0              # double 9.9839359999999999
	.quad	0x3ffbcf66a5508701              # double 1.738135
	.quad	0x401e598bf7f06706              # double 7.5874480000000002
	.quad	0x40211c2c3c9eecc0              # double 8.5550250000000005
	.quad	0x3ff6db6b2af14552              # double 1.428569
	.quad	0x401ab74cd31769a9              # double 6.6790039999999999
	.quad	0x40176c5197a24895              # double 5.8557800000000002
	.quad	0x3fe92a8869c66d37              # double 0.78644199999999997
	.quad	0x4001a2bf11f926c8              # double 2.204466
	.quad	0x3f950a88effe2a3d              # double 0.020548
	.quad	0x401405c4651f3e8a              # double 5.0056320000000003
	.quad	0x400a29d7ba6698bb              # double 3.2704309999999999
	.quad	0x401ce2f9873ffac2              # double 7.2216550000000002
	.quad	0x401d05d31337eb29              # double 7.2556880000000001
	.quad	0x401a8238da3c2118              # double 6.6271699999999996
	.quad	0x4004457a786c2268              # double 2.533925
	.quad	0x4013b1f46ed245b3              # double 4.9237840000000004
	.quad	0x4023c2163fdd65a1              # double 9.8790759999999995
	.quad	0x3ff16b3354c12275              # double 1.0886720000000001
	.quad	0x4018703e20ccff22              # double 6.1096120000000003
	.quad	0x401d426bf8769ec3              # double 7.3148650000000002
	.quad	0x40218830a0b1bbcf              # double 8.7659959999999995
	.quad	0x4012235e310dbf05              # double 4.5345389999999997
	.quad	0x4020585814940bbb              # double 8.1725469999999998
	.quad	0x40022478854cdb7b              # double 2.267808
	.quad	0x400a5cfd4bf0995b              # double 3.2954050000000001
	.quad	0x4011e2b27cbf6e3f              # double 4.4713839999999996
	.quad	0x4023363fdd65a145              # double 9.6059560000000008
	.quad	0x40228ec93a711516              # double 9.2788789999999999
	.quad	0x401380791c4b9021              # double 4.8754619999999997
	.quad	0x40052646f1561911              # double 2.6436899999999999
	.quad	0x4022bf6f08cc575c              # double 9.3738939999999999
	.quad	0x3f95b8561d4306e6              # double 0.021211000000000001
	.quad	0x40192dbcec84f8f9              # double 6.2946660000000003
	.quad	0x40012a8f3a9b0681              # double 2.1457809999999999
	.quad	0x400482b302f72b45              # double 2.5638179999999999
	.quad	0x401201fbc5de9c02              # double 4.5019369999999999
	.quad	0x402336e8f29d40ee              # double 9.607246
	.quad	0x40237bedd8b60f1b              # double 9.7420489999999997
	.quad	0x4023b34f3fd933e3              # double 9.8502139999999993
	.quad	0x400221c3efae7925              # double 2.2664870000000001
	.quad	0x3fe2df3519bd4068              # double 0.58974700000000002
	.quad	0x4006833269df97ab              # double 2.8140610000000001
	.quad	0x401cb7f0aa21a71a              # double 7.1796290000000003
	.quad	0x4020cd3b6cbd987c              # double 8.4008439999999993
	.quad	0x401903d859c8c932              # double 6.253755
	.quad	0x40174fa69be09bb7              # double 5.8277840000000003
	.quad	0x3fe10626f60e0eb6              # double 0.53200099999999995
	.quad	0x401a0fa22706d506              # double 6.5152669999999997
	.quad	0x3fe3e451b93037d6              # double 0.62162099999999998
	.quad	0x4023a7525460aa65              # double 9.8268000000000004
	.quad	0x401022877ee4e26d              # double 4.0337199999999998
	.quad	0x4008565d3996fa83              # double 3.04217
	.quad	0x3fcf903211cb039f              # double 0.246588
	.quad	0x4022d84295a6c5d2              # double 9.422383
	.quad	0x3ffd7ef6b5d462c3              # double 1.8434969999999999
	.quad	0x40237f5be5d9e40d              # double 9.7487480000000008
	.quad	0x4022f96312f4cf4a              # double 9.4870839999999994
	.quad	0x40128b502ababead              # double 4.6360479999999997
	.quad	0x402332c3eb7cbb3d              # double 9.5991510000000008
	.quad	0x4020db6390c91080              # double 8.4284940000000006
	.quad	0x40198af1886df82b              # double 6.3856869999999999
	.quad	0x4005085b18548a9c              # double 2.6290800000000001
	.quad	0x3fc68155d5f56a7b              # double 0.17582200000000001
	.quad	0x401d596fa82e87d3              # double 7.3373400000000002
	.quad	0x40193193f6c2699c              # double 6.2984159999999996
	.quad	0x401b81aac53b0814              # double 6.8766280000000002
	.quad	0x4018de01de269164              # double 6.2168039999999998
	.quad	0x3fff2b67c286f8ad              # double 1.948097
	.quad	0x400da3eaf6837f7c              # double 3.7050380000000001
	.quad	0x4004c490a350d280              # double 2.5959789999999998
	.quad	0x401a193d5347a5b1              # double 6.524648
	.quad	0x40142f88fc9363f5              # double 5.0464209999999996
	.quad	0x4012e00c521dda06              # double 4.7187970000000004
	.quad	0x3ffd5577963992c9              # double 1.8333660000000001
	.quad	0x400b4b8ae31d712a              # double 3.411886
	.quad	0x401f4c6c97d8cf3a              # double 7.8246330000000004
	.quad	0x3ffded87f88765ba              # double 1.8704909999999999
	.quad	0x3fe1640420f6f08d              # double 0.54345900000000003
	.quad	0x3ff5ef901083dbc2              # double 1.370987
	.quad	0x3fed9a6d698fe692              # double 0.92510099999999995
	.quad	0x4023369014b599aa              # double 9.6065679999999993
	.quad	0x401e93910c2c5e2d              # double 7.6441080000000001
	.quad	0x3fcdf822bbecaab9              # double 0.23413500000000001
	.quad	0x3fe6d9f6ec5b078e              # double 0.71410700000000005
	.quad	0x4023ce3fdd65a145              # double 9.9028310000000008
	.quad	0x40208c22ee41919b              # double 8.2737040000000004
	.quad	0x3feda80f12c27a63              # double 0.92676499999999995
	.quad	0x401053ed959a3098              # double 4.0819609999999997
	.quad	0x401af3ebbfd71b04              # double 6.7382039999999996
	.quad	0x3ffd548ba83f4eca              # double 1.8331409999999999
	.quad	0x401cf23d9231c64c              # double 7.2365630000000003
	.quad	0x401f462dc6e2a800              # double 7.8185339999999997
	.quad	0x402196631f8a0903              # double 8.7937250000000002
	.quad	0x40211e0b0af5fd48              # double 8.5586780000000005
	.quad	0x4015e8472c0e7bc4              # double 5.4768340000000002
	.quad	0x4010cc1c1d6cf851              # double 4.1993260000000001
	.quad	0x400c2ad601ffb481              # double 3.5209160000000002
	.quad	0x40069c8e25c810a5              # double 2.8264429999999998
	.quad	0x4002f59146e4c0df              # double 2.3699059999999998
	.quad	0x3fe21a5ebb7739f3              # double 0.56571899999999997
	.quad	0x40170165907d9125              # double 5.7513639999999997
	.quad	0x4007bda6a4441787              # double 2.967603
	.quad	0x3fd55b078d92fb1a              # double 0.33368100000000001
	.quad	0x401c2462c343b70f              # double 7.035533
	.quad	0x4010d8a0d349be90              # double 4.211551
	.quad	0x401aab3bb83cf2d0              # double 6.6672200000000004
	.quad	0x401782b4d8ba40d9              # double 5.877643
	.quad	0x4015244bb1af3a15              # double 5.2854450000000002
	.quad	0x3ffd9612c6ac215c              # double 1.8491390000000001
	.quad	0x4023e7179bfdf7e8              # double 9.9513519999999999
	.quad	0x4019e167a95c853c              # double 6.4701219999999999
	.quad	0x40229c892ab68cef              # double 9.3057339999999993
	.quad	0x400de20c49ba5e35              # double 3.7353749999999999
	.quad	0x3ff5b4ea8da7f3cf              # double 1.3566689999999999
	.quad	0x4018dd4067cf1c32              # double 6.2160659999999996
	.quad	0x3ffda4c61d8622c4              # double 1.8527279999999999
	.quad	0x40074b2a6b0d9514              # double 2.911702
	.quad	0x4014483cafb3b752              # double 5.0705439999999999
	.quad	0x401026006d0d4995              # double 4.0371110000000003
	.quad	0x401612f9873ffac2              # double 5.5185300000000002
	.quad	0x3ff94438088509c0              # double 1.5791550000000001
	.quad	0x3ffd7150dae3e6c5              # double 1.8401650000000001
	.quad	0x40136aef2c732592              # double 4.8544280000000004
	.quad	0x40215c55a7d24181              # double 8.6803410000000003
	.quad	0x401a27ca643cc07b              # double 6.5388580000000003
	.quad	0x401947a0b5ed8d37              # double 6.3199490000000003
	.quad	0x3fe1533f42352eb6              # double 0.541412
	.quad	0x4008a919ef954eb1              # double 3.0825689999999999
	.quad	0x4021f2f7b17ce52e              # double 8.9745460000000001
	.quad	0x400a47631b584b1b              # double 3.2848570000000001
	.quad	0x4020ed08f648c719              # double 8.4629589999999997
	.quad	0x4023cd7dbf487fcc              # double 9.9013500000000007
	.quad	0x3ff3a97bfa4c61d8              # double 1.2288779999999999
	.quad	0x3fd130db6a1e81cb              # double 0.26860699999999998
	.quad	0x4021247e6b3fe9fb              # double 8.5712770000000003
	.quad	0x3fdc651b0ccbc05d              # double 0.44367099999999998
	.quad	0x40228b4f3fd933e3              # double 9.2720889999999994
	.quad	0x401fee7e62dc6e2b              # double 7.9829040000000004
	.quad	0x4022cef30a4e379b              # double 9.4041979999999991
	.quad	0x40020aec0724b76f              # double 2.2553329999999998
	.quad	0x3ff42ef3d3a1d324              # double 1.261463
	.quad	0x400a49bf9c62a1b6              # double 3.2860100000000001
	.quad	0x400028c0ce91c8eb              # double 2.0198990000000001
	.quad	0x3fd766e008e9b38d              # double 0.36565399999999998
	.quad	0x3fd7e23af31b152f              # double 0.37318299999999999
	.quad	0x401f5b4dcebfec14              # double 7.8391640000000002
	.quad	0x400a69552e2fbe34              # double 3.3014320000000001
	.quad	0x401e3b9884c6a3be              # double 7.5581990000000001
	.quad	0x4023c2958537e2c5              # double 9.8800469999999993
	.quad	0x4022e0a6b93ccd10              # double 9.4387720000000002
	.quad	0x4013ddfeb8d82342              # double 4.9667919999999999
	.quad	0x400bf78f68be2f7b              # double 3.495879
	.quad	0x3ff450c4dec1c1d7              # double 1.269719
	.quad	0x4017b3415b1422cd              # double 5.9250540000000003
	.quad	0x4022aecb74ddf86e              # double 9.3413959999999996
	.quad	0x4018b8323358f2e0              # double 6.1798789999999997
	.quad	0x401a12d59d55e6bc              # double 6.5183929999999997
	.quad	0x3fd4ad9ad85dfa87              # double 0.32309599999999999
	.quad	0x4012263736cdf267              # double 4.5373200000000002
	.quad	0x400bfc60029f16b1              # double 3.49823
	.quad	0x40129e85b9e8c47a              # double 4.6548069999999999
	.quad	0x400944189374bc6a              # double 3.1582499999999998
	.quad	0x400d070435efa616              # double 3.6284260000000002
	.quad	0x400f9b866e43aa7a              # double 3.9509400000000001
	.quad	0x3f9d4a1ad6451b93              # double 0.028603
	.quad	0x40202f318fc50481              # double 8.0921749999999992
	.quad	0x4020d4f93bc0a06f              # double 8.4159640000000007
	.quad	0x3ffa74cf4a558ea8              # double 1.653518
	.quad	0x3fda5771001d5c31              # double 0.41158699999999998
	.quad	0x3ffaed3f9e7b80aa              # double 1.682922
	.quad	0x40042d2135daad60              # double 2.5220359999999999
	.quad	0x3fa25e785b5b7069              # double 0.035876999999999999
	.quad	0x400f7443d46b26c0              # double 3.9317700000000002
	.quad	0x400b5588e368f084              # double 3.4167649999999998
	.quad	0x401247ff583a53b9              # double 4.5703100000000001
	.quad	0x401c1acb85a4f00f              # double 7.0261670000000001
	.quad	0x401a2081c2e33eff              # double 6.5317449999999999
	.quad	0x4010bf3cb3e5753a              # double 4.1867549999999998
	.quad	0x401aeef6f8f04146              # double 6.7333639999999999
	.quad	0x4018f2b3cc4ac6ce              # double 6.2370140000000003
	.quad	0x40154d7f0ed3d85a              # double 5.3256800000000002
	.quad	0x3ff365b749adc8fc              # double 1.2123330000000001
	.quad	0x4016fd58c8eef1bb              # double 5.7474090000000002
	.quad	0x40053fa333764f12              # double 2.6560730000000001
	.quad	0x3ffa721e603d5779              # double 1.6528609999999999
	.quad	0x3fed1ac14c660a20              # double 0.90951599999999999
	.quad	0x4021f006290eed03              # double 8.9687970000000004
	.quad	0x40127de69ad42c3d              # double 4.6229500000000003
	.quad	0x3ff4477ff151e753              # double 1.2674559999999999
	.quad	0x401e840181e03f70              # double 7.6289119999999997
	.quad	0x401320b1feeb2d0a              # double 4.7819289999999999
	.quad	0x400664a0e410b631              # double 2.7991350000000002
	.quad	0x4014374c8ffb8b26              # double 5.0540029999999998
	.quad	0x401fbf1f9acffa7f              # double 7.9366440000000002
	.quad	0x400d7729b280f12c              # double 3.6831849999999999
	.quad	0x40226101d19157ac              # double 9.1894670000000004
	.quad	0x401a3dff822bbecb              # double 6.5605450000000003
	.quad	0x40129967caea747e              # double 4.6498100000000004
	.quad	0x40084366516db0de              # double 3.0329100000000002
	.quad	0x400734d834091c08              # double 2.9008029999999998
	.quad	0x4020cf0c34c1a8ac              # double 8.4043899999999993
	.quad	0x3fe77498c3b0c459              # double 0.73298300000000005
	.quad	0x40065d1c3ac929aa              # double 2.7954639999999999
	.quad	0x4000344b2b777d0f              # double 2.0255339999999999
	.quad	0x400358d716d2aa5c              # double 2.4183789999999998
	.quad	0x400cd92428d434a0              # double 3.606026
	.quad	0x4010bef8ceb356da              # double 4.186496
	.quad	0x401a5bcec84f8f8a              # double 6.5896559999999997
	.quad	0x4005858ff7596851              # double 2.6902159999999999
	.quad	0x4014bc8472c0e7bc              # double 5.1840989999999998
	.quad	0x401af90de093532e              # double 6.7432169999999996
	.quad	0x40197612c6ac215c              # double 6.3653060000000004
	.quad	0x4009438f36694899              # double 3.157988
	.quad	0x4017f8f53c579f23              # double 5.9931229999999998
	.quad	0x4003b44806290eed              # double 2.463028
	.quad	0x4002840639d5e4a4              # double 2.3144650000000002
	.quad	0x40201a58d5842b73              # double 8.0514589999999995
	.quad	0x401806d549731099              # double 6.0066730000000002
	.quad	0x401000b673c4f3ba              # double 4.0006959999999996
	.quad	0x401383f705857aff              # double 4.8788720000000003
	.quad	0x3fdb81c2e33eff19              # double 0.42979499999999998
	.quad	0x400bf68a50507a6c              # double 3.4953810000000001
	.quad	0x401ab2e72da122fb              # double 6.6747100000000001
	.quad	0x4009a759ab6d00b4              # double 3.2067139999999998
	.quad	0x3ffd3a8c586876e2              # double 1.826794
	.quad	0x402327a7008a697b              # double 9.5774460000000001
	.quad	0x401a9c1871e6cd29              # double 6.6524369999999999
	.quad	0x3ffa2b40f66a5508              # double 1.6355599999999999
	.quad	0x401969ac79702e66              # double 6.3531969999999998
	.quad	0x400582fbe33acd5b              # double 2.6889569999999998
	.quad	0x401ebfc2a8869c67              # double 7.6872660000000001
	.quad	0x402339fd5885d313              # double 9.6132609999999996
	.quad	0x402010bd017dae82              # double 8.0326920000000008
	.quad	0x4023838151a43782              # double 9.7568459999999995
	.quad	0x401754d983947497              # double 5.8328610000000003
	.quad	0x401902f449129889              # double 6.252885
	.quad	0x401ec8d79d0a6762              # double 7.6961349999999999
	.quad	0x400884ca4f440af2              # double 3.0648390000000001
	.quad	0x40228faa044ae85c              # double 9.2805940000000006
	.quad	0x4016895f2452c5a0              # double 5.6341520000000003
	.quad	0x3fd8641b328b6d87              # double 0.38111
	.quad	0x3feab07af20ea5b5              # double 0.83404299999999998
	.quad	0x3fff300bcbe61d00              # double 1.94923
	.quad	0x400940e6afcce1c6              # double 3.1566900000000002
	.quad	0x3fe86bd4cfd08d4c              # double 0.76316300000000003
	.quad	0x4003c96f6512a950              # double 2.473357
	.quad	0x40224f1bcdbbe015              # double 9.1545089999999991
	.quad	0x4023c2b324851a87              # double 9.8802730000000007
	.quad	0x40208bbd9cae2110              # double 8.2729309999999998
	.quad	0x4023a9b77c02afde              # double 9.8314780000000006
	.quad	0x400333dc8b86b160              # double 2.4003230000000002
	.quad	0x3ff1432a8c9b8455              # double 1.0788979999999999
	.quad	0x401738e757928e0d              # double 5.8055700000000003
	.quad	0x4000fec80c73abc9              # double 2.1244049999999999
	.quad	0x40231355ef1fddec              # double 9.5377650000000002
	.quad	0x40013266ba493c8a              # double 2.14961
	.quad	0x4011b83dbc23315d              # double 4.4299229999999996
	.quad	0x40191a333764f11b              # double 6.2755859999999997
	.quad	0x401cfb8aa00192a7              # double 7.2456459999999998
	.quad	0x4010672367e414e8              # double 4.1007210000000001
	.quad	0x402356ddce7cd035              # double 9.6696609999999996
	.quad	0x4015f252ce032db2              # double 5.4866440000000001
	.quad	0x40009f58c08b75ea              # double 2.0778059999999998
	.quad	0x401a3760bf5d7881              # double 6.5540799999999999
	.quad	0x3ffa1eafee6fb4c4              # double 1.6324920000000001
	.quad	0x4022881eabbcb1cd              # double 9.2658590000000007
	.quad	0x4011695bff04577e              # double 4.3528900000000004
	.quad	0x402290bfa0945f9e              # double 9.2827120000000001
	.quad	0x401857f62b6ae7d5              # double 6.0858999999999996
	.quad	0x3fead80c308feac4              # double 0.83887299999999997
	.quad	0x3fffe0a73f748a16              # double 1.9923470000000001
	.quad	0x4011ad8ec95bff04              # double 4.4194899999999997
	.quad	0x401a691ff7164c73              # double 6.6026610000000003
	.quad	0x401dcd056c508b33              # double 7.4502160000000002
	.quad	0x4013583a53b8e4b8              # double 4.8361599999999996
	.quad	0x40158c06e19b90eb              # double 5.3867450000000003
	.quad	0x3ff6d3c46d82ba5a              # double 1.426701
	.quad	0x401cbfbe76c8b439              # double 7.1872499999999997
	.quad	0x401fb96d4c33b539              # double 7.9310809999999998
	.quad	0x4021eadfd694ccab              # double 8.9587389999999996
	.quad	0x40115bbe0157eed4              # double 4.3395919999999997
	.quad	0x401c147a17f4128c              # double 7.019997
	.quad	0x40204273f748a15a              # double 8.1297910000000009
	.quad	0x3fe4071a3b14a904              # double 0.62586699999999995
	.quad	0x40212fd1bb4916ca              # double 8.5933969999999995
	.quad	0x401ce56473471f79              # double 7.2240159999999998
	.quad	0x4000efa1e3eaf683              # double 2.1170079999999998
	.quad	0x401f431a8ef77f28              # double 7.815531
	.quad	0x4022e695faa8a82a              # double 9.4503629999999994
	.quad	0x40217743632c1f43              # double 8.7329360000000005
	.quad	0x4001a982cb20fb22              # double 2.2077689999999999
	.quad	0x4022cc79702e6645              # double 9.3993640000000002
	.quad	0x4011a607c4199fe4              # double 4.4121389999999998
	.quad	0x400914cc25072086              # double 3.1351550000000001
	.quad	0x401fb2a4db163bac              # double 7.9244570000000003
	.quad	0x3fff2ba0620ab713              # double 1.948151
	.quad	0x4019d2f7b17ce52e              # double 6.4560230000000001
	.quad	0x3fc6abcd78c436fc              # double 0.177118
	.quad	0x400839463cfb3312              # double 3.0279660000000002
	.quad	0x401676d0d49949e9              # double 5.6160310000000004
	.quad	0x40159f4623d0bfa1              # double 5.4055410000000004
	.quad	0x400efb6a1e81cb47              # double 3.8727610000000001
	.quad	0x4021534ca0c282c7              # double 8.6626940000000001
	.quad	0x3ffed1e321a2e7f7              # double 1.926242
	.quad	0x4000c24f6598e10d              # double 2.094878
	.quad	0x3ffce7fe4bcad9ae              # double 1.8066390000000001
	.quad	0x400fff340d4dc65c              # double 3.9996109999999998
	.quad	0x4000b1361dc93ea3              # double 2.0865290000000001
	.quad	0x3ffb9d55e6bc621b              # double 1.7259119999999999
	.quad	0x400d4b912dba4d6e              # double 3.6618979999999999
	.quad	0x40226c30d306a2b1              # double 9.2113099999999992
	.quad	0x40161463cfb3311a              # double 5.5199119999999997
	.quad	0x400ceaa9717df19d              # double 3.6145809999999998
	.quad	0x402119a8cdea033e              # double 8.5501159999999992
	.quad	0x4020bfb15b573eab              # double 8.3743999999999996
	.quad	0x400760232096787d              # double 2.921942
	.quad	0x400800b5ed8d36b5              # double 3.0003470000000001
	.quad	0x401807e4de3b8a1a              # double 6.0077090000000002
	.quad	0x401d6867f0aa21a7              # double 7.3519589999999999
	.quad	0x3fc8e0114d2f5dbc              # double 0.19433800000000001
	.quad	0x401625eb7457c0b1              # double 5.5370309999999998
	.quad	0x401a83beec39799e              # double 6.6286579999999997
	.quad	0x40002750c1b97354              # double 2.0191970000000001
	.quad	0x401161e8a2ec28b3              # double 4.3456140000000003
	.quad	0x4020417e132b55ef              # double 8.1279149999999998
	.quad	0x402036835dedf1e1              # double 8.1064710000000009
	.quad	0x402316f0ae536502              # double 9.5448050000000002
	.quad	0x3fef3db5d894812c              # double 0.97628300000000001
	.quad	0x40124bf8769ec2ce              # double 4.5741899999999998
	.quad	0x40163c95bff04578              # double 5.5591650000000001
	.quad	0x4017a1f9acffa7eb              # double 5.9081789999999996
	.quad	0x401ec20bc382a130              # double 7.6894980000000004
	.quad	0x401ed5ed8d36b4c8              # double 7.708914
	.quad	0x401a5752977c88e8              # double 6.5852760000000004
	.quad	0x401cd122b7baecd0              # double 7.2042339999999996
	.quad	0x3ff0352007dd4413              # double 1.0129699999999999
	.quad	0x401414f93bc0a06f              # double 5.0204820000000003
	.quad	0x40049d8e86402081              # double 2.5769319999999998
	.quad	0x3fcf31550ca1cef2              # double 0.24369299999999999
	.quad	0x3ff7cb599aa60914              # double 1.4871460000000001
	.quad	0x4004a4f11b60ae97              # double 2.5805380000000002
	.quad	0x401adf5a5332acfb              # double 6.7181179999999996
	.quad	0x401153f63c31df76              # double 4.3319939999999999
	.quad	0x4020fe1a1db877ab              # double 8.4962929999999997
	.quad	0x4007c759ab6d00b4              # double 2.9723389999999998
	.quad	0x3ff157353b4b2fa9              # double 1.0837909999999999
	.quad	0x400a9419e30014f9              # double 3.3223150000000001
	.quad	0x401b7004fb1183b6              # double 6.859394
	.quad	0x401c265ecc3e3194              # double 7.037471
	.quad	0x4011d5cd0bb6ed67              # double 4.4587899999999996
	.quad	0x402314fd4bf0995b              # double 9.5409950000000005
	.quad	0x4014c340d4dc65c7              # double 5.190677
	.quad	0x4021871bcdbbe015              # double 8.7638839999999991
	.quad	0x400babe9424e5929              # double 3.4589409999999998
	.quad	0x40117bf83382e44b              # double 4.3710639999999996
	.quad	0x401da1ec0b567558              # double 7.4081270000000003
	.quad	0x4015482773e24fec              # double 5.3204630000000002
	.quad	0x401ea4cd31769a91              # double 7.6609389999999999
	.quad	0x4012692f2b66b617              # double 4.6027189999999996
	.quad	0x40067d4306e5cd4f              # double 2.8111630000000001
	.quad	0x4021e4cec41dd1a2              # double 8.9468899999999998
	.quad	0x40041004fb1183b6              # double 2.507822
	.quad	0x40035e9531550ca2              # double 2.4211830000000001
	.quad	0x402173990afe60c4              # double 8.7257770000000007
	.quad	0x3fd6ed41b75a74c1              # double 0.35823100000000002
	.quad	0x401d36eb91b3f20a              # double 7.3036329999999996
	.quad	0x401fc709fa54c554              # double 7.9443739999999998
	.quad	0x40147f8ceb356da0              # double 5.1245609999999999
	.quad	0x4020c317acc4ef89              # double 8.3810400000000005
	.quad	0x4008f478c868b9fe              # double 3.1193710000000001
	.quad	0x400377329c347e8d              # double 2.4332020000000001
	.quad	0x402120b8cfbfc654              # double 8.5639099999999999
	.quad	0x40201672da122fad              # double 8.0438449999999992
	.quad	0x400377d84901d191              # double 2.4335179999999998
	.quad	0x4023ef6e6106ab15              # double 9.9676390000000001
	.quad	0x40041fa7eb6bf445              # double 2.5154570000000001
	.quad	0x3ff5e6c4c5974e66              # double 1.3688400000000001
	.quad	0x3ff928ccdd93c46e              # double 1.5724610000000001
	.quad	0x401351f1cfbb9496              # double 4.8300239999999999
	.quad	0x4002c5c5718eb895              # double 2.346568
	.quad	0x3fe12337a80cf9e4              # double 0.53554900000000005
	.quad	0x400e7269595feda6              # double 3.8058649999999998
	.quad	0x4010d0e0a84be404              # double 4.2039819999999999
	.quad	0x402232bd3c361134              # double 9.0990999999999999
	.quad	0x401f5d1a21ea3593              # double 7.8409199999999996
	.quad	0x402360c64fdb09a6              # double 9.6890129999999992
	.quad	0x4017c16872b020c5              # double 5.9388750000000003
	.quad	0x4022eb2b3461309c              # double 9.4593139999999991
	.quad	0x401d000218def417              # double 7.2500080000000002
	.quad	0x3fe0e22c45026890              # double 0.52760899999999999
	.quad	0x4023b13f290abb45              # double 9.8461850000000001
	.quad	0x3fe74e13f4a98aa8              # double 0.72828099999999996
	.quad	0x401cdd60e94ee393              # double 7.2161900000000001
	.quad	0x3fef848387df5cf2              # double 0.98492599999999997
	.quad	0x401222fc69728a61              # double 4.5341659999999999
	.quad	0x4020dd22856605ee              # double 8.4319039999999994
	.quad	0x402316a26e547171              # double 9.5442079999999993
	.quad	0x402355dca4b124d1              # double 9.6676990000000007
	.quad	0x402177ddca4b124d              # double 8.7341139999999999
	.quad	0x400dbc182ecaeea6              # double 3.7168429999999999
	.quad	0x401247c1376d5497              # double 4.5700729999999998
	.quad	0x4018b0e453d20f2c              # double 6.1727460000000001
	.quad	0x3ff00bf7f06705c9              # double 1.0029220000000001
	.quad	0x3fefb72606fac604              # double 0.99110699999999996
	.quad	0x40095c65c70435f0              # double 3.1701160000000002
	.quad	0x4000819b90ea9e6f              # double 2.063285
	.quad	0x3fea8ca3e7d13511              # double 0.82966799999999996
	.quad	0x40218900e6afcce2              # double 8.7675850000000004
	.quad	0x40176583621fafc9              # double 5.8491340000000003
	.quad	0x402284cc89b0ee4a              # double 9.2593730000000001
	.quad	0x4014dd916872b021              # double 5.2163750000000002
	.quad	0x3fd2f3e0370cdc87              # double 0.29613499999999998
	.quad	0x4022732dd377e1b9              # double 9.2249590000000001
	.quad	0x40147d3d859c8c93              # double 5.1223049999999999
	.quad	0x4008cccf6be37de9              # double 3.1000049999999999
	.quad	0x40041e3c105186db              # double 2.5147629999999999
	.quad	0x4016e87f88765ba7              # double 5.7270490000000001
	.quad	0x402311ae924f227d              # double 9.5345349999999999
	.quad	0x3fea20ad8a11665a              # double 0.81648900000000002
	.quad	0x3ff19b13165d3997              # double 1.10036
	.quad	0x4010692d1287c201              # double 4.1027110000000002
	.quad	0x4013e9af1886df83              # double 4.9782070000000003
	.quad	0x402387e86833c600              # double 9.7654449999999997
	.quad	0x40220df2cb641701              # double 9.0272430000000004
	.quad	0x40059bfceb78897f              # double 2.7011660000000002
	.quad	0x4000b099e0e73605              # double 2.0862310000000002
	.quad	0x401c95718eb89507              # double 7.1459409999999997
	.quad	0x401dd95e17e34b94              # double 7.4622729999999997
	.quad	0x4018fd1aeb3dd11c              # double 6.2471730000000001
	.quad	0x401ce184c271fff8              # double 7.2202330000000003
	.quad	0x401c419a415f45e1              # double 7.0640650000000003
	.quad	0x3ffbef8ad2567989              # double 1.7459819999999999
	.quad	0x3ffad45d851654d6              # double 1.676847
	.quad	0x40135d48cb4aec8d              # double 4.8410979999999997
	.quad	0x400ce95f2452c5a0              # double 3.6139510000000001
	.quad	0x3feec3419e300150              # double 0.96133500000000005
	.quad	0x40183c8e25c810a5              # double 6.0591359999999996
	.quad	0x400e070f3882278d              # double 3.753447
	.quad	0x40207522856605ee              # double 8.2287789999999994
	.quad	0x4014c1b691212514              # double 5.1891730000000003
	.quad	0x40154b3bfb58d152              # double 5.3234709999999996
	.quad	0x3fe9318dac258d58              # double 0.78729899999999997
	.quad	0x400c8bf0995aaf79              # double 3.56833
	.quad	0x401cc8adeebb341e              # double 7.1959759999999999
	.quad	0x3fa0446b69db65ed              # double 0.031772000000000002
	.quad	0x401a31a32b12d341              # double 6.5484739999999997
	.quad	0x401affdfc19c1722              # double 6.7498769999999997
	.quad	0x400be9003eea209b              # double 3.4887700000000001
	.quad	0x4003410adcd2d44e              # double 2.4067590000000001
	.quad	0x401295e02ea960b7              # double 4.646363
	.quad	0x40218ef240fa9c13              # double 8.7791920000000001
	.quad	0x3ff7d9e94ab1d4fa              # double 1.4907010000000001
	.quad	0x4004b861a60d4563              # double 2.5900300000000001
	.quad	0x40056b97fe8ee6b8              # double 2.6775359999999999
	.quad	0x40234d5a7d24180d              # double 9.6510809999999995
	.quad	0x4011d95bff04577e              # double 4.4622650000000004
	.quad	0x400c4bd017dae819              # double 3.5370180000000002
	.quad	0x40223feeb2d0a244              # double 9.1248679999999993
	.quad	0x401de3df2a9d627c              # double 7.472531
	.quad	0x3ff0fedc7ef177a7              # double 1.062222
	.quad	0x4022f9b6b2af1455              # double 9.4877219999999997
	.quad	0x3ffd172ffd1dcd70              # double 1.8181609999999999
	.quad	0x4021e923e5b8561d              # double 8.9553519999999995
	.quad	0x401b99bcba301217              # double 6.9001340000000004
	.quad	0x401280fcf80dc337              # double 4.6259649999999999
	.quad	0x400eeb86b15f88fd              # double 3.8650030000000002
	.quad	0x401996ff7dfa00e2              # double 6.3974589999999996
	.quad	0x3fe04f70153bd167              # double 0.50969699999999996
	.quad	0x401ae37fbefd0071              # double 6.7221669999999998
	.quad	0x4023251116a8b8f1              # double 9.5723959999999994
	.quad	0x3ff717e23f24d8fd              # double 1.4433309999999999
	.quad	0x4015f69db65ecc3e              # double 5.4908359999999998
	.quad	0x40210ea57214f052              # double 8.5286059999999999
	.quad	0x4014f7542a23bff9              # double 5.2415320000000003
	.quad	0x401fe7075b3e1438              # double 7.9756140000000002
	.quad	0x400d6ca03c4b09ea              # double 3.6780400000000002
	.quad	0x401acfe47991bc56              # double 6.7030200000000004
	.quad	0x401f44d8ba40d90e              # double 7.8172329999999999
	.quad	0x4020f61cffeb074a              # double 8.4806899999999992
	.quad	0x3ffb0bf0995aaf79              # double 1.690415
	.quad	0x3fe7a908a265f0f6              # double 0.73938400000000004
	.quad	0x401e6a9c12f09d8c              # double 7.6041109999999996
	.quad	0x3fe88d25edd05293              # double 0.76722999999999997
	.quad	0x40228b5bd512ec6c              # double 9.2721850000000003
	.quad	0x4011dfdeb52c9d17              # double 4.468623
	.quad	0x3fee7398e9707182              # double 0.95161099999999998
	.quad	0x4013bbc5154866a1              # double 4.9333689999999999
	.quad	0x400f51c10d7be985              # double 3.9149189999999998
	.quad	0x4019410be9424e59              # double 6.3135219999999999
	.quad	0x401a3d834091c087              # double 6.5600709999999998
	.quad	0x400d703b81b64e05              # double 3.6798009999999999
	.quad	0x4016f3d89ce4a7b5              # double 5.7381310000000001
	.quad	0x3fe9ba14cec41dd2              # double 0.80396500000000004
	.quad	0x402215dd095af295              # double 9.0427020000000002
	.quad	0x3fe60eef1bac2df1              # double 0.68932300000000002
	.quad	0x3fb1888f861a60d4              # double 0.068489999999999995
	.quad	0x401b5f290abb44e5              # double 6.84293
	.quad	0x40071c94f69ca9ef              # double 2.8889559999999999
	.quad	0x400d32f3c2dadb83              # double 3.6498789999999999
	.quad	0x40137ce13f4a98ab              # double 4.8719530000000004
	.quad	0x4022062435696e59              # double 9.0119950000000006
	.quad	0x400370092ccf6be3              # double 2.4297049999999998
	.quad	0x400d71e75360d024              # double 3.6806169999999998
	.quad	0x4006eacb85a4f00f              # double 2.864646
	.quad	0x3ff302cc2d6a9c56              # double 1.188183
	.quad	0x402226049ecb31c2              # double 9.0742539999999998
	.quad	0x4000c204f2ae07e6              # double 2.0947360000000002
	.quad	0x401d8371971c10d8              # double 7.3783630000000002
	.quad	0x3fd1d4bad7d7c2ca              # double 0.278609
	.quad	0x401c417ce52deca2              # double 7.0639529999999997
	.quad	0x3fa85f6ba0620ab7              # double 0.047602999999999999
	.quad	0x4023d63baba7b917              # double 9.9184239999999999
	.quad	0x402208a82a5614e0              # double 9.0169080000000008
	.quad	0x40213b51159c4977              # double 8.6158529999999995
	.quad	0x4000abd1aa821f2a              # double 2.0838960000000002
	.quad	0x401de4295a6c5d20              # double 7.4728139999999996
	.quad	0x401bb1fd5885d313              # double 6.9238179999999998
	.quad	0x400aae7ddca4b125              # double 3.3352010000000001
	.quad	0x3ffddc0229a5ebb7              # double 1.8662129999999999
	.quad	0x3fce1fc08fa7a850              # double 0.235344
	.quad	0x40171e5a35d67ba2              # double 5.7796409999999998
	.quad	0x40191fc8b0079a28              # double 6.2810389999999998
	.quad	0x4023456b441bb8c3              # double 9.6355839999999997
	.quad	0x401fe6e7e62dc6e3              # double 7.9754940000000003
	.quad	0x40091c79b34a44c8              # double 3.1389040000000001
	.quad	0x3ff5c3b81b64e054              # double 1.3602829999999999
	.quad	0x40121d9a52263d81              # double 4.5289089999999996
	.quad	0x40239ca925fe974a              # double 9.8059779999999996
	.quad	0x400b91d1d4738a3b              # double 3.4462009999999998
	.quad	0x401b447f562174c5              # double 6.8168920000000002
	.quad	0x4021b08c8259e1f4              # double 8.8448220000000006
	.quad	0x40147a93f290abb4              # double 5.1197049999999997
	.quad	0x3fede11ba3ca7504              # double 0.93372900000000003
	.quad	0x401bf6544fe36d22              # double 6.9905559999999998
	.quad	0x400390b84988094e              # double 2.4456639999999998
	.quad	0x40228343526527a2              # double 9.256373
	.quad	0x401f89b413986339              # double 7.8844760000000002
	.quad	0x3ffaf57603925bb8              # double 1.6849270000000001
	.quad	0x40123837f7be121f              # double 4.5549010000000001
	.quad	0x40108b5e529bae47              # double 4.1361020000000002
	.quad	0x3fe26634117f8445              # double 0.57497600000000004
	.quad	0x401fb878316a0557              # double 7.9301459999999996
	.quad	0x4016c6ad70e6f2e9              # double 5.6940210000000002
	.quad	0x3fd587160956c0d7              # double 0.33637
	.quad	0x3feadfb9389b5200              # double 0.83980999999999995
	.quad	0x4018e67fd3f5b5fa              # double 6.2250969999999999
	.quad	0x40148ddd2ae8e1d6              # double 5.1385389999999997
	.quad	0x4023d8dbf0563ed1              # double 9.923553
	.quad	0x3fd5a009f623076c              # double 0.337893
	.quad	0x4021701cb46bacf7              # double 8.7189689999999995
	.quad	0x4016dab81f969e3d              # double 5.7135930000000004
	.quad	0x400074c1a8ac5c14              # double 2.05701
	.quad	0x4022f3f5515054ac              # double 9.4764809999999997
	.quad	0x3ffc9702e6644d87              # double 1.7868679999999999
	.quad	0x401446f1dc50ce4f              # double 5.0692820000000003
	.quad	0x4008c768dfbd6a59              # double 3.0973679999999999
	.quad	0x40143ef6f8f04146              # double 5.0614889999999999
	.quad	0x400d4a8c9b845565              # double 3.6614010000000001
	.quad	0x40135c8216c61523              # double 4.8403400000000003
	.quad	0x401770d130df9bdc              # double 5.8601729999999996
	.quad	0x402050aaa7ded6bb              # double 8.1575520000000008
	.quad	0x402094b85a4f00ef              # double 8.2904689999999999
	.quad	0x3fe6be5109070fbf              # double 0.71073200000000003
	.quad	0x4011239c94f69caa              # double 4.2847770000000001
	.quad	0x4009c87fcb923a2a              # double 3.2229000000000001
	.quad	0x3fe550d2806af46b              # double 0.66611600000000004
	.quad	0x3fe69233df2a9d62              # double 0.70534699999999995
	.quad	0x4000f8750c1b9735              # double 2.1213169999999999
	.quad	0x401d26ca89fc6da4              # double 7.2878819999999997
	.quad	0x4011b0c34c1a8ac6              # double 4.4226200000000002
	.quad	0x40119a9d627bf61b              # double 4.4009910000000003
	.quad	0x40132ffb480a5acd              # double 4.7968570000000001
	.quad	0x401d3b75ea67e847              # double 7.3080670000000003
	.quad	0x3ffed986b9c304cd              # double 1.928107
	.quad	0x40227cc8366516db              # double 9.2437149999999999
	.quad	0x4022cf8ee2867275              # double 9.4053869999999992
	.quad	0x3fdcb28954a7f801              # double 0.44839699999999999
	.quad	0x3fd843b2dd377e1c              # double 0.37913200000000002
	.quad	0x401fd08b75ea67e8              # double 7.9536569999999997
	.quad	0x40199cdbbe0157ef              # double 6.4031820000000002
	.quad	0x3ff6b6ee73e681aa              # double 1.4196610000000001
	.quad	0x401d33cc07aaef2c              # double 7.3005829999999996
	.quad	0x400fa857f3061c7a              # double 3.9571990000000001
	.quad	0x401d3658c4bd33d3              # double 7.3030730000000004
	.quad	0x401fa74213a0c6b5              # double 7.9133380000000004
	.quad	0x4015eab862b27cbf              # double 5.4792189999999996
	.quad	0x401408a009f62307              # double 5.0084229999999996
	.quad	0x40046bf444e0daa1              # double 2.5527120000000001
	.quad	0x40212cb46bacf744              # double 8.5873139999999992
	.quad	0x401bf09dcf893faf              # double 6.9849769999999998
	.quad	0x4009abf4cb1897a6              # double 3.2089629999999998
	.quad	0x40176d6c2efd438d              # double 5.8568579999999999
	.quad	0x40215cdfaca36199              # double 8.6813939999999992
	.quad	0x4016c0c4156e264e              # double 5.6882479999999997
	.quad	0x401ec831ad2135db              # double 7.6955020000000002
	.quad	0x40237a64a16a4873              # double 9.7390489999999996
	.quad	0x4020bf292c493426              # double 8.3733609999999992
	.quad	0x4000e83cafb3b752              # double 2.113397
	.quad	0x40234d887ebf22c0              # double 9.6514319999999997
	.quad	0x400c1c5a3e39f773              # double 3.5138440000000002
	.quad	0x400165f9df548ece              # double 2.1747930000000002
	.quad	0x401a738a3b57c4e3              # double 6.612832
	.quad	0x402394d855970b4a              # double 9.7907130000000002
	.quad	0x4021f3ee5eedcc21              # double 8.9764280000000003
	.quad	0x3ffdb85b5b70691f              # double 1.8575090000000001
	.quad	0x40238461b6d43d04              # double 9.7585580000000007
	.quad	0x4004305faebc408e              # double 2.5236200000000002
	.quad	0x401e7284167a95c8              # double 7.6118319999999997
	.quad	0x4022156a161e4f76              # double 9.0418249999999993
	.quad	0x401785b4677b395c              # double 5.8805709999999998
	.quad	0x40238943e1006078              # double 9.7680959999999998
	.quad	0x3fca44523f67f4dc              # double 0.20521
	.quad	0x4023f91819d2391d              # double 9.9865119999999993
	.quad	0x40224ba9d1f60179              # double 9.1477799999999991
	.quad	0x401a3fc86cebbba5              # double 6.5622879999999997
	.quad	0x40020793dd97f62b              # double 2.2536999999999998
	.quad	0x40125240b780346e              # double 4.5803250000000002
	.quad	0x3fa7fb8b26394fad              # double 0.046841000000000001
	.quad	0x401f0c4fc1df3301              # double 7.7620230000000001
	.quad	0x3ffc3d05af6c69b6              # double 1.7648980000000001
	.quad	0x4013295f676ea423              # double 4.7904030000000004
	.quad	0x40019644955b4678              # double 2.1983730000000001
	.quad	0x40065cc63f141206              # double 2.7953000000000001
	.quad	0x4020b253543aeab8              # double 8.3482920000000007
	.quad	0x40004856605ee569              # double 2.0353210000000002
	.quad	0x4011b3f2d3c792d1              # double 4.4257309999999999
	.quad	0x401477ff583a53b9              # double 5.1171850000000001
	.quad	0x3fd2fb0d51f81a58              # double 0.29657299999999998
	.quad	0x400db143393ab431              # double 3.711554
	.quad	0x40230cfe36d22425              # double 9.5253770000000006
	.quad	0x40043b5d031055b9              # double 2.5289860000000002
	.quad	0x4006b78dd616f86a              # double 2.839626
	.quad	0x40124ce703afb7e9              # double 4.5750999999999999
	.quad	0x4023fbb29a1b9f99              # double 9.9915970000000005
	.quad	0x4000ff19d66adb40              # double 2.1245609999999999
	.quad	0x3fec25072085b185              # double 0.87951999999999997
	.quad	0x40000ec743201041              # double 2.0072160000000001
	.quad	0x401573a4723aafff              # double 5.3629319999999998
	.quad	0x402016b50b0f27bb              # double 8.0443499999999997
	.quad	0x401e590ea9e6eeb7              # double 7.5869699999999999
	.quad	0x401e9cfb3311a544              # double 7.653302
	.quad	0x40069f6a0dbad3a6              # double 2.827839
	.quad	0x400beba387592535              # double 3.4900579999999999
	.quad	0x4018aa04d12018a4              # double 6.1660339999999998
	.quad	0x40106a3e39f77293              # double 4.1037530000000002
	.quad	0x4020ea3b14a90471              # double 8.4574820000000006
	.quad	0x401ab919ac79702e              # double 6.6807619999999996
	.quad	0x4005c1c0ca600b03              # double 2.7196060000000002
	.quad	0x40133ef39085f4a1              # double 4.8114759999999999
	.quad	0x401c320d130df9be              # double 7.0488780000000002
	.quad	0x3fccd916872b020c              # double 0.22537499999999999
	.quad	0x401164bf0995aaf8              # double 4.3483850000000004
	.quad	0x3fd2a36e2eb1c433              # double 0.29122500000000001
	.quad	0x4002763886594af5              # double 2.307725
	.quad	0x3fc13ae685db76b4              # double 0.13461000000000001
	.quad	0x400fad02cd39da16              # double 3.9594779999999998
	.quad	0x3fd3595bbbe878fb              # double 0.30232900000000001
	.quad	0x400f40e736049ecb              # double 3.9066909999999999
	.quad	0x4002c04f2ae07e5a              # double 2.3439009999999998
	.quad	0x4005e5e56cd6c2f0              # double 2.7372540000000001
	.quad	0x4002ea454de7ea60              # double 2.3643900000000002
	.quad	0x400d77f8ca8198f2              # double 3.6835800000000001
	.quad	0x401e38e1d6494d51              # double 7.555549
	.quad	0x3fe96d0f6273929f              # double 0.79456300000000002
	.quad	0x4021d4b4f1e4b44a              # double 8.9154429999999998
	.quad	0x401d96073de1e2df              # double 7.3965120000000004
	.quad	0x401ba1b25f633ce6              # double 6.9079069999999998
	.quad	0x4000ec0bdcad14a1              # double 2.1152570000000002
	.quad	0x3ffc68a3f8982cb2              # double 1.775547
	.quad	0x401fbefd86a8fc0d              # double 7.9365139999999998
	.quad	0x400100dc33721d54              # double 2.1254200000000001
	.quad	0x4010d996fa82e87d              # double 4.2124899999999998
	.quad	0x401f5ef5ec80c73b              # double 7.8427350000000002
	.quad	0x3fe5b81b64e05469              # double 0.67872399999999999
	.quad	0x40211027d88c1db0              # double 8.5315539999999999
	.quad	0x4020a2708ede54b5              # double 8.3172650000000008
	.quad	0x4012dd54da4ce810              # double 4.7161439999999999
	.quad	0x40215e525892684d              # double 8.6842220000000001
	.quad	0x40032d5d80e496ee              # double 2.397151
	.quad	0x40208baf74cd3177              # double 8.2728230000000007
	.quad	0x40119aa3ad18d25f              # double 4.4010150000000001
	.quad	0x401f00e8427418d7              # double 7.7508860000000003
	.quad	0x3fe1999780baa583              # double 0.54999900000000002
	.quad	0x401da70bd017dae8              # double 7.4131309999999999
	.quad	0x4023ab78ee286727              # double 9.8349069999999993
	.quad	0x401bfe2a3cea6c1a              # double 6.998208
	.quad	0x4010949906cca2db              # double 4.1451149999999997
	.quad	0x40211506dd69d302              # double 8.5410679999999992
	.quad	0x400bc26edaa92e62              # double 3.469938
	.quad	0x4019741ede1198af              # double 6.3633990000000002
	.quad	0x3fe8573647baa9b5              # double 0.76064600000000004
	.quad	0x4021577164c729f6              # double 8.6707870000000007
	.quad	0x4010a2120e1f7d74              # double 4.1582720000000002
	.quad	0x3ff74096feb4a665              # double 1.4532689999999999
	.quad	0x401bf63800218def              # double 6.9904479999999998
	.quad	0x4016f672324c8366              # double 5.7406699999999997
	.quad	0x40189f1bac2df0d4              # double 6.1553789999999999
	.quad	0x401326b09635610b              # double 4.7877830000000001
	.quad	0x4020af31d2e0e304              # double 8.3421769999999995
	.quad	0x402137ee9142b303              # double 8.6092420000000001
	.quad	0x4017bdb76b3bb83d              # double 5.93527
	.quad	0x4007bd1676640a6c              # double 2.9673280000000002
	.quad	0x401024a9478c868c              # double 4.0358020000000003
	.quad	0x4005f58f2e05ccc9              # double 2.7449020000000002
	.quad	0x4009f566490a350d              # double 3.2448239999999999
	.quad	0x3ff1613d31b9b670              # double 1.0862400000000001
	.quad	0x4001f455219a847b              # double 2.2443029999999999
	.quad	0x40118eb851eb851f              # double 4.3893750000000002
	.quad	0x401608e0008637bd              # double 5.508667
	.quad	0x4016740d90e23af3              # double 5.6133329999999999
	.quad	0x400294cb1897a67a              # double 2.3226529999999999
	.quad	0x40107aa25d8d79d1              # double 4.1197600000000003
	.quad	0x402335bccaf709b7              # double 9.6049559999999996
	.quad	0x40173ac6045baf53              # double 5.8073959999999998
	.quad	0x4014f6ddaceee0f4              # double 5.2410800000000002
	.quad	0x4000995f676ea423              # double 2.0748890000000002
	.quad	0x401b39efd86a8fc1              # double 6.8065790000000002
	.quad	0x3ff479f340d4dc66              # double 1.279773
	.quad	0x3fe0eeac8605681f              # double 0.52913500000000002
	.quad	0x4018067ba237cdcd              # double 6.0063310000000003
	.quad	0x400e5f623076c051              # double 3.7965740000000001
	.quad	0x3fe9c8909289dae0              # double 0.80573300000000003
	.quad	0x3fd010880d801b43              # double 0.25100899999999998
	.quad	0x3fd650614163779f              # double 0.34865600000000002
	.quad	0x4005748a9bcfd4bf              # double 2.681905
	.quad	0x401bfb5c39bcba30              # double 6.9954689999999999
	.quad	0x40036738a3b57c4e              # double 2.4254009999999999
	.quad	0x40014748e4755ffe              # double 2.1598069999999998
	.quad	0x40196baf965b20b8              # double 6.355162
	.quad	0x400901ffb480a5ad              # double 3.1259760000000001
	.quad	0x40077a7eb6bf444e              # double 2.934812
	.quad	0x401fb991bc558644              # double 7.9312199999999997
	.quad	0x4021a796bfca85cb              # double 8.8273220000000006
	.quad	0x401ef9a459103c8e              # double 7.7437909999999999
	.quad	0x40131640e9d51b50              # double 4.7717320000000001
	.quad	0x4021b918e325d4a6              # double 8.8615180000000002
	.quad	0x401cd4edf6124074              # double 7.2079389999999997
	.quad	0x401793ff69014b5a              # double 5.8945290000000004
	.quad	0x400231b9b66f9336              # double 2.2742800000000001
	.quad	0x401d38fc504816f0              # double 7.30565
	.quad	0x4015f9b3d07c84b6              # double 5.4938500000000001
	.quad	0x4009df9c62a1b5c8              # double 3.2341850000000001
	.quad	0x401cf93964a59c06              # double 7.2433829999999997
	.quad	0x3ff0eb81f969e3c9              # double 1.0574969999999999
	.quad	0x3fc1f84449dbec25              # double 0.14038900000000001
	.quad	0x4019b33508f648c7              # double 6.4250069999999999
	.quad	0x4020a24fca42aed1              # double 8.3170149999999996
	.quad	0x4017e6f4be835dee              # double 5.975543
	.quad	0x4022493660e51d26              # double 9.1429930000000006
	.quad	0x4020bfbe553ac4f8              # double 8.3744990000000001
	.quad	0x40210883ba3443d4              # double 8.5166299999999992
	.quad	0x4012550374ff865d              # double 4.5830209999999996
	.quad	0x401ea8f7985271bd              # double 7.6650070000000001
	.quad	0x40128280ae104923              # double 4.6274439999999997
	.quad	0x401f22999567dbb1              # double 7.7837889999999996
	.quad	0x40158357e670e2c1              # double 5.3782649999999999
	.quad	0x3ff30c64fdb09a67              # double 1.190526
	.quad	0x4023ceb93ccd0fe9              # double 9.9037570000000005
	.quad	0x3ff04e69f05ea24d              # double 1.019144
	.quad	0x4005befa615a8deb              # double 2.718251
	.quad	0x3fc5f52fc2656abe              # double 0.171545
	.quad	0x401f0cc07aaef2c7              # double 7.7624529999999998
	.quad	0x3fefdff609dcf894              # double 0.996089
	.quad	0x40185bbd3804534c              # double 6.0895890000000001
	.quad	0x401cf5d63886594b              # double 7.240075
	.quad	0x402104306e5cd4ed              # double 8.5081819999999997
	.quad	0x401373bcd35a8588              # double 4.8630250000000004
	.quad	0x400c2982cb20fb22              # double 3.5202689999999999
	.quad	0x4017e324851a8694              # double 5.971819
	.quad	0x40116a53fc0096ff              # double 4.3538360000000003
	.quad	0x400b4ae297396d09              # double 3.411565
	.quad	0x401ce9eecbfb15b5              # double 7.2284499999999996
	.quad	0x3ff86157689ca18c              # double 1.523765
	.quad	0x40115c3f811f4f51              # double 4.3400860000000003
	.quad	0x400bf8090b417ca2              # double 3.496111
	.quad	0x3fe8765fd8adab9f              # double 0.76444999999999996
	.quad	0x3ff81351159c4977              # double 1.5047159999999999
	.quad	0x401fbb65a9a80496              # double 7.9330049999999996
	.quad	0x40181c8605681ecd              # double 6.0278549999999997
	.quad	0x401136cd29131ec1              # double 4.3035170000000003
	.quad	0x4001fe8d5410f94d              # double 2.2492930000000002
	.quad	0x4019ec9539b88872              # double 6.4810379999999999
	.quad	0x4006dd7f51efb6dd              # double 2.8581530000000002
	.quad	0x402309ede1198aec              # double 9.5193930000000008
	.quad	0x401752cfd8f0c77e              # double 5.8308710000000001
	.quad	0x3ff9470c996b7671              # double 1.5798460000000001
	.quad	0x400cfdf4c2b51bd6              # double 3.6240019999999999
	.quad	0x401f71deefe4ffc9              # double 7.8612019999999995
	.quad	0x3fb42528ae74f2f1              # double 0.078691999999999998
	.quad	0x401231ec4e7253da              # double 4.5487529999999996
	.quad	0x3f8a1c25d074213a              # double 0.012749
	.quad	0x4018c7a9e2bcf91a              # double 6.1949839999999998
	.quad	0x401cd46cfc829cfe              # double 7.2074470000000002
	.quad	0x401921ca3a4b5569              # double 6.2829980000000001
	.quad	0x40218ef9fcb0c027              # double 8.7792510000000004
	.quad	0x4011d662bae03b3f              # double 4.4593610000000004
	.quad	0x401c82eb5f5f0b28              # double 7.1278509999999997
	.quad	0x401151327243137b              # double 4.329294
	.quad	0x4006ba921ccd9620              # double 2.8410989999999998
	.quad	0x402333a5e353f7cf              # double 9.6008750000000002
	.quad	0x400aafe79ee02a78              # double 3.3358910000000002
	.quad	0x40087a5ca29845dd              # double 3.0597470000000002
	.quad	0x402049f40a2877ee              # double 8.1444399999999995
	.quad	0x400e7d5e4a383276              # double 3.8112149999999998
	.quad	0x40150edcc20d562a              # double 5.2645140000000001
	.quad	0x40132b53d640e9d5              # double 4.7923119999999999
	.quad	0x401732452c59fb1e              # double 5.7990919999999999
	.quad	0x40127887a8d64d7f              # double 4.6177049999999999
	.quad	0x3ffcc7746887a8d6              # double 1.7986949999999999
	.quad	0x401066a1e81cb46c              # double 4.1002270000000003
	.quad	0x400b460f5e41d4b7              # double 3.4092090000000002
	.quad	0x40225248f96e1587              # double 9.1607129999999994
	.quad	0x400a492a30553261              # double 3.2857249999999998
	.quad	0x40140685db76b3bc              # double 5.0063700000000004
	.quad	0x4023e572367e414e              # double 9.9481369999999991
	.quad	0x400081b5c7cd898b              # double 2.0633349999999999
	.quad	0x4012bc1eff9f87f0              # double 4.6837119999999999
	.quad	0x400843065f9591cd              # double 3.032727
	.quad	0x40032a337a80cf9e              # double 2.3956059999999999
	.quad	0x40202b4d056c508b              # double 8.0845719999999996
	.quad	0x401eab4202d9cf14              # double 7.6672440000000002
	.quad	0x3feaa6f60e0eb67c              # double 0.83288099999999998
	.quad	0x401b8ceee0f3cb3e              # double 6.8876299999999997
	.quad	0x4004d1d4f9c1f85d              # double 2.6024569999999998
	.quad	0x3ff27686a4ca4f44              # double 1.153937
	.quad	0x4023094c660a2014              # double 9.5181609999999992
	.quad	0x401f9280f12c27a6              # double 7.8930699999999998
	.quad	0x4015518b502ababf              # double 5.3296330000000003
	.quad	0x3ffc90adcd2d44dd              # double 1.7853220000000001
	.quad	0x40227bf93ff25e57              # double 9.2421360000000004
	.quad	0x40119e8ff327aa69              # double 4.404846
	.quad	0x3ff122f166e008ea              # double 1.0710310000000001
	.quad	0x400a6a1e81cb46bb              # double 3.3018160000000001
	.quad	0x401f6a832b990afe              # double 7.8540159999999997
	.quad	0x401e87be9856a37b              # double 7.6325630000000002
	.quad	0x400372239e6ab9b2              # double 2.4307319999999999
	.quad	0x3fe08c9320d9945b              # double 0.51715999999999995
	.quad	0x3ff4b42352eb5f5f              # double 1.293979
	.quad	0x402111832fcac8e7              # double 8.5342040000000008
	.quad	0x400dd37b07075b3e              # double 3.728262
	.quad	0x401a993a2df9378f              # double 6.6496360000000001
	.quad	0x401e26d6dc1a47aa              # double 7.5379290000000001
	.quad	0x401b53e468cac4b5              # double 6.8319260000000002
	.quad	0x400ebf162ae4b018              # double 3.8433039999999998
	.quad	0x3fd7a77a2cecc815              # double 0.36959700000000001
	.quad	0x40233bab862b27cc              # double 9.616543
	.quad	0x40211efdc9c4da90              # double 8.56053
	.quad	0x4021d2b8e8ea39c5              # double 8.9115669999999998
	.quad	0x401aefe004b7f5a5              # double 6.7342529999999998
	.quad	0x400aeeae18ac9f30              # double 3.3665430000000001
	.quad	0x4010d2d5e071c53f              # double 4.2058939999999998
	.quad	0x401c23a8e71476b0              # double 7.0348240000000004
	.quad	0x401344927913e814              # double 4.8169649999999997
	.quad	0x40200edbf8b9baa1              # double 8.0290219999999994
	.quad	0x40206bf9a49c2c1b              # double 8.2108889999999999
	.quad	0x400d7336deb95e5b              # double 3.681257
	.quad	0x400cdd2c7b890d5a              # double 3.6079949999999998
	.quad	0x4010cb3d4ae429e1              # double 4.1984760000000003
	.quad	0x3ff8b92e1ef73c0c              # double 1.54521
	.quad	0x40024acf312b1b37              # double 2.2865280000000001
	.quad	0x40169c67dfe32a06              # double 5.6527399999999997
	.quad	0x402316dedaec4a41              # double 9.5446690000000007
	.quad	0x401c3d651b0ccbc0              # double 7.0599559999999997
	.quad	0x3fe6189374bc6a7f              # double 0.6905
	.quad	0x401491c1d6cf850e              # double 5.1423410000000001
	.quad	0x40044247021d10b2              # double 2.532362
	.quad	0x4022c13a92a30553              # double 9.3773999999999997
	.quad	0x40196800a7c5ac47              # double 6.3515649999999999
	.quad	0x40197ce5710880d8              # double 6.371969
	.quad	0x400f49c347e8ccde              # double 3.9110170000000002
	.quad	0x402018203e63e8de              # double 8.0471210000000006
	.quad	0x401384b51372a38c              # double 4.8795970000000004
	.quad	0x40126a30121682f9              # double 4.6036989999999998
	.quad	0x40122e4d5d80e497              # double 4.5452170000000001
	.quad	0x3fe7bc4f3ba775fb              # double 0.74173699999999998
	.quad	0x4019ac3eb7cbb3c8              # double 6.4182079999999999
	.quad	0x401c42ca57a786c2              # double 7.0652249999999999
	.quad	0x402220c75c4a83b2              # double 9.0640210000000003
	.quad	0x4014d71e29b6b2af              # double 5.2100759999999999
	.quad	0x3ff2041248d7e026              # double 1.1259939999999999
	.quad	0x400cff2239e6ab9b              # double 3.6245769999999999
	.quad	0x401c84f5d35653ca              # double 7.1298440000000003
	.quad	0x40123cca2db61bb0              # double 4.5593649999999997
	.quad	0x401ba4aada33bd9d              # double 6.9108080000000003
	.quad	0x3fdf339c0ebedfa4              # double 0.48752499999999999
	.quad	0x4019c127f5e84f09              # double 6.4386289999999997
	.quad	0x3ff2a2c343b70ef5              # double 1.1647369999999999
	.quad	0x400c96fb8f57f738              # double 3.5737220000000001
	.quad	0x400967525460aa65              # double 3.1754500000000001
	.quad	0x401e611233df2a9d              # double 7.5947959999999996
	.quad	0x40209c6822ff0889              # double 8.3054819999999996
	.quad	0x40156d7a13c254a4              # double 5.3569110000000002
	.quad	0x4001ec6d612c6ac2              # double 2.240443
	.quad	0x400bc8d64d7f0ed4              # double 3.4730650000000001
	.quad	0x4015c52d666a9824              # double 5.4425559999999997
	.quad	0x40165d523b3636f4              # double 5.5911340000000003
	.quad	0x3fc622ff08893b7e              # double 0.17294300000000001
	.quad	0x40202ff1f9acffa8              # double 8.0936430000000001
	.quad	0x40194087442c7fbb              # double 6.3130160000000002
	.quad	0x401474199fe43676              # double 5.1133790000000001
	.quad	0x4019cb6b6e0d23d5              # double 6.4486520000000001
	.quad	0x4009d2324c836651              # double 3.2276349999999998
	.quad	0x401296909aed56b0              # double 4.6470359999999999
	.quad	0x4023dbd556084a51              # double 9.9293619999999993
	.quad	0x3fe193c03bc4d22d              # double 0.54928600000000005
	.quad	0x400134080f98fa37              # double 2.1504059999999998
	.quad	0x4021727008a697af              # double 8.7235110000000002
	.quad	0x40154af35e310dbf              # double 5.323194
	.quad	0x401cdfba01eeed89              # double 7.218483
	.quad	0x40102db4cc250721              # double 4.0446350000000004
	.quad	0x4021d1ef0f16f438              # double 8.9100269999999995
	.quad	0x3fcba1cac083126f              # double 0.21587500000000001
	.quad	0x402274f355cd91ef              # double 9.2284190000000006
	.quad	0x401dfff7dfa00e28              # double 7.4999690000000001
	.quad	0x402227c9363f572e              # double 9.0777070000000002
	.quad	0x400d3ebd9018e758              # double 3.6556350000000002
	.quad	0x3ff6afa0d77b7c78              # double 1.417878
	.quad	0x40140bff8a8f3a9b              # double 5.011717
	.quad	0x4022bd907d912557              # double 9.3702430000000003
	.quad	0x4000f0b6b6e0d23d              # double 2.1175359999999999
	.quad	0x401f4cc74b838c11              # double 7.8249789999999999
	.quad	0x40008fb1183b6028              # double 2.0701619999999998
	.quad	0x3fe8ac14c660a201              # double 0.77100599999999997
	.quad	0x40043154003254e7              # double 2.5240860000000001
	.quad	0x402179fb6134ce3e              # double 8.7382460000000002
	.quad	0x3ffcb94face67d78              # double 1.795242
	.quad	0x3fb5a7c17a89331a              # double 0.084590999999999999
	.quad	0x4019fcf67b1c0011              # double 6.4970340000000002
	.quad	0x4006b2b0a6fc58ac              # double 2.8372510000000002
	.quad	0x40218290cd423d92              # double 8.7550109999999997
	.quad	0x4003ddb22d0e5604              # double 2.48325
	.quad	0x4013f496ededaec5              # double 4.9888570000000003
	.quad	0x401c7121682f9442              # double 7.1104789999999998
	.quad	0x4023dad2fe3f35a0              # double 9.9273910000000001
	.quad	0x4010d67b1c0010c7              # double 4.209454
	.quad	0x4020865907d91255              # double 8.2623979999999992
	.quad	0x40201b543aeab799              # double 8.0533769999999993
	.quad	0x40208959e6256367              # double 8.2682640000000003
	.quad	0x400b382dbe7f2c30              # double 3.402431
	.quad	0x3feb0e6299524bfd              # double 0.84550599999999998
	.quad	0x4015f3d96638433d              # double 5.4881339999999996
	.quad	0x3ff5ffdf7e8038a0              # double 1.3749690000000001
	.quad	0x401eef45e0b4e11e              # double 7.7336650000000002
	.quad	0x3fedcba301216830              # double 0.93110800000000005
	.quad	0x3ff75abb01c92ddc              # double 1.459651
	.quad	0x4021c85985ad538b              # double 8.8913080000000004
	.quad	0x402026425aee6320              # double 8.0747250000000008
	.quad	0x400ea13cab81f96a              # double 3.828729
	.quad	0x400d27e06961c369              # double 3.6444709999999998
	.quad	0x400305b291b823c8              # double 2.3777819999999998
	.quad	0x4018ba27ae9ab29e              # double 6.1817919999999997
	.quad	0x401befddebd9018e              # double 6.9842449999999996
	.quad	0x4011249cf56eac86              # double 4.285755
	.quad	0x401d7c408d8ec95c              # double 7.37134
	.quad	0x40139f2778140dd4              # double 4.905424
	.quad	0x40231e5300581494              # double 9.5592269999999999
	.quad	0x401b6064a9cdc444              # double 6.8441340000000004
	.quad	0x4020e8a6b93ccd10              # double 8.4543970000000002
	.quad	0x40109ef5232d2bb2              # double 4.1552319999999998
	.quad	0x4009a0fdc1615ec0              # double 3.2036090000000002
	.quad	0x40025ffde7210be9              # double 2.2968709999999999
	.quad	0x4005c45996744b2b              # double 2.7208739999999998
	.quad	0x401d871151611ba4              # double 7.3819020000000002
	.quad	0x402000f840181e04              # double 8.001894
	.quad	0x4010e5b813016484              # double 4.224335
	.quad	0x40209bc72e275ab8              # double 8.3042540000000002
	.quad	0x3fb47357e670e2c1              # double 0.079884999999999998
	.quad	0x40212e0c9d9d3459              # double 8.5899400000000004
	.quad	0x3ffea512a94ff002              # double 1.9153009999999999
	.quad	0x3fd35ed06fef7c24              # double 0.30266199999999999
	.quad	0x40174cdf266ba494              # double 5.8250700000000002
	.quad	0x400523033a4723ab              # double 2.642096
	.quad	0x400fc157eed45e92              # double 3.9694060000000002
	.quad	0x3ff5f0b9dc2f405f              # double 1.3712709999999999
	.quad	0x400886b9c304ccee              # double 3.0657839999999998
	.quad	0x40232a7bd48cb4af              # double 9.5829760000000003
	.quad	0x400dc3dbc23315d7              # double 3.720634
	.quad	0x4018d0f062d40aaf              # double 6.2040420000000003
	.quad	0x4008f83ad9f0a1be              # double 3.1212059999999999
	.quad	0x40157bfd71b04684              # double 5.3710839999999997
	.quad	0x40222dde58e64b23              # double 9.0895869999999999
	.quad	0x4015b9a30984e400              # double 5.4312860000000001
	.quad	0x4008167caea747d8              # double 3.01098
	.quad	0x3ff709cd3e0bd44a              # double 1.4398930000000001
	.quad	0x401dc1dffc5479d5              # double 7.4393310000000001
	.quad	0x40217fefbf401c50              # double 8.7498760000000004
	.quad	0x40224aefd438d1d9              # double 9.1463610000000006
	.quad	0x3fe77dc7abfb9bed              # double 0.73410399999999998
	.quad	0x4017a7381d7dbf48              # double 5.9132999999999996
	.quad	0x400d169ca9ef5233              # double 3.6360410000000001
	.quad	0x3ff0338b47c73eee              # double 1.0125839999999999
	.quad	0x40222ddc4007570c              # double 9.0895709999999994
	.quad	0x40206dfc5cdd50a9              # double 8.2148160000000008
	.quad	0x4022d9a500d5e8d5              # double 9.4250869999999995
	.quad	0x400858a761027957              # double 3.043288
	.quad	0x4014d48cf7caa759              # double 5.2075690000000003
	.quad	0x40162f9f44d44567              # double 5.5465059999999999
	.quad	0x3fe090a782906898              # double 0.51765799999999995
	.quad	0x401787eaa2a0a958              # double 5.8827309999999997
	.quad	0x3fd28c5004fb1184              # double 0.28981400000000002
	.quad	0x40203c044284dfce              # double 8.1172199999999997
	.quad	0x4003c0eb67c286f9              # double 2.4691990000000001
	.quad	0x40132294dd72367e              # double 4.7837709999999998
	.quad	0x401679c66d373b00              # double 5.6189210000000003
	.quad	0x3ffdc5cbbc2b94d9              # double 1.8607899999999999
	.quad	0x40227bd3804534bd              # double 9.2418479999999992
	.quad	0x401bc49cb252ce03              # double 6.9420039999999998
	.quad	0x401693b8e4b87bdd              # double 5.6442600000000001
	.quad	0x4000a784a9478c87              # double 2.0817960000000002
	.quad	0x4022d2845996744b              # double 9.4111659999999996
	.quad	0x4016006cca2db61c              # double 5.5004150000000003
	.quad	0x4015fc970f7b9e06              # double 5.4966699999999999
	.quad	0x401f4f2a172abef0              # double 7.8273089999999996
	.quad	0x40120e996312f4cf              # double 4.5142569999999997
	.quad	0x400e4c98e53eb39a              # double 3.787401
	.quad	0x401b6df4c2b51bd6              # double 6.8573789999999999
	.quad	0x3fe8ce7685985ad5              # double 0.77520299999999998
	.quad	0x40225b04ccee5abc              # double 9.1777709999999999
	.quad	0x40133cefaa4766c7              # double 4.8095080000000001
	.quad	0x4023c8b1bbcf4e87              # double 9.8919809999999994
	.quad	0x3fe6b1c64ba94bbe              # double 0.70920099999999997
	.quad	0x3fe708333fc86cec              # double 0.71975100000000003
	.quad	0x4019f763a1900820              # double 6.4915909999999997
	.quad	0x4015d85dfa871a3b              # double 5.4612959999999999
	.quad	0x400d6329802c0a4a              # double 3.673419
	.quad	0x40218842b734b513              # double 8.7661339999999992
	.quad	0x401ab9d2bf551505              # double 6.6814679999999997
	.quad	0x4019835bd512ec6c              # double 6.3782800000000002
	.quad	0x40153fc371da37ef              # double 5.3122689999999997
	.quad	0x3fe137d1fe64f54d              # double 0.53806399999999999
	.quad	0x4014b9cf13cee9dd              # double 5.1814539999999996
	.quad	0x400a27967caea748              # double 3.2693300000000001
	.quad	0x401a9ffd60e94ee4              # double 6.6562400000000004
	.quad	0x400fabe7afa72218              # double 3.9589379999999998
	.quad	0x40158dba4d6e47dc              # double 5.3884059999999998
	.quad	0x40101096bb98c7e3              # double 4.0162000000000004
	.quad	0x3ffaf5903a7546d4              # double 1.684952
	.quad	0x3fd6d8f4f93bc0a0              # double 0.35699199999999998
	.quad	0x3fe0c2edbb59ddc2              # double 0.52379500000000001
	.quad	0x40227aff2a172abf              # double 9.2402280000000001
	.quad	0x4021ba513b5bf6a1              # double 8.8639010000000003
	.quad	0x4020a4b1897a67a5              # double 8.3216669999999997
	.quad	0x401d8e518f3eccc4              # double 7.3889829999999996
	.quad	0x401b9f15e7c8d196              # double 6.9053570000000004
	.quad	0x400c014057082492              # double 3.5006110000000001
	.quad	0x3ff6cf93bc0a06ea              # double 1.425678
	.quad	0x3ffed0092ccf6be3              # double 1.9257899999999999
	.quad	0x4022174fd6d7e88a              # double 9.0455310000000004
	.quad	0x4023ed4fbdad7519              # double 9.9634990000000005
	.quad	0x4010e41b328b6d87              # double 4.2227600000000001
	.quad	0x4015b0d173fb7a5f              # double 5.4226739999999998
	.quad	0x3fefb94d94078961              # double 0.99136999999999997
	.quad	0x3fbdb24e9c454584              # double 0.11600199999999999
	.quad	0x401142923e5b8562              # double 4.3150110000000002
	.quad	0x3ff4960a63305101              # double 1.2866310000000001
	.quad	0x3fd615c209246bf0              # double 0.345078
	.quad	0x401a49203a322af5              # double 6.5714119999999996
	.quad	0x400ca809d495182b              # double 3.5820500000000002
	.quad	0x4012877af640639d              # double 4.6323049999999997
	.quad	0x402360cb4aec8d5c              # double 9.6890509999999991
	.quad	0x4020d86317268d33              # double 8.4226310000000009
	.quad	0x4006d5336deb95e6              # double 2.8541020000000001
	.quad	0x40217679463cfb33              # double 8.7313939999999999
	.quad	0x401790092ccf6be3              # double 5.8906599999999996
	.quad	0x40112e8ff327aa69              # double 4.295471
	.quad	0x40168450acc0bdcb              # double 5.6292140000000002
	.quad	0x4020cbe5321e603d              # double 8.3982329999999994
	.quad	0x4023627fa1a0cf18              # double 9.6923799999999999
	.quad	0x402086a9c560c7c1              # double 8.2630140000000001
	.quad	0x4021f246e08f2171              # double 8.9731970000000008
	.quad	0x400eedb37c99ae92              # double 3.8660649999999999
	.quad	0x401f49f2778140dd              # double 7.8222139999999997
	.quad	0x400d459e1f3a57eb              # double 3.6589930000000002
	.quad	0x3ffd388ca3e7d135              # double 1.826306
	.quad	0x4008d4128bf3bea9              # double 3.1035509999999999
	.quad	0x401c149b62c77575              # double 7.020124
	.quad	0x401050242d05f288              # double 4.0782629999999997
	.quad	0x4005cf4384ba0e84              # double 2.7262029999999999
	.quad	0x3fb99e30014f8b59              # double 0.10007000000000001
	.quad	0x40203436fc158fb4              # double 8.1019819999999995
	.quad	0x40100c03361565c3              # double 4.0117310000000002
	.quad	0x400f340357a35504              # double 3.9003969999999999
	.quad	0x40130e770bd017db              # double 4.7641260000000001
	.quad	0x402187b7a5f41aef              # double 8.7650729999999992
	.quad	0x3ffd8f5b1c864884              # double 1.847499
	.quad	0x400efe44fa05143c              # double 3.874155
	.quad	0x40217c0d2c386d2f              # double 8.7422880000000003
	.quad	0x401dbb280f12c27a              # double 7.4327699999999997
	.quad	0x4021cd56f32bdc27              # double 8.9010540000000002
	.quad	0x400a81d5c31593e6              # double 3.313396
	.quad	0x402213e3e29307af              # double 9.0388479999999998
	.quad	0x40226daec4a4095f              # double 9.2142239999999997
	.quad	0x4016e40fa9c12f0a              # double 5.7227160000000001
	.quad	0x40192ea52ef911cf              # double 6.2955519999999998
	.quad	0x3ffa957eed45e918              # double 1.6614979999999999
	.quad	0x40128d04a2fcefaa              # double 4.6377129999999998
	.quad	0x3fff78dd616f86a1              # double 1.9670080000000001
	.quad	0x40015113836a832c              # double 2.1645880000000002
	.quad	0x401b45b317efe0ce              # double 6.818066
	.quad	0x4013bacbc8c0ce92              # double 4.9324180000000002
	.quad	0x401bac0a4a05dd90              # double 6.9180080000000004
	.quad	0x3ffd64f3343fa2ad              # double 1.8371459999999999
	.quad	0x4012d6312f4cf4a5              # double 4.7091719999999997
	.quad	0x402384881e4712e4              # double 9.7588509999999999
	.quad	0x4021ef6fb09203a3              # double 8.9676489999999998
	.quad	0x4021e1e14bdfd263              # double 8.9411719999999999
	.quad	0x3ff2bb29a1b9f98b              # double 1.1706939999999999
	.quad	0x3ffcf6cdf266ba49              # double 1.8102549999999999
	.quad	0x3fef26b0d9513f8e              # double 0.97347300000000003
	.quad	0x4004b546d3f9e7b8              # double 2.588514
	.quad	0x400e0a747d805e5f              # double 3.7551049999999999
	.quad	0x3ff0b877ab324852              # double 1.0450360000000001
	.quad	0x401091348b220792              # double 4.1418020000000002
	.quad	0x4023433226c3b928              # double 9.6312420000000003
	.quad	0x4010a339c0ebedfa              # double 4.1593999999999998
	.quad	0x40232022dd7a99fa              # double 9.5627659999999999
	.quad	0x401abb78897e9963              # double 6.6830769999999999
	.quad	0x401fc2b239a38fbd              # double 7.9401330000000003
	.quad	0x401dc70153bd1676              # double 7.4443409999999997
	.quad	0x3ff125dd095af295              # double 1.071744
	.quad	0x4017eb05b7cfe586              # double 5.979514
	.quad	0x3ffc8bf0995aaf79              # double 1.784165
	.quad	0x3fd2c6cdaf4adbc6              # double 0.29338399999999998
	.quad	0x3ff549ea9a3d2d88              # double 1.330546
	.quad	0x3fd5f21f6cacd185              # double 0.34290300000000001
	.quad	0x40000cb641700cd8              # double 2.0062069999999999
	.quad	0x40057d755bccaf71              # double 2.6862590000000002
	.quad	0x401521626b2f2303              # double 5.2826019999999998
	.quad	0x40028ab7995ee137              # double 2.317733
	.quad	0x4017b498c3b0c459              # double 5.9263640000000004
	.quad	0x40144c2d2780778a              # double 5.0743910000000003
	.quad	0x40200c99f1ae2da5              # double 8.0246119999999994
	.quad	0x3fd26d43d03968d7              # double 0.28791899999999998
	.quad	0x40082dc6e2a80065              # double 3.0223520000000001
	.quad	0x400b3ad7d7c2ca15              # double 3.4037320000000002
	.quad	0x3ffd694ccab3edd9              # double 1.8382080000000001
	.quad	0x400b4fdfc19c1722              # double 3.4140009999999998
	.quad	0x400401f3a57eaa2a              # double 2.500953
	.quad	0x401c66f049a9973e              # double 7.1005260000000003
	.quad	0x40210ab7fe08aefb              # double 8.5209349999999997
	.quad	0x4015d1fff79c8430              # double 5.4550780000000003
	.quad	0x4002e06748e47560              # double 2.359572
	.quad	0x40202e5e02ea960b              # double 8.0905609999999992
	.quad	0x401136c3fc43b2dd              # double 4.3034819999999998
	.quad	0x4009b986b9c304cd              # double 3.215589
	.quad	0x4013b09aaa3ad18d              # double 4.9224649999999999
	.quad	0x4005cefd438d1d8a              # double 2.7260689999999999
	.quad	0x401fa96249a133c2              # double 7.9154140000000002
	.quad	0x3fd70c23fab10ba6              # double 0.36011599999999999
	.quad	0x4022112923e5b856              # double 9.0335169999999998
	.quad	0x400adbff04577d95              # double 3.3574199999999998
	.quad	0x4023e34b945308bc              # double 9.9439360000000007
	.quad	0x3fe26e73e681a9b9              # double 0.57598300000000002
	.quad	0x4002ce02a77a2ced              # double 2.3505910000000001
	.quad	0x402292ab042528ae              # double 9.2864609999999992
	.quad	0x4004d49be8ff327b              # double 2.6038130000000002
	.quad	0x401dd669ced0b30b              # double 7.4593879999999997
	.quad	0x4018f3eb399f5dff              # double 6.2382020000000002
	.quad	0x402026a875d56f33              # double 8.0755040000000005
	.quad	0x3ff8e0f6f08cc576              # double 1.5549230000000001
	.quad	0x4002980a17b0f6ad              # double 2.3242379999999998
	.quad	0x401e5eb313be22e6              # double 7.5924800000000001
	.quad	0x4011950092ccf6be              # double 4.3955099999999998
	.quad	0x4007e045baf533f4              # double 2.9845079999999999
	.quad	0x400d8a454de7ea60              # double 3.6925150000000002
	.quad	0x3fe8e93e1c9b413a              # double 0.77847200000000005
	.quad	0x402040ee49f51698              # double 8.1268180000000001
	.quad	0x4023d6e9bbf0dc77              # double 9.9197520000000007
	.quad	0x400c98d92fb19e73              # double 3.5746329999999999
	.quad	0x3fd5cd07852f7f4a              # double 0.34063900000000003
	.quad	0x40187ed8904f6dfc              # double 6.1238729999999997
	.quad	0x4021337c3504c48b              # double 8.6005570000000002
	.quad	0x401dc1337eb28d86              # double 7.4386729999999996
	.quad	0x4000874c09c3ce21              # double 2.0660630000000002
	.quad	0x400a205ff1d81f10              # double 3.2658079999999998
	.quad	0x3ffc5754b05b7cfe              # double 1.7713209999999999
	.quad	0x400efb320535c9e6              # double 3.8726539999999998
	.quad	0x400cbff25e56cd6c              # double 3.5937239999999999
	.quad	0x3fe9c61522a6f3f5              # double 0.80542999999999998
	.quad	0x401837e996312f4d              # double 6.054602
	.quad	0x3f68548a9bcfd4bf              # double 0.00297
	.quad	0x400fbe425aee6320              # double 3.9679000000000002
	.quad	0x401b9820a30db6a2              # double 6.8985620000000001
	.quad	0x3fd5cfb762d83c6d              # double 0.34080300000000002
	.quad	0x401668a936c58eeb              # double 5.6022080000000001
	.quad	0x4021405c4651f3e9              # double 8.6257040000000007
	.quad	0x400c67cd898b2e9d              # double 3.5506850000000001
	.quad	0x4001843d46b26bf8              # double 2.1895699999999998
	.quad	0x4023b6f60e0eb67c              # double 9.8573459999999997
	.quad	0x401031e2584f4c6e              # double 4.0487149999999996
	.quad	0x4005ec061847f562              # double 2.740246
	.quad	0x40031d6f97679032              # double 2.389373
	.quad	0x3ff2ae05ccc89b0f              # double 1.167486
	.quad	0x4023e0d6f544bb1b              # double 9.93914
	.quad	0x3ff437531db445ed              # double 1.2635069999999999
	.quad	0x4004f0f8c64fdb0a              # double 2.6176620000000002
	.quad	0x400fdffa3b9ae0c1              # double 3.9843639999999998
	.quad	0x401c778316a05575              # double 7.1167109999999996
	.quad	0x40152152f3c2dadc              # double 5.2825430000000004
	.quad	0x3fc51bef49cf56eb              # double 0.16491500000000001
	.quad	0x401b32ecaeea63b7              # double 6.7997310000000004
	.quad	0x3ffe4ec84f8f8a4c              # double 1.894234
	.quad	0x4020833c3e74afd5              # double 8.2563189999999995
	.quad	0x401ba406c00da1a9              # double 6.9101819999999998
	.quad	0x402108025bfad29a              # double 8.5156430000000007
	.quad	0x401c6eeaa6d26741              # double 7.1083170000000004
	.quad	0x40234702e6644d87              # double 9.6386939999999992
	.quad	0x400e8f9a06a6e32e              # double 3.8201179999999999
	.quad	0x3fa4b641700cd856              # double 0.040453000000000003
	.quad	0x40014046c764ae00              # double 2.1563850000000002
	.quad	0x401eedfc5cdd50a9              # double 7.7324080000000003
	.quad	0x3ff32275ab7dc7ac              # double 1.195913
	.quad	0x400cfd03968d759f              # double 3.623542
	.quad	0x401f09d0203e63e9              # double 7.7595830000000001
	.quad	0x3ff348c60cbf2b24              # double 1.2052670000000001
	.quad	0x40230f96bfca85cb              # double 9.5304470000000005
	.quad	0x4021e098f605ab3b              # double 8.9386670000000006
	.quad	0x4020f90cd423d923              # double 8.4864259999999998
	.quad	0x40227bfc0096feb5              # double 9.2421570000000006
	.quad	0x3ff164d6e47dc37a              # double 1.0871189999999999
	.quad	0x40115ff865d7cb2e              # double 4.3437210000000004
	.quad	0x40174c62e4d1a650              # double 5.8245959999999997
	.quad	0x400f113cee9dd7ed              # double 3.8834170000000001
	.quad	0x402102426bb55ac0              # double 8.5044129999999996
	.quad	0x3fb35aa715831f04              # double 0.075602000000000003
	.quad	0x3ff85cd91eeaa6d2              # double 1.5226679999999999
	.quad	0x402231adc8fb86f4              # double 9.0970289999999991
	.quad	0x4020b58be7296f65              # double 8.3545829999999999
	.quad	0x40206ba29c779a6b              # double 8.2102249999999994
	.quad	0x3fffebf8769ec2ce              # double 1.9951099999999999
	.quad	0x401778a159817b96              # double 5.8678030000000003
	.quad	0x40222bf65dbfceb8              # double 9.0858640000000008
	.quad	0x402110aeb80ecfa7              # double 8.5325830000000007
	.quad	0x3ff3292c49342678              # double 1.1975519999999999
	.quad	0x401fb7221858bc5a              # double 7.9288410000000002
	.quad	0x401066e47dc37a3e              # double 4.1004810000000003
	.quad	0x401380ee8d10f51b              # double 4.8759100000000002
	.quad	0x3ff65f138bcdfefc              # double 1.398212
	.quad	0x3fdc4c09c3ce208a              # double 0.44214100000000001
	.quad	0x400d8e8fb00bcbe6              # double 3.6946099999999999
	.quad	0x4015f85b5b70691f              # double 5.4925360000000003
	.quad	0x402294a03c4b09ea              # double 9.2902850000000008
	.quad	0x401faa775fb2edfe              # double 7.9164709999999996
	.quad	0x3ffd80980b242071              # double 1.8438950000000001
	.quad	0x4020278a4c1ebc84              # double 8.0772270000000006
	.quad	0x400afe2584f4c6e7              # double 3.3740950000000001
	.quad	0x4018594812be48a6              # double 6.0871890000000004
	.quad	0x401b24ce8101f31f              # double 6.7859439999999998
	.quad	0x400956694898f606              # double 3.1671930000000001
	.quad	0x40177db76b3bb83d              # double 5.87277
	.quad	0x40220288051c9f73              # double 9.0049440000000001
	.quad	0x401dac182ecaeea6              # double 7.4180609999999998
	.quad	0x4021c7824d4cb9ed              # double 8.8896660000000001
	.quad	0x4010fbe4473cd573              # double 4.2459879999999997
	.quad	0x401bbc33f85510d4              # double 6.9337920000000004
	.quad	0x4020246801711948              # double 8.0711060000000003
	.quad	0x400f185ad538ac19              # double 3.886892
	.quad	0x401754395810624e              # double 5.8322500000000002
	.quad	0x400b8f0f16f4384c              # double 3.4448530000000002
	.quad	0x4003e89ca18bd662              # double 2.4885799999999998
	.quad	0x3fdb471f79420b3d              # double 0.42621599999999998
	.quad	0x4000f7ea1c68ec53              # double 2.1210520000000002
	.quad	0x401ac5d0fa58f712              # double 6.6931799999999999
	.quad	0x4020f28c586876e2              # double 8.4737270000000002
	.quad	0x40123b7c7820a30e              # double 4.5580920000000003
	.quad	0x4015bb302f72b453              # double 5.4328010000000004
	.quad	0x40113deb0fadf2ed              # double 4.310467
	.quad	0x4013e8611fd5885d              # double 4.9769329999999998
	.quad	0x4021bdec3dab5c3a              # double 8.8709430000000005
	.quad	0x401baaada33bd9cb              # double 6.9166780000000001
	.quad	0x401f08e64b231401              # double 7.7586909999999997
	.quad	0x4022d4fa48301a7a              # double 9.415972
	.quad	0x401dbde1198aeb81              # double 7.4354290000000001
	.quad	0x400199c94f69ca9f              # double 2.200091
	.quad	0x3ff1d3e2d6238da4              # double 1.1142300000000001
	.quad	0x401b0fe1da7b0b39              # double 6.7655099999999999
	.quad	0x40122fe82517e77d              # double 4.5467839999999997
	.quad	0x401431c0ca600b03              # double 5.0485870000000004
	.quad	0x401a87357e670e2c              # double 6.6320399999999999
	.quad	0x3ff33496aad1d042              # double 1.200339
	.quad	0x3fe675b3e1437c57              # double 0.70186800000000005
	.quad	0x401df02539756c94              # double 7.4845170000000003
	.quad	0x4012975d56f32bdc              # double 4.6478169999999999
	.quad	0x401eafb549f94856              # double 7.6715900000000001
	.quad	0x4022b36a832b990b              # double 9.350422
	.quad	0x4008f1958969a0ae              # double 3.1179610000000002
	.quad	0x3ffd2fb3b7521145              # double 1.824146
	.quad	0x40103159c4977425              # double 4.0481939999999996
	.quad	0x400a2a8fc0d2c387              # double 3.2707820000000001
	.quad	0x402180a372606fac              # double 8.7512469999999993
	.quad	0x3ff1c724b76f6d76              # double 1.111119
	.quad	0x4023cab862b27cbf              # double 9.8959379999999992
	.quad	0x3fe8a806af46aa08              # double 0.77051099999999995
	.quad	0x4018a237cdcca70d              # double 6.1584159999999999
	.quad	0x401a581b64e05469              # double 6.586042
	.quad	0x3fdc916872b020c5              # double 0.44637500000000002
	.quad	0x4022f7a22706d506              # double 9.4836589999999994
	.quad	0x3ffed6ce789e774f              # double 1.927443
	.quad	0x4005fa82e87d2c7c              # double 2.7473200000000002
	.quad	0x40200abe6a337a81              # double 8.0209840000000003
	.quad	0x3fed05a921ccd962              # double 0.906941
	.quad	0x4013a4d013a92a30              # double 4.9109499999999997
	.quad	0x3fe2ae7f6f4be836              # double 0.58380100000000001
	.quad	0x402104842fa50939              # double 8.5088209999999993
	.quad	0x40135c7de5082cf5              # double 4.8403239999999998
	.quad	0x4010eec6bce8533b              # double 4.2331799999999999
	.quad	0x3ff8c95182a9930c              # double 1.54915
	.quad	0x4023ffd5454152b1              # double 9.9996740000000006
	.quad	0x402194f15e7c8d19              # double 8.7909039999999994
	.quad	0x3ff13950b955f783              # double 1.0764929999999999
	.quad	0x4017d011d3671ac1              # double 5.9531929999999997
	.quad	0x3fd8805a2d72ffd2              # double 0.38283400000000001
	.quad	0x402036bb7739f341              # double 8.1068990000000003
	.quad	0x401b8c99ae924f22              # double 6.8873049999999996
	.quad	0x4011f927913e8145              # double 4.4933149999999999
	.quad	0x401888ace24bba13              # double 6.1334720000000003
	.quad	0x40112347a5b0ff11              # double 4.2844530000000001
	.quad	0x400bd3986338b47c              # double 3.4783179999999998
	.quad	0x401f2c83ec892ab7              # double 7.7934720000000003
	.quad	0x4022f65d5b24e9c4              # double 9.4811809999999994
	.quad	0x3ff42ff2a172abef              # double 1.261706
	.quad	0x3ff9ccf8d716d2aa              # double 1.6125419999999999
	.quad	0x402285056c508b33              # double 9.2598070000000003
	.quad	0x401005100a393ee6              # double 4.0049440000000001
	.quad	0x40179cda6e75ff61              # double 5.9031770000000003
	.quad	0x40132b4f61672325              # double 4.7922950000000002
	.quad	0x3fe60ca8198f1d3f              # double 0.68904500000000002
	.quad	0x401c6afe1da7b0b4              # double 7.1044850000000004
	.quad	0x401bcba94bbe4474              # double 6.9488880000000002
	.quad	0x4019d9e59f2ba9d2              # double 6.46279
	.quad	0x4018331550ca1cef              # double 6.0498859999999999
	.quad	0x402003b3c81908e6              # double 8.0072310000000009
	.quad	0x4006a130164840e1              # double 2.8287049999999998
	.quad	0x401cf25fa658c4bd              # double 7.2366929999999998
	.quad	0x40191b7e90ff9724              # double 6.2768499999999996
	.quad	0x401e3f3061c79b35              # double 7.5617080000000003
	.quad	0x3ffde7cf1c3265ae              # double 1.869094
	.quad	0x40154dd1e53a81dc              # double 5.325996
	.quad	0x4020c9da37ef5a96              # double 8.3942429999999995
	.quad	0x40102771c970f7ba              # double 4.0385200000000001
	.quad	0x401a4962cfd8f0c7              # double 6.5716659999999996
	.quad	0x400b59ef0f16f438              # double 3.4189129999999999
	.quad	0x400926afcce1c582              # double 3.1438899999999999
	.quad	0x4007a77d523b3637              # double 2.956782
	.quad	0x401eaa7e30878748              # double 7.6664969999999996
	.quad	0x3ff259dece571088              # double 1.146941
	.quad	0x3fea7b97bb730835              # double 0.82758699999999996
	.quad	0x3ff80d6c2efd438d              # double 1.503277
	.quad	0x4019355ac03ff690              # double 6.3021039999999999
	.quad	0x400d912ba16e7a31              # double 3.6958839999999999
	.quad	0x4001eb5fe542e558              # double 2.2399290000000001
	.quad	0x401f0357e670e2c1              # double 7.7532649999999998
	.quad	0x3fed1bb8c32a8c9c              # double 0.90963400000000005
	.quad	0x4005a9f05ea24cc7              # double 2.7079780000000002
	.quad	0x4008009246bf0132              # double 3.0002789999999999
	.quad	0x4023dedaa92e6213              # double 9.9352619999999998
	.quad	0x4003e43914f483cb              # double 2.486437
	.quad	0x3fdb134ce3de614a              # double 0.42305300000000001
	.quad	0x40039ca29845dc83              # double 2.4514819999999999
	.quad	0x401722839042d8c3              # double 5.7837050000000003
	.quad	0x40134c6d1e108c3f              # double 4.8246349999999998
	.quad	0x4022a751efb6dca0              # double 9.3267969999999991
	.quad	0x40124d3996fa82e8              # double 4.5754149999999996
	.quad	0x4015ef3bea91d9b2              # double 5.4836270000000003
	.quad	0x40024c79702e6645              # double 2.2873410000000001
	.quad	0x401a9b584b1ab085              # double 6.6517039999999996
	.quad	0x400d19cc74b838c1              # double 3.637597
	.quad	0x4018893b3a68b19a              # double 6.1340149999999998
	.quad	0x40235b8cda6e75ff              # double 9.6788089999999993
	.quad	0x401c6fa7eb6bf445              # double 7.1090390000000001
	.quad	0x40121ccfaeff5c6c              # double 4.5281359999999999
	.quad	0x3fecfdb2b346130a              # double 0.90596900000000002
	.quad	0x3ffb4c575c0767d3              # double 1.7061379999999999
	.quad	0x401b1f81626b2f23              # double 6.780767
	.quad	0x40214fadd15f02c5              # double 8.6556230000000003
	.quad	0x4011529845dc8323              # double 4.3306589999999998
	.quad	0x401a05d91ab8e8ea              # double 6.5057109999999998
	.quad	0x40211674d1633483              # double 8.5438600000000005
	.quad	0x40227b6ed677707a              # double 9.2410800000000002
	.quad	0x3ffa3d4ae429e0a4              # double 1.639964
	.quad	0x401068023a6ce358              # double 4.1015709999999999
	.quad	0x4010cfcac8e68e3f              # double 4.202922
	.quad	0x4014c053e2d6238e              # double 5.1878200000000003
	.quad	0x4010df68be2f7b18              # double 4.2181730000000002
	.quad	0x401c77b5aea3161a              # double 7.1169039999999999
	.quad	0x3fea09f1f14983d8              # double 0.81371400000000005
	.quad	0x4023317dae81882b              # double 9.5966620000000002
	.quad	0x4020f48cd63cb817              # double 8.4776369999999996
	.quad	0x4021ef3471f79421              # double 8.9671970000000005
	.quad	0x4012e45d41fa7653              # double 4.7230119999999998
	.quad	0x400219884c6a3bde              # double 2.262467
	.quad	0x4020a6cb10342aaa              # double 8.3257680000000001
	.quad	0x400c98a116659d13              # double 3.5745260000000001
	.quad	0x401c94241c3efae8              # double 7.1446690000000004
	.quad	0x4021163b688bda94              # double 8.5434219999999996
	.quad	0x4003f49731098d47              # double 2.4944289999999998
	.quad	0x3ff6c8fc9363f573              # double 1.424069
	.quad	0x4017e9c779a6b50b              # double 5.9782999999999999
	.quad	0x40228c4d22c881e4              # double 9.2740259999999992
	.quad	0x401e5aa92e62131b              # double 7.5885360000000003
	.quad	0x4023920168b5cbff              # double 9.7851669999999995
	.quad	0x3ff0e223e1869835              # double 1.05521
	.quad	0x3fedd5410f94c87a              # double 0.93228200000000006
	.quad	0x401ca6bacf7446fa              # double 7.1628220000000002
	.quad	0x400d8111ada76d98              # double 3.6880220000000001
	.quad	0x401f70f6273929ed              # double 7.8603139999999998
	.quad	0x3ff42fe82517e77d              # double 1.2616959999999999
	.quad	0x40153113404ea4a9              # double 5.2979250000000002
	.quad	0x4015531e3a7daa50              # double 5.3311700000000002
	.quad	0x40049fb2edfe75bc              # double 2.5779779999999999
	.quad	0x40129be9424e5929              # double 4.6522569999999996
	.quad	0x401c49bed30f062d              # double 7.0720169999999998
	.quad	0x401b99641f644956              # double 6.8997960000000003
	.quad	0x3ffb2c8e68e3ef28              # double 1.6983779999999999
	.quad	0x4019d711947cfa27              # double 6.4600280000000003
	.quad	0x40102fc9ff92f2b6              # double 4.0466689999999996
	.quad	0x401fefe2a3cea6c2              # double 7.9842630000000003
	.quad	0x4007d2b4528283d3              # double 2.9778829999999998
	.quad	0x3ffdb67a0f9096bc              # double 1.8570500000000001
	.quad	0x3ff5b72606fac604              # double 1.3572139999999999
	.quad	0x3fff7e07a28bb0a3              # double 1.968269
	.quad	0x4021d56bebe1650a              # double 8.9168389999999995
	.quad	0x401bc23aafff36ac              # double 6.9396769999999997
	.quad	0x400c6cd0fe8ab4fa              # double 3.5531329999999999
	.quad	0x40232a4a6a875d57              # double 9.582599
	.quad	0x401ba74538ef34d7              # double 6.9133500000000003
	.quad	0x4014f3e5321e603d              # double 5.2381789999999997
	.quad	0x40110cf1c3265ade              # double 4.2626410000000003
	.quad	0x40231f329c347e8d              # double 9.5609330000000003
	.quad	0x3ff9f4289118c198              # double 1.622109
	.quad	0x3ff326aa8eb46349              # double 1.1969399999999999
	.quad	0x4022e92817763e4b              # double 9.4553840000000004
	.quad	0x401a3aac53b0813d              # double 6.5572980000000003
	.quad	0x4023958f92af9a8d              # double 9.7921110000000002
	.quad	0x3fd81f2990f301eb              # double 0.37690200000000001
	.quad	0x401e21b823c85c25              # double 7.5329290000000002
	.quad	0x4010d14e7ee9142b              # double 4.2044009999999998
	.quad	0x4021df572de43ed9              # double 8.9362119999999994
	.quad	0x401079f8c21e1d21              # double 4.1191129999999996
	.quad	0x40120f5dbb9cf9a0              # double 4.5150059999999996
	.quad	0x401a864840e1719f              # double 6.6311349999999996
	.quad	0x40059a398201cd60              # double 2.7003050000000002
	.quad	0x40234d7afea3df6e              # double 9.6513290000000005
	.quad	0x401eefd00713f078              # double 7.7341920000000001
	.quad	0x401290a0f4d7add1              # double 4.6412389999999997
	.quad	0x3ff9caba38759253              # double 1.6119939999999999
	.quad	0x402314c35ce18266              # double 9.5405529999999992
	.quad	0x40024aa21a719b4e              # double 2.2864420000000001
	.quad	0x3ff7f28e92d55a3a              # double 1.496718
	.quad	0x401719635610adcd              # double 5.7747929999999998
	.quad	0x3ff013804534bd77              # double 1.004761
	.quad	0x3fb549731098d478              # double 0.083152000000000004
	.quad	0x400db7110e453d21              # double 3.714388
	.quad	0x402112265f0f5a10              # double 8.5354489999999998
	.quad	0x4022cc2bd7f51efb              # double 9.3987719999999992
	.quad	0x4004aff9f87f023f              # double 2.5859260000000002
	.quad	0x40236d3dea465a57              # double 9.7133629999999993
	.quad	0x401d7627bf61aa3f              # double 7.365386
	.quad	0x401e612cf0f9d2bf              # double 7.5948979999999997
	.quad	0x3feeffbefd00713f              # double 0.96871899999999999
	.quad	0x4004ed490e66cb10              # double 2.6158619999999999
	.quad	0x4007510b1feeb2d1              # double 2.9145720000000002
	.quad	0x40203e6666666666              # double 8.1218749999999993
	.quad	0x401f81a6937d1fe6              # double 7.8766119999999997
	.quad	0x40042c4dec1c1d6d              # double 2.521633
	.quad	0x401916d4801f7510              # double 6.2722949999999997
	.quad	0x400cfa038194c016              # double 3.622077
	.quad	0x401c181e8a2ec28b              # double 7.0235539999999999
	.quad	0x400bb90afe60c38f              # double 3.4653529999999999
	.quad	0x3fd80f301eabbcb2              # double 0.37592700000000001
	.quad	0x40225082491afc05              # double 9.1572440000000004
	.quad	0x4016fb3e5753a3ec              # double 5.745355
	.quad	0x400946aa087ca644              # double 3.1595040000000001
	.quad	0x40200403ff69014b              # double 8.0078429999999994
	.quad	0x4013855b89939219              # double 4.8802320000000003
	.quad	0x3ffeac226809d495              # double 1.917025
	.quad	0x4020481beb18116f              # double 8.1408380000000005
	.quad	0x401dcda33bd9cae2              # double 7.4508179999999999
	.quad	0x401bf96a26e54717              # double 6.9935689999999999
	.quad	0x4006ceaa6d267408              # double 2.850911
	.quad	0x3fab9baa1511dffc              # double 0.053921999999999998
	.quad	0x3ff2db1c864883fd              # double 1.1784939999999999
	.quad	0x401100f345069a4e              # double 4.250928
	.quad	0x4012658bc59b8024              # double 4.5991660000000003
	.quad	0x3fbb16c1e364bec6              # double 0.10581599999999999
	.quad	0x3ff7596744b2b778              # double 1.459327
	.quad	0x40132d3e0bd44999              # double 4.7941820000000002
	.quad	0x401f54df8b157258              # double 7.8328839999999999
	.quad	0x40224f5be5d9e40d              # double 9.1549980000000009
	.quad	0x3fce13122b7baecd              # double 0.234957
	.quad	0x400e1e26916440f2              # double 3.7647219999999999
	.quad	0x401d40caa326e115              # double 7.3132729999999997
	.quad	0x40213b14ec204f2b              # double 8.6153940000000002
	.quad	0x3ff39b36bd2b6f1a              # double 1.2253940000000001
	.quad	0x4012272756861e93              # double 4.5382360000000004
	.quad	0x400b93e9a6f826ee              # double 3.4472230000000001
	.quad	0x3ff7f9ee02a77a2d              # double 1.498518
	.quad	0x3fe412a0ec743201              # double 0.627274
	.quad	0x400d944d44567126              # double 3.6974130000000001
	.quad	0x400d11c193b3a68b              # double 3.63367
	.quad	0x400b03cb81733227              # double 3.3768530000000001
	.quad	0x400468438088509c              # double 2.55091
	.quad	0x4011aff8a8f3a9b0              # double 4.4218469999999996
	.quad	0x4009e6cca2db61bb              # double 3.237695
	.quad	0x4022471eafee6fb5              # double 9.1389060000000004
	.quad	0x4020aa8826aa8eb4              # double 8.3330699999999993
	.quad	0x401f291e215336df              # double 7.7901540000000002
	.quad	0x40236706705c896e              # double 9.7012210000000003
	.quad	0x401d79cae21101b0              # double 7.368938
	.quad	0x4019bffb480a5acd              # double 6.4374820000000001
	.quad	0x401633bddfc9ff93              # double 5.550529
	.quad	0x402198a548238540              # double 8.7981359999999995
	.quad	0x3ff7a82f944241c4              # double 1.478561
	.quad	0x3ffb8f52b90a7829              # double 1.722491
	.quad	0x4023b935daad6020              # double 9.861739
	.quad	0x4000d8b934699418              # double 2.1058219999999999
	.quad	0x40160e6b8305d95e              # double 5.5140820000000001
	.quad	0x3fff7dae81882adc              # double 1.9681839999999999
	.quad	0x3ffaa01ffb480a5b              # double 1.664093
	.quad	0x40226c7fbacb4289              # double 9.2119119999999999
	.quad	0x4019744417870542              # double 6.3635409999999997
	.quad	0x40118cb85a4f00ef              # double 4.3874219999999999
	.quad	0x4019c731d2e0e304              # double 6.4445259999999998
	.quad	0x401bc78e5c4eb570              # double 6.9448790000000002
	.quad	0x401e38c9fb6134ce              # double 7.5554579999999998
	.quad	0x4022ceebd4cfd08d              # double 9.4041429999999994
	.quad	0x400c3c1ce6c093d9              # double 3.5293519999999998
	.quad	0x40227275ee99a62f              # double 9.2235560000000003
	.quad	0x4000c0e7bc3c5bd1              # double 2.0941920000000001
	.quad	0x3ff98f2064239607              # double 1.5974429999999999
	.quad	0x4022005cee17a030              # double 9.0007090000000005
	.quad	0x40211e0ac7da1ec5              # double 8.5586760000000002
	.quad	0x4021838e6d15ad10              # double 8.7569459999999992
	.quad	0x4002604fb1183b60              # double 2.2970269999999999
	.quad	0x402355551d68c693              # double 9.666665
	.quad	0x401329c304ccee5b              # double 4.7907830000000002
	.quad	0x40187549f94855da              # double 6.1145399999999999
	.quad	0x4020bb673c4f3ba7              # double 8.3660219999999992
	.quad	0x3fe1c53b0813cab8              # double 0.55532599999999999
	.quad	0x40059930be0ded29              # double 2.6998000000000002
	.quad	0x4010f3a190082060              # double 4.237921
	.quad	0x3ffa6b29e4d5d80e              # double 1.6511629999999999
	.quad	0x401e9583e8576cce              # double 7.6460109999999997
	.quad	0x3ff163400b88ca3e              # double 1.0867309999999999
	.quad	0x40214cf7878b7a1c              # double 8.6503259999999997
	.quad	0x4022bb14ec204f2b              # double 9.3653940000000002
	.quad	0x3ff9783dff3f0fe0              # double 1.5918559999999999
	.quad	0x4005f23ee1bd1eda              # double 2.7432840000000001
	.quad	0x3faca2339c0ebee0              # double 0.055925000000000002
	.quad	0x4022c67924af0bf2              # double 9.3876430000000006
	.quad	0x400a4f4cf4a558ea              # double 3.2887209999999998
	.quad	0x400871832fcac8e7              # double 3.0554260000000002
	.quad	0x4020c16e9bbf0dc7              # double 8.3777969999999993
	.quad	0x400f42e2328f9f45              # double 3.9076580000000001
	.quad	0x40061af9ebe9c886              # double 2.763172
	.quad	0x4001c322af577100              # double 2.2202809999999999
	.quad	0x3ff2a38433d6c722              # double 1.1649210000000001
	.quad	0x40172dce7cd03537              # double 5.7947329999999999
	.quad	0x401e885b5b70691f              # double 7.6331610000000003
	.quad	0x4004adf9bdc69f8c              # double 2.5849489999999999
	.quad	0x401ba8d6d3b6cbda              # double 6.9148820000000004
	.quad	0x3ff99b0468448cf8              # double 1.600346
	.quad	0x401efed9dfdac68b              # double 7.7488780000000003
	.quad	0x40204ca1f080303c              # double 8.1496729999999999
	.quad	0x40236d9a0f0a5eff              # double 9.7140660000000007
	.quad	0x4005225d8d79d0a6              # double 2.6417799999999998
	.quad	0x4018ea68f4b61fe2              # double 6.2289159999999999
	.quad	0x4009db8130164841              # double 3.2321800000000001
	.quad	0x4018521101b00368              # double 6.0801429999999996
	.quad	0x4010a0aaeafab53d              # double 4.1569019999999997
	.quad	0x3fd9bd0e12e83a11              # double 0.40216400000000002
	.quad	0x4020ddf5275ee99a              # double 8.4335109999999993
	.quad	0x4003e0cd855970b5              # double 2.4847670000000002
	.quad	0x40093d04a2fcefaa              # double 3.1547939999999999
	.quad	0x40096dea897635e7              # double 3.1786699999999999
	.quad	0x401574102ff8ec10              # double 5.3633430000000004
	.quad	0x40118d28d002e233              # double 4.3878510000000004
	.quad	0x401d29c4da9003ef              # double 7.2907900000000003
	.quad	0x4021bd976ff3ade2              # double 8.8702959999999997
	.quad	0x3ff19f06f6944674              # double 1.1013250000000001
	.quad	0x3ff2c77143393ab4              # double 1.173692
	.quad	0x401dc3dc8b86b160              # double 7.4412710000000004
	.quad	0x3febf5d56f32bdc2              # double 0.87375899999999995
	.quad	0x401724013ec460ee              # double 5.7851610000000004
	.quad	0x401900a2014727dd              # double 6.2506180000000002
	.quad	0x4004783d790752db              # double 2.5587110000000002
	.quad	0x4020eeaca7935760              # double 8.4661609999999996
	.quad	0x40182d549731098d              # double 6.0442679999999998
	.quad	0x400a809b30728e93              # double 3.3127960000000001
	.quad	0x4023b634fc610f0f              # double 9.8558730000000007
	.quad	0x400e08b9fdbd2fa1              # double 3.7542610000000001
	.quad	0x40214cb51372a38c              # double 8.6498190000000008
	.quad	0x4021e72e8c0485a1              # double 8.9515270000000005
	.quad	0x4008818b502ababf              # double 3.0632540000000001
	.quad	0x4009dbafd976ff3b              # double 3.2322690000000001
	.quad	0x400dcc6de76427c8              # double 3.7248190000000001
	.quad	0x40036c07aaef2c73              # double 2.4277489999999999
	.quad	0x4000ff9f87f023ea              # double 2.124816
	.quad	0x4018dbac710cb296              # double 6.2145250000000001
	.quad	0x4020c224cc6822ff              # double 8.3791869999999999
	.quad	0x3fea7c08fa7a8501              # double 0.82764099999999996
	.quad	0x400101511dffc548              # double 2.1256430000000002
	.quad	0x4012cf13059641f6              # double 4.7022209999999998
	.quad	0x4014314e7ee9142b              # double 5.0481509999999998
	.quad	0x402089fc2a8869c6              # double 8.2695019999999992
	.quad	0x3fd17b56b8737974              # double 0.27315299999999998
	.quad	0x3fff28a3f8982cb2              # double 1.947422
	.quad	0x401e1ea704bc2763              # double 7.5299339999999999
	.quad	0x4017984e831ad213              # double 5.8987369999999997
	.quad	0x400ad210385c67e0              # double 3.3525700000000001
	.quad	0x401425c67dfe32a0              # double 5.0368899999999996
	.quad	0x3fe46a63b688bda9              # double 0.63798699999999997
	.quad	0x401fb56473471f79              # double 7.9271409999999997
	.quad	0x4022acc532a497fa              # double 9.3374419999999994
	.quad	0x400a83efae7924af              # double 3.314422
	.quad	0x40152118c197e564              # double 5.2823209999999996
	.quad	0x400637cbb3c81909              # double 2.777244
	.quad	0x4010a61cbccf28c8              # double 4.1622190000000003
	.quad	0x4007ad2135daad60              # double 2.9595359999999999
	.quad	0x4012cc2c5e2cdc01              # double 4.6993879999999999
	.quad	0x401f764cb5bb3850              # double 7.8655270000000002
	.quad	0x4015e4ab1d4f9c20              # double 5.4733090000000004
	.quad	0x40225395a294141f              # double 9.1632510000000007
	.quad	0x40186b6177ea1c69              # double 6.1048640000000001
	.quad	0x401eb91105e1c151              # double 7.6807290000000003
	.quad	0x40184e0828c36da8              # double 6.0762029999999996
	.quad	0x400c3454152b0a70              # double 3.5255510000000001
	.quad	0x3fe6264c2f837b4a              # double 0.69217499999999998
	.quad	0x4022987182235b4f              # double 9.2977410000000003
	.quad	0x3fcd0c564f97edc8              # double 0.226939
	.quad	0x3ffda008e9b38d61              # double 1.8515710000000001
	.quad	0x40178143bf727137              # double 5.8762350000000003
	.quad	0x4013805c896dd26b              # double 4.8753529999999996
	.quad	0x4008b8b71b8aa002              # double 3.0901930000000002
	.quad	0x4006e9595feda661              # double 2.8639399999999999
	.quad	0x40150c6bce8533b1              # double 5.26213
	.quad	0x40165aec8d5c7475              # double 5.5887929999999999
	.quad	0x400a5b9bed30f063              # double 3.2947310000000001
	.quad	0x3ff06c1e364bec68              # double 1.0263960000000001
	.quad	0x400f79253543aeab              # double 3.9341529999999998
	.quad	0x400b6675147f1306              # double 3.4250280000000002
	.quad	0x402128476f2a5a47              # double 8.5786700000000007
	.quad	0x4012dd81adea8976              # double 4.7163149999999998
	.quad	0x4015cbdc26dce39b              # double 5.4490819999999998
	.quad	0x4010f4c33b539325              # double 4.239026
	.quad	0x3ffd4c6822ff0889              # double 1.8311539999999999
	.quad	0x3fd6d3dc8b86b160              # double 0.35668100000000003
	.quad	0x40127290eed02cd4              # double 4.6118810000000003
	.quad	0x401bd7075b3e1438              # double 6.9599890000000002
	.quad	0x4010f35158b827fa              # double 4.2376149999999999
	.quad	0x3ffc9f5f0b28522f              # double 1.7889090000000001
	.quad	0x40110eadd590c0ad              # double 4.264335
	.quad	0x3febb532e7b3d8e0              # double 0.86586899999999999
	.quad	0x3ff408aefb2aae29              # double 1.2521199999999999
	.quad	0x4004368b5cbff477              # double 2.5266329999999999
	.quad	0x402200a65492ff4c              # double 9.0012690000000006
	.quad	0x40028e58a32f4491              # double 2.3195049999999999
	.quad	0x40197e52deca2553              # double 6.3733630000000003
	.quad	0x400acc14c660a201              # double 3.3496489999999999
	.quad	0x4005d93e5fb71fbc              # double 2.7310759999999998
	.quad	0x3fec38b8ae31d713              # double 0.88192400000000004
	.quad	0x40200d7470eb24a7              # double 8.0262790000000006
	.quad	0x4021633d4ae429e1              # double 8.6938270000000006
	.quad	0x3fe549363f572de4              # double 0.66518699999999997
	.quad	0x3ff4f5568e820e63              # double 1.3098970000000001
	.quad	0x4021e4cf0739b025              # double 8.9468920000000001
	.quad	0x4019b8f08461f9f0              # double 6.4306049999999999
	.quad	0x401e31ae2da554b9              # double 7.5485160000000002
	.quad	0x402121b56323bbc7              # double 8.5658370000000001
	.quad	0x4021447dc37a3db4              # double 8.6337720000000004
	.quad	0x4022d2f709b738e7              # double 9.4120410000000003
	.quad	0x3ff8210adcd2d44e              # double 1.508067
	.quad	0x3fea5d206c8711d8              # double 0.82386800000000004
	.quad	0x4010ce3476295209              # double 4.2013720000000001
	.quad	0x3ffc84d76ab58080              # double 1.782432
	.quad	0x3fd465c2d2780779              # double 0.31871100000000002
	.quad	0x40106728a6117721              # double 4.1007410000000002
	.quad	0x401f7baa9b499d02              # double 7.870768
	.quad	0x401d3a6612839043              # double 7.3070300000000001
	.quad	0x401639ff92f2b66b              # double 5.5566389999999997
	.quad	0x4020ac8beb5b2d4d              # double 8.3370049999999996
	.quad	0x4013cdd6e04c0592              # double 4.9510149999999999
	.quad	0x4017eec41dd1a21f              # double 5.9831700000000003
	.quad	0x4021de162f166e01              # double 8.9337630000000008
	.quad	0x4022a94b167ec786              # double 9.3306509999999996
	.quad	0x401497620ee8d10f              # double 5.1478349999999997
	.quad	0x400bdeb4202d9cf1              # double 3.4837419999999999
	.quad	0x401196a550870111              # double 4.3971150000000003
	.quad	0x3fd0dfa871a3b14b              # double 0.26365100000000002
	.quad	0x4014054d61b2a27f              # double 5.0051779999999999
	.quad	0x4023ee3f572de43f              # double 9.9653270000000002
	.quad	0x4011a19b90ea9e6f              # double 4.4078200000000001
	.quad	0x400a85892684cf07              # double 3.3152029999999999
	.quad	0x4005872085b18549              # double 2.6909800000000001
	.quad	0x401d66f9b994e1a4              # double 7.350562
	.quad	0x40187b242070b8d0              # double 6.1202550000000002
	.quad	0x4021194ad362e903              # double 8.5493989999999993
	.quad	0x40060db6a1e81cb4              # double 2.7566959999999998
	.quad	0x4003d7b2031ceaf2              # double 2.4803199999999999
	.quad	0x40108301eabbcb1d              # double 4.1279370000000002
	.quad	0x4020d57dbf487fcc              # double 8.4169750000000007
	.quad	0x401ef198288051ca              # double 7.735932
	.quad	0x400019780baa582e              # double 2.0124360000000001
	.quad	0x4004fba450acc0be              # double 2.6228720000000001
	.quad	0x40195bdc26dce39b              # double 6.3397069999999998
	.quad	0x401802c386d2ed78              # double 6.0026989999999998
	.quad	0x4013e064a9cdc444              # double 4.9691340000000004
	.quad	0x40200ce8101f31f4              # double 8.0252079999999992
	.quad	0x40103cb923a29c78              # double 4.0593000000000004
	.quad	0x40019393ab430f49              # double 2.1970589999999999
	.quad	0x4022fd0678c0053e              # double 9.4941899999999997
	.quad	0x401f4dcfcc5b8dc5              # double 7.8259879999999997
	.quad	0x4019d361565c2d28              # double 6.4564260000000004
	.quad	0x3feef48c2e770bd0              # double 0.96735199999999999
	.quad	0x3fb988d2a1f8e3ac              # double 0.099743999999999999
	.quad	0x40184751ce28ed5f              # double 6.0696479999999999
	.quad	0x402177df3b645a1d              # double 8.7341250000000006
	.quad	0x40173c5436b8f9b1              # double 5.8089149999999998
	.quad	0x3ff5d8201cd5f99c              # double 1.365265
	.quad	0x3fd74fb1183b6028              # double 0.36423899999999998
	.quad	0x402366675147f130              # double 9.7000069999999994
	.quad	0x40047c03bc4d22c9              # double 2.5605540000000002
	.quad	0x3ff46b69db65ecc4              # double 1.276224
	.quad	0x4020d35daad60200              # double 8.4128240000000005
	.quad	0x401c795c42203600              # double 7.1185159999999996
	.quad	0x40056b3bb83cf2d0              # double 2.6773600000000002
	.quad	0x3fe47da61e0c5a81              # double 0.64033799999999996
	.quad	0x3fcb1c2a02320968              # double 0.21179700000000001
	.quad	0x4011bae07e5a78f2              # double 4.4324969999999997
	.quad	0x3fe6fcb70ac3a861              # double 0.71834900000000002
	.quad	0x401a90b673c4f3ba              # double 6.6413209999999996
	.quad	0x40142cec84f8f8a5              # double 5.0438710000000002
	.quad	0x40135a4ca4f440af              # double 4.8381829999999999
	.quad	0x4009a4007570c565              # double 3.205079
	.quad	0x40096027525460aa              # double 3.1719499999999998
	.quad	0x4020de26b2f23034              # double 8.4338890000000006
	.quad	0x400cdcbf6e3f78bc              # double 3.6077870000000001
	.quad	0x401e8fefbf401c50              # double 7.6405630000000002
	.quad	0x4007f3ea2d2fe3f3              # double 2.9940989999999998
	.quad	0x40232903c8e25c81              # double 9.5801069999999999
	.quad	0x40169eee52589268              # double 5.6552059999999997
	.quad	0x40225cbe835dedf2              # double 9.1811410000000002
	.quad	0x4010fc743201040c              # double 4.246537
	.quad	0x4014c21c044284e0              # double 5.1895600000000002
	.quad	0x40115cb4289118c2              # double 4.3405310000000004
	.quad	0x4021d90afe60c38f              # double 8.9239119999999996
	.quad	0x4011ebba98eda22f              # double 4.4802039999999996
	.quad	0x400d8d9a52263d81              # double 3.6941419999999998
	.quad	0x401ee57c0b135979              # double 7.7241059999999999
	.quad	0x401705eedcc20d56              # double 5.7557939999999999
	.quad	0x400a3e75360d0247              # double 3.280497
	.quad	0x4022e2602c9081c3              # double 9.4421400000000001
	.quad	0x4002c30446b69db6              # double 2.3452229999999998
	.quad	0x402007850df15a4b              # double 8.0146870000000003
	.quad	0x40221a2014727dcc              # double 9.0510260000000002
	.quad	0x4010e54c985f06f7              # double 4.2239250000000004
	.quad	0x4009c163779e9d0f              # double 3.2194280000000002
	.quad	0x40132a858793dd98              # double 4.791525
	.quad	0x400a23f4666ec9e2              # double 3.2675559999999999
	.quad	0x3fd04806290eed03              # double 0.25439600000000001
	.quad	0x40159d5454152b0a              # double 5.4036419999999996
	.quad	0x400e220578e5c4eb              # double 3.7666119999999998
	.quad	0x4022d46994185059              # double 9.4148680000000002
	.quad	0x4020933e5753a3ec              # double 8.2875849999999999
	.quad	0x3ff7413879c4113c              # double 1.4534229999999999
	.quad	0x40137f166e008e9b              # double 4.8741089999999998
	.quad	0x40183fb2edfe75bc              # double 6.0622059999999998
	.quad	0x3ff560bb2bba98ee              # double 1.3361160000000001
	.quad	0x40001ed20296b335              # double 2.0150489999999999
	.quad	0x400398d36b4c7f35              # double 2.4496220000000002
	.quad	0x4016f03e20ccff22              # double 5.7346120000000003
	.quad	0x3fdf734b51372a39              # double 0.49141200000000002
	.quad	0x4011b0adcd2d44dd              # double 4.4225380000000003
	.quad	0x4023a6820e629952              # double 9.8252109999999995
	.quad	0x4010bb57c4e2f380              # double 4.1829520000000002
	.quad	0x4019f0df15a4acf3              # double 6.4852259999999999
	.quad	0x401cdef1fddebd90              # double 7.2177199999999999
	.quad	0x3fe9a92a30553261              # double 0.80189999999999995
	.quad	0x4014c3dab5c39bcc              # double 5.1912640000000003
	.quad	0x3fe00eda22f6a50d              # double 0.50181299999999995
	.quad	0x401a9566490a350d              # double 6.6458979999999999
	.quad	0x401ec4eebf65dbfd              # double 7.692317
	.quad	0x3fff38db4890928a              # double 1.951381
	.quad	0x40211c2f405f6ba0              # double 8.5550479999999993
	.quad	0x4020c314013ec461              # double 8.3810120000000001
	.quad	0x3fea8487b99d4520              # double 0.82867800000000002
	.quad	0x4021a1f2fdb8fde3              # double 8.8163070000000001
	.quad	0x40227a2ee41919ac              # double 9.2386389999999991
	.quad	0x3fe76088d6d3b6cc              # double 0.73053400000000002
	.quad	0x401b4f440af1cb8a              # double 6.8274080000000001
	.quad	0x4023c2773e24febd              # double 9.8798159999999999
	.quad	0x401362189bd8383b              # double 4.8457970000000001
	.quad	0x4023c6d549731099              # double 9.8883460000000003
	.quad	0x401f6f77f27fe4bd              # double 7.8588560000000002
	.quad	0x400b7905c0336156              # double 3.4340929999999998
	.quad	0x402336644d877250              # double 9.6062340000000006
	.quad	0x4020bea78af3e469              # double 8.3723720000000004
	.quad	0x40235e748e475600              # double 9.6844830000000001
	.quad	0x400e4fca42aed139              # double 3.7889599999999999
	.quad	0x401ece696a26e547              # double 7.7015739999999999
	.quad	0x401c6e6256366d7a              # double 7.1077969999999997
	.quad	0x3fa678c0053e2d62              # double 0.043889999999999998
	.quad	0x40018ae9680e0653              # double 2.192828
	.quad	0x400a16db0dd82fd7              # double 3.2611599999999998
	.quad	0x400b3e40c8472c0e              # double 3.4053969999999998
	.quad	0x400da061847f5621              # double 3.7033109999999998
	.quad	0x4022ba1a0cf1800a              # double 9.3634799999999991
	.quad	0x4008a7ecfe9b7bf2              # double 3.081995
	.quad	0x3ff9634dad31fcd2              # double 1.5867439999999999
	.quad	0x4005a231832fcac9              # double 2.704196
	.quad	0x40119418d6909aed              # double 4.3946259999999997
	.quad	0x3ff2ac7a7c9de050              # double 1.167109
	.quad	0x4010574bc6a7ef9e              # double 4.0852500000000003
	.quad	0x4014f68e820e6299              # double 5.2407779999999997
	.quad	0x3ffd897a67a52ac7              # double 1.8460639999999999
	.quad	0x40095327aa68f4b6              # double 3.1656029999999999
	.quad	0x401e1423d9231c65              # double 7.5196680000000002
	.quad	0x400409a1b9f98b72              # double 2.5047030000000001
	.quad	0x401609aa60913a50              # double 5.5094390000000004
	.quad	0x400d9c6eb0b7c350              # double 3.7013829999999999
	.quad	0x4021eb0b9dc2f406              # double 8.9590730000000001
	.quad	0x4021fbb18dac258d              # double 8.9915889999999994
	.quad	0x3fea0a19c9d5a188              # double 0.81373300000000004
	.quad	0x3fe499b4dcebfec1              # double 0.64376299999999997
	.quad	0x3ff233e89a88ace2              # double 1.1376729999999999
	.quad	0x4022fd96638433d7              # double 9.4952880000000003
	.quad	0x3fe1c011d3671ac1              # double 0.55469599999999997
	.quad	0x402167262888b546              # double 8.7014630000000004
	.quad	0x40157b48d3ae685e              # double 5.3703950000000003
	.quad	0x401da4202d9cf13d              # double 7.4102790000000001
	.quad	0x4013cf3d7d3910c3              # double 4.9523830000000002
	.quad	0x40004e0d23d4f15e              # double 2.0381109999999998
	.quad	0x3fe1ef19934efcbd              # double 0.56043699999999996
	.quad	0x3feb26e5471715c6              # double 0.84849799999999997
	.quad	0x401d03343fa2ad3f              # double 7.2531290000000004
	.quad	0x40189409e55c0fcb              # double 6.1445689999999997
	.quad	0x4018cf2389720429              # double 6.2022839999999997
	.quad	0x4009add2f1a9fbe7              # double 3.2098749999999998
	.quad	0x4016b50efdc9c4db              # double 5.6768150000000004
	.quad	0x4019013f077ccc03              # double 6.2512169999999996
	.quad	0x4023f15e39713ad6              # double 9.9714220000000005
	.quad	0x401cc331a08bfc22              # double 7.1906189999999999
	.quad	0x3fd3ef1348b22079              # double 0.31146699999999999
	.quad	0x401c2028e4fb97bb              # double 7.0314059999999996
	.quad	0x4008efa69be09bb7              # double 3.1170170000000001
	.quad	0x40234f45e0b4e11e              # double 9.6548300000000005
	.quad	0x3ff12ea0fd3b29a2              # double 1.0738840000000001
	.quad	0x4020ea4f227d028a              # double 8.4576349999999998
	.quad	0x401ddd462c343b71              # double 7.4660880000000001
	.quad	0x400e493d102bc72e              # double 3.7857609999999999
	.quad	0x4021497dd00f776c              # double 8.6435379999999994
	.quad	0x3feda9fbe76c8b44              # double 0.92700000000000004
	.quad	0x401136e008e9b38d              # double 4.3035889999999997
	.quad	0x3ff9715e7c8d1959              # double 1.5901780000000001
	.quad	0x4009da3b14a90471              # double 3.2315580000000002
	.quad	0x3ff2c6583e8576cd              # double 1.173424
	.quad	0x40139ac9afe1da7b              # double 4.90116
	.quad	0x402046eeb702602d              # double 8.1385400000000008
	.quad	0x4021292ee84ad795              # double 8.5804360000000006
	.quad	0x400c8a41a261bf38              # double 3.5675080000000001
	.quad	0x400abfcc9ea9a3d3              # double 3.3436520000000001
	.quad	0x4021569ea1405708              # double 8.6691789999999997
	.quad	0x401381bb05faebc4              # double 4.87669
	.quad	0x401a8b6bf444e0db              # double 6.6361540000000003
	.quad	0x401eeb0ea18372e7              # double 7.7295480000000003
	.quad	0x40037accd530489d              # double 2.4349609999999999
	.quad	0x401ec414e7ee9143              # double 7.6914860000000002
	.quad	0x4013405319828805              # double 4.8128169999999999
	.quad	0x3fd690afe60c38f3              # double 0.35258099999999998
	.quad	0x401bfa7e30878748              # double 6.9946219999999997
	.quad	0x401500df9bdc69f9              # double 5.2508530000000002
	.quad	0x4017f5bea0ba1f4b              # double 5.9899849999999999
	.quad	0x4005bc044284dfce              # double 2.7168049999999999
	.quad	0x401849e6256366d8              # double 6.0721670000000003
	.quad	0x401c3db6a1e81cb4              # double 7.0602669999999996
	.quad	0x40206c528283d35f              # double 8.2115670000000005
	.quad	0x4020c92d77318fc5              # double 8.392925
	.quad	0x401b51cde5d18091              # double 6.8298870000000003
	.quad	0x401b5e4c942d490e              # double 6.8420889999999996
	.quad	0x401c4c7368ad6883              # double 7.0746589999999996
	.quad	0x401bb3076c050bd8              # double 6.9248329999999996
	.quad	0x400cf08e581cf788              # double 3.6174590000000002
	.quad	0x4022649ba5e353f8              # double 9.1965000000000003
	.quad	0x401216eac8605682              # double 4.5223800000000001
	.quad	0x40233d3bafd976ff              # double 9.6195959999999995
	.quad	0x40227b20535c9e67              # double 9.2404810000000008
	.quad	0x400454c33b539325              # double 2.541388
	.quad	0x4009d125dd095af3              # double 3.2271230000000002
	.quad	0x4023a4c55432873c              # double 9.8218180000000003
	.quad	0x400b7a97e132b55f              # double 3.43486
	.quad	0x402336a012599ed8              # double 9.6066900000000003
	.quad	0x401cf88a47ecfe9b              # double 7.2427149999999996
	.quad	0x4006277e5eaab042              # double 2.7692839999999999
	.quad	0x4002709e98dcdb38              # double 2.3049900000000001
	.quad	0x3ffaddeefe4ffc98              # double 1.6791830000000001
	.quad	0x401706a550870111              # double 5.7564900000000003
	.quad	0x4000e99d0203e63f              # double 2.1140690000000002
	.quad	0x4022e3ecaab8a5ce              # double 9.4451649999999994
	.quad	0x4012ce79ee02a77a              # double 4.7016369999999998
	.quad	0x40225d7cd466f502              # double 9.1825930000000007
	.quad	0x402169c8c9320d99              # double 8.7066099999999995
	.quad	0x40151b0bbf50e347              # double 5.2764119999999997
	.quad	0x401d08dcdb37c99b              # double 7.2586550000000001
	.quad	0x4016c80064a9cdc4              # double 5.6953139999999998
	.quad	0x3ff8af6b5d462c34              # double 1.5428269999999999
	.quad	0x40065d0c80410300              # double 2.7954340000000002
	.quad	0x3fe74a7503b81b65              # double 0.72783900000000001
	.quad	0x40029ddf43c7d5ed              # double 2.327086
	.quad	0x401c0bb9496249a1              # double 7.0114489999999998
	.quad	0x400be90364388ebd              # double 3.4887760000000001
	.quad	0x3ffb9ed288ce703b              # double 1.726275
	.quad	0x40221d21bc126a66              # double 9.0568980000000003
	.quad	0x400e555475a31a4c              # double 3.7916650000000001
	.quad	0x3ff5b4eebf65dbfd              # double 1.356673
	.quad	0x40206dcc20d5629e              # double 8.2144480000000009
	.quad	0x401d176a2f48c2e7              # double 7.2728659999999996
	.quad	0x401511950331e3a8              # double 5.2671700000000001
	.quad	0x3fe1093964a59c06              # double 0.53237599999999996
	.quad	0x40238d199bb2788e              # double 9.7755860000000006
	.quad	0x401095b6c3760bf6              # double 4.1462050000000001
	.quad	0x4023281b43526528              # double 9.5783330000000006
	.quad	0x40051b4784230fd0              # double 2.6383200000000002
	.quad	0x4008d0dc768dfbd7              # double 3.1019830000000002
	.quad	0x4022191361dc93ea              # double 9.0489759999999997
	.quad	0x3fe59309c7ffde72              # double 0.67419899999999999
	.quad	0x4012ef3775b81301              # double 4.7336099999999997
	.quad	0x3fe54ce3de6149c7              # double 0.66563600000000001
	.quad	0x400359988d2a1f8e              # double 2.4187479999999999
	.quad	0x401a5d1fe64f54d2              # double 6.5909420000000001
	.quad	0x3fe92ccf6be37de9              # double 0.78671999999999997
	.quad	0x401047d523b3636f              # double 4.0701489999999998
	.quad	0x4001820ddc619546              # double 2.1885029999999999
	.quad	0x401091a5ca29845e              # double 4.1422340000000002
	.quad	0x3fe9e468cac4b4d0              # double 0.80913199999999996
	.quad	0x40211252ce032db2              # double 8.5357880000000002
	.quad	0x4007bb19e731d2e1              # double 2.9663580000000001
	.quad	0x3ff32c00da1a9329              # double 1.1982429999999999
	.quad	0x3fd8dc4c9c90c4df              # double 0.38844600000000001
	.quad	0x400599c7bcc2938e              # double 2.700088
	.quad	0x4013737a3db3bfb6              # double 4.8627710000000004
	.quad	0x40063dffc5479d4e              # double 2.7802730000000002
	.quad	0x40229df612407464              # double 9.3085179999999994
	.quad	0x3fcea6c1a048e044              # double 0.23946400000000001
	.quad	0x4020c8ca8198f1d4              # double 8.3921700000000001
	.quad	0x401d2aeb80ecfa6a              # double 7.2919140000000002
	.quad	0x400fe7d34df04ddb              # double 3.9881959999999999
	.quad	0x401a8acd5b6805a3              # double 6.6355490000000001
	.quad	0x400e9c792d1287c2              # double 3.826403
	.quad	0x40129378ee286727              # double 4.6440159999999997
	.quad	0x402025fb0d51f81a              # double 8.0741809999999994
	.quad	0x3fe8cb966be7afa7              # double 0.77485199999999999
	.quad	0x401f1c579f234656              # double 7.7776779999999999
	.quad	0x40165ea4228997c4              # double 5.5924230000000001
	.quad	0x400bc79463cfb331              # double 3.472451
	.quad	0x4010f5bd512ec6bd              # double 4.2399800000000001
	.quad	0x401a5d70a3d70a3d              # double 6.5912499999999996
	.quad	0x400b2c197e564734              # double 3.3965329999999998
	.quad	0x4020782a9930be0e              # double 8.2347000000000001
	.quad	0x4013d8af81626b2f              # double 4.9616069999999999
	.quad	0x3ff6dd9d3458cd21              # double 1.4291050000000001
	.quad	0x4020617acc4ef88c              # double 8.1903900000000007
	.quad	0x40125157689ca18c              # double 4.5794350000000001
	.quad	0x3ffa9f969e3c9689              # double 1.6639619999999999
	.quad	0x3ffc785942917508              # double 1.779382
	.quad	0x4021fd7a13c254a4              # double 8.9950720000000004
	.quad	0x400c6dbad3a604e2              # double 3.553579
	.quad	0x40024841ede1198b              # double 2.285282
	.quad	0x4011da9d627bf61b              # double 4.4634910000000003
	.quad	0x401fc5b1c8648840              # double 7.9430610000000001
	.quad	0x401179988d2a1f8e              # double 4.3687459999999998
	.quad	0x400f858f7121ab4b              # double 3.9402149999999998
	.quad	0x4015ea4c1ebc83a9              # double 5.4788059999999996
	.quad	0x4008bcfede97d06c              # double 3.0922830000000001
	.quad	0x401878fa376922d9              # double 6.1181419999999997
	.quad	0x4020897a89331a09              # double 8.2685130000000004
	.quad	0x402198fcb4f1e4b4              # double 8.7988029999999994
	.quad	0x4021f5a554b8bef9              # double 8.9797770000000003
	.quad	0x401fce4de3b8a19d              # double 7.9514690000000003
	.quad	0x402012c493426784              # double 8.0366560000000006
	.quad	0x4016d17b95a29414              # double 5.7045729999999999
	.quad	0x401489131ec0b567              # double 5.1338619999999997
	.quad	0x401c909dcf893faf              # double 7.1412269999999998
	.quad	0x402083d05af6c69b              # double 8.2574489999999994
	.quad	0x402070a7c5ac471b              # double 8.2200299999999995
	.quad	0x401a99b38d60a633              # double 6.650099
	.quad	0x4016eb98c7e28241              # double 5.7300750000000003
	.quad	0x40136e1ac57e23f2              # double 4.8575239999999997
	.quad	0x401e9ec0b567557a              # double 7.6550320000000003
	.quad	0x40126cf63800218e              # double 4.6064080000000001
	.quad	0x401d842e12620254              # double 7.3790820000000004
	.quad	0x3fcdcd898b2e9ccb              # double 0.23283499999999999
	.quad	0x4021f9fa333764f1              # double 8.9882369999999998
	.quad	0x400278c8eef1bac3              # double 2.3089770000000001
	.quad	0x4020fb5158b827fa              # double 8.4908549999999998
	.quad	0x4010d3fc86cebbba              # double 4.2070179999999997
	.quad	0x401bcdc981beb181              # double 6.9509639999999999
	.quad	0x40066f240fa9c12f              # double 2.804268
	.quad	0x401a707075b3e143              # double 6.6098039999999996
	.quad	0x400635da272862f6              # double 2.7762950000000002
	.quad	0x401f1cbccf28c79f              # double 7.7780639999999996
	.quad	0x4020e75f0b28522f              # double 8.4518970000000007
	.quad	0x401c89628cbd1245              # double 7.1341650000000003
	.quad	0x3fdb5c0fcb4f1e4b              # double 0.42749399999999999
	.quad	0x401661ed5ae1cde6              # double 5.5956320000000002
	.quad	0x4020ead362e90364              # double 8.4586439999999996
	.quad	0x40028eda22f6a50d              # double 2.3197519999999998
	.quad	0x40231d3953dea466              # double 9.5570780000000006
	.quad	0x400873a57eaa2a0b              # double 3.0564680000000002
	.quad	0x4011270867ad8e43              # double 4.2881179999999999
	.quad	0x3fff533e35c5b4ab              # double 1.9578230000000001
	.quad	0x4014fdd22856605f              # double 5.2478720000000001
	.quad	0x401601e4b44a1f08              # double 5.501849
	.quad	0x4020349ea9a3d2d8              # double 8.1027729999999991
	.quad	0x3ffca8997c3d6840              # double 1.7911619999999999
	.quad	0x401e27e175d13d75              # double 7.5389460000000001
	.quad	0x400f006317268d33              # double 3.8751890000000002
	.quad	0x40221b543aeab799              # double 9.0533769999999993
	.quad	0x40073c6da4484945              # double 2.904506
	.quad	0x40152c6195464dc2              # double 5.2933409999999999
	.quad	0x40069fc4c165907e              # double 2.8280120000000002
	.quad	0x4021304b3c3e74b0              # double 8.5943240000000003
	.quad	0x401827b1c0010c6f              # double 6.0387639999999996
	.quad	0x40236d7cf5f4e443              # double 9.7138439999999999
	.quad	0x40215a7ce0fc2eba              # double 8.6767339999999997
	.quad	0x4020bc09e55c0fcb              # double 8.3672629999999995
	.quad	0x3fefafcefaa4766c              # double 0.99021099999999995
	.quad	0x4021905a708ede55              # double 8.7819400000000005
	.quad	0x4017c6a2f48c2e77              # double 5.943981
	.quad	0x400b536933a0407d              # double 3.4157280000000001
	.quad	0x3ffce01de2691644              # double 1.804716
	.quad	0x40231195464dc22b              # double 9.5343420000000005
	.quad	0x401892c669057d18              # double 6.1433350000000004
	.quad	0x4018efd47bedb728              # double 6.2342089999999999
	.quad	0x401ebfff36ac6477              # double 7.6874969999999995
	.quad	0x4008191819d2391d              # double 3.0122529999999998
	.quad	0x4022560e30446b6a              # double 9.1680770000000003
	.quad	0x3ff786338b47c73f              # double 1.470264
	.quad	0x3fe10a7610279570              # double 0.53252699999999997
	.quad	0x4004275cd0bb6ed6              # double 2.5192199999999998
	.quad	0x40197db61bb05faf              # double 6.3727650000000002
	.quad	0x3ff58562e09fe868              # double 1.345065
	.quad	0x4015b9246bf01323              # double 5.430803
	.quad	0x4018e06466b1e5c1              # double 6.2191330000000002
	.quad	0x4006d49491f2dc2b              # double 2.853799
	.quad	0x400c597785729b28              # double 3.543685
	.quad	0x402253e39f77292c              # double 9.1638459999999994
	.quad	0x40139ebaf102363b              # double 4.9050099999999999
	.quad	0x3ff3a0168b5cbff4              # double 1.2265839999999999
	.quad	0x3ff5a3033a4723ab              # double 1.352298
	.quad	0x4022b424c404a72f              # double 9.3518430000000006
	.quad	0x4018f75ff609dcf9              # double 6.2415770000000004
	.quad	0x3fec594d0dcfcc5c              # double 0.88590100000000004
	.quad	0x4023e2a79bbadc0a              # double 9.9426850000000009
	.quad	0x4015d6195464dc23              # double 5.4590810000000003
	.quad	0x401deb762d83c6c9              # double 7.4799429999999996
	.quad	0x40158087442c7fbb              # double 5.3755160000000002
	.quad	0x401903bbc6eb0b7c              # double 6.2536459999999998
	.quad	0x40142374ff865d7d              # double 5.0346260000000003
	.quad	0x400a38afc47e49b2              # double 3.277679
	.quad	0x4013d52e2fbe33ad              # double 4.9581840000000001
	.quad	0x401503d577963993              # double 5.2537440000000002
	.quad	0x3fd47a072d1aeb3e              # double 0.31994800000000001
	.quad	0x401b6987c6327ed8              # double 6.8530569999999997
	.quad	0x400e9f8a8f3a9b07              # double 3.8279010000000002
	.quad	0x401f942d8c2a454e              # double 7.8947050000000001
	.quad	0x4021480cf9e3864d              # double 8.6407240000000005
	.quad	0x4005b616f86a0989              # double 2.713911
	.quad	0x400b76f08cc575c0              # double 3.4330759999999998
	.quad	0x401c18049667b5f2              # double 7.0234550000000002
	.quad	0x3fe9df7a4e7ab756              # double 0.80852999999999997
	.quad	0x4005ffe21d96e9bc              # double 2.749943
	.quad	0x400adee45c358afc              # double 3.3588339999999999
	.quad	0x3fdcab81f969e3c9              # double 0.44796799999999998
	.quad	0x3fdc17939a7c17a9              # double 0.43893900000000002
	.quad	0x401ae3d6c7219221              # double 6.722499
	.quad	0x40112aa00192a737              # double 4.2916259999999999
	.quad	0x3fe6bdf4c2b51bd6              # double 0.71068799999999999
	.quad	0x401c1a615a8deb10              # double 7.0257620000000003
	.quad	0x401bafd7a13c254a              # double 6.9217209999999998
	.quad	0x40021212513b5bf7              # double 2.2588240000000002
	.quad	0x40097c68661ae70c              # double 3.185746
	.quad	0x401033df6db940ff              # double 4.0506570000000002
	.quad	0x402162730c671690              # double 8.6922840000000008
	.quad	0x3fefb0e7ff583a54              # double 0.99034500000000003
	.quad	0x40113ae3e6c4c597              # double 4.3075099999999997
	.quad	0x40219923a29c779a              # double 8.7990999999999993
	.quad	0x401ea8a3b57c4e2f              # double 7.6646869999999998
	.quad	0x4023cdfd694ccab4              # double 9.9023240000000001
	.quad	0x4013bc8c0ce91c8f              # double 4.9341280000000003
	.quad	0x40057b4a2339c0ec              # double 2.6852
	.quad	0x401622db1e9f2778              # double 5.5340389999999999
	.quad	0x3fd2bd9018e75793              # double 0.29282000000000002
	.quad	0x4014a49ba5e353f8              # double 5.1607500000000002
	.quad	0x3fd3615a8deb0fae              # double 0.302817
	.quad	0x3fd41476af89c5e7              # double 0.313749
	.quad	0x3fe4c152b0a6fc59              # double 0.64859900000000004
	.quad	0x40221b9346994185              # double 9.053858
	.quad	0x400ae26cc1ca3a4b              # double 3.3605589999999999
	.quad	0x4008c20ff540895d              # double 3.094757
	.quad	0x3ffa130ced4e4c94              # double 1.629651
	.quad	0x401c0426351deefe              # double 7.0040519999999997
	.quad	0x401d50abb44e50c6              # double 7.3287800000000001
	.quad	0x401f9c450268900c              # double 7.9026069999999997
	.quad	0x3fd787f455a7d242              # double 0.36767300000000003
	.quad	0x401dc044f1a1986c              # double 7.4377630000000003
	.quad	0x400614eb13dfb0d5              # double 2.7602139999999999
	.quad	0x40236cc07aaef2c7              # double 9.7124059999999996
	.quad	0x400a2bebe1650a46              # double 3.2714460000000001
	.quad	0x3fe4502eec7c957d              # double 0.63478800000000002
	.quad	0x40203d573647baaa              # double 8.1198060000000005
	.quad	0x401237c9de050375              # double 4.554481
	.quad	0x401b9dffc5479d4e              # double 6.9042960000000004
	.quad	0x4021d500713f077d              # double 8.9160190000000004
	.quad	0x3ff4b3b42cc2d6aa              # double 1.2938730000000001
	.quad	0x401fff2389720429              # double 7.9991589999999996
	.quad	0x4016f086bdf4c2b5              # double 5.7348889999999999
	.quad	0x4015ec4f7ec3547e              # double 5.480772
	.quad	0x4013820817fc7608              # double 4.8769840000000002
	.quad	0x401db72799a1fd15              # double 7.4288619999999996
	.quad	0x3fa5f9591cd1c7de              # double 0.042917999999999998
	.quad	0x400251b8aa00192a              # double 2.2899029999999998
	.quad	0x3fae088d6d3b6cbe              # double 0.058659000000000003
	.quad	0x40100410f94c8798              # double 4.0039709999999999
	.quad	0x40237948dc11e42e              # double 9.7368839999999999
	.quad	0x402300ebcc6c54bd              # double 9.5017990000000001
	.quad	0x3ff11790752da986              # double 1.0682529999999999
	.quad	0x4019837de939eadd              # double 6.3784099999999997
	.quad	0x400d98327674d163              # double 3.6993149999999999
	.quad	0x40145785f8d2e515              # double 5.0854720000000002
	.quad	0x4013c945f9df548f              # double 4.9465560000000002
	.quad	0x4021b50f1f57b41c              # double 8.853631
	.quad	0x3ffb043d46b26bf8              # double 1.6885349999999999
	.quad	0x400fc47baa9b499d              # double 3.970939
	.quad	0x4002e4c404a72eae              # double 2.3617020000000002
	.quad	0x3ff9dfefbf401c50              # double 1.6171720000000001
	.quad	0x3ffaf95703f2d3c8              # double 1.6858740000000001
	.quad	0x400674a558ea7ce1              # double 2.806956
	.quad	0x40134981beb18117              # double 4.8217840000000001
	.quad	0x4021e1e6ab9b23dd              # double 8.9412129999999994
	.quad	0x4021627daa4fca43              # double 8.6923650000000006
	.quad	0x40205eabbcb1cc96              # double 8.1849039999999995
	.quad	0x4010fa8198f1d3ed              # double 4.2446349999999997
	.quad	0x401faa9ef5232d2c              # double 7.9166220000000003
	.quad	0x4016218efbb0e5e6              # double 5.5327719999999996
	.quad	0x4022e92c8c5004fb              # double 9.4554179999999998
	.quad	0x400436fe2e6ea854              # double 2.5268519999999999
	.quad	0x4018265cb35f3d7d              # double 6.0374629999999998
	.quad	0x400269aed56b0100              # double 2.3016030000000001
	.quad	0x4020b226809d4952              # double 8.3479500000000009
	.quad	0x400766c4c5974e66              # double 2.9251800000000001
	.quad	0x402195a597d49d7c              # double 8.7922790000000006
	.quad	0x402085b6805a2d73              # double 8.261158
	.quad	0x3ff76c12ad81adeb              # double 1.4638850000000001
	.quad	0x4020f2aa3ad18d26              # double 8.4739550000000001
	.quad	0x401c80e90bc7b45f              # double 7.1258889999999999
	.quad	0x3ff41eedcc20d563              # double 1.2575510000000001
	.quad	0x40228521ff2e48e9              # double 9.2600250000000006
	.quad	0x4005489dadfb506e              # double 2.6604570000000001
	.quad	0x4016e28997c3d684              # double 5.721228
	.quad	0x4016f515ce9e5e24              # double 5.7393409999999996
	.quad	0x3fea63e8dda48b65              # double 0.82469599999999998
	.quad	0x401bcb0b7c3504c5              # double 6.9482860000000004
	.quad	0x400b652bd3c36113              # double 3.4243999999999999
	.quad	0x401f5b53d640e9d5              # double 7.8391869999999999
	.quad	0x402157cdab191dde              # double 8.6714909999999996
	.quad	0x4013a662fdfc19c1              # double 4.9124869999999996
	.quad	0x3ff0af74cd31769b              # double 1.0428360000000001
	.quad	0x401ce9fd7a13c255              # double 7.2285060000000003
	.quad	0x4023eced916872b0              # double 9.9627499999999998
	.quad	0x3fdffddebd9018e7              # double 0.49986999999999998
	.quad	0x4022ecdaf4adbc66              # double 9.4626079999999995
	.quad	0x4010ef05a708ede5              # double 4.2334199999999997
	.quad	0x40215e889c1b5419              # double 8.6846359999999994
	.quad	0x3ff9491c087442c8              # double 1.580349
	.quad	0x401b29de05037500              # double 6.7908860000000004
	.quad	0x3f9d1d041cc532a5              # double 0.028431000000000001
	.quad	0x4006c41355475a32              # double 2.8457400000000002
	.quad	0x401c176f2a5a469d              # double 7.0228849999999996
	.quad	0x400e24449dbec248              # double 3.767709
	.quad	0x40119e4ef0281ba8              # double 4.404598
	.quad	0x40222244e93e1c9b              # double 9.0669319999999995
	.quad	0x4013d8cac4b4d057              # double 4.9617110000000002
	.quad	0x400b9f401c4fc1df              # double 3.4527589999999999
	.quad	0x400d4c3b0c4588a0              # double 3.6622219999999999
	.quad	0x401263f141205bc0              # double 4.5975999999999999
	.quad	0x4014759791819d24              # double 5.1148360000000004
	.quad	0x400070331e3a7daa              # double 2.0547849999999999
	.quad	0x401febd09e12a51e              # double 7.9802879999999998
	.quad	0x40025acd5b6805a3              # double 2.2943370000000001
	.quad	0x4022abe0589acbc9              # double 9.3356960000000004
	.quad	0x4019b2cfd8f0c77e              # double 6.4246210000000001
	.quad	0x3fefe2d83c6c97d9              # double 0.99644100000000002
	.quad	0x401946b723ee1bd2              # double 6.3190580000000001
	.quad	0x400ceaf5771001d6              # double 3.6147260000000001
	.quad	0x4020f483a96d4c34              # double 8.4775670000000005
	.quad	0x4011cf2cb641700d              # double 4.4523190000000001
	.quad	0x4007cf8df7a4e7ab              # double 2.9763449999999998
	.quad	0x40170f440af1cb8a              # double 5.7649080000000001
	.quad	0x40225fbce4217d28              # double 9.1869879999999994
	.quad	0x4003ab9ecf638002              # double 2.458799
	.quad	0x3ff4c3c18b502abb              # double 1.2977920000000001
	.quad	0x4013fd3671ac14c6              # double 4.9972779999999997
	.quad	0x4020a20a958537e3              # double 8.3164870000000004
	.quad	0x40227736694898f6              # double 9.232837
	.quad	0x40200bf5f91600f3              # double 8.0233609999999995
	.quad	0x3ffaf5ee99a62ed3              # double 1.6850419999999999
	.quad	0x400a9db7f1737543              # double 3.3270110000000002
	.quad	0x401bd70f7b9e0610              # double 6.9600200000000001
	.quad	0x40209b5b91f70de9              # double 8.3034330000000001
	.quad	0x401766b2f23033a4              # double 5.8502919999999996
	.quad	0x401b236e2eb1c433              # double 6.7846000000000002
	.quad	0x4007dabf33871609              # double 2.9818099999999998
	.quad	0x401de99aa60913a5              # double 7.478129
	.quad	0x4017aeafee6fb4c4              # double 5.9205930000000002
	.quad	0x401d7dda8bd230ba              # double 7.3729040000000001
	.quad	0x3ff304028e4fb97c              # double 1.1884790000000001
	.quad	0x3ffef5c4a83b1d0d              # double 1.9350020000000001
	.quad	0x400551d8a5482385              # double 2.6649639999999999
	.quad	0x40124d4fdf3b645a              # double 4.5754999999999999
	.quad	0x4012b6ed6777079e              # double 4.6786399999999997
	.quad	0x3ffbce2e2b8c75c5              # double 1.7378370000000001
	.quad	0x401c9b851eb851ec              # double 7.1518750000000004
	.quad	0x40195003686a4ca5              # double 6.328138
	.quad	0x401f368a0d349be9              # double 7.803261
	.quad	0x40194702a3486f05              # double 6.3193460000000004
	.quad	0x4011f62dc6e2a800              # double 4.4904089999999997
	.quad	0x401bfcf13cee9dd8              # double 6.9970140000000001
	.quad	0x4012341c3efae792              # double 4.5508889999999997
	.quad	0x3ff74a4c1ebc83a9              # double 1.4556389999999999
	.quad	0x4012d484d76ab580              # double 4.7075379999999996
	.quad	0x3fcc62888b545c79              # double 0.22175700000000001
	.quad	0x4001adfe75bc44bf              # double 2.2099579999999999
	.quad	0x400dd86fcdee34fc              # double 3.7306819999999998
	.quad	0x40223de050374ff8              # double 9.1208519999999993
	.quad	0x3ff755703f2d3c79              # double 1.458359
	.quad	0x4000584a9478c869              # double 2.0431110000000001
	.quad	0x401a8bea0ba1f4b2              # double 6.6366350000000001
	.quad	0x4021e7a69be09bb7              # double 8.9524430000000006
	.quad	0x401509fcb0c026cc              # double 5.2597529999999999
	.quad	0x3ff72eae9ee45c36              # double 1.4488970000000001
	.quad	0x401939118c197e56              # double 6.3057309999999998
	.quad	0x401a217a46173b86              # double 6.5326930000000001
	.quad	0x3fe3e2c98e53eb3a              # double 0.62143400000000004
	.quad	0x4000d850df15a4ad              # double 2.105623
	.quad	0x4023202ea960b6fa              # double 9.562856
	.quad	0x4023ec6e4c0df58c              # double 9.9617789999999999
	.quad	0x40166fbfc6540cc8              # double 5.6091300000000004
	.quad	0x401c60e065300581              # double 7.0946059999999997
	.quad	0x400700b45ae5ffa4              # double 2.8753440000000001
	.quad	0x4004e5271bcdbbe0              # double 2.611891
	.quad	0x401e308e581cf788              # double 7.5474180000000004
	.quad	0x400a7da2f8bdec5f              # double 3.3113459999999999
	.quad	0x401ed20d9945b6c3              # double 7.7051299999999995
	.quad	0x402274ef0281ba80              # double 9.2283860000000004
	.quad	0x401492b3892ee84b              # double 5.1432630000000001
	.quad	0x40217238da3c2118              # double 8.7230899999999991
	.quad	0x4014b35fc3b4f616              # double 5.1751699999999996
	.quad	0x3ff0bb29a1b9f98b              # double 1.0456939999999999
	.quad	0x40061860999dcb58              # double 2.7619030000000002
	.quad	0x4012c96851223183              # double 4.6966869999999998
	.quad	0x401827ecbb7f9d6f              # double 6.0389889999999999
	.quad	0x3ff9615b9a5a89b9              # double 1.5862689999999999
	.quad	0x401e3b4677b395c4              # double 7.5578859999999999
	.quad	0x3fd5a2ad3e920c07              # double 0.33805400000000002
	.quad	0x4004b39da16616b5              # double 2.5877029999999999
	.quad	0x400942424a276b7f              # double 3.1573530000000001
	.quad	0x4023c556084a515d              # double 9.8854220000000001
	.quad	0x40167b5aa715831f              # double 5.620463
	.quad	0x401c707b784662bb              # double 7.1098460000000001
	.quad	0x4023e32b55ef1fde              # double 9.9436900000000001
	.quad	0x40155d938151a438              # double 5.3413830000000004
	.quad	0x40070df69878316a              # double 2.881818
	.quad	0x401ce63f141205bc              # double 7.22485
	.quad	0x3ff77953dea465a5              # double 1.4671209999999999
	.quad	0x40174851654d61b3              # double 5.8206230000000003
	.quad	0x401d9b990afe60c4              # double 7.4019510000000004
	.quad	0x3fd81672324c8366              # double 0.37636999999999998
	.quad	0x3fdbcd4ed2cbea4f              # double 0.43440600000000001
	.quad	0x4021eee221c8a7a4              # double 8.9665689999999997
	.quad	0x4005f9be4cd74928              # double 2.7469450000000002
	.quad	0x3fd0b5c7cd898b2f              # double 0.26109500000000002
	.quad	0x401eb9ec2ce46499              # double 7.6815649999999999
	.quad	0x40169787485e3da3              # double 5.647977
	.quad	0x4005435dedf1e083              # double 2.6578940000000002
	.quad	0x40218b636f3b213e              # double 8.7722429999999996
	.quad	0x4013addf43c7d5ed              # double 4.919797
	.quad	0x40201c4da9003eea              # double 8.0552799999999998
	.quad	0x3fe5d20afa2f05a7              # double 0.68189
	.quad	0x40213b4938583622              # double 8.615793
	.quad	0x40057d8a54823854              # double 2.686299
	.quad	0x401cb6aa4b9884c7              # double 7.1783840000000003
	.quad	0x4001db07075b3e14              # double 2.2319469999999999
	.quad	0x40197a4484944ed7              # double 6.369402
	.quad	0x4015fdad7518b0d1              # double 5.4977320000000001
	.quad	0x40120b9baa1511e0              # double 4.511336
	.quad	0x4023de12c6ac215c              # double 9.9337370000000007
	.quad	0x3ffe86a7ef9db22d              # double 1.907875
	.quad	0x400548c0ce91c8eb              # double 2.6605240000000001
	.quad	0x4023605b9e8c47a1              # double 9.6881989999999991
	.quad	0x3fa66f9335d249e4              # double 0.043819999999999998
	.quad	0x3fffbdc37a3db3c0              # double 1.9838290000000001
	.quad	0x401b26cce5f7403e              # double 6.7878910000000001
	.quad	0x40017f3519bd4068              # double 2.1871130000000001
	.quad	0x40222743632c1f43              # double 9.0766860000000005
	.quad	0x402273dc486ad2dd              # double 9.2262900000000005
	.quad	0x3fe876683c297bfa              # double 0.76445399999999997
	.quad	0x4016d8e3ef284168              # double 5.7118070000000003
	.quad	0x40170b5bb384fd2a              # double 5.7610919999999997
	.quad	0x3f99934efcbd5561              # double 0.024976000000000002
	.quad	0x40191e974a3400b9              # double 6.2798740000000004
	.quad	0x3fee090d5a5b9629              # double 0.93860500000000002
	.quad	0x402064a515ce9e5e              # double 8.1965719999999997
	.quad	0x3fd3d4b6a619da9d              # double 0.30985800000000002
	.quad	0x4023d5f9591cd1c8              # double 9.9179180000000002
	.quad	0x401ee9edbf8b9baa              # double 7.7284459999999999
	.quad	0x3ff3caf81626b2f2              # double 1.237053
	.quad	0x401be07d912556d2              # double 6.9692290000000003
	.quad	0x401206b8f9b13166              # double 4.5065650000000002
	.quad	0x4015e404a72ead92              # double 5.4726739999999996
	.quad	0x3fff3c59b8023a6d              # double 1.952234
	.quad	0x4020f32b777d0f1f              # double 8.4749409999999994
	.quad	0x4023c290cd423d92              # double 9.8800109999999997
	.quad	0x401b9393682730c6              # double 6.8941169999999996
	.quad	0x400ca935b91f70df              # double 3.5826220000000002
	.quad	0x4006c1049235f80a              # double 2.8442470000000002
	.quad	0x401d3a3f4666ec9e              # double 7.3068819999999999
	.quad	0x4010d56fb8f57f73              # double 4.2084339999999996
	.quad	0x401f919bd4067cf2              # double 7.8921960000000002
	.quad	0x4016b955f78359bc              # double 5.6809919999999998
	.quad	0x4022a4345cfede98              # double 9.3207120000000003
	.quad	0x400bd28522ea0fd4              # double 3.4777930000000001
	.quad	0x400d9e481f53825e              # double 3.702286
	.quad	0x402351f4906034f4              # double 9.660069
	.quad	0x3ff5f6c3760bf5d8              # double 1.3727450000000001
	.quad	0x40203842b734b513              # double 8.1098839999999992
	.quad	0x4022763f359ff4fd              # double 9.2309509999999992
	.quad	0x4020ea6aca793576              # double 8.457846
	.quad	0x4017bdd0d8cb07d1              # double 5.9353670000000003
	.quad	0x401415e6bc621b7e              # double 5.021388
	.quad	0x3ff3109aed56b010              # double 1.191554
	.quad	0x4016984ba0e84274              # double 5.6487259999999999
	.quad	0x4021f7fb04ee7c4a              # double 8.984337
	.quad	0x3fe0932b55ef1fde              # double 0.51796500000000001
	.quad	0x401ac5104d551d69              # double 6.6924450000000002
	.quad	0x401cfed6fda836eb              # double 7.2488669999999997
	.quad	0x401f16950fc71d60              # double 7.7720529999999997
	.quad	0x40062c2f837b4a23              # double 2.7715749999999999
	.quad	0x4002d2acfb762d84              # double 2.3528690000000001
	.quad	0x3ff7ffee2c98e53f              # double 1.4999830000000001
	.quad	0x4007fc7368ad6883              # double 2.9982669999999998
	.quad	0x3fc41975f2cb6417              # double 0.157027
	.quad	0x3ffe88b220791c4c              # double 1.9083730000000001
	.quad	0x402373910c2c5e2d              # double 9.7257160000000002
	.quad	0x402160420f6f08cc              # double 8.6880039999999993
	.quad	0x401b92abef06b378              # double 6.8932339999999996
	.quad	0x40213d6733ebbfd7              # double 8.6199279999999998
	.quad	0x4010760b6f9fcb0c              # double 4.115278
	.quad	0x4012c4b33daf8df8              # double 4.6920900000000003
	.quad	0x401516102795703f              # double 5.2715459999999998
	.quad	0x40048861e92923e6              # double 2.5665930000000001
	.quad	0x3fcda294141e9af6              # double 0.23152400000000001
	.quad	0x401716312f4cf4a5              # double 5.7716719999999997
	.quad	0x4015f7b7c7820a31              # double 5.4919120000000001
	.quad	0x4003c7f6f4be835e              # double 2.472639
	.quad	0x3fe5aafff36ac647              # double 0.67712399999999995
	.quad	0x4021666b6177ea1c              # double 8.7000379999999992
	.quad	0x4018c6c8f7553693              # double 6.1941259999999998
	.quad	0x3ff82c6583e8576d              # double 1.510839
	.quad	0x401960420f6f08cc              # double 6.3440019999999997
	.quad	0x400fb1fe64f54d1f              # double 3.9619110000000002
	.quad	0x3fe0fd1dcd7060bb              # double 0.53089799999999998
	.quad	0x401f91f3e89a88ad              # double 7.8925320000000001
	.quad	0x4021b522a6f3f530              # double 8.8537800000000004
	.quad	0x40167dff3f0fe048              # double 5.6230440000000002
	.quad	0x4009103c8e25c811              # double 3.1329280000000002
	.quad	0x401150fd3b29a1ba              # double 4.329091
	.quad	0x4016fd612c6ac216              # double 5.7474410000000002
	.quad	0x3feb73bc903ea705              # double 0.85787800000000003
	.quad	0x400177f62b6ae7d5              # double 2.1835749999999998
	.quad	0x4010622d5171e29b              # double 4.0958759999999996
	.quad	0x3ff2fc32ebe596c8              # double 1.186572
	.quad	0x4005b99fe43675de              # double 2.7156370000000001
	.quad	0x401c1d7f950b955f              # double 7.0288069999999996
	.quad	0x401e1955714b9cb7              # double 7.5247400000000004
	.quad	0x4011e6f826edaa93              # double 4.4755560000000001
	.quad	0x40138700474d9c6b              # double 4.881837
	.quad	0x402106b59146e4c1              # double 8.5131040000000002
	.quad	0x40070ca925fe974a              # double 2.8811819999999999
	.quad	0x401ff292c4934268              # double 7.9868880000000004
	.quad	0x3ff2dab8e8ea39c5              # double 1.178399
	.quad	0x4021068be2f7b17d              # double 8.5127860000000002
	.quad	0x3ffba682b6284599              # double 1.7281519999999999
	.quad	0x4020c33e5753a3ec              # double 8.3813349999999999
	.quad	0x40208ee7c49fd7a1              # double 8.2791119999999996
	.quad	0x400b935653c9abb0              # double 3.446942
	.quad	0x401bcac9afe1da7b              # double 6.948035
	.quad	0x4012dff9f87f023f              # double 4.7187270000000003
	.quad	0x402268e90bc7b45f              # double 9.2049029999999998
	.quad	0x4016b2af1455219b              # double 5.6744960000000004
	.quad	0x4000a5692b3cc4ac              # double 2.0807669999999998
	.quad	0x401b52d3c792d128              # double 6.8308859999999996
	.quad	0x3ffd483dbc23315d              # double 1.8301369999999999
	.quad	0x400699dcb5781c71              # double 2.8251279999999999
	.quad	0x4013bc6f36ef8056              # double 4.934018
	.quad	0x40134433508f648c              # double 4.8166019999999996
	.quad	0x3fee6c69b5a63f9a              # double 0.95073399999999997
	.quad	0x3ffa0661ae70c133              # double 1.6265579999999999
	.quad	0x3feaf91c4b90214b              # double 0.84290900000000002
	.quad	0x4023aeb80ecfa69c              # double 9.8412480000000002
	.quad	0x3feb84230fcf80dc              # double 0.85987999999999997
	.quad	0x4020c36bf444e0db              # double 8.3816830000000007
	.quad	0x4022a875b3e1437c              # double 9.3290229999999993
	.quad	0x401e827f1b691212              # double 7.6274379999999997
	.quad	0x401efa80cf9e3865              # double 7.7446320000000001
	.quad	0x400b084b5dcc63f1              # double 3.3790499999999999
	.quad	0x401c3dacabc51548              # double 7.0602289999999996
	.quad	0x4022f294573a7979              # double 9.4737880000000007
	.quad	0x400e914e3bcd35a8              # double 3.8209499999999998
	.quad	0x402241f94855da27              # double 9.1288549999999997
	.quad	0x40187f9c62a1b5c8              # double 6.1246200000000002
	.quad	0x401352263d816acf              # double 4.8302240000000003
	.quad	0x400c09b30728e92d              # double 3.5047359999999999
	.quad	0x3fd7f8d716d2aa5c              # double 0.37456299999999998
	.quad	0x4010c0f3cb3e5754              # double 4.1884300000000003
	.quad	0x3fe689528f190d17              # double 0.70426299999999997
	.quad	0x4023abba12b5e52a              # double 9.8354040000000005
	.quad	0x40212c61309c7ffe              # double 8.5866790000000002
	.quad	0x3feeecedd4845133              # double 0.966422
	.quad	0x40196ec743201041              # double 6.3581820000000002
	.quad	0x3ff076ba0620ab71              # double 1.028986
	.quad	0x40006ab9b23dd54e              # double 2.0521120000000002
	.quad	0x3ffa0371da37ef5b              # double 1.6258410000000001
	.quad	0x3ffd017fc7607c42              # double 1.8128660000000001
	.quad	0x4015949d7ba6698c              # double 5.3951320000000003
	.quad	0x401d522af5771002              # double 7.3302420000000001
	.quad	0x4020bd50ebaade65              # double 8.3697579999999991
	.quad	0x401dcdee34fc610f              # double 7.4511039999999999
	.quad	0x3ff3c2fc69728a61              # double 1.235104
	.quad	0x3fc0eff5c6c11a11              # double 0.132323
	.quad	0x4022e1c90c4dec1c              # double 9.4409869999999997
	.quad	0x402284f2ae07e5a8              # double 9.2596640000000007
	.quad	0x40124c94b380cb6c              # double 4.5747859999999996
	.quad	0x4023f2e9ab29e4d6              # double 9.9744390000000003
	.quad	0x4021b2107b784663              # double 8.8477820000000005
	.quad	0x4020e556d19dece5              # double 8.4479279999999992
	.quad	0x401f07f950b955f8              # double 7.7577870000000004
	.quad	0x4020626b723ee1bd              # double 8.1922259999999998
	.quad	0x3ff11ec3dab5c39c              # double 1.070011
	.quad	0x4010b0828c36da88              # double 4.1723730000000003
	.quad	0x40201ce2b063e07a              # double 8.0564169999999997
	.quad	0x401f50c73abc9470              # double 7.8288849999999996
	.quad	0x4022b949a5657fb7              # double 9.3618900000000007
	.quad	0x3ffa57518b0d0edc              # double 1.6463179999999999
	.quad	0x400b39ee02a77a2d              # double 3.403286
	.quad	0x401479b62c77574f              # double 5.1188589999999996
	.quad	0x40140126634117f8              # double 5.0011229999999998
	.quad	0x4014285b18548a9c              # double 5.0394100000000002
	.quad	0x402161a1986b9c30              # double 8.6906859999999995
	.quad	0x401f95a78f25a251              # double 7.896147
	.quad	0x4021295af294dd72              # double 8.5807719999999996
	.quad	0x400bab61fe21d96f              # double 3.4586830000000002
	.quad	0x40128e53eb399f5e              # double 4.638992
	.quad	0x400af437c5692b3d              # double 3.3692470000000001
	.quad	0x40217ab302f72b45              # double 8.7396469999999997
	.quad	0x4017a15e39713ad6              # double 5.9075860000000002
	.quad	0x401bfc9d16fc9bc7              # double 6.9966929999999996
	.quad	0x401dcc347e8ccdd9              # double 7.4494189999999998
	.quad	0x4012fced0b30b5aa              # double 4.7469979999999996
	.quad	0x4016382b1f687b14              # double 5.5548520000000003
	.quad	0x400657afea3df6dc              # double 2.7928160000000002
	.quad	0x401d079fec99f1ae              # double 7.2574459999999998
	.quad	0x40211a4d8fd5cb79              # double 8.5513729999999999
	.quad	0x4016332ca57a786c              # double 5.5499749999999999
	.quad	0x400ef201040bfe3b              # double 3.868166
	.quad	0x40158c148344c37e              # double 5.3867969999999996
	.quad	0x4019a9c4113c6866              # double 6.4157869999999999
	.quad	0x4020b3033a4723ab              # double 8.349634
	.quad	0x4012853c148344c3              # double 4.6301119999999996
	.quad	0x40156f5ad96a6a01              # double 5.3587449999999999
	.quad	0x40222ad14a0a0f4d              # double 9.0836279999999991
	.quad	0x4023cc24a276b7ed              # double 9.8987169999999995
	.quad	0x4015254823854046              # double 5.2864079999999998
	.quad	0x40231145308bb906              # double 9.5337309999999995
	.quad	0x400a704577d95571              # double 3.3048199999999999
	.quad	0x4009a577531db446              # double 3.205794
	.quad	0x4020b427631b584b              # double 8.3518629999999998
	.quad	0x400b725a250f8402              # double 3.4308360000000002
	.quad	0x40134fb2edfe75bc              # double 4.8278309999999998
	.quad	0x401fdce8533b1077              # double 7.9657299999999997
	.quad	0x3fc86c4c5974e65c              # double 0.190805
	.quad	0x40206a1187e7c06e              # double 8.2071649999999998
	.quad	0x401fdd338f798527              # double 7.9660169999999999
	.quad	0x4000fb2edfe75bc4              # double 2.1226479999999999
	.quad	0x400f1dedf1e0828c              # double 3.8896139999999999
	.quad	0x4008cf16f4384ba1              # double 3.101118
	.quad	0x3ff7898c3b0c4589              # double 1.4710810000000001
	.quad	0x401607a0b5ed8d37              # double 5.5074490000000003
	.quad	0x4012a50d6b228dca              # double 4.6611840000000004
	.quad	0x3ff88dbf0563ed0f              # double 1.5346059999999999
	.quad	0x3fc6cd855970b49e              # double 0.178147
	.quad	0x40232d604189374c              # double 9.5886250000000003
	.quad	0x4017d4b167ec7864              # double 5.9577080000000002
	.quad	0x401d36f08cc575c0              # double 7.3036519999999996
	.quad	0x3ff588509bf9c62a              # double 1.34578
	.quad	0x40183b42cc2d6a9c              # double 6.0578719999999997
	.quad	0x3ff82f6b5d462c34              # double 1.5115769999999999
	.quad	0x401727863beec398              # double 5.7885980000000004
	.quad	0x4019a144cbe1eb42              # double 6.407489
	.quad	0x40206c1bb8c32a8d              # double 8.2111490000000007
	.quad	0x400d07c73eee5259              # double 3.6287980000000002
	.quad	0x400c147c73eee526              # double 3.5100030000000002
	.quad	0x4023b9fbe76c8b44              # double 9.8632500000000007
	.quad	0x4012c327aa68f4b6              # double 4.6905809999999999
	.quad	0x401d68c868b9fdbd              # double 7.3523269999999998
	.quad	0x40227eafee6fb4c4              # double 9.2474360000000004
	.quad	0x401e81333b96af04              # double 7.6261720000000004
	.quad	0x400f5549731098d4              # double 3.9166439999999998
	.quad	0x400304d1a6506141              # double 2.3773529999999998
	.quad	0x3fe82311e85fd04a              # double 0.75428099999999998
	.quad	0x4023361cbccf28c8              # double 9.6056880000000006
	.quad	0x400d4e12e83a109d              # double 3.663122
	.quad	0x3fdab990afe60c39              # double 0.417576
	.quad	0x4021023fcc9ea9a4              # double 8.5043930000000003
	.quad	0x3ff129fbe76c8b44              # double 1.0727500000000001
	.quad	0x402131cef240fa9c              # double 8.5972819999999998
	.quad	0x400f82b734b51373              # double 3.9388260000000002
	.quad	0x400ec9c3ce2089e3              # double 3.8485179999999999
	.quad	0x400c28522ea0fd3b              # double 3.5196879999999999
	.quad	0x4021c9cc96462802              # double 8.8941389999999991
	.quad	0x401baf0aa21a719b              # double 6.9209389999999997
	.quad	0x4020d1904b3c3e75              # double 8.4093040000000006
	.quad	0x400992b66b6177ea              # double 3.196637
	.quad	0x401b0347e8ccdd94              # double 6.7532040000000002
	.quad	0x400bc12599ed7c70              # double 3.4693100000000001
	.quad	0x3fffb77079e59f2c              # double 1.9822850000000001
	.quad	0x4001983be6601bca              # double 2.1993330000000002
	.quad	0x401c220e1f7d73c9              # double 7.0332569999999999
	.quad	0x4017cf0cbaf965b2              # double 5.952197
	.quad	0x401cc77dd872f33d              # double 7.1948160000000003
	.quad	0x401c6a908a265f0f              # double 7.1040669999999997
	.quad	0x4023af5c8d9f9054              # double 9.8425030000000006
	.quad	0x40082e30caa326e1              # double 3.022554
	.quad	0x3f90a73f748a1598              # double 0.016263
	.quad	0x4020ba1be2b4959e              # double 8.3634939999999993
	.quad	0x401ede2c12ad81ae              # double 7.7169650000000001
	.quad	0x4007658dde7a743a              # double 2.9245869999999998
	.quad	0x401f3fbacb428912              # double 7.8122360000000004
	.quad	0x40006c18f81e8a2f              # double 2.0527820000000001
	.quad	0x400477164c729f5a              # double 2.5581480000000001
	.quad	0x3ff062b063e07a29              # double 1.0240940000000001
	.quad	0x40235c105186db51              # double 9.679812
	.quad	0x4005a98e53eb399f              # double 2.7077909999999998
	.quad	0x400ef10e453d20f3              # double 3.8677030000000001
	.quad	0x40144dbc23315d70              # double 5.0759129999999999
	.quad	0x400eb818c5c9a34d              # double 3.8398910000000002
	.quad	0x4022b6e6fb4c3c19              # double 9.3572310000000005
	.quad	0x40221cc9a77e5eab              # double 9.0562260000000006
	.quad	0x40205240d90e23af              # double 8.1606509999999997
	.quad	0x3ffddf30e7ff583a              # double 1.8669899999999999
	.quad	0x400b5432873bc904              # double 3.416112
	.quad	0x401f4e7e62dc6e2b              # double 7.8266540000000004
	.quad	0x40205d96a6a0125a              # double 8.1827900000000007
	.quad	0x4004381e8a2ec28b              # double 2.5274019999999999
	.quad	0x4021998f3eccc469              # double 8.7999209999999994
	.quad	0x4017e784662bae04              # double 5.9760910000000003
	.quad	0x400a62dd7a99fa12              # double 3.2982740000000002
	.quad	0x4017cbdf8f473040              # double 5.9490949999999998
	.quad	0x40221f82f5126634              # double 9.0615459999999998
	.quad	0x400c0873365881a1              # double 3.5041259999999999
	.quad	0x4009843bb40b34e7              # double 3.1895669999999998
	.quad	0x402283a29c779a6b              # double 9.2570999999999994
	.quad	0x401f7c1db0142f62              # double 7.8712070000000001
	.quad	0x3ff6e096787ce960              # double 1.4298310000000001
	.quad	0x4005b393ab430f49              # double 2.7126839999999999
	.quad	0x400e97bf1e8e6080              # double 3.8240949999999998
	.quad	0x400d9b9cf9a06a6e              # double 3.7009829999999999
	.quad	0x40132726d04e618d              # double 4.7882340000000001
	.quad	0x4019c55cd91eeaa7              # double 6.4427370000000002
	.quad	0x4007614c660a2014              # double 2.9225089999999998
	.quad	0x4000b6e158750c1c              # double 2.0892970000000002
	.quad	0x40046cce5f7403de              # double 2.5531280000000001
	.quad	0x4021dce2089e3433              # double 8.9314119999999999
	.quad	0x4010a1bc55864452              # double 4.1579449999999998
	.quad	0x401bee8709741d08              # double 6.9829369999999997
	.quad	0x400a36fa82e87d2c              # double 3.2768449999999998
	.quad	0x400921de26916441              # double 3.141537
	.quad	0x4016ec6b05319829              # double 5.7308770000000004
	.quad	0x401237eed45e9186              # double 4.5546220000000002
	.quad	0x400221f5be5d9e41              # double 2.2665820000000001
	.quad	0x4021363864cb5bb4              # double 8.6058990000000008
	.quad	0x401fdaa60913a4f8              # double 7.9635239999999996
	.quad	0x4023b64f3343fa2b              # double 9.8560730000000003
	.quad	0x40205cda2b5a20de              # double 8.1813520000000004
	.quad	0x4022e4d940789614              # double 9.4469700000000003
	.quad	0x4001c12513b5bf6a              # double 2.219309
	.quad	0x40133da7f3cf7015              # double 4.8102109999999998
	.quad	0x40151532a497fa5d              # double 5.2707009999999999
	.quad	0x4010ef1561911490              # double 4.2334800000000001
	.quad	0x4020ba339c0ebee0              # double 8.3636750000000006
	.quad	0x3ff5cbf1a5ca2984              # double 1.3622909999999999
	.quad	0x401177f8ca8198f2              # double 4.3671600000000002
	.quad	0x402231c2e33eff19              # double 9.0971899999999994
	.quad	0x3fa808e9b38d60a6              # double 0.046942999999999999
	.quad	0x401177204295a6c6              # double 4.3663340000000002
	.quad	0x4017f1a9fbe76c8b              # double 5.9859999999999998
	.quad	0x3ffc3e0ded288ce7              # double 1.76515
	.quad	0x40131100e6afcce2              # double 4.7666050000000002
	.quad	0x401c2ac3a860dcba              # double 7.0417620000000003
	.quad	0x4007938c5436b8fa              # double 2.9470450000000001
	.quad	0x40031863beec397a              # double 2.3869090000000002
	.quad	0x3fd797aeddce7cd0              # double 0.36863299999999999
	.quad	0x3ff76e3821af7d31              # double 1.4644090000000001
	.quad	0x4021b5058dde7a74              # double 8.8535579999999995
	.quad	0x400948661ae70c13              # double 3.1603509999999999
	.quad	0x400b112ba16e7a31              # double 3.3833839999999999
	.quad	0x4001ca3c64345cff              # double 2.2237480000000001
	.quad	0x3fc043dccea28fe2              # double 0.12707099999999999
	.quad	0x4016211276fb0920              # double 5.5322969999999998
	.quad	0x4016a3037d63022e              # double 5.6591930000000001
	.quad	0x4003fd3ed527e521              # double 2.4986549999999998
	.quad	0x4020e48adeebb342              # double 8.4463720000000002
	.quad	0x4017eeda66128390              # double 5.9832549999999998
	.quad	0x40123c74fb549f95              # double 4.5590400000000004
	.quad	0x400dee3b46fdeb53              # double 3.7413240000000001
	.quad	0x40092fa9c12f09d9              # double 3.1482730000000001
	.quad	0x3fff37531db445ed              # double 1.9510069999999999
	.quad	0x3fe7ec8d5c74751d              # double 0.74762600000000001
	.quad	0x40125c332f01754b              # double 4.590039
	.quad	0x400c8c88a47ecfea              # double 3.5686200000000001
	.quad	0x401ea7f77af64064              # double 7.6640300000000003
	.quad	0x401215ec80c73abd              # double 4.5214100000000004
	.quad	0x4008753a3ec02f30              # double 3.0572400000000002
	.quad	0x400f346994185059              # double 3.9005920000000001
	.quad	0x40148368f08461fa              # double 5.1283300000000001
	.quad	0x4022c97353b4b2fb              # double 9.3934580000000007
	.quad	0x40136131a8ef77f2              # double 4.8449159999999996
	.quad	0x402098e453d20f2c              # double 8.2986170000000001
	.quad	0x4023c3608d08919f              # double 9.881596
	.quad	0x3ff0b414a4d2b2c0              # double 1.043965
	.quad	0x400d78759253543b              # double 3.683818
	.quad	0x4011f5718eb89507              # double 4.4896909999999997
	.quad	0x400a838da3c21188              # double 3.314235
	.quad	0x40095a261bf37b8d              # double 3.1690179999999999
	.quad	0x4020922e1ac57e24              # double 8.285508
	.quad	0x3fddebaf102363b2              # double 0.46750999999999998
	.quad	0x400f6501e2584f4c              # double 3.9243199999999998
	.quad	0x400ea864883fd502              # double 3.8322229999999999
	.quad	0x3ff996312f4cf4a5              # double 1.5991679999999999
	.quad	0x4018e5f0b28522ea              # double 6.2245509999999999
	.quad	0x4021e46327ed84d3              # double 8.9460689999999996
	.quad	0x3fe92e59af9ebe9d              # double 0.78690800000000005
	.quad	0x3fd9a25529fe004b              # double 0.40053299999999997
	.quad	0x401045681ecd4aa1              # double 4.06778
	.quad	0x40234f7ad4b2745c              # double 9.655234
	.quad	0x3fe688bda9435ac9              # double 0.70419200000000004
	.quad	0x401020c9539b8887              # double 4.0320179999999999
	.quad	0x40206d7fd82773e2              # double 8.2138659999999994
	.quad	0x4017aa6ce358298d              # double 5.9164310000000002
	.quad	0x401b207357e670e3              # double 6.7816900000000002
	.quad	0x3ffaa503fb374363              # double 1.665287
	.quad	0x3ff2dc5c5718eb89              # double 1.1787989999999999
	.quad	0x4001b224aada33be              # double 2.2119840000000002
	.quad	0x400be44fa05143bf              # double 3.4864799999999998
	.quad	0x3ff03e6f71a7e308              # double 1.0152429999999999
	.quad	0x3ffdc6a5d6bebe16              # double 1.8609979999999999
	.quad	0x401e17c5ac471b48              # double 7.5232150000000004
	.quad	0x4022af4e22a2c237              # double 9.3423929999999995
	.quad	0x4001ff6124074645              # double 2.2496969999999998
	.quad	0x4008260cbf2b239a              # double 3.0185789999999999
	.quad	0x4018f8f96e158751              # double 6.2431390000000002
	.quad	0x3fb60f4d7add15f0              # double 0.086170999999999997
	.quad	0x40089fa8f7db6e50              # double 3.0779589999999999
	.quad	0x401c09d4d834091c              # double 7.009601
	.quad	0x4014aa7f3cf70154              # double 5.1665010000000002
	.quad	0x401297ee9142b303              # double 4.648371
	.quad	0x401f8bb906466b1e              # double 7.8864479999999997
	.quad	0x40012976bc1effa0              # double 2.1452460000000002
	.quad	0x402056455eaee200              # double 8.1684979999999996
	.quad	0x40131d8a979e16d7              # double 4.7788490000000001
	.quad	0x401d0620685553ef              # double 7.2559829999999996
	.quad	0x3feb784230fcf80e              # double 0.85843000000000003
	.quad	0x4020f102363b2570              # double 8.47072
	.quad	0x401bace8533b1077              # double 6.9188549999999998
	.quad	0x401303e681a9b8cc              # double 4.7538090000000004
	.quad	0x3fe801a36e2eb1c4              # double 0.75019999999999997
	.quad	0x3ff3ef416bdb1a6d              # double 1.2459119999999999
	.quad	0x4022f4b09e98dcdb              # double 9.4779099999999996
	.quad	0x401367f23cc8de2b              # double 4.8515100000000002
	.quad	0x4007205e5f30e7ff              # double 2.8908049999999998
	.quad	0x4022a2fdfc19c172              # double 9.3183439999999997
	.quad	0x40133247021d10b2              # double 4.799099
	.quad	0x3ff8f5b3e1437c57              # double 1.5599860000000001
	.quad	0x402095b70691ea79              # double 8.2924120000000006
	.quad	0x401caedd8b60f1b2              # double 7.1707669999999997
	.quad	0x40230692f6e8294a              # double 9.5128400000000006
	.quad	0x4021e4521dda059a              # double 8.9459389999999992
	.quad	0x4021a9fd1569f490              # double 8.8320089999999993
	.quad	0x40087cf70153bd16              # double 3.0610179999999998
	.quad	0x3fdebf8fcd67fd3f              # double 0.48044199999999998
	.quad	0x40175a1f4b1ee243              # double 5.8380099999999997
	.quad	0x4005b38c5436b8fa              # double 2.7126700000000001
	.quad	0x4022599f1ae2da55              # double 9.1750419999999995
	.quad	0x4010eee02a77a2cf              # double 4.2332770000000002
	.quad	0x4017f39c0ebedfa4              # double 5.9878999999999998
	.quad	0x3fecccf4a558ea7d              # double 0.90001900000000001
	.quad	0x40135578a2a90cd4              # double 4.8334679999999999
	.quad	0x401a0db3bfb58d15              # double 6.5133809999999999
	.quad	0x4020cde2cdc011d3              # double 8.4021209999999993
	.quad	0x40102dae3e6c4c59              # double 4.0446099999999996
	.quad	0x4018a4da4ce8101f              # double 6.1609889999999998
	.quad	0x3ffc3c5de9c0229a              # double 1.7647379999999999
	.quad	0x401f656a7ac81d3b              # double 7.8490390000000003
	.quad	0x4023ea9c99285a92              # double 9.9582259999999998
	.quad	0x4020a4886162f167              # double 8.3213530000000002
	.quad	0x400ee156e264e486              # double 3.8600289999999999
	.quad	0x401c02eba27ae9ab              # double 7.0028519999999999
	.quad	0x4018b3076c050bd8              # double 6.1748329999999996
	.quad	0x401fcacf7446f9ba              # double 7.9480570000000004
	.quad	0x401598dd1e53a81e              # double 5.3992810000000002
	.quad	0x401e93532e7b3d8e              # double 7.643872
	.quad	0x40213f972474538f              # double 8.6242000000000001
	.quad	0x40025c24c404a72f              # double 2.2949920000000001
	.quad	0x3fd9f3b645a1cac1              # double 0.40550000000000003
	.quad	0x40160fc2224edf61              # double 5.5153889999999999
	.quad	0x401fcdc50ce4ead1              # double 7.9509470000000002
	.quad	0x3ff259ddc1e7967d              # double 1.1469400000000001
	.quad	0x400874f8b588e369              # double 3.057115
	.quad	0x401fb290257c914b              # double 7.9243779999999999
	.quad	0x400a7d6f112fd32c              # double 3.3112469999999998
	.quad	0x3ff969f383f0bae9              # double 1.5883670000000001
	.quad	0x3ff527ab7564302b              # double 1.3221849999999999
	.quad	0x401ff0dc768dfbd7              # double 7.9852160000000003
	.quad	0x40218a1f080303c0              # double 8.7697679999999991
	.quad	0x40141d45a5fc7e6b              # double 5.0285859999999998
	.quad	0x4010e7a17f4128bf              # double 4.2262019999999998
	.quad	0x401433e920c069e8              # double 5.050694
	.quad	0x3fe07afea3df6db9              # double 0.51501399999999997
	.quad	0x3fedede54b48d3ae              # double 0.93528999999999995
	.quad	0x401741843c3a42f2              # double 5.8139810000000001
	.quad	0x4011818c197e5647              # double 4.3765109999999998
	.quad	0x400ed4916ca46e09              # double 3.853793
	.quad	0x4022c4f8b588e369              # double 9.3847100000000001
	.quad	0x401356eb91b3f20a              # double 4.8348829999999996
	.quad	0x402084c25072085b              # double 8.2592949999999998
	.quad	0x401a3b1dd5d3dc8c              # double 6.5577310000000004
	.quad	0x4001c3be6601bc99              # double 2.2205780000000002
	.quad	0x4002a1a3f4666eca              # double 2.3289260000000001
	.quad	0x3ff226b93ccd0fe9              # double 1.1344540000000001
	.quad	0x3fd7ee136e71cda3              # double 0.37390600000000002
	.quad	0x40156798958d9b5f              # double 5.3511680000000004
	.quad	0x400b7f61aa3f034b              # double 3.437198
	.quad	0x4014d889c1b54196              # double 5.2114630000000002
	.quad	0x4005e9cbab649d39              # double 2.7391580000000002
	.quad	0x3ffff5610adcd2d4              # double 1.9974069999999999
	.quad	0x400a88a47ecfe9b8              # double 3.3167200000000001
	.quad	0x3fd608461f9f01b8              # double 0.34425499999999998
	.quad	0x4011d36f7e3d1cc1              # double 4.45648
	.quad	0x4021b6d6dc1a47aa              # double 8.8571080000000002
	.quad	0x401e777d0f1f57b4              # double 7.6166879999999999
	.quad	0x3fd63e5753a3ec03              # double 0.347555
	.quad	0x3ffbd7e34b945309              # double 1.7402070000000001
	.quad	0x3feffea3df6db941              # double 0.999834
	.quad	0x40185bf6a0dbad3a              # double 6.0898079999999997
	.quad	0x40219900e6afcce2              # double 8.7988350000000004
	.quad	0x3ffb1d57ff9b5632              # double 1.6946639999999999
	.quad	0x4023d58644523f68              # double 9.91704
	.quad	0x3fd776c8b4395810              # double 0.36662499999999998
	.quad	0x40106f98fa376923              # double 4.1089820000000001
	.quad	0x3fea28aa433508f6              # double 0.81746399999999997
	.quad	0x400c12e0e30446b7              # double 3.5092180000000002
	.quad	0x3fe3a31e7d9988d3              # double 0.61366200000000004
	.quad	0x3ff669cfdd228566              # double 1.400833
	.quad	0x4023856d3b6cbd98              # double 9.7605989999999991
	.quad	0x400c19cbee807bbb              # double 3.5125959999999998
	.quad	0x4022d53eb399f5e0              # double 9.4164940000000001
	.quad	0x4021c36199780baa              # double 8.8816039999999994
	.quad	0x3fffb30e7ff583a5              # double 1.9812149999999999
	.quad	0x401e7dcf893faf42              # double 7.6228619999999996
	.quad	0x3ff1dc0980b24207              # double 1.11622
	.quad	0x4017d03dddb1209f              # double 5.9533610000000001
	.quad	0x3ffe3fef39085f4a              # double 1.890609
	.quad	0x40225a9a5ebb773a              # double 9.1769590000000001
	.quad	0x401e730728e92d56              # double 7.6123320000000003
	.quad	0x401a7814940bbb1f              # double 6.6172659999999999
	.quad	0x4018c027d88c1db0              # double 6.1876519999999999
	.quad	0x40166c8e68e3ef28              # double 5.6060119999999998
	.quad	0x401852ce032db1ea              # double 6.080864
	.quad	0x401d760780fdc161              # double 7.3652629999999997
	.quad	0x4020cd61b2a27f1b              # double 8.4011359999999993
	.quad	0x401f9a187a4a48f9              # double 7.9004839999999996
	.quad	0x401adf03d145d851              # double 6.7177879999999996
	.quad	0x4003b3be22e5de16              # double 2.4627650000000001
	.quad	0x40126de33269df98              # double 4.6073120000000003
	.quad	0x4012babbcb1cc964              # double 4.6823569999999997
	.quad	0x4023d61847f56217              # double 9.9181539999999994
	.quad	0x401f658b3f63c31e              # double 7.849164
	.quad	0x401ad1b2a27f1b69              # double 6.7047829999999999
	.quad	0x4021d8398a654930              # double 8.9223140000000001
	.quad	0x3ffd8fb549f94856              # double 1.847585
	.quad	0x400a030b9dc2f406              # double 3.251487
	.quad	0x4021b85ad538ac19              # double 8.8600680000000001
	.quad	0x4017b4199fe43676              # double 5.9258790000000001
	.quad	0x40187efe93187619              # double 6.1240180000000004
	.quad	0x3fcef6512a94ff00              # double 0.241892
	.quad	0x401717ad4b2745bf              # double 5.7731219999999999
	.quad	0x3ff3309e98dcdb38              # double 1.19937
	.quad	0x3fc57c5692b3cc4b              # double 0.16785700000000001
	.quad	0x40036f9e3864cb5c              # double 2.4295010000000001
	.quad	0x4011f63baba7b917              # double 4.490462
	.quad	0x40173a95421c0443              # double 5.8072100000000004
	.quad	0x40041fdcdf698783              # double 2.515558
	.quad	0x4022512599ed7c70              # double 9.1584900000000005
	.quad	0x40072ee84ad794a7              # double 2.897904
	.quad	0x3ffe182235b4edb3              # double 1.880892
	.quad	0x3ff5a5614df8b157              # double 1.352876
	.quad	0x400bd8bf7f06705d              # double 3.4808340000000002
	.quad	0x4021b4baf965b20c              # double 8.8529890000000008
	.quad	0x4014c163779e9d0f              # double 5.1888560000000004
	.quad	0x3ffd1a09cc319c5a              # double 1.8188569999999999
	.quad	0x40093a52263d816b              # double 3.1534770000000001
	.quad	0x3ffedbca9691a75d              # double 1.92866
	.quad	0x400669eecbfb15b5              # double 2.8017249999999998
	.quad	0x400117dae81882ae              # double 2.1366480000000001
	.quad	0x4016fb97353b4b30              # double 5.7456940000000003
	.quad	0x4004cc942d490e67              # double 2.5998920000000001
	.quad	0x40111a9f7b5aea31              # double 4.2759989999999997
	.quad	0x40183d3996fa82e8              # double 6.0597899999999996
	.quad	0x4022938151a43782              # double 9.2880959999999995
	.quad	0x40032ec95bff0457              # double 2.3978449999999998
	.quad	0x401e15d80e496edf              # double 7.5213320000000001
	.quad	0x3fa29aa1d755bccb              # double 0.036336
	.quad	0x401aea84be40420f              # double 6.7290219999999996
	.quad	0x40229b93037d6302              # double 9.3038559999999997
	.quad	0x4014dc254a3c6434              # double 5.2149859999999997
	.quad	0x3fff9a06a6e32e38              # double 1.975104
	.quad	0x3ff4f82a12f90108              # double 1.3105869999999999
	.quad	0x40200be0370cdc87              # double 8.0231949999999994
	.quad	0x3ff92c58eeae9ee4              # double 1.5733269999999999
	.quad	0x4023caa7589efd87              # double 9.8958080000000006
	.quad	0x401b26fcdee34fc6              # double 6.7880739999999999
	.quad	0x3ff72696a26e5471              # double 1.4469209999999999
	.quad	0x40221b5aea3161a2              # double 9.0534280000000003
	.quad	0x40208abe48a58b3f              # double 8.2709829999999993
	.quad	0x400f96c1e364bec6              # double 3.9486119999999998
	.quad	0x402265612c6ac216              # double 9.1980070000000005
	.quad	0x401fcca42aed1394              # double 7.9498449999999998
	.quad	0x40220639f77292c5              # double 9.0121610000000008
	.quad	0x400c4dfefbf401c5              # double 3.538084
	.quad	0x400a53eff1950332              # double 3.290985
	.quad	0x40078ba6aca79357              # double 2.9431889999999998
	.quad	0x3fe72bdc26dce39b              # double 0.72410399999999997
	.quad	0x400c71de69ad42c4              # double 3.5556000000000001
	.quad	0x402093acd5b6805a              # double 8.2884279999999997
	.quad	0x3feff4a3400b88ca              # double 0.99861299999999997
	.quad	0x3feecd2d44dca8e3              # double 0.96254600000000001
	.quad	0x40125328f9f44d44              # double 4.5812109999999997
	.quad	0x401d34fe36d22425              # double 7.3017510000000003
	.quad	0x3ff73a493c89f40a              # double 1.45173
	.quad	0x401f1aae297396d1              # double 7.7760550000000003
	.quad	0x4014708893b7d849              # double 5.109896
	.quad	0x40214f6a2f48c2e7              # double 8.6551069999999992
	.quad	0x400925d31337eb29              # double 3.1434690000000001
	.quad	0x401350a4a05dd8f9              # double 4.8287529999999999
	.quad	0x3fdf1fafc8b0079a              # double 0.48630899999999999
	.quad	0x4011b01abd1aa822              # double 4.421977
	.quad	0x3fe7178705425f20              # double 0.72162199999999999
	.quad	0x4011fc857f3061c8              # double 4.4966030000000003
	.quad	0x3fce6db50f40e5a3              # double 0.23772299999999999
	.quad	0x40127d8cf398e970              # double 4.6226079999999996
	.quad	0x400b95350092ccf7              # double 3.4478550000000001
	.quad	0x401620913a4f8727              # double 5.5318040000000002
	.quad	0x400d28d32830a0b2              # double 3.6449340000000001
	.quad	0x402239960fa15db3              # double 9.1124729999999996
	.quad	0x401609c886162f16              # double 5.5095539999999996
	.quad	0x3fd2592d98bf7f06              # double 0.28669299999999998
	.quad	0x4023774623d0bfa1              # double 9.7329570000000007
	.quad	0x3fea86df82b1f688              # double 0.82896400000000003
	.quad	0x3ffdfcea6c1a048e              # double 1.874247
	.quad	0x40032fe36d22424a              # double 2.3983829999999999
	.quad	0x3ff2b98a65492ff5              # double 1.1702980000000001
	.quad	0x401c353da72a7bd5              # double 7.0519930000000004
	.quad	0x401009baa1511e00              # double 4.0095010000000002
	.quad	0x401b2f5a964e8b7e              # double 6.7962439999999997
	.quad	0x4017dcdf69878317              # double 5.9656960000000003
	.quad	0x3fe05c11e42e1262              # double 0.511239
	.quad	0x40187e019b0ab2e1              # double 6.1230529999999996
	.quad	0x402131ad2135daad              # double 8.5970239999999993
	.quad	0x400e158fb43d89ce              # double 3.7605279999999999
	.quad	0x401b14b838c111ae              # double 6.7702340000000003
	.quad	0x4021308ce703afb8              # double 8.5948250000000002
	.quad	0x401b1dac258d5843              # double 6.7789770000000003
	.quad	0x40112053e2d6238e              # double 4.2815700000000003
	.quad	0x401bf1d68c692f6f              # double 6.9861700000000004
	.quad	0x401d80014f8b588e              # double 7.3750049999999998
	.quad	0x4011b2aa5c5f7c67              # double 4.4244779999999997
	.quad	0x401ce5ca29845dc8              # double 7.2244039999999998
	.quad	0x4020d587d6f97679              # double 8.417052
	.quad	0x40157efbf401c4fc              # double 5.3740079999999999
	.quad	0x40016ee525892685              # double 2.1791480000000001
	.quad	0x40212c100e6afcce              # double 8.5860599999999998
	.quad	0x401161ea78af3e47              # double 4.3456210000000004
	.quad	0x40218a3e7d135116              # double 8.7700080000000007
	.quad	0x40106e0c9d9d3459              # double 4.1074700000000002
	.quad	0x4015917b0f6ad70e              # double 5.3920709999999996
	.quad	0x3ffa71b79d909f1f              # double 1.652763
	.quad	0x40137e99a62ed352              # double 4.8736329999999999
	.quad	0x401f320afa2f05a7              # double 7.7988699999999999
	.quad	0x4020d0b7a1c25d07              # double 8.4076509999999995
	.quad	0x401e90d413122b7c              # double 7.6414340000000003
	.quad	0x40115c2c5e2cdc01              # double 4.3400129999999999
	.quad	0x4015e605ab3aabcd              # double 5.4746309999999996
	.quad	0x400745996744b2b7              # double 2.9089839999999998
	.quad	0x4016ec0df58c08b7              # double 5.7305219999999997
	.quad	0x4012931ad2135dab              # double 4.6436570000000001
	.quad	0x3fd61e8e60807358              # double 0.34561500000000001
	.quad	0x3ff6a96a26e54717              # double 1.416361
	.quad	0x3ff09f340d4dc65c              # double 1.0388679999999999
	.quad	0x4022eea3bddfca00              # double 9.4660930000000007
	.quad	0x401129e492bc2fc7              # double 4.2909110000000004
	.quad	0x4019505faebc408e              # double 6.3284900000000004
	.quad	0x40044db7ae5796c0              # double 2.5379480000000001
	.quad	0x400e98a65492ff4c              # double 3.8245360000000002
	.quad	0x3ff4d524bfd2e947              # double 1.3020370000000001
	.quad	0x40228a9691a75cd1              # double 9.2706800000000005
	.quad	0x4023582773e24fec              # double 9.6721760000000003
	.quad	0x4008300a393ee5ef              # double 3.0234570000000001
	.quad	0x4021f5eb52c9d170              # double 8.9803110000000004
	.quad	0x3fa25cc426351def              # double 0.035864
	.quad	0x401c42bba98eda23              # double 7.065169
	.quad	0x4018964628027d89              # double 6.1467520000000002
	.quad	0x40139e30caa326e1              # double 4.9044829999999999
	.quad	0x40011d188f42fe82              # double 2.1392069999999999
	.quad	0x4019993e1c9b413a              # double 6.3996510000000004
	.quad	0x401bbdb0dd82fd76              # double 6.9352450000000001
	.quad	0x400505aa2e3c536d              # double 2.6277659999999998
	.quad	0x3fd1c27631b584b2              # double 0.27749400000000002
	.quad	0x4023de4840e1719f              # double 9.9341449999999991
	.quad	0x3fcb05c03361565c              # double 0.211113
	.quad	0x3ff4ac226809d495              # double 1.292025
	.quad	0x3fe06019b0ab2e17              # double 0.51173100000000005
	.quad	0x4022ff7ced916873              # double 9.4990000000000005
	.quad	0x401220b8cfbfc654              # double 4.531955
	.quad	0x40125dedaec4a409              # double 4.5917269999999997
	.quad	0x401cb2999567dbb1              # double 7.1744139999999996
	.quad	0x3ff5ec98e53eb39a              # double 1.370263
	.quad	0x40197fb7a5f41aef              # double 6.3747239999999996
	.quad	0x4013ffe004b7f5a5              # double 4.9998779999999998
	.quad	0x400544d983947497              # double 2.6586180000000001
	.quad	0x4023b694ab1d4f9c              # double 9.8566029999999997
	.quad	0x400e3fb58d1526d9              # double 3.7811080000000001
	.quad	0x40029320535c9e67              # double 2.3218390000000002
	.quad	0x401ee210385c67e0              # double 7.7207650000000001
	.quad	0x4018ff0cbaf965b2              # double 6.249072
	.quad	0x3ff169ca9ef5232d              # double 1.088328
	.quad	0x3fe7204295a6c5d2              # double 0.722688
	.quad	0x401ac5c209246bf0              # double 6.6931229999999999
	.quad	0x3ff93d46b26bf877              # double 1.5774600000000001
	.quad	0x4002dd52c16df3f9              # double 2.3580679999999998
	.quad	0x4020c608f2170931              # double 8.386787
	.quad	0x4013a3e6c4c5974e              # double 4.9100599999999996
	.quad	0x401576a7ef9db22d              # double 5.365875
	.quad	0x401a189374bc6a7f              # double 6.524
	.quad	0x400d853a81dc0db2              # double 3.6900529999999998
	.quad	0x4020669057d1782d              # double 8.2003199999999996
	.quad	0x3ff2f419e30014f9              # double 1.1845950000000001
	.quad	0x4021c7d4e09784ec              # double 8.8902959999999993
	.quad	0x4010c1858bc59b80              # double 4.1889859999999999
	.quad	0x3fff1790752da986              # double 1.9432529999999999
	.quad	0x400fe9e55c0fcb4f              # double 3.9892069999999999
	.quad	0x3fd17db2b346130a              # double 0.27329700000000001
	.quad	0x4013c829068986fd              # double 4.9454690000000001
	.quad	0x4013193ff25e56cd              # double 4.7746579999999996
	.quad	0x400858fd5cb790fb              # double 3.0434519999999998
	.quad	0x400edffb480a5acd              # double 3.8593660000000001
	.quad	0x401fa778140dd3fe              # double 7.9135439999999999
	.quad	0x3fec77b5aea3161a              # double 0.88961299999999999
	.quad	0x4020ebae46cfc82a              # double 8.4603140000000003
	.quad	0x40218d9103c8e25d              # double 8.7764970000000009
	.quad	0x401bf8da3c21187e              # double 6.9930199999999996
	.quad	0x4018199a1fd1569f              # double 6.0250019999999997
	.quad	0x401671f212d77319              # double 5.611275
	.quad	0x3ff99c24c404a72f              # double 1.6006210000000001
	.quad	0x3ff5e456f75d9a0f              # double 1.368247
	.quad	0x4019a00c521dda06              # double 6.4062970000000004
	.quad	0x401d00ac7da1ec4e              # double 7.2506579999999996
	.quad	0x401d9c115df6555c              # double 7.4024099999999997
	.quad	0x400f3a1a0cf1800a              # double 3.9033699999999998
	.quad	0x4021d27503b81b65              # double 8.9110490000000002
	.quad	0x401ca082cf52b90a              # double 7.1567489999999996
	.quad	0x4011d9057d1782d4              # double 4.4619350000000004
	.quad	0x4017bb0a6fc58ab9              # double 5.9326569999999998
	.quad	0x400359f4d37c1377              # double 2.4189240000000001
	.quad	0x400bf2135daad602              # double 3.493201
	.quad	0x4020dade8709741d              # double 8.4274789999999999
	.quad	0x4010805ff1d81f10              # double 4.1253659999999996
	.quad	0x3fe14983d790752e              # double 0.54022400000000004
	.quad	0x4014d50c1b97353b              # double 5.2080539999999997
	.quad	0x400ecf01fb82c2bd              # double 3.8510779999999998
	.quad	0x401fbd1e108c3f3e              # double 7.934685
	.quad	0x4016f15b9a5a89b9              # double 5.7357009999999997
	.quad	0x4003226e5471715c              # double 2.3918119999999998
	.quad	0x401c5a7fc32ebe59              # double 7.0883779999999996
	.quad	0x401ff050bd87b56c              # double 7.9846830000000004
	.quad	0x40170fa3b9ae0c17              # double 5.7652729999999996
	.quad	0x4021286b15f88fc9              # double 8.5789419999999996
	.quad	0x4022ef8e9f6a93f3              # double 9.4678850000000007
	.quad	0x4003532617c1bda5              # double 2.4156
	.quad	0x4014cc48adeebb34              # double 5.1994959999999999
	.quad	0x3ffe146e4c0df58c              # double 1.879988
	.quad	0x4021c097a67a52ac              # double 8.8761569999999991
	.quad	0x401e284167a95c85              # double 7.5393119999999997
	.quad	0x40130b38d60a6330              # double 4.7609589999999997
	.quad	0x400667cd03537197              # double 2.800684
	.quad	0x401620157eed45e9              # double 5.5313319999999999
	.quad	0x401ff0efdc9c4da9              # double 7.9852899999999999
	.quad	0x4022ee7253da72a8              # double 9.4657160000000004
	.quad	0x4022443aa79bbadc              # double 9.1332599999999999
	.quad	0x4014b14445aa2e3c              # double 5.1731119999999997
	.quad	0x402349e4b44a1f08              # double 9.6443229999999999
	.quad	0x40018c5d206c8712              # double 2.1935370000000001
	.quad	0x40178a415f45e0b5              # double 5.8850150000000001
	.quad	0x4022470dc768dfbd              # double 9.1387769999999993
	.quad	0x4021196b54e2b064              # double 8.5496470000000002
	.quad	0x401ae16e37154003              # double 6.7201469999999999
	.quad	0x400b0b0b7c3504c5              # double 3.3803930000000002
	.quad	0x400460d23d4f15e8              # double 2.5472760000000001
	.quad	0x3ffe10a244630660              # double 1.8790610000000001
	.quad	0x40059d8e86402081              # double 2.7019319999999998
	.quad	0x3ff3671476af89c6              # double 1.212666
	.quad	0x4009055fbb517a46              # double 3.127624
	.quad	0x4020020ba1f4b1ee              # double 8.0039949999999997
	.quad	0x40003f70de8f6cf0              # double 2.030977
	.quad	0x3ff8fc5bd0e12e84              # double 1.5616110000000001
	.quad	0x3fd1f79c842fa509              # double 0.28073799999999999
	.quad	0x3ff1363c31df761d              # double 1.0757410000000001
	.quad	0x4023e644fa05143c              # double 9.949745
	.quad	0x400f4043a2163fdd              # double 3.9063789999999998
	.quad	0x400cf022dd7a99fa              # double 3.617254
	.quad	0x400b3231c64ba94c              # double 3.3995090000000001
	.quad	0x401ba0bd87b56b87              # double 6.9069729999999998
	.quad	0x4014dd6238da3c21              # double 5.2161949999999999
	.quad	0x401a39118c197e56              # double 6.5557309999999998
	.quad	0x3feeae4d1a650614              # double 0.95877699999999999
	.quad	0x40200a37ef5a964f              # double 8.0199580000000008
	.quad	0x4017c8919ef954eb              # double 5.9458679999999999
	.quad	0x4020d6c8d5c74752              # double 8.4195010000000003
	.quad	0x401ac85a4f00ef13              # double 6.6956569999999997
	.quad	0x4003698a222d5172              # double 2.4265330000000001
	.quad	0x401117d9dba908a2              # double 4.2732919999999996
	.quad	0x401549bdc69f8c22              # double 5.3220130000000001
	.quad	0x400bc875d56f32be              # double 3.4728810000000001
	.quad	0x3ff192630ec31162              # double 1.098239
	.quad	0x3ff2dbac2df0d413              # double 1.178631
	.quad	0x401841886df82b1f              # double 6.0639969999999996
	.quad	0x40137f20ea5b530d              # double 4.8741490000000001
	.quad	0x400e1a9c12f09d8c              # double 3.7629929999999998
	.quad	0x4009fce075f6fd22              # double 3.248475
	.quad	0x4008a6cf41f212d7              # double 3.0814499999999998
	.quad	0x4007eb53d640e9d5              # double 2.989906
	.quad	0x3fdb24851a869403              # double 0.42410399999999998
	.quad	0x400d241ede1198af              # double 3.6426370000000001
	.quad	0x4023033aeee95747              # double 9.5063089999999998
	.quad	0x4005b82a12f90108              # double 2.7149239999999999
	.quad	0x40061305100a393f              # double 2.759287
	.quad	0x3fff4ff0025bfad3              # double 1.9570160000000001
	.quad	0x3ffad24180d3cff6              # double 1.6763319999999999
	.quad	0x40223a97e132b55f              # double 9.1144400000000001
	.quad	0x3fe5bc89f40a2878              # double 0.67926500000000001
	.quad	0x400f2de4c51116a9              # double 3.8974090000000001
	.quad	0x401f743393ab430f              # double 7.8634779999999997
	.quad	0x401d262c77574f72              # double 7.2872789999999998
	.quad	0x3ffe0cf1800a7c5b              # double 1.8781600000000001
	.quad	0x3fe74eb356da0169              # double 0.72835700000000003
	.quad	0x40080ae6c8f75537              # double 3.0053230000000002
	.quad	0x401070574b407033              # double 4.1097080000000004
	.quad	0x400983aa79bbadc1              # double 3.1892900000000002
	.quad	0x40237aac322291fb              # double 9.7395949999999995
	.quad	0x40238ec3547e0696              # double 9.7788339999999998
	.quad	0x401f572d1aeb3dd1              # double 7.8351329999999999
	.quad	0x4018f916ca46e08f              # double 6.2432509999999999
	.quad	0x402394245f5ad96a              # double 9.7893399999999993
	.quad	0x3fe96d6fda836eb5              # double 0.79460900000000001
	.quad	0x4013b4c447c30d30              # double 4.9265299999999996
	.quad	0x400edcde5d18090b              # double 3.8578459999999999
	.quad	0x3fdfc0f88333fc87              # double 0.49615300000000001
	.quad	0x3ffd50f94c87980f              # double 1.8322689999999999
	.quad	0x40157ea4228997c4              # double 5.3736730000000001
	.quad	0x4010fbcf0b6b6e0d              # double 4.2459069999999999
	.quad	0x400f2c93a7115161              # double 3.896766
	.quad	0x3ffec8919ef954eb              # double 1.923967
	.quad	0x4013bb1290257c91              # double 4.9326879999999997
	.quad	0x401198ba40d90e24              # double 4.3991480000000003
	.quad	0x4007a30c23fab10c              # double 2.9546130000000002
	.quad	0x4015680bed740c41              # double 5.3516079999999997
	.quad	0x4021e9b52007dd44              # double 8.9564599999999998
	.quad	0x3fd7189374bc6a7f              # double 0.360875
	.quad	0x400e8aaeafab53d6              # double 3.8177159999999999
	.quad	0x40220a35b4edb2f6              # double 9.0199409999999993
	.quad	0x40125763e4abe6a3              # double 4.5853419999999998
	.quad	0x4019e352220bc383              # double 6.4719930000000003
	.quad	0x401fa5b89939218a              # double 7.9118370000000002
	.quad	0x3ff9b634dad31fcd              # double 1.606984
	.quad	0x4010f6f976790321              # double 4.2411859999999999
	.quad	0x4023ec3cc07aaef3              # double 9.9614010000000003
	.quad	0x40157b4245f5ad97              # double 5.3703700000000003
	.quad	0x3ffa4ae429e0a41a              # double 1.643284
	.quad	0x3ff813ac4f7ec354              # double 1.5048029999999999
	.quad	0x40091bd5992428d4              # double 3.1385909999999999
	.quad	0x4016efff36ac6477              # double 5.7343719999999996
	.quad	0x401d138de6ddf00b              # double 7.2690960000000002
	.quad	0x40092efd438d1d8a              # double 3.1479439999999999
	.quad	0x400774e4430b178b              # double 2.9320759999999999
	.quad	0x3ff510f94c87980f              # double 1.3166439999999999
	.quad	0x3ff40abc5154866a              # double 1.252621
	.quad	0x4005ab28d8665e03              # double 2.708574
	.quad	0x40182c5ef62f9ca6              # double 6.0433310000000002
	.quad	0x3ff52920c069e7fb              # double 1.322541
	.quad	0x4022901669ced0b3              # double 9.2814209999999999
	.quad	0x400571897a67a52b              # double 2.6804380000000001
	.quad	0x40042766c6de7642              # double 2.5192389999999998
	.quad	0x3fdc65cf67b1c001              # double 0.443714
	.quad	0x4019b08893b7d849              # double 6.422396
	.quad	0x3fdc2ba9d1f60179              # double 0.44016499999999997
	.quad	0x400ee44e93e1c9b4              # double 3.861478
	.quad	0x4022a354195cc858              # double 9.319001
	.quad	0x400976dd26b723ee              # double 3.183039
	.quad	0x3ff7a013660e51d2              # double 1.4765809999999999
	.quad	0x4019c724fa8b4bf9              # double 6.444477
	.quad	0x40111d82ba5a0382              # double 4.2788190000000004
	.quad	0x40138d002e2328fa              # double 4.887696
	.quad	0x3ffe8aa326e11559              # double 1.908847
	.quad	0x402217f88765ba6f              # double 9.046818
	.quad	0x4019a851eb851eb8              # double 6.4143749999999997
	.quad	0x40134015c209246c              # double 4.8125830000000001
	.quad	0x4003b5104d551d69              # double 2.4634100000000001
	.quad	0x4015083f4eca686e              # double 5.2580539999999996
	.quad	0x401c563ed0f62739              # double 7.0842239999999999
	.quad	0x3fd402b40f66a551              # double 0.31266500000000003
	.quad	0x4023c1d4306e5cd5              # double 9.8785720000000001
	.quad	0x402133d8e0008638              # double 8.6012640000000005
	.quad	0x40209e412cf0f9d3              # double 8.3090910000000004
	.quad	0x4009858e64b23140              # double 3.190213
	.quad	0x400d78140dd3fe19              # double 3.6836319999999998
	.quad	0x3fd9a85caafbc1ad              # double 0.40090100000000001
	.quad	0x4018a1a3b14a9047              # double 6.157851
	.quad	0x4018d7d955714b9d              # double 6.2107900000000003
	.quad	0x40112aff6d330942              # double 4.2919900000000002
	.quad	0x401a25e74299d884              # double 6.5370150000000002
	.quad	0x400f6da87a072d1b              # double 3.928544
	.quad	0x40235f648c7192ea              # double 9.6863139999999994
	.quad	0x4023e3bbe878fabe              # double 9.9447930000000007
	.quad	0x401ee5d031055b8a              # double 7.7244270000000004
	.quad	0x4017fbb8c32a8c9c              # double 5.9958220000000004
	.quad	0x4004aef99806f263              # double 2.5854370000000002
	.quad	0x402383f78bbd3804              # double 9.7577479999999994
	.quad	0x401576c0d6f544bb              # double 5.3659699999999999
	.quad	0x40012bb7f9d6f113              # double 2.146347
	.quad	0x401656c0d6f544bb              # double 5.5847199999999999
	.quad	0x3ff466f60e0eb67c              # double 1.275137
	.quad	0x40177a5bd944aa54              # double 5.869491
	.quad	0x4012bfce3150dae4              # double 4.6873100000000001
	.quad	0x40223655e28aa433              # double 9.1061239999999994
	.quad	0x40011ff69014b59a              # double 2.1406070000000001
	.quad	0x3ffd8cf6be37de94              # double 1.8469150000000001
	.quad	0x400dd93a2df9378f              # double 3.7310680000000001
	.quad	0x4020cd3bd1676641              # double 8.4008470000000006
	.quad	0x40103a5ce5b4245f              # double 4.0569949999999997
	.quad	0x401b219a415f45e1              # double 6.7828150000000003
	.quad	0x4014c2b1704ff434              # double 5.1901299999999999
	.quad	0x3fc5d3bafd976ff4              # double 0.17052400000000001
	.quad	0x400548c26138fffc              # double 2.6605270000000001
	.quad	0x3ff1ac083126e979              # double 1.1045
	.quad	0x4023189fe86833c6              # double 9.548095
	.quad	0x3ffa239c51dabe27              # double 1.633694
	.quad	0x3ff274dad31fcd25              # double 1.153529
	.quad	0x4020cc58eeae9ee4              # double 8.3991159999999993
	.quad	0x40199e71476af89c              # double 6.4047289999999997
	.quad	0x3ff1dc065b63d3e5              # double 1.116217
	.quad	0x40238318fc504817              # double 9.7560500000000001
	.quad	0x3fff727cbf6e3f79              # double 1.9654510000000001
	.quad	0x401934434e3369ba              # double 6.3010380000000001
	.quad	0x401963586ca89fc7              # double 6.3470170000000001
	.quad	0x401f8c069e7fb268              # double 7.8867440000000001
	.quad	0x401246eeb702602d              # double 4.5692700000000004
	.quad	0x4010d58644523f68              # double 4.20852
	.quad	0x4008d680e0653006              # double 3.1047380000000002
	.quad	0x3fe707bfe7e1fc09              # double 0.719696
	.quad	0x4020614812be48a6              # double 8.1900030000000008
	.quad	0x400ea577d955714c              # double 3.8307950000000002
	.quad	0x401724e09784ec63              # double 5.7860129999999996
	.quad	0x3fe6b4c5da6a4441              # double 0.70956699999999995
	.quad	0x40237fa56de3326a              # double 9.7493090000000002
	.quad	0x401fab291b823c86              # double 7.9171490000000002
	.quad	0x401ee9de8b3b3205              # double 7.7283879999999998
	.quad	0x40205b6ed677707a              # double 8.1785800000000002
	.quad	0x3ffc2d6451b93038              # double 1.761082
	.quad	0x40021b96af038e2a              # double 2.263471
	.quad	0x4021c1dc93ea2d30              # double 8.8786360000000002
	.quad	0x4022e91600f34507              # double 9.4552460000000007
	.quad	0x4014756e264e4862              # double 5.1146779999999996
	.quad	0x4000e21858bc59b8              # double 2.110398
	.quad	0x401485a1016ce78a              # double 5.1304970000000001
	.quad	0x4013edfb0d51f81a              # double 4.9824029999999997
	.quad	0x4017562aa19439de              # double 5.8341469999999997
	.quad	0x401a03dc486ad2dd              # double 6.5037700000000003
	.quad	0x401ff354c122749f              # double 7.9876279999999999
	.quad	0x401f9dedf1e0828c              # double 7.9042279999999998
	.quad	0x4001ab7e4de3b8a2              # double 2.2087370000000002
	.quad	0x401178787485e3da              # double 4.3676469999999998
	.quad	0x3fda2a497fa5d28d              # double 0.408831
	.quad	0x401f71d2178f68be              # double 7.8611529999999998
	.quad	0x4018337718655193              # double 6.0502589999999996
	.quad	0x4018c54e6e221c8a              # double 6.1926819999999996
	.quad	0x3ff96c13b9f127f6              # double 1.588886
	.quad	0x4005d0fa58f7121b              # double 2.7270400000000001
	.quad	0x3fd0873ffac1d29e              # double 0.25825500000000001
	.quad	0x401044cd31769a91              # double 4.0671889999999999
	.quad	0x4014654f7a919696              # double 5.0989360000000001
	.quad	0x4020462cdc011d36              # double 8.1370609999999992
	.quad	0x401d56e86c6583e8              # double 7.3348709999999996
	.quad	0x4022073a14cec41e              # double 9.0141150000000003
	.quad	0x401dba808c8259e2              # double 7.432131
	.quad	0x4004c7a95c853c15              # double 2.5974910000000002
	.quad	0x4013f5dfeb8d8234              # double 4.9901119999999999
	.quad	0x40217566277c45cc              # double 8.7292950000000004
	.quad	0x4014b2324c836651              # double 5.1740199999999996
	.quad	0x4014ea450acc0bdd              # double 5.2287790000000003
	.quad	0x4015a1c9b4139863              # double 5.4079959999999998
	.quad	0x4017f0218def416c              # double 5.9845030000000001
	.quad	0x3fd9fd1569f49060              # double 0.40607199999999999
	.quad	0x400d3be553ac4f7f              # double 3.6542460000000001
	.quad	0x40024cfd08d4bad8              # double 2.2875920000000001
	.quad	0x4019048fd9fd36f8              # double 6.2544550000000001
	.quad	0x400504febd09e12a              # double 2.6274389999999999
	.quad	0x3ff89948dc11e42e              # double 1.537423
	.quad	0x400f1b23dd54da4d              # double 3.888252
	.quad	0x4022557d3910c2c6              # double 9.1669710000000002
	.quad	0x3fe0cea8da7f3cf7              # double 0.525227
	.quad	0x4009534373f316e3              # double 3.1656559999999998
	.quad	0x402236d82ba5a038              # double 9.1071179999999998
	.quad	0x401b86f262888b54              # double 6.8817839999999997
	.quad	0x400d2d466f5019f4              # double 3.6471070000000001
	.quad	0x4020b23bddfc9ff9              # double 8.3481129999999997
	.quad	0x4023a38cb8e086be              # double 9.8194330000000001
	.quad	0x4001960e94ee392e              # double 2.1982699999999999
	.quad	0x4009bc2f405f6ba0              # double 3.2168869999999998
	.quad	0x401d4ae03b3e9a70              # double 7.3231210000000004
	.quad	0x4010eee73e681a9c              # double 4.2333040000000004
	.quad	0x40101d972cd7cf5f              # double 4.0288969999999997
	.quad	0x3fb64da09cc319c6              # double 0.087122000000000004
	.quad	0x401a5810624dd2f2              # double 6.5860000000000003
	.quad	0x4018abf0563ed0f6              # double 6.1679089999999999
	.quad	0x4023037fe08aefb3              # double 9.5068350000000005
	.quad	0x401b32e6ea854478              # double 6.799709
	.quad	0x4019acda2b5a20de              # double 6.4188010000000002
	.quad	0x3f98051c9f72f76e              # double 0.023456999999999999
	.quad	0x4021ed22a6f3f530              # double 8.9631550000000004
	.quad	0x401ea02e6644d877              # double 7.6564269999999998
	.quad	0x3fe42e9468017119              # double 0.63068599999999997
	.quad	0x4020d9c304ccee5b              # double 8.4253160000000005
	.quad	0x3ffc6bc83a96d4c3              # double 1.7763139999999999
	.quad	0x3ff62c42e9899bf6              # double 1.3858060000000001
	.quad	0x3fee35f5f0b28523              # double 0.94408700000000001
	.quad	0x400fe7f993d5347a              # double 3.9882689999999998
	.quad	0x40143fcc9ea9a3d3              # double 5.0623040000000001
	.quad	0x3ff7c8d08919ef95              # double 1.4865269999999999
	.quad	0x4017407182235b4f              # double 5.8129330000000001
	.quad	0x401a28feac42e98a              # double 6.5400340000000003
	.quad	0x40238beff1950332              # double 9.7733150000000002
	.quad	0x401ffe6b8305d95e              # double 7.9984570000000001
	.quad	0x401117ce52deca25              # double 4.2732479999999997
	.quad	0x3ff3795c42203600              # double 1.2171289999999999
	.quad	0x4013d8c75c4a83b2              # double 4.9616980000000002
	.quad	0x40181179bfdf7e80              # double 6.0170659999999998
	.quad	0x4013dd48882f0e0b              # double 4.9660970000000004
	.quad	0x3fee1335d249e450              # double 0.93984500000000004
	.quad	0x40126b4dcebfec14              # double 4.6047890000000002
	.quad	0x3ffaab8d82342246              # double 1.6668829999999999
	.quad	0x401aaed1394317ad              # double 6.6707200000000002
	.quad	0x3fe8f60bf5d78812              # double 0.78003500000000003
	.quad	0x401a36a1a500d5e9              # double 6.5533510000000001
	.quad	0x4018b1de69ad42c4              # double 6.1737000000000002
	.quad	0x400df693c03bc4d2              # double 3.7453989999999999
	.quad	0x40173ff25e56cd6c              # double 5.8124479999999998
	.quad	0x40100e80bed740c4              # double 4.0141629999999999
	.quad	0x400dfd651b0ccbc0              # double 3.7487279999999998
	.quad	0x4023813a71151612              # double 9.7523990000000005
	.quad	0x3ff7b17bd8be7297              # double 1.480831
	.quad	0x4005445c358afc48              # double 2.658379
	.quad	0x401b2b6e503fb374              # double 6.7924129999999998
	.quad	0x401c82e8c0485a0c              # double 7.1278410000000001
	.quad	0x401f68bbd3804535              # double 7.8522790000000002
	.quad	0x40041f4a98aa8651              # double 2.515279
	.quad	0x402169b3aeee9574              # double 8.7064489999999992
	.quad	0x4017cef8ceb356da              # double 5.952121
	.quad	0x4011186594af4f0e              # double 4.2738250000000004
	.quad	0x401e0d03968d759f              # double 7.512709
	.quad	0x401106fe2e6ea854              # double 4.2568289999999998
	.quad	0x40132dae3e6c4c59              # double 4.7946099999999996
	.quad	0x40060fba8826aa8f              # double 2.7576800000000001
	.quad	0x4021b21fd1569f49              # double 8.847899
	.quad	0x3fdbb3b7521144cc              # double 0.43284400000000001
	.quad	0x40006533b1077469              # double 2.0494150000000002
	.quad	0x401a719ef954eb14              # double 6.6109580000000001
	.quad	0x3ff7c44f1a1986ba              # double 1.4854270000000001
	.quad	0x4020643ce2089e34              # double 8.1957769999999996
	.quad	0x3ff3ee557de0d66f              # double 1.245687
	.quad	0x401bef31b152f3c3              # double 6.9835880000000001
	.quad	0x4016203fb3743633              # double 5.5314930000000002
	.quad	0x40017b9bed30f063              # double 2.1853560000000001
	.quad	0x40233397353b4b30              # double 9.6007630000000006
	.quad	0x3fff63bddfc9ff93              # double 1.961851
	.quad	0x400ff64840e1719f              # double 3.9952549999999998
	.quad	0x4017e277c45cbbc3              # double 5.9711600000000002
	.quad	0x4022559c8c9320da              # double 9.1672100000000007
	.quad	0x3ff3a0a2014727dd              # double 1.2267170000000001
	.quad	0x401824057082491b              # double 6.035177
	.quad	0x4011da5a469d7343              # double 4.4632350000000001
	.quad	0x4016fedaa92e6213              # double 5.7488809999999999
	.quad	0x40213cb2314013ec              # double 8.6185469999999995
	.quad	0x40017a82e87d2c7c              # double 2.1848200000000002
	.quad	0x40151a0b5ed8d36b              # double 5.2754339999999997
	.quad	0x40028d78c436fc16              # double 2.3190780000000002
	.quad	0x3fc2deebb341e14c              # double 0.147428
	.quad	0x4012d215fcc1871e              # double 4.7051619999999996
	.quad	0x4002122ea0fd3b2a              # double 2.2588780000000002
	.quad	0x4011197d06bbdbe4              # double 4.2748910000000002
	.quad	0x401cef3300de4c51              # double 7.2335929999999999
	.quad	0x40155b83cf2cf95d              # double 5.3393699999999997
	.quad	0x3ff462f37fbefd00              # double 1.2741579999999999
	.quad	0x3ff0d1947cfa26a2              # double 1.051167
	.quad	0x401dd91a75cd0bb7              # double 7.4620150000000001
	.quad	0x401093508f648c72              # double 4.1438620000000004
	.quad	0x401a61522a6f3f53              # double 6.59504
	.quad	0x40220359ff4fd6d8              # double 9.0065460000000002
	.quad	0x4021bde8f6cefed6              # double 8.8709179999999996
	.quad	0x4009b0c564f97edc              # double 3.2113139999999998
	.quad	0x40236f6d117b5287              # double 9.7176290000000005
	.quad	0x4002d4d26fa3fcca              # double 2.353917
	.quad	0x40161cd35a858794              # double 5.5281500000000001
	.quad	0x3fecea012599ed7c              # double 0.90356499999999995
	.quad	0x40051449129888f8              # double 2.6349049999999998
	.quad	0x40216cefed63454a              # double 8.7127680000000005
	.quad	0x4021317ca2120e1f              # double 8.5966539999999991
	.quad	0x4009945f9df548ed              # double 3.1974480000000001
	.quad	0x401a91fc4c165908              # double 6.6425640000000001
	.quad	0x402367318fc50481              # double 9.7015499999999992
	.quad	0x401d144241c3efae              # double 7.2697839999999996
	.quad	0x3ffe00cf9e3864cb              # double 1.8751979999999999
	.quad	0x4012e9ec2ce46499              # double 4.72844
	.quad	0x401cb473cd573648              # double 7.1762230000000002
	.quad	0x4022cfeda6612839              # double 9.4061099999999999
	.quad	0x40227db1422ccb3a              # double 9.2454929999999997
	.quad	0x40031e6687f455a8              # double 2.3898440000000001
	.quad	0x400718c6d612c6ac              # double 2.8870979999999999
	.quad	0x400ce1e8a2ec28b3              # double 3.6103070000000002
	.quad	0x3ff97954eb13dfb1              # double 1.592122
	.quad	0x3ff78ee7c49fd7a1              # double 1.4723889999999999
	.quad	0x4006926527a20579              # double 2.821482
	.quad	0x4003d1d798d8a97a              # double 2.4774620000000001
	.quad	0x3fda78af3e468cac              # double 0.41361599999999998
	.quad	0x4013d2a0ec743201              # double 4.955692
	.quad	0x40214563886594af              # double 8.6355249999999995
	.quad	0x400b2de4c51116a9              # double 3.3974090000000001
	.quad	0x401cbf9d6f112fd3              # double 7.1871239999999998
	.quad	0x401f8961c36976bc              # double 7.8841619999999999
	.quad	0x400247b1c0010c6f              # double 2.2850069999999998
	.quad	0x402378d08919ef95              # double 9.7359659999999994
	.quad	0x401724f2f123c42a              # double 5.7860829999999996
	.quad	0x3fcfa9da597d49d8              # double 0.24737100000000001
	.quad	0x401e06c2acb85a4f              # double 7.5066019999999999
	.quad	0x3fb8effe2a3cea6c              # double 0.097411999999999998
	.quad	0x4018f9bcba301217              # double 6.2438840000000004
	.quad	0x401ddfa54c554328              # double 7.4684039999999995
	.quad	0x40156223e1869835              # double 5.3458399999999999
	.quad	0x401e3d0247021d11              # double 7.5595790000000002
	.quad	0x3fc7dc8b86b15f89              # double 0.186418
	.quad	0x40234783be6601bd              # double 9.6396770000000007
	.quad	0x3fe7de2ac3222920              # double 0.74587000000000003
	.quad	0x4008a681a9b8cb8e              # double 3.081302
	.quad	0x401327d41743e964              # double 4.7888950000000001
	.quad	0x3fb653a81dc0db27              # double 0.087214
	.quad	0x401081ec4e7253da              # double 4.1268779999999996
	.quad	0x401eedf505d0fa59              # double 7.73238
	.quad	0x4014e5d56f32bdc2              # double 5.2244469999999996
	.quad	0x402131d4b6a619db              # double 8.5973260000000007
	.quad	0x4016eee9142b302f              # double 5.7333109999999996
	.quad	0x3ff46ad2dcb1465f              # double 1.2760800000000001
	.quad	0x4023bd8f7121ab4b              # double 9.8702349999999992
	.quad	0x4023a4e3de6149c7              # double 9.822051
	.quad	0x401b6fb00bcbe61d              # double 6.85907
	.quad	0x40063d7a13c254a4              # double 2.7800180000000001
	.quad	0x4021b7feb074a772              # double 8.8593650000000004
	.quad	0x401619c304ccee5b              # double 5.5251580000000002
	.quad	0x40072b790fb65669              # double 2.8962270000000001
	.quad	0x401d539799e518f4              # double 7.3316330000000001
	.quad	0x401aed94d0dcfcc6              # double 6.7320130000000002
	.quad	0x400a4876e1deacc9              # double 3.2853829999999999
	.quad	0x40161ee631f8a090              # double 5.5301749999999998
	.quad	0x4022b12b7fe08af0              # double 9.3460350000000005
	.quad	0x4013256605ee568a              # double 4.7865219999999997
	.quad	0x401f0327ed84d339              # double 7.753082
	.quad	0x3fff412f09d8c6d6              # double 1.953414
	.quad	0x4020472d3c792d13              # double 8.1390170000000008
	.quad	0x3ff68738a3b57c4e              # double 1.408013
	.quad	0x4001b9e9d0e991ff              # double 2.2157779999999998
	.quad	0x4022181fb82c2bd8              # double 9.0471170000000001
	.quad	0x3fcd75c0767d34df              # double 0.230156
	.quad	0x40107c5197a24895              # double 4.1214050000000002
	.quad	0x40217af6c69b5a64              # double 8.740164
	.quad	0x401cca771c970f7c              # double 7.1977200000000003
	.quad	0x401f30999dcb5782              # double 7.7974610000000002
	.quad	0x3ff9b2b4528283d3              # double 1.6061289999999999
	.quad	0x4021762eb1c432ca              # double 8.7308249999999994
	.quad	0x401a9c4b90214ad3              # double 6.6526319999999997
	.quad	0x400c45e6ff7dfa01              # double 3.5341320000000001
	.quad	0x40014ce5710880d8              # double 2.162547
	.quad	0x401d61322f2734f8              # double 7.3449179999999998
	.quad	0x401473a5c1c6088d              # double 5.1129369999999996
	.quad	0x401bd82b1f687b14              # double 6.9611020000000003
	.quad	0x40229e733ebbfd72              # double 9.3094730000000006
	.quad	0x4022abed0f627393              # double 9.3357930000000007
	.quad	0x402243ca5375c8da              # double 9.132403
	.quad	0x402142096787ce96              # double 8.628978
	.quad	0x4022031832fcac8e              # double 9.0060439999999993
	.quad	0x4011437542a23c00              # double 4.3158770000000004
	.quad	0x401cc1b3aeee9574              # double 7.1891619999999996
	.quad	0x3fd26616b54e2b06              # double 0.28748099999999999
	.quad	0x4023bc09e55c0fcb              # double 9.8672629999999994
	.quad	0x3fc58a5ce5b4245f              # double 0.16828499999999999
	.quad	0x401aba7daa4fca43              # double 6.6821200000000003
	.quad	0x401887e308787486              # double 6.1327020000000001
	.quad	0x3fe5fbc1acde19fc              # double 0.68698199999999998
	.quad	0x401b3d0e12e83a11              # double 6.8096240000000003
	.quad	0x3ffc751ac9afe1da              # double 1.7785899999999999
	.quad	0x3fe0fc158fb43d8a              # double 0.53077200000000002
	.quad	0x40160c21187e7c07              # double 5.5118450000000001
	.quad	0x4022bd54b8bef8cf              # double 9.3697870000000005
	.quad	0x401524473cd57364              # double 5.2854279999999996
	.quad	0x4012c0620ab71327              # double 4.6878739999999999
	.quad	0x3fe1bb7521144cbe              # double 0.55413299999999999
	.quad	0x401e15f676ea4229              # double 7.5214480000000003
	.quad	0x40209ee0f3cb3e57              # double 8.3103099999999994
	.quad	0x4014522c45026890              # double 5.080247
	.quad	0x3ff127a311e85fd0              # double 1.0721769999999999
	.quad	0x3fed73e681a9b8cc              # double 0.92039800000000004
	.quad	0x4020ea428d434a02              # double 8.4575390000000006
	.quad	0x4023cf9f666234a8              # double 9.9055129999999991
	.quad	0x400ca1b003686a4d              # double 3.5789490000000002
	.quad	0x4011ff2ba9d1f601              # double 4.4991899999999996
	.quad	0x4020265cd4ed2cbf              # double 8.0749270000000006
	.quad	0x40121e8ea39c51db              # double 4.5298410000000002
	.quad	0x40032666ec9e236c              # double 2.393751
	.quad	0x401c2dddf43c7d5f              # double 7.0447920000000002
	.quad	0x401524666ec9e237              # double 5.2855470000000002
	.quad	0x3ff89105e1c15098              # double 1.535406
	.quad	0x401a8b5e0f7fcfc4              # double 6.636101
	.quad	0x401077dfe32a0664              # double 4.1170650000000002
	.quad	0x4011945132f87ad1              # double 4.3948410000000004
	.quad	0x4020482c6ef3d3a2              # double 8.1409640000000003
	.quad	0x401f4424a276b7ed              # double 7.8165459999999997
	.quad	0x4022fc69d7342edc              # double 9.4929950000000005
	.quad	0x40212689ca18bd66              # double 8.5752699999999997
	.quad	0x40226ad03d9a9542              # double 9.2086199999999998
	.quad	0x4010a94af4f0d845              # double 4.1653250000000002
	.quad	0x402035e82d7b634e              # double 8.1052870000000006
	.quad	0x3fee4b3e5753a3ec              # double 0.94668499999999999
	.quad	0x4022577f06705c89              # double 9.1708909999999992
	.quad	0x4011b907d912556d              # double 4.4306939999999999
	.quad	0x401ac37eb28d8666              # double 6.6909130000000001
	.quad	0x401259ba5e353f7d              # double 4.5876250000000001
	.quad	0x3ffd0dda48b65237              # double 1.815882
	.quad	0x40234b910c2c5e2d              # double 9.6475910000000002
	.quad	0x401dc90b84988095              # double 7.4463330000000001
	.quad	0x4000be5321e603d5              # double 2.0929319999999998
	.quad	0x4021b252ac753e70              # double 8.8482869999999991
	.quad	0x401c2bd05af6c69b              # double 7.0427869999999997
	.quad	0x40208aaac1094a2c              # double 8.2708340000000006
	.quad	0x3fc7d3b29a1b9f99              # double 0.18614800000000001
	.quad	0x3ff257efe0ce0b91              # double 1.146469
	.quad	0x3ff333b7521144cc              # double 1.200126
	.quad	0x4018af8ec0f88334              # double 6.171443
	.quad	0x3fea714b9cb6848c              # double 0.82633
	.quad	0x3feb2e85b9e8c47a              # double 0.84942899999999999
	.quad	0x4016b708aac96cc6              # double 5.678744
	.quad	0x3f9f61672324c836              # double 0.030644999999999999
	.quad	0x40217009b30728e9              # double 8.7188239999999997
	.quad	0x401f02bc72e275ab              # double 7.7526719999999995
	.quad	0x3fd2810e8858ff76              # double 0.28912700000000002
	.quad	0x3ff481e2584f4c6e              # double 1.2817099999999999
	.quad	0x3feab41bfbdf090f              # double 0.83448599999999995
	.quad	0x3ff0b0fcf80dc337              # double 1.04321
	.quad	0x400f4ca03c4b09ea              # double 3.9124150000000002
	.quad	0x401ea364bec679cc              # double 7.6595639999999996
	.quad	0x4022d0448cf7caa7              # double 9.4067729999999993
	.quad	0x401fe1572580c309              # double 7.970059
	.quad	0x4015aaa9717df19d              # double 5.4166619999999996
	.quad	0x3ff7514b167ec786              # double 1.4573469999999999
	.quad	0x3fe374aba3875925              # double 0.60799199999999998
	.quad	0x401eff13059641f6              # double 7.7490959999999998
	.quad	0x400734b945308bb9              # double 2.900744
	.quad	0x3fd254f3775b8130              # double 0.286435
	.quad	0x4006d9389b52007e              # double 2.8560650000000001
	.quad	0x3fa2a7ded6ba8c58              # double 0.036436999999999997
	.quad	0x4010c22813448063              # double 4.1896060000000004
	.quad	0x40142d9be4cd7492              # double 5.0445399999999996
	.quad	0x3fe60c868b9fdbd3              # double 0.689029
	.quad	0x4007f4cb1897a67a              # double 2.9945279999999999
	.quad	0x401948f605ab3aac              # double 6.3212510000000002
	.quad	0x4019d16fc9bc7714              # double 6.4545279999999998
	.quad	0x4020dc5ef62f9ca6              # double 8.4304120000000005
	.quad	0x4001f69b17481b22              # double 2.2454130000000001
	.quad	0x40026f5ec80c73ac              # double 2.3043800000000001
	.quad	0x3fe2a109d0635a42              # double 0.58215799999999995
	.quad	0x3ffb91ce28ed5f14              # double 1.7230970000000001
	.quad	0x400976cefed63455              # double 3.1830120000000002
	.quad	0x4021f14ab1d4f9c2              # double 8.9712730000000001
	.quad	0x400e688051c9f72f              # double 3.8010259999999998
	.quad	0x40104e1049235f81              # double 4.0762340000000004
	.quad	0x401fe81a1554fbdb              # double 7.9766620000000001
	.quad	0x401760b780346dc6              # double 5.8444500000000001
	.quad	0x401cbf3cb3e5753a              # double 7.1867549999999998
	.quad	0x3fe7b0813cab81f9              # double 0.74029599999999995
	.quad	0x4019dd113836a833              # double 6.4658860000000002
	.quad	0x401be0c5a8155d5f              # double 6.9695039999999997
	.quad	0x401aa40181e03f70              # double 6.6601619999999997
	.quad	0x4023533397dd00f7              # double 9.6625029999999991
	.quad	0x401b0f6d330941c8              # double 6.7650649999999999
	.quad	0x401d2144cbe1eb42              # double 7.282489
	.quad	0x401be2e09fe86834              # double 6.9715600000000002
	.quad	0x40221a98cc144029              # double 9.0519470000000002
	.quad	0x401c3755ffe6d58d              # double 7.0540390000000004
	.quad	0x4022367e846a5d6c              # double 9.1064340000000001
	.quad	0x3ff2c4e7253da72a              # double 1.1730719999999999
	.quad	0x3ff8214163779e9d              # double 1.508119
	.quad	0x400ba01d5c31593e              # double 3.4531809999999998
	.quad	0x3ffa174f722e1ac5              # double 1.6306909999999999
	.quad	0x3ffa048387df5cf2              # double 1.6261019999999999
	.quad	0x401462674080f990              # double 5.0960970000000003
	.quad	0x4016696e158750c2              # double 5.6029590000000002
	.quad	0x40210fb5aea3161a              # double 8.5306829999999998
	.quad	0x401bd9bcba301217              # double 6.9626340000000004
	.quad	0x40224e3a19008206              # double 9.152787
	.quad	0x40117ad794a6eb92              # double 4.3699630000000003
	.quad	0x401b172085b18549              # double 6.7725850000000003
	.quad	0x40230f6b5d462c34              # double 9.5301159999999995
	.quad	0x402149424e592967              # double 8.643084
	.quad	0x401b68a116659d13              # double 6.8521770000000002
	.quad	0x4022883ba3443d47              # double 9.2660800000000005
	.quad	0x3fc5296f6512a950              # double 0.165327
	.quad	0x401f0a0f4d7add16              # double 7.7598240000000001
	.quad	0x401f645ae5ffa3ba              # double 7.8480030000000003
	.quad	0x3fed9f666234a87e              # double 0.92570799999999998
	.quad	0x40123fa8f7db6e50              # double 4.5621679999999998
	.quad	0x4017a7cb70ac3a86              # double 5.913862
	.quad	0x3ff30edd48451330              # double 1.1911290000000001
	.quad	0x400e9acf7446f9ba              # double 3.8255910000000002
	.quad	0x4018f7c88e79aae7              # double 6.2419760000000002
	.quad	0x40227ceb13dfb0d5              # double 9.2439809999999998
	.quad	0x401160114d2f5dbc              # double 4.3438160000000003
	.quad	0x4011b4b9cb6848bf              # double 4.4264900000000003
	.quad	0x401a5389f83be660              # double 6.5815809999999999
	.quad	0x4016db2745bf26f2              # double 5.7140170000000001
	.quad	0x4019eee7c49fd7a1              # double 6.4833059999999998
	.quad	0x401d1f4adbc664d4              # double 7.2805590000000002
	.quad	0x400b308aac96cc60              # double 3.3987020000000001
	.quad	0x40225396f21f6cad              # double 9.1632610000000003
	.quad	0x4000537c1376d549              # double 2.0407639999999998
	.quad	0x400f94b72c5197a2              # double 3.9476149999999999
	.quad	0x4017b1b4784230fd              # double 5.92354
	.quad	0x4016d03e20ccff22              # double 5.7033620000000003
	.quad	0x40118d7e45803cd1              # double 4.3881769999999998
	.quad	0x4010908e581cf788              # double 4.1411680000000004
	.quad	0x3fde81344806290f              # double 0.476636
	.quad	0x3fdc53005814940c              # double 0.44256600000000001
	.quad	0x401332d0e5604189              # double 4.7996249999999998
	.quad	0x3ff8d71b0468448d              # double 1.552516
	.quad	0x40229d5c0fcb4f1e              # double 9.3073429999999995
	.quad	0x401801f10667f90e              # double 6.0018960000000003
	.quad	0x401707b5286b5914              # double 5.7575269999999996
	.quad	0x4021a96851223183              # double 8.8308739999999997
	.quad	0x40226bb688bda943              # double 9.2103769999999994
	.quad	0x3fad9578a2a90cd4              # double 0.057780999999999999
	.quad	0x4016431550ca1cef              # double 5.5655109999999999
	.quad	0x4000c2424a276b7f              # double 2.0948530000000001
	.quad	0x3fd55bb384fd2a63              # double 0.33372200000000002
	.quad	0x3fe6bdaf8df7a4e8              # double 0.71065500000000004
	.quad	0x4018c89dadfb506e              # double 6.1959140000000001
	.quad	0x3ff70c942d490e67              # double 1.440571
	.quad	0x3fe35c981beb1811              # double 0.60505299999999995
	.quad	0x40216c1700cd8559              # double 8.7111129999999992
	.quad	0x3ffc521144cbe1eb              # double 1.7700359999999999
	.quad	0x4022252135daad60              # double 9.0725189999999998
	.quad	0x4018b6ce358298cc              # double 6.1785209999999999
	.quad	0x4021075a1016ce79              # double 8.5143590000000007
	.quad	0x400a75eb7457c0b1              # double 3.3075779999999999
	.quad	0x40010f3cb3e5753a              # double 2.1324399999999999
	.quad	0x40214491f2dc2b0f              # double 8.6339260000000007
	.quad	0x40234b4bb5e0f7fd              # double 9.647062
	.quad	0x40002c74b838c112              # double 2.0217070000000001
	.quad	0x4019783a53b8e4b8              # double 6.3674099999999996
	.quad	0x4020cc4588a04d12              # double 8.398968
	.quad	0x401ef296b3354c12              # double 7.7369029999999999
	.quad	0x401ef976ff3ade22              # double 7.7436179999999997
	.quad	0x3fffad81adea8976              # double 1.97986
	.quad	0x401949b5a63f9a4a              # double 6.3219820000000002
	.quad	0x40215bfbbd7b2032              # double 8.6796550000000003
	.quad	0x4022514141e9af5c              # double 9.1587010000000006
	.quad	0x4011405814940bbb              # double 4.3128359999999999
	.quad	0x40162fe32a0663c7              # double 5.5467649999999997
	.quad	0x3fefc6cb966be7b0              # double 0.99301700000000004
	.quad	0x4012782fd75e2047              # double 4.6173700000000002
	.quad	0x401d2c016052502f              # double 7.2929740000000001
	.quad	0x40057d909f1f1498              # double 2.6863109999999999
	.quad	0x4016efb3fa6defc8              # double 5.7340850000000003
	.quad	0x401ade3b46fdeb53              # double 6.7170230000000002
	.quad	0x4023c10b1feeb2d1              # double 9.8770380000000006
	.quad	0x40217883ba3443d4              # double 8.7353799999999992
	.quad	0x3feba84dfce3150e              # double 0.86429500000000004
	.quad	0x3fc2775fb2edfe76              # double 0.14426800000000001
	.quad	0x4011176af89c5e70              # double 4.272869
	.quad	0x3fe5743419e30015              # double 0.670435
	.quad	0x4007d86c226809d5              # double 2.9806750000000002
	.quad	0x4017623422467be5              # double 5.8459019999999997
	.quad	0x400648f8e7ddca4b              # double 2.785631
	.quad	0x401bc11ec918e326              # double 6.9385940000000002
	.quad	0x4022bebfa8f7db6e              # double 9.3725559999999994
	.quad	0x4001899392189bd8              # double 2.1921759999999999
	.quad	0x40179884c6a3bde0              # double 5.8989440000000002
	.quad	0x4012d8027d88c1db              # double 4.710947
	.quad	0x4007bb0ee49f5169              # double 2.9663369999999998
	.quad	0x4022e180d3cff64d              # double 9.440436
	.quad	0x4003c3dee78183f9              # double 2.4706399999999999
	.quad	0x400cd6d3b6cbd988              # double 3.6048960000000001
	.quad	0x401c83f63c31df76              # double 7.1288689999999999
	.quad	0x4019aca1059ea572              # double 6.4185829999999999
	.quad	0x40090d22424a276b              # double 3.1314129999999998
	.quad	0x3ffab6427c7c5261              # double 1.669497
	.quad	0x3feb4c35ce182667              # double 0.85305299999999995
	.quad	0x401f82a305532618              # double 7.8775750000000002
	.quad	0x4021c066e43aa79c              # double 8.8757850000000004
	.quad	0x4009346887a8d64d              # double 3.1505899999999998
	.quad	0x4008190752da9867              # double 3.0122209999999998
	.quad	0x4011f78bbd380453              # double 4.4917439999999997
	.quad	0x401306d82ba5a038              # double 4.7566839999999999
	.quad	0x401129f72f76e610              # double 4.2909819999999996
	.quad	0x4023e59253543aeb              # double 9.9483820000000005
	.quad	0x4014368a50507a6c              # double 5.0532620000000001
	.quad	0x40218203c4b09e99              # double 8.7539350000000002
	.quad	0x4017bd6b65a9a805              # double 5.9349800000000004
	.quad	0x4023322339c0ebee              # double 9.597925
	.quad	0x4020b42352eb5f5f              # double 8.3518319999999999
	.quad	0x4000213f4a98aa86              # double 2.0162339999999999
	.quad	0x3ff08af922962cfe              # double 1.0339290000000001
	.quad	0x3ff419cf13cee9dd              # double 1.2563009999999999
	.quad	0x4020d60c7c0f4517              # double 8.4180639999999993
	.quad	0x40237652157689ca              # double 9.7310949999999998
	.quad	0x4022e862b27cbf6e              # double 9.4538779999999996
	.quad	0x40220f32bdc26dce              # double 9.0296839999999996
	.quad	0x4020e03947496aad              # double 8.4379369999999998
	.quad	0x40219ca6ca03c4b1              # double 8.8059600000000007
	.quad	0x3fe83ab649d388a9              # double 0.75716700000000003
	.quad	0x401016162f166e01              # double 4.0215690000000004
	.quad	0x4010025f633ce63a              # double 4.0023169999999997
	.quad	0x402196429e0a41a2              # double 8.7934769999999993
	.quad	0x40226f7186551937              # double 9.2176629999999999
	.quad	0x3fd410f51ac9afe2              # double 0.31353500000000001
	.quad	0x40206249a133c1ce              # double 8.1919679999999993
	.quad	0x4023f10060780fdc              # double 9.9707059999999998
	.quad	0x40009606b7aa25d9              # double 2.0732550000000001
	.quad	0x4023c35dedf1e083              # double 9.8815760000000008
	.quad	0x400f681fd9ba1b19              # double 3.9258419999999998
	.quad	0x4017c0b39192641b              # double 5.9381849999999998
	.quad	0x401f8805a2d72ffd              # double 7.8828339999999998
	.quad	0x4010556e264e4862              # double 4.0834279999999996
	.quad	0x4019a2656abde3fc              # double 6.4085900000000002
	.quad	0x4023f01d5c31593e              # double 9.9689739999999993
	.quad	0x4007e9afe1da7b0b              # double 2.9891049999999999
	.quad	0x4021bcc22ee4191a              # double 8.8686690000000006
	.quad	0x4013417df19d66ae              # double 4.8139570000000003
	.quad	0x4020c7a13c254a3c              # double 8.3899019999999993
	.quad	0x4021aa88ace24bba              # double 8.8330739999999999
	.quad	0x40214ded4a1ad645              # double 8.6522009999999998
	.quad	0x40050f5e41d4b6a6              # double 2.632504
	.quad	0x40217b22291fb3fa              # double 8.7404949999999992
	.quad	0x40233e71476af89c              # double 9.6219579999999993
	.quad	0x4008b8a32f44912a              # double 3.0901550000000002
	.quad	0x4011375536933a04              # double 4.304036
	.quad	0x402301ab8e8ea39c              # double 9.5032619999999994
	.quad	0x4020ada74c09c3ce              # double 8.3391669999999998
	.quad	0x400611d4f9c1f85d              # double 2.7587069999999998
	.quad	0x400806b9c304ccee              # double 3.0032839999999998
	.quad	0x3ffc916228134480              # double 1.7854939999999999
	.quad	0x4007a012599ed7c7              # double 2.95316
	.quad	0x401391522a6f3f53              # double 4.891915
	.quad	0x3ff9fc70c996b767              # double 1.624131
	.quad	0x3fe8c0096feb4a66              # double 0.77344199999999996
	.quad	0x40007f94855da273              # double 2.0622950000000002
	.quad	0x3fb2cc3e3193f6c2              # double 0.073428999999999994
	.quad	0x401e140357a35504              # double 7.5195439999999998
	.quad	0x400205a9a8049668              # double 2.2527650000000001
	.quad	0x40017dc1e7967caf              # double 2.1864050000000002
	.quad	0x400163cea6c1a049              # double 2.1737340000000001
	.quad	0x4006e3b46fdeb52d              # double 2.8611840000000002
	.quad	0x4014235c182ecaef              # double 5.0345310000000003
	.quad	0x401bebde3fbbd7b2              # double 6.98034
	.quad	0x4021caf166e008ea              # double 8.8963730000000005
	.quad	0x4005ea704bc27632              # double 2.7394720000000001
	.quad	0x40165297396d0918              # double 5.5806550000000001
	.quad	0x40157b1d92b7fe09              # double 5.3702300000000003
	.quad	0x401eae57d9dba909              # double 7.6702570000000003
	.quad	0x400b8bce8533b107              # double 3.4432649999999998
	.quad	0x3ff1c93b7d84901d              # double 1.111629
	.quad	0x4019c744b2b777d1              # double 6.444598
	.quad	0x401f0f70de8f6cf0              # double 7.7650790000000001
	.quad	0x401e85714b9cb685              # double 7.6303150000000004
	.quad	0x40211debfa8f7db7              # double 8.5584410000000002
	.quad	0x3fec6cd4aa10e022              # double 0.88828499999999999
	.quad	0x4020b291d9b1b79e              # double 8.3487690000000008
	.quad	0x401eceae9ee45c36              # double 7.7018380000000004
	.quad	0x400a69f8c21e1d21              # double 3.3017439999999998
	.quad	0x401187ef5a964e8b              # double 4.3827489999999996
	.quad	0x40213d1b2e59af9f              # double 8.6193480000000005
	.quad	0x401faaef6f8f0414              # double 7.9169289999999997
	.quad	0x3ff53b57c4e2f380              # double 1.3269880000000001
	.quad	0x400c47c5ac471b48              # double 3.5350450000000002
	.quad	0x3fa63e29307af20f              # double 0.043443000000000002
	.quad	0x3fc6b5a20ddc6195              # double 0.17741799999999999
	.quad	0x3fe03910c2c5e2ce              # double 0.50696600000000003
	.quad	0x401d694b7b28954a              # double 7.3528269999999996
	.quad	0x4018040746455eaf              # double 6.0039340000000001
	.quad	0x401946c764adff82              # double 6.3191199999999998
	.quad	0x401147e38eb0318c              # double 4.3202040000000004
	.quad	0x3ff685ab3aabcd79              # double 1.4076340000000001
	.quad	0x40182ddc6195464e              # double 6.0447860000000002
	.quad	0x40054aa087ca643d              # double 2.6614390000000001
	.quad	0x4020deb0d9513f8e              # double 8.4349430000000005
	.quad	0x401dd46c332f0175              # double 7.4574439999999997
	.quad	0x4022649b845564b6              # double 9.1964989999999993
	.quad	0x4021666bc621b7e1              # double 8.7000410000000006
	.quad	0x3fff4ed0b30b5aa7              # double 1.956742
	.quad	0x400569df1172ef0b              # double 2.676695
	.quad	0x40239267839cd812              # double 9.7859459999999991
	.quad	0x400af30ad46f587d              # double 3.3686729999999998
	.quad	0x4014be6149c6f36f              # double 5.185918
	.quad	0x3ff4d2d98bf7f067              # double 1.301477
	.quad	0x401fcfa5093964a6              # double 7.9527780000000003
	.quad	0x402271f70de8f6cf              # double 9.222588
	.quad	0x401c4b81b64e0547              # double 7.0737370000000004
	.quad	0x400df0bd87b56b87              # double 3.7425489999999999
	.quad	0x401d78ea7ce0fc2f              # double 7.3680820000000002
	.quad	0x402184180d3cff65              # double 8.7579960000000003
	.quad	0x4014cf5275ee99a6              # double 5.2024629999999998
	.quad	0x401872a8869c66d3              # double 6.1119709999999996
	.quad	0x40139c564f97edc8              # double 4.9026730000000001
	.quad	0x401d9c881e4712e4              # double 7.402863
	.quad	0x400f3ac79702e664              # double 3.9037009999999999
	.quad	0x4000129b280f12c2              # double 2.0090849999999998
	.quad	0x4020542fa5093965              # double 8.1644260000000006
	.quad	0x400c341a6937d1fe              # double 3.5254409999999998
	.quad	0x4005aa18372e6a77              # double 2.7080540000000002
	.quad	0x401bc0bdcad14a0a              # double 6.9382239999999999
	.quad	0x3ff8dfcc1871e6cd              # double 1.554638
	.quad	0x40074291fb3fa6df              # double 2.907505
	.quad	0x401622da554b8bf0              # double 5.5340360000000004
	.quad	0x40212fb7a5f41aef              # double 8.5931979999999992
	.quad	0x401dc6eefa1e3eaf              # double 7.4442709999999996
	.quad	0x4012db1290257c91              # double 4.7139379999999997
	.quad	0x401b4dbe3c105187              # double 6.8259210000000001
	.quad	0x40131d851654d61b              # double 4.7788279999999999
	.quad	0x401f8d834091c087              # double 7.8881959999999997
	.quad	0x40196c5718eb8950              # double 6.3558009999999996
	.quad	0x3fcea2014727dcbe              # double 0.239319
	.quad	0x401a290214ad362f              # double 6.5400470000000004
	.quad	0x3ffdf584b1ab0857              # double 1.872441
	.quad	0x401e5707182235b5              # double 7.584988
	.quad	0x3ffdcf9b13165d3a              # double 1.8631850000000001
	.quad	0x4023b961e4f765fe              # double 9.8620750000000008
	.quad	0x4006497e132b55ef              # double 2.7858849999999999
	.quad	0x4022ef4491298890              # double 9.4673200000000008
	.quad	0x4022142fc69728a6              # double 9.0394269999999999
	.quad	0x3fe774ff865d7cb3              # double 0.73303200000000002
	.quad	0x3fd0109070fbeb9e              # double 0.25101099999999998
	.quad	0x402250487b99d452              # double 9.156803
	.quad	0x3ff50e0c9d9d3459              # double 1.31593
	.quad	0x4011272fba01eeee              # double 4.2882680000000004
	.quad	0x40230785510d38ce              # double 9.5146890000000006
	.quad	0x402048c9b845564b              # double 8.1421639999999993
	.quad	0x4020fd4280ae1049              # double 8.4946479999999998
	.quad	0x3fede1437c5692b4              # double 0.93374800000000002
	.quad	0x402007e5c91d14e4              # double 8.0154250000000004
	.quad	0x401401409a240315              # double 5.0012230000000004
	.quad	0x401fc4373f316e37              # double 7.9416169999999999
	.quad	0x4023a4026cc1ca3a              # double 9.8203309999999995
	.quad	0x40113fb0d51f81a6              # double 4.3121980000000004
	.quad	0x3feae032db1e9f27              # double 0.83986799999999995
	.quad	0x40221a2f8bdec5f4              # double 9.0511440000000007
	.quad	0x40115d69d30270f4              # double 4.3412240000000004
	.quad	0x401e5d36b4c7f349              # double 7.5910289999999998
	.quad	0x4021891361dc93ea              # double 8.7677259999999997
	.quad	0x3fefeaf6837f7be1              # double 0.99743199999999998
	.quad	0x4015c3471f79420b              # double 5.4407009999999998
	.quad	0x400ed07bfe7e1fc1              # double 3.8517990000000002
	.quad	0x401b43897204295a              # double 6.8159539999999996
	.quad	0x4017303a7546d3fa              # double 5.7970980000000001
	.quad	0x400cae1719f7f8cb              # double 3.5850050000000002
	.quad	0x3fd7fef39085f4a1              # double 0.37493599999999999
	.quad	0x401aa5a9eb2074eb              # double 6.6617810000000004
	.quad	0x4009b530ced4e4c9              # double 3.2134719999999999
	.quad	0x401635f3519bd406              # double 5.5526859999999996
	.quad	0x40101f92f2b66b61              # double 4.0308339999999996
	.quad	0x401389b024f6598e              # double 4.8844609999999999
	.quad	0x401535436b8f9b13              # double 5.3020149999999999
	.quad	0x4017881f53825e14              # double 5.8829320000000003
	.quad	0x4020941aef6f8f04              # double 8.2892679999999998
	.quad	0x40204d1aa821f299              # double 8.1505939999999999
	.quad	0x400d3c0c1fc8f323              # double 3.6543199999999998
	.quad	0x401ab0ff540895d1              # double 6.6728490000000003
	.quad	0x401c834e7685985b              # double 7.1282290000000001
	.quad	0x4015e2ed352220bc              # double 5.4716079999999998
	.quad	0x4023943fc43b2dd3              # double 9.7895489999999991
	.quad	0x401b7b9a5a89b952              # double 6.8707060000000002
	.quad	0x3fc766d7a56de332              # double 0.18282599999999999
	.quad	0x401ac435efa615a9              # double 6.6916120000000001
	.quad	0x3ff345186db50f41              # double 1.204369
	.quad	0x4019566b1e5c0b9a              # double 6.3343930000000004
	.quad	0x40181601ffb480a6              # double 6.0214920000000003
	.quad	0x401d2f28c79f6662              # double 7.2960539999999998
	.quad	0x401f5503b81b64e0              # double 7.8330219999999997
	.quad	0x4015b6c3760bf5d8              # double 5.4284800000000004
	.quad	0x40200b5aa715831f              # double 8.022176
	.quad	0x401bdbfb15b573eb              # double 6.9648250000000003
	.quad	0x3ffdec29bf162ae5              # double 1.8701570000000001
	.quad	0x3fd4bb8800eae18b              # double 0.32394600000000001
	.quad	0x401e4c20d5629d84              # double 7.574344
	.quad	0x401a1a6d26740810              # double 6.5258070000000004
	.quad	0x4020548a159817b9              # double 8.1651159999999994
	.quad	0x40132524bfd2e947              # double 4.7862730000000004
	.quad	0x400878b502ababeb              # double 3.0589390000000001
	.quad	0x4005f1aeb3dd11be              # double 2.7430089999999998
	.quad	0x4017d99b6f5caf2d              # double 5.9625069999999996
	.quad	0x402080140dd3fe19              # double 8.2501529999999992
	.quad	0x3fff35d9a0f0a5f0              # double 1.950647
	.quad	0x40203640a6b93ccd              # double 8.1059619999999999
	.quad	0x401b51b71758e219              # double 6.8297999999999996
	.quad	0x4015818548a9bcfd              # double 5.3764849999999997
	.quad	0x3fd01f81a5870da6              # double 0.25192300000000001
	.quad	0x3ff2d9f6ec5b078e              # double 1.1782140000000001
	.quad	0x3fef2afdda8bd231              # double 0.97399800000000003
	.quad	0x400d3c842fa50939              # double 3.6545489999999998
	.quad	0x40123b93037d6302              # double 4.5581779999999998
	.quad	0x400945cc426351df              # double 3.159081
	.quad	0x401d968512231833              # double 7.396992
	.quad	0x40194f93bc0a06ea              # double 6.327712
	.quad	0x4021b410b630a915              # double 8.8516899999999996
	.quad	0x4023c31feeb2d0a2              # double 9.8811029999999995
	.quad	0x401caaa25d8d79d1              # double 7.1666350000000003
	.quad	0x4002f49d7ba6698c              # double 2.3694410000000001
	.quad	0x401c7e9d51b4fe7a              # double 7.1236470000000001
	.quad	0x40232bb7521144cc              # double 9.5853830000000002
	.quad	0x401fbf5019f3c70d              # double 7.9368290000000003
	.quad	0x3fe08941c8216c61              # double 0.51675499999999996
	.quad	0x401c2eabffcdab19              # double 7.0455779999999999
	.quad	0x4005e44955b4677b              # double 2.7364679999999999
	.quad	0x40010b0b7c3504c5              # double 2.1303930000000002
	.quad	0x401efe53eb399f5e              # double 7.748367
	.quad	0x40174dc50ce4ead1              # double 5.8259470000000002
	.quad	0x4006a0aaeafab53d              # double 2.8284509999999998
	.quad	0x3ff50d530489d27c              # double 1.315753
	.quad	0x401e19799e518f3f              # double 7.5248780000000001
	.quad	0x4004882adc4c9c91              # double 2.5664880000000001
	.quad	0x401f61e96c3fc43b              # double 7.8456169999999998
	.quad	0x3ff2edeebb341e15              # double 1.1830890000000001
	.quad	0x4007c4998d045fe1              # double 2.970996
	.quad	0x4010a6a161e4f766              # double 4.162725
	.quad	0x402243499d0203e6              # double 9.1314209999999996
	.quad	0x4005751611ba3ca7              # double 2.6821709999999999
	.quad	0x4017243f5f91600f              # double 5.7853979999999998
	.quad	0x401b904039abf338              # double 6.8908699999999996
	.quad	0x3fbb4cd31769a911              # double 0.106641
	.quad	0x4000f0b7c3504c49              # double 2.1175380000000001
	.quad	0x400c4732df505d10              # double 3.5347650000000002
	.quad	0x4022c53ac4f7ec35              # double 9.3852139999999995
	.quad	0x402122467be553ac              # double 8.5669439999999994
	.quad	0x3fe12a044ae85b9f              # double 0.53637900000000005
	.quad	0x4020c62e09fe8683              # double 8.3870699999999996
	.quad	0x4006294a2b9d3cbc              # double 2.7701609999999999
	.quad	0x401b6050374ff866              # double 6.8440560000000001
	.quad	0x4013333e78e1932d              # double 4.8000429999999996
	.quad	0x40038a10e0221427              # double 2.442415
	.quad	0x402214c1a8ac5c14              # double 9.04054
	.quad	0x4004e5271bcdbbe0              # double 2.611891
	.quad	0x402106a37ac3eb7d              # double 8.5129660000000005
	.quad	0x3fd7443d46b26bf8              # double 0.36353999999999997
	.quad	0x40173bef49cf56eb              # double 5.8085300000000002
	.quad	0x400797f498c3b0c4              # double 2.9491969999999998
	.quad	0x3fe0617e34b94531              # double 0.51190100000000005
	.quad	0x400a668a0d349be9              # double 3.300068
	.quad	0x4013d4bad7d7c2ca              # double 4.9577439999999999
	.quad	0x4014c4edf6124074              # double 5.1923139999999997
	.quad	0x4018fae9ee45c359              # double 6.2450330000000003
	.quad	0x4022f625e99e94ab              # double 9.4807579999999997
	.quad	0x401fcd63cb817332              # double 7.9505759999999999
	.quad	0x3ffde4f765fd8adb              # double 1.8684000000000001
	.quad	0x4020716d6dc1a47b              # double 8.2215380000000007
	.quad	0x3ff61e050374ff86              # double 1.3823289999999999
	.size	.L__constant_5000xf64, 40000

	.section	".note.GNU-stack","",@progbits
