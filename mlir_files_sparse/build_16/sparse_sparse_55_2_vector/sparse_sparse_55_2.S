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
	.quad	0x4147bb79dc3c31df              # double 3110643.7205869998
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
	.quad	4499                            # 0x1193
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	4499                            # 0x1193
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
	lui	a1, %hi(.L__constant_101xindex_0)
	addi	a1, a1, %lo(.L__constant_101xindex_0)
	lui	a7, %hi(.L__constant_4499xindex)
	addi	a7, a7, %lo(.L__constant_4499xindex)
	lui	t0, %hi(.L__constant_4499xf64)
	addi	t0, t0, %lo(.L__constant_4499xf64)
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
	lui	a1, %hi(.L__constant_101xindex)
	addi	a1, a1, %lo(.L__constant_101xindex)
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
	.quad	64                              # 0x40
	.quad	89                              # 0x59
	.quad	157                             # 0x9d
	.quad	187                             # 0xbb
	.quad	252                             # 0xfc
	.quad	278                             # 0x116
	.quad	345                             # 0x159
	.quad	367                             # 0x16f
	.quad	426                             # 0x1aa
	.quad	450                             # 0x1c2
	.quad	516                             # 0x204
	.quad	542                             # 0x21e
	.quad	603                             # 0x25b
	.quad	633                             # 0x279
	.quad	701                             # 0x2bd
	.quad	726                             # 0x2d6
	.quad	792                             # 0x318
	.quad	817                             # 0x331
	.quad	876                             # 0x36c
	.quad	907                             # 0x38b
	.quad	970                             # 0x3ca
	.quad	998                             # 0x3e6
	.quad	1061                            # 0x425
	.quad	1081                            # 0x439
	.quad	1143                            # 0x477
	.quad	1166                            # 0x48e
	.quad	1231                            # 0x4cf
	.quad	1257                            # 0x4e9
	.quad	1320                            # 0x528
	.quad	1336                            # 0x538
	.quad	1403                            # 0x57b
	.quad	1429                            # 0x595
	.quad	1492                            # 0x5d4
	.quad	1528                            # 0x5f8
	.quad	1588                            # 0x634
	.quad	1615                            # 0x64f
	.quad	1678                            # 0x68e
	.quad	1710                            # 0x6ae
	.quad	1772                            # 0x6ec
	.quad	1799                            # 0x707
	.quad	1868                            # 0x74c
	.quad	1892                            # 0x764
	.quad	1960                            # 0x7a8
	.quad	1985                            # 0x7c1
	.quad	2044                            # 0x7fc
	.quad	2070                            # 0x816
	.quad	2131                            # 0x853
	.quad	2160                            # 0x870
	.quad	2220                            # 0x8ac
	.quad	2245                            # 0x8c5
	.quad	2304                            # 0x900
	.quad	2336                            # 0x920
	.quad	2397                            # 0x95d
	.quad	2426                            # 0x97a
	.quad	2488                            # 0x9b8
	.quad	2515                            # 0x9d3
	.quad	2579                            # 0xa13
	.quad	2602                            # 0xa2a
	.quad	2667                            # 0xa6b
	.quad	2700                            # 0xa8c
	.quad	2769                            # 0xad1
	.quad	2787                            # 0xae3
	.quad	2854                            # 0xb26
	.quad	2877                            # 0xb3d
	.quad	2942                            # 0xb7e
	.quad	2970                            # 0xb9a
	.quad	3033                            # 0xbd9
	.quad	3050                            # 0xbea
	.quad	3116                            # 0xc2c
	.quad	3133                            # 0xc3d
	.quad	3195                            # 0xc7b
	.quad	3226                            # 0xc9a
	.quad	3296                            # 0xce0
	.quad	3323                            # 0xcfb
	.quad	3390                            # 0xd3e
	.quad	3414                            # 0xd56
	.quad	3473                            # 0xd91
	.quad	3504                            # 0xdb0
	.quad	3569                            # 0xdf1
	.quad	3595                            # 0xe0b
	.quad	3658                            # 0xe4a
	.quad	3693                            # 0xe6d
	.quad	3758                            # 0xeae
	.quad	3782                            # 0xec6
	.quad	3844                            # 0xf04
	.quad	3867                            # 0xf1b
	.quad	3927                            # 0xf57
	.quad	3956                            # 0xf74
	.quad	4019                            # 0xfb3
	.quad	4041                            # 0xfc9
	.quad	4104                            # 0x1008
	.quad	4133                            # 0x1025
	.quad	4194                            # 0x1062
	.quad	4219                            # 0x107b
	.quad	4283                            # 0x10bb
	.quad	4308                            # 0x10d4
	.quad	4374                            # 0x1116
	.quad	4409                            # 0x1139
	.quad	4472                            # 0x1178
	.quad	4499                            # 0x1193
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4499xindex,@object # @__constant_4499xindex
	.p2align	6, 0x0
.L__constant_4499xindex:
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	55                              # 0x37
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
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	17                              # 0x11
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
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
	.quad	17                              # 0x11
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
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
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	83                              # 0x53
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
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	23                              # 0x17
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
	.quad	45                              # 0x2d
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	47                              # 0x2f
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
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	45                              # 0x2d
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	59                              # 0x3b
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	31                              # 0x1f
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
	.quad	53                              # 0x35
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
	.quad	77                              # 0x4d
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	53                              # 0x35
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	27                              # 0x1b
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	63                              # 0x3f
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
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
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
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
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
	.quad	71                              # 0x47
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
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	79                              # 0x4f
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
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
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	41                              # 0x29
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
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
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	81                              # 0x51
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
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
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
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	29                              # 0x1d
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	1                               # 0x1
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	33                              # 0x21
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
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
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
	.quad	83                              # 0x53
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
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
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
	.quad	35                              # 0x23
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.size	.L__constant_4499xindex, 35992

	.type	.L__constant_4499xf64,@object   # @__constant_4499xf64
	.p2align	6, 0x0
.L__constant_4499xf64:
	.quad	0x4007f4edb2f661f2              # double 2.9945940000000002
	.quad	0x4015e7a28bb0a2cb              # double 5.4762060000000004
	.quad	0x4006089dadfb506e              # double 2.7542070000000001
	.quad	0x3fcf0bfa0945f9df              # double 0.24255299999999999
	.quad	0x400737f38c5436b9              # double 2.90232
	.quad	0x3ffef74ff865d7cb              # double 1.935379
	.quad	0x3fe5f10880d801b4              # double 0.68567299999999998
	.quad	0x3ffc88d7e02645e5              # double 1.783409
	.quad	0x400efb0a2ca9ac36              # double 3.8725779999999999
	.quad	0x4006ebdcad14a0a1              # double 2.865167
	.quad	0x40204bfe5c91d14e              # double 8.1484249999999996
	.quad	0x402043eaf6837f7c              # double 8.1326520000000002
	.quad	0x3fce8a372606fac6              # double 0.238593
	.quad	0x40212516fc9bc771              # double 8.5724409999999995
	.quad	0x400c86dd69d30271              # double 3.565852
	.quad	0x3ff0ec7da1ec4e72              # double 1.0577369999999999
	.quad	0x401d2afc04c8bc9d              # double 7.2919770000000002
	.quad	0x3f767125dd095af3              # double 0.0054790000000000004
	.quad	0x401357ec7863beec              # double 4.8358629999999998
	.quad	0x400185f41aef6f8f              # double 2.190407
	.quad	0x400ebb98c7e28241              # double 3.8416000000000001
	.quad	0x4008b6ed6777079e              # double 3.0893199999999998
	.quad	0x401171971c10d7bf              # double 4.3609280000000004
	.quad	0x3fea9e34330d7386              # double 0.831812
	.quad	0x4018c5c358afc47e              # double 6.1931279999999997
	.quad	0x4017045baf533f42              # double 5.7542559999999998
	.quad	0x400b8dfe75bc44bf              # double 3.4443329999999999
	.quad	0x401bc6b97fe8ee6c              # double 6.9440670000000004
	.quad	0x400835821294573a              # double 3.0261269999999998
	.quad	0x3fd4c829cfdd2285              # double 0.32471699999999998
	.quad	0x4021ef98d8a979e1              # double 8.9679629999999992
	.quad	0x401742d98bf7f067              # double 5.815283
	.quad	0x4012c55ffe6d58c9              # double 4.6927490000000001
	.quad	0x3fd1888b545c78a7              # double 0.27395900000000001
	.quad	0x401f8aa4b9884c6a              # double 7.8853939999999998
	.quad	0x3fe1a33bd9cae211              # double 0.551176
	.quad	0x401ac877ee4e26d5              # double 6.6957700000000004
	.quad	0x40203531337eb28e              # double 8.1038910000000008
	.quad	0x401bf0218def416c              # double 6.9845030000000001
	.quad	0x4013410c2c5e2cdc              # double 4.813523
	.quad	0x401be60807357e67              # double 6.97464
	.quad	0x4012a7fcb923a29c              # double 4.6640499999999996
	.quad	0x4016ad8fd5cb7910              # double 5.6694940000000003
	.quad	0x3fea3d5992428d43              # double 0.81998899999999997
	.quad	0x401a7ade225fa659              # double 6.6199880000000002
	.quad	0x40114551d68c692f              # double 4.3176949999999996
	.quad	0x40230473eee52589              # double 9.5086969999999997
	.quad	0x40186ea8da7f3cf7              # double 6.108066
	.quad	0x4023a993708aac97              # double 9.8312030000000003
	.quad	0x401cbc89f40a2878              # double 7.1841200000000001
	.quad	0x401629f40a2877ee              # double 5.5409699999999997
	.quad	0x3ff9d2a1f8e3ac0c              # double 1.6139239999999999
	.quad	0x3fba7dfe32a0663c              # double 0.10348499999999999
	.quad	0x4017f6aad1d041cc              # double 5.9908859999999997
	.quad	0x40175b0531982880              # double 5.8388869999999997
	.quad	0x40033691212513b6              # double 2.4016440000000001
	.quad	0x3ffc11e96c3fc43b              # double 1.754373
	.quad	0x400975bb384fd2a6              # double 3.1824859999999999
	.quad	0x400a388c1db0142f              # double 3.2776109999999998
	.quad	0x401a9f0e0a84be40              # double 6.6553269999999998
	.quad	0x40013b59ddc1e796              # double 2.1539799999999998
	.quad	0x3ff52de00d1b7176              # double 1.3237000000000001
	.quad	0x4018aa9691a75cd1              # double 6.1665900000000002
	.quad	0x3feed1eb851eb852              # double 0.96312500000000001
	.quad	0x3fedcd9620685554              # double 0.931346
	.quad	0x4015b3a6ce358299              # double 5.4254410000000002
	.quad	0x3fe6e290eed02cd4              # double 0.71515700000000004
	.quad	0x40231bf034b0e1b5              # double 9.5545670000000004
	.quad	0x400720407cc7d1bb              # double 2.8907479999999999
	.quad	0x4013235371971c11              # double 4.7844980000000001
	.quad	0x4010f92684cf073a              # double 4.2433110000000003
	.quad	0x40170b1ee2435697              # double 5.7608600000000001
	.quad	0x3ff71e353f7ced91              # double 1.4448749999999999
	.quad	0x400ea1355475a31a              # double 3.8287149999999999
	.quad	0x400a2044284dfce3              # double 3.265755
	.quad	0x3fe7dcf67b1c0011              # double 0.74572300000000002
	.quad	0x40232714b9cb6849              # double 9.5763300000000004
	.quad	0x4016fb75a74c09c4              # double 5.7455660000000002
	.quad	0x401e5e957470eb25              # double 7.5923670000000003
	.quad	0x4018dd441355475a              # double 6.2160799999999998
	.quad	0x3ffdc52d666a9824              # double 1.8606389999999999
	.quad	0x4017438476f2a5a4              # double 5.8159349999999996
	.quad	0x4022aa6f60e0eb68              # double 9.3328810000000004
	.quad	0x3ff8a10f0e90bc7b              # double 1.5393209999999999
	.quad	0x40185bc9cd3e0bd4              # double 6.0896369999999997
	.quad	0x3fffb3e5753a3ec0              # double 1.98142
	.quad	0x4021b0d716d2aa5c              # double 8.8453909999999993
	.quad	0x4022ecfd4bf0995b              # double 9.4628700000000005
	.quad	0x4011c672fba01eef              # double 4.4437980000000001
	.quad	0x40012c93a7115161              # double 2.146766
	.quad	0x401e6d755bccaf71              # double 7.6068930000000003
	.quad	0x401449c90c4dec1c              # double 5.0720559999999999
	.quad	0x3ff7a176ddaceee1              # double 1.47692
	.quad	0x4008d85e80bed741              # double 3.1056490000000001
	.quad	0x40212cb662fdfc1a              # double 8.5873290000000004
	.quad	0x4006298a222d5172              # double 2.7702830000000001
	.quad	0x401affd7a13c254a              # double 6.7498459999999998
	.quad	0x401536b69db65ecc              # double 5.3034309999999998
	.quad	0x401d30e0eb67c287              # double 7.297733
	.quad	0x40229ac7da1ec4e7              # double 9.3023059999999997
	.quad	0x400fc4649906cca3              # double 3.9708950000000001
	.quad	0x4021045c13fd0d06              # double 8.5085149999999992
	.quad	0x40235fd1782d3847              # double 9.6871449999999992
	.quad	0x401a0a176ddaceee              # double 6.5098549999999999
	.quad	0x401734df04ddb552              # double 5.8016319999999997
	.quad	0x40014e631f8a0903              # double 2.1632750000000001
	.quad	0x4014b5c4eb56fb8f              # double 5.1775089999999997
	.quad	0x401d3e19fc2a886a              # double 7.3106460000000002
	.quad	0x401911d92b7fe08b              # double 6.2674300000000001
	.quad	0x3ff1e2b5a20ddc62              # double 1.1178490000000001
	.quad	0x40115009f623076c              # double 4.328163
	.quad	0x3ff25c2e33eff195              # double 1.147505
	.quad	0x4010407357e670e3              # double 4.0629400000000002
	.quad	0x402232e6a76965f5              # double 9.0994159999999997
	.quad	0x3ffa53e1c9b41398              # double 1.6454789999999999
	.quad	0x4014a6262cba732e              # double 5.162255
	.quad	0x3f925b749adc8fb8              # double 0.017926999999999998
	.quad	0x40224f548ecd8dbd              # double 9.1549420000000001
	.quad	0x40224b1c64ba94bc              # double 9.1467010000000001
	.quad	0x400bcaf81626b2f2              # double 3.4741059999999999
	.quad	0x402039cc96462802              # double 8.1128889999999991
	.quad	0x3fdd7ecbb7f9d6f1              # double 0.460864
	.quad	0x4011d8d1958969a1              # double 4.4617370000000003
	.quad	0x4020b376b3bb83cf              # double 8.3505149999999997
	.quad	0x4023a764cf8d716d              # double 9.8269409999999997
	.quad	0x400f1bc5de9c022a              # double 3.8885610000000002
	.quad	0x3fe8a66559f6ec5b              # double 0.770312
	.quad	0x401d2c3ac929aa1d              # double 7.2931929999999996
	.quad	0x4015d04ccee5abc1              # double 5.4534180000000001
	.quad	0x40217fcfa26a22b4              # double 8.7496310000000008
	.quad	0x400f11eeaa6d2674              # double 3.883756
	.quad	0x401b4e73a365cb36              # double 6.826613
	.quad	0x401b0ca7503b81b6              # double 6.7623569999999997
	.quad	0x401beb91f70de8f7              # double 6.9800490000000002
	.quad	0x40222bb8c32a8c9c              # double 9.0853940000000008
	.quad	0x401a57154003254e              # double 6.5850419999999996
	.quad	0x400eca497fa5d28d              # double 3.848773
	.quad	0x40048f850df15a4b              # double 2.5700780000000001
	.quad	0x3ffd8df47f993d53              # double 1.8471569999999999
	.quad	0x3fec246e08f21709              # double 0.87944699999999998
	.quad	0x3ffec82278d0cc36              # double 1.923861
	.quad	0x3ffcfe1fc08fa7a8              # double 1.8120419999999999
	.quad	0x401230114d2f5dbc              # double 4.5469410000000003
	.quad	0x3feb07a4a48f96e1              # double 0.84468299999999996
	.quad	0x3fdfe392e1ef73c1              # double 0.49826500000000001
	.quad	0x40223f839cd8127b              # double 9.1240509999999997
	.quad	0x3ff4a6dbd72bcb60              # double 1.290737
	.quad	0x3ff63b71fbc5de9c              # double 1.389513
	.quad	0x40176a2403148777              # double 5.8536530000000004
	.quad	0x401f402a77a2cecd              # double 7.8126620000000004
	.quad	0x3ffd462d40aaeafb              # double 1.8296330000000001
	.quad	0x4000fca643cc07ab              # double 2.123364
	.quad	0x4010235d249e44fa              # double 4.034535
	.quad	0x401ab08aac96cc60              # double 6.6724040000000002
	.quad	0x40117a7f8012dfd7              # double 4.3696270000000004
	.quad	0x4001f220791c4b90              # double 2.2432259999999999
	.quad	0x401beb445ed4a1ad              # double 6.9797529999999997
	.quad	0x402387c9ff92f2b6              # double 9.7652129999999993
	.quad	0x4003cdf71eafee70              # double 2.4755690000000001
	.quad	0x401e894680171194              # double 7.6340579999999996
	.quad	0x3feaa8da7f3cf701              # double 0.83311199999999996
	.quad	0x401d5684cf0739b0              # double 7.3344909999999999
	.quad	0x4019169e3c968944              # double 6.2720880000000001
	.quad	0x4010f884406c00da              # double 4.2426919999999999
	.quad	0x401c680f55de58e6              # double 7.1016209999999997
	.quad	0x4019bafbc1acde1a              # double 6.432601
	.quad	0x402370a58b3f63c3              # double 9.7200129999999997
	.quad	0x400aef1b25f633ce              # double 3.3667509999999998
	.quad	0x4021d483a96d4c34              # double 8.9150670000000005
	.quad	0x4021c645e4e69f06              # double 8.8872520000000002
	.quad	0x401c9b5e529bae47              # double 7.1517270000000002
	.quad	0x401cc38c111ada77              # double 7.1909640000000001
	.quad	0x401ac345cfede97d              # double 6.690696
	.quad	0x401226473471f794              # double 4.5373809999999999
	.quad	0x4012c90eed02cd3a              # double 4.6963460000000001
	.quad	0x40233b4edb2f661f              # double 9.6158359999999998
	.quad	0x400df9b456b441bc              # double 3.7469260000000002
	.quad	0x3ff33bc0a06e9ff1              # double 1.202088
	.quad	0x4019b3953dea465a              # double 6.4253739999999997
	.quad	0x4008dc9bc7714339              # double 3.1077189999999999
	.quad	0x4023f820e6299525              # double 9.9846260000000004
	.quad	0x40053aa4766c6de7              # double 2.6536339999999998
	.quad	0x4022e2491afc04c9              # double 9.4419640000000004
	.quad	0x4017e0c521dda05a              # double 5.9695020000000003
	.quad	0x40078960b6f9fcb1              # double 2.9420790000000001
	.quad	0x3fea0817fc7607c4              # double 0.81348799999999998
	.quad	0x400f7cdbbe0157ef              # double 3.9359660000000001
	.quad	0x400055f56a7ac81d              # double 2.0419719999999999
	.quad	0x3fdd43b70ef56649              # double 0.457258
	.quad	0x402365831f03d146              # double 9.6982660000000003
	.quad	0x4017e158fb43d89d              # double 5.9700660000000001
	.quad	0x4020397891e21533              # double 8.1122479999999992
	.quad	0x4019adcf893faf42              # double 6.4197369999999996
	.quad	0x3fca974a3400b88d              # double 0.20774200000000001
	.quad	0x4009e60b2c83ec89              # double 3.2373259999999999
	.quad	0x400bc696a26e5471              # double 3.4719669999999998
	.quad	0x4010120bc382a130              # double 4.0176230000000004
	.quad	0x3ffeb0ef566490a3              # double 1.9181969999999999
	.quad	0x3ff38f4b61fe21d9              # double 1.2224839999999999
	.quad	0x401b885729b280f1              # double 6.8831449999999998
	.quad	0x40132d9d3458cd21              # double 4.7945450000000003
	.quad	0x40020cbd987c6328              # double 2.256221
	.quad	0x401f2b2a6b0d9514              # double 7.792154
	.quad	0x400865c03361565c              # double 3.0496829999999999
	.quad	0x4020ce37de939eae              # double 8.4027700000000003
	.quad	0x4002ad9c6b053198              # double 2.3347709999999999
	.quad	0x40190f3cf70153bd              # double 6.2648809999999999
	.quad	0x3ff7cb46bacf7447              # double 1.487128
	.quad	0x4023eee19b90ea9e              # double 9.9665649999999992
	.quad	0x3fdbbcdbbe0157ef              # double 0.43340200000000001
	.quad	0x4015aa85caafbc1b              # double 5.4165260000000002
	.quad	0x401e2f84cad57bc8              # double 7.546405
	.quad	0x400c1bf61aa3f035              # double 3.5136530000000001
	.quad	0x40230ce50c5eb314              # double 9.5251850000000004
	.quad	0x4013b463cfb3311a              # double 4.9261619999999997
	.quad	0x401bdee30caa326e              # double 6.9676629999999999
	.quad	0x4004b7dae81882ae              # double 2.5897730000000001
	.quad	0x4004629e90795f67              # double 2.5481539999999998
	.quad	0x40189984e3ffef39              # double 6.149921
	.quad	0x4015237a3db3bfb6              # double 5.2846460000000004
	.quad	0x3fffdd57ff9b5632              # double 1.9915389999999999
	.quad	0x3ffd25e785b5b707              # double 1.8217540000000001
	.quad	0x4004789613d31b9b              # double 2.5588799999999998
	.quad	0x40052b8f14db5958              # double 2.6462690000000002
	.quad	0x402378487b99d452              # double 9.734928
	.quad	0x3ffc1df86e3b46fe              # double 1.757317
	.quad	0x401cffb4c3c18b50              # double 7.2497129999999999
	.quad	0x400e86ed245b291c              # double 3.8158820000000002
	.quad	0x4020fad601ffb481              # double 8.4899140000000006
	.quad	0x401f6344c37e6f72              # double 7.8469420000000003
	.quad	0x4023e7e0ce0b912e              # double 9.9528870000000005
	.quad	0x401fabc408d8ec96              # double 7.9177400000000002
	.quad	0x40178e2c12ad81ae              # double 5.8888400000000001
	.quad	0x40113262456f75da              # double 4.2992030000000003
	.quad	0x3fe5718eb8950764              # double 0.67011200000000004
	.quad	0x40237224894c447c              # double 9.7229349999999996
	.quad	0x400456b1a2a4db16              # double 2.5423309999999999
	.quad	0x4000173647baa9b5              # double 2.0113340000000002
	.quad	0x4015a42e12620254              # double 5.4103320000000004
	.quad	0x4020b6a140570825              # double 8.3566990000000008
	.quad	0x40205a07f66e86c6              # double 8.1758419999999994
	.quad	0x400b7ca4b124d09a              # double 3.4358610000000001
	.quad	0x4022b672b884406c              # double 9.3563439999999999
	.quad	0x401598de2ac32229              # double 5.3992849999999999
	.quad	0x401f6eb28d8665e0              # double 7.8581029999999998
	.quad	0x40070e8f29d40ee0              # double 2.8821089999999998
	.quad	0x3fef1b0468448cf8              # double 0.97204800000000002
	.quad	0x4023c969c23b7953              # double 9.8933850000000003
	.quad	0x3ff505953586ca8a              # double 1.313863
	.quad	0x401861ada76d97b3              # double 6.0953889999999999
	.quad	0x402318431bde82d8              # double 9.5473870000000005
	.quad	0x400532b66b6177ea              # double 2.649762
	.quad	0x401cff94855da273              # double 7.2495900000000004
	.quad	0x4022377681669ced              # double 9.1083259999999999
	.quad	0x400a7e0370cdc875              # double 3.3115299999999999
	.quad	0x4016f6ca46e08f21              # double 5.7410059999999996
	.quad	0x40237762b6ae7d56              # double 9.7331749999999992
	.quad	0x4022b5dedf1e0829              # double 9.3552160000000004
	.quad	0x4021f7ecdd0d8cb0              # double 8.9842289999999991
	.quad	0x40085ab4b72c5198              # double 3.0442900000000002
	.quad	0x4007335b91f70de9              # double 2.900077
	.quad	0x4010948626f60e0f              # double 4.1450430000000003
	.quad	0x40188c2a8869c66d              # double 6.1368809999999998
	.quad	0x40189afc47e49b20              # double 6.1513530000000003
	.quad	0x401eeb3e1437c569              # double 7.7297289999999998
	.quad	0x3fb0ad6883771865              # double 0.065145999999999996
	.quad	0x402089b7e0ac7da2              # double 8.2689810000000001
	.quad	0x401536ac647778dd              # double 5.3033919999999997
	.quad	0x4019006a6e32e382              # double 6.2504059999999999
	.quad	0x40146cc39ffd60e9              # double 5.1062149999999997
	.quad	0x401d4a027525460b              # double 7.3222750000000003
	.quad	0x40049b256ffc115e              # double 2.575755
	.quad	0x402075e8d5410f95              # double 8.2302920000000004
	.quad	0x40207c883fd50225              # double 8.2432269999999992
	.quad	0x401fa7403dddb121              # double 7.9133310000000003
	.quad	0x40205fd04a2fcefb              # double 8.1871360000000006
	.quad	0x400b63621fafc8b0              # double 3.423527
	.quad	0x4007c452c59fb1e2              # double 2.9708610000000002
	.quad	0x400c4c929aa1d756              # double 3.5373890000000001
	.quad	0x400f7ee99a62ed35              # double 3.9369689999999999
	.quad	0x400aca9de8b3b320              # double 3.3489339999999999
	.quad	0x40100536d655e28b              # double 4.0050920000000003
	.quad	0x40012fd21ff2e48f              # double 2.1483500000000002
	.quad	0x4004aeb3dd11be6e              # double 2.5853039999999998
	.quad	0x400597460242d05f              # double 2.6988639999999999
	.quad	0x3fe360d23d4f15e8              # double 0.60556900000000002
	.quad	0x401b8b9dc2f405f7              # double 6.8863440000000002
	.quad	0x3ff66c8e68e3ef28              # double 1.4015029999999999
	.quad	0x40204df69878316a              # double 8.152272
	.quad	0x4015669728a61177              # double 5.3501859999999999
	.quad	0x400e01f75104d552              # double 3.7509600000000001
	.quad	0x401e183382e44b6f              # double 7.5236340000000003
	.quad	0x401b9b8a5ce5b424              # double 6.9018949999999997
	.quad	0x3ff8d2999567dbb1              # double 1.5514159999999999
	.quad	0x40038ea854477ff1              # double 2.4446569999999999
	.quad	0x40146ebb341e14be              # double 5.108136
	.quad	0x3fd035ac8a372607              # double 0.253276
	.quad	0x4022f903ea704bc2              # double 9.4863579999999992
	.quad	0x402108be0ded288d              # double 8.5170750000000002
	.quad	0x40117a1511dffc54              # double 4.3692209999999996
	.quad	0x40023d7a13c254a4              # double 2.2800180000000001
	.quad	0x4009a77b395c4220              # double 3.2067779999999999
	.quad	0x40014406c00da1a9              # double 2.1582159999999999
	.quad	0x40205bf4666ec9e2              # double 8.1795989999999996
	.quad	0x400c10c026cc1ca4              # double 3.5081790000000002
	.quad	0x4019cbbe878fabda              # double 6.448969
	.quad	0x40048eb2d0a24463              # double 2.569677
	.quad	0x3ff0ab13dfb0d520              # double 1.0417670000000001
	.quad	0x4023a4b9a9da597d              # double 9.8217289999999994
	.quad	0x400f452a411c2a02              # double 3.9087719999999999
	.quad	0x401d22424a276b7f              # double 7.2834560000000002
	.quad	0x4003327243137b07              # double 2.399632
	.quad	0x40199a6506141637              # double 6.4007759999999996
	.quad	0x401b33a8a3f8982d              # double 6.8004480000000003
	.quad	0x401d0c3760bf5d79              # double 7.2619300000000004
	.quad	0x4011f9d909f1f14a              # double 4.4939920000000004
	.quad	0x3ff2488f861a60d4              # double 1.1427149999999999
	.quad	0x401238e4fb97bb73              # double 4.555561
	.quad	0x40192f1bef49cf57              # double 6.2960050000000001
	.quad	0x400c06d0d49949e9              # double 3.5033280000000002
	.quad	0x400c0a0902de00d2              # double 3.5049000000000001
	.quad	0x401745feda661284              # double 5.8183550000000004
	.quad	0x401f9b9e060fe47a              # double 7.9019700000000004
	.quad	0x4020bdf2452c59fb              # double 8.3709889999999998
	.quad	0x402277268d32830a              # double 9.2327159999999999
	.quad	0x400655d80e496edf              # double 2.7919160000000001
	.quad	0x40169e8c47a17f41              # double 5.6548319999999999
	.quad	0x4008e7e38eb0318c              # double 3.1132270000000002
	.quad	0x400d2958d9b5e95b              # double 3.6451889999999998
	.quad	0x4015f68f8e7ddca5              # double 5.4907820000000003
	.quad	0x4021880f55de58e6              # double 8.7657419999999995
	.quad	0x40172909aed56b01              # double 5.790076
	.quad	0x3ff85f0e4da09cc3              # double 1.523207
	.quad	0x4020529e90795f67              # double 8.1613659999999992
	.quad	0x3ffb52263d816acf              # double 1.7075560000000001
	.quad	0x4003a20ab7132724              # double 2.4541219999999999
	.quad	0x4011b81cf7878b7a              # double 4.4297979999999999
	.quad	0x402060e8a71de69b              # double 8.1892750000000003
	.quad	0x40132451fc4c1659              # double 4.785469
	.quad	0x4021682d59d55e6c              # double 8.7034710000000004
	.quad	0x4014b1904b3c3e75              # double 5.1734020000000003
	.quad	0x4003a4712e40852b              # double 2.4552939999999999
	.quad	0x400d41b10fd7e458              # double 3.657076
	.quad	0x40237786c226809d              # double 9.7334499999999994
	.quad	0x40179c32ebe596c8              # double 5.9025379999999998
	.quad	0x3ffc5d4d834091c1              # double 1.7727790000000001
	.quad	0x4015123033a4723b              # double 5.2677620000000003
	.quad	0x40010f12c27a6373              # double 2.1323599999999998
	.quad	0x400e8a8b08dd1e54              # double 3.8176480000000002
	.quad	0x401e339d1b2e59b0              # double 7.5504040000000003
	.quad	0x4022cf2f123c42a6              # double 9.4046559999999992
	.quad	0x4016f6b6e0d23d4f              # double 5.7409319999999999
	.quad	0x40207c02afdda8bd              # double 8.2422079999999998
	.quad	0x401e59da597d49d8              # double 7.5877470000000002
	.quad	0x4015ca469d7342ee              # double 5.4475350000000002
	.quad	0x4013f47e49b1fab9              # double 4.9887629999999996
	.quad	0x401f26eac8605682              # double 7.7880050000000001
	.quad	0x40226b1ab0856e69              # double 9.2091879999999993
	.quad	0x40202328b6d86ec1              # double 8.0686699999999991
	.quad	0x40183e7afa722186              # double 6.0610160000000004
	.quad	0x3ff2cae1049235f8              # double 1.174531
	.quad	0x401e5d6b228dc982              # double 7.5912290000000002
	.quad	0x3ff84fffbce4217d              # double 1.519531
	.quad	0x4021a5eebb341e15              # double 8.8240870000000005
	.quad	0x4012acd9a52263d8              # double 4.6687989999999999
	.quad	0x400fbd5c31593e60              # double 3.9674610000000001
	.quad	0x401afb26394face6              # double 6.7452629999999996
	.quad	0x4017ec4ac6cdaf4b              # double 5.9807540000000001
	.quad	0x3ff183cf2cf95d4f              # double 1.0946800000000001
	.quad	0x3fefad01c0ca600b              # double 0.98986899999999999
	.quad	0x3fed013ec460ed81              # double 0.90640200000000004
	.quad	0x40083ff1d81f1066              # double 3.0312229999999998
	.quad	0x400ec81669ced0b3              # double 3.847699
	.quad	0x401cd0de093532e8              # double 7.2039720000000003
	.quad	0x4020e0049667b5f2              # double 8.4375350000000005
	.quad	0x401d2deefe4ffc98              # double 7.2948570000000004
	.quad	0x3ffdb96e158750c2              # double 1.8577710000000001
	.quad	0x4019ddf97aaac109              # double 6.4667719999999997
	.quad	0x401eb8a222d5171e              # double 7.6803059999999999
	.quad	0x402211320d9945b7              # double 9.0335850000000004
	.quad	0x3ffe67f2c3009b30              # double 1.9003779999999999
	.quad	0x400e2d4cb9ecf638              # double 3.772119
	.quad	0x402292ac753e707e              # double 9.2864719999999998
	.quad	0x4008587bdcf0307f              # double 3.0432049999999999
	.quad	0x4015666adb402d17              # double 5.3500170000000002
	.quad	0x401ec29d40ee06d9              # double 7.6900529999999998
	.quad	0x4016cfc3b4f61672              # double 5.7028949999999998
	.quad	0x400ef6451b93037d              # double 3.8702489999999998
	.quad	0x401df55d1c3ac92a              # double 7.4896130000000003
	.quad	0x4016243b70ef5665              # double 5.5353830000000004
	.quad	0x400003c5bd0e12e8              # double 2.0018419999999999
	.quad	0x401970abb44e50c6              # double 6.3600300000000001
	.quad	0x4003359ab6d00b46              # double 2.4011740000000001
	.quad	0x40233ea444178705              # double 9.6223469999999995
	.quad	0x4013dd80e496edee              # double 4.9663120000000003
	.quad	0x3fd076cce5f7403e              # double 0.25725100000000001
	.quad	0x40028d25edd05293              # double 2.3189199999999999
	.quad	0x400868e25c810a57              # double 3.0512130000000002
	.quad	0x3fca8b9fdbd2fa0d              # double 0.20738599999999999
	.quad	0x40230bc85c24c405              # double 9.5230130000000006
	.quad	0x3ff45ce075f6fd22              # double 1.272675
	.quad	0x401811743e963dc5              # double 6.0170450000000004
	.quad	0x4022a677b395c422              # double 9.325132
	.quad	0x401fa8a979e16d6e              # double 7.9147090000000002
	.quad	0x3fefbaa582dbe7f3              # double 0.99153400000000002
	.quad	0x3fed4e69f05ea24d              # double 0.91582200000000002
	.quad	0x400f7c4545846e8f              # double 3.9356789999999999
	.quad	0x402168b2c83ec893              # double 8.7044890000000006
	.quad	0x4023cd00b45ae600              # double 9.9003960000000006
	.quad	0x40188e22e5de15ca              # double 6.1388049999999996
	.quad	0x3ff9ce453d20f2bf              # double 1.612859
	.quad	0x401acb641700cd85              # double 6.6986239999999997
	.quad	0x40044cce5f7403de              # double 2.5375030000000001
	.quad	0x401a87204295a6c6              # double 6.6319590000000002
	.quad	0x401df5b70691ea79              # double 7.4899560000000002
	.quad	0x40210efd21ff2e49              # double 8.5292750000000002
	.quad	0x4022ab1dd5d3dc8c              # double 9.3342120000000008
	.quad	0x4011ff42fe82517e              # double 4.4992789999999996
	.quad	0x401cf2e946801712              # double 7.2372180000000004
	.quad	0x4014f3293d102bc7              # double 5.2374619999999998
	.quad	0x3fe2a2e3c536d656              # double 0.58238400000000001
	.quad	0x40200cb838c111ae              # double 8.0248430000000006
	.quad	0x3fede696a26e5471              # double 0.93439799999999995
	.quad	0x401ae16c1e364bec              # double 6.7201389999999996
	.quad	0x3ff8f53825e13b19              # double 1.559868
	.quad	0x400907dd44135547              # double 3.1288399999999998
	.quad	0x4012a9c0a8d21bc1              # double 4.6657739999999999
	.quad	0x4012a7e5eaab0425              # double 4.6639629999999999
	.quad	0x3ffe7154003254e7              # double 1.902668
	.quad	0x40206196744b2b77              # double 8.1906009999999991
	.quad	0x3ff117eed45e9186              # double 1.068343
	.quad	0x402390b2c83ec893              # double 9.7826140000000005
	.quad	0x3fc0ba51a005c465              # double 0.130686
	.quad	0x4010f78b3700474e              # double 4.2417420000000003
	.quad	0x401993a109d0635a              # double 6.3941689999999998
	.quad	0x40021504c48adeec              # double 2.2602630000000001
	.quad	0x3fe0229c779a6b51              # double 0.50422500000000003
	.quad	0x40150167ec7863bf              # double 5.2513730000000001
	.quad	0x4013c8c75c4a83b2              # double 4.9460730000000002
	.quad	0x401b25629d8409e5              # double 6.7865089999999997
	.quad	0x40129bb2fec56d5d              # double 4.65205
	.quad	0x4012a22a6f3f52fc              # double 4.6583649999999999
	.quad	0x3ff2cd5d80e496ee              # double 1.175138
	.quad	0x40204d6a593a2df9              # double 8.1512019999999996
	.quad	0x4023e3fc2224edf6              # double 9.9452829999999999
	.quad	0x40134cc4ac6cdaf5              # double 4.8249690000000003
	.quad	0x401fea95c853c148              # double 7.9790869999999998
	.quad	0x4023d8858ff75968              # double 9.9228939999999994
	.quad	0x3fc8c49ba5e353f8              # double 0.19350000000000001
	.quad	0x3ffba64c2f837b4a              # double 1.7281
	.quad	0x400c6b606b7aa25e              # double 3.5524300000000002
	.quad	0x401177ed41b75a75              # double 4.3671160000000002
	.quad	0x401722f05a708ede              # double 5.7841199999999997
	.quad	0x4005a385c67dfe33              # double 2.7048450000000002
	.quad	0x3febc399b2c40d0b              # double 0.86762700000000004
	.quad	0x401755c9a34ca0c3              # double 5.8337770000000004
	.quad	0x40160b89d6adf71f              # double 5.5112680000000003
	.quad	0x40131eed8904f6e0              # double 4.7802030000000002
	.quad	0x401ddeec7c957cd4              # double 7.4676989999999996
	.quad	0x402259192641b329              # double 9.1740200000000005
	.quad	0x401d100de4c51117              # double 7.2656780000000003
	.quad	0x4014d7ce95faa8a8              # double 5.2107489999999999
	.quad	0x4017a6aa4b9884c7              # double 5.9127590000000003
	.quad	0x4022d9b97353b4b3              # double 9.425243
	.quad	0x400065dfa871a3b1              # double 2.0497429999999999
	.quad	0x3fe37abb8800eae2              # double 0.60873200000000005
	.quad	0x4011eeed45e9185d              # double 4.4833270000000001
	.quad	0x40176cd466f5019f              # double 5.8562789999999998
	.quad	0x3ffc4c282c6ef3d4              # double 1.7685930000000001
	.quad	0x401d7e22e5de15ca              # double 7.3731799999999996
	.quad	0x4016be0b0af5fd48              # double 5.6855890000000002
	.quad	0x400d00f7fcfc3f81              # double 3.6254729999999999
	.quad	0x4008f7ed41b75a75              # double 3.1210580000000001
	.quad	0x40046ec0724b76f7              # double 2.5540780000000001
	.quad	0x3fcbcf70153bd167              # double 0.21726799999999999
	.quad	0x402013e61cffeb07              # double 8.0388649999999995
	.quad	0x4009d2862f5989df              # double 3.227795
	.quad	0x4019d673c4f3ba77              # double 6.4594259999999997
	.quad	0x3ffe2ac42e9899bf              # double 1.8854409999999999
	.quad	0x4019d9fe43675ddd              # double 6.4628839999999999
	.quad	0x3fc5cc964628027e              # double 0.17030600000000001
	.quad	0x4022d749cf56eac8              # double 9.4204849999999993
	.quad	0x401aedf7a4e7ab75              # double 6.7323899999999997
	.quad	0x4002c84be40420f7              # double 2.347801
	.quad	0x402184245f5ad96a              # double 8.7580899999999993
	.quad	0x401b6d2bb23571d2              # double 6.8566120000000002
	.quad	0x401e3a67e846a5d7              # double 7.5570370000000002
	.quad	0x4022eda4f00ef135              # double 9.4641490000000008
	.quad	0x4008fcea6c1a048e              # double 3.123494
	.quad	0x401cc69552e2fbe3              # double 7.1939289999999998
	.quad	0x4019cfde2ef4e011              # double 6.4529959999999997
	.quad	0x4023d1d9b1b79d91              # double 9.9098640000000006
	.quad	0x401516b59146e4c1              # double 5.2721770000000001
	.quad	0x3ff552d3415b1423              # double 1.332721
	.quad	0x401787d73c925786              # double 5.882657
	.quad	0x401a6e1c58255b03              # double 6.6075299999999997
	.quad	0x4022e2fba01eeed9              # double 9.4433260000000007
	.quad	0x3fe85be5d9e40c84              # double 0.76121799999999995
	.quad	0x4018dad6cb535009              # double 6.2137099999999998
	.quad	0x401eb5b89939218a              # double 7.6774620000000002
	.quad	0x40211b4d056c508b              # double 8.5533219999999996
	.quad	0x401e194a2b9d3cbc              # double 7.5246969999999997
	.quad	0x40101bc621b7e0ac              # double 4.0271229999999996
	.quad	0x3fc7fefbf401c4fc              # double 0.187469
	.quad	0x3fefb52c9d16fc9c              # double 0.99086600000000002
	.quad	0x401d9d712a0ec743              # double 7.4037519999999999
	.quad	0x3ff5d7ca2120e1f8              # double 1.365183
	.quad	0x3fe0f30a4e379b78              # double 0.52966800000000003
	.quad	0x3ff428848387df5d              # double 1.259892
	.quad	0x401317c06e19b90f              # double 4.7731950000000003
	.quad	0x401e64d013a92a30              # double 7.5984499999999997
	.quad	0x401f6a5a469d7343              # double 7.85386
	.quad	0x402031a1554fbdad              # double 8.0969339999999992
	.quad	0x4005706b37867f0b              # double 2.6798920000000002
	.quad	0x4002da1f4b1ee243              # double 2.3565049999999998
	.quad	0x401c22b302f72b45              # double 7.0338859999999999
	.quad	0x40205f648c7192ea              # double 8.1863139999999994
	.quad	0x40036c7c957cd467              # double 2.427972
	.quad	0x401bf676640a6b94              # double 6.9906860000000002
	.quad	0x40151872b020c49c              # double 5.2738750000000003
	.quad	0x4014f476af89c5e7              # double 5.238734
	.quad	0x401e7b328b6d86ec              # double 7.6203099999999999
	.quad	0x3ffcddd1a21ea359              # double 1.804155
	.quad	0x4023ce6b3fe9fadb              # double 9.903162
	.quad	0x40156114d2f5dbba              # double 5.3448060000000002
	.quad	0x4020ef83382e44b7              # double 8.4677980000000002
	.quad	0x401be270b06c43f6              # double 6.971133
	.quad	0x401115479d4d8341              # double 4.2707810000000004
	.quad	0x40161677f6b1a2a5              # double 5.5219420000000001
	.quad	0x4018bceee0f3cb3e              # double 6.1845049999999997
	.quad	0x3ff7c5803cd141a7              # double 1.4857180000000001
	.quad	0x4003f1148fd9fd37              # double 2.492715
	.quad	0x40206daf294dd723              # double 8.2142269999999993
	.quad	0x401f22c343b70ef5              # double 7.7839479999999996
	.quad	0x40239f112fd32c62              # double 9.8106779999999993
	.quad	0x401663508f648c72              # double 5.5969870000000004
	.quad	0x401aef61ed5ae1ce              # double 6.7337720000000001
	.quad	0x3ff5e02b841248d8              # double 1.367229
	.quad	0x3fee5666a98244e9              # double 0.94804699999999997
	.quad	0x40141e492bc2fc69              # double 5.0295759999999996
	.quad	0x4014c59578a2a90d              # double 5.1929530000000002
	.quad	0x3ffe69531550ca1d              # double 1.900714
	.quad	0x3fff3996fa82e87d              # double 1.95156
	.quad	0x4022e8e1719f7f8d              # double 9.4548450000000006
	.quad	0x4013bf53c579f234              # double 4.9368429999999996
	.quad	0x4018197bfa4c61d8              # double 6.0248869999999997
	.quad	0x4022b92be48a58b4              # double 9.361663
	.quad	0x401c0856e696a26e              # double 7.0081439999999997
	.quad	0x401acc33f85510d4              # double 6.6994170000000004
	.quad	0x3fe8a176ddaceee1              # double 0.76971000000000001
	.quad	0x4012b313be22e5de              # double 4.6748799999999999
	.quad	0x4021203dff3f0fe0              # double 8.5629729999999995
	.quad	0x4017f731098d477c              # double 5.9913980000000002
	.quad	0x3ff34983d790752e              # double 1.2054480000000001
	.quad	0x4022cc3aa79bbadc              # double 9.3988849999999999
	.quad	0x40195235f8099179              # double 6.3302839999999998
	.quad	0x401254927913e814              # double 4.5825899999999997
	.quad	0x4014448cf7caa759              # double 5.0669440000000003
	.quad	0x4022f5477bbf93ff              # double 9.4790609999999997
	.quad	0x40084887a8d64d7f              # double 3.035415
	.quad	0x4015ea958537e2c5              # double 5.4790859999999997
	.quad	0x401994dad31fcd25              # double 6.3953660000000001
	.quad	0x40153d3e4ef0281c              # double 5.3098080000000003
	.quad	0x401ff31f8a0902de              # double 7.987425
	.quad	0x3ff4c9e236c15d2d              # double 1.299288
	.quad	0x4010551dabe2717a              # double 4.0831210000000002
	.quad	0x400ae07570c564f9              # double 3.3595989999999998
	.quad	0x3ffa62cdc011d367              # double 1.649122
	.quad	0x3ffe35a20ddc6195              # double 1.8880939999999999
	.quad	0x401ce88effe2a3cf              # double 7.2271080000000003
	.quad	0x3ff4ac3eb7cbb3c8              # double 1.292052
	.quad	0x40165dda8bd230ba              # double 5.5916540000000001
	.quad	0x4023dd610adcd2d4              # double 9.9323809999999994
	.quad	0x3ffd48301a79feca              # double 1.8301240000000001
	.quad	0x402051a8262456f7              # double 8.1594859999999994
	.quad	0x401243b70ef56649              # double 4.566128
	.quad	0x401e0c069e7fb268              # double 7.5117440000000001
	.quad	0x4022847e8ccdd93c              # double 9.2587779999999995
	.quad	0x3fc130b5aa715832              # double 0.134299
	.quad	0x402388344c37e6f7              # double 9.7660239999999998
	.quad	0x4011d8112ba16e7a              # double 4.4610029999999998
	.quad	0x3fd162c343b70ef5              # double 0.27165299999999998
	.quad	0x401217963992c8c5              # double 4.523034
	.quad	0x400e9e468cac4b4d              # double 3.827283
	.quad	0x4023222d2fe3f35a              # double 9.566751
	.quad	0x401d69f05ea24cc7              # double 7.3534560000000004
	.quad	0x402320b26394face              # double 9.5638609999999993
	.quad	0x3ff8c245f5ad96a7              # double 1.5474300000000001
	.quad	0x400b0d7f0ed3d85a              # double 3.3815900000000001
	.quad	0x401229917939a7c1              # double 4.5405939999999996
	.quad	0x400f5860999dcb58              # double 3.9181530000000002
	.quad	0x402383994e1a3f46              # double 9.7570289999999993
	.quad	0x3ff27ab96f21f6cb              # double 1.154962
	.quad	0x3fe70e9f6a93f291              # double 0.72053500000000004
	.quad	0x3ff4f55ac03ff690              # double 1.309901
	.quad	0x400183821af7d30b              # double 2.1892130000000001
	.quad	0x4021520e410b630b              # double 8.6602650000000008
	.quad	0x402139c92ddbdb5e              # double 8.6128630000000008
	.quad	0x3ffb99c17225b74a              # double 1.7250380000000001
	.quad	0x4020e4de5d18090b              # double 8.4470089999999995
	.quad	0x401e25b89939218a              # double 7.5368370000000002
	.quad	0x3fad4e6e221c8a7a              # double 0.057238999999999998
	.quad	0x401aa3e78e1932d7              # double 6.6600630000000001
	.quad	0x3fef25e56cd6c2f0              # double 0.97337600000000002
	.quad	0x4016acb5350092cd              # double 5.66866
	.quad	0x40233cda4ce8101f              # double 9.6188529999999996
	.quad	0x4022fb12f4cf4a56              # double 9.4903790000000008
	.quad	0x3ffb96c7219220ff              # double 1.7243109999999999
	.quad	0x40221ff8012dfd69              # double 9.0624389999999995
	.quad	0x4013dc24c404a72f              # double 4.9649840000000003
	.quad	0x40236b2fcac8e68e              # double 9.7093489999999996
	.quad	0x400c34dc65c70436              # double 3.525811
	.quad	0x4007e7021d10b1ff              # double 2.987797
	.quad	0x4000cb7132724313              # double 2.0993369999999998
	.quad	0x400e15d91ab8e8ea              # double 3.7606679999999999
	.quad	0x401a9d9988d2a1f9              # double 6.6539060000000001
	.quad	0x4020512e40852b4e              # double 8.1585560000000008
	.quad	0x400cffbbd7b2031d              # double 3.62487
	.quad	0x4014a93ee5eedcc2              # double 5.165279
	.quad	0x4023c983f91e646f              # double 9.8935849999999998
	.quad	0x4017159817b95a29              # double 5.7710879999999998
	.quad	0x3fef072085b18549              # double 0.96962000000000003
	.quad	0x402003edd8b60f1b              # double 8.0076739999999997
	.quad	0x402242849cb252ce              # double 9.129918
	.quad	0x4023640ee06d9381              # double 9.6954259999999994
	.quad	0x4011413a92a30553              # double 4.3136999999999999
	.quad	0x400c505a708ede55              # double 3.5392350000000001
	.quad	0x401cea7f3cf70154              # double 7.2290010000000002
	.quad	0x40119ff25e56cd6c              # double 4.4061979999999998
	.quad	0x400b93bc903ea705              # double 3.4471370000000001
	.quad	0x40234236c15d2d02              # double 9.6293240000000004
	.quad	0x400b278d0cc35ce2              # double 3.3943120000000002
	.quad	0x4010ad6b65a9a805              # double 4.1693550000000004
	.quad	0x3fd8b4f1e4b44a1f              # double 0.386044
	.quad	0x3ffde049ecb31c22              # double 1.8672580000000001
	.quad	0x40196284dfce3151              # double 6.3462100000000001
	.quad	0x4013028b2a6b0d95              # double 4.7524839999999999
	.quad	0x40194b2074ea8da8              # double 6.323366
	.quad	0x3ff354845132f87b              # double 1.208134
	.quad	0x40214092ccf6be38              # double 8.6261200000000002
	.quad	0x40092286f8ad2568              # double 3.1418590000000002
	.quad	0x4022bb97353b4b30              # double 9.3663880000000006
	.quad	0x4002836eb4e98138              # double 2.3141759999999998
	.quad	0x4011d14a90470a81              # double 4.4543860000000004
	.quad	0x40207b5b2d4d4025              # double 8.2409300000000005
	.quad	0x401ac5a1016ce78a              # double 6.6929970000000001
	.quad	0x4023ae50a45d41fa              # double 9.8404589999999992
	.quad	0x400cbe1869835159              # double 3.5928200000000001
	.quad	0x401a2397dd00f777              # double 6.5347590000000002
	.quad	0x400aa3fee2c98e54              # double 3.330076
	.quad	0x401295a74c09c3ce              # double 4.6461459999999999
	.quad	0x40013e5a78f25a25              # double 2.155446
	.quad	0x401d2fb480a5accd              # double 7.2965869999999997
	.quad	0x40051ea0ba1f4b1f              # double 2.6399550000000001
	.quad	0x3ff13f2a172abef0              # double 1.0779209999999999
	.quad	0x401d0a58f7121ab5              # double 7.2601050000000003
	.quad	0x402304f70153bd16              # double 9.5096969999999992
	.quad	0x402200ba83f4eca7              # double 9.0014230000000008
	.quad	0x401db9d1f601797d              # double 7.4314650000000002
	.quad	0x40183fe36d22424a              # double 6.0623909999999999
	.quad	0x40216c5ef62f9ca6              # double 8.7116620000000005
	.quad	0x4006480841ede11a              # double 2.7851720000000002
	.quad	0x40205804102ff8ec              # double 8.1719059999999998
	.quad	0x4003f2641b328b6e              # double 2.4933550000000002
	.quad	0x4023b3d1676640a7              # double 9.8512070000000004
	.quad	0x402249057d1782d4              # double 9.1426200000000008
	.quad	0x3fe98cfbfc6540cc              # double 0.79845999999999994
	.quad	0x4020fe1437c5692b              # double 8.4962479999999996
	.quad	0x4011b0d90e23af32              # double 4.4227030000000003
	.quad	0x4016b8b75ea67e84              # double 5.6803869999999996
	.quad	0x401cada22f6a50d7              # double 7.1695640000000003
	.quad	0x4002219fc2a8869c              # double 2.2664179999999998
	.quad	0x401ad5fd8adab9f5              # double 6.7089749999999997
	.quad	0x401b845b291b823d              # double 6.8792540000000004
	.quad	0x400d78e432441feb              # double 3.6840290000000002
	.quad	0x3fd070691ea78af4              # double 0.25686100000000001
	.quad	0x3fc75e5aff2a172b              # double 0.18256700000000001
	.quad	0x400d358c8eef1bac              # double 3.6511469999999999
	.quad	0x40010c083126e979              # double 2.1308750000000001
	.quad	0x4019497aaac1094a              # double 6.3217569999999998
	.quad	0x4022da480e8c8abd              # double 9.4263309999999993
	.quad	0x40208243bb40b34e              # double 8.2544229999999992
	.quad	0x40116f3fd933e35c              # double 4.3586419999999997
	.quad	0x401dd65907d91255              # double 7.4593239999999996
	.quad	0x401e8c5004fb1184              # double 7.6370240000000003
	.quad	0x40017a311e85fd05              # double 2.1846640000000002
	.quad	0x401cb9999999999a              # double 7.1812500000000004
	.quad	0x40030f47b677f6b2              # double 2.3824610000000002
	.quad	0x3fd633a8a3f8982d              # double 0.34690300000000002
	.quad	0x401bc81c2e33eff2              # double 6.9454200000000004
	.quad	0x3ff498bb4d48882f              # double 1.287288
	.quad	0x4012681f53825e14              # double 4.6016820000000003
	.quad	0x4006ea90470a808d              # double 2.8645330000000002
	.quad	0x3ff2a6106ab14ec2              # double 1.165543
	.quad	0x4015f7d63022dd7b              # double 5.4920280000000004
	.quad	0x40108e275ab7dc7b              # double 4.1388220000000002
	.quad	0x400d26a1a500d5e9              # double 3.6438630000000001
	.quad	0x401500ea9e6eeb70              # double 5.2508949999999999
	.quad	0x400afcb2d905c033              # double 3.3733879999999998
	.quad	0x400dc8b75ea67e84              # double 3.7230059999999998
	.quad	0x401a655b4677b396              # double 6.5989810000000002
	.quad	0x3ff74d4fdf3b645a              # double 1.456375
	.quad	0x3fff020f6f08cc57              # double 1.9380029999999999
	.quad	0x40002779a6b50b0f              # double 2.0192749999999999
	.quad	0x4005a5b7cfe58601              # double 2.7059169999999999
	.quad	0x3fff14488c60cbf3              # double 1.9424520000000001
	.quad	0x402158e71476af8a              # double 8.6736380000000004
	.quad	0x4020c1713ad5bee4              # double 8.3778170000000002
	.quad	0x40189b09635610ae              # double 6.1514030000000002
	.quad	0x401ee58e64b23140              # double 7.7241759999999999
	.quad	0x402338b3f63c31df              # double 9.6107479999999991
	.quad	0x4021e515f02c4d66              # double 8.9474330000000002
	.quad	0x3fd44a83b1d0c804              # double 0.317048
	.quad	0x4005f7ad4b2745bf              # double 2.7459359999999999
	.quad	0x400b2303c07ee0b1              # double 3.3920970000000001
	.quad	0x4023c5fbf83382e4              # double 9.8866879999999994
	.quad	0x3ff87ba3443d46b2              # double 1.5301849999999999
	.quad	0x401c35f5275ee99a              # double 7.0526929999999997
	.quad	0x401e5d6d3b6cbd98              # double 7.5912369999999995
	.quad	0x3ffd2cd39da16617              # double 1.8234440000000001
	.quad	0x4004c29d8409e55c              # double 2.595027
	.quad	0x4018ff27bb2fec57              # double 6.2491750000000001
	.quad	0x40164cdab191dde3              # double 5.5750529999999996
	.quad	0x401ed16df3f96180              # double 7.7045209999999997
	.quad	0x402238db6a1e81cb              # double 9.1110489999999995
	.quad	0x4000c9aed56b0100              # double 2.0984780000000001
	.quad	0x401734cad57bc7f7              # double 5.8015549999999996
	.quad	0x4020901e8a2ec28b              # double 8.2814829999999997
	.quad	0x4010abf8fcd67fd4              # double 4.167942
	.quad	0x400f0cc4ef88b978              # double 3.8812350000000002
	.quad	0x4015c1ce6c093d96              # double 5.4392639999999997
	.quad	0x40203de28aa43351              # double 8.1208690000000008
	.quad	0x400a93953dea465a              # double 3.3220619999999998
	.quad	0x4022b62a3cea6c1a              # double 9.355791
	.quad	0x4005323358f2e05d              # double 2.6495120000000001
	.quad	0x40234d6ba8c58687              # double 9.6512119999999992
	.quad	0x4001c01abd1aa822              # double 2.218801
	.quad	0x401b0bda5119ce07              # double 6.7615749999999997
	.quad	0x4012b12620253975              # double 4.6729969999999996
	.quad	0x400a6135daad6020              # double 3.297466
	.quad	0x4004f49f94855da2              # double 2.6194449999999998
	.quad	0x3ffa2ca46e08f217              # double 1.635899
	.quad	0x3fee5948dc11e42e              # double 0.94839899999999999
	.quad	0x40034b367a0f9097              # double 2.4117250000000001
	.quad	0x4023a92189bd8384              # double 9.8303340000000005
	.quad	0x40156059210385c6              # double 5.3440899999999996
	.quad	0x401021b9b66f9336              # double 4.0329350000000002
	.quad	0x4021e6ee30caa327              # double 8.9510360000000002
	.quad	0x3ffd94d72799a1fd              # double 1.848838
	.quad	0x4016d4bec679cc75              # double 5.7077590000000002
	.quad	0x40069d1d4738a3b5              # double 2.8267159999999998
	.quad	0x3ff524cd74927914              # double 1.321485
	.quad	0x401f72e019b0ab2e              # double 7.8621829999999999
	.quad	0x401f6141205bc01a              # double 7.8449749999999998
	.quad	0x401ad06466b1e5c1              # double 6.7035080000000002
	.quad	0x401264295a6c5d20              # double 4.5978139999999996
	.quad	0x40223218def416be              # double 9.0978460000000005
	.quad	0x401c90110a137f39              # double 7.1406900000000002
	.quad	0x400669bcfd4bf099              # double 2.8016299999999998
	.quad	0x3fee9098d477bbf9              # double 0.95515099999999997
	.quad	0x401a9fa22706d506              # double 6.6558919999999997
	.quad	0x40202808e9b38d61              # double 8.0781930000000006
	.quad	0x3ffdc68fd199bb28              # double 1.8609770000000001
	.quad	0x3fcc892ab68cef67              # double 0.222936
	.quad	0x401d6bebe1650a46              # double 7.3553920000000002
	.quad	0x3fec355cd91eeaa7              # double 0.88151400000000002
	.quad	0x400f77460242d05f              # double 3.9332389999999999
	.quad	0x401f889b951c5c57              # double 7.8834059999999999
	.quad	0x40181a3db3bfb58d              # double 6.0256259999999999
	.quad	0x3ff6dfd8adab9f56              # double 1.4296500000000001
	.quad	0x40237847d3d4280b              # double 9.7349230000000002
	.quad	0x4015bedaa92e6213              # double 5.4363809999999999
	.quad	0x40229f9335d249e4              # double 9.3116699999999994
	.quad	0x401a6635e74299d9              # double 6.5998150000000004
	.quad	0x4010720817fc7608              # double 4.1113590000000002
	.quad	0x401d99f7f8ca8199              # double 7.40036
	.quad	0x3ff9b080303c07ee              # double 1.605591
	.quad	0x400c350092ccf6be              # double 3.5258799999999999
	.quad	0x4016e0c308feac43              # double 5.7194940000000001
	.quad	0x4013dd627bf61aa4              # double 4.9661960000000001
	.quad	0x401cfd32c625e99f              # double 7.2472640000000004
	.quad	0x401f90e66cb10343              # double 7.8915040000000002
	.quad	0x4012dd34df04ddb5              # double 4.7160219999999997
	.quad	0x4002233a4723ab00              # double 2.267201
	.quad	0x3ff24288051c9f73              # double 1.141243
	.quad	0x4023bc44e0daa0cb              # double 9.8677130000000001
	.quad	0x401f8369fcf3dc05              # double 7.8783339999999997
	.quad	0x401e0605ab3aabcd              # double 7.5058809999999995
	.quad	0x40070f0bf1a5ca2a              # double 2.8823470000000002
	.quad	0x3ffb88c5004fb118              # double 1.7208909999999999
	.quad	0x3ff8dc044284dfce              # double 1.553715
	.quad	0x4002a13c254a3c64              # double 2.3287279999999999
	.quad	0x400b66bc621b7e0b              # double 3.4251640000000001
	.quad	0x401a460f5e41d4b7              # double 6.5684180000000003
	.quad	0x3feafd9fd36f7e3d              # double 0.84345999999999999
	.quad	0x4003673471f79421              # double 2.4253930000000001
	.quad	0x40175db6a1e81cb4              # double 5.8415169999999996
	.quad	0x3ffdfcf5f4e4430b              # double 1.874258
	.quad	0x400227ecfe9b7bf2              # double 2.269495
	.quad	0x401860db6a1e81cb              # double 6.0945869999999998
	.quad	0x401e8d9ad85dfa87              # double 7.6382859999999999
	.quad	0x4004129e4d5d80e5              # double 2.5090910000000002
	.quad	0x3ffc1dd1a21ea359              # double 1.75728
	.quad	0x4014e041461b6d44              # double 5.2189990000000002
	.quad	0x3ffe8528283d35eb              # double 1.9075089999999999
	.quad	0x401df7225b749add              # double 7.4913420000000003
	.quad	0x4023d297e132b55f              # double 9.911315
	.quad	0x401bd9c6b0531983              # double 6.9626720000000004
	.quad	0x40226a003ab862b2              # double 9.2070329999999991
	.quad	0x4023ca788db0574b              # double 9.8954509999999995
	.quad	0x3ff5ba9d1f601798              # double 1.35806
	.quad	0x401f880c308feac4              # double 7.8828589999999998
	.quad	0x401915a63f9a49c3              # double 6.2711420000000002
	.quad	0x400159420b3d4ae4              # double 2.1685829999999999
	.quad	0x3fe89e81cb46bacf              # double 0.76934899999999995
	.quad	0x40144bff47735c18              # double 5.0742159999999998
	.quad	0x40050f1fddebd902              # double 2.6323850000000002
	.quad	0x4018bebe9c886163              # double 6.1862740000000001
	.quad	0x400bd2ea52ef911d              # double 3.477986
	.quad	0x4023e7d113836a83              # double 9.9527669999999996
	.quad	0x40206f8c21e1d218              # double 8.2178660000000008
	.quad	0x401fc2a5e785b5b7              # double 7.9400859999999999
	.quad	0x400e1b2e59af9ebf              # double 3.7632720000000002
	.quad	0x402248a6117720c9              # double 9.1418920000000004
	.quad	0x401cdae0c1765775              # double 7.2137479999999998
	.quad	0x402360be0ded288d              # double 9.6889500000000001
	.quad	0x400d6d6ece13f4aa              # double 3.6784340000000002
	.quad	0x4022d572799a1fd1              # double 9.4168889999999993
	.quad	0x400c4a305532617c              # double 3.536225
	.quad	0x402337af42784a94              # double 9.6087589999999991
	.quad	0x40209af5ba2be059              # double 8.3026560000000007
	.quad	0x3fdb8140dd3fe197              # double 0.42976399999999998
	.quad	0x40099a67a52ac754              # double 3.200393
	.quad	0x3fe4a6fe718a86d7              # double 0.64538499999999999
	.quad	0x400f1f39d1b2e59b              # double 3.890247
	.quad	0x3fe3608d08919ef9              # double 0.60553599999999996
	.quad	0x400a25657fb69985              # double 3.2682600000000002
	.quad	0x400f7c9bc7714339              # double 3.9358439999999999
	.quad	0x4015f05e5f30e7ff              # double 5.4847349999999997
	.quad	0x400005aee631f8a1              # double 2.0027750000000002
	.quad	0x40194dc1a47a9e2c              # double 6.3259340000000002
	.quad	0x3ffb7fa2ad3e920c              # double 1.718661
	.quad	0x40114410b630a915              # double 4.3164699999999998
	.quad	0x401ca82517e77d52              # double 7.1642039999999998
	.quad	0x3ff30a2fcefaa476              # double 1.1899869999999999
	.quad	0x40007ed41b75a74c              # double 2.061928
	.quad	0x401b297891e21533              # double 6.7904989999999996
	.quad	0x40158afdda8bd231              # double 5.3857340000000002
	.quad	0x4011f1b8ed1bf7ad              # double 4.4860569999999997
	.quad	0x401cada7b0b39192              # double 7.1695849999999997
	.quad	0x400f60a5269595ff              # double 3.9221900000000001
	.quad	0x401142f555821294              # double 4.3153889999999997
	.quad	0x4011e005c4651f3f              # double 4.4687720000000004
	.quad	0x402321192641b329              # double 9.5646450000000005
	.quad	0x4023109fc6da4485              # double 9.5324690000000007
	.quad	0x401c545e4e69f05f              # double 7.0823910000000003
	.quad	0x401256f544bb1af4              # double 4.5849200000000003
	.quad	0x40230fae3608d089              # double 9.5306259999999998
	.quad	0x3fec6aa4b9884c6a              # double 0.88801799999999997
	.quad	0x402048e68e3ef284              # double 8.1423839999999998
	.quad	0x40119d3804534bd7              # double 4.4035339999999996
	.quad	0x401a543b2dd377e2              # double 6.5822570000000002
	.quad	0x401b7ff822bbecab              # double 6.8749700000000002
	.quad	0x40199e1fc08fa7a8              # double 6.4044179999999997
	.quad	0x3ff38d2806af46aa              # double 1.221962
	.quad	0x40238a46e08f2171              # double 9.7700720000000007
	.quad	0x401bc2413db7f173              # double 6.9397019999999996
	.quad	0x40186e8dda48b652              # double 6.1079629999999998
	.quad	0x40222e5e4606748e              # double 9.0905629999999995
	.quad	0x3ff49a5daf07bfe8              # double 1.287687
	.quad	0x401059f90539fba4              # double 4.0878639999999997
	.quad	0x401f9f18c9fb6135              # double 7.9053680000000001
	.quad	0x400690f6ad70e6f3              # double 2.820783
	.quad	0x4013294ee392e1ef              # double 4.7903399999999996
	.quad	0x4005cb33daf8df7a              # double 2.7242199999999999
	.quad	0x4019d3fcc9ea9a3d              # double 6.4570189999999998
	.quad	0x3ff7060242d05f29              # double 1.4389670000000001
	.quad	0x40181219652bd3c3              # double 6.0176749999999997
	.quad	0x401586e82949a565              # double 5.3817449999999996
	.quad	0x4016b0f5a1016ce8              # double 5.6728120000000004
	.quad	0x401daa2df9378ee3              # double 7.4161910000000004
	.quad	0x401b1a5e353f7cee              # double 6.7757500000000004
	.quad	0x40137fed634549b6              # double 4.8749289999999998
	.quad	0x402359728a611772              # double 9.6747019999999999
	.quad	0x400835286b59146e              # double 3.0259559999999999
	.quad	0x400aeaf038e29f9d              # double 3.364716
	.quad	0x401c59f8c21e1d21              # double 7.0878629999999996
	.quad	0x400aaa8d21bc126a              # double 3.3332769999999998
	.quad	0x4010626916440f24              # double 4.0961040000000004
	.quad	0x4016ccad57bc7f78              # double 5.6998800000000003
	.quad	0x4013c4007570c565              # double 4.941408
	.quad	0x401a451fc4c16590              # double 6.5675039999999996
	.quad	0x4021a26dacabc515              # double 8.8172429999999995
	.quad	0x4012f92af9a8cdea              # double 4.743328
	.quad	0x4002c4998d045fe1              # double 2.345996
	.quad	0x402152b1b36bd2b7              # double 8.6615120000000001
	.quad	0x3ff6b5147f130596              # double 1.4192089999999999
	.quad	0x4014c8fde2ef4e01              # double 5.1962809999999999
	.quad	0x3ffe05a8155d5f57              # double 1.8763810000000001
	.quad	0x401160913a4f8727              # double 4.3443040000000002
	.quad	0x40239fe9531550ca              # double 9.8123269999999998
	.quad	0x400b2ed1bf7ad4b2              # double 3.3978609999999998
	.quad	0x401638b8ae31d713              # double 5.5553920000000003
	.quad	0x3ffdbce3150dae3e              # double 1.8586149999999999
	.quad	0x401a38255b035bd5              # double 6.5548299999999999
	.quad	0x402306ab14ec204f              # double 9.5130239999999997
	.quad	0x4014f41d084e831b              # double 5.2383920000000002
	.quad	0x402085903a7546d4              # double 8.260866
	.quad	0x3ff322f05a708ede              # double 1.1960299999999999
	.quad	0x401b3a5614df8b15              # double 6.8069689999999996
	.quad	0x402124a16a487336              # double 8.5715439999999994
	.quad	0x3ff9538cda6e75ff              # double 1.5828979999999999
	.quad	0x400afba4d6e47dc3              # double 3.3728729999999998
	.quad	0x3fe04f0f9d2bf551              # double 0.50965099999999997
	.quad	0x401049070fbeb9e5              # double 4.0713160000000004
	.quad	0x4021c8f55de58e65              # double 8.8924970000000005
	.quad	0x400d012d77318fc5              # double 3.625575
	.quad	0x401f2bb6672fba02              # double 7.7926880000000001
	.quad	0x401fbceaf251c194              # double 7.9344900000000003
	.quad	0x4015f45e0b4e11dc              # double 5.4886400000000002
	.quad	0x400afd3bafd976ff              # double 3.3736489999999999
	.quad	0x3ffb578b3700474e              # double 1.7088730000000001
	.quad	0x40151e3369b9d7fe              # double 5.2794930000000004
	.quad	0x401511626b2f2303              # double 5.2669769999999998
	.quad	0x401721af3a14cec4              # double 5.7828949999999999
	.quad	0x4019d0578e5c4eb5              # double 6.4534589999999996
	.quad	0x40156a93af74cd31              # double 5.3540789999999996
	.quad	0x402240a009f62307              # double 9.1262209999999993
	.quad	0x40237f204295a6c6              # double 9.7482930000000003
	.quad	0x400955946c332f01              # double 3.1667869999999998
	.quad	0x401af8e71476af8a              # double 6.7430690000000002
	.quad	0x4007045e4e69f05f              # double 2.8771330000000002
	.quad	0x4021afec7863beec              # double 8.8436009999999996
	.quad	0x40237393037d6302              # double 9.7257309999999997
	.quad	0x401b505d95dd4c77              # double 6.8284820000000002
	.quad	0x4019c151611ba3ca              # double 6.4387869999999996
	.quad	0x400a279a2834d270              # double 3.2693370000000002
	.quad	0x401129728a611772              # double 4.290476
	.quad	0x401735425f202108              # double 5.8020110000000003
	.quad	0x4022d1700cd85597              # double 9.4090579999999999
	.quad	0x400f71b3f20a73f7              # double 3.9305189999999999
	.quad	0x402153eff1950332              # double 8.6639400000000002
	.quad	0x3ffdb7574f722e1b              # double 1.8572610000000001
	.quad	0x4002a036006d0d4a              # double 2.3282280000000002
	.quad	0x40070fa376922d95              # double 2.8826360000000002
	.quad	0x4016a028a1dfb939              # double 5.6564050000000003
	.quad	0x401741ad2135daad              # double 5.8141369999999997
	.quad	0x402041947cfa26a2              # double 8.1280859999999997
	.quad	0x400ada58f7121ab5              # double 3.3566150000000001
	.quad	0x400f7628cbd1244a              # double 3.9326949999999998
	.quad	0x4010803254e6e222              # double 4.1251920000000002
	.quad	0x40134df6db940fed              # double 4.8261370000000001
	.quad	0x4021b2b3892ee84b              # double 8.8490260000000003
	.quad	0x4002eaa8eb463498              # double 2.3645800000000001
	.quad	0x401b13fa6defc7a4              # double 6.7695100000000004
	.quad	0x40235da78f25a251              # double 9.682919
	.quad	0x4023afc2ca148ba8              # double 9.8432829999999995
	.quad	0x401976adf71eafee              # double 6.3658979999999996
	.quad	0x40090933a0407cc8              # double 3.1294930000000001
	.quad	0x4019623d0bfa0946              # double 6.345936
	.quad	0x4021cadc2b0ea183              # double 8.8962109999999992
	.quad	0x4005a92684cf073a              # double 2.7075930000000001
	.quad	0x4013ea55d1c3ac93              # double 4.9788430000000004
	.quad	0x401fd1c864883fd5              # double 7.9548659999999999
	.quad	0x3ff58d0aaa7ded6c              # double 1.3469340000000001
	.quad	0x4019b5cb35f3d7d4              # double 6.4275330000000004
	.quad	0x3ff1b85729b280f1              # double 1.107505
	.quad	0x3feca12d77318fc5              # double 0.894675
	.quad	0x40179931ca7d6734              # double 5.8996040000000001
	.quad	0x3fb69f383f0bae8a              # double 0.088367000000000001
	.quad	0x3fde44b6e935b91f              # double 0.47294399999999998
	.quad	0x40202eaf6837f7be              # double 8.0911819999999999
	.quad	0x4019f0bed740c415              # double 6.4851029999999996
	.quad	0x401366f587d6f976              # double 4.8505459999999996
	.quad	0x401fa9a88ace24bc              # double 7.9156820000000003
	.quad	0x40109df3300de4c5              # double 4.1542479999999999
	.quad	0x4000d34c5da6a444              # double 2.103173
	.quad	0x3fe134117f84449e              # double 0.53760600000000003
	.quad	0x401757d3d4280ae1              # double 5.835769
	.quad	0x401f80c4588a04d1              # double 7.8757489999999998
	.quad	0x401781e14bdfd263              # double 5.8768359999999999
	.quad	0x4006681908e581cf              # double 2.8008289999999998
	.quad	0x3ffe0ec204f2ae08              # double 1.878603
	.quad	0x3ff0e36d22424a27              # double 1.0555239999999999
	.quad	0x3fe3f4623d0bfa09              # double 0.62358199999999997
	.quad	0x4016fe51d25aab47              # double 5.7483589999999998
	.quad	0x40214b59bc33f855              # double 8.6471689999999999
	.quad	0x4017a68512231833              # double 5.912617
	.quad	0x4020555992428d43              # double 8.1666989999999995
	.quad	0x401c5f2ae07e5a79              # double 7.092937
	.quad	0x40179cf95d4e8fb0              # double 5.903295
	.quad	0x402387d32c625e9a              # double 9.7652830000000002
	.quad	0x4022b33a2595bbbf              # double 9.3500530000000008
	.quad	0x3ff5cfd199bb2789              # double 1.363237
	.quad	0x4013056f32bdc26e              # double 4.7553070000000002
	.quad	0x3fd5cf4623d0bfa1              # double 0.34077600000000002
	.quad	0x40163e0e30446b6a              # double 5.5606010000000001
	.quad	0x4003ae6afcce1c58              # double 2.4601649999999999
	.quad	0x401f3f811f4f50a0              # double 7.8120159999999998
	.quad	0x401a78e432441feb              # double 6.6180580000000004
	.quad	0x3f8143393ab430f5              # double 0.0084290000000000007
	.quad	0x4004618611fd5886              # double 2.5476190000000001
	.quad	0x4012b3dee78183f9              # double 4.6756549999999999
	.quad	0x3fbecca2db61bb06              # double 0.12031
	.quad	0x401cc28aa433508f              # double 7.1899819999999997
	.quad	0x4020698fa376922e              # double 8.2061740000000007
	.quad	0x3febce8b7e4de3b9              # double 0.86896300000000004
	.quad	0x400806d82ba5a038              # double 3.003342
	.quad	0x3ffed26a65cf67b2              # double 1.9263710000000001
	.quad	0x4015d9a95421c044              # double 5.4625599999999999
	.quad	0x3ffbefd32c625e9a              # double 1.746051
	.quad	0x3febe20ee8d10f52              # double 0.87134500000000004
	.quad	0x400f2f1455219a84              # double 3.8979879999999998
	.quad	0x4020378982cb20fb              # double 8.1084709999999998
	.quad	0x3ff699fb1e18efbb              # double 1.412593
	.quad	0x401ad22c01e68a0d              # double 6.7052459999999998
	.quad	0x40221da250f84018              # double 9.0578789999999998
	.quad	0x40202c126a65cf68              # double 8.0860780000000005
	.quad	0x4012eca70d1fa333              # double 4.7311059999999996
	.quad	0x40021f2ba9d1f601              # double 2.2652199999999998
	.quad	0x4012977c02afdda9              # double 4.6479340000000002
	.quad	0x40188384fd2a62aa              # double 6.1284369999999999
	.quad	0x4022199c7bcc2939              # double 9.0500220000000002
	.quad	0x402081055b899392              # double 8.2519939999999998
	.quad	0x3ff4a275ab7dc7ac              # double 1.289663
	.quad	0x4014dfe8ee6b8306              # double 5.2186620000000001
	.quad	0x40163be553ac4f7f              # double 5.5584920000000002
	.quad	0x40195beb18116ebd              # double 6.3397639999999997
	.quad	0x4023149c2c1b10fd              # double 9.5402539999999991
	.quad	0x4023e4577d955715              # double 9.9459800000000004
	.quad	0x40077fb480a5accd              # double 2.9373559999999999
	.quad	0x400e48db0574b407              # double 3.785574
	.quad	0x402377ca85caafbc              # double 9.7339669999999998
	.quad	0x401fe641f644955b              # double 7.9748609999999997
	.quad	0x4014266b6177ea1c              # double 5.0375189999999996
	.quad	0x3ff9723465625a68              # double 1.590382
	.quad	0x401efeaab042528b              # double 7.748698
	.quad	0x40172fbe76c8b439              # double 5.7966249999999997
	.quad	0x401957f27fe4bcae              # double 6.3358860000000004
	.quad	0x4010bdd052934acb              # double 4.185365
	.quad	0x400d056605ee568a              # double 3.6276359999999999
	.quad	0x40225fe542e557de              # double 9.1872959999999999
	.quad	0x4023f6defc7a3982              # double 9.98217
	.quad	0x40228301a79fec9a              # double 9.2558720000000001
	.quad	0x4006f6dca07f66e8              # double 2.8705379999999998
	.quad	0x400ffb927d45a5fc              # double 3.9978379999999998
	.quad	0x3fe97255f3519bd4              # double 0.79520699999999999
	.quad	0x401480cfe154434e              # double 5.1257929999999998
	.quad	0x4021c4e075f6fd22              # double 8.884525
	.quad	0x40113b2edfe75bc4              # double 4.3077959999999997
	.quad	0x402155e353f7ced9              # double 8.6677499999999998
	.quad	0x4022dde97d06bbdc              # double 9.4334220000000001
	.quad	0x402289e83e425aee              # double 9.2693499999999993
	.quad	0x40208e835dedf1e1              # double 8.2783460000000009
	.quad	0x4006d065f9591cd2              # double 2.8517570000000001
	.quad	0x40173ee84ad794a7              # double 5.8114330000000001
	.quad	0x4007d382e44b6e93              # double 2.9782769999999998
	.quad	0x401a7f4dbdf8f473              # double 6.62432
	.quad	0x3fe23bc0a06e9ff1              # double 0.56979400000000002
	.quad	0x401b4d9620685554              # double 6.8257680000000001
	.quad	0x40155c0df58c08b7              # double 5.3398969999999997
	.quad	0x401ad49b1fab96f2              # double 6.7076229999999999
	.quad	0x400b38f81e8a2ec3              # double 3.4028170000000002
	.quad	0x4011c2606fac6046              # double 4.4398210000000002
	.quad	0x4006defd00713f07              # double 2.8588809999999998
	.quad	0x40004c426351def0              # double 2.037236
	.quad	0x3ffd12513b5bf6a1              # double 1.816972
	.quad	0x3fa6a465a57646ae              # double 0.044222999999999998
	.quad	0x400bf526527a2058              # double 3.4947020000000002
	.quad	0x3fd94eb13dfb0d52              # double 0.395428
	.quad	0x400a5394b7b28955              # double 3.2908110000000002
	.quad	0x4014d2d83c6c97d9              # double 5.2059030000000002
	.quad	0x4010c9e6687f455a              # double 4.1971679999999996
	.quad	0x4002de84f09528f2              # double 2.3586520000000002
	.quad	0x4022f22014727dcc              # double 9.4729010000000002
	.quad	0x400ab4677b395c42              # double 3.3380879999999999
	.quad	0x4011d6295208e150              # double 4.4591419999999999
	.quad	0x400d3287c200c0f0              # double 3.6496729999999999
	.quad	0x401bd1f70de8f6cf              # double 6.955044
	.quad	0x4016c803cd141a69              # double 5.6953269999999998
	.quad	0x40010ac42e9899bf              # double 2.1302569999999998
	.quad	0x3ff5710fd7e45804              # double 1.340103
	.quad	0x401edc7e6b3fe9fb              # double 7.7153260000000001
	.quad	0x4018345c78a6dacb              # double 6.0511340000000002
	.quad	0x4007cd57bc7f77af              # double 2.9752649999999998
	.quad	0x401376a22b3892ef              # double 4.8658530000000004
	.quad	0x4022f05186db50f4              # double 9.4693719999999999
	.quad	0x40035dff3f0fe048              # double 2.4208970000000001
	.quad	0x3ffeb636f3b213e4              # double 1.919486
	.quad	0x40208743c7d5ed07              # double 8.264189
	.quad	0x401586aad1d041cc              # double 5.3815109999999997
	.quad	0x3ff793f8db489093              # double 1.4736260000000001
	.quad	0x3ff589bd8383ad9f              # double 1.346128
	.quad	0x402347212d773190              # double 9.6389250000000004
	.quad	0x40087001d5c31594              # double 3.054691
	.quad	0x4003a0724b76f6d7              # double 2.4533429999999998
	.quad	0x3fec05f6ba0620ab              # double 0.87572799999999995
	.quad	0x401beae9ee45c359              # double 6.9794080000000003
	.quad	0x4014975536933a04              # double 5.147786
	.quad	0x40219b9b8887229f              # double 8.8039210000000008
	.quad	0x4020a9e2bcf91a33              # double 8.3318080000000005
	.quad	0x4022ed5fdcdf6988              # double 9.4636220000000008
	.quad	0x40173f39d1b2e59b              # double 5.811744
	.quad	0x4019df5515054ac3              # double 6.4680980000000003
	.quad	0x4021d37952d234ec              # double 8.9130350000000007
	.quad	0x401bcd627bf61aa4              # double 6.9505710000000001
	.quad	0x4023bde54b48d3ae              # double 9.8708899999999993
	.quad	0x401beba5a038194c              # double 6.980124
	.quad	0x401019949e8815e4              # double 4.0249810000000004
	.quad	0x401cdf87f023e9ea              # double 7.2182919999999999
	.quad	0x4013035a426bb55b              # double 4.7532740000000002
	.quad	0x3ff20cf6be37de94              # double 1.1281650000000001
	.quad	0x4018c1bbcf4e874d              # double 6.1891930000000004
	.quad	0x401b8008a697aede              # double 6.8750330000000002
	.quad	0x402231ef5232d2bb              # double 9.0975289999999998
	.quad	0x40173bfa8f7db6e5              # double 5.808573
	.quad	0x4015897891e21533              # double 5.3842489999999996
	.quad	0x4022b4f227d028a2              # double 9.3534100000000002
	.quad	0x401e62e8c0485a0c              # double 7.5965910000000001
	.quad	0x4012e53868fd199c              # double 4.7238480000000003
	.quad	0x401ff14d72799a20              # double 7.9856470000000002
	.quad	0x4012d73d9ec70004              # double 4.7101959999999998
	.quad	0x4020535a20ddc619              # double 8.1627969999999994
	.quad	0x401580880d801b43              # double 5.3755189999999997
	.quad	0x401bb8e1932d6ece              # double 6.9305479999999999
	.quad	0x40208f4517614595              # double 8.2798239999999996
	.quad	0x3fabcc2938de6ddf              # double 0.054292
	.quad	0x3fc87c30d306a2b1              # double 0.19128999999999999
	.quad	0x4010f9dcf893faf4              # double 4.2440069999999999
	.quad	0x4016111d3671ac15              # double 5.5167130000000002
	.quad	0x400c96872b020c4a              # double 3.5735000000000001
	.quad	0x40150395810624dd              # double 5.2534999999999998
	.quad	0x3ffc562281344806              # double 1.771029
	.quad	0x4014d97353b4b2fb              # double 5.2123540000000004
	.quad	0x3fcae3150dae3e6c              # double 0.21005499999999999
	.quad	0x402293ac4f7ec354              # double 9.2884239999999991
	.quad	0x4018686f47b677f7              # double 6.1019870000000003
	.quad	0x4018e6b1a2a4db16              # double 6.2252869999999998
	.quad	0x401e39702e6644d8              # double 7.5560919999999995
	.quad	0x40053d7a99fa11a9              # double 2.6550189999999998
	.quad	0x40238d6f97679032              # double 9.7762419999999999
	.quad	0x3fdc149c6f36ef80              # double 0.43875799999999998
	.quad	0x3ff8d6c7219220ff              # double 1.5524359999999999
	.quad	0x3fddb8887229e908              # double 0.46438800000000002
	.quad	0x3fb0679cc74b838c              # double 0.064080999999999999
	.quad	0x40232d5ed06fef7c              # double 9.5886139999999997
	.quad	0x401c23dff3f0fe04              # double 7.0350339999999996
	.quad	0x4002a3a647fdc593              # double 2.329907
	.quad	0x401ff189bd8383ae              # double 7.9858770000000003
	.quad	0x3ff3d5dc4007570c              # double 1.2397119999999999
	.quad	0x40238bb645a1cac1              # double 9.7728750000000008
	.quad	0x401cc986b9c304cd              # double 7.1968030000000001
	.quad	0x401df1a5ca29845e              # double 7.4859840000000002
	.quad	0x40207fa97e132b56              # double 8.2493400000000001
	.quad	0x40116c0724b76f6d              # double 4.3554959999999996
	.quad	0x3ff8ecabc5154867              # double 1.5577810000000001
	.quad	0x400763aa79bbadc1              # double 2.9236650000000002
	.quad	0x40127e542e557de1              # double 4.6233680000000001
	.quad	0x4009532f87ad080b              # double 3.1656179999999998
	.quad	0x40213c03bc4d22c9              # double 8.6172160000000009
	.quad	0x3ffe05f8d2e514c2              # double 1.876458
	.quad	0x4018d865d7cb2d90              # double 6.2113259999999997
	.quad	0x40194ff6d330941d              # double 6.3280900000000004
	.quad	0x40066400fba8826b              # double 2.7988300000000002
	.quad	0x40238dd1c3ac929b              # double 9.7769910000000006
	.quad	0x4021416e158750c2              # double 8.6277930000000005
	.quad	0x3fe5d4ef459d9903              # double 0.68224300000000004
	.quad	0x40029126e978d4fe              # double 2.320875
	.quad	0x40085e20ccff21b4              # double 3.0459610000000001
	.quad	0x40120dc7abfb9bed              # double 4.5134569999999998
	.quad	0x400c965b20b8066c              # double 3.5734159999999999
	.quad	0x40129605ab3aabcd              # double 4.6465059999999996
	.quad	0x4023dbd8be7296f6              # double 9.9293879999999994
	.quad	0x40108b9389b52008              # double 4.1363050000000001
	.quad	0x4018aaa0cae642c0              # double 6.1666290000000004
	.quad	0x40197d2999567dbb              # double 6.3722289999999999
	.quad	0x401081c9b4139863              # double 4.1267459999999998
	.quad	0x401ac0474d9c6b05              # double 6.6877719999999998
	.quad	0x3ff85c5931ca7d67              # double 1.522546
	.quad	0x3ffbc81a1554fbdb              # double 1.736353
	.quad	0x401c904d12018a44              # double 7.1409190000000002
	.quad	0x40190f865d7cb2d9              # double 6.265161
	.quad	0x400971c64ba94bbe              # double 3.1805539999999999
	.quad	0x4001970de8f6ceff              # double 2.1987570000000001
	.quad	0x4017e89118c197e5              # double 5.9771159999999997
	.quad	0x402219276fb09204              # double 9.0491290000000006
	.quad	0x3fff3c0f45176146              # double 1.9521630000000001
	.quad	0x402246e9bbf0dc77              # double 9.1385020000000008
	.quad	0x3ff1ca697aeddce8              # double 1.111917
	.quad	0x401cd76c4827b6fe              # double 7.2103739999999998
	.quad	0x3ff30fb43d89ce4a              # double 1.1913339999999999
	.quad	0x3ff4a698bb4d4888              # double 1.290673
	.quad	0x4020fca59c065b64              # double 8.4934510000000003
	.quad	0x40112a643cc07aaf              # double 4.291398
	.quad	0x3fb986ec17ebaf10              # double 0.099714999999999998
	.quad	0x40238c52a411c2a0              # double 9.7740679999999998
	.quad	0x400d2280ae104923              # double 3.6418469999999998
	.quad	0x4022a6e34fc610f1              # double 9.3259530000000002
	.quad	0x4010208e9b38d60a              # double 4.0317939999999997
	.quad	0x401a4e76c8b43958              # double 6.5766249999999999
	.quad	0x400a596b76709fa5              # double 3.2936619999999999
	.quad	0x4022c05e80bed741              # double 9.3757210000000004
	.quad	0x40216daa2e3c536d              # double 8.7141889999999993
	.quad	0x40137eabffcdab19              # double 4.8737029999999999
	.quad	0x4010726b2f23033a              # double 4.1117369999999998
	.quad	0x4022b2bb01c92ddc              # double 9.3490830000000002
	.quad	0x400c265492ff4ba5              # double 3.518716
	.quad	0x401fb23bbc6eb0b8              # double 7.9240560000000002
	.quad	0x40161028a1dfb939              # double 5.5157800000000003
	.quad	0x401b4380cb6c7a7d              # double 6.8159210000000003
	.quad	0x4004f7bfa4c61d86              # double 2.6209709999999999
	.quad	0x401d0964a59c065b              # double 7.2591729999999997
	.quad	0x401039c38b04ab60              # double 4.0564099999999996
	.quad	0x4000bdc8b86b15f9              # double 2.0926680000000002
	.quad	0x40169ff2a172abef              # double 5.656199
	.quad	0x4001d023e9ea1405              # double 2.2266309999999998
	.quad	0x4021f4af2d7f950c              # double 8.9778990000000007
	.quad	0x4008b26634117f84              # double 3.0871089999999999
	.quad	0x4011a13dfb0d51f8              # double 4.4074629999999999
	.quad	0x4020123810e88590              # double 8.0355840000000001
	.quad	0x40184fd5cb790fb6              # double 6.0779639999999997
	.quad	0x4015277143393ab4              # double 5.2885179999999998
	.quad	0x401f3e9d0e991ff7              # double 7.8111459999999999
	.quad	0x401e38cb07d0aeda              # double 7.5554620000000003
	.quad	0x3ff8ef2d7f950b95              # double 1.5583929999999999
	.quad	0x40181ec9e236c15d              # double 6.0300669999999998
	.quad	0x400044284dfce315              # double 2.03328
	.quad	0x40207b6049ecb31c              # double 8.2409689999999997
	.quad	0x40027b7d84901d19              # double 2.310298
	.quad	0x400953daf8df7a4e              # double 3.1659449999999998
	.quad	0x3fed8dda48b65237              # double 0.923566
	.quad	0x4009e9856a37ac3f              # double 3.2390240000000001
	.quad	0x3ffaaa875d56f32c              # double 1.666633
	.quad	0x40167911cf355cd9              # double 5.6182319999999999
	.quad	0x40208af9873ffac2              # double 8.2714350000000003
	.quad	0x400f8c8b43958106              # double 3.9436249999999999
	.quad	0x4023dc01c4fc1df3              # double 9.9297009999999996
	.quad	0x401d68d759ee88df              # double 7.3523839999999998
	.quad	0x401a83bcd35a8588              # double 6.6286500000000004
	.quad	0x3fe26eb4e981387a              # double 0.57601400000000003
	.quad	0x3fe8aab8a5ce5b42              # double 0.77083999999999997
	.quad	0x4016c7e02645e4e7              # double 5.6951910000000003
	.quad	0x4023efd4e09784ec              # double 9.9684209999999993
	.quad	0x401eba21ea359360              # double 7.6817700000000002
	.quad	0x3fce4388ebcc6c55              # double 0.23643600000000001
	.quad	0x4011c460242d05f3              # double 4.4417730000000004
	.quad	0x4019af5a964e8b7e              # double 6.4212439999999997
	.quad	0x40223ad2dcb1465f              # double 9.1148900000000008
	.quad	0x4014705ccc89b0ee              # double 5.1097289999999997
	.quad	0x3ffe43c5bd0e12e8              # double 1.8915459999999999
	.quad	0x3fdaa719b4dcebff              # double 0.41644900000000001
	.quad	0x40090d117b5286b6              # double 3.1313810000000002
	.quad	0x400993d5bab21816              # double 3.1971850000000002
	.quad	0x40133b790fb65669              # double 4.8080790000000002
	.quad	0x400f492ddbdb5d89              # double 3.9107319999999999
	.quad	0x3ffafdc054ef459e              # double 1.6869510000000001
	.quad	0x4009d4573a797892              # double 3.2286820000000001
	.quad	0x4009a5061416377a              # double 3.205578
	.quad	0x3fd6d67ba237cdcd              # double 0.35684100000000002
	.quad	0x4008626aa8eb4635              # double 3.0480550000000002
	.quad	0x4013d84d76ab5808              # double 4.961233
	.quad	0x400ede97d06bbdbe              # double 3.8586879999999999
	.quad	0x401339f383f0bae9              # double 4.8065930000000003
	.quad	0x401deb1e5c0b9991              # double 7.4796079999999998
	.quad	0x4021dda469d7342f              # double 8.9328950000000003
	.quad	0x40162b1422ccb3a2              # double 5.5420689999999997
	.quad	0x4013f72862f5989e              # double 4.9913650000000001
	.quad	0x4016fd74d594f26b              # double 5.7475160000000001
	.quad	0x40135ca7d6733ebc              # double 4.840484
	.quad	0x4014b0746455eaee              # double 5.1723189999999999
	.quad	0x400a4be5109070fc              # double 3.287058
	.quad	0x401605efa615a8df              # double 5.5057970000000003
	.quad	0x401566db940fecdd              # double 5.350447
	.quad	0x3fde67a0f9096bba              # double 0.47507500000000003
	.quad	0x400332fd32c625ea              # double 2.3998970000000002
	.quad	0x4022240639d5e4a4              # double 9.0703600000000008
	.quad	0x3fd59da16616b54e              # double 0.33774599999999999
	.quad	0x4023138b04ab606b              # double 9.5381699999999991
	.quad	0x400fb30489d27c39              # double 3.9624109999999999
	.quad	0x400648c154c985f0              # double 2.7855249999999998
	.quad	0x4023ce73c4f3ba77              # double 9.9032269999999993
	.quad	0x3ff10da6e75ff60a              # double 1.065833
	.quad	0x4015cb2031ceaf25              # double 5.4483649999999999
	.quad	0x400bf4b48d3ae686              # double 3.4944850000000001
	.quad	0x401ae6fa3fcc9eaa              # double 6.7255640000000003
	.quad	0x400a43c5bd0e12e8              # double 3.2830919999999999
	.quad	0x40175aa5c5f7c676              # double 5.8385230000000004
	.quad	0x401215b291b823c8              # double 4.5211889999999997
	.quad	0x40014a3b57c4e2f3              # double 2.1612459999999998
	.quad	0x4020e742dcf4623d              # double 8.4516819999999999
	.quad	0x401078448cf7caa7              # double 4.1174489999999997
	.quad	0x400704f8f8a4c1ec              # double 2.8774280000000001
	.quad	0x402391afe1da7b0b              # double 9.7845449999999996
	.quad	0x40108b49e01de269              # double 4.1360239999999999
	.quad	0x400b97c914b167ec              # double 3.4491139999999998
	.quad	0x401d8b1d4f9c1f86              # double 7.3858540000000001
	.quad	0x4017465cf67b1c00              # double 5.8187139999999999
	.quad	0x4023ba73b42cc2d7              # double 9.8641640000000005
	.quad	0x4023c1d4d834091c              # double 9.8785769999999999
	.quad	0x4016c3dc486ad2dd              # double 5.6912700000000003
	.quad	0x400c5f1e0828c36e              # double 3.5464440000000002
	.quad	0x40208e7be553ac4f              # double 8.2782889999999991
	.quad	0x40007144cbe1eb42              # double 2.055307
	.quad	0x40225d119ce075f7              # double 9.181775
	.quad	0x3fee7f62b6ae7d56              # double 0.95304999999999995
	.quad	0x4018d3eee5258927              # double 6.2069660000000004
	.quad	0x4006fc60029f16b1              # double 2.87323
	.quad	0x401268d716d2aa5c              # double 4.6023829999999997
	.quad	0x40238590c0ad03da              # double 9.7608700000000006
	.quad	0x401b50a915379fa9              # double 6.8287699999999996
	.quad	0x402290c8abd5dc40              # double 9.2827809999999999
	.quad	0x4019714c22ee4192              # double 6.3606420000000004
	.quad	0x401a59b6b2af1455              # double 6.5876109999999999
	.quad	0x4014ca7f3cf70154              # double 5.1977510000000002
	.quad	0x401486612839042e              # double 5.1312300000000004
	.quad	0x401dac886162f167              # double 7.4184890000000001
	.quad	0x401e7e1bd1ed9dfe              # double 7.6231530000000003
	.quad	0x4021c673e681a9b9              # double 8.8876030000000004
	.quad	0x401449d51b4fe79f              # double 5.0721020000000001
	.quad	0x3fd31c6d1e108c3f              # double 0.29860999999999999
	.quad	0x40041ef1fddebd90              # double 2.51511
	.quad	0x401a658c08b75ea6              # double 6.5991669999999996
	.quad	0x40128726d04e618d              # double 4.6319840000000001
	.quad	0x4022b2a8869c66d3              # double 9.3489419999999992
	.quad	0x4020005ff1d81f10              # double 8.0007319999999993
	.quad	0x3fc63ad9f0a1be2b              # double 0.17367099999999999
	.quad	0x4010d44241c3efae              # double 4.2072839999999996
	.quad	0x400fd59a30984e40              # double 3.979298
	.quad	0x40222a830a0b1bbd              # double 9.0830310000000001
	.quad	0x40148ff151e75361              # double 5.1405690000000002
	.quad	0x401d8927d45a5fc8              # double 7.383941
	.quad	0x3fe6d527e5215769              # double 0.71352000000000004
	.quad	0x3ff5185058dde7a7              # double 1.3184359999999999
	.quad	0x4023204c8bc9cd3e              # double 9.5630839999999999
	.quad	0x401770010c6f7a0b              # double 5.8593789999999997
	.quad	0x4018495b35b0bbf5              # double 6.071637
	.quad	0x4022ded41b75a74c              # double 9.4352119999999999
	.quad	0x3fd99a91105e1c15              # double 0.400059
	.quad	0x4019c58e219652bd              # double 6.4429249999999998
	.quad	0x40223d74b407032a              # double 9.1200310000000009
	.quad	0x401b094af4f0d845              # double 6.7590750000000002
	.quad	0x40104e7d566cf41f              # double 4.0766499999999999
	.quad	0x402372f512663411              # double 9.7245259999999991
	.quad	0x4014e01de2691644              # double 5.2188639999999999
	.quad	0x3fe0c983d790752e              # double 0.52459900000000004
	.quad	0x400630bd87b56b87              # double 2.7737989999999999
	.quad	0x4014fe0c9d9d3459              # double 5.2480950000000002
	.quad	0x401798abd5dc4007              # double 5.8990929999999997
	.quad	0x4019a3a9f383f0bb              # double 6.4098280000000001
	.quad	0x40230d66cf41f213              # double 9.5261750000000002
	.quad	0x400a19d6f112fd33              # double 3.2626170000000001
	.quad	0x4006a75ab7dc7ac0              # double 2.8317160000000001
	.quad	0x3fe388aac96cc5fc              # double 0.610433
	.quad	0x40133e221c8a7a42              # double 4.8106770000000001
	.quad	0x4011f02c0a4a05de              # double 4.4845430000000004
	.quad	0x400f608b75ea67e8              # double 3.9221409999999999
	.quad	0x40141445ed4a1ad6              # double 5.0197979999999998
	.quad	0x40001a847b24638d              # double 2.0129480000000002
	.quad	0x401ead113836a833              # double 7.6690110000000002
	.quad	0x4023734c3c18b503              # double 9.7251910000000005
	.quad	0x40209f70bd017daf              # double 8.3114070000000009
	.quad	0x4016ec0379314446              # double 5.7304820000000003
	.quad	0x400d136a400fba88              # double 3.6344799999999999
	.quad	0x3febd6c0d6f544bb              # double 0.86996499999999999
	.quad	0x401bd24c404a72eb              # double 6.9553690000000001
	.quad	0x401a2264e48626f6              # double 6.533588
	.quad	0x401e7ccab3edd8b6              # double 7.6218669999999999
	.quad	0x3fa01ffb480a5acd              # double 0.031494000000000001
	.quad	0x3ffc52e1ef73c0c2              # double 1.770235
	.quad	0x400f78c197e56473              # double 3.9339629999999999
	.quad	0x3fceb9f559b3d07d              # double 0.24005000000000001
	.quad	0x401f753fc0096feb              # double 7.8645009999999997
	.quad	0x40064cd6c2efd439              # double 2.7875190000000001
	.quad	0x4016b489d27c3937              # double 5.6763070000000004
	.quad	0x40091e4c51116a8c              # double 3.1397940000000002
	.quad	0x401b8c8b86b15f89              # double 6.887251
	.quad	0x402239435ac8a372              # double 9.1118419999999993
	.quad	0x402180bc169c23b8              # double 8.7514350000000007
	.quad	0x3fd809070fbeb9e5              # double 0.37555100000000002
	.quad	0x3fdeb573eab367a1              # double 0.479825
	.quad	0x40191b61fe21d96f              # double 6.2767410000000003
	.quad	0x4018f523704790b8              # double 6.2393929999999997
	.quad	0x400bd8efbb0e5e68              # double 3.4809260000000002
	.quad	0x4018e57f737da61e              # double 6.224119
	.quad	0x40237cf4623d0bfa              # double 9.7440519999999999
	.quad	0x402054cd96206855              # double 8.1656309999999994
	.quad	0x3fffde7967caea74              # double 1.9918149999999999
	.quad	0x400c1bcec84f8f8a              # double 3.5135779999999999
	.quad	0x3fe2283f4eca686e              # double 0.56741299999999995
	.quad	0x40223de74299d884              # double 9.1209050000000004
	.quad	0x4016142b302f72b4              # double 5.5196959999999997
	.quad	0x401a85492ff4ba52              # double 6.6301620000000003
	.quad	0x4023447991bc5586              # double 9.6337399999999995
	.quad	0x4021c057f3061c7a              # double 8.8756710000000005
	.quad	0x401cfa4228997c3d              # double 7.2443929999999996
	.quad	0x3ff9988a04d12019              # double 1.5997410000000001
	.quad	0x4014d6f8ad256799              # double 5.2099330000000004
	.quad	0x4023da2749f0e4da              # double 9.9260809999999999
	.quad	0x401701fafc8b007a              # double 5.7519340000000003
	.quad	0x4021527dcbddb984              # double 8.6611159999999998
	.quad	0x40238403361565c3              # double 9.7578370000000003
	.quad	0x40073d6e04c05921              # double 2.904995
	.quad	0x401b10318b934699              # double 6.7658139999999998
	.quad	0x402120848387df5d              # double 8.5635110000000001
	.quad	0x3ff5c73eee525892              # double 1.3611439999999999
	.quad	0x401f4d794a6eb91b              # double 7.8256579999999997
	.quad	0x4000b039ef0f16f4              # double 2.0860479999999999
	.quad	0x40113074213a0c6b              # double 4.2973179999999997
	.quad	0x401185208e150119              # double 4.380007
	.quad	0x4020ddc7ef177a70              # double 8.4331659999999999
	.quad	0x3fe14ed4e4c942d5              # double 0.54087300000000005
	.quad	0x400447d0aed99cbf              # double 2.535066
	.quad	0x40126ffb04ee7c4a              # double 4.609356
	.quad	0x401f6c282c6ef3d4              # double 7.8556220000000003
	.quad	0x4021513a4f8726d0              # double 8.6586479999999995
	.quad	0x402032452c59fb1e              # double 8.0981839999999998
	.quad	0x401f771d60631727              # double 7.8663230000000003
	.quad	0x3ff43738e6d15ad1              # double 1.263482
	.quad	0x40220a10be9424e6              # double 9.0196590000000008
	.quad	0x401a8199bb2788db              # double 6.626563
	.quad	0x401c0e3b46fdeb53              # double 7.0138980000000002
	.quad	0x4020896616b54e2b              # double 8.268357
	.quad	0x40185b302f72b453              # double 6.0890510000000004
	.quad	0x3fe462584f4c6e6e              # double 0.63700500000000004
	.quad	0x400d4f2064239607              # double 3.6636359999999999
	.quad	0x401e34ec636b0963              # double 7.5516829999999997
	.quad	0x3fc8d6ece13f4a99              # double 0.19405900000000001
	.quad	0x40089bd2fa0d77b8              # double 3.0760860000000001
	.quad	0x4019feab367a0f91              # double 6.4987000000000004
	.quad	0x3fc8ea4228997c3d              # double 0.19464899999999999
	.quad	0x3fd114db59578a2b              # double 0.26689800000000002
	.quad	0x4023ba76b7ed41b7              # double 9.8641869999999993
	.quad	0x3ffd7e1eb4202d9d              # double 1.843291
	.quad	0x400fac6c54bcf0b7              # double 3.9591910000000001
	.quad	0x3ffa4725c3dee782              # double 1.6423700000000001
	.quad	0x3feb5714b9cb6849              # double 0.85438000000000003
	.quad	0x3fcee60807357e67              # double 0.241395
	.quad	0x400d295f2452c5a0              # double 3.6452010000000001
	.quad	0x4015920535c9e668              # double 5.3925979999999996
	.quad	0x40233f609dcf8940              # double 9.6237840000000005
	.quad	0x3fc5f28848387df6              # double 0.17146400000000001
	.quad	0x4023ecd78c436fc1              # double 9.9625819999999993
	.quad	0x40234b7d84901d19              # double 9.6474419999999998
	.quad	0x401c1d7be9856a38              # double 7.0287930000000003
	.quad	0x401645f202107b78              # double 5.5683059999999998
	.quad	0x40120251c193b3a7              # double 4.5022650000000004
	.quad	0x401d2779a6b50b0f              # double 7.2885499999999999
	.quad	0x40180fec13b9f128              # double 6.015549
	.quad	0x3fd669d30270f388              # double 0.35020899999999999
	.quad	0x4017b7264a16a487              # double 5.9288569999999998
	.quad	0x401f9fe21d96e9bc              # double 7.9061360000000001
	.quad	0x401530b9dc2f405f              # double 5.2975839999999996
	.quad	0x401b734e7685985b              # double 6.8626040000000001
	.quad	0x40202cdc443914f5              # double 8.0876180000000009
	.quad	0x401c2fcfc3f811f5              # double 7.046691
	.quad	0x402129fab96f21f7              # double 8.5819910000000004
	.quad	0x402384e9c4545847              # double 9.7595960000000001
	.quad	0x3ffeb62413db7f17              # double 1.919468
	.quad	0x401a4b78cc9a77e6              # double 6.5737030000000001
	.quad	0x40035649d388a8b1              # double 2.4171330000000002
	.quad	0x401dc04ea4a8c155              # double 7.4378000000000002
	.quad	0x4019cbaa1511dffc              # double 6.4488909999999997
	.quad	0x3fd619ef954eb13e              # double 0.345333
	.quad	0x401dd95c853c1483              # double 7.4622669999999998
	.quad	0x4015bf39085f4a12              # double 5.4367409999999996
	.quad	0x40173916ca46e08f              # double 5.8057509999999999
	.quad	0x40027890d5a5b963              # double 2.3088700000000002
	.quad	0x4016d9e98dcdb37d              # double 5.7128050000000004
	.quad	0x401aa4c729f59cd0              # double 6.6609160000000003
	.quad	0x402037455a7d2418              # double 8.1079509999999999
	.quad	0x4020c99b0ab2e169              # double 8.3937609999999996
	.quad	0x3ffecaf922962cfe              # double 1.9245540000000001
	.quad	0x3ffbe3736cdf266c              # double 1.7430300000000001
	.quad	0x400c035ce1826677              # double 3.5016419999999999
	.quad	0x400c06705c896dd2              # double 3.5031439999999998
	.quad	0x40189ac258d5842b              # double 6.1511319999999996
	.quad	0x3ff117763e4abe6a              # double 1.068228
	.quad	0x40139513b5bf6a0e              # double 4.8955830000000002
	.quad	0x4008e666ec9e236c              # double 3.112501
	.quad	0x4017673c0c1fc8f3              # double 5.8508149999999999
	.quad	0x3ff9a0a5269595ff              # double 1.60172
	.quad	0x3fe321e81cb46bad              # double 0.597889
	.quad	0x4021ae06961c3697              # double 8.8398939999999993
	.quad	0x402207396d0917d7              # double 9.0141100000000005
	.quad	0x40052bc8c0ce91c9              # double 2.646379
	.quad	0x400738116ebd4cfd              # double 2.902377
	.quad	0x40202b94317acc4f              # double 8.0851150000000001
	.quad	0x4021eebb98c7e282              # double 8.9662749999999996
	.quad	0x400c9fc5cdd50a89              # double 3.578014
	.quad	0x401f52178f68be2f              # double 7.8301679999999995
	.quad	0x40235baf74cd3177              # double 9.6790730000000007
	.quad	0x3fe138e6d15ad107              # double 0.53819600000000001
	.quad	0x40152112ba16e7a3              # double 5.2822979999999999
	.quad	0x401a9f8b588e368f              # double 6.655805
	.quad	0x40128b0079a2834d              # double 4.6357439999999999
	.quad	0x3fcd2cc70867ad8e              # double 0.22792899999999999
	.quad	0x40133a5bd944aa54              # double 4.806991
	.quad	0x3ff06a52ef911cf3              # double 1.0259579999999999
	.quad	0x4003e9df97aaac11              # double 2.4891960000000002
	.quad	0x401edade225fa659              # double 7.7137380000000002
	.quad	0x40234d1a86940358              # double 9.6505930000000006
	.quad	0x40176c985f06f694              # double 5.8560499999999998
	.quad	0x4016b0d844d013a9              # double 5.6726999999999999
	.quad	0x40118fc158fb43d9              # double 4.3903860000000003
	.quad	0x3ffe238a7e73a366              # double 1.883677
	.quad	0x3fc346994185058e              # double 0.150592
	.quad	0x4023ea15fcc1871e              # double 9.9571989999999992
	.quad	0x401e53fc0096feb5              # double 7.5820160000000003
	.quad	0x4005f0efdc9c4da9              # double 2.742645
	.quad	0x40232161a1db877b              # double 9.5651980000000005
	.quad	0x4001069270b06c44              # double 2.128209
	.quad	0x3ffdd2bd3c361134              # double 1.86395
	.quad	0x3fe6dbdd76683c29              # double 0.71433899999999995
	.quad	0x401e14af0bf1a5ca              # double 7.5201989999999999
	.quad	0x3ff64c0bdcad14a1              # double 1.3935660000000001
	.quad	0x400c0c38f366948a              # double 3.5059680000000002
	.quad	0x4021cd63ed0f6274              # double 8.9011530000000007
	.quad	0x401a5068db8bac71              # double 6.578525
	.quad	0x4014705319828805              # double 5.1096919999999999
	.quad	0x401e1bd09e12a51e              # double 7.5271629999999998
	.quad	0x40234500713f077d              # double 9.6347690000000003
	.quad	0x4017eb8ed1bf7ad5              # double 5.9800370000000003
	.quad	0x4003c0370cdc8755              # double 2.468855
	.quad	0x4011508ede54b48d              # double 4.3286699999999998
	.quad	0x40206599aa60913a              # double 8.1984379999999994
	.quad	0x3ff7baaac1094a2c              # double 1.4830730000000001
	.quad	0x400dda9b06812381              # double 3.731741
	.quad	0x3fe39ad6451b9303              # double 0.61265099999999995
	.quad	0x3ff1860029f16b12              # double 1.095215
	.quad	0x4018406b37867f0b              # double 6.0629090000000003
	.quad	0x4023ee4a16a48733              # double 9.9654089999999992
	.quad	0x40006b7457c0b136              # double 2.0524680000000002
	.quad	0x3fe9f04ddb5525cc              # double 0.81058399999999997
	.quad	0x40116080f98fa377              # double 4.3442420000000004
	.quad	0x401fbe3e29307af2              # double 7.9357839999999999
	.quad	0x400771ea78af3e47              # double 2.9306230000000002
	.quad	0x401b0495e17e34b9              # double 6.7544779999999998
	.quad	0x401b4351deefe500              # double 6.8157420000000002
	.quad	0x400802a12f901084              # double 3.0012840000000001
	.quad	0x4011646c764adff8              # double 4.3480699999999999
	.quad	0x3ff99b30728e92d5              # double 1.6003879999999999
	.quad	0x4010794f26aec072              # double 4.1184659999999997
	.quad	0x40214ae9ab29e4d6              # double 8.6463140000000003
	.quad	0x401c9967caea747e              # double 7.1498100000000004
	.quad	0x3fe7b72e6a76965f              # double 0.74111099999999996
	.quad	0x40142cd1c7de5083              # double 5.0437690000000002
	.quad	0x401c60917d6b65aa              # double 7.0943050000000003
	.quad	0x400fb80346dc5d64              # double 3.9648500000000002
	.quad	0x4007aeb67c286f8b              # double 2.9603090000000001
	.quad	0x3fed56d7e889c1b5              # double 0.91685099999999997
	.quad	0x400eb3bc0a06e9ff              # double 3.837761
	.quad	0x401b7989df1172ef              # double 6.86869
	.quad	0x401942bba98eda23              # double 6.315169
	.quad	0x4020c375a74c09c4              # double 8.3817570000000003
	.quad	0x400a7540895d0b74              # double 3.3072520000000001
	.quad	0x400004b4d056c509              # double 2.0022980000000001
	.quad	0x3ff461ab4b72c519              # double 1.2738449999999999
	.quad	0x400f3acf7446f9ba              # double 3.9037160000000002
	.quad	0x3ff2af4491298890              # double 1.1677900000000001
	.quad	0x40226f7164c729f6              # double 9.2176620000000007
	.quad	0x3ff024a48f96e158              # double 1.0089459999999999
	.quad	0x4019d6b97fe8ee6c              # double 6.4596920000000004
	.quad	0x4010a58b827fa1a1              # double 4.1616650000000002
	.quad	0x401616e8af81626b              # double 5.5223719999999998
	.quad	0x40205bb3a68b19a4              # double 8.1791049999999998
	.quad	0x401c0d14e3bcd35b              # double 7.0127750000000004
	.quad	0x4014d3bf2f555821              # double 5.2067839999999999
	.quad	0x40208dd72367e415              # double 8.2770320000000002
	.quad	0x3fc96512a94ff002              # double 0.19839699999999999
	.quad	0x3ff12b063e07a28c              # double 1.0730040000000001
	.quad	0x401b25aee631f8a1              # double 6.7868000000000004
	.quad	0x4009c40a6b93ccd1              # double 3.220723
	.quad	0x401b49ab6d00b45b              # double 6.8219430000000001
	.quad	0x401ef3586ca89fc7              # double 7.7376420000000001
	.quad	0x400bc9ac36544fe3              # double 3.4734729999999998
	.quad	0x4002294f69ca9ef5              # double 2.2701709999999999
	.quad	0x3fe84b3e5753a3ec              # double 0.75918499999999999
	.quad	0x400f9c8c0ce91c8f              # double 3.9514390000000001
	.quad	0x4015029e4d5d80e5              # double 5.2525570000000004
	.quad	0x4011765625a682b6              # double 4.3655629999999999
	.quad	0x4011c64302b40f67              # double 4.4436150000000003
	.quad	0x4001a4095f2452c6              # double 2.2050960000000002
	.quad	0x4019db524399b2c4              # double 6.464181
	.quad	0x401c00e1f7d73c92              # double 7.0008619999999997
	.quad	0x4020d34b51372a39              # double 8.4126840000000005
	.quad	0x4017da9c560c7c0f              # double 5.9634869999999998
	.quad	0x3ff010667f90d9d7              # double 1.0040039999999999
	.quad	0x401cbfec99f1ae2e              # double 7.1874260000000003
	.quad	0x400a955b4677b396              # double 3.3229280000000001
	.quad	0x40143abf33871609              # double 5.0573699999999997
	.quad	0x3ff92c647778dd61              # double 1.5733379999999999
	.quad	0x401e2cee17a02fb6              # double 7.5438770000000002
	.quad	0x40204ede97d06bbe              # double 8.1540420000000005
	.quad	0x3ff73dda8bd230ba              # double 1.452601
	.quad	0x3fd691ab8e8ea39c              # double 0.35264099999999998
	.quad	0x40110a7ac81d3aa3              # double 4.2602339999999996
	.quad	0x401870bae89eba6b              # double 6.1100880000000002
	.quad	0x402204c857f3061c              # double 9.0093409999999991
	.quad	0x4016d5985ad538ac              # double 5.7085889999999999
	.quad	0x3ff1bf151e75360d              # double 1.109151
	.quad	0x40061eb6390c9108              # double 2.764996
	.quad	0x40223b647baa9b4a              # double 9.1160010000000007
	.quad	0x3ff3f966be7afa72              # double 1.248389
	.quad	0x4021708b11409a24              # double 8.7198109999999999
	.quad	0x4016398dcdb37c9a              # double 5.5562050000000003
	.quad	0x3ff2f440af1cb89d              # double 1.1846319999999999
	.quad	0x400d70624dd2f1aa              # double 3.679875
	.quad	0x401af5eb7457c0b1              # double 6.7401559999999998
	.quad	0x4005cb3cc4ac6cdb              # double 2.724237
	.quad	0x4001e80841ede11a              # double 2.2382970000000002
	.quad	0x401fc705c896dd27              # double 7.9443580000000002
	.quad	0x401a0b65ecc3e319              # double 6.5111309999999998
	.quad	0x3fedc3265add9c28              # double 0.93007200000000001
	.quad	0x401bc53825e13b19              # double 6.9425970000000001
	.quad	0x3fb6400fba8826ab              # double 0.086915000000000006
	.quad	0x401ed449dbec2481              # double 7.707313
	.quad	0x401de573eab367a1              # double 7.474075
	.quad	0x400a90374ff865d8              # double 3.3204180000000001
	.quad	0x3fda5b20b8066c2b              # double 0.41181200000000001
	.quad	0x40031d0b73d188f4              # double 2.3891819999999999
	.quad	0x4017fe7e62dc6e2b              # double 5.9985290000000004
	.quad	0x401db4a1272c94b4              # double 7.4263960000000004
	.quad	0x4017aeb95e5aff2a              # double 5.9206289999999999
	.quad	0x401d798dcdb37c9a              # double 7.3687050000000003
	.quad	0x4019b821af7d30ad              # double 6.4298159999999998
	.quad	0x4002043914f483cb              # double 2.252062
	.quad	0x40225262ed352221              # double 9.1609110000000005
	.quad	0x3fe26c7eae5bc87e              # double 0.57574400000000003
	.quad	0x40078a8e2e2b8c76              # double 2.9426540000000001
	.quad	0x40155ffac1d29dc7              # double 5.3437299999999999
	.quad	0x3fef20d9945b6c37              # double 0.97275999999999995
	.quad	0x4010405bc01a36e3              # double 4.0628500000000001
	.quad	0x4012e2ffd1dcd706              # double 4.721679
	.quad	0x401d284f09528f19              # double 7.289364
	.quad	0x40207e2a1b5c7cd9              # double 8.2464150000000007
	.quad	0x4009fed06fef7c24              # double 3.2494209999999999
	.quad	0x3ff75ccc89b0ee4a              # double 1.460156
	.quad	0x401d838ac18f81e9              # double 7.3784590000000003
	.quad	0x4005db1960fa15db              # double 2.7319819999999999
	.quad	0x40110d834091c087              # double 4.2631959999999998
	.quad	0x4022afb82c2bd7f5              # double 9.3432019999999998
	.quad	0x40133817b95a2941              # double 4.8047779999999998
	.quad	0x402146809d495183              # double 8.6377000000000006
	.quad	0x3ff64934267839ce              # double 1.3928720000000001
	.quad	0x4011aa68f4b61fe2              # double 4.4164159999999999
	.quad	0x400db53586ca89fc              # double 3.7134809999999998
	.quad	0x4008bc9eecbfb15b              # double 3.0920999999999998
	.quad	0x4003a68ec52a411c              # double 2.4563269999999999
	.quad	0x4003de29b6b2af14              # double 2.4834779999999999
	.quad	0x401ace79ee02a77a              # double 6.7016369999999998
	.quad	0x3fff9553ef6b5d46              # double 1.973957
	.quad	0x401baf202107b784              # double 6.9210209999999996
	.quad	0x40173b6a619da9ca              # double 5.8080230000000004
	.quad	0x402221ad42c3c9ef              # double 9.0657750000000004
	.quad	0x40202636f3b213e4              # double 8.0746380000000002
	.quad	0x40229c558644523f              # double 9.3053399999999993
	.quad	0x400502e09fe86834              # double 2.6264050000000001
	.quad	0x4008ed601ffb480a              # double 3.1159059999999998
	.quad	0x4020db300de4c511              # double 8.4281009999999998
	.quad	0x40143e4755ffe6d6              # double 5.0608190000000004
	.quad	0x4008993ff25e56cd              # double 3.0748289999999998
	.quad	0x3ffacfadf2ecf206              # double 1.6757029999999999
	.quad	0x40223362a5e785b6              # double 9.1003620000000005
	.quad	0x40001483cafb3b75              # double 2.0100169999999999
	.quad	0x401a1723ee1bd1ee              # double 6.5225980000000003
	.quad	0x4021b136a400fba9              # double 8.8461200000000009
	.quad	0x4020eabbcb1cc964              # double 8.4584639999999993
	.quad	0x3fecd3c9abb01c93              # double 0.90085300000000001
	.quad	0x400ab7a99fa11a97              # double 3.3396789999999998
	.quad	0x4023ab9713ad5bee              # double 9.8351369999999996
	.quad	0x400cbe43675ddd2b              # double 3.592902
	.quad	0x40033ac8a3726070              # double 2.4037030000000001
	.quad	0x40123a9478c868ba              # double 4.557207
	.quad	0x402295ed06fef7c2              # double 9.2928239999999995
	.quad	0x401e93bddfc9ff93              # double 7.644279
	.quad	0x401d60520d130dfa              # double 7.3440630000000002
	.quad	0x400e3841248d7e02              # double 3.7774679999999998
	.quad	0x4010ff601797cc3a              # double 4.24939
	.quad	0x400a43810e8858ff              # double 3.2829609999999998
	.quad	0x402090012dfd694d              # double 8.2812590000000004
	.quad	0x40044539fba450ad              # double 2.5338020000000001
	.quad	0x4010e2178f68be2f              # double 4.2207929999999996
	.quad	0x401590d0aaa7ded7              # double 5.3914210000000002
	.quad	0x4000856d5cfaacda              # double 2.06515
	.quad	0x4021dfd2849cb253              # double 8.9371530000000003
	.quad	0x4017358537e2c55d              # double 5.8022660000000004
	.quad	0x4022520620ab7132              # double 9.1602029999999992
	.quad	0x40215b499d0203e6              # double 8.6782959999999996
	.quad	0x401caa960b6f9fcb              # double 7.166588
	.quad	0x4004814e7ee9142b              # double 2.5631379999999999
	.quad	0x3ff236c050bd87b5              # double 1.1383669999999999
	.quad	0x4021ab80a9de8b3b              # double 8.8349659999999997
	.quad	0x402164d466f5019f              # double 8.6969329999999996
	.quad	0x40067ea704bc2763              # double 2.811842
	.quad	0x40124d9cae21101b              # double 4.575793
	.quad	0x400ad20e1f7d73c9              # double 3.3525659999999999
	.quad	0x4022807b56b87379              # double 9.2509409999999992
	.quad	0x40092ce91c8eac00              # double 3.1469290000000001
	.quad	0x40192e1ef73c0c20              # double 6.2950400000000002
	.quad	0x3ff6a3e4abe6a338              # double 1.4150130000000001
	.quad	0x40010b5dcc63f141              # double 2.1305499999999999
	.quad	0x40147dcebfec13ba              # double 5.1228590000000001
	.quad	0x4012fdad7518b0d1              # double 4.7477320000000001
	.quad	0x4022b1c9d5a187a5              # double 9.3472430000000006
	.quad	0x400c6de1198aeb81              # double 3.553652
	.quad	0x401022ab25b317f0              # double 4.0338560000000001
	.quad	0x4010ca63f9a49c2c              # double 4.1976469999999999
	.quad	0x402265d9c27e9531              # double 9.1989269999999994
	.quad	0x400a45a682b62846              # double 3.2840090000000002
	.quad	0x3fdde77d523b3637              # double 0.467254
	.quad	0x4020d6a37ac3eb7d              # double 8.4192160000000005
	.quad	0x400c86f9b994e1a4              # double 3.565906
	.quad	0x401d7ff79c842fa5              # double 7.374968
	.quad	0x4008c69df97aaac1              # double 3.096981
	.quad	0x400122d16b97fe8f              # double 2.142001
	.quad	0x3ff029973d9ec700              # double 1.010154
	.quad	0x400ae06e19b90eaa              # double 3.359585
	.quad	0x4012a16bdb1a6d6a              # double 4.6576380000000004
	.quad	0x401b172324c83665              # double 6.7725949999999999
	.quad	0x40152ad3e920c06a              # double 5.2918240000000001
	.quad	0x4007f8d8a979e16d              # double 2.9965069999999998
	.quad	0x401691ebc83a96d5              # double 5.6425010000000002
	.quad	0x4022591a543f1c76              # double 9.1740290000000009
	.quad	0x4023e52ef911cf35              # double 9.9476239999999993
	.quad	0x3ff9da21ea359360              # double 1.6157550000000001
	.quad	0x400a7e45803cd142              # double 3.3116560000000002
	.quad	0x3fdbaf038e29f9cf              # double 0.43255700000000002
	.quad	0x4017728cbd1244a6              # double 5.8618649999999999
	.quad	0x3fd6235b4edb2f66              # double 0.34590799999999999
	.quad	0x4015238f36694899              # double 5.284726
	.quad	0x401edf77af64063a              # double 7.7182300000000001
	.quad	0x401dfec3dab5c39c              # double 7.4987940000000002
	.quad	0x40190b8ae31d712a              # double 6.2612719999999999
	.quad	0x3f9bb62413db7f17              # double 0.027061999999999999
	.quad	0x4014b00474d9c6b0              # double 5.1718919999999997
	.quad	0x4021c21b5c7cd899              # double 8.8791150000000005
	.quad	0x401f30e1f7d73c92              # double 7.7977369999999997
	.quad	0x4016abf26f1dc50d              # double 5.6679170000000001
	.quad	0x3ff20ae642bf9831              # double 1.127661
	.quad	0x4000aeda22f6a50d              # double 2.0853769999999998
	.quad	0x401816ed245b291c              # double 6.0223890000000004
	.quad	0x401909e0e736049f              # double 6.2596470000000002
	.quad	0x400573f39d1b2e5a              # double 2.6816170000000001
	.quad	0x40160d4e4c942d49              # double 5.512994
	.quad	0x40074c7d1bb4916d              # double 2.9123480000000002
	.quad	0x4010d892684cf074              # double 4.2114960000000004
	.quad	0x40007bff04577d95              # double 2.0605449999999998
	.quad	0x401044d338f79852              # double 4.0672119999999996
	.quad	0x401fcd65a14488c6              # double 7.950583
	.quad	0x40128b2d905c0336              # double 4.6359159999999999
	.quad	0x4004f944241c3efb              # double 2.621712
	.quad	0x401887485e3da2f9              # double 6.1321120000000002
	.quad	0x401fa53f39d1b2e6              # double 7.9113740000000004
	.quad	0x4016f1b10fd7e458              # double 5.736027
	.quad	0x400f54024b33daf9              # double 3.9160200000000001
	.quad	0x401f738194c01605              # double 7.8627989999999998
	.quad	0x400867eb6bf444e1              # double 3.0507420000000001
	.quad	0x4005374bc6a7ef9e              # double 2.6520000000000001
	.quad	0x401f64306e5cd4ed              # double 7.8478409999999998
	.quad	0x3ff2f3eee5258927              # double 1.1845540000000001
	.quad	0x4020f6297396d091              # double 8.4807849999999991
	.quad	0x401457685985ad54              # double 5.0853590000000004
	.quad	0x4004052263d816ad              # double 2.502507
	.quad	0x4007f6ddaceee0f4              # double 2.9955400000000001
	.quad	0x4010e7be9856a37b              # double 4.2263130000000002
	.quad	0x3ff1ba333764f11b              # double 1.1079589999999999
	.quad	0x401bdb8a5ce5b424              # double 6.9643949999999997
	.quad	0x401a31b003686a4d              # double 6.5485230000000003
	.quad	0x401e5a122fad6cb5              # double 7.5879599999999998
	.quad	0x3ffdc848387df5cf              # double 1.861397
	.quad	0x3ff58b33daf8df7a              # double 1.3464849999999999
	.quad	0x4001e70d1fa33376              # double 2.2378179999999999
	.quad	0x402022f78feef5ed              # double 8.0682950000000009
	.quad	0x3ff8f63800218def              # double 1.5601119999999999
	.quad	0x4022cc8de2ac3223              # double 9.3995200000000007
	.quad	0x401f12b5e529bae4              # double 7.7682719999999996
	.quad	0x40125aaf78feef5f              # double 4.5885600000000002
	.quad	0x3ffcd093964a59c0              # double 1.8009219999999999
	.quad	0x40126122749f0e4e              # double 4.5948580000000003
	.quad	0x401489930be0ded3              # double 5.1343500000000004
	.quad	0x400e46c2acb85a4f              # double 3.784551
	.quad	0x3ff038800eae18ad              # double 1.0137940000000001
	.quad	0x4015cb317efe0ce1              # double 5.4484310000000002
	.quad	0x400703b14a90470b              # double 2.8768030000000002
	.quad	0x4013ac942d490e67              # double 4.9185340000000002
	.quad	0x4014501d9f4d37c1              # double 5.0782379999999998
	.quad	0x4014a49f51697f20              # double 5.1607640000000004
	.quad	0x40204cafd5454153              # double 8.1497790000000006
	.quad	0x4023d63d1cc100e7              # double 9.9184350000000005
	.quad	0x3fed444bf4cb1898              # double 0.91458700000000004
	.quad	0x400357eaa2a0a958              # double 2.4179279999999999
	.quad	0x40205638a7e73a36              # double 8.1684009999999994
	.quad	0x3fff4d7be9856a38              # double 1.9564170000000001
	.quad	0x4023455842b734b5              # double 9.6354389999999998
	.quad	0x400f6a6e32e3821b              # double 3.926968
	.quad	0x3feecf0520d130e0              # double 0.96277100000000004
	.quad	0x401be77574f722e2              # double 6.9760340000000003
	.quad	0x3fe66d2cbea4ebdd              # double 0.70082699999999998
	.quad	0x4013ad5171e29b6b              # double 4.9192559999999999
	.quad	0x4009a656abde3fbc              # double 3.2062200000000001
	.quad	0x40206ebebe1650a4              # double 8.2162989999999993
	.quad	0x40088e429e0a41a2              # double 3.0694629999999998
	.quad	0x401789cb6848beb6              # double 5.8845650000000003
	.quad	0x40054046c764ae00              # double 2.6563850000000002
	.quad	0x401ba60bb2bba98f              # double 6.9121540000000001
	.quad	0x4022916e158750c2              # double 9.2840430000000005
	.quad	0x401bfe10060780fe              # double 6.9981080000000002
	.quad	0x3ff7a69f05ea24cc              # double 1.4781789999999999
	.quad	0x401155a5b9628cbd              # double 4.3336399999999999
	.quad	0x40164a4ebdd334c6              # double 5.5725660000000001
	.quad	0x401c7f141205bc02              # double 7.1241000000000003
	.quad	0x4000f92f2b66b617              # double 2.1216719999999998
	.quad	0x4014bdd7a99fa11b              # double 5.1853930000000004
	.quad	0x3ffe3c3a42f1ed18              # double 1.8897040000000001
	.quad	0x4023659ff4fd6d7f              # double 9.6984860000000008
	.quad	0x401183a96d4c33b5              # double 4.3785759999999998
	.quad	0x3fba5321e603d578              # double 0.10283100000000001
	.quad	0x4014aa00192a7371              # double 5.1660159999999999
	.quad	0x4021dbb1290257c9              # double 8.9290859999999999
	.quad	0x40218e70196d8f50              # double 8.7781990000000008
	.quad	0x401cbdf97aaac109              # double 7.1855219999999997
	.quad	0x4022c6b6e0d23d4f              # double 9.3881139999999998
	.quad	0x400b62c3c9eecbfb              # double 3.423225
	.quad	0x40148024b33daf8e              # double 5.12514
	.quad	0x4021f75c0767d34e              # double 8.9831240000000001
	.quad	0x3ffb1c58255b035c              # double 1.69442
	.quad	0x3fd7b035bd512ec7              # double 0.37013000000000001
	.quad	0x4005c67be553ac4f              # double 2.7219159999999998
	.quad	0x4018d42f61ed5ae2              # double 6.2072120000000002
	.quad	0x401fca52263d816b              # double 7.9475790000000001
	.quad	0x402289b1fab96f22              # double 9.2689360000000001
	.quad	0x40121d01c0ca600b              # double 4.528327
	.quad	0x4016f2539756c93a              # double 5.7366469999999996
	.quad	0x4009c4230fcf80dc              # double 3.2207699999999999
	.quad	0x40206f4f0d844d01              # double 8.2173999999999996
	.quad	0x40014679cc74b839              # double 2.1594120000000001
	.quad	0x3fc892ff4ba51a00              # double 0.19198599999999999
	.quad	0x401727cb70ac3a86              # double 5.788862
	.quad	0x3ff05434a01abd1b              # double 1.0205580000000001
	.quad	0x4007d4dc65c70436              # double 2.978936
	.quad	0x40056291fb3fa6df              # double 2.67313
	.quad	0x40071eca25529fe0              # double 2.890034
	.quad	0x4002b1359791819d              # double 2.3365279999999999
	.quad	0x4012722291fb3fa7              # double 4.6114600000000001
	.quad	0x3fe2854690de0935              # double 0.57876899999999998
	.quad	0x4021212d98bf7f06              # double 8.5648009999999992
	.quad	0x40221c97b7414a4d              # double 9.0558449999999997
	.quad	0x3ffba7fd3f5b5fa2              # double 1.728513
	.quad	0x3ff1f0ef566490a3              # double 1.1213219999999999
	.quad	0x401e89c99285a922              # double 7.6345580000000002
	.quad	0x40119ca2120e1f7d              # double 4.4029619999999996
	.quad	0x400c221a719b4dcf              # double 3.5166520000000001
	.quad	0x400565796bfca85d              # double 2.6745480000000001
	.quad	0x40139e9ee45c358b              # double 4.904903
	.quad	0x3fef4e5929670197              # double 0.97831400000000001
	.quad	0x4021b2ef2c732592              # double 8.8494810000000008
	.quad	0x4005623bff8a8f3b              # double 2.6729660000000002
	.quad	0x4021f14a2b9d3cbc              # double 8.9712689999999994
	.quad	0x40224007bbb62414              # double 9.1250590000000002
	.quad	0x4019ef47f993d534              # double 6.4836729999999996
	.quad	0x4016e4bb1af3a14d              # double 5.7233700000000001
	.quad	0x4010128e92d55a3a              # double 4.018122
	.quad	0x401d94a7b4e54f7b              # double 7.3951710000000004
	.quad	0x401bc1897a67a52b              # double 6.9390010000000002
	.quad	0x401516d698fe6927              # double 5.272303
	.quad	0x3ff897b5286b5914              # double 1.5370379999999999
	.quad	0x40239b22f2734f83              # double 9.803001
	.quad	0x400652ce032db1ea              # double 2.790432
	.quad	0x40004129cbab649d              # double 2.0318179999999999
	.quad	0x40224cab81f969e4              # double 9.1497460000000003
	.quad	0x4014cd145d851655              # double 5.2002730000000001
	.quad	0x401c9e3a7daa4fca              # double 7.1545199999999998
	.quad	0x401d324a276b7ed4              # double 7.2991109999999999
	.quad	0x401c78882f0e0a85              # double 7.1177070000000002
	.quad	0x3ff8d49949e8815e              # double 1.551904
	.quad	0x40229b3397dd00f7              # double 9.3031279999999992
	.quad	0x3ff7e273929ed395              # double 1.4927859999999999
	.quad	0x401490fa9c12f09e              # double 5.1415810000000004
	.quad	0x40019890d5a5b963              # double 2.1994950000000002
	.quad	0x4009e049667b5f1c              # double 3.234515
	.quad	0x4022eb4b51372a39              # double 9.4595590000000004
	.quad	0x3ff339389b52007e              # double 1.20147
	.quad	0x3ffacffeb074a772              # double 1.67578
	.quad	0x4014c8023a6ce358              # double 5.1953209999999999
	.quad	0x4021b0563ed0f627              # double 8.8444079999999996
	.quad	0x3fe3148fd9fd36f8              # double 0.59626000000000001
	.quad	0x4020b957abb8800f              # double 8.3619970000000006
	.quad	0x4017ed0f6273929f              # double 5.9815040000000002
	.quad	0x4015369984a0e411              # double 5.3033200000000003
	.quad	0x3ff379170d62bf12              # double 1.217063
	.quad	0x402224a6ca03c4b1              # double 9.0715850000000007
	.quad	0x40087c925785f8d3              # double 3.060826
	.quad	0x400d366cf41f212d              # double 3.6515749999999998
	.quad	0x4007485a0be51090              # double 2.9103279999999998
	.quad	0x4010efaa8a82a561              # double 4.2340489999999997
	.quad	0x400d7d651b0ccbc0              # double 3.6862279999999998
	.quad	0x3ff26d2dcb1465e9              # double 1.1516550000000001
	.quad	0x400071676640a6b9              # double 2.0553729999999999
	.quad	0x4004d673c4f3ba77              # double 2.6047129999999998
	.quad	0x401eacba732df506              # double 7.6686800000000002
	.quad	0x3fe1212513b5bf6a              # double 0.53529599999999999
	.quad	0x4013323e9ea14057              # double 4.799067
	.quad	0x4011e85b18548a9c              # double 4.4769100000000002
	.quad	0x3fd89aae6c8f7553              # double 0.38444099999999998
	.quad	0x4013af127f5e84f1              # double 4.9209690000000004
	.quad	0x40210109aed56b01              # double 8.502027
	.quad	0x4022bf15a4acf313              # double 9.3732120000000005
	.quad	0x3fd8a8c586876e1e              # double 0.385301
	.quad	0x40032be0589acbc9              # double 2.3964240000000001
	.quad	0x40022ab042528ae7              # double 2.2708439999999999
	.quad	0x4016b4b018611fd6              # double 5.6764530000000004
	.quad	0x3fe32e1693c03bc5              # double 0.59937600000000002
	.quad	0x402309f1cfbb9496              # double 9.5194229999999997
	.quad	0x4017c51c5c5718ec              # double 5.9424910000000004
	.quad	0x3fd46b2f23033a47              # double 0.31904199999999999
	.quad	0x40230603d577963a              # double 9.5117480000000008
	.quad	0x4022f00474d9c6b0              # double 9.4687839999999994
	.quad	0x3fdb7abfb9bed30f              # double 0.429367
	.quad	0x401943c31df761cc              # double 6.3161740000000002
	.quad	0x4011e670e2c12ad8              # double 4.4750399999999999
	.quad	0x4015959ab6d00b46              # double 5.3960980000000003
	.quad	0x4020e971e29b6b2b              # double 8.4559470000000001
	.quad	0x4009ec026cc1ca3a              # double 3.2402389999999999
	.quad	0x4002cd288ce703b0              # double 2.3501750000000001
	.quad	0x40140856e696a26e              # double 5.0081439999999997
	.quad	0x4013536976bc1f00              # double 4.8314570000000003
	.quad	0x3fe65bccaf709b74              # double 0.69870600000000005
	.quad	0x3fb65eedcc20d563              # double 0.087386000000000005
	.quad	0x400be262cba732df              # double 3.4855399999999999
	.quad	0x40117984a0e410b6              # double 4.3686699999999998
	.quad	0x402339bcdbbe0158              # double 9.6127690000000001
	.quad	0x4015f46d82ba5a04              # double 5.4886990000000004
	.quad	0x4022939d3cbc48f1              # double 9.2883089999999999
	.quad	0x4020fa337a80cf9e              # double 8.4886739999999996
	.quad	0x401325df2239e6ac              # double 4.7869840000000003
	.quad	0x3fe68a71de69ad43              # double 0.70440000000000003
	.quad	0x40167fecdd0d8cb0              # double 5.6249269999999996
	.quad	0x3fd81044f1a1986c              # double 0.37599300000000002
	.quad	0x3feb860999dcb578              # double 0.86011199999999999
	.quad	0x4002038fbca1059f              # double 2.2517390000000002
	.quad	0x400fcb474107314d              # double 3.9742570000000002
	.quad	0x4008a977c88e79ab              # double 3.082748
	.quad	0x401d90d2c386d2ed              # double 7.3914289999999996
	.quad	0x3ff4658c4bd33d29              # double 1.2747919999999999
	.quad	0x4013432f87ad080b              # double 4.8156109999999996
	.quad	0x401e8b3700474d9c              # double 7.6359519999999996
	.quad	0x4000fe45803cd142              # double 2.1241560000000002
	.quad	0x401f00e90bc7b45f              # double 7.7508889999999999
	.quad	0x3ffb0a89fc6da448              # double 1.6900729999999999
	.quad	0x40096df612407464              # double 3.1786919999999999
	.quad	0x4018da7610279570              # double 6.2133409999999998
	.quad	0x4004563dc486ad2e              # double 2.5421100000000001
	.quad	0x40219cf11b60ae97              # double 8.8065270000000009
	.quad	0x40159b1a2a4db164              # double 5.4014670000000002
	.quad	0x3fe5d76cce5f7404              # double 0.68254700000000001
	.quad	0x4012ed3910c2c5e3              # double 4.7316630000000002
	.quad	0x401f897396d0917d              # double 7.8842299999999996
	.quad	0x40145754b05b7cfe              # double 5.0852839999999997
	.quad	0x40034434e3369b9d              # double 2.4083039999999998
	.quad	0x40093b43d89ce4a8              # double 3.1539380000000001
	.quad	0x402251efd86a8fc1              # double 9.1600330000000003
	.quad	0x400be8c2e770bd01              # double 3.4886529999999998
	.quad	0x401ae6e04c059210              # double 6.7254649999999998
	.quad	0x401b347e49b1fab9              # double 6.8012629999999996
	.quad	0x4020f72ae07e5a79              # double 8.4827490000000001
	.quad	0x40209b2b3461309c              # double 8.3030639999999991
	.quad	0x3ff80cd530489d28              # double 1.5031330000000001
	.quad	0x4005aa36199780bb              # double 2.7081110000000002
	.quad	0x401e54855da27286              # double 7.5825399999999998
	.quad	0x40122a4acf312b1b              # double 4.5413009999999998
	.quad	0x4012b9edbf8b9baa              # double 4.6815709999999999
	.quad	0x4019f57b84db9c73              # double 6.4897289999999996
	.quad	0x3ffd34c5da6a4441              # double 1.8253839999999999
	.quad	0x4015c22ea0fd3b2a              # double 5.4396310000000003
	.quad	0x401e5d8f0c77dd87              # double 7.5913659999999998
	.quad	0x400e88bb906466b2              # double 3.816764
	.quad	0x40211d512ec6bce8              # double 8.5572599999999994
	.quad	0x4001b5347a5b0ff1              # double 2.213479
	.quad	0x3fb609dcf893faf4              # double 0.086087999999999998
	.quad	0x40236fe1b8ed1bf8              # double 9.7185190000000005
	.quad	0x40218eed45e9185d              # double 8.7791540000000001
	.quad	0x4004daf8df7a4e7b              # double 2.6069200000000001
	.quad	0x401b3eedcc20d563              # double 6.8114540000000003
	.quad	0x40173f88765ba6f0              # double 5.8120440000000002
	.quad	0x401e8bbbe878fabe              # double 7.6364590000000003
	.quad	0x401f30d0678c0054              # double 7.7976700000000001
	.quad	0x401f17214f0520d1              # double 7.7725879999999998
	.quad	0x400bfacbc8c0ce92              # double 3.4974590000000001
	.quad	0x400641669ced0b31              # double 2.7819340000000001
	.quad	0x401abe3a7daa4fca              # double 6.6857699999999998
	.quad	0x401d029f16b11c6d              # double 7.2525599999999999
	.quad	0x402194536d655e29              # double 8.7896990000000006
	.quad	0x3fe2cff0025bfad3              # double 0.58788300000000004
	.quad	0x4001dbdc69f8c21e              # double 2.2323539999999999
	.quad	0x3fe7129aa1d755bd              # double 0.72102100000000002
	.quad	0x400ca0e6299524c0              # double 3.5785640000000001
	.quad	0x40183c8eef1bac2e              # double 6.0591390000000001
	.quad	0x4020171c10d7be98              # double 8.0451359999999994
	.quad	0x4006558a76102795              # double 2.7917679999999998
	.quad	0x401178de6ddf00ac              # double 4.368036
	.quad	0x4022a01f75104d55              # double 9.3127399999999998
	.quad	0x3ff197a46173b85f              # double 1.0995220000000001
	.quad	0x401e3028a1dfb939              # double 7.5470300000000003
	.quad	0x401877d1782d3847              # double 6.1170099999999996
	.quad	0x3fee1e55c0fcb4f2              # double 0.94120300000000001
	.quad	0x401e697396d0917d              # double 7.6029799999999996
	.quad	0x402168c79f666235              # double 8.7046480000000006
	.quad	0x3ffde5e2478854ce              # double 1.8686240000000001
	.quad	0x3fe892556d19dece              # double 0.76786299999999996
	.quad	0x40116a74c09c3ce2              # double 4.353961
	.quad	0x40232daa2e3c536d              # double 9.5891889999999992
	.quad	0x401b2db50f40e5a3              # double 6.7946359999999997
	.quad	0x3fc3dc8b86b15f89              # double 0.155168
	.quad	0x40207edc7ef177a7              # double 8.247776
	.quad	0x40124edf61240746              # double 4.5770239999999998
	.quad	0x401c43f5f91600f3              # double 7.0663679999999998
	.quad	0x401594bba12b5e53              # double 5.3952470000000003
	.quad	0x401463a14cec41dd              # double 5.0972949999999999
	.quad	0x40073aa3f034b0e2              # double 2.9036330000000001
	.quad	0x3ff24c521dda059a              # double 1.1436329999999999
	.quad	0x401e61a8262456f7              # double 7.5953679999999996
	.quad	0x3fe81248d7e02646              # double 0.75223200000000001
	.quad	0x400063632c1f42bb              # double 2.0485289999999998
	.quad	0x401c945a5fc7e6b4              # double 7.144876
	.quad	0x3fff30db6a1e81cb              # double 1.9494279999999999
	.quad	0x3fea4e52deca2553              # double 0.82206100000000004
	.quad	0x3fe9d45a5fc7e6b4              # double 0.807172
	.quad	0x4023a1975f2cb641              # double 9.8156079999999992
	.quad	0x40172caf709b738e              # double 5.7936379999999996
	.quad	0x40208a715831f03d              # double 8.2703959999999999
	.quad	0x4009e2f2f9873ffb              # double 3.2358150000000001
	.quad	0x4016f39f340d4dc6              # double 5.7379119999999997
	.quad	0x401b9a87a072d1af              # double 6.9009080000000003
	.quad	0x4023c427c7c5260f              # double 9.8831159999999993
	.quad	0x4016faa00192a737              # double 5.7447509999999999
	.quad	0x3fd35d701d9f4d38              # double 0.30257800000000001
	.quad	0x401832f33ca31e7e              # double 6.0497560000000004
	.quad	0x4013beb399f5dfec              # double 4.9362320000000004
	.quad	0x4009ec79f666234b              # double 3.2404670000000002
	.quad	0x4013a424a276b7ed              # double 4.9102959999999998
	.quad	0x40149fce746cb967              # double 5.1560610000000002
	.quad	0x401d9e1bd1ed9dfe              # double 7.4044030000000003
	.quad	0x400d6c00da1a9329              # double 3.6777359999999999
	.quad	0x40154e2328f9f44d              # double 5.3263059999999998
	.quad	0x4023895e39713ad6              # double 9.7682970000000005
	.quad	0x400d8b191dde3758              # double 3.6929189999999998
	.quad	0x40140c436fc158fb              # double 5.0119759999999998
	.quad	0x400ef0bae89eba6b              # double 3.8675440000000001
	.quad	0x400e5327243137b0              # double 3.7906019999999998
	.quad	0x401a19b456b441bc              # double 6.5251020000000004
	.quad	0x402275e9e1b089a0              # double 9.2302999999999997
	.quad	0x3ff398bf7f06705d              # double 1.2247920000000001
	.quad	0x3fed8242d05f2885              # double 0.92215100000000005
	.quad	0x400196c4827b6fe3              # double 2.198617
	.quad	0x4016e8cf7caa758a              # double 5.7273540000000001
	.quad	0x4016ea6a44417870              # double 5.7289209999999997
	.quad	0x3fc0d9e83e425aee              # double 0.13164999999999999
	.quad	0x40039dc1e7967caf              # double 2.4520300000000002
	.quad	0x401bc16659d12cae              # double 6.9388670000000001
	.quad	0x40121586ca89fc6e              # double 4.5210220000000003
	.quad	0x40091b4fe79ee02a              # double 3.1383359999999998
	.quad	0x3ff17dd22856605f              # double 1.093218
	.quad	0x40224bed0f627393              # double 9.1482930000000007
	.quad	0x4010f219652bd3c3              # double 4.2364249999999997
	.quad	0x401e2288051c9f73              # double 7.533722
	.quad	0x400922e1ac57e23f              # double 3.1420319999999999
	.quad	0x401bf01eeed8904f              # double 6.9844929999999996
	.quad	0x4021c636f3b213e4              # double 8.8871380000000002
	.quad	0x400580d349be8ff3              # double 2.6879029999999999
	.quad	0x40236b30f8c64fdb              # double 9.7093579999999999
	.quad	0x401059042d8c2a45              # double 4.0869299999999997
	.quad	0x3ff1439de481f538              # double 1.079008
	.quad	0x3fc5306a2b1704ff              # double 0.16553999999999999
	.quad	0x4012878a6dacabc5              # double 4.6323639999999999
	.quad	0x4018b2e62131a8ef              # double 6.1747059999999996
	.quad	0x4021c320535c9e67              # double 8.8811060000000008
	.quad	0x4008fe9ea1405708              # double 3.1243259999999999
	.quad	0x40210d8793dd97f6              # double 8.5264249999999997
	.quad	0x40206f227d028a1e              # double 8.21706
	.quad	0x4013e789a459103d              # double 4.9761110000000004
	.quad	0x3fe6d31769a91106              # double 0.71326800000000001
	.quad	0x4022aa1e1d2178f7              # double 9.3322610000000008
	.quad	0x401eb7fed20296b3              # double 7.6796829999999998
	.quad	0x402257f8ca8198f2              # double 9.1718200000000003
	.quad	0x40052228997c3d68              # double 2.6416789999999999
	.quad	0x40108f96e158750c              # double 4.1402239999999999
	.quad	0x40047159c4977425              # double 2.5553469999999998
	.quad	0x401bf1db0142f61f              # double 6.9861870000000001
	.quad	0x401f2059ea57214f              # double 7.7815929999999999
	.quad	0x40234ee8af81626b              # double 9.6541189999999996
	.quad	0x40177ae3a3a8e714              # double 5.8700089999999996
	.quad	0x4017858fb43d89ce              # double 5.8804309999999997
	.quad	0x4021a0bbd3804535              # double 8.8139330000000005
	.quad	0x4012fb16c1e364bf              # double 4.7452040000000002
	.quad	0x4022b526fa3fcc9f              # double 9.3538130000000005
	.quad	0x401b81437c5692b4              # double 6.8762340000000002
	.quad	0x401079253543aeab              # double 4.1183059999999996
	.quad	0x4005d7aeddce7cd0              # double 2.7303139999999999
	.quad	0x400a70de8f6cefed              # double 3.3051119999999998
	.quad	0x3fc46bc621b7e0ac              # double 0.15953899999999999
	.quad	0x401f6d77fae3608d              # double 7.8569029999999999
	.quad	0x4003dc74751ce28f              # double 2.4826440000000001
	.quad	0x400a3f88765ba6f0              # double 3.2810220000000001
	.quad	0x400dcd4aa10e0221              # double 3.7252399999999999
	.quad	0x401739591cd1c7de              # double 5.8060039999999997
	.quad	0x400f5227d028a1e0              # double 3.9151150000000001
	.quad	0x40157733ebbfd71b              # double 5.366409
	.quad	0x400f20bf5d78811b              # double 3.8909899999999999
	.quad	0x3ff460c38f366949              # double 1.2736240000000001
	.quad	0x40169683c297bfa5              # double 5.6469870000000002
	.quad	0x400cfa08398a6549              # double 3.6220859999999999
	.quad	0x3fd25011904b3c3e              # double 0.28613699999999997
	.quad	0x3ffa5376d5497311              # double 1.6453770000000001
	.quad	0x4000070435efa616              # double 2.0034260000000002
	.quad	0x40226f45bf26f1dc              # double 9.2173289999999994
	.quad	0x401083e4abe6a338              # double 4.1288020000000003
	.quad	0x3fc11ad2135daad6              # double 0.133631
	.quad	0x3ff962f6a50d6b23              # double 1.5866610000000001
	.quad	0x3ffc4ffeb074a772              # double 1.76953
	.quad	0x3ffc148cb4aec8d6              # double 1.755017
	.quad	0x401259899bf5946c              # double 4.5874389999999998
	.quad	0x401b54ad794a6eb9              # double 6.8326929999999999
	.quad	0x3ffd1360d0247022              # double 1.817231
	.quad	0x400c84f5d35653ca              # double 3.5649220000000001
	.quad	0x401620b1bbcf4e87              # double 5.5319279999999997
	.quad	0x4018977f6b1a2a4e              # double 6.1479470000000003
	.quad	0x3fd4185cee17a030              # double 0.31398700000000002
	.quad	0x4014ff19934efcbd              # double 5.2491209999999997
	.quad	0x40147a79bbadc098              # double 5.119605
	.quad	0x4023f4a9691a75cd              # double 9.9778549999999999
	.quad	0x401fc07f23cc8de3              # double 7.9379850000000002
	.quad	0x401bea265f0f5a10              # double 6.9786619999999999
	.quad	0x401bf1d9b1b79d91              # double 6.9861820000000003
	.quad	0x401c6dcd2d44dca9              # double 7.1072280000000001
	.quad	0x400a5a4723aafff3              # double 3.2940809999999998
	.quad	0x4021b1f53825e13b              # double 8.8475739999999998
	.quad	0x401fc903a7546d40              # double 7.9463030000000003
	.quad	0x40007f748a159818              # double 2.0622340000000001
	.quad	0x400d406d0d49949f              # double 3.6564580000000002
	.quad	0x401a0bcf91a32b13              # double 6.5115340000000002
	.quad	0x400d5eec39799e52              # double 3.6713490000000002
	.quad	0x4021ebe6601bc98a              # double 8.9607419999999998
	.quad	0x402260d844d013a9              # double 9.1891499999999997
	.quad	0x401b5cd67fd3f5b6              # double 6.840662
	.quad	0x401e29578a2a90cd              # double 7.5403729999999997
	.quad	0x402075f6fd21ff2e              # double 8.2303999999999995
	.quad	0x4010b5b0ff10ecb7              # double 4.1774329999999997
	.quad	0x3ff8c9374bc6a7f0              # double 1.5491250000000001
	.quad	0x3ffbf0ad46f587d7              # double 1.746259
	.quad	0x3f80fe8ab4fa4830              # double 0.0082979999999999998
	.quad	0x3fffc9cb252ce033              # double 1.986766
	.quad	0x3ffab324851a8694              # double 1.668736
	.quad	0x400c29c560c7c0f4              # double 3.5203959999999999
	.quad	0x3ffd096cc5fbf834              # double 1.8148010000000001
	.quad	0x402110a936c58eeb              # double 8.5325410000000002
	.quad	0x400f455fbb517a46              # double 3.908874
	.quad	0x3fdbeb463497b741              # double 0.43623499999999998
	.quad	0x401b1328b6d86ec1              # double 6.7687099999999996
	.quad	0x401b9b73d188f430              # double 6.9018090000000001
	.quad	0x40166ad42c3c9eed              # double 5.6043250000000002
	.quad	0x400c7bccaf709b74              # double 3.5604490000000002
	.quad	0x4021ec04c8bc9cd4              # double 8.9609740000000002
	.quad	0x4012ee3476295209              # double 4.7326220000000001
	.quad	0x3ff34576cce5f740              # double 1.2044589999999999
	.quad	0x402057b1183b6028              # double 8.1712729999999993
	.quad	0x4013112c6ac215ba              # double 4.7667710000000003
	.quad	0x40092b723ee1bd1f              # double 3.1462140000000001
	.quad	0x4015484dfce3150e              # double 5.3206100000000003
	.quad	0x4013cf5be5d9e40d              # double 4.9524990000000004
	.quad	0x4020670867ad8e43              # double 8.2012359999999997
	.quad	0x400303305100a394              # double 2.376557
	.quad	0x401df1c9f72f76e6              # double 7.4861219999999999
	.quad	0x3fe685f06f694467              # double 0.70384999999999998
	.quad	0x4022b3a4d6e47dc3              # double 9.3508669999999992
	.quad	0x3ff85bb384fd2a63              # double 1.5223880000000001
	.quad	0x3ff21989df1172ef              # double 1.131235
	.quad	0x401e246455eaee20              # double 7.535539
	.quad	0x401480fb65668c26              # double 5.1259589999999999
	.quad	0x4019b37d1fe64f55              # double 6.4252820000000002
	.quad	0x40230c9f94855da2              # double 9.5246549999999992
	.quad	0x3ff24ff540895d0b              # double 1.1445209999999999
	.quad	0x40111e1fc08fa7a8              # double 4.2794179999999997
	.quad	0x4002c0221426fe72              # double 2.3438150000000002
	.quad	0x4022c2925fe974a3              # double 9.3800229999999995
	.quad	0x400f5224aada33be              # double 3.9151090000000002
	.quad	0x401c10642396073e              # double 7.0160070000000001
	.quad	0x401e7439de481f54              # double 7.6135020000000004
	.quad	0x4015327e5215768a              # double 5.2993100000000002
	.quad	0x40218560a6330510              # double 8.7605029999999999
	.quad	0x3fee10de093532e8              # double 0.93955900000000003
	.quad	0x40098d905c033615              # double 3.1941229999999998
	.quad	0x401729a5ebb7739f              # double 5.7906719999999998
	.quad	0x400a166cf41f212d              # double 3.2609499999999998
	.quad	0x3ff30507a6bd6e8b              # double 1.188728
	.quad	0x4010825460aa64c3              # double 4.127275
	.quad	0x401fb71327243138              # double 7.9287840000000002
	.quad	0x4016810adcd2d44e              # double 5.6260180000000002
	.quad	0x40145fd47bedb728              # double 5.0935839999999999
	.quad	0x40117dfd2630ec31              # double 4.3730359999999999
	.quad	0x3ff4da07b352a844              # double 1.3032300000000001
	.quad	0x3ff51a6c5d206c87              # double 1.318951
	.quad	0x402339782d38476f              # double 9.6122449999999997
	.quad	0x40165a2ca9ac3654              # double 5.5880609999999997
	.quad	0x4013e224edf61240              # double 4.9708439999999996
	.quad	0x3ffb0fb97bb73083              # double 1.6913389999999999
	.quad	0x401270bf1a5ca298              # double 4.6101039999999998
	.quad	0x4002cadbc664d3bf              # double 2.3490519999999999
	.quad	0x401152231832fcad              # double 4.3302120000000004
	.quad	0x3fd62bae03b3e9a7              # double 0.346416
	.quad	0x401ef34dad31fcd2              # double 7.7376009999999997
	.quad	0x3ff5d3e3e29307af              # double 1.364231
	.quad	0x3fe108ede54b48d4              # double 0.53234000000000004
	.quad	0x3ff18a9bcfd4bf0a              # double 1.0963400000000001
	.quad	0x3ff391c9f72f76e6              # double 1.223093
	.quad	0x4017b121ab4b72c5              # double 5.9229799999999999
	.quad	0x402327e8ab4fa483              # double 9.5779469999999999
	.quad	0x400ef97e56473472              # double 3.871823
	.quad	0x401f13b4f6167232              # double 7.7692449999999997
	.quad	0x4019d59af9ebe9c9              # double 6.4585990000000004
	.quad	0x400dd9713ad5bee4              # double 3.7311730000000001
	.quad	0x400cb0b8cfbfc654              # double 3.58629
	.quad	0x401376e503fb3743              # double 4.8661079999999997
	.quad	0x3ffb1a1554fbdad7              # double 1.6938679999999999
	.quad	0x4017a7000431bde8              # double 5.9130859999999998
	.quad	0x40207144aa53fc01              # double 8.2212270000000007
	.quad	0x401c27eaa2a0a958              # double 7.0389809999999997
	.quad	0x3ffe741bfbdf090f              # double 1.9033469999999999
	.quad	0x3ffa1a8262456f76              # double 1.631472
	.quad	0x4017b568e820e62a              # double 5.9271580000000004
	.quad	0x40114a3b57c4e2f3              # double 4.3224919999999996
	.quad	0x400dd1af3a14cec4              # double 3.7273849999999999
	.quad	0x401e24ad794a6eb9              # double 7.5358179999999999
	.quad	0x4018570fbeb9e493              # double 6.0850210000000002
	.quad	0x3faa5870da5daf08              # double 0.051456000000000002
	.quad	0x401909dc725c3dee              # double 6.2596299999999996
	.quad	0x40188dcad14a0a0f              # double 6.1384689999999997
	.quad	0x3f83250b524399b3              # double 0.0093480000000000004
	.quad	0x400d3626b2f23034              # double 3.6514410000000002
	.quad	0x400abcf13cee9dd8              # double 3.342257
	.quad	0x401ba52b4d8ba40e              # double 6.9112980000000004
	.quad	0x401a6827b6fe2e6f              # double 6.6017140000000003
	.quad	0x401f5e1e2de87097              # double 7.8419119999999997
	.quad	0x3ff47dfa00e27e0f              # double 1.280756
	.quad	0x401e6950fc71d606              # double 7.6028479999999998
	.quad	0x3fdc8e9f6a93f291              # double 0.44620500000000002
	.quad	0x401d8268d32830a1              # double 7.3773530000000003
	.quad	0x4022ec96cc5fbf83              # double 9.4620879999999996
	.quad	0x400b3c970f7b9e06              # double 3.404585
	.quad	0x401ceb41bfbdf091              # double 7.229743
	.quad	0x401cb3f20a73f749              # double 7.1757280000000003
	.quad	0x4002ffaebc408d8f              # double 2.3748450000000001
	.quad	0x40214723aafff36b              # double 8.6389440000000004
	.quad	0x402257f2a172abef              # double 9.171773
	.quad	0x3ffb6e7f6f4be836              # double 1.714477
	.quad	0x4018739c94f69caa              # double 6.1129020000000001
	.quad	0x40176f46ed245b29              # double 5.8586689999999999
	.quad	0x40221ab4fa48301a              # double 9.0521619999999992
	.quad	0x4000351697f1f9ad              # double 2.025922
	.quad	0x40200556d19dece5              # double 8.0104279999999992
	.quad	0x3fdcc426351deefe              # double 0.44947199999999998
	.quad	0x3fb1785f8d2e514c              # double 0.068242999999999998
	.quad	0x40216ab4d8ba40d9              # double 8.7084109999999999
	.quad	0x3fd42990f301eabc              # double 0.31503700000000001
	.quad	0x400c131db445ed4a              # double 3.509334
	.quad	0x40104302f72b4528              # double 4.0654409999999999
	.quad	0x3fd88a71de69ad43              # double 0.38345000000000001
	.quad	0x4015a3f24d8fd5cb              # double 5.4101039999999996
	.quad	0x400eb37a80cf9e38              # double 3.8376359999999998
	.quad	0x4012071de69ad42c              # double 4.5069499999999998
	.quad	0x402328a159817b96              # double 9.5793560000000006
	.quad	0x4002eecc814d727a              # double 2.3666010000000002
	.quad	0x3ff73879c4113c68              # double 1.4512879999999999
	.quad	0x40163ab324851a87              # double 5.5573240000000004
	.quad	0x4010a891e215336e              # double 4.1646190000000001
	.quad	0x401c254c985f06f7              # double 7.0364250000000004
	.quad	0x401ba3ca7503b81b              # double 6.9099519999999997
	.quad	0x401f2c4e2f37fbf0              # double 7.7932670000000002
	.quad	0x3ff440a393ee5eee              # double 1.265781
	.quad	0x3fe4384db9c7368b              # double 0.63187300000000002
	.quad	0x401fdf39085f4a12              # double 7.9679909999999996
	.quad	0x3ff4f8151a437825              # double 1.310567
	.quad	0x4022e8f42fe82518              # double 9.4549880000000001
	.quad	0x40237a4e160d887f              # double 9.7388770000000004
	.quad	0x401cf66dbd72bcb6              # double 7.240653
	.quad	0x3fc3049235f80991              # double 0.14857699999999999
	.quad	0x4006c56bca5375c9              # double 2.8463970000000001
	.quad	0x400856d330941c82              # double 3.042395
	.quad	0x400005ba6efc371e              # double 2.0027970000000002
	.quad	0x401616b053198288              # double 5.522157
	.quad	0x3fb703f2d3c792d1              # double 0.089903999999999998
	.quad	0x3fe3df8f4730403a              # double 0.62104000000000004
	.quad	0x3ffb06eb0b7c3505              # double 1.6891890000000001
	.quad	0x40008ef3d3a1d324              # double 2.069801
	.quad	0x401eb63f572de43f              # double 7.6779760000000001
	.quad	0x4021db3743632c1f              # double 8.9281559999999995
	.quad	0x400e4b06c43f5f91              # double 3.7866339999999998
	.quad	0x40223c317acc4ef9              # double 9.1175650000000008
	.quad	0x40226f405f6ba062              # double 9.2172879999999999
	.quad	0x4020a4c51116a8b9              # double 8.3218160000000001
	.quad	0x3feb6fb09203a323              # double 0.85738400000000003
	.quad	0x40204c27a63736ce              # double 8.1487400000000001
	.quad	0x4019a940789613d3              # double 6.4152849999999999
	.quad	0x40083cac083126e9              # double 3.0296249999999998
	.quad	0x3ff6bc2eba27ae9b              # double 1.4209430000000001
	.quad	0x4020840314877681              # double 8.2578359999999993
	.quad	0x4023d73de1e2de87              # double 9.9203939999999999
	.quad	0x3fcfed17c5ef62fa              # double 0.24942300000000001
	.quad	0x401f498f605ab3ab              # double 7.8218360000000002
	.quad	0x40105acd9e83e426              # double 4.0886750000000003
	.quad	0x40010adf71eafee7              # double 2.130309
	.quad	0x4001f1476af89c5e              # double 2.2428119999999998
	.quad	0x4005ec7219220ff5              # double 2.7404519999999999
	.quad	0x402309cbee807bbb              # double 9.5191339999999993
	.quad	0x40215e43cc07aaef              # double 8.6841109999999997
	.quad	0x401e161804d98394              # double 7.5215759999999996
	.quad	0x401f63ea2d2fe3f3              # double 7.8475729999999996
	.quad	0x40227657fb69984a              # double 9.2311399999999999
	.quad	0x3ffe95bff04577d9              # double 1.9115599999999999
	.quad	0x400a0778140dd3fe              # double 3.253647
	.quad	0x4000a243dccea290              # double 2.0792310000000001
	.quad	0x4023c7ac6045baf5              # double 9.8899869999999996
	.quad	0x40013b899392189c              # double 2.1540710000000001
	.quad	0x4022fbc0e38a7e74              # double 9.4917060000000006
	.quad	0x401d234b0e1b4bb6              # double 7.2844660000000001
	.quad	0x402032a9f7b5aea3              # double 8.0989529999999998
	.quad	0x4018d62a5e785b5b              # double 6.2091459999999996
	.quad	0x3fffcafb3b752114              # double 1.9870559999999999
	.quad	0x3ff9f458cd20afa3              # double 1.622155
	.quad	0x3ffe2737110e453d              # double 1.884574
	.quad	0x3fcf476295208e15              # double 0.244366
	.quad	0x401dae0157eed45f              # double 7.4199270000000004
	.quad	0x402066ecbfb15b57              # double 8.2010249999999996
	.quad	0x401d4018a43bb40b              # double 7.3125939999999998
	.quad	0x3fbaee84ad794a6f              # double 0.105202
	.quad	0x4012890752da9867              # double 4.6338169999999996
	.quad	0x401a99d495182a99              # double 6.6502249999999998
	.quad	0x40233c64ba94bbe4              # double 9.6179559999999995
	.quad	0x4010d68cef672b88              # double 4.2095219999999998
	.quad	0x401ba0e1719f7f8d              # double 6.9071100000000003
	.quad	0x3fcb2bf5515054ac              # double 0.212279
	.quad	0x40120b46fdeb52ca              # double 4.5110130000000002
	.quad	0x4020d4b9a9da597d              # double 8.4154789999999995
	.quad	0x3fc3173fb7a5f41b              # double 0.149147
	.quad	0x401efc3b4f616723              # double 7.7463199999999998
	.quad	0x4020da81ba7fc32f              # double 8.4267710000000005
	.quad	0x4023b38d3f1843c4              # double 9.8506870000000006
	.quad	0x40117e82d7b634db              # double 4.3735460000000002
	.quad	0x400e93eccc469510              # double 3.8222290000000001
	.quad	0x4020f4bbc2b94d94              # double 8.4779949999999999
	.quad	0x40179a90cd423d92              # double 5.9009429999999998
	.quad	0x3ffbf90c9107faa0              # double 1.7483029999999999
	.quad	0x4003e8427418d691              # double 2.4884080000000002
	.quad	0x3ff20229a5ebb774              # double 1.1255280000000001
	.quad	0x3ff5262bae03b3ea              # double 1.3218190000000001
	.quad	0x3febfc0d2c386d2f              # double 0.87451800000000002
	.quad	0x40223c7219220ff5              # double 9.1180579999999996
	.quad	0x400aba7c17a89332              # double 3.3410570000000002
	.quad	0x3fe7b825e13b18db              # double 0.74122900000000003
	.quad	0x401cef2389720429              # double 7.2335339999999997
	.quad	0x401457d5ed06fef8              # double 5.0857770000000002
	.quad	0x3fe8dece5710880e              # double 0.77719800000000006
	.quad	0x4014e24dd2f1a9fc              # double 5.2210000000000001
	.quad	0x4012db242070b8d0              # double 4.7140050000000002
	.quad	0x40144df5cf2495e1              # double 5.0761329999999996
	.quad	0x40119cee9dd7ecbb              # double 4.4032539999999996
	.quad	0x4017c64628027d89              # double 5.9436270000000002
	.quad	0x4022ea5a469d7343              # double 9.4577200000000001
	.quad	0x4023f5592d98bf7f              # double 9.9791959999999999
	.quad	0x401500563ed0f627              # double 5.2503289999999998
	.quad	0x400d0fbb0e5e6794              # double 3.6326809999999998
	.quad	0x40222cdee34fc611              # double 9.0876380000000001
	.quad	0x400b0f483cafb3b7              # double 3.3824619999999999
	.quad	0x4011fe2435696e59              # double 4.4981850000000003
	.quad	0x3fbf8e3ac0c62e4d              # double 0.123264
	.quad	0x4008d4d72799a1fd              # double 3.103926
	.quad	0x4014a62f5989df11              # double 5.1622899999999996
	.quad	0x3ffae85985ad538b              # double 1.6817260000000001
	.quad	0x401d9009f623076c              # double 7.390663
	.quad	0x401412ecf2064239              # double 5.0184819999999997
	.quad	0x4008fc49fd7a13c2              # double 3.1231879999999999
	.quad	0x3ff6b49e01de2691              # double 1.4190959999999999
	.quad	0x4014196bb98c7e28              # double 5.0248249999999999
	.quad	0x3ff3c8a8b08dd1e5              # double 1.2364889999999999
	.quad	0x400b5e40420f6f09              # double 3.4210210000000001
	.quad	0x402141b8ed1bf7ad              # double 8.6283639999999995
	.quad	0x4003782ecaeea63b              # double 2.4336829999999998
	.quad	0x401c060d0247021d              # double 7.0059089999999999
	.quad	0x40188d3804534bd7              # double 6.1379089999999996
	.quad	0x400d327cbf6e3f79              # double 3.6496520000000001
	.quad	0x3fef642e12620254              # double 0.98097900000000004
	.quad	0x4004a69f8c21e1d2              # double 2.581359
	.quad	0x3ffc33c3e74afd54              # double 1.7626379999999999
	.quad	0x3fd418ce2d1f1cfc              # double 0.31401400000000002
	.quad	0x3fe21d57ff9b5632              # double 0.56608199999999997
	.quad	0x3fe8fbc7f77af640              # double 0.78073499999999996
	.quad	0x3fe10624dd2f1aa0              # double 0.53200000000000003
	.quad	0x3ff651bf7ad4b274              # double 1.3949579999999999
	.quad	0x3ff83d9ec7000432              # double 1.5150440000000001
	.quad	0x3ffadc69f8c21e1d              # double 1.678812
	.quad	0x40191257c914b168              # double 6.2679130000000001
	.quad	0x3ffa8bcbe61cffeb              # double 1.65913
	.quad	0x401c31e7967caea7              # double 7.0487349999999998
	.quad	0x3ffabc5154866a12              # double 1.670976
	.quad	0x400f80c0f01fb82c              # double 3.9378679999999999
	.quad	0x401bc3dd54da4ce8              # double 6.9412739999999999
	.quad	0x401ff26a65cf67b2              # double 7.9867340000000002
	.quad	0x401efd35653c9abb              # double 7.7472739999999999
	.quad	0x400c246cfc829cfe              # double 3.5177860000000001
	.quad	0x40173ec460ed80a1              # double 5.8112959999999996
	.quad	0x3ff4c3ac929aa1d7              # double 1.2977719999999999
	.quad	0x402104794ea07703              # double 8.5087379999999992
	.quad	0x40102682730c6717              # double 4.0376070000000004
	.quad	0x40131b95e5aff2a1              # double 4.7769389999999996
	.quad	0x4015dda2b5a20ddc              # double 5.4664409999999997
	.quad	0x401eab29a1b9f98b              # double 7.6671509999999996
	.quad	0x4013a23ee1bd1eda              # double 4.9084430000000001
	.quad	0x4023be113404ea4b              # double 9.8712250000000008
	.quad	0x40019933e35c5b4b              # double 2.1998060000000002
	.quad	0x40178641700cd856              # double 5.8811090000000004
	.quad	0x40138b4cc2507208              # double 4.8860349999999997
	.quad	0x40018a89fc6da448              # double 2.1926459999999999
	.quad	0x4012634d6a161e4f              # double 4.5969749999999996
	.quad	0x4018d4d22c881e47              # double 6.2078329999999999
	.quad	0x4019b0de093532e8              # double 6.4227220000000003
	.quad	0x401b7d4dc65c7043              # double 6.8723669999999997
	.quad	0x4009e2e9899bf594              # double 3.2357969999999998
	.quad	0x401ec11233df2a9d              # double 7.6885459999999996
	.quad	0x40060eb0b7c3504c              # double 2.7571729999999999
	.quad	0x402304152b0a6fc6              # double 9.5079740000000008
	.quad	0x400862bc72e275ab              # double 3.0482109999999998
	.quad	0x401b719695d91ab9              # double 6.8609260000000001
	.quad	0x402040cf5b1c8649              # double 8.1265820000000009
	.quad	0x400fba333764f11b              # double 3.9659179999999998
	.quad	0x4011c219652bd3c3              # double 4.4395499999999997
	.quad	0x4021475c8d9f9054              # double 8.6393780000000006
	.quad	0x400bae6a76965f52              # double 3.4601639999999998
	.quad	0x3ff3cba40d90e23b              # double 1.237217
	.quad	0x40135b5a20ddc619              # double 4.8392109999999997
	.quad	0x3ffebf7be121ee67              # double 1.9217489999999999
	.quad	0x400c239a38fbca10              # double 3.5173839999999998
	.quad	0x4000e707e175d13d              # double 2.1128079999999998
	.quad	0x401028130164840e              # double 4.0391349999999999
	.quad	0x401ccd70a3d70a3d              # double 7.2006249999999996
	.quad	0x401b4195cc857f30              # double 6.8140479999999997
	.quad	0x40198d19157abb88              # double 6.387791
	.quad	0x401f33aeab7995ee              # double 7.8004709999999999
	.quad	0x3ffe9adb8348f53c              # double 1.9128069999999999
	.quad	0x40221127b2cc7086              # double 9.0335059999999991
	.quad	0x3fe19c99285a921d              # double 0.55036600000000002
	.quad	0x4022f7f583a53b8e              # double 9.4842949999999995
	.quad	0x3ff9297aeddce7cd              # double 1.572627
	.quad	0x400365bf26f1dc51              # double 2.4246810000000001
	.quad	0x400b941d8e864021              # double 3.4473220000000002
	.quad	0x4000603ff69014b6              # double 2.0469970000000002
	.quad	0x4020c98bb4d48883              # double 8.3936440000000001
	.quad	0x4015b22467be553b              # double 5.4239670000000002
	.quad	0x40176c3b0c4588a0              # double 5.8556939999999997
	.quad	0x40194d50a88effe3              # double 6.3255030000000003
	.quad	0x4011b635a426bb56              # double 4.4279390000000003
	.quad	0x4014db43d89ce4a8              # double 5.2141260000000003
	.quad	0x40016a593a2df938              # double 2.1769280000000002
	.quad	0x3ffad1fc4c165908              # double 1.676266
	.quad	0x4003e33e78e1932d              # double 2.4859589999999998
	.quad	0x4012ab4fe79ee02a              # double 4.6672969999999996
	.quad	0x4019755ef1fddebe              # double 6.3646200000000004
	.quad	0x4021b7a02fb5d031              # double 8.858644
	.quad	0x4013a4c33b539325              # double 4.910901
	.quad	0x3ff2a92d55a3a084              # double 1.1663030000000001
	.quad	0x4019c7ddca4b124d              # double 6.445182
	.quad	0x3fdfeb56fb8f57f7              # double 0.49873899999999999
	.quad	0x3fede35e74299d88              # double 0.93400499999999997
	.quad	0x40176527e5215769              # double 5.8487850000000003
	.quad	0x401f5709fa54c554              # double 7.8349989999999998
	.quad	0x401a27325918a00a              # double 6.538278
	.quad	0x401043f5b5fa2270              # double 4.0663669999999996
	.quad	0x400292f23033a472              # double 2.3217509999999999
	.quad	0x3ff349b1fab96f22              # double 1.205492
	.quad	0x4016503f705857b0              # double 5.5783670000000001
	.quad	0x4020da28fe260b2d              # double 8.4260940000000009
	.quad	0x3fa54434e3369b9d              # double 0.041535999999999997
	.quad	0x3fd7160d887ebf23              # double 0.36072100000000001
	.quad	0x4004c5e679463cfb              # double 2.5966309999999999
	.quad	0x4017db702602c908              # double 5.9642949999999999
	.quad	0x40224031f03d145e              # double 9.1253810000000009
	.quad	0x40135faa044ae85c              # double 4.8434220000000003
	.quad	0x402316ee957470eb              # double 9.5447889999999997
	.quad	0x4002a1f6cacd184c              # double 2.3290839999999999
	.quad	0x3fc7173fb7a5f41b              # double 0.180397
	.quad	0x4010b906034f3fd9              # double 4.1806869999999998
	.quad	0x3ff3870da5daf07c              # double 1.220472
	.quad	0x400226d71f36262d              # double 2.2689650000000001
	.quad	0x3ff2b589efd86a90              # double 1.1693210000000001
	.quad	0x400cdd6b65a9a805              # double 3.6081150000000002
	.quad	0x3fca74d9c6b0531a              # double 0.20669100000000001
	.quad	0x4013dca7d6733ebc              # double 4.965484
	.quad	0x400b6ca4f440af1d              # double 3.4280490000000001
	.quad	0x401254167a95c854              # double 4.5821170000000002
	.quad	0x3ff426ca03c4b09f              # double 1.2594700000000001
	.quad	0x401a7702602c9082              # double 6.6162200000000002
	.quad	0x400c63aafff36ac6              # double 3.5486659999999999
	.quad	0x3fe98b3f63c31df7              # double 0.79824799999999996
	.quad	0x40168d2999567dbb              # double 5.6378539999999999
	.quad	0x40090b12d3415b14              # double 3.1304069999999999
	.quad	0x400b05f5ad96a6a0              # double 3.37791
	.quad	0x400848c7192ea52f              # double 3.035536
	.quad	0x3feb9c2e33eff195              # double 0.862815
	.quad	0x3fa16bfca85caafc              # double 0.034027000000000002
	.quad	0x400879999999999a              # double 3.0593750000000002
	.quad	0x40043a5332acfb76              # double 2.5284789999999999
	.quad	0x400f1e681a9b8cb9              # double 3.8898470000000001
	.quad	0x40105d47bedb7282              # double 4.091094
	.quad	0x4019f3358f2e05cd              # double 6.4875090000000002
	.quad	0x4020f8a782906898              # double 8.4856529999999992
	.quad	0x40115685985ad539              # double 4.3344940000000003
	.quad	0x3ff22862f5989df1              # double 1.13486
	.quad	0x401d5acd184c2720              # double 7.338673
	.quad	0x3fdb7aaef2c73259              # double 0.42936299999999999
	.quad	0x400d13404ea4a8c1              # double 3.6343999999999999
	.quad	0x401d63465625a683              # double 7.3469480000000003
	.quad	0x4000a770bd017daf              # double 2.0817580000000002
	.quad	0x3fe8caa53fc00970              # double 0.77473700000000001
	.quad	0x4010023897204296              # double 4.0021690000000003
	.quad	0x4012994c87980f56              # double 4.6497060000000001
	.quad	0x4013cb7d84901d19              # double 4.9487209999999999
	.quad	0x402381205bc01a37              # double 9.7522000000000002
	.quad	0x4017fd3c36113405              # double 5.9973000000000001
	.quad	0x400d67ad080b673c              # double 3.6756229999999999
	.quad	0x4002162f9ca5bd94              # double 2.2608329999999999
	.quad	0x40114edc3bd59924              # double 4.3270119999999999
	.quad	0x3fd4dc1e7967caea              # double 0.32593499999999997
	.quad	0x40020c9afe1da7b1              # double 2.2561550000000001
	.quad	0x4001050acc0bdcad              # double 2.127462
	.quad	0x4011b24f6598e10d              # double 4.424131
	.quad	0x3fbc92253111f0c3              # double 0.111605
	.quad	0x401e318a43bb40b3              # double 7.5483789999999997
	.quad	0x40234e290eed02cd              # double 9.6526569999999995
	.quad	0x40219c753e707e17              # double 8.8055819999999994
	.quad	0x4010cbaf533f4235              # double 4.1989109999999998
	.quad	0x4021566149c6f36f              # double 8.6687110000000001
	.quad	0x40139acd9e83e426              # double 4.9011750000000003
	.quad	0x40216efda836eb4f              # double 8.7167790000000007
	.quad	0x4022f3f338716095              # double 9.4764649999999992
	.quad	0x401b9ce28ed5f139              # double 6.9032080000000002
	.quad	0x401e61da7b0b3919              # double 7.5955599999999998
	.quad	0x401593dea465a576              # double 5.3944039999999998
	.quad	0x400a406961c36977              # double 3.2814510000000001
	.quad	0x400474117f84449e              # double 2.5566740000000001
	.quad	0x4020fec15d2d01c1              # double 8.4975690000000004
	.quad	0x40180d66277c45cc              # double 6.0130850000000002
	.quad	0x4019ae2541d8e864              # double 6.420064
	.quad	0x402387e43675ddd3              # double 9.7654130000000005
	.quad	0x400d47c0f4517614              # double 3.6600359999999998
	.quad	0x400ec661ae70c133              # double 3.8468659999999999
	.quad	0x4021766ea8544780              # double 8.7313130000000001
	.quad	0x400499b1b79d909f              # double 2.5750459999999999
	.quad	0x400d4589acbc8c0d              # double 3.658954
	.quad	0x4016f8cc9a77e5eb              # double 5.7429680000000003
	.quad	0x401fb5696e58a32f              # double 7.9271599999999997
	.quad	0x3fe0ecd07852f7f5              # double 0.52890800000000004
	.quad	0x40214adcd2d44dcb              # double 8.6462160000000008
	.quad	0x4020314812be48a6              # double 8.0962530000000008
	.quad	0x4010d59685122318              # double 4.2085819999999998
	.quad	0x401d13b57c4e2f38              # double 7.269247
	.quad	0x400161bc98a222d5              # double 2.172723
	.quad	0x40231dd334c5da6a              # double 9.5582519999999995
	.quad	0x40021668c2613900              # double 2.260942
	.quad	0x401e4253da72a7bd              # double 7.5647729999999997
	.quad	0x4017b8a58b3f63c3              # double 5.9303189999999999
	.quad	0x40219355ef1fddec              # double 8.7877650000000002
	.quad	0x3ff6591ab8e8ea3a              # double 1.3967540000000001
	.quad	0x40067f5e84f09529              # double 2.812192
	.quad	0x4013b5dd4c76d118              # double 4.9276020000000003
	.quad	0x3ff6d8d9b5e95b79              # double 1.427942
	.quad	0x401e966a11ec918e              # double 7.6468889999999998
	.quad	0x3fb74c8ffb8b2639              # double 0.091011999999999996
	.quad	0x402294cf8d716d2b              # double 9.2906460000000006
	.quad	0x400cb0d49949e881              # double 3.5863429999999998
	.quad	0x4021378ad2567989              # double 8.6084809999999994
	.quad	0x4020ef95d4e8fb01              # double 8.4679400000000005
	.quad	0x401e0d045fe11127              # double 7.5127119999999996
	.quad	0x40099539b888722a              # double 3.197864
	.quad	0x401fc89acbc8c0cf              # double 7.9459030000000003
	.quad	0x3fdbcbb7f9d6f113              # double 0.434309
	.quad	0x401a5ae685db76b4              # double 6.5887700000000002
	.quad	0x3ff5fef9db22d0e5              # double 1.3747499999999999
	.quad	0x3ff75475a31a4bdc              # double 1.4581200000000001
	.quad	0x40202a8a6117720d              # double 8.0830870000000008
	.quad	0x3ff4778dd616f86a              # double 1.279188
	.quad	0x4023a597f62b6ae8              # double 9.8234250000000002
	.quad	0x3fe548a58b3f63c3              # double 0.66511799999999999
	.quad	0x401cc192ea52ef91              # double 7.1890369999999999
	.quad	0x401b0b52007dd441              # double 6.7610549999999998
	.quad	0x401af61f5be5d9e4              # double 6.740354
	.quad	0x401ccfc5cdd50a89              # double 7.2029030000000001
	.quad	0x401b907fed20296b              # double 6.8911129999999998
	.quad	0x3ffd7bf2f5558213              # double 1.8427610000000001
	.quad	0x4003cad688377186              # double 2.4740419999999999
	.quad	0x4010e6eb0b7c3505              # double 4.2255060000000002
	.quad	0x4021be7b1c0010c7              # double 8.8720330000000001
	.quad	0x4010156366d7a56e              # double 4.0208870000000001
	.quad	0x4011b89efd86a8fc              # double 4.430294
	.quad	0x4022339f98b71b8b              # double 9.1008270000000007
	.quad	0x401f8b3e5753a3ec              # double 7.88598
	.quad	0x4017cdd590c0ad04              # double 5.9510100000000001
	.quad	0x3ff476aa4b9884c7              # double 1.2789710000000001
	.quad	0x4014932830a0b1bc              # double 5.1437080000000002
	.quad	0x401864f00ef1348b              # double 6.0985719999999999
	.quad	0x3ff47edb7281fd9c              # double 1.2809710000000001
	.quad	0x3ffaee46cfc829d0              # double 1.683173
	.quad	0x4020e08effe2a3cf              # double 8.4385910000000006
	.quad	0x40164b6aa4b9884c              # double 5.5736489999999996
	.quad	0x401ba490e66cb103              # double 6.9107089999999998
	.quad	0x3ff1a9670196d8f5              # double 1.103858
	.quad	0x400257564302b40f              # double 2.2926449999999998
	.quad	0x401e81083dbc2331              # double 7.6260079999999996
	.quad	0x400484c6a3bddfca              # double 2.564832
	.quad	0x3ffd476f2a5a469d              # double 1.8299399999999999
	.quad	0x40033c5718eb8950              # double 2.4044629999999998
	.quad	0x40225dcee17a02fb              # double 9.1832189999999994
	.quad	0x4020d328522ea0fd              # double 8.4124169999999996
	.quad	0x401dcced4e4c942d              # double 7.4501239999999997
	.quad	0x4021697268d32831              # double 8.7059510000000007
	.quad	0x40220d5065732160              # double 9.0260040000000004
	.quad	0x400e12849cb252ce              # double 3.759042
	.quad	0x40238864ece9a2c6              # double 9.7663949999999993
	.quad	0x401f7b9628cbd124              # double 7.8706899999999997
	.quad	0x4021eba83f4eca68              # double 8.9602679999999992
	.quad	0x3fe14c35ce182667              # double 0.54055299999999995
	.quad	0x3fd392ab68cef673              # double 0.30582700000000002
	.quad	0x4010b22fad6cb535              # double 4.17401
	.quad	0x40110ab9f559b3d0              # double 4.2604749999999996
	.quad	0x401c2383ad9f0a1c              # double 7.0346820000000001
	.quad	0x40230804534bd76f              # double 9.5156580000000001
	.quad	0x3ffa1efb6dca07f6              # double 1.6325639999999999
	.quad	0x40233458eeae9ee4              # double 9.6022409999999993
	.quad	0x40027d4bf0995aaf              # double 2.3111799999999998
	.quad	0x401ba033e78e1933              # double 6.9064480000000001
	.quad	0x40213d7d7c2ca149              # double 8.6200980000000005
	.quad	0x3fd68ecd8dbcec85              # double 0.352466
	.quad	0x3ff4c5b078d92fb2              # double 1.2982640000000001
	.quad	0x40193e831ad2135e              # double 6.3110470000000003
	.quad	0x4022e2deebb341e1              # double 9.4431069999999994
	.quad	0x3fe44dab191dde37              # double 0.63448099999999996
	.quad	0x3ffa03c297bfa4c6              # double 1.625918
	.quad	0x40224f4c6e6d9be5              # double 9.1548800000000004
	.quad	0x401aebad3a604e1e              # double 6.7301529999999996
	.quad	0x3faea4ca4f440af2              # double 0.059851000000000001
	.quad	0x3fdc771001d5c316              # double 0.44476700000000002
	.quad	0x3fe66ad0c3d25248              # double 0.70053900000000002
	.quad	0x4010abc4d22c881e              # double 4.1677429999999998
	.quad	0x400609d1f601797d              # double 2.7547950000000001
	.quad	0x40231b300de4c511              # double 9.5531009999999998
	.quad	0x400eb641f644955b              # double 3.8389929999999999
	.quad	0x3ffd1d7342edbb5a              # double 1.81969
	.quad	0x4010b723aafff36b              # double 4.1788470000000002
	.quad	0x401b08aeb80ecfa7              # double 6.7584790000000003
	.quad	0x40180b94d9407896              # double 6.0113099999999999
	.quad	0x4019f86fcdee34fc              # double 6.4926139999999997
	.quad	0x40221eea854477ff              # double 9.0603829999999999
	.quad	0x40121b1ee2435697              # double 4.5264850000000001
	.quad	0x4023300dc33721d5              # double 9.5938549999999995
	.quad	0x4023a5ad106ee30d              # double 9.8235860000000005
	.quad	0x40226859641f6449              # double 9.2038069999999994
	.quad	0x3ff0457c0b135979              # double 1.016964
	.quad	0x3fdeeca25529fe00              # double 0.48319299999999998
	.quad	0x4012c32f87ad080b              # double 4.6906109999999996
	.quad	0x401886deb95e5aff              # double 6.1317089999999999
	.quad	0x3ff00158fb43d89d              # double 1.000329
	.quad	0x401bcd0f1f57b41c              # double 6.950253
	.quad	0x402272f166e008ea              # double 9.2244980000000005
	.quad	0x3fec696c3fc43b2e              # double 0.88786900000000002
	.quad	0x3ffb06d3f9e7b80b              # double 1.6891670000000001
	.quad	0x401fb8c9752977c9              # double 7.9304560000000003
	.quad	0x3ff1c470a808c826              # double 1.1104590000000001
	.quad	0x3fe3887229e90796              # double 0.610406
	.quad	0x3febe80e06530058              # double 0.87207699999999999
	.quad	0x40136ee0b0af5fd4              # double 4.8582789999999996
	.quad	0x400c9996fa82e87d              # double 3.5749949999999999
	.quad	0x4023e7fe08aefb2b              # double 9.9531100000000005
	.quad	0x4010364cf8d716d3              # double 4.0530280000000003
	.quad	0x40151e21101b0037              # double 5.2794230000000004
	.quad	0x4021eb033a4723ab              # double 8.959009
	.quad	0x401f215ad106ee31              # double 7.7825730000000001
	.quad	0x40138e3c536d655e              # double 4.8889019999999999
	.quad	0x4020e74c4cdfaca3              # double 8.4517539999999993
	.quad	0x40178df5cf2495e1              # double 5.8886329999999996
	.quad	0x401f7513b5bf6a0e              # double 7.8643330000000002
	.quad	0x401896fd21ff2e49              # double 6.1474500000000001
	.quad	0x400f965a14488c61              # double 3.9484140000000001
	.quad	0x3fde4f2ae07e5a79              # double 0.473582
	.quad	0x3ff8ba52ac753e70              # double 1.5454889999999999
	.quad	0x400b419eb6390c91              # double 3.407041
	.quad	0x4001655a7d24180d              # double 2.1744889999999999
	.quad	0x4017470ac3a860dd              # double 5.8193770000000002
	.quad	0x4001579b77c02afe              # double 2.1677770000000001
	.quad	0x4017b4e160d887ec              # double 5.926641
	.quad	0x4013455fbb517a46              # double 4.8177479999999999
	.quad	0x4017070bd017dae8              # double 5.7568809999999999
	.quad	0x4015d221858bc59c              # double 5.4552060000000004
	.quad	0x3ff33021d10b1fef              # double 1.1992510000000001
	.quad	0x3ff534d6a161e4f7              # double 1.3253999999999999
	.quad	0x400cbb0ee49f5169              # double 3.5913369999999998
	.quad	0x401547be121ee675              # double 5.3200609999999999
	.quad	0x40213e798958d9b6              # double 8.6220210000000002
	.quad	0x3fb845aa2e3c536d              # double 0.094812999999999995
	.quad	0x400dab4a66559f6f              # double 3.7086380000000001
	.quad	0x400b8e5c4eb56fb9              # double 3.444512
	.quad	0x3fccc5d206c8711d              # double 0.22478699999999999
	.quad	0x3ff5ec450268900c              # double 1.3701829999999999
	.quad	0x4016667125dd095b              # double 5.600041
	.quad	0x3fa7605ab3aabcd8              # double 0.045657000000000003
	.quad	0x401cc4f11b60ae97              # double 7.1923260000000004
	.quad	0x40116e5fb71fbc5e              # double 4.3577870000000001
	.quad	0x40106d7dbf487fcc              # double 4.1069250000000004
	.quad	0x4016a1ec4e7253da              # double 5.6581279999999996
	.quad	0x3fe635b2d4d4024b              # double 0.69405499999999998
	.quad	0x4004c7c393682731              # double 2.5975410000000001
	.quad	0x3ff52c625e99e94b              # double 1.3233360000000001
	.quad	0x40077d790752da98              # double 2.9362659999999998
	.quad	0x4006f919ac79702e              # double 2.8716309999999998
	.quad	0x40223778feef5ec8              # double 9.1083449999999999
	.quad	0x401917ecfe9b7bf2              # double 6.2733650000000001
	.quad	0x3ff6c0ad03d9a954              # double 1.42204
	.quad	0x40063d7dbf487fcc              # double 2.7800250000000002
	.quad	0x402282bc0e38a7e7              # double 9.2553409999999996
	.quad	0x401891dde37585be              # double 6.1424479999999999
	.quad	0x4009804b7f5a5333              # double 3.1876440000000001
	.quad	0x401a630ad46f587d              # double 6.5967209999999996
	.quad	0x3ff77c8d1958969a              # double 1.467908
	.quad	0x400f572bcb5fe543              # double 3.917564
	.quad	0x400376eac8605682              # double 2.433065
	.quad	0x401afd7518b0d0ee              # double 6.7475170000000002
	.quad	0x401e855582129457              # double 7.6302089999999997
	.quad	0x4017bc382a12f901              # double 5.933808
	.quad	0x4004a9ac36544fe3              # double 2.5828479999999998
	.quad	0x40160baa582dbe7f              # double 5.5113919999999998
	.quad	0x402219fe86833c60              # double 9.05077
	.quad	0x40106dfe75bc44bf              # double 4.1074159999999997
	.quad	0x4013f91c087442c8              # double 4.993271
	.quad	0x401c3af7d30ad46f              # double 7.0575859999999997
	.quad	0x401d650dae3e6c4c              # double 7.3486849999999997
	.quad	0x3ffe2fbb0e5e6794              # double 1.8866529999999999
	.quad	0x401c2bde3fbbd7b2              # double 7.04284
	.quad	0x402024bad7d7c2ca              # double 8.0717379999999999
	.quad	0x401e8e8e1d6494d5              # double 7.6392139999999999
	.quad	0x401b099a1fd1569f              # double 6.7593769999999997
	.quad	0x4022d6ca46e08f21              # double 9.4195119999999992
	.quad	0x4020c8c7192ea52f              # double 8.392144
	.quad	0x401ca887ebf22c02              # double 7.1645810000000001
	.quad	0x400a98266772d5e0              # double 3.3242919999999998
	.quad	0x40060b723ee1bd1f              # double 2.7555890000000001
	.quad	0x40231e9f2778140e              # double 9.5598080000000003
	.quad	0x401c08a3b57c4e2f              # double 7.0084369999999998
	.quad	0x401e26c0d6f544bb              # double 7.5378449999999999
	.quad	0x4004d5f4e4430b18              # double 2.6044710000000002
	.quad	0x4023f836eb4e9814              # double 9.9847940000000008
	.quad	0x3fe74cb3a2595bbc              # double 0.72811300000000001
	.quad	0x3ff1290257c914b1              # double 1.0725119999999999
	.quad	0x40044117f84449dc              # double 2.531784
	.quad	0x40043a459103c8e2              # double 2.5284529999999998
	.quad	0x4022159c49774257              # double 9.0422080000000005
	.quad	0x401cdf2b239a38fc              # double 7.2179380000000002
	.quad	0x4020c3d816aceaaf              # double 8.3825079999999996
	.quad	0x401976876e1deacd              # double 6.3657510000000004
	.quad	0x4022f22163fdd65a              # double 9.4729109999999999
	.quad	0x3fef282c6ef3d3a2              # double 0.97365400000000002
	.quad	0x40186965f5275eea              # double 6.1029280000000004
	.quad	0x400e25c70435efa6              # double 3.768446
	.quad	0x400ce32873bc903f              # double 3.6109170000000002
	.quad	0x4015d82235b4edb3              # double 5.461068
	.quad	0x4022bd4ef459d990              # double 9.3697429999999997
	.quad	0x3ffed4c87980f55e              # double 1.926949
	.quad	0x4022f3a732df505d              # double 9.4758849999999998
	.quad	0x401d894898f605ab              # double 7.3840659999999998
	.quad	0x40237196312f4cf5              # double 9.7218490000000006
	.quad	0x402366d80a17b0f7              # double 9.7008670000000005
	.quad	0x40130dd00f776c48              # double 4.7634889999999999
	.quad	0x40100a8826aa8eb4              # double 4.0102849999999997
	.quad	0x402396225fa658c5              # double 9.7932310000000004
	.quad	0x3fdc422ccb3a2596              # double 0.44153900000000001
	.quad	0x401fbc4dec1c1d6d              # double 7.933891
	.quad	0x40214877ab324852              # double 8.6415380000000006
	.quad	0x401b0297bfa4c61e              # double 6.7525320000000004
	.quad	0x4021d4638c975297              # double 8.9148219999999991
	.quad	0x40086f8d716d2aa6              # double 3.0544690000000001
	.quad	0x40223e19da9c9928              # double 9.1212909999999994
	.quad	0x4012d47d805e5f31              # double 4.7075100000000001
	.quad	0x4002f58e219652bd              # double 2.3698999999999999
	.quad	0x3ffa86e7e62dc6e3              # double 1.6579360000000001
	.quad	0x400d673a365cb35f              # double 3.6754039999999999
	.quad	0x3fe93cea6c1a048e              # double 0.788686
	.quad	0x401ad9695d91ab8f              # double 6.7123160000000004
	.quad	0x402005798d8a979e              # double 8.0106929999999998
	.quad	0x40071de58e64b231              # double 2.8895979999999999
	.quad	0x40070333fc86cebc              # double 2.8765640000000001
	.quad	0x4023d03c8e25c811              # double 9.9067120000000006
	.quad	0x4016892ee84ad795              # double 5.6339680000000003
	.quad	0x4021652a411c2a02              # double 8.6975879999999997
	.quad	0x40206f0cdc8754f3              # double 8.2168949999999992
	.quad	0x3fc6809d495182aa              # double 0.17580000000000001
	.quad	0x4010beb4e981387a              # double 4.1862370000000002
	.quad	0x4021e35fc3b4f616              # double 8.9440899999999992
	.quad	0x3fec22163fdd65a1              # double 0.87916099999999997
	.quad	0x401242f4cf4a558f              # double 4.5653870000000003
	.quad	0x402341b413986339              # double 9.6283270000000005
	.quad	0x4023a0624dd2f1aa              # double 9.81325
	.quad	0x3febe7b5f1bef49d              # double 0.872035
	.quad	0x40154f4b61fe21d9              # double 5.3274359999999996
	.quad	0x4009f09d0635a427              # double 3.2424870000000001
	.quad	0x4007632b12d3415b              # double 2.923422
	.quad	0x4009bffc5479d4d8              # double 3.2187429999999999
	.quad	0x4013e16b11c6d1e1              # double 4.970135
	.quad	0x4018f2dcb1465e89              # double 6.2371699999999999
	.quad	0x4008048cf7caa759              # double 3.0022220000000002
	.quad	0x40108baade657b85              # double 4.1363940000000001
	.quad	0x401d660e94ee392e              # double 7.3496649999999999
	.quad	0x40238eb5d462c344              # double 9.7787310000000005
	.quad	0x401620ac7da1ec4e              # double 5.5319079999999996
	.quad	0x4004fc0ca600b029              # double 2.6230709999999999
	.quad	0x3fc982d38476f2a6              # double 0.19930500000000001
	.quad	0x401b20caa326e115              # double 6.7820229999999997
	.quad	0x402110a30db6a1e8              # double 8.5324939999999998
	.quad	0x4022fb220791c4b9              # double 9.4904939999999999
	.quad	0x3fd0a63736cdf267              # double 0.26014500000000002
	.quad	0x4017acef672b8844              # double 5.918882
	.quad	0x3fe90902de00d1b7              # double 0.78234999999999999
	.quad	0x4022c78359bc33f8              # double 9.3896739999999994
	.quad	0x401ac22706d50657              # double 6.6896019999999998
	.quad	0x4008f5b2d4d4024b              # double 3.1199699999999999
	.quad	0x40226d3ae685db77              # double 9.2133400000000005
	.quad	0x401bfe2003ab862b              # double 6.9981689999999999
	.quad	0x40167b4fe79ee02a              # double 5.6204219999999996
	.quad	0x4022d1cc532a4980              # double 9.4097620000000006
	.quad	0x40220c8e8a71de6a              # double 9.0245250000000006
	.quad	0x3fef9322f2734f83              # double 0.986711
	.quad	0x3feac99f1ae2da55              # double 0.83711199999999997
	.quad	0x3ff86bedfa43fe5d              # double 1.5263500000000001
	.quad	0x4011e7724fa8b4c0              # double 4.4760220000000004
	.quad	0x4010c5abc0e38a7e              # double 4.1930379999999996
	.quad	0x401bf9f05ea24cc7              # double 6.9940810000000004
	.quad	0x400bdf19d66adb40              # double 3.4839359999999999
	.quad	0x401cc3d8e0008638              # double 7.1912570000000002
	.quad	0x401eda57eaa2a0a9              # double 7.7132259999999996
	.quad	0x4019e93a71151612              # double 6.4777620000000002
	.quad	0x3ff7278f25a250f8              # double 1.4471579999999999
	.quad	0x4005e365cb35f3d8              # double 2.7360340000000001
	.quad	0x40046d7f950b955f              # double 2.5534659999999998
	.quad	0x400d0c43f5f91601              # double 3.630989
	.quad	0x3fa956191148fda0              # double 0.049485000000000001
	.quad	0x3fb205143bf72713              # double 0.070389999999999994
	.quad	0x4008ffa22706d506              # double 3.1248209999999998
	.quad	0x401362c77574f723              # double 4.8464640000000001
	.quad	0x3ff134395810624e              # double 1.07525
	.quad	0x40082fc47e49b1fb              # double 3.0233240000000001
	.quad	0x400fd8f3eccc4695              # double 3.980934
	.quad	0x4017bd8cf398e970              # double 5.9351079999999996
	.quad	0x40238705a708ede5              # double 9.7637149999999994
	.quad	0x401a72d3415b1423              # double 6.6121340000000002
	.quad	0x4014646aa087ca64              # double 5.0980629999999998
	.quad	0x401e8857f3061c7a              # double 7.6331480000000003
	.quad	0x400268f861a60d45              # double 2.3012549999999998
	.quad	0x4022a9d5c31593e6              # double 9.331709
	.quad	0x4018a55ef1fddebe              # double 6.1614950000000004
	.quad	0x3fca5657fb69984a              # double 0.20576
	.quad	0x40218cbcf0b6b6e1              # double 8.7748790000000003
	.quad	0x400f22f6a50d6b23              # double 3.8920720000000002
	.quad	0x40066649906cca2e              # double 2.7999450000000001
	.quad	0x400fc8c60cbf2b24              # double 3.9730340000000002
	.quad	0x4015979702e6644e              # double 5.3980370000000004
	.quad	0x401029ccfaeff5c7              # double 4.0408210000000002
	.quad	0x4016b0d306a2b170              # double 5.6726799999999997
	.quad	0x3ff31c9a34ca0c28              # double 1.194483
	.quad	0x401b2388ebcc6c55              # double 6.7847020000000002
	.quad	0x3ff69e57d9dba909              # double 1.4136580000000001
	.quad	0x40191aaac1094a2c              # double 6.2760420000000003
	.quad	0x4014c6b2af145522              # double 5.1940410000000004
	.quad	0x3fe97457c0b13598              # double 0.79545200000000005
	.quad	0x40223743a647fdc6              # double 9.1079380000000008
	.quad	0x3fe559f90539fba4              # double 0.66723299999999997
	.quad	0x400d231df761cbcd              # double 3.642147
	.quad	0x40225de9c0229a5f              # double 9.1834240000000005
	.quad	0x401b16d82ba5a038              # double 6.7723089999999999
	.quad	0x4009a8b7e4de3b8a              # double 3.207382
	.quad	0x4020aa7d24180d3d              # double 8.332986
	.quad	0x3fdad556084a515d              # double 0.419271
	.quad	0x4022db7c99ae924f              # double 9.4286849999999997
	.quad	0x4019a815a07b352b              # double 6.4141450000000004
	.quad	0x40220180d3cff64d              # double 9.002936
	.quad	0x4022d8c1fc8f3238              # double 9.4233550000000008
	.quad	0x401a78c692f6e829              # double 6.6179449999999997
	.quad	0x400d425e99e94ab2              # double 3.6574070000000001
	.quad	0x4018bfde2ef4e011              # double 6.1873709999999997
	.quad	0x402197585be1a826              # double 8.7955959999999997
	.quad	0x4023f59620685554              # double 9.9796610000000001
	.quad	0x40239f6965f5275f              # double 9.8113510000000001
	.quad	0x4020d2f81626b2f2              # double 8.4120489999999997
	.quad	0x401acd5a187a4a49              # double 6.700539
	.quad	0x4013f2070b8cfbfc              # double 4.9863549999999996
	.quad	0x40097dc486ad2dcb              # double 3.18641
	.quad	0x401c4cf0307f23cd              # double 7.0751350000000004
	.quad	0x40009a355043e532              # double 2.0752969999999999
	.quad	0x401e763ae2541d8f              # double 7.6154590000000004
	.quad	0x401590079a2834d2              # double 5.3906539999999996
	.quad	0x3fe6dabe27179bfe              # double 0.714202
	.quad	0x4011163f141205bc              # double 4.271725
	.quad	0x3ff0d855970b49e0              # double 1.052816
	.quad	0x400fe6e6d9be4cd7              # double 3.9877449999999999
	.quad	0x40039c1ce6c093d9              # double 2.4512269999999998
	.quad	0x400a1b7f9d6f1130              # double 3.2634270000000001
	.quad	0x400e5646ae3a3a8e              # double 3.7921269999999998
	.quad	0x3ffbcce4ead0c3d2              # double 1.7375229999999999
	.quad	0x401f32096787ce96              # double 7.798864
	.quad	0x400bed6a161e4f76              # double 3.4909249999999998
	.quad	0x3fec97b5286b5914              # double 0.89351899999999995
	.quad	0x400c2c3b927d45a6              # double 3.521598
	.quad	0x4019d143393ab431              # double 6.454358
	.quad	0x400dd1676640a6b9              # double 3.7272479999999999
	.quad	0x4017269014b599aa              # double 5.7876589999999997
	.quad	0x401bab34e7685986              # double 6.9171940000000003
	.quad	0x4012e1a1554fbdad              # double 4.7203419999999996
	.quad	0x401621bc98a222d5              # double 5.5329459999999999
	.quad	0x4018de5d5b24e9c4              # double 6.2171529999999997
	.quad	0x4021e437824d4cba              # double 8.9457360000000001
	.quad	0x3ffbdea897635e74              # double 1.74186
	.quad	0x40073ab0856e696a              # double 2.9036569999999999
	.quad	0x401be2a843808851              # double 6.9713450000000003
	.quad	0x401aa44e93e1c9b4              # double 6.6604559999999999
	.quad	0x400ed20fb224aada              # double 3.8525689999999999
	.quad	0x400797acc4ef88b9              # double 2.9490599999999998
	.quad	0x4013c23bff8a8f3b              # double 4.9396820000000004
	.quad	0x4020139ecf638002              # double 8.0383209999999998
	.quad	0x4010c09e55c0fcb5              # double 4.188104
	.quad	0x4007331ca7d6733f              # double 2.8999570000000001
	.quad	0x40132371971c10d8              # double 4.7846130000000002
	.quad	0x400e5102363b2570              # double 3.789555
	.quad	0x3fbf2f23033a4724              # double 0.121813
	.quad	0x4014df1f9acffa7f              # double 5.2178940000000003
	.quad	0x40121a843808850a              # double 4.5258950000000002
	.quad	0x40088c07aaef2c73              # double 3.0683739999999999
	.quad	0x402153a3443d46b2              # double 8.6633549999999993
	.quad	0x401ef5208e150119              # double 7.7393819999999999
	.quad	0x401d8d87b56b8738              # double 7.3882130000000003
	.quad	0x4022b119ac79702e              # double 9.3458989999999993
	.quad	0x4007ffe111276fb1              # double 2.9999410000000002
	.quad	0x40126d790752da98              # double 4.6069069999999996
	.quad	0x4022aefda836eb4f              # double 9.3417790000000007
	.quad	0x40102e154434e337              # double 4.0450030000000003
	.quad	0x4020f773c0c1fc8f              # double 8.4833049999999997
	.quad	0x3ff3514c22ee4192              # double 1.2073480000000001
	.quad	0x400e1ccea28fe261              # double 3.7640660000000001
	.quad	0x401aec3f3e0370ce              # double 6.7307100000000002
	.quad	0x3fefe392e1ef73c1              # double 0.99653000000000002
	.quad	0x400ca322af577100              # double 3.5796559999999999
	.quad	0x40167f7f8ca8198f              # double 5.6245099999999999
	.quad	0x400c8fc7a398201d              # double 3.5702050000000001
	.quad	0x400704577d955715              # double 2.8771200000000001
	.quad	0x3fe45d3996fa82e8              # double 0.63637999999999995
	.quad	0x3fe571f57b41bfbe              # double 0.67016100000000001
	.quad	0x4017dd744f5d3565              # double 5.9662639999999998
	.quad	0x40106b54e2b063e0              # double 4.1048159999999996
	.quad	0x401ce3211cb039ef              # double 7.2218059999999999
	.quad	0x3fff903ea704bc27              # double 1.9727159999999999
	.quad	0x400b7e7210be9425              # double 3.436741
	.quad	0x4020587b784662bb              # double 8.1728170000000002
	.quad	0x4006e895d0b73d19              # double 2.8635670000000002
	.quad	0x401e8608d08919f0              # double 7.6308930000000004
	.quad	0x4014231098d477bc              # double 5.034243
	.quad	0x40064f32bdc26dce              # double 2.7886709999999999
	.quad	0x401ec09784ec636b              # double 7.6880779999999999
	.quad	0x4020d6c39799e519              # double 8.4194610000000001
	.quad	0x401829c842fa5094              # double 6.0408030000000004
	.quad	0x401173d89ce4a7b5              # double 4.3631310000000001
	.quad	0x401253150dae3e6c              # double 4.5811349999999997
	.quad	0x3fe836b09635610b              # double 0.75667600000000002
	.quad	0x3ff39147f1305964              # double 1.222969
	.quad	0x40126be1a8262457              # double 4.605353
	.quad	0x401ce3a14cec41dd              # double 7.2222949999999999
	.quad	0x401d7da98676a726              # double 7.3727169999999997
	.quad	0x4017d49e01de2691              # double 5.9576339999999997
	.quad	0x4009477ab324851b              # double 3.1599020000000002
	.quad	0x401a8b4c7f349386              # double 6.6360340000000004
	.quad	0x4006bffac1d29dc7              # double 2.8437399999999999
	.quad	0x40205f913e81450f              # double 8.186655
	.quad	0x4008c5154866a11f              # double 3.0962320000000001
	.quad	0x3ffed6861e92923e              # double 1.9273739999999999
	.quad	0x4022e4febd09e12a              # double 9.4472559999999994
	.quad	0x40189d4801f75105              # double 6.1535950000000001
	.quad	0x4020d008c8259e1f              # double 8.4063169999999996
	.quad	0x40099dfc9ff92f2b              # double 3.2021419999999998
	.quad	0x4013f00b45ae5ffa              # double 4.9844179999999998
	.quad	0x401bc7a80cf9e386              # double 6.9449769999999997
	.quad	0x4014daa1511dffc5              # double 5.2135059999999998
	.quad	0x4014f0dae3e6c4c6              # double 5.2352100000000004
	.quad	0x400d906d50657321              # double 3.6955209999999998
	.quad	0x4007e9c6f36ef805              # double 2.9891489999999998
	.quad	0x3ff188a265f0f5a1              # double 1.095858
	.quad	0x400be70fbeb9e493              # double 3.4878230000000001
	.quad	0x40074ac6cdaf4adc              # double 2.9115120000000001
	.quad	0x4011dbef06b37868              # double 4.4647790000000001
	.quad	0x3fdcbf1e8e608073              # double 0.44916499999999998
	.quad	0x3ff993e2d6238da4              # double 1.5986050000000001
	.quad	0x40132a1f4b1ee243              # double 4.7911349999999997
	.quad	0x40097823c85c24c4              # double 3.183662
	.quad	0x40204bc0a06e9ff1              # double 8.1479540000000004
	.quad	0x402078e68e3ef284              # double 8.2361339999999998
	.quad	0x4020fe2a80064a9d              # double 8.4964180000000002
	.quad	0x4018538a3b57c4e3              # double 6.081582
	.quad	0x401b1dd6e04c0592              # double 6.7791399999999999
	.quad	0x40236df0f5a1016d              # double 9.7147290000000001
	.quad	0x400615faa8a82a56              # double 2.760732
	.quad	0x40010fd2a62aa194              # double 2.1327259999999999
	.quad	0x40164106ee30caa3              # double 5.5635029999999999
	.quad	0x400f97625204af92              # double 3.9489179999999999
	.quad	0x4022efc9bc771434              # double 9.4683360000000007
	.quad	0x4017fc46d82ba5a0              # double 5.9963639999999998
	.quad	0x3fda60ae9680e065              # double 0.41215099999999999
	.quad	0x3fff384662bae03b              # double 1.9512389999999999
	.quad	0x401ce030c23fab11              # double 7.2189360000000002
	.quad	0x4003b7f737da61e1              # double 2.4648270000000001
	.quad	0x40002ee0f3cb3e57              # double 2.0228899999999999
	.quad	0x4017d6af46aa087d              # double 5.9596530000000003
	.quad	0x4001722d948dc11e              # double 2.1807509999999999
	.quad	0x4022fd002e2328fa              # double 9.4941420000000001
	.quad	0x400035f138bcdff0              # double 2.0263390000000001
	.quad	0x40082088d6d3b6cc              # double 3.0158860000000001
	.quad	0x4022ba400fba8827              # double 9.3637700000000005
	.quad	0x401075c4eb56fb8f              # double 4.1150089999999997
	.quad	0x401fc876188b1141              # double 7.9457630000000003
	.quad	0x3ff412135daad602              # double 1.254413
	.quad	0x4020c1bef49cf56f              # double 8.3784100000000006
	.quad	0x40203703d145d851              # double 8.1074509999999993
	.quad	0x4022cf340d4dc65c              # double 9.4046939999999992
	.quad	0x401bf2e557de0d67              # double 6.9872030000000001
	.quad	0x401a2d35eb7457c1              # double 6.5441510000000003
	.quad	0x4021decedd484513              # double 8.9351719999999997
	.quad	0x402271d7ba6698bb              # double 9.2223489999999995
	.quad	0x401e12b40f66a551              # double 7.5182650000000004
	.quad	0x4020c5794a6eb91b              # double 8.3856909999999996
	.quad	0x40195d7774aba387              # double 6.3412759999999997
	.quad	0x3fe1603d57796399              # double 0.54299799999999998
	.quad	0x40164d4280ae1049              # double 5.5754489999999999
	.quad	0x3ff73f9830e3cd9a              # double 1.4530259999999999
	.quad	0x3fe6d96e9bbf0dc7              # double 0.71404199999999995
	.quad	0x3ffdc817fc7607c4              # double 1.861351
	.quad	0x401c170da5daf07c              # double 7.022513
	.quad	0x4019e4bcad9ad85e              # double 6.473376
	.quad	0x4003169c23b7952d              # double 2.3860399999999999
	.quad	0x40058f69ca9ef523              # double 2.6950259999999999
	.quad	0x401db5b20b8066c3              # double 7.4274370000000003
	.quad	0x4001008205ff1d82              # double 2.125248
	.quad	0x401b5fd113836a83              # double 6.8435709999999998
	.quad	0x401ee3baba7b9171              # double 7.7223920000000001
	.quad	0x3fe8265f0f5a1017              # double 0.75468400000000002
	.quad	0x4023f936e71cda2b              # double 9.9867469999999993
	.quad	0x3ff3c96cc5fbf834              # double 1.2366760000000001
	.quad	0x400d9b8348f53c58              # double 3.7009340000000002
	.quad	0x40108ca07f66e86c              # double 4.1373309999999996
	.quad	0x4015eadcd2d44dcb              # double 5.4793580000000004
	.quad	0x40223e38433d6c72              # double 9.1215229999999998
	.quad	0x4023a71dc50ce4eb              # double 9.8263990000000003
	.quad	0x4003b80a9de8b3b3              # double 2.4648639999999999
	.quad	0x401b18ba40d90e24              # double 6.7741480000000003
	.quad	0x3ff1db8348f53c58              # double 1.1160920000000001
	.quad	0x4016462a1b5c7cd9              # double 5.5685200000000004
	.quad	0x401d005c4651f3e9              # double 7.2503520000000004
	.quad	0x40138dff822bbecb              # double 4.8886700000000003
	.quad	0x4008f7d41743e964              # double 3.1210100000000001
	.quad	0x3ff0ef7f498c3b0c              # double 1.0584709999999999
	.quad	0x400b189e774eebf6              # double 3.3870209999999998
	.quad	0x401d47b6bb129025              # double 7.3200329999999996
	.quad	0x3fa00f98fa376923              # double 0.031369000000000001
	.quad	0x400f0cf28c79f666              # double 3.8813219999999999
	.quad	0x3ffeb3bd9cae2110              # double 1.918882
	.quad	0x3fde93964a59c066              # double 0.47775800000000002
	.quad	0x401cff7c243dccea              # double 7.2494969999999999
	.quad	0x3fe800a393ee5eee              # double 0.75007800000000002
	.quad	0x401c40c0ad03d9a9              # double 7.0632349999999997
	.quad	0x3fc82480e8c8abd6              # double 0.188614
	.quad	0x4022c7243137b070              # double 9.3889479999999992
	.quad	0x4023b38e29f9ce8e              # double 9.8506940000000007
	.quad	0x4021e89b0ee49f51              # double 8.9543079999999993
	.quad	0x4022680e6afcce1c              # double 9.2032349999999993
	.quad	0x400c4c5004fb1184              # double 3.5372620000000001
	.quad	0x400567ddca4b124d              # double 2.675716
	.quad	0x4015469014b599aa              # double 5.3189089999999997
	.quad	0x40031dcad14a0a0f              # double 2.3895469999999999
	.quad	0x40230b1df761cbcd              # double 9.521713
	.quad	0x4023d2148ba83f4f              # double 9.9103130000000003
	.quad	0x401189cf13cee9dd              # double 4.3845789999999996
	.quad	0x4007a115592d98bf              # double 2.9536539999999998
	.quad	0x4015ec0b5675579b              # double 5.4805120000000001
	.quad	0x4013ca86940357a3              # double 4.9477789999999997
	.quad	0x3fa4e379b77c02b0              # double 0.040798000000000001
	.quad	0x4013b05814940bbb              # double 4.9222109999999999
	.quad	0x4023477ccc037931              # double 9.6396239999999995
	.quad	0x401a4729b280f12c              # double 6.5694949999999999
	.quad	0x400f75c5b4aa9718              # double 3.9325060000000001
	.quad	0x4016cd47bedb7282              # double 5.700469
	.quad	0x402184792d1287c2              # double 8.758737
	.quad	0x40126bb1af3a14cf              # double 4.6051700000000002
	.quad	0x4020e7318fc50481              # double 8.4515499999999992
	.quad	0x401448882f0e0a85              # double 5.0708320000000002
	.quad	0x40144148344c37e7              # double 5.063752
	.quad	0x40149e45803cd142              # double 5.1545620000000003
	.quad	0x401c81971c10d7bf              # double 7.1265530000000004
	.quad	0x4014950331e3a7db              # double 5.1455200000000003
	.quad	0x400a49f4906034f4              # double 3.286111
	.quad	0x4011f0e4da09cc32              # double 4.4852480000000003
	.quad	0x3feb5742dcf4623d              # double 0.85440199999999999
	.quad	0x401073bf727136a4              # double 4.113035
	.quad	0x4006e5907d912557              # double 2.8620920000000001
	.quad	0x40178ae5796bfca8              # double 5.8856409999999997
	.quad	0x401273a81dc0db27              # double 4.612946
	.quad	0x401e22413db7f173              # double 7.5334519999999995
	.quad	0x400ea845132f87ad              # double 3.832163
	.quad	0x401b97c45cbbc2b9              # double 6.8982099999999997
	.quad	0x401090e6f2e8c048              # double 4.1415059999999997
	.quad	0x401148eda22f6a51              # double 4.3212190000000001
	.quad	0x3feaa8d8665e02eb              # double 0.83311100000000005
	.quad	0x4017e3c60029f16b              # double 5.9724349999999999
	.quad	0x401a5ddc6195464e              # double 6.5916610000000002
	.quad	0x401a2687b139c94f              # double 6.5376269999999996
	.quad	0x402268e53eb399f6              # double 9.2048740000000002
	.quad	0x4016c4e48626f60e              # double 5.6922779999999999
	.quad	0x4014632db1e9f278              # double 5.0968540000000004
	.quad	0x400aab955f78359c              # double 3.3337810000000001
	.quad	0x3fee08333fc86cec              # double 0.93850100000000002
	.quad	0x40193f45e0b4e11e              # double 6.3117900000000002
	.quad	0x4018cb22d0e56042              # double 6.1983750000000004
	.quad	0x3ff1e273929ed395              # double 1.1177859999999999
	.quad	0x40190342edbb59de              # double 6.2531850000000002
	.quad	0x3fbcaea747d805e6              # double 0.11204
	.quad	0x3ff9ad2ed783dff4              # double 1.604781
	.quad	0x4004d58f2e05ccc9              # double 2.6042770000000002
	.quad	0x4000868b9fdbd2fa              # double 2.065696
	.quad	0x3fe0e9ee45c358b0              # double 0.52855600000000003
	.quad	0x40202689a88ace25              # double 8.0752690000000005
	.quad	0x3fb375536933a040              # double 0.076008999999999993
	.quad	0x40119cbbc2b94d94              # double 4.40306
	.quad	0x40050a2014727dcc              # double 2.6299440000000001
	.quad	0x400ed7c3d68405b4              # double 3.8553540000000002
	.quad	0x401ff5e9e1b089a0              # double 7.9901499999999999
	.quad	0x402335f88fc9363f              # double 9.6054119999999993
	.quad	0x4004a072d1aeb3dd              # double 2.578344
	.quad	0x402194ae21101b00              # double 8.7903909999999996
	.quad	0x4010b40789613d32              # double 4.1758100000000002
	.quad	0x401d736e2eb1c433              # double 7.3627250000000002
	.quad	0x401deefe4ffc9796              # double 7.4833920000000003
	.quad	0x4021e93293d102bc              # double 8.9554639999999992
	.quad	0x4015a22c01e68a0d              # double 5.4083709999999998
	.quad	0x4014c84f8f8a4c1f              # double 5.1956160000000002
	.quad	0x3fd5a7b9170d62bf              # double 0.338362
	.quad	0x4006866f5019f3c7              # double 2.815642
	.quad	0x40204fc5ef62f9ca              # double 8.1558069999999994
	.quad	0x4014d3ec892ab68d              # double 5.2069570000000001
	.quad	0x4000fb8d3f1843c4              # double 2.1228280000000002
	.quad	0x4006e00192a73711              # double 2.859378
	.quad	0x400ad1dffc5479d5              # double 3.3524780000000001
	.quad	0x4014b62888b545c8              # double 5.1778890000000004
	.quad	0x401b631337eb28d8              # double 6.8467529999999996
	.quad	0x4022fabbcb1cc964              # double 9.4897139999999993
	.quad	0x40151c504816f007              # double 5.2776500000000004
	.quad	0x4008ca38327674d1              # double 3.0987399999999998
	.quad	0x401ad1183b60285f              # double 6.7041940000000002
	.quad	0x4000dc5a3e39f773              # double 2.1075940000000002
	.quad	0x401a170e6f2e8c05              # double 6.5225160000000004
	.quad	0x4014ef49cf56eac8              # double 5.2336799999999997
	.quad	0x4021d148fd9fd36f              # double 8.9087599999999991
	.quad	0x3ff11cbee807bbb6              # double 1.069518
	.quad	0x40113b018611fd59              # double 4.3076230000000004
	.quad	0x4023a4dd50a88f00              # double 9.8220010000000002
	.quad	0x401f53bd9cae2110              # double 7.8317779999999999
	.quad	0x3fec66c6de76427c              # double 0.88754599999999994
	.quad	0x3ffdd58c8eef1bac              # double 1.864636
	.quad	0x401030b6f9fcb0c0              # double 4.0475729999999999
	.quad	0x40207466f5019f3c              # double 8.2273479999999992
	.quad	0x400855b5fa22706d              # double 3.0418509999999999
	.quad	0x40220f71c970f7ba              # double 9.0301650000000002
	.quad	0x40216fd933e35c5b              # double 8.7184539999999995
	.quad	0x3ff7047b24638c97              # double 1.4385939999999999
	.quad	0x400920a5accd5305              # double 3.1409410000000002
	.quad	0x401d0591cd1c7de5              # double 7.255439
	.quad	0x3fe197bd8be7296f              # double 0.54977299999999996
	.quad	0x401fb32df505d0fa              # double 7.9249799999999997
	.quad	0x3ff948626f60e0eb              # double 1.5801719999999999
	.quad	0x3ff2690abb44e50c              # double 1.1506449999999999
	.quad	0x3ff25d0a67620ee9              # double 1.147715
	.quad	0x401470c5a8155d5f              # double 5.1101289999999997
	.quad	0x3fed74f0d844d014              # double 0.92052500000000003
	.quad	0x400b037e6f71a7e3              # double 3.376706
	.quad	0x4016fe004b7f5a53              # double 5.7480479999999998
	.quad	0x3ff0700ef1348b22              # double 1.027358
	.quad	0x401b425c3dee7818              # double 6.8148049999999998
	.quad	0x3ffcd25460aa64c3              # double 1.80135
	.quad	0x3ffeae5abc0e38a8              # double 1.917567
	.quad	0x401dd377e1b8ed1c              # double 7.456512
	.quad	0x4013c8fc504816f0              # double 4.946275
	.quad	0x4020f209edbf8b9c              # double 8.4727320000000005
	.quad	0x401d7577d955714c              # double 7.3647150000000003
	.quad	0x400a084cf0739b02              # double 3.2540529999999999
	.quad	0x4007355f78359bc3              # double 2.9010609999999999
	.quad	0x401153edd8b60f1b              # double 4.3319619999999999
	.quad	0x4011250b524399b3              # double 4.2861760000000002
	.quad	0x401e6044284dfce3              # double 7.5940099999999999
	.quad	0x401c86ac215b9a5b              # double 7.1315160000000004
	.quad	0x4007681dc0db2703              # double 2.9258380000000002
	.quad	0x40171f5515054ac3              # double 5.7805980000000003
	.quad	0x3ffac800eae18aca              # double 1.673829
	.quad	0x40170c2699c7bcc3              # double 5.7618660000000004
	.quad	0x4009edc443914f48              # double 3.2410969999999999
	.quad	0x401e8f190d173fb8              # double 7.6397440000000003
	.quad	0x400090e347629521              # double 2.0707460000000002
	.quad	0x401df36262cba733              # double 7.4876800000000001
	.quad	0x4023aba2df9378ee              # double 9.8352269999999997
	.quad	0x401b913ec460ed81              # double 6.8918410000000003
	.quad	0x4007f66b6177ea1c              # double 2.9953219999999998
	.quad	0x3ff0d31db445ed4a              # double 1.051542
	.quad	0x4020b4898f605ab4              # double 8.3526120000000005
	.quad	0x401bf40fa9c12f0a              # double 6.9883410000000001
	.quad	0x400d35f2452c59fb              # double 3.6513409999999999
	.quad	0x401056db940fecdd              # double 4.084822
	.quad	0x401c95564b662fe0              # double 7.1458370000000002
	.quad	0x400fb7082491afc0              # double 3.9643709999999999
	.quad	0x4016c1897a67a52b              # double 5.6890010000000002
	.quad	0x401d66e8f29d40ee              # double 7.350498
	.quad	0x4012df86a098915c              # double 4.7182870000000001
	.quad	0x402031b003686a4d              # double 8.0970460000000006
	.quad	0x4013b5579af1886e              # double 4.927092
	.quad	0x40215dc1615ebfa9              # double 8.6831160000000001
	.quad	0x40172c864883fd50              # double 5.7934809999999999
	.quad	0x4023f4c5da6a4441              # double 9.9780719999999991
	.quad	0x402165c33721d53d              # double 8.6987550000000002
	.quad	0x400f0d07852f7f4a              # double 3.8813620000000002
	.quad	0x401014c942d490e6              # double 4.0202989999999996
	.quad	0x4021d4d338f79852              # double 8.9156739999999992
	.quad	0x401df8d5842b734b              # double 7.4930019999999997
	.quad	0x4007296787ce95fb              # double 2.8952170000000002
	.quad	0x400fdc286f8ad256              # double 3.9824989999999998
	.quad	0x402106f6d7625205              # double 8.5136020000000006
	.quad	0x401313ec892ab68d              # double 4.7694570000000001
	.quad	0x4019dd9f0a1be2b5              # double 6.4664270000000004
	.quad	0x3fe8fdb09a671ef3              # double 0.780968
	.quad	0x40213c02afdda8bd              # double 8.6172079999999998
	.quad	0x40212779e9d0e992              # double 8.577102
	.quad	0x401d0c0c62e4d1a6              # double 7.2617659999999997
	.quad	0x400a51e96c3fc43b              # double 3.2899959999999999
	.quad	0x4022787ca643cc08              # double 9.2353260000000005
	.quad	0x401cf10129cbab65              # double 7.2353560000000003
	.quad	0x401167225b749add              # double 4.3507170000000004
	.quad	0x4002300a393ee5ef              # double 2.2734570000000001
	.quad	0x401fd72799a1fd15              # double 7.9601119999999996
	.quad	0x401f99014b599aa6              # double 7.899419
	.quad	0x401a6da33bd9cae2              # double 6.6070679999999999
	.quad	0x402252ea52ef911d              # double 9.1619440000000001
	.quad	0x3fecf09741d084e8              # double 0.90436899999999998
	.quad	0x4019564d3bf2f556              # double 6.3342790000000004
	.quad	0x40184f405f6ba062              # double 6.077394
	.quad	0x40226aa369fcf3dc              # double 9.2082779999999999
	.quad	0x40185a860dcb9a9e              # double 6.0884020000000003
	.quad	0x4002971b8aa00193              # double 2.3237830000000002
	.quad	0x401b055970b49e02              # double 6.7552240000000001
	.quad	0x3ff8957eed45e918              # double 1.5364979999999999
	.quad	0x401989231c64ba95              # double 6.3839230000000002
	.quad	0x4001538f7985271c              # double 2.1658010000000001
	.quad	0x401d10f66a550870              # double 7.2665649999999999
	.quad	0x4008ac15d2d01c0d              # double 3.0840260000000002
	.quad	0x40222f87f023e9ea              # double 9.0928339999999999
	.quad	0x4023ca4031487768              # double 9.8950209999999998
	.quad	0x4023060bf5d78812              # double 9.5118100000000005
	.quad	0x4012937824d4cb9f              # double 4.6440130000000002
	.quad	0x401fb8fd9fd36f7e              # double 7.9306549999999998
	.quad	0x40215a9888f861a6              # double 8.6769449999999999
	.quad	0x4007047fdc5931ca              # double 2.8771969999999998
	.quad	0x3fe1c6801711947d              # double 0.555481
	.quad	0x401e94c3c18b502b              # double 7.6452780000000002
	.quad	0x400c4ae3a3a8e714              # double 3.5365669999999998
	.quad	0x401737caea747d80              # double 5.8044849999999997
	.quad	0x400b2070b8cfbfc6              # double 3.3908399999999999
	.quad	0x40237439de481f54              # double 9.7270040000000008
	.quad	0x40226179bfdf7e80              # double 9.1903819999999996
	.quad	0x4023fd2263d816ad              # double 9.9944030000000001
	.quad	0x4013e68db8bac711              # double 4.9751500000000002
	.quad	0x400f0b2c83ec892b              # double 3.8804560000000001
	.quad	0x4022c2ed56b00ffe              # double 9.3807170000000006
	.quad	0x400efb9e060fe47a              # double 3.8728600000000002
	.quad	0x3ffef62f9ca5bd94              # double 1.9351039999999999
	.quad	0x401f342cc2d6a9c5              # double 7.8009519999999996
	.quad	0x401d5d21ff2e48e9              # double 7.3409500000000003
	.quad	0x4019f490e66cb103              # double 6.4888339999999998
	.quad	0x40167f19934efcbd              # double 5.6241209999999997
	.quad	0x400d00bed740c415              # double 3.6253639999999998
	.quad	0x401779ecf6380022              # double 5.8690680000000004
	.quad	0x3ff417dbf487fcb9              # double 1.255825
	.quad	0x402121df761cbccf              # double 8.5661579999999997
	.quad	0x400cd0cbaf965b21              # double 3.6019510000000001
	.quad	0x401d775afaf85943              # double 7.3665580000000004
	.quad	0x4022d55de58e64b2              # double 9.4167319999999997
	.quad	0x40225c7fdc5931ca              # double 9.1806629999999991
	.quad	0x3ff3d45308bb9064              # double 1.2393369999999999
	.quad	0x4022fc4c5974e65c              # double 9.4927700000000001
	.quad	0x3fe9c5154866a11f              # double 0.80530800000000002
	.quad	0x4000b16ca46e08f2              # double 2.086633
	.quad	0x4013dc985f06f694              # double 4.9654249999999998
	.quad	0x401b42788db0574b              # double 6.8149129999999998
	.quad	0x3feabe2d6238da3c              # double 0.83571499999999998
	.quad	0x4023a7d5a9eb2075              # double 9.8278020000000001
	.quad	0x401f90abf76a2f49              # double 7.8912810000000002
	.quad	0x400a290b417ca212              # double 3.270041
	.quad	0x402017af20ea5b53              # double 8.0462579999999999
	.quad	0x401021d3aa369fcf              # double 4.0330339999999998
	.quad	0x4021cad14a0a0f4d              # double 8.8961279999999991
	.quad	0x4023903fd5022574              # double 9.7817369999999996
	.quad	0x401f30fd3b29a1ba              # double 7.797841
	.quad	0x4019c749f0e4da0a              # double 6.4446180000000002
	.quad	0x40200da0dfdef848              # double 8.0266179999999991
	.quad	0x401f49ae0c176577              # double 7.8219529999999997
	.quad	0x4021f6b2d0a24463              # double 8.981833
	.quad	0x4010ffae7924af0c              # double 4.249689
	.quad	0x4004c358afc47e4a              # double 2.5953840000000001
	.quad	0x4012b440af1cb89d              # double 4.6760279999999996
	.quad	0x40209c0a6b93ccd1              # double 8.304767
	.quad	0x3ffd43e3193f6c27              # double 1.8290740000000001
	.quad	0x4011c3a68b19a416              # double 4.441065
	.quad	0x4006f48a159817b9              # double 2.8694039999999998
	.quad	0x3ffe8b5675579af2              # double 1.9090180000000001
	.quad	0x401d6a569b17481b              # double 7.3538459999999999
	.quad	0x3ff69b25f633ce64              # double 1.4128780000000001
	.quad	0x4022464c0df58c09              # double 9.1372990000000005
	.quad	0x3ff41131ec0b5675              # double 1.2541979999999999
	.quad	0x3fd32e1262025397              # double 0.29968699999999998
	.quad	0x40204a9bcfd4bf0a              # double 8.1457200000000007
	.quad	0x3fcddc1e7967caea              # double 0.23327999999999999
	.quad	0x400cad7b634dad32              # double 3.584708
	.quad	0x4012a51efb6dca08              # double 4.661251
	.quad	0x4023595bbbe878fb              # double 9.6745280000000004
	.quad	0x401950ffda4052d6              # double 6.3291009999999996
	.quad	0x40201bf141205bc0              # double 8.0545749999999998
	.quad	0x400f8513b5bf6a0e              # double 3.9399790000000001
	.quad	0x3ffe5f761cbccf29              # double 1.898306
	.quad	0x402164bad7d7c2ca              # double 8.6967379999999999
	.quad	0x4022f836a832b991              # double 9.4847920000000005
	.quad	0x401fe3b3636f3b21              # double 7.9723639999999997
	.quad	0x3fedf73c0c1fc8f3              # double 0.93642999999999998
	.quad	0x4022353c9abb01c9              # double 9.1039779999999997
	.quad	0x40215e8dfbd6a594              # double 8.6846770000000006
	.quad	0x401ce436fc158fb4              # double 7.2228659999999998
	.quad	0x401e7e5109070fbf              # double 7.6233560000000002
	.quad	0x401c184c271fff7a              # double 7.0237280000000002
	.quad	0x3fd143d03968d75a              # double 0.269764
	.quad	0x4020664606748e47              # double 8.1997529999999994
	.quad	0x401fa2e5de15ca6d              # double 7.9090800000000003
	.quad	0x3fbba311e85fd04a              # double 0.107957
	.quad	0x4001f48ba83f4eca              # double 2.2444069999999998
	.quad	0x40058b3354c12275              # double 2.6929690000000002
	.quad	0x400697bc7f77af64              # double 2.82409
	.quad	0x4008f73f316e3715              # double 3.1207259999999999
	.quad	0x400ad8ce2d1f1cfc              # double 3.3558620000000001
	.quad	0x400b4528283d35eb              # double 3.4087679999999998
	.quad	0x40210c92146a1a50              # double 8.5245519999999999
	.quad	0x3ff184827b6fe2e7              # double 1.094851
	.quad	0x4014b1adea897636              # double 5.1735150000000001
	.quad	0x400e986b15f88fc9              # double 3.8244229999999999
	.quad	0x40216fa67a52ac75              # double 8.7180669999999996
	.quad	0x3fe9f995ee136e72              # double 0.81171700000000002
	.quad	0x401a280346dc5d64              # double 6.5390750000000004
	.quad	0x40035f202107b784              # double 2.4214479999999998
	.quad	0x3fcf53586ca89fc7              # double 0.244731
	.quad	0x40022f2a5a469d73              # double 2.2730299999999999
	.quad	0x40223b1fcd24e161              # double 9.1154770000000003
	.quad	0x3fe18c9fb6134ce4              # double 0.54841600000000001
	.quad	0x4010db862b27cbf7              # double 4.2143790000000001
	.quad	0x3ff764f765fd8adb              # double 1.4621500000000001
	.quad	0x3fdc758e219652bd              # double 0.44467499999999999
	.quad	0x3ffd30f16f4384ba              # double 1.824449
	.quad	0x40207785510d38ce              # double 8.2334390000000006
	.quad	0x4019e9d5a187a4a5              # double 6.4783540000000004
	.quad	0x402061361dc93ea3              # double 8.1898660000000003
	.quad	0x4021397f62b6ae7d              # double 8.6122999999999994
	.quad	0x4013ebca1059ea57              # double 4.9802629999999999
	.quad	0x401186e264e48627              # double 4.381723
	.quad	0x3fd2ed84d338f798              # double 0.29574699999999998
	.quad	0x3ff2c8dd1e53a81e              # double 1.1740390000000001
	.quad	0x402244b10342aa9f              # double 9.1341629999999991
	.quad	0x400eb25892684cf0              # double 3.8370829999999998
	.quad	0x40177c54bcf0b6b7              # double 5.8714170000000001
	.quad	0x40002584f4c6e6da              # double 2.0183200000000001
	.quad	0x3ff13b8b26394fad              # double 1.077037
	.quad	0x401f561e0c5a8156              # double 7.8340990000000001
	.quad	0x4016eed740c4156e              # double 5.7332429999999999
	.quad	0x4013ef77af64063a              # double 4.9838550000000001
	.quad	0x401444a6a875d56f              # double 5.0670419999999998
	.quad	0x401631b21c475e63              # double 5.5485309999999997
	.quad	0x4004ab4528283d36              # double 2.583628
	.quad	0x401c9f5cf2495e18              # double 7.1556280000000001
	.quad	0x402396a7ce0fc2ec              # double 9.7942490000000006
	.quad	0x400d0ba5a038194c              # double 3.630687
	.quad	0x400d3df1172ef0ae              # double 3.6552449999999999
	.quad	0x40184a5b0ff10ecb              # double 6.0726129999999996
	.quad	0x3ff8715831f03d14              # double 1.5276719999999999
	.quad	0x3fc43d816aceaaf3              # double 0.15812699999999999
	.quad	0x3ffb17e996312f4d              # double 1.693338
	.quad	0x401eae29b6b2af14              # double 7.6700809999999997
	.quad	0x40138d71b0468449              # double 4.8881290000000002
	.quad	0x4017b5ad538ac190              # double 5.9274190000000004
	.quad	0x4011bf3493858362              # double 4.4367239999999999
	.quad	0x3fc612a51e321a2e              # double 0.17244399999999999
	.quad	0x40108e9707182236              # double 4.1392480000000003
	.quad	0x400e00c0f01fb82c              # double 3.7503679999999999
	.quad	0x40003aeb3dd11be7              # double 2.028769
	.quad	0x400bdd145d851655              # double 3.4829490000000001
	.quad	0x402391dc0db2702a              # double 9.7848819999999996
	.quad	0x402005cb35f3d7d4              # double 8.0113160000000007
	.quad	0x401a2d35eb7457c1              # double 6.5441510000000003
	.quad	0x401bde1b089a0275              # double 6.9668999999999999
	.quad	0x40005be09bb6aa4c              # double 2.0448620000000002
	.quad	0x4022aa0620ab7132              # double 9.3320779999999992
	.quad	0x3fff1fdbd2fa0d78              # double 1.9452780000000001
	.quad	0x400e9d74d594f26b              # double 3.826883
	.quad	0x3fed23443d46b26c              # double 0.910555
	.quad	0x402345d8d79d0a67              # double 9.6364199999999993
	.quad	0x3fd1d5c74751ce29              # double 0.278673
	.quad	0x3ff33dac68a936c6              # double 1.2025570000000001
	.quad	0x401bf750c1b97354              # double 6.9915190000000003
	.quad	0x3fd2b5568e820e63              # double 0.29231800000000002
	.quad	0x3ff5b10ecb74ddf8              # double 1.3557269999999999
	.quad	0x40132bddb9841aac              # double 4.7928379999999997
	.quad	0x40189143393ab431              # double 6.141858
	.quad	0x401c3f0307f23cc9              # double 7.0615350000000001
	.quad	0x401f8d388a8b08dd              # double 7.8879109999999998
	.quad	0x401b2500d5e8d541              # double 6.7861359999999999
	.quad	0x402192c647778dd6              # double 8.7866689999999998
	.quad	0x400b39c9d5a187a5              # double 3.4032170000000002
	.quad	0x4020a9c087442c80              # double 8.3315470000000005
	.quad	0x4000ed423d9231c6              # double 2.1158489999999999
	.quad	0x3fed51a437824d4d              # double 0.91621600000000003
	.quad	0x400a1e1b8ed1bf7b              # double 3.2647010000000001
	.quad	0x401004c4cdfaca36              # double 4.0046569999999999
	.quad	0x40176576cce5f740              # double 5.8490859999999998
	.quad	0x3feae66a98244e94              # double 0.84062700000000001
	.quad	0x4011154d1e96c3fc              # double 4.2708019999999998
	.quad	0x3fb933c1ce6c093e              # double 0.098446000000000005
	.quad	0x4017507357e670e3              # double 5.8285650000000002
	.quad	0x3fccdfd694ccab3f              # double 0.225581
	.quad	0x40217ae5796bfca8              # double 8.7400319999999994
	.quad	0x40034cf312b1b36c              # double 2.4125730000000001
	.quad	0x3ff288f42fe82518              # double 1.158436
	.quad	0x4020bf40e5a35d68              # double 8.3735420000000005
	.quad	0x401caf505d0fa58f              # double 7.1712049999999996
	.quad	0x401f1f748a159818              # double 7.7807180000000002
	.quad	0x40195320535c9e67              # double 6.3311780000000004
	.quad	0x401815464dc22ab2              # double 6.0207759999999997
	.quad	0x3fe79a30984e3fff              # double 0.73757200000000001
	.quad	0x401402e40852b4d9              # double 5.0028230000000002
	.quad	0x4014b10b1feeb2d1              # double 5.1728940000000003
	.quad	0x40236eb2d0a24463              # double 9.7162079999999999
	.quad	0x4013e4b72c5197a2              # double 4.9733549999999997
	.quad	0x401c16a055757d5b              # double 7.0220960000000003
	.quad	0x4018d80346dc5d64              # double 6.2109500000000004
	.quad	0x401b0e5753a3ec03              # double 6.764005
	.quad	0x4021c695d91ab8e9              # double 8.8878620000000002
	.quad	0x4022d4cff21b3aef              # double 9.4156490000000001
	.quad	0x402090902de00d1b              # double 8.2823499999999992
	.quad	0x401c1f6c69b5a640              # double 7.0306870000000004
	.quad	0x40142bb5e0f7fcfc              # double 5.0426859999999998
	.quad	0x4019843a647fdc59              # double 6.3791289999999998
	.quad	0x40038bfca85caafc              # double 2.4433530000000001
	.quad	0x401cff32bdc26dce              # double 7.2492169999999998
	.quad	0x401748f041461b6d              # double 5.8212289999999998
	.quad	0x3f93d1cc100e6afd              # double 0.019355000000000001
	.quad	0x3ff8b607c4199fe4              # double 1.544441
	.quad	0x4008d8e53eb399f6              # double 3.1059060000000001
	.quad	0x3fffe512a94ff002              # double 1.9934259999999999
	.quad	0x401748bb0a2ca9ac              # double 5.8210259999999998
	.quad	0x3ffcaecf20642396              # double 1.792678
	.quad	0x400dcd45e9185cee              # double 3.725231
	.quad	0x4011410a569b1748              # double 4.3135159999999999
	.quad	0x4019efbacb428912              # double 6.4841110000000004
	.quad	0x3ff7d1f81a5870da              # double 1.4887619999999999
	.quad	0x3fd43009b30728e9              # double 0.31543199999999999
	.quad	0x4006f8a979e16d6e              # double 2.8714170000000001
	.quad	0x3ffc8a72ead9274e              # double 1.783801
	.quad	0x3ff0a05bc01a36e3              # double 1.03915
	.quad	0x3fc322749f0e4da1              # double 0.14948900000000001
	.quad	0x4018ccb641700cd8              # double 6.1999139999999997
	.quad	0x40187610f0e90bc8              # double 6.1152990000000003
	.quad	0x400fe0ef99806f26              # double 3.9848319999999999
	.quad	0x3ff6d73b85e80bed              # double 1.4275469999999999
	.quad	0x40236e215336deb9              # double 9.7150979999999993
	.quad	0x401ba9aa60913a50              # double 6.9156890000000004
	.quad	0x3ffa44bb1af3a14d              # double 1.64178
	.quad	0x3ffc9d1a21ea3593              # double 1.7883549999999999
	.quad	0x400b9c981beb1811              # double 3.4514619999999998
	.quad	0x3fe913660e51d25b              # double 0.78361800000000004
	.quad	0x3fc4a569b17481b2              # double 0.161298
	.quad	0x400be240b780346e              # double 3.4854750000000001
	.quad	0x40206c55219a847b              # double 8.2115869999999997
	.quad	0x400e73bafd976ff4              # double 3.8065090000000001
	.quad	0x4022e7e542e557de              # double 9.4529209999999999
	.quad	0x40195b0574b40703              # double 6.3388879999999999
	.quad	0x4017c891e215336e              # double 5.9458690000000001
	.quad	0x4013e027d88c1db0              # double 4.9689019999999999
	.quad	0x4017b9acbc8c0ce9              # double 5.9313229999999999
	.quad	0x4018d4c122749f0e              # double 6.2077679999999997
	.quad	0x40229a62456f75da              # double 9.3015310000000007
	.quad	0x400640e065300581              # double 2.7816779999999999
	.quad	0x401fbb749adc8fb8              # double 7.9330619999999996
	.quad	0x401746440f238972              # double 5.818619
	.quad	0x40122b9ae0c17657              # double 4.5425829999999996
	.quad	0x3fbf6fb09203a323              # double 0.122798
	.quad	0x3feb13d96638433d              # double 0.84617299999999995
	.quad	0x40156e9af5ba2be0              # double 5.3580129999999997
	.quad	0x400f503f2d3c792d              # double 3.914183
	.quad	0x40105ebaade657b8              # double 4.0925089999999997
	.quad	0x3fe210129cbab64a              # double 0.56446200000000002
	.quad	0x3ffc4fa15db3397e              # double 1.769441
	.quad	0x3ffa3ab96f21f6cb              # double 1.639337
	.quad	0x40021de9c0229a5f              # double 2.2646060000000001
	.quad	0x4012d4f2ae07e5a8              # double 4.7079570000000004
	.quad	0x40224bb4f6167232              # double 9.1478649999999995
	.quad	0x40079f81a5870da6              # double 2.9528840000000001
	.quad	0x400f2eddce7cd035              # double 3.8978839999999999
	.quad	0x402147182235b4ee              # double 8.6388560000000005
	.quad	0x401dca843808850a              # double 7.4477700000000002
	.quad	0x3ff0063cfb3311a5              # double 1.0015229999999999
	.quad	0x401c473b85e80bed              # double 7.0695629999999996
	.quad	0x401b23be6601bc99              # double 6.7849060000000003
	.quad	0x40219ee1bd1ed9e0              # double 8.8103160000000003
	.quad	0x40160427418d690a              # double 5.5040560000000003
	.quad	0x401939be4cd74928              # double 6.3063900000000004
	.quad	0x401d9b0531982880              # double 7.4013869999999997
	.quad	0x3fe0dfb71fbc5dea              # double 0.52730900000000003
	.quad	0x400b2feac42e989a              # double 3.3983970000000001
	.quad	0x4008311dffc5479d              # double 3.0239829999999999
	.quad	0x40067e3c105186db              # double 2.8116379999999999
	.quad	0x40008079a2834d27              # double 2.062732
	.quad	0x40232fb3b7521145              # double 9.5931680000000003
	.quad	0x400d1fe7e1fc08fa              # double 3.6405789999999998
	.quad	0x401d03fcc9ea9a3d              # double 7.2538939999999998
	.quad	0x402333ba12b5e52a              # double 9.6010290000000005
	.quad	0x3fff47fed20296b3              # double 1.955077
	.quad	0x401258e432441feb              # double 4.5868080000000004
	.quad	0x40100670196d8f50              # double 4.0062870000000004
	.quad	0x40167d5cb790fb65              # double 5.6224239999999996
	.quad	0x401565fd8adab9f5              # double 5.3495999999999997
	.quad	0x3fffcf3eccc46951              # double 1.988097
	.quad	0x40213b67e414e7ef              # double 8.6160270000000008
	.quad	0x402192a8c9b84556              # double 8.7864439999999995
	.quad	0x3fe0d68a50507a6c              # double 0.52618900000000002
	.quad	0x402349a91105e1c1              # double 9.6438679999999994
	.quad	0x4005f097c80841ee              # double 2.7424770000000001
	.quad	0x4003e0f9096bb98c              # double 2.4848499999999998
	.quad	0x40235df0d413122b              # double 9.6834779999999991
	.quad	0x4011790752da9867              # double 4.3681919999999996
	.quad	0x401f4a1c68ec52a4              # double 7.8223739999999999
	.quad	0x4008536deb95e5b0              # double 3.040737
	.quad	0x40223f672b884407              # double 9.1238340000000004
	.quad	0x402092bfb9bed30f              # double 8.286619
	.quad	0x3ff4ccb6c7a7c9de              # double 1.299979
	.quad	0x3fe87e1975f2cb64              # double 0.76539299999999999
	.quad	0x4019e4e8fb00bcbe              # double 6.4735449999999997
	.quad	0x4022034a01abd1ab              # double 9.0064240000000009
	.quad	0x4018c142b302f72b              # double 6.1887309999999998
	.quad	0x3fe352ae8e1d6495              # double 0.60384300000000002
	.quad	0x401ebf023e9ea140              # double 7.6865319999999997
	.quad	0x400659ef954eb13e              # double 2.793914
	.quad	0x401dbd5b24e9c454              # double 7.4349179999999997
	.quad	0x400a5ba8826aa8eb              # double 3.2947549999999999
	.quad	0x401c5e39713ad5bf              # double 7.0920160000000001
	.quad	0x4013338cda6e75ff              # double 4.8003419999999997
	.quad	0x401bdef4e0114d2f              # double 6.9677309999999997
	.quad	0x3ffdf18116ebd4d0              # double 1.871461
	.quad	0x401350a17b0f6ad7              # double 4.8287409999999999
	.quad	0x40227c8bc9cd3e0c              # double 9.2432540000000003
	.quad	0x401374bd33d29564              # double 4.8640030000000003
	.quad	0x40013dba908a265f              # double 2.155141
	.quad	0x3ff15fbe76c8b439              # double 1.0858749999999999
	.quad	0x400bad6c2efd438d              # double 3.4596789999999999
	.quad	0x4023274f93bc0a07              # double 9.5767790000000001
	.quad	0x401ad1fcd24e160e              # double 6.7050660000000004
	.quad	0x40015af4adbc664d              # double 2.1694119999999999
	.quad	0x401732778140dd40              # double 5.7992840000000001
	.quad	0x40124394face67d7              # double 4.5659979999999996
	.quad	0x401e457689ca18bd              # double 7.5678349999999996
	.quad	0x4020cf46455eaee2              # double 8.404833
	.quad	0x3ff5734c5da6a444              # double 1.340649
	.quad	0x3ffddfe111276fb1              # double 1.8671580000000001
	.quad	0x3ff5e3cc8de2ac32              # double 1.368115
	.quad	0x3fe1e72b884406c0              # double 0.55946899999999999
	.quad	0x40140432441fea81              # double 5.0040979999999999
	.quad	0x3ff449491f2dc2b1              # double 1.267892
	.quad	0x401bae90364388ec              # double 6.9204720000000002
	.quad	0x4021a3ca31e7d999              # double 8.8199020000000008
	.quad	0x40230ad6ece13f4b              # double 9.5211710000000007
	.quad	0x4018239b8887229f              # double 6.0347730000000004
	.quad	0x40234b2314013ec4              # double 9.6467519999999993
	.quad	0x401fab9d3cbc48f1              # double 7.9175919999999999
	.quad	0x4023ab910c2c5e2d              # double 9.8350910000000002
	.quad	0x3ffe497204295a6c              # double 1.8929309999999999
	.quad	0x401ad15d701d9f4d              # double 6.7044579999999998
	.quad	0x400bf859c8c9320e              # double 3.4962650000000002
	.quad	0x401ab3ab430f4949              # double 6.6754579999999999
	.quad	0x3ffa3fb58d1526d9              # double 1.6405540000000001
	.quad	0x4019acabc5154867              # double 6.4186240000000003
	.quad	0x400cf1886df82b1f              # double 3.6179359999999998
	.quad	0x3ff7225b749adc90              # double 1.4458880000000001
	.quad	0x4006fac2df0d4131              # double 2.8724419999999999
	.quad	0x40101a66559f6ec6              # double 4.0257810000000003
	.quad	0x4013b9c6f36ef805              # double 4.9314229999999997
	.quad	0x400c6cca2db61bb0              # double 3.5531199999999998
	.quad	0x400476d86ec17ebb              # double 2.55803
	.quad	0x402215ea033e78e2              # double 9.0428010000000008
	.quad	0x40237ab4d8ba40d9              # double 9.7396609999999999
	.quad	0x4002b6cacd184c27              # double 2.3392539999999999
	.quad	0x3fe457de0d66f0d0              # double 0.63572600000000001
	.quad	0x3ff6b2d905c03361              # double 1.4186639999999999
	.quad	0x3ffcc558644523f6              # double 1.7981799999999999
	.quad	0x4016c80e8c8abd5e              # double 5.6953680000000002
	.quad	0x4022c3d577963993              # double 9.3824880000000003
	.quad	0x400559d3cbc48f11              # double 2.6688610000000001
	.quad	0x400866ddf00abf77              # double 3.0502280000000002
	.quad	0x40223b28954a7f80              # double 9.1155439999999999
	.quad	0x401cdee9142b302f              # double 7.2176859999999996
	.quad	0x3fc59d5e4a383276              # double 0.16886499999999999
	.quad	0x3fdd9bbf0dc768e0              # double 0.46263100000000001
	.quad	0x4023da0d130df9be              # double 9.9258810000000004
	.quad	0x40135e09fe86833c              # double 4.8418349999999997
	.quad	0x3ffb28d10f51ac9b              # double 1.697465
	.quad	0x4015e5992428d435              # double 5.4742170000000003
	.quad	0x4017f5efa615a8df              # double 5.9901720000000003
	.quad	0x40089004fb1183b6              # double 3.070322
	.quad	0x400b58c0053e2d62              # double 3.4183349999999999
	.quad	0x401f3c226809d495              # double 7.8087249999999999
	.quad	0x400f8a8a82a5614e              # double 3.942647
	.quad	0x40086194c0160525              # double 3.047647
	.quad	0x402148f3cb3e5754              # double 8.6424850000000006
	.quad	0x3ff71f8f4730403a              # double 1.4452050000000001
	.quad	0x40197fc9bc771434              # double 6.3747930000000004
	.quad	0x401ab355cd91eeaa              # double 6.6751319999999996
	.quad	0x40229201abd1aa82              # double 9.2851689999999998
	.quad	0x4017123422467be5              # double 5.7677769999999997
	.quad	0x40237c2f1ed17c5f              # double 9.742547
	.quad	0x401d81c3265add9c              # double 7.3767209999999999
	.quad	0x3fe7ac79702e6645              # double 0.73980400000000002
	.quad	0x3fef5d13d74d594f              # double 0.98011199999999998
	.quad	0x400675ce9e5e2479              # double 2.8075230000000002
	.quad	0x4012f97d8cf398e9              # double 4.7436429999999996
	.quad	0x3fe7b0d306a2b170              # double 0.74033499999999997
	.quad	0x401620e8858ff759              # double 5.5321369999999996
	.quad	0x4017949667b5f1bf              # double 5.895105
	.quad	0x4002b6c82e019b0b              # double 2.3392490000000001
	.quad	0x40231a73b42cc2d7              # double 9.5516640000000005
	.quad	0x400fd3a0407cc7d2              # double 3.9783330000000001
	.quad	0x4019db9a176ddacf              # double 6.4644550000000001
	.quad	0x3ffbe424a276b7ed              # double 1.7431989999999999
	.quad	0x400883e63e8dda49              # double 3.0644040000000001
	.quad	0x400de4c9c90c4dec              # double 3.736713
	.quad	0x401155ed8d36b4c8              # double 4.333914
	.quad	0x4023e10c0ad03d9b              # double 9.9395450000000007
	.quad	0x3ff88026cc1ca3a5              # double 1.5312870000000001
	.quad	0x40168f5e41d4b6a6              # double 5.6400079999999999
	.quad	0x40221784ec636b09              # double 9.0459359999999993
	.quad	0x40016ec7c957cd46              # double 2.1790919999999998
	.quad	0x3fe7c69d7342edbb              # double 0.74299499999999996
	.quad	0x40181296b3354c12              # double 6.0181529999999999
	.quad	0x401af86f049a9974              # double 6.7426110000000001
	.quad	0x4023a3c5154866a1              # double 9.8198629999999997
	.quad	0x3ff0c1e14bdfd263              # double 1.047334
	.quad	0x4019e0dcfcc5b8dc              # double 6.4695929999999997
	.quad	0x40206b70691ea78b              # double 8.2098420000000001
	.quad	0x4015368a936c58ef              # double 5.3032630000000003
	.quad	0x3ff3e339c0ebedfa              # double 1.2429749999999999
	.quad	0x40141357e670e2c1              # double 5.0188899999999999
	.quad	0x3fe587160956c0d7              # double 0.67274
	.quad	0x401ab00d5e8d5411              # double 6.671926
	.quad	0x40206b074a771c97              # double 8.2090399999999999
	.quad	0x401af396d0917d6b              # double 6.7378799999999996
	.quad	0x40040b6a619da9ca              # double 2.5055740000000002
	.quad	0x40213806d0d4994a              # double 8.6094270000000002
	.quad	0x401fa3992c8c5005              # double 7.909764
	.quad	0x40113675147f1306              # double 4.3031810000000004
	.quad	0x400c625bfad29995              # double 3.5480269999999998
	.quad	0x40219bb9496249a1              # double 8.8041479999999996
	.quad	0x3fefa4d6e47dc37a              # double 0.98887199999999997
	.quad	0x3fe7e73a365cb35f              # double 0.74697599999999997
	.quad	0x401e92fe82517e78              # double 7.6435490000000001
	.quad	0x3fe6151611ba3ca7              # double 0.69007399999999997
	.quad	0x40232b0f062d40ab              # double 9.5840990000000001
	.quad	0x4015f4bcf0b6b6e1              # double 5.4890020000000002
	.quad	0x401a1a2595bbbe88              # double 6.5255340000000004
	.quad	0x4023cde310dbf056              # double 9.9021229999999996
	.quad	0x402279bc33f85511              # double 9.2377640000000003
	.quad	0x3ff753415b1422cd              # double 1.4578260000000001
	.quad	0x401f05fdcdf69878              # double 7.7558509999999998
	.quad	0x40151936c58eeaea              # double 5.2746230000000001
	.quad	0x40192c4c165907d9              # double 6.2932589999999999
	.quad	0x40225b9ae0c17657              # double 9.1789159999999992
	.quad	0x401be74fb549f948              # double 6.9758899999999997
	.quad	0x401a4662fdfc19c1              # double 6.5687369999999996
	.quad	0x4009e5881a1554fc              # double 3.2370760000000001
	.quad	0x4021f44f5d35653d              # double 8.9771680000000007
	.quad	0x4000605ccc89b0ee              # double 2.0470519999999999
	.quad	0x401e2c504816f007              # double 7.5432750000000003
	.quad	0x401fc05a708ede55              # double 7.9378450000000002
	.quad	0x401b3cc0bdcad14a              # double 6.809329
	.quad	0x4015ff9acffa7eb7              # double 5.4996140000000002
	.quad	0x40221037b4a2339c              # double 9.0316749999999998
	.quad	0x401747bf61aa3f03              # double 5.8200659999999997
	.quad	0x401ce6e371540032              # double 7.2254769999999997
	.quad	0x4017cfbb0e5e6794              # double 5.9528619999999997
	.quad	0x3fea6c050bd87b57              # double 0.82568600000000003
	.quad	0x400fcff8ec0f8833              # double 3.9765489999999999
	.quad	0x4022f0c3b0c4588a              # double 9.470243
	.quad	0x3fe27cefaa4766c7              # double 0.57775100000000001
	.quad	0x4010182949a56580              # double 4.0235950000000003
	.quad	0x4004e9a0ad8a1166              # double 2.6140759999999998
	.quad	0x4021c7a11a975afb              # double 8.8899010000000001
	.quad	0x4011362bf11f926c              # double 4.3029019999999996
	.quad	0x40218ad905c03361              # double 8.7711869999999994
	.quad	0x3fef9337eb28d866              # double 0.98672099999999996
	.quad	0x40184f972474538f              # double 6.077725
	.quad	0x4010adb50f40e5a3              # double 4.1696359999999997
	.quad	0x40166fcbd556084a              # double 5.6091759999999997
	.quad	0x3ff38cb1897a67a5              # double 1.221849
	.quad	0x4022b3c85c24c405              # double 9.3511380000000006
	.quad	0x4018b055b8993922              # double 6.1722020000000004
	.quad	0x40233b2441fea811              # double 9.6155109999999996
	.quad	0x40187790fb65668c              # double 6.1167639999999999
	.quad	0x3fe37564302b40f6              # double 0.60807999999999995
	.quad	0x402350dbcec84f90              # double 9.6579270000000008
	.quad	0x4016db73083558a7              # double 5.7143059999999997
	.quad	0x4018de4c51116a8c              # double 6.2170880000000004
	.quad	0x4019e144028e4fb9              # double 6.4699859999999996
	.quad	0x4003f9cf9a06a6e3              # double 2.4969779999999999
	.quad	0x40090a276b7ed41b              # double 3.1299579999999998
	.quad	0x3fee66516db0dd83              # double 0.94999
	.quad	0x4020eac1f42bb667              # double 8.4585109999999997
	.quad	0x402014b70ac3a861              # double 8.0404590000000002
	.quad	0x3fec0329802c0a4a              # double 0.875386
	.quad	0x4021d4df266ba494              # double 8.9157650000000003
	.quad	0x4009e59641f64495              # double 3.2371029999999998
	.quad	0x401edc829cfdd228              # double 7.7153419999999997
	.quad	0x4023ef5104d551d7              # double 9.9674150000000008
	.quad	0x40146661f18c9fb6              # double 5.0999829999999999
	.quad	0x4013454b48d3ae68              # double 4.8176699999999997
	.quad	0x401c9836eb4e9814              # double 7.1486470000000004
	.quad	0x4012ab00bcbe61d0              # double 4.666995
	.quad	0x4013a54477ff151e              # double 4.9113939999999996
	.quad	0x400f575c8d9f9054              # double 3.9176570000000002
	.quad	0x40038d44567125dd              # double 2.443978
	.quad	0x40215a834d26fa40              # double 8.6767830000000004
	.quad	0x40157d1b71758e22              # double 5.3721750000000004
	.quad	0x400c223f24d8fd5d              # double 3.5167220000000001
	.quad	0x4021b3ec02f2f987              # double 8.8514099999999996
	.quad	0x40227d206c8711d8              # double 9.2443880000000007
	.quad	0x4020afe60c38f367              # double 8.3435520000000007
	.quad	0x4017167dbb16c1e3              # double 5.7719639999999997
	.quad	0x40108c52a411c2a0              # double 4.1370339999999999
	.quad	0x40065e492bc2fc69              # double 2.7960379999999998
	.quad	0x401fc8c32a8c9b84              # double 7.9460569999999997
	.quad	0x4016acb6c7a7c9de              # double 5.668666
	.quad	0x40185c9081c2e33f              # double 6.090395
	.quad	0x3fe58d5e8d5410f9              # double 0.67350699999999997
	.quad	0x4019a2dba4d6e47e              # double 6.4090410000000002
	.quad	0x4018eb4cc2507208              # double 6.2297849999999997
	.quad	0x401ee24399b2c40d              # double 7.7209609999999999
	.quad	0x401ac078d92fb19e              # double 6.6879609999999996
	.quad	0x3fea322d0e560419              # double 0.81862500000000005
	.quad	0x4018aafea3df6db9              # double 6.1669869999999998
	.quad	0x3fe73c3e74afd545              # double 0.72610399999999997
	.quad	0x401f09873ffac1d3              # double 7.7593050000000003
	.quad	0x400ddae2541d8e86              # double 3.7318769999999999
	.quad	0x40195682b6284599              # double 6.3344829999999996
	.quad	0x40193d462c343b71              # double 6.3098380000000001
	.quad	0x40203c1bb8c32a8d              # double 8.1173990000000007
	.quad	0x4022729973d9ec70              # double 9.223827
	.quad	0x4018911ec918e326              # double 6.1417190000000002
	.quad	0x40236a47021d10b2              # double 9.707573
	.quad	0x4023ef12a0ec7432              # double 9.966939
	.quad	0x401aa1c432ca57a8              # double 6.6579750000000004
	.quad	0x401b4985271bcdbc              # double 6.8217970000000001
	.quad	0x4018052ef911cf35              # double 6.0050619999999997
	.quad	0x401f37f77af64064              # double 7.8046550000000003
	.quad	0x401ccdb0142f61ed              # double 7.2008669999999997
	.quad	0x40200d5bccaf709b              # double 8.0260909999999992
	.quad	0x3ff5d53ef6b5d463              # double 1.3645620000000001
	.quad	0x4023dc3e5321e604              # double 9.9301630000000002
	.quad	0x4009ee7a311e85fd              # double 3.241444
	.quad	0x40177dacabc51548              # double 5.8727289999999996
	.quad	0x4012c341e14bdfd2              # double 4.6906809999999997
	.quad	0x401dd2d3415b1423              # double 7.4558840000000002
	.quad	0x401c6dcdf6987831              # double 7.1072309999999996
	.quad	0x4022bb0e7ff583a5              # double 9.3653449999999995
	.quad	0x4004115ce9e5e248              # double 2.5084780000000002
	.quad	0x402100576cce5f74              # double 8.5006669999999999
	.quad	0x3fe4be5753a3ec03              # double 0.64823500000000001
	.quad	0x4023925daf07bfe8              # double 9.7858710000000002
	.quad	0x401597d77fae3609              # double 5.3982830000000002
	.quad	0x401e823f24d8fd5d              # double 7.6271940000000002
	.quad	0x3ff6a074ea8da7f4              # double 1.414174
	.quad	0x3fe9dfdcdf698783              # double 0.80857699999999999
	.quad	0x401d0aa326e11559              # double 7.2603879999999998
	.quad	0x402118fb86f47b67              # double 8.5487939999999991
	.quad	0x4004fdeefe4ffc98              # double 2.6239910000000002
	.quad	0x3fe2bdbc23315d70              # double 0.58566099999999999
	.quad	0x40101aa1511dffc5              # double 4.0260059999999998
	.quad	0x40223dc93ea2d2fe              # double 9.1206759999999996
	.quad	0x4003a90b417ca212              # double 2.457541
	.quad	0x4016af6be37de93a              # double 5.6713100000000001
	.quad	0x40029aa582dbe7f3              # double 2.3255110000000001
	.quad	0x4005747064ece9a3              # double 2.6818550000000001
	.quad	0x4023fe4628027d89              # double 9.9966290000000004
	.quad	0x40193e5471715c64              # double 6.3108690000000003
	.quad	0x401f1705c896dd27              # double 7.7724830000000002
	.quad	0x4023baac322291fb              # double 9.8645949999999995
	.quad	0x401fb0fa9c12f09e              # double 7.9228310000000004
	.quad	0x3fb71d0c80410300              # double 0.090287000000000006
	.quad	0x4018a9c1b54195cd              # double 6.1657780000000004
	.quad	0x3ff0456f75d9a0f1              # double 1.0169520000000001
	.quad	0x4022caa4fca42aed              # double 9.3957899999999998
	.quad	0x4023c25edd052935              # double 9.8796300000000005
	.quad	0x3feaf84cad57bc7f              # double 0.84280999999999995
	.quad	0x401d250e34762952              # double 7.286187
	.quad	0x40161bfceb78897f              # double 5.5273320000000004
	.quad	0x4016e285ec3dab5c              # double 5.7212139999999998
	.quad	0x401a60eb24a6a876              # double 6.5946470000000001
	.quad	0x402247cb923a29c7              # double 9.1402249999999992
	.quad	0x3fff7ce4217d284a              # double 1.967991
	.quad	0x4012db430f49491f              # double 4.7141229999999998
	.quad	0x401ce5d462c343b7              # double 7.2244429999999999
	.quad	0x400c25e4e69f05ea              # double 3.5185029999999999
	.quad	0x4012431ca7d6733f              # double 4.5655390000000002
	.quad	0x40090b380cb6c7a8              # double 3.1304780000000001
	.quad	0x4021a05553ef6b5d              # double 8.8131509999999995
	.quad	0x402383bd1676640a              # double 9.7573019999999993
	.quad	0x4021aa8672756862              # double 8.8330570000000002
	.quad	0x40222c3eb7cbb3c8              # double 9.0864159999999998
	.quad	0x400cbcf0b6b6e0d2              # double 3.5922559999999999
	.quad	0x40229bedfa43fe5d              # double 9.3045500000000008
	.quad	0x401e04f3343fa2ad              # double 7.5048339999999997
	.quad	0x400d5bc2b94d9408              # double 3.6698050000000002
	.quad	0x4016569f4906034f              # double 5.5845919999999998
	.quad	0x40119b69984a0e41              # double 4.40177
	.quad	0x3ff044e0daa0cae6              # double 1.0168159999999999
	.quad	0x3ffabf83382e44b7              # double 1.671756
	.quad	0x3fd7481b21c475e6              # double 0.36377599999999999
	.quad	0x4018be73e681a9b9              # double 6.1859890000000002
	.quad	0x40236ce160d887ec              # double 9.712657
	.quad	0x3ff249a5657fb69a              # double 1.1429800000000001
	.quad	0x400dd9f2ba9d1f60              # double 3.73142
	.quad	0x400ef6323bbc6eb1              # double 3.8702130000000001
	.quad	0x400df0b955f7835a              # double 3.7425410000000001
	.quad	0x3ffcb2bfdb4cc250              # double 1.7936399999999999
	.quad	0x4008de060fe47992              # double 3.1084100000000001
	.quad	0x40230df7a4e7ab75              # double 9.5272799999999993
	.quad	0x3ff3709b738e6d16              # double 1.2149920000000001
	.quad	0x4011ef1bef49cf57              # double 4.4835050000000001
	.quad	0x40212c46950fc71d              # double 8.5864759999999993
	.quad	0x3feb1d3cbc48f10b              # double 0.84731900000000004
	.quad	0x3ff26df82b1f687b              # double 1.151848
	.quad	0x3fe6cbf8fcd67fd4              # double 0.712399
	.quad	0x4013e45cfede97d0              # double 4.9730109999999996
	.quad	0x3fd6faa044ae85ba              # double 0.35904700000000001
	.quad	0x3fe526b723ee1bd2              # double 0.66097600000000001
	.quad	0x401fa4067cf1c326              # double 7.9101809999999997
	.quad	0x4020999a1fd1569f              # double 8.3000039999999995
	.quad	0x4012a7e4de3b8a1a              # double 4.6639590000000002
	.quad	0x4019c4ad362e9036              # double 6.4420669999999998
	.quad	0x3fe91cc74b838c11              # double 0.78476299999999999
	.quad	0x40141fc9ff92f2b6              # double 5.0310439999999996
	.quad	0x402362f449129889              # double 9.69327
	.quad	0x3fe868d32830a0b2              # double 0.76279600000000003
	.quad	0x401f9f4fd6d7e88a              # double 7.9055780000000002
	.quad	0x40148a90cd423d92              # double 5.1353179999999998
	.quad	0x4021f9ccd9620685              # double 8.9878909999999994
	.quad	0x400a9741d084e832              # double 3.3238560000000001
	.quad	0x401c1953586ca8a0              # double 7.0247320000000002
	.quad	0x3fdd2699c7bcc294              # double 0.45548100000000002
	.quad	0x401c6c84b5dcc63f              # double 7.1059749999999999
	.quad	0x402244322291fb40              # double 9.1331950000000006
	.quad	0x401df7952d234eba              # double 7.4917800000000003
	.quad	0x4015c7e34b945309              # double 5.4452030000000002
	.quad	0x4017cf8982cb20fb              # double 5.9526729999999999
	.quad	0x400466c3b927d45a              # double 2.5501779999999998
	.quad	0x401bcc8472c0e7bc              # double 6.9497239999999998
	.quad	0x4022f7e3b03e20cd              # double 9.484159
	.quad	0x401645ee568a5050              # double 5.5682919999999996
	.quad	0x40218386d2ed783e              # double 8.756888
	.quad	0x3ffbd63779e9d0ea              # double 1.7397990000000001
	.quad	0x3ff0ef4e0114d2f6              # double 1.058424
	.quad	0x4016dee2c98e53eb              # double 5.7176619999999998
	.quad	0x401e46c764adff82              # double 7.5691199999999998
	.quad	0x401c2a48b6523704              # double 7.0412929999999996
	.quad	0x3fb1be5d9e40c847              # double 0.069310999999999998
	.quad	0x4008e0999dcb5782              # double 3.1096680000000001
	.quad	0x4022f00431bde82d              # double 9.4687819999999991
	.quad	0x40239f4cb1897a68              # double 9.8111320000000006
	.quad	0x4017eb0bbf50e347              # double 5.9795369999999997
	.quad	0x401f47064ece9a2c              # double 7.8193599999999996
	.quad	0x3fff74f3fd933e36              # double 1.9660530000000001
	.quad	0x401d3b9170d62bf1              # double 7.3081719999999999
	.quad	0x401c4c1ce6c093d9              # double 7.0743289999999996
	.quad	0x3ffbfe78e1932d6f              # double 1.749627
	.quad	0x3ff3aed352220bc4              # double 1.2301820000000001
	.quad	0x401b0a0945f9df55              # double 6.7598010000000004
	.quad	0x3fb0521dda059a74              # double 0.063753000000000004
	.quad	0x402326fc158fb43e              # double 9.5761420000000008
	.quad	0x4012567ec7863bef              # double 4.5844680000000002
	.quad	0x400ec7faa044ae86              # double 3.8476460000000001
	.quad	0x40156398201cd5fa              # double 5.3472600000000003
	.quad	0x40041af07bfe7e20              # double 2.5131540000000001
	.quad	0x4016aee2c98e53eb              # double 5.6707869999999998
	.quad	0x400d51958969a0ae              # double 3.6648360000000002
	.quad	0x3ffd68405b39e27a              # double 1.837952
	.quad	0x401307525460aa65              # double 4.7571500000000002
	.quad	0x3fe2595feda66128              # double 0.57340999999999998
	.quad	0x4020f0aeb80ecfa7              # double 8.4700830000000007
	.quad	0x4021661ef73c0c20              # double 8.6994550000000004
	.quad	0x4019fc65c70435f0              # double 6.4964820000000003
	.quad	0x4020f15d0b73d189              # double 8.4714130000000001
	.quad	0x4008d18090b417ca              # double 3.1022959999999999
	.quad	0x401072e09fe86834              # double 4.1121850000000002
	.quad	0x3fd3aed56b00ffda              # double 0.30754599999999999
	.quad	0x40142881a1554fbe              # double 5.0395570000000003
	.quad	0x401b1158fb43d89d              # double 6.7669410000000001
	.quad	0x3ffb7e4abe6a337b              # double 1.7183330000000001
	.quad	0x40232b61fe21d96f              # double 9.5847320000000006
	.quad	0x3ffb2784a9478c87              # double 1.6971480000000001
	.quad	0x4012e3c74fb549f9              # double 4.7224399999999997
	.quad	0x40206913836a832c              # double 8.2052270000000007
	.quad	0x40161b8561d4306e              # double 5.5268759999999997
	.quad	0x3ff864b2314013ec              # double 1.5245839999999999
	.quad	0x4022946b26bf876a              # double 9.2898800000000001
	.quad	0x40189c04c8bc9cd4              # double 6.1523620000000001
	.quad	0x4016a0bf5d78811b              # double 5.6569799999999999
	.quad	0x4022b0ac5c13fd0d              # double 9.345065
	.quad	0x4001fdbb9cf9a06a              # double 2.2488929999999998
	.quad	0x401b38eb463497b7              # double 6.8055849999999998
	.quad	0x400222e09fe86834              # double 2.2670300000000001
	.quad	0x3fc6c2e770bd017e              # double 0.17782300000000001
	.quad	0x401bd2089e34330d              # double 6.9551109999999996
	.quad	0x4023b1e1d2178f69              # double 9.8474260000000004
	.quad	0x400e682517e77d52              # double 3.8008519999999999
	.quad	0x4014caf1886df82b              # double 5.1981869999999999
	.quad	0x401d7b2bfdb4cc25              # double 7.370285
	.quad	0x4012152263d816ad              # double 4.5206390000000001
	.quad	0x40120dbb59ddc1e8              # double 4.5134100000000004
	.quad	0x40049f3ade225fa6              # double 2.5777489999999998
	.quad	0x3fffaa9b499d0204              # double 1.979152
	.quad	0x400afc3a42f1ed18              # double 3.3731580000000001
	.quad	0x40195b4e9813879c              # double 6.3391669999999998
	.quad	0x4016f35371971c11              # double 5.7376230000000001
	.quad	0x401f6c560c7c0f45              # double 7.8557969999999999
	.quad	0x40111c308feac42f              # double 4.2775290000000004
	.quad	0x401c931ca7d6733f              # double 7.1436640000000002
	.quad	0x40157f5515054ac3              # double 5.3743480000000003
	.quad	0x4016a202d9cf13cf              # double 5.6582140000000001
	.quad	0x402302074ea8da7f              # double 9.5039619999999995
	.quad	0x40055e121ee67514              # double 2.6709329999999998
	.quad	0x4021f41c3efae792              # double 8.9767779999999995
	.quad	0x4022c6dbd72bcb60              # double 9.3883960000000002
	.quad	0x4021087075b3e143              # double 8.5164829999999991
	.quad	0x4011c504c48adeec              # double 4.4424010000000003
	.quad	0x402220da7f3cf701              # double 9.0641669999999994
	.quad	0x4005b99ed7c6fbd2              # double 2.7156349999999998
	.quad	0x40135318b9346994              # double 4.8311489999999999
	.quad	0x3ffdd15379fa97e1              # double 1.863605
	.quad	0x4010424c404a72eb              # double 4.0647440000000001
	.quad	0x40221c36113404ea              # double 9.0550999999999995
	.quad	0x400fcc5c9a34ca0c              # double 3.9747859999999999
	.quad	0x3fb3e21d96e9bbf1              # double 0.077669000000000002
	.quad	0x3fe981040bfe3b04              # double 0.79699900000000001
	.quad	0x402194c87980f55e              # double 8.7905920000000002
	.quad	0x402307e52157689d              # double 9.5154200000000006
	.quad	0x4001fc219eb6390d              # double 2.2481110000000002
	.quad	0x400e54df8b157258              # double 3.791442
	.quad	0x3fc66f262888b546              # double 0.17526700000000001
	.quad	0x4018066a11ec918e              # double 6.0062639999999998
	.quad	0x400fd3d96638433d              # double 3.9784419999999998
	.quad	0x401b6059210385c6              # double 6.8440899999999996
	.quad	0x4023d189df1172ef              # double 9.9092549999999999
	.quad	0x4011d58a32f44913              # double 4.4585350000000004
	.quad	0x401174bfd2e94680              # double 4.3640129999999999
	.quad	0x40083764f11b60af              # double 3.0270480000000002
	.quad	0x3ffc30856e696a27              # double 1.761846
	.quad	0x4014ed1d4738a3b5              # double 5.2315569999999996
	.quad	0x40041d2ae8e1d649              # double 2.5142419999999999
	.quad	0x40215af46aa087ca              # double 8.6776459999999993
	.quad	0x3fe12b0ea18372e7              # double 0.53650600000000004
	.quad	0x40148c45cbbc2b95              # double 5.1369850000000001
	.quad	0x3ff49eff9f87f024              # double 1.288818
	.quad	0x40182626f60e0eb6              # double 6.0372579999999996
	.quad	0x400541fea8112ba1              # double 2.6572239999999998
	.quad	0x3fd94ccee5abc0e4              # double 0.39531300000000003
	.quad	0x4022418c9fb6134d              # double 9.1280260000000002
	.quad	0x3ff7d25785f8d2e5              # double 1.488853
	.quad	0x40031d7e45803cd1              # double 2.3894009999999999
	.quad	0x3fed28e2e2b8c75c              # double 0.91124099999999996
	.quad	0x40092996312f4cf5              # double 3.1453060000000002
	.quad	0x4022ff13f077ccc0              # double 9.4981989999999996
	.quad	0x400548e60807357e              # double 2.6605949999999998
	.quad	0x40117c158fb43d8a              # double 4.3711760000000002
	.quad	0x40232e5321e603d5              # double 9.5904779999999991
	.quad	0x400094a98aa8650e              # double 2.0725889999999998
	.quad	0x3f9c05d52c16df40              # double 0.027366000000000001
	.quad	0x4018cf05ea24cc68              # double 6.2021709999999999
	.quad	0x4010e851a8694035              # double 4.2268739999999996
	.quad	0x4013114c22ee4192              # double 4.7668920000000004
	.quad	0x4020a62cba732df5              # double 8.32456
	.quad	0x401fc5154866a11f              # double 7.9424640000000001
	.quad	0x3ff913a604e1e710              # double 1.5672969999999999
	.quad	0x3fb929aa1d755bcd              # double 0.098292000000000004
	.quad	0x4022f6653868fd1a              # double 9.4812410000000007
	.quad	0x400b2c9e236c15d3              # double 3.3967860000000001
	.quad	0x3fe8b912dba4d6e4              # double 0.77259199999999994
	.quad	0x4012937da61e0c5b              # double 4.6440340000000004
	.quad	0x4023aa849cb252ce              # double 9.833043
	.quad	0x3fd4c7a7c9de0503              # double 0.32468599999999997
	.quad	0x3fffa7caea747d80              # double 1.9784649999999999
	.quad	0x401eff5b1c864884              # double 7.749371
	.quad	0x401c7deebb341e15              # double 7.1229810000000002
	.quad	0x40052b55ef1fddec              # double 2.6461600000000001
	.quad	0x40014efaa4766c6e              # double 2.163564
	.quad	0x40154349be8ff328              # double 5.3157110000000003
	.quad	0x40139cc5fbf83383              # double 4.9030990000000001
	.quad	0x4010c05faebc408e              # double 4.1878650000000004
	.quad	0x401f7c1b54195cc8              # double 7.8711979999999996
	.quad	0x4020650247021d11              # double 8.1972830000000005
	.quad	0x401fa69984a0e411              # double 7.9126950000000002
	.quad	0x3ff2eb6f19934efd              # double 1.1824790000000001
	.quad	0x4015936976bc1f00              # double 5.3939570000000003
	.quad	0x4010edbca9691a76              # double 4.2321650000000002
	.quad	0x400bf54fbdad7519              # double 3.4947810000000001
	.quad	0x3febadb1e9f27781              # double 0.86495299999999997
	.quad	0x401753c70c996b76              # double 5.8318139999999996
	.quad	0x40142aec8d5c7475              # double 5.0419179999999999
	.quad	0x40023fdb4cc25072              # double 2.28118
	.quad	0x4002d1dbca9691a7              # double 2.3524699999999998
	.quad	0x3fe4962f166e008f              # double 0.64333300000000004
	.quad	0x400394117f84449e              # double 2.4472990000000001
	.quad	0x40201e47dc37a3db              # double 8.0591419999999996
	.quad	0x402050c197e56473              # double 8.1577269999999995
	.quad	0x40220fc86cebbba5              # double 9.0308259999999994
	.quad	0x402047bdad7518b1              # double 8.1401190000000003
	.quad	0x400f6ec311622813              # double 3.9290829999999999
	.quad	0x400b52e0e30446b7              # double 3.4154680000000002
	.quad	0x4011353c579f2346              # double 4.3019879999999997
	.quad	0x40132c5da6a44418              # double 4.7933260000000004
	.quad	0x401e7ea3161a1db8              # double 7.6236689999999995
	.quad	0x4022484ee7c49fd8              # double 9.1412270000000006
	.quad	0x400a1f0cbaf965b2              # double 3.265161
	.quad	0x401f99abb01c92de              # double 7.9000690000000002
	.quad	0x400495b70691ea79              # double 2.5731030000000001
	.quad	0x4013383947496aad              # double 4.8049059999999999
	.quad	0x3ff3b57d5a9eb207              # double 1.2318089999999999
	.quad	0x401805f99c38b04b              # double 6.0058350000000003
	.quad	0x3fed3083558a7610              # double 0.91217199999999998
	.quad	0x40230e1d8622c450              # double 9.5275689999999997
	.quad	0x4006d0b6b6e0d23d              # double 2.8519109999999999
	.quad	0x40212ad080b673c5              # double 8.5836220000000001
	.quad	0x4011b5d074213a0c              # double 4.4275529999999996
	.quad	0x4015f45cbbc2b94e              # double 5.4886350000000004
	.quad	0x4020aee4c0df58c1              # double 8.3415890000000008
	.quad	0x4023adc182ecaeea              # double 9.8393669999999993
	.quad	0x401d701abd1aa822              # double 7.359477
	.quad	0x3fecc63ae2541d8f              # double 0.89919800000000005
	.quad	0x401d5ac083126e98              # double 7.3386250000000003
	.quad	0x401ceb09e98dcdb3              # double 7.2295299999999996
	.quad	0x3ff535ff609dcf89              # double 1.3256829999999999
	.quad	0x40204778359bc340              # double 8.1395890000000009
	.quad	0x402224606748e475              # double 9.0710479999999993
	.quad	0x400bf4c22ee4191a              # double 3.4945110000000001
	.quad	0x4023839ffd60e94f              # double 9.7570800000000001
	.quad	0x402213d1cc100e6b              # double 9.03871
	.quad	0x401f4edaec4a4096              # double 7.827007
	.quad	0x401cbfc2eba27aea              # double 7.1872670000000003
	.quad	0x4008a619da9c9928              # double 3.0811039999999998
	.quad	0x3ff661a1db877ab3              # double 1.398836
	.quad	0x4009931e3a7daa50              # double 3.1968350000000001
	.quad	0x3feb64c51116a8b9              # double 0.85605100000000001
	.quad	0x40196db4cc250721              # double 6.3571350000000004
	.quad	0x401ff8ab92c06184              # double 7.9928419999999996
	.quad	0x3ff93faa044ae85c              # double 1.5780430000000001
	.quad	0x3fc1b5525cc42635              # double 0.138346
	.quad	0x40160ca2db61bb06              # double 5.51234
	.quad	0x3ff376cdf266ba49              # double 1.2165049999999999
	.quad	0x400116db940fecdd              # double 2.136161
	.quad	0x401c7e4abe6a337b              # double 7.1233320000000004
	.quad	0x400cb82fd75e2047              # double 3.5899350000000001
	.quad	0x401bf835dedf1e08              # double 6.9923929999999999
	.quad	0x4002bee5eedcc20d              # double 2.3432119999999999
	.quad	0x4010492923e5b856              # double 4.0714459999999999
	.quad	0x4016ccef240fa9c1              # double 5.7001309999999998
	.quad	0x400656cce5f7403e              # double 2.7923830000000001
	.quad	0x3ffd7487fcb923a3              # double 1.8409500000000001
	.quad	0x402321fd36f7e3d2              # double 9.5663850000000004
	.quad	0x3ffc57bb73083559              # double 1.7714190000000001
	.quad	0x4004a0a5269595ff              # double 2.5784400000000001
	.quad	0x40196739b024f65a              # double 6.3508060000000004
	.quad	0x400a2790b8498809              # double 3.2693189999999999
	.quad	0x3ff0b925bb7b6bb1              # double 1.045202
	.quad	0x4022b6d0f627392a              # double 9.3570630000000001
	.quad	0x40049085f4a1272d              # double 2.5705680000000002
	.quad	0x4017d3eee5258927              # double 5.9569660000000004
	.quad	0x401abf5558212945              # double 6.6868489999999996
	.quad	0x40147f54d1e96c40              # double 5.1243470000000002
	.quad	0x40198ca686e7e62e              # double 6.3873540000000002
	.quad	0x4013e79fa97e132b              # double 4.9761949999999997
	.quad	0x402047e0ef99806f              # double 8.1403879999999997
	.quad	0x4020b9d041cc532a              # double 8.3629169999999995
	.quad	0x401715bff04577d9              # double 5.7712399999999997
	.quad	0x4020036da87a072d              # double 8.0066959999999998
	.quad	0x4023a81e2584f4c7              # double 9.8283550000000001
	.quad	0x4016dfb4c3c18b50              # double 5.7184629999999999
	.quad	0x4017371a3b14a904              # double 5.8038109999999996
	.quad	0x401d06e653868fd2              # double 7.2567380000000004
	.quad	0x4021fd1b2e59af9f              # double 8.9943480000000005
	.quad	0x3ff4814d72799a20              # double 1.281568
	.quad	0x3feea66772d5e072              # double 0.95781300000000003
	.quad	0x40034494d50ebaae              # double 2.408487
	.quad	0x40234d2d234eb9a1              # double 9.6507349999999991
	.quad	0x4022d42d05f28848              # double 9.4144059999999996
	.quad	0x4023e059210385c6              # double 9.9381799999999991
	.quad	0x401becd0fe8ab4fa              # double 6.9812659999999997
	.quad	0x4015e8c5c9a34ca1              # double 5.4773170000000002
	.quad	0x401bc1fe64f54d1f              # double 6.9394470000000004
	.quad	0x4015f31f03d145d8              # double 5.4874229999999997
	.quad	0x401f83de1e2de871              # double 7.8787770000000003
	.quad	0x40224c2070b8cfc0              # double 9.1486850000000004
	.quad	0x40089cea6c1a048e              # double 3.076619
	.quad	0x401649835158b828              # double 5.57179
	.quad	0x402355c2b0ea1837              # double 9.6675009999999996
	.quad	0x3fffdaaa3ad18d26              # double 1.990885
	.quad	0x4011a8c0053e2d62              # double 4.4147949999999998
	.quad	0x3fe706013660e51d              # double 0.71948299999999998
	.quad	0x40088c6f7a0b5ed9              # double 3.0685720000000001
	.quad	0x3fec7e47991bc558              # double 0.89041499999999996
	.quad	0x4014d453d20f2bed              # double 5.2073510000000001
	.quad	0x4012ccd24e160d88              # double 4.7000209999999996
	.quad	0x3fffcc25072085b2              # double 1.9873400000000001
	.quad	0x3ffe73c1ce6c093e              # double 1.9032610000000001
	.quad	0x401884c87980f55e              # double 6.1296710000000001
	.quad	0x401b4685985ad539              # double 6.8188690000000003
	.quad	0x4019cd30270f3882              # double 6.4503789999999999
	.quad	0x401a0d551d68c693              # double 6.51302
	.quad	0x4000001e68a0d34a              # double 2.0000580000000001
	.quad	0x3fdf3c8e25c810a5              # double 0.48807099999999998
	.quad	0x3fea1b2c40d0aaa8              # double 0.81581700000000001
	.quad	0x4022d913836a832c              # double 9.4239770000000007
	.quad	0x401839003eea209b              # double 6.0556650000000003
	.quad	0x3fffb0fe047d3d43              # double 1.9807110000000001
	.quad	0x4020a5b573eab368              # double 8.3236500000000007
	.quad	0x401a731f03d145d8              # double 6.6124229999999997
	.quad	0x401df8198f1d3ed5              # double 7.4922849999999998
	.quad	0x40177c881e4712e4              # double 5.871613
	.quad	0x401b4d52c16df3f9              # double 6.8255109999999997
	.quad	0x3ff86759ab6d00b4              # double 1.5252319999999999
	.quad	0x401e7e236c15d2d0              # double 7.6231819999999999
	.quad	0x401dc5fd04a2fcf0              # double 7.4433480000000003
	.quad	0x400d10e1b4bb5e0f              # double 3.6332429999999998
	.quad	0x400070614163779f              # double 2.0548730000000002
	.quad	0x3ff4e36b09635611              # double 1.3055220000000001
	.quad	0x400262b302f72b45              # double 2.2981929999999999
	.quad	0x402161274e22a2c2              # double 8.6897529999999996
	.quad	0x401c10e6299524c0              # double 7.0165030000000002
	.quad	0x3ff1d3ee5eedcc21              # double 1.114241
	.quad	0x401be144028e4fb9              # double 6.9699859999999996
	.quad	0x400c8f041461b6d4              # double 3.5698319999999999
	.quad	0x4014cdacabc51548              # double 5.2008539999999996
	.quad	0x401ba5c358afc47e              # double 6.9118779999999997
	.quad	0x4014776c8b439581              # double 5.116625
	.quad	0x4001a013ec460ed8              # double 2.203163
	.quad	0x4016304ee7c49fd8              # double 5.5471760000000003
	.quad	0x40117284167a95c8              # double 4.3618319999999997
	.quad	0x4005d55bccaf709b              # double 2.7291789999999998
	.quad	0x400f9358f2e05ccd              # double 3.9469470000000002
	.quad	0x40124211cb039ef1              # double 4.5645210000000001
	.quad	0x4022f28826aa8eb4              # double 9.4736949999999993
	.quad	0x3fdb2b777d0f1f58              # double 0.42452800000000002
	.quad	0x4013b3d5bab21816              # double 4.9256200000000003
	.quad	0x4014c7460242d05f              # double 5.1946029999999999
	.quad	0x40119ca643cc07ab              # double 4.4029780000000001
	.quad	0x3ff8d30489d27c39              # double 1.551518
	.quad	0x40210bb14a90470b              # double 8.5228370000000009
	.quad	0x401610a45d41fa76              # double 5.5162519999999997
	.quad	0x3fc3bfa4c61d8623              # double 0.15428600000000001
	.quad	0x40209f7ee4e26d48              # double 8.311515
	.quad	0x400f6c13b9f127f6              # double 3.927772
	.quad	0x402196b053198288              # double 8.794314
	.quad	0x40226c3675ddd2af              # double 9.2113530000000008
	.quad	0x40148cb3e5753a3f              # double 5.1374050000000002
	.quad	0x4022b4523f67f4dc              # double 9.3521900000000002
	.quad	0x4023656f112fd32c              # double 9.6981129999999993
	.quad	0x401838283d35eb74              # double 6.0548409999999997
	.quad	0x4018f67903211cb0              # double 6.2406959999999998
	.quad	0x401dac40d0aaa7df              # double 7.4182160000000001
	.quad	0x40059c49774256bd              # double 2.7013120000000002
	.quad	0x3ff68ce1c58255b0              # double 1.409395
	.quad	0x4012e92b3cc4ac6d              # double 4.7277040000000001
	.quad	0x40231e5dbfceb789              # double 9.5593090000000007
	.quad	0x3ff0c5846e8f29d4              # double 1.048222
	.quad	0x40066bd66277c45d              # double 2.8026550000000001
	.quad	0x4011355043e5321e              # double 4.3020639999999997
	.quad	0x3ff6cd0aaa7ded6c              # double 1.4250590000000001
	.quad	0x401ed7e175d13d75              # double 7.7108210000000001
	.quad	0x4011eafb7e90ff97              # double 4.4794749999999999
	.quad	0x3ffe2d1287c200c1              # double 1.886004
	.quad	0x401805b89939218a              # double 6.0055870000000002
	.quad	0x4021a921ee675148              # double 8.8303370000000001
	.quad	0x400f6fb8f57f737e              # double 3.9295520000000002
	.quad	0x3fb09bd8383ad9f1              # double 0.064878000000000005
	.quad	0x3ff93bd48cb4aec9              # double 1.577107
	.quad	0x3fe6fe45803cd142              # double 0.71853900000000004
	.quad	0x3f881e8a2ec28b2a              # double 0.011776999999999999
	.quad	0x401686805a2d7300              # double 5.6313490000000002
	.quad	0x3ff1f574f722e1ac              # double 1.1224259999999999
	.quad	0x3ff32d3c792d1288              # double 1.1985440000000001
	.quad	0x40060c60cbf2b23a              # double 2.7560440000000002
	.quad	0x4004114ec204f2ae              # double 2.508451
	.quad	0x4016ce1c15097c81              # double 5.7012790000000004
	.quad	0x400363bc4d22c882              # double 2.423699
	.quad	0x401c68b3700474da              # double 7.1022470000000002
	.quad	0x401d840ee06d9381              # double 7.3789629999999997
	.quad	0x4005f43d03968d76              # double 2.7442570000000002
	.quad	0x401d68fe260b2c84              # double 7.3525320000000001
	.quad	0x40135209246bf013              # double 4.8301129999999999
	.quad	0x40204759253543af              # double 8.1393520000000006
	.quad	0x4014dd0aaa7ded6c              # double 5.2158610000000003
	.quad	0x3fe50489d27c3937              # double 0.65680400000000005
	.quad	0x4010d498c3b0c459              # double 4.2076140000000004
	.quad	0x400e9b784662bae0              # double 3.8259129999999999
	.quad	0x401b3691212513b6              # double 6.8032880000000002
	.quad	0x400ccb734b51372a              # double 3.5993409999999999
	.quad	0x400c4a46e08f2171              # double 3.5362680000000002
	.quad	0x4019e07fed20296b              # double 6.4692379999999998
	.quad	0x3fd24c33b5393251              # double 0.28590100000000002
	.quad	0x3ff2b126e978d4fe              # double 1.16825
	.quad	0x4015749a5657fb6a              # double 5.3638700000000004
	.quad	0x4016f5d5b24e9c45              # double 5.7400729999999998
	.quad	0x4021e27935760392              # double 8.9423309999999994
	.quad	0x4021161693c03bc5              # double 8.5431410000000003
	.quad	0x3fe07bb2fec56d5d              # double 0.5151
	.quad	0x3ff3a014727dcbde              # double 1.2265820000000001
	.quad	0x4010adb445ed4a1b              # double 4.1696330000000001
	.quad	0x3ff9c01711947cfa              # double 1.609397
	.quad	0x4015298958d9b5e9              # double 5.2905629999999997
	.quad	0x400c75946c332f01              # double 3.5574119999999998
	.quad	0x40148a64c2f837b5              # double 5.1351500000000003
	.quad	0x3ffbb1572580c309              # double 1.730796
	.quad	0x4020b443914f483d              # double 8.3520780000000006
	.quad	0x402050f96e158751              # double 8.1581530000000004
	.quad	0x4023258622c45027              # double 9.5732890000000008
	.quad	0x401af30941c8216c              # double 6.7373399999999997
	.quad	0x400aacd5b6805a2d              # double 3.3343919999999998
	.quad	0x4002589acbc8c0cf              # double 2.2932640000000002
	.quad	0x3fecfafea3df6db9              # double 0.90563899999999997
	.quad	0x4023ccbccf28c79f              # double 9.8998779999999992
	.quad	0x401c19f3c70c996b              # double 7.0253439999999996
	.quad	0x4001accccccccccd              # double 2.2093750000000001
	.quad	0x4005a03925bb7b6c              # double 2.7032340000000001
	.quad	0x4006cf0281ba7fc3              # double 2.8510789999999999
	.quad	0x401a85d41fa76534              # double 6.6306919999999998
	.quad	0x4012de29b6b2af14              # double 4.7169559999999997
	.quad	0x3fbfa5e353f7ced9              # double 0.123625
	.quad	0x400212ebe596c82e              # double 2.259239
	.quad	0x400c2d1b71758e22              # double 3.5220250000000002
	.quad	0x400095b6805a2d73              # double 2.073102
	.quad	0x3fc7b7b6bb129025              # double 0.18529399999999999
	.quad	0x400218e64b231401              # double 2.2621579999999999
	.quad	0x400f8b3cc4ac6cdb              # double 3.942987
	.quad	0x4022e4eee0f3cb3e              # double 9.4471349999999994
	.quad	0x40163c7c957cd467              # double 5.559069
	.quad	0x3ff462ae4b018612              # double 1.274092
	.quad	0x401730b1bbcf4e87              # double 5.7975529999999997
	.quad	0x40160e4e69f05ea2              # double 5.5139709999999997
	.quad	0x4023efb28954a7f8              # double 9.9681589999999999
	.quad	0x3fee16bb98c7e282              # double 0.94027499999999997
	.quad	0x40200cfb762d83c7              # double 8.0253560000000004
	.quad	0x3ff43b81b64e0547              # double 1.2645280000000001
	.quad	0x401aa7d73c925786              # double 6.663907
	.quad	0x401b40d0edc3bd5a              # double 6.8132970000000004
	.quad	0x3fed2c322291fb40              # double 0.91164500000000004
	.quad	0x400f509528f190d1              # double 3.9143469999999998
	.quad	0x4018fc2fc69728a6              # double 6.2462759999999999
	.quad	0x4013f2096787ce96              # double 4.986364
	.quad	0x40216afa5093964a              # double 8.7089409999999994
	.quad	0x40214637bd05af6c              # double 8.6371439999999992
	.quad	0x4023b4ccee5abc0e              # double 9.8531259999999996
	.quad	0x4002526aec0724b7              # double 2.2902429999999998
	.quad	0x401183e2d6238da4              # double 4.3787950000000002
	.quad	0x40170a437824d4cc              # double 5.7600230000000003
	.quad	0x4017ecf7446f9b99              # double 5.9814119999999997
	.quad	0x400356db0dd82fd7              # double 2.4174099999999998
	.quad	0x3fdf983947496aad              # double 0.49366599999999999
	.quad	0x400d534f82f51266              # double 3.6656789999999999
	.quad	0x3fe614727dcbddba              # double 0.68999600000000005
	.quad	0x3fec6262cba732df              # double 0.88700999999999997
	.quad	0x3fdbe5eedcc20d56              # double 0.43590899999999999
	.quad	0x3fc4d44dca8e2e2c              # double 0.16272900000000001
	.quad	0x400c16d97b30f8c6              # double 3.5111569999999999
	.quad	0x4020d70329802c0a              # double 8.4199459999999995
	.quad	0x3ff15577963992c9              # double 1.0833660000000001
	.quad	0x402154cff21b3aef              # double 8.6656490000000002
	.quad	0x401a5c5da6a44418              # double 6.5902010000000004
	.quad	0x40131a6f3f52fc26              # double 4.7758149999999997
	.quad	0x4020ff75b8130165              # double 8.4989450000000009
	.quad	0x3f8d2e0e30446b6a              # double 0.014248
	.quad	0x40169e5f7403dddb              # double 5.6546609999999999
	.quad	0x3fde0e9d51b4fe7a              # double 0.469642
	.quad	0x400da93f290abb45              # double 3.70764
	.quad	0x3fc8fd8f0c77dd87              # double 0.19523799999999999
	.quad	0x3fdb80f55de58e65              # double 0.42974600000000002
	.quad	0x3ffe96312f4cf4a5              # double 1.9116679999999999
	.quad	0x4016cdb1e9f27781              # double 5.7008739999999998
	.quad	0x3fe54cee5abc0e39              # double 0.66564100000000004
	.quad	0x40158aa7ded6ba8c              # double 5.3854059999999997
	.quad	0x40099d6733ebbfd7              # double 3.201857
	.quad	0x3ffb0c5da6a44418              # double 1.6905190000000001
	.quad	0x400922291fb3fa6e              # double 3.14168
	.quad	0x401ae6f47b677f6b              # double 6.7255419999999999
	.quad	0x4000fdbd2fa0d77b              # double 2.1238959999999998
	.quad	0x40062c258d5842b7              # double 2.7715559999999999
	.quad	0x3ff5da11233df2aa              # double 1.365739
	.quad	0x40104687f455a7d2              # double 4.0688779999999998
	.quad	0x4020e6b2d0a24463              # double 8.450583
	.quad	0x3fe8bb44e50c5eb3              # double 0.77285999999999999
	.quad	0x40108f18c9fb6135              # double 4.1397430000000002
	.quad	0x40157020817fc760              # double 5.3594989999999996
	.quad	0x401f5425f202107b              # double 7.8321759999999995
	.quad	0x3fc12d0a24463066              # double 0.134187
	.quad	0x400716cf850df15a              # double 2.8861379999999999
	.quad	0x3ff0926d8b1dd5d4              # double 1.035749
	.quad	0x4023c986fcdee350              # double 9.8936080000000004
	.quad	0x40013cca70d1fa33              # double 2.1546829999999999
	.quad	0x400a2b32ce89656f              # double 3.271093
	.quad	0x4012666234a87e39              # double 4.5999840000000001
	.quad	0x4022fa42f1ed17c6              # double 9.4887920000000001
	.quad	0x3ffa7e2f7b17ce53              # double 1.655807
	.quad	0x400afc91d14e3bcd              # double 3.3733249999999999
	.quad	0x4006910fd7e45804              # double 2.8208310000000001
	.quad	0x4001919157abb880              # double 2.196078
	.quad	0x3ff2f402d16b97ff              # double 1.1845730000000001
	.quad	0x4021d9d92b7fe08b              # double 8.9254850000000001
	.quad	0x40177a2b5a20ddc6              # double 5.8693059999999999
	.quad	0x4021e77079e59f2c              # double 8.9520300000000005
	.quad	0x4018ffe86833c600              # double 6.2499099999999999
	.quad	0x4017361565c2d278              # double 5.802816
	.quad	0x4020bd4b8bef8ceb              # double 8.3697169999999996
	.quad	0x40206243dccea290              # double 8.1919240000000002
	.quad	0x3fea96b76709fa55              # double 0.83089800000000003
	.quad	0x400054916ca46e09              # double 2.041293
	.quad	0x401959ddc1e7967d              # double 6.3377600000000003
	.quad	0x3fcdb899392189be              # double 0.23219600000000001
	.quad	0x4012609f623076c0              # double 4.5943579999999997
	.quad	0x401e0bd5992428d4              # double 7.5115569999999998
	.quad	0x40230481d3aa36a0              # double 9.5088030000000003
	.quad	0x401b8f4adbc664d4              # double 6.8899340000000002
	.quad	0x402143ca5375c8da              # double 8.632403
	.quad	0x4022a9320d9945b7              # double 9.3304600000000004
	.quad	0x4012fc148344c37e              # double 4.7461719999999996
	.quad	0x3fa6fdc9c4da9004              # double 0.044905
	.quad	0x40227e215336deb9              # double 9.2463479999999993
	.quad	0x40223821f2990f30              # double 9.1096339999999998
	.quad	0x4010a98288051c9f              # double 4.1655369999999996
	.quad	0x4022adf7c6759ab7              # double 9.3397810000000003
	.quad	0x4008f7b7414a4d2b              # double 3.1209549999999999
	.quad	0x4023906a6e32e382              # double 9.7820619999999998
	.quad	0x3fffcbba12b5e52a              # double 1.9872380000000001
	.quad	0x40130183b60285ec              # double 4.7514789999999998
	.quad	0x401f002a77a2cecd              # double 7.7501620000000004
	.quad	0x40225bcf2cf95d4f              # double 9.1793150000000008
	.quad	0x3febd0870110a138              # double 0.86920500000000001
	.quad	0x401c9a82a5614df9              # double 7.1508890000000003
	.quad	0x400a2e358298cc14              # double 3.2725629999999999
	.quad	0x401ca7fd3f5b5fa2              # double 7.1640519999999999
	.quad	0x401effdb09a671ef              # double 7.7498589999999998
	.quad	0x3fd5f4fd6d7e889c              # double 0.34307799999999999
	.quad	0x401a38b60f1b25f6              # double 6.5553819999999998
	.quad	0x4023fb37867f0aa2              # double 9.9906579999999998
	.quad	0x40217b2e3821af7d              # double 8.7405869999999997
	.quad	0x3feb874a771c970f              # double 0.86026499999999995
	.quad	0x4008759ddc1e7968              # double 3.0574300000000001
	.quad	0x402333845564b663              # double 9.600619
	.quad	0x4020f56e264e4862              # double 8.4793559999999992
	.quad	0x4000958298cc1440              # double 2.0730029999999999
	.quad	0x3fcafea3df6db941              # double 0.210896
	.quad	0x4015e09dcf893faf              # double 5.4693519999999998
	.quad	0x400132ff4ba51a00              # double 2.1499009999999998
	.quad	0x4020a8a393ee5eee              # double 8.3293730000000004
	.quad	0x3ff7df43c7d5ed07              # double 1.492008
	.quad	0x40234c43f5f91601              # double 9.648956
	.quad	0x401029e34330d738              # double 4.0409059999999997
	.quad	0x4020f798b71b8aa0              # double 8.483587
	.quad	0x40130766c6de7642              # double 4.7572279999999996
	.quad	0x4018b539756c93a7              # double 6.1769769999999999
	.quad	0x4013af61ed5ae1ce              # double 4.9212720000000001
	.quad	0x3ff6826bb55ac040              # double 1.406841
	.quad	0x401e73d5fdcdf698              # double 7.6131209999999995
	.quad	0x40144fdcdf698783              # double 5.0779909999999999
	.quad	0x3ffd47d912556d1a              # double 1.830041
	.quad	0x4010d37e6f71a7e3              # double 4.206537
	.quad	0x40215b3e35c5b4ab              # double 8.6782090000000007
	.quad	0x4016005a2d72ffd2              # double 5.5003440000000001
	.quad	0x4022456dc1a47a9e              # double 9.1356029999999997
	.quad	0x4017962cfd8f0c78              # double 5.8966560000000001
	.quad	0x4023ab0121682f94              # double 9.8339929999999995
	.quad	0x3fc760e0eb67c287              # double 0.182644
	.quad	0x3ff12d05f2884838              # double 1.0734919999999999
	.quad	0x4015e5054ac29bf1              # double 5.4736529999999997
	.quad	0x400659e7b80a9de9              # double 2.7938990000000001
	.quad	0x401d065add9c27e9              # double 7.2562059999999997
	.quad	0x4007bffcdab191de              # double 2.968744
	.quad	0x401d299a62ed3522              # double 7.2906279999999999
	.quad	0x3fd58205ff1d81f1              # double 0.336061
	.quad	0x401523a860dcb9aa              # double 5.2848220000000001
	.quad	0x40216b77c02afddb              # double 8.7098980000000008
	.quad	0x40201a81ba7fc32f              # double 8.0517710000000005
	.quad	0x4002caa21a719b4e              # double 2.3489420000000001
	.quad	0x40076b4289118c19              # double 2.9273729999999998
	.quad	0x401e18b1572580c3              # double 7.5241139999999999
	.quad	0x3f9c1a048e043a21              # double 0.027442999999999999
	.quad	0x400a6807357e670e              # double 3.3007949999999999
	.quad	0x401551ef73c0c1fd              # double 5.3300150000000004
	.quad	0x3fd1b0ab2e1693c0              # double 0.27640799999999999
	.quad	0x40214998f1d3ed52              # double 8.6437449999999991
	.quad	0x3ff4426fe718a86d              # double 1.2662199999999999
	.quad	0x4011d48e043a2164              # double 4.457573
	.quad	0x3ffe89fe86833c60              # double 1.90869
	.quad	0x40147e1049235f81              # double 5.1231090000000004
	.quad	0x401a048301a79fed              # double 6.5044060000000004
	.quad	0x4002301f31f46ed2              # double 2.2734969999999999
	.quad	0x4022988c1db0142f              # double 9.2979439999999993
	.quad	0x3ff8d348b220791c              # double 1.5515829999999999
	.quad	0x401133804534bd77              # double 4.3002940000000001
	.quad	0x3fd118ce2d1f1cfc              # double 0.26713900000000002
	.quad	0x401b1efe93187619              # double 6.7802680000000004
	.quad	0x40023feeb2d0a244              # double 2.2812169999999998
	.quad	0x40031f40a2877ee5              # double 2.3902600000000001
	.quad	0x3fd594ee392e1ef7              # double 0.33721499999999999
	.quad	0x3fc351372a38b8ae              # double 0.15091599999999999
	.quad	0x3fe00f605ab3aabd              # double 0.50187700000000002
	.quad	0x3fe90620ab713272              # double 0.78199799999999997
	.quad	0x400094562e09fe87              # double 2.0724300000000002
	.quad	0x3ff6bb688bda9436              # double 1.4207540000000001
	.quad	0x4006cc37e6f71a7e              # double 2.8497159999999999
	.quad	0x4023279f23465626              # double 9.5773860000000006
	.quad	0x400cd8d2e514c22f              # double 3.605871
	.quad	0x4023fe40639d5e4a              # double 9.9965849999999996
	.quad	0x40155dd872f33ca3              # double 5.3416459999999999
	.quad	0x401493471f79420b              # double 5.1438259999999998
	.quad	0x401d002d9cf13cef              # double 7.2501740000000003
	.quad	0x401ad73a365cb35f              # double 6.7101829999999998
	.quad	0x4010ba95c853c148              # double 4.1822119999999998
	.quad	0x40108323358f2e06              # double 4.1280640000000002
	.quad	0x401d55918a009f62              # double 7.3335629999999998
	.quad	0x4022180a393ee5ef              # double 9.0469530000000002
	.quad	0x400f90b30b5aa716              # double 3.9456540000000002
	.quad	0x3f9a4f8726d04e62              # double 0.025694000000000002
	.quad	0x40019a20ddc61954              # double 2.2002579999999998
	.quad	0x400775f676ea4229              # double 2.9325990000000002
	.quad	0x3ff71f666234a87e              # double 1.445166
	.quad	0x401de98bf7f06706              # double 7.4780730000000002
	.quad	0x4007d34acaff6d33              # double 2.97817
	.quad	0x402161a1986b9c30              # double 8.6906859999999995
	.quad	0x401b2c90c4dec1c2              # double 6.7935210000000001
	.quad	0x3fcb845dc8323359              # double 0.214977
	.quad	0x3ff89ed3953dea46              # double 1.5387759999999999
	.quad	0x40186b8d82342246              # double 6.1050319999999996
	.quad	0x401f76887a8d64d8              # double 7.865755
	.quad	0x4014cfba450acc0c              # double 5.2028590000000001
	.quad	0x40165c6088d6d3b7              # double 5.5902120000000002
	.quad	0x402321d495182a99              # double 9.5660749999999996
	.quad	0x4010fa8f7db6e504              # double 4.244688
	.quad	0x40048ea077036c9c              # double 2.569642
	.quad	0x4003638327674d16              # double 2.4235899999999999
	.quad	0x40090399b2c40d0b              # double 3.1267580000000001
	.quad	0x3fe9639713ad5bee              # double 0.79340699999999997
	.quad	0x40022b6848beb5b3              # double 2.2711950000000001
	.quad	0x3fd98b71b8aa0019              # double 0.39913599999999999
	.quad	0x4006d72ef0ae5365              # double 2.85507
	.quad	0x3ffae2f6a50d6b23              # double 1.6804110000000001
	.quad	0x402004bc05d52c17              # double 8.0092470000000002
	.quad	0x3ff474330d73860a              # double 1.2783690000000001
	.quad	0x401e1ae9ee45c359              # double 7.5262830000000002
	.quad	0x4000153b4b2fa93b              # double 2.010367
	.quad	0x40159f2b66b6177f              # double 5.4054390000000003
	.quad	0x4002b0ce4ead0c3d              # double 2.3363309999999999
	.quad	0x40217f724fa8b4c0              # double 8.7489190000000008
	.quad	0x4018db1cc9646280              # double 6.2139769999999999
	.quad	0x4022c36049ecb31c              # double 9.3815939999999997
	.quad	0x401251bd61f5be5e              # double 4.5798240000000003
	.quad	0x4020630c88a47ed0              # double 8.1934550000000002
	.quad	0x40170ca600b02928              # double 5.7623519999999999
	.quad	0x3ffb63d0bfa09460              # double 1.7118690000000001
	.quad	0x401870589acbc8c1              # double 6.1097130000000002
	.quad	0x40236151a437824d              # double 9.6900759999999994
	.quad	0x3ffdad330941c821              # double 1.8547849999999999
	.quad	0x3fcab851eb851eb8              # double 0.20874999999999999
	.quad	0x40209b886594af4f              # double 8.3037749999999999
	.quad	0x3ff734c6e6d9be4d              # double 1.450385
	.size	.L__constant_4499xf64, 35992

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	41                              # 0x29
	.quad	41                              # 0x29
	.quad	78                              # 0x4e
	.quad	78                              # 0x4e
	.quad	120                             # 0x78
	.quad	120                             # 0x78
	.quad	163                             # 0xa3
	.quad	163                             # 0xa3
	.quad	202                             # 0xca
	.quad	202                             # 0xca
	.quad	246                             # 0xf6
	.quad	246                             # 0xf6
	.quad	283                             # 0x11b
	.quad	283                             # 0x11b
	.quad	323                             # 0x143
	.quad	323                             # 0x143
	.quad	362                             # 0x16a
	.quad	362                             # 0x16a
	.quad	401                             # 0x191
	.quad	401                             # 0x191
	.quad	444                             # 0x1bc
	.quad	444                             # 0x1bc
	.quad	488                             # 0x1e8
	.quad	488                             # 0x1e8
	.quad	529                             # 0x211
	.quad	529                             # 0x211
	.quad	567                             # 0x237
	.quad	567                             # 0x237
	.quad	608                             # 0x260
	.quad	608                             # 0x260
	.quad	645                             # 0x285
	.quad	645                             # 0x285
	.quad	677                             # 0x2a5
	.quad	677                             # 0x2a5
	.quad	716                             # 0x2cc
	.quad	716                             # 0x2cc
	.quad	756                             # 0x2f4
	.quad	756                             # 0x2f4
	.quad	798                             # 0x31e
	.quad	798                             # 0x31e
	.quad	839                             # 0x347
	.quad	839                             # 0x347
	.quad	879                             # 0x36f
	.quad	879                             # 0x36f
	.quad	914                             # 0x392
	.quad	914                             # 0x392
	.quad	952                             # 0x3b8
	.quad	952                             # 0x3b8
	.quad	988                             # 0x3dc
	.quad	988                             # 0x3dc
	.quad	1028                            # 0x404
	.quad	1028                            # 0x404
	.quad	1067                            # 0x42b
	.quad	1067                            # 0x42b
	.quad	1110                            # 0x456
	.quad	1110                            # 0x456
	.quad	1152                            # 0x480
	.quad	1152                            # 0x480
	.quad	1184                            # 0x4a0
	.quad	1184                            # 0x4a0
	.quad	1224                            # 0x4c8
	.quad	1224                            # 0x4c8
	.quad	1265                            # 0x4f1
	.quad	1265                            # 0x4f1
	.quad	1307                            # 0x51b
	.quad	1307                            # 0x51b
	.quad	1349                            # 0x545
	.quad	1349                            # 0x545
	.quad	1393                            # 0x571
	.quad	1393                            # 0x571
	.quad	1434                            # 0x59a
	.quad	1434                            # 0x59a
	.quad	1479                            # 0x5c7
	.quad	1479                            # 0x5c7
	.quad	1517                            # 0x5ed
	.quad	1517                            # 0x5ed
	.quad	1551                            # 0x60f
	.quad	1551                            # 0x60f
	.quad	1590                            # 0x636
	.quad	1590                            # 0x636
	.quad	1630                            # 0x65e
	.quad	1630                            # 0x65e
	.quad	1675                            # 0x68b
	.quad	1675                            # 0x68b
	.quad	1717                            # 0x6b5
	.quad	1717                            # 0x6b5
	.quad	1756                            # 0x6dc
	.quad	1756                            # 0x6dc
	.quad	1795                            # 0x703
	.quad	1795                            # 0x703
	.quad	1837                            # 0x72d
	.quad	1837                            # 0x72d
	.quad	1880                            # 0x758
	.quad	1880                            # 0x758
	.quad	1921                            # 0x781
	.quad	1921                            # 0x781
	.quad	1963                            # 0x7ab
	.quad	1963                            # 0x7ab
	.quad	1999                            # 0x7cf
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
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
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
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
	.quad	30                              # 0x1e
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
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
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
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
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
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
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
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
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
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
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
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
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	12                              # 0xc
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
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
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
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	68                              # 0x44
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
	.quad	98                              # 0x62
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	30                              # 0x1e
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
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
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
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.size	.L__constant_1999xindex, 15992

	.type	.L__constant_1999xf64,@object   # @__constant_1999xf64
	.p2align	6, 0x0
.L__constant_1999xf64:
	.quad	0x401e93a797891e21              # double 7.6441939999999997
	.quad	0x40218402afdda8bd              # double 8.7578329999999998
	.quad	0x401913111f0c34c2              # double 6.2686200000000003
	.quad	0x401ab9dbec2480e9              # double 6.6815030000000002
	.quad	0x3fe92a5a469d7343              # double 0.78642000000000001
	.quad	0x4015ed3804534bd7              # double 5.4816589999999996
	.quad	0x3fe66605ee568a50              # double 0.69995399999999997
	.quad	0x400d6c122749f0e5              # double 3.6777690000000001
	.quad	0x4003dd80e496edee              # double 2.4831560000000001
	.quad	0x40218663e8dda48b              # double 8.7624809999999993
	.quad	0x40171947064ece9a              # double 5.7746849999999998
	.quad	0x401fb34f3fd933e3              # double 7.9251069999999996
	.quad	0x4023c4e1c58255b0              # double 9.8845349999999996
	.quad	0x4019844fa05143bf              # double 6.3792099999999996
	.quad	0x3ff5b922962cfd8f              # double 1.357699
	.quad	0x4022bab628459967              # double 9.3646709999999995
	.quad	0x401be6e32e3821af              # double 6.9754759999999996
	.quad	0x401020813cab81f9              # double 4.0317429999999996
	.quad	0x4021a58a116659d1              # double 8.8233189999999997
	.quad	0x401a10520d130dfa              # double 6.5159380000000002
	.quad	0x4014cad106ee30cb              # double 5.1980630000000003
	.quad	0x401cb9641f644956              # double 7.1810460000000003
	.quad	0x3fd08d21bc126a66              # double 0.25861400000000001
	.quad	0x3ffe4344c37e6f72              # double 1.8914230000000001
	.quad	0x3ffc06f156191149              # double 1.751695
	.quad	0x4006381b64e05469              # double 2.777396
	.quad	0x402032c9081c2e34              # double 8.0991900000000001
	.quad	0x401a0e7a311e85fd              # double 6.514138
	.quad	0x4010df26aec0724b              # double 4.2179209999999996
	.quad	0x4013e5ccc89b0ee5              # double 4.9744140000000003
	.quad	0x401f6d759ee88df3              # double 7.8568939999999996
	.quad	0x4016dd556084a516              # double 5.7161460000000002
	.quad	0x4023dfeed45e9186              # double 9.9373690000000003
	.quad	0x3fb8b2d905c03361              # double 0.096478999999999995
	.quad	0x4006554b05b7cfe6              # double 2.7916470000000002
	.quad	0x401e3278d0cc35ce              # double 7.5492889999999999
	.quad	0x4012abb7739f340d              # double 4.6676919999999997
	.quad	0x4022c6779207d4e1              # double 9.3876310000000007
	.quad	0x4019da05143bf727              # double 6.4629099999999999
	.quad	0x400ed6672fba01ef              # double 3.854689
	.quad	0x3fec6935b91f70df              # double 0.88784300000000005
	.quad	0x4005876a7264a16a              # double 2.6911209999999999
	.quad	0x401e08359bc33f85              # double 7.5080169999999997
	.quad	0x3ff8337c99ae924f              # double 1.51257
	.quad	0x40205441bb8c32a9              # double 8.1645640000000004
	.quad	0x401c16e2eb1c432d              # double 7.0223500000000003
	.quad	0x401da4b2314013ec              # double 7.4108359999999998
	.quad	0x4020af79e9d0e992              # double 8.342727
	.quad	0x4022204b7f5a5333              # double 9.0630760000000006
	.quad	0x3fdc6049ecb31c22              # double 0.44337700000000002
	.quad	0x4011b3df2a9d627c              # double 4.425656
	.quad	0x4021049abb01c92e              # double 8.5089930000000003
	.quad	0x401eba17f4128bf4              # double 7.6817320000000002
	.quad	0x400dbd6a593a2df9              # double 3.7174879999999999
	.quad	0x401bbcc39ffd60e9              # double 6.9343399999999997
	.quad	0x40132710cb295e9e              # double 4.7881499999999999
	.quad	0x400b156eac860568              # double 3.3854649999999999
	.quad	0x401b5a12b5e529bb              # double 6.8379620000000001
	.quad	0x40065331a08bfc22              # double 2.7906219999999999
	.quad	0x4020cac881e4712e              # double 8.3960609999999996
	.quad	0x4005a4095f2452c6              # double 2.7050960000000002
	.quad	0x402136238da3c212              # double 8.6057400000000008
	.quad	0x401ec5100a393ee6              # double 7.6924440000000001
	.quad	0x40018f56eac86057              # double 2.1949900000000002
	.quad	0x3ffb0998d045fe11              # double 1.689843
	.quad	0x40181a00192a7371              # double 6.0253909999999999
	.quad	0x3fd36ec17ebaf102              # double 0.30363499999999999
	.quad	0x401788023a6ce358              # double 5.8828209999999999
	.quad	0x4010d59f6ec5b079              # double 4.2086160000000001
	.quad	0x3ff8456f75d9a0f1              # double 1.5169520000000001
	.quad	0x40132573eab367a1              # double 4.786575
	.quad	0x3ffb913b5bf6a0dc              # double 1.7229570000000001
	.quad	0x3ffdbba775fb2ee0              # double 1.858314
	.quad	0x401d1355cd91eeaa              # double 7.2688819999999996
	.quad	0x40209a26e5471716              # double 8.3010780000000004
	.quad	0x40157c1ca3a4b557              # double 5.3712030000000004
	.quad	0x4020ab764f11b60b              # double 8.3348870000000002
	.quad	0x4011a5fa658c4bd3              # double 4.4120879999999998
	.quad	0x3ff8b020c49ba5e3              # double 1.5429999999999999
	.quad	0x40126c0c62e4d1a6              # double 4.6055159999999997
	.quad	0x400afa2a4db163bb              # double 3.3721510000000001
	.quad	0x4023472990f301eb              # double 9.6389890000000004
	.quad	0x3ff148b75ea67e84              # double 1.0802529999999999
	.quad	0x40057490e66cb103              # double 2.6819169999999999
	.quad	0x3fe93b0e5e679464              # double 0.78845900000000002
	.quad	0x40225f59ccfaeff6              # double 9.1862320000000004
	.quad	0x4022fa66ba493c8a              # double 9.4890650000000001
	.quad	0x3fe0e102795703f3              # double 0.52746700000000002
	.quad	0x3ff2142f61ed5ae2              # double 1.129928
	.quad	0x3ff3a16c61522a6f              # double 1.2269099999999999
	.quad	0x4004a86f8ad2567a              # double 2.5822440000000002
	.quad	0x40119ea4228997c4              # double 4.4049230000000001
	.quad	0x4015535d249e44fa              # double 5.33141
	.quad	0x40051fd36f7e3d1d              # double 2.6405400000000001
	.quad	0x4020019ef954eb14              # double 8.0031660000000002
	.quad	0x4016cc48adeebb34              # double 5.6994959999999999
	.quad	0x40094a9b499d0204              # double 3.161429
	.quad	0x3ff56fbc1acde1a0              # double 1.3397790000000001
	.quad	0x401476b15f88fc93              # double 5.1159109999999997
	.quad	0x401bd90d173fb7a6              # double 6.961964
	.quad	0x40116974a3400b89              # double 4.3529840000000002
	.quad	0x401f740357a35504              # double 7.8632939999999998
	.quad	0x4002145308bb9064              # double 2.2599239999999998
	.quad	0x3ffcfbedb7281fda              # double 1.8115060000000001
	.quad	0x401928a0d349be90              # double 6.289676
	.quad	0x401324c7f3493858              # double 4.7859189999999998
	.quad	0x3fe104790b849881              # double 0.53179600000000005
	.quad	0x40186d3996fa82e8              # double 6.1066649999999996
	.quad	0x401fad19157abb88              # double 7.9190409999999999
	.quad	0x401098487b99d452              # double 4.148714
	.quad	0x3fdb2541d8e86402              # double 0.424149
	.quad	0x401da0ef566490a3              # double 7.4071629999999997
	.quad	0x402090f01fb82c2c              # double 8.2830820000000002
	.quad	0x401b89a30984e400              # double 6.8844110000000001
	.quad	0x4023d1af9ebe9c88              # double 9.9095429999999993
	.quad	0x3fff98eb8950763a              # double 1.974834
	.quad	0x3ffe17ff9b56323c              # double 1.8808590000000001
	.quad	0x40156fcd24e160d9              # double 5.3591810000000004
	.quad	0x402100954a7f8013              # double 8.5011390000000002
	.quad	0x3fd1003254e6e222              # double 0.26563700000000001
	.quad	0x401d2c7192ea52f0              # double 7.2934020000000004
	.quad	0x4016e5ed4a1ad645              # double 5.7245379999999999
	.quad	0x4020d2d98bf7f067              # double 8.411816
	.quad	0x400a0558ea7ce0fc              # double 3.2526109999999999
	.quad	0x4017ba4228997c3d              # double 5.9318929999999996
	.quad	0x400a75f99c38b04b              # double 3.3076050000000001
	.quad	0x40132a2f48c2e771              # double 4.7911960000000002
	.quad	0x40156d5fdcdf6988              # double 5.3568110000000004
	.quad	0x3ffeefe82517e77d              # double 1.9335709999999999
	.quad	0x4008d5e071c53f3a              # double 3.1044320000000001
	.quad	0x3ffc0ecc814d727a              # double 1.7536130000000001
	.quad	0x4017ac03bc4d22c9              # double 5.9179830000000004
	.quad	0x401453f077ccc038              # double 5.0819720000000004
	.quad	0x3fb02f2f9873ffac              # double 0.063219999999999998
	.quad	0x401a88f1d3ed527e              # double 6.6337349999999997
	.quad	0x40097fdd65a14489              # double 3.1874340000000001
	.quad	0x3feec42e9899bf59              # double 0.96144799999999996
	.quad	0x3fe4c1bfbdf090f7              # double 0.64865099999999998
	.quad	0x40205e27bf61aa3f              # double 8.183897
	.quad	0x3fc9e1c15097c808              # double 0.20220199999999999
	.quad	0x40162f5cf2495e18              # double 5.5462530000000001
	.quad	0x40213a398201cd60              # double 8.6137200000000007
	.quad	0x40226a53b8e4b87c              # double 9.2076700000000002
	.quad	0x40159efc371da37f              # double 5.405259
	.quad	0x4011722ab25b317f              # double 4.361491
	.quad	0x40110e62dc6e2a80              # double 4.264049
	.quad	0x400eb93ff25e56cd              # double 3.8404539999999998
	.quad	0x401cc02d9cf13cef              # double 7.1876740000000003
	.quad	0x400de1e2de870974              # double 3.7352959999999999
	.quad	0x4023fd7eaa2a0a96              # double 9.9951070000000009
	.quad	0x4020c7a0b5ed8d37              # double 8.3898980000000005
	.quad	0x3fb66cf41f212d77              # double 0.087599999999999997
	.quad	0x4020573d5bab2181              # double 8.1703899999999994
	.quad	0x3f88c9752977c88e              # double 0.012102999999999999
	.quad	0x4013465f5275ee9a              # double 4.8187230000000003
	.quad	0x400451d14e3bcd36              # double 2.5399500000000002
	.quad	0x4015462845996745              # double 5.3185130000000003
	.quad	0x400e49d0635a426c              # double 3.7860420000000001
	.quad	0x401e084e831ad213              # double 7.5081119999999996
	.quad	0x401b600000000000              # double 6.84375
	.quad	0x40118c9cd3e0bd45              # double 4.3873170000000004
	.quad	0x3ff7b4b1ee243569              # double 1.4816149999999999
	.quad	0x401cc897e996312f              # double 7.1958919999999997
	.quad	0x40238f8183f91e64              # double 9.7802849999999992
	.quad	0x40106a7c5ac471b4              # double 4.1039899999999996
	.quad	0x40189f3e0370cdc8              # double 6.1555099999999996
	.quad	0x400aaf26aec0724b              # double 3.3355229999999998
	.quad	0x4013ff0cbaf965b2              # double 4.999072
	.quad	0x3fe2c09c3ce2089e              # double 0.58601199999999998
	.quad	0x4016bfc504816f00              # double 5.6872749999999996
	.quad	0x402276a209aaa3ad              # double 9.2317049999999998
	.quad	0x402292ac753e707e              # double 9.2864719999999998
	.quad	0x3ff687304039abf3              # double 1.408005
	.quad	0x3ff1e74afd545415              # double 1.118968
	.quad	0x401daf54d1e96c40              # double 7.4212220000000002
	.quad	0x3ff987c30d306a2b              # double 1.595645
	.quad	0x401b8980f55de58e              # double 6.8842809999999997
	.quad	0x3ff74b1ab0856e69              # double 1.4558359999999999
	.quad	0x4011fa1be2b4959e              # double 4.4942469999999997
	.quad	0x400b6bebe1650a46              # double 3.4276960000000001
	.quad	0x4020d904f6dfc5ce              # double 8.4238660000000003
	.quad	0x40212dc4c9c90c4e              # double 8.5893920000000001
	.quad	0x4023bb4edb2f661f              # double 9.8658359999999998
	.quad	0x4019b27b2cc70868              # double 6.4242980000000003
	.quad	0x3fe723a6ce358299              # double 0.72310200000000002
	.quad	0x400adad2135daad6              # double 3.356846
	.quad	0x401a6ce5b4245f5b              # double 6.6063450000000001
	.quad	0x3ff8676fb09203a3              # double 1.525253
	.quad	0x402243124d099e0e              # double 9.1309989999999992
	.quad	0x40183436b8f9b131              # double 6.0509899999999996
	.quad	0x40234e922d948dc1              # double 9.6534589999999997
	.quad	0x4023d5ee99a62ed3              # double 9.9178359999999994
	.quad	0x40191415b1422ccb              # double 6.2696139999999998
	.quad	0x40134aed99cbee80              # double 4.8231719999999996
	.quad	0x401b19fba450acc1              # double 6.7753740000000002
	.quad	0x40204e5300581494              # double 8.1529769999999999
	.quad	0x40212055fbb517a4              # double 8.5631559999999993
	.quad	0x4005403e63e8dda5              # double 2.6563690000000002
	.quad	0x401be46c764adff8              # double 6.9730699999999999
	.quad	0x4022c6f75d9a0f0a              # double 9.3886059999999993
	.quad	0x4007dfa333764f12              # double 2.9841980000000001
	.quad	0x3fd71c9f72f76e61              # double 0.361122
	.quad	0x401bb8abd5dc4007              # double 6.9303429999999997
	.quad	0x40124cb1897a67a5              # double 4.5748959999999999
	.quad	0x3ff1b24b76f6d762              # double 1.1060289999999999
	.quad	0x401b2e56473471f8              # double 6.7952510000000004
	.quad	0x401046a37ac3eb7d              # double 4.0689830000000002
	.quad	0x4018433ebbfd71b0              # double 6.0656689999999998
	.quad	0x40110d02cd39da16              # double 4.2627059999999997
	.quad	0x401c5893b7d84902              # double 7.0865010000000002
	.quad	0x40050de54b48d3ae              # double 2.6317849999999998
	.quad	0x4012d9d7774aba38              # double 4.7127359999999996
	.quad	0x402365aad601ffb5              # double 9.6985690000000008
	.quad	0x3ffd769984a0e411              # double 1.8414550000000001
	.quad	0x4012512cf0f9d2bf              # double 4.5792729999999997
	.quad	0x400cc472c0e7bc3c              # double 3.5959219999999998
	.quad	0x3ffbecb10342aa9f              # double 1.7452859999999999
	.quad	0x40068fe260b2c83f              # double 2.8202560000000001
	.quad	0x40143c158fb43d8a              # double 5.0586760000000002
	.quad	0x4018ac47a17f4129              # double 6.1682420000000002
	.quad	0x4015244aa53fc009              # double 5.2854409999999996
	.quad	0x40210f31f46ed246              # double 8.5296780000000005
	.quad	0x4018a2135daad602              # double 6.158277
	.quad	0x3fec1c17225b749b              # double 0.87842900000000002
	.quad	0x4015c5e2cdc011d3              # double 5.4432479999999996
	.quad	0x400b7d3ed527e521              # double 3.4361549999999998
	.quad	0x401b58194c016052              # double 6.8360339999999997
	.quad	0x4010ac43f5f91601              # double 4.168228
	.quad	0x401445321e603d57              # double 5.0675739999999996
	.quad	0x4012b5350092ccf7              # double 4.6769600000000002
	.quad	0x3fec44998d045fe1              # double 0.88337399999999999
	.quad	0x401391b1d92b7fe1              # double 4.8922800000000004
	.quad	0x4003e01797cc3a00              # double 2.4844200000000001
	.quad	0x4015c16df3f96180              # double 5.4388959999999997
	.quad	0x3ff36351deefe500              # double 1.211748
	.quad	0x401015ea24cc6823              # double 4.021401
	.quad	0x3ff423baba7b9171              # double 1.258723
	.quad	0x4017ae008e9b38d6              # double 5.919924
	.quad	0x4006133b10774688              # double 2.7593899999999998
	.quad	0x40113d50ebaade65              # double 4.3098789999999996
	.quad	0x40006a11ec918e32              # double 2.0517919999999998
	.quad	0x4018c54b8bef8ceb              # double 6.1926709999999998
	.quad	0x4004105857afea3e              # double 2.507981
	.quad	0x401b38f57f737da6              # double 6.8056239999999999
	.quad	0x4011ca5df2239e6b              # double 4.4476240000000002
	.quad	0x40151883fd502257              # double 5.2739409999999998
	.quad	0x4012bd5454152b0a              # double 4.6848919999999996
	.quad	0x40163a033e78e193              # double 5.5566529999999998
	.quad	0x4015257e670e2c13              # double 5.2866150000000003
	.quad	0x401b5f401c4fc1df              # double 6.8430179999999998
	.quad	0x4011a9c6b0531983              # double 4.4157970000000004
	.quad	0x4021f44a4095f245              # double 8.9771289999999997
	.quad	0x4021bfc2224edf61              # double 8.8745279999999998
	.quad	0x401cf0b0af5fd47c              # double 7.2350490000000001
	.quad	0x401779b13165d399              # double 5.8688399999999996
	.quad	0x4013e7574f722e1b              # double 4.9759190000000002
	.quad	0x401c8858bc59b802              # double 7.1331509999999998
	.quad	0x402114dc443914f5              # double 8.5407430000000009
	.quad	0x3fdb8d045fe11127              # double 0.43048199999999998
	.quad	0x3fcdaa1511dffc54              # double 0.23175299999999999
	.quad	0x3fdf528283d35eb7              # double 0.48941099999999998
	.quad	0x4015083e8576cce6              # double 5.258051
	.quad	0x401a269df97aaac1              # double 6.537712
	.quad	0x40233c96aad1d042              # double 9.6183370000000004
	.quad	0x401d77314ca925ff              # double 7.3663990000000004
	.quad	0x4019731fcd24e161              # double 6.3624260000000001
	.quad	0x3fddcebbba55d1c4              # double 0.46574300000000002
	.quad	0x400a2e9ab29e4d5e              # double 3.2727560000000002
	.quad	0x400f16c1e364bec6              # double 3.8861119999999998
	.quad	0x401e475147f13059              # double 7.5696459999999996
	.quad	0x4012454ac29bf163              # double 4.5676680000000003
	.quad	0x40117577d955714c              # double 4.3647150000000003
	.quad	0x40128b9b66f9335d              # double 4.6363349999999999
	.quad	0x3ffdfc408d8ec95c              # double 1.874085
	.quad	0x40065f72f76e6107              # double 2.7966060000000001
	.quad	0x3facc016052502ef              # double 0.056153000000000002
	.quad	0x40238a376922d949              # double 9.7699540000000002
	.quad	0x401f9eb1c432ca58              # double 7.9049750000000003
	.quad	0x400e120535c9e668              # double 3.7587989999999998
	.quad	0x402361a3d2d87f88              # double 9.6907029999999991
	.quad	0x400b2b630a91537a              # double 3.396185
	.quad	0x4020c70e2c12ad82              # double 8.3887800000000006
	.quad	0x40140e1049235f81              # double 5.0137340000000004
	.quad	0x401e99008205ff1e              # double 7.6494160000000004
	.quad	0x3ff90331e3a7daa5              # double 1.56328
	.quad	0x40213a1294573a79              # double 8.6134229999999992
	.quad	0x40176b524399b2c4              # double 5.854806
	.quad	0x40006429e0a41a26              # double 2.048908
	.quad	0x402209c779a6b50b              # double 9.0190999999999999
	.quad	0x4008dad2135daad6              # double 3.106846
	.quad	0x3fff7d06bbdbe3c1              # double 1.968024
	.quad	0x4021a5d13d74d595              # double 8.8238620000000001
	.quad	0x3feda1ea35935fc4              # double 0.92601500000000003
	.quad	0x401fcffac1d29dc7              # double 7.9531049999999998
	.quad	0x401eb548ecd8dbcf              # double 7.6770360000000001
	.quad	0x3fc10635a426bb56              # double 0.13300200000000001
	.quad	0x3fce6bce8533b107              # double 0.23766499999999999
	.quad	0x4003a7b139c94f6a              # double 2.4568810000000001
	.quad	0x4021a0e6afcce1c6              # double 8.8142600000000009
	.quad	0x40218fc2eba27aea              # double 8.7807840000000006
	.quad	0x401875dfa871a3b1              # double 6.1151109999999997
	.quad	0x40218db035bd512f              # double 8.7767350000000004
	.quad	0x4012338e6d15ad10              # double 4.5503479999999996
	.quad	0x4015dc77574f722e              # double 5.4652989999999999
	.quad	0x4010980ecfa69be1              # double 4.1484940000000003
	.quad	0x3fe68fc504816f00              # double 0.70504999999999995
	.quad	0x3fffc41355475a32              # double 1.9853700000000001
	.quad	0x4002335b0bbf50e3              # double 2.2750759999999999
	.quad	0x400e1a294141e9af              # double 3.7627739999999998
	.quad	0x4020b93fd0d0678c              # double 8.3618149999999999
	.quad	0x4021a504a2fcefaa              # double 8.8223009999999995
	.quad	0x4023b75a1016ce79              # double 9.8581090000000006
	.quad	0x3ff84acd184c2720              # double 1.518262
	.quad	0x40225c0724b76f6d              # double 9.1797419999999992
	.quad	0x400b03ea704bc276              # double 3.3769119999999999
	.quad	0x3fe7fc06e19b90eb              # double 0.74951500000000004
	.quad	0x40229d536933a040              # double 9.3072769999999991
	.quad	0x401ce2977c88e79b              # double 7.2212810000000003
	.quad	0x3ff4675ff609dcf9              # double 1.2752380000000001
	.quad	0x4011cdc8323358f3              # double 4.4509590000000001
	.quad	0x4002fd48cb4aec8d              # double 2.3736739999999998
	.quad	0x3fe2f7c45cbbc2b9              # double 0.59274499999999997
	.quad	0x4011edf7a4e7ab75              # double 4.4823899999999997
	.quad	0x3f8940789613d31c              # double 0.012330000000000001
	.quad	0x400b25614df8b157              # double 3.3932519999999999
	.quad	0x3fd444e0daa0cae6              # double 0.31670399999999999
	.quad	0x4021eaa369fcf3dc              # double 8.9582779999999999
	.quad	0x40223e48626f60e1              # double 9.1216460000000001
	.quad	0x3ff8ab2074ea8da8              # double 1.541779
	.quad	0x4010b743201040c0              # double 4.1789670000000001
	.quad	0x3fef07f88765ba6f              # double 0.969723
	.quad	0x3f967168f8e7ddca              # double 0.021916999999999999
	.quad	0x3ffcc37d63022dd8              # double 1.7977270000000001
	.quad	0x3fe60767d34df04e              # double 0.68840400000000002
	.quad	0x4022e9ee45c358b0              # double 9.4568960000000004
	.quad	0x400cff98b71b8aa0              # double 3.624803
	.quad	0x3ff729e5e2478855              # double 1.447729
	.quad	0x400026d71f36262d              # double 2.0189650000000001
	.quad	0x3ffcd59c49774257              # double 1.8021510000000001
	.quad	0x4023489528f190d1              # double 9.6417629999999991
	.quad	0x4012e4528283d35f              # double 4.7229710000000003
	.quad	0x40235d0bd87b56b8              # double 9.6817309999999991
	.quad	0x401fefed20296b33              # double 7.9843029999999997
	.quad	0x401f06bbdbe3c105              # double 7.7565759999999999
	.quad	0x4007ae4c0df58c09              # double 2.9601060000000001
	.quad	0x4008d7f0ed3d859d              # double 3.1054400000000002
	.quad	0x401a93d96638433d              # double 6.6443839999999996
	.quad	0x3ffb74b72c5197a2              # double 1.7159949999999999
	.quad	0x3ffc2e8af81626b3              # double 1.761363
	.quad	0x401ab796bfca85cb              # double 6.6792860000000003
	.quad	0x4002e9b845564b66              # double 2.3641209999999999
	.quad	0x3ff3451654d61b2a              # double 1.204367
	.quad	0x401cd857f3061c7a              # double 7.2112730000000003
	.quad	0x3ff3c4cdfaca361a              # double 1.2355480000000001
	.quad	0x3ff779389b52007e              # double 1.467095
	.quad	0x3ff8266fd651b0cd              # double 1.5093840000000001
	.quad	0x4019fac57e23f24e              # double 6.4948940000000004
	.quad	0x40138d9be4cd7492              # double 4.8882899999999996
	.quad	0x3ff8000000000000              # double 1.5
	.quad	0x40227cd35a858794              # double 9.2438000000000002
	.quad	0x3ffe36b4c7f34938              # double 1.8883559999999999
	.quad	0x401a8af102363b25              # double 6.6356849999999996
	.quad	0x40027accd530489d              # double 2.3099609999999999
	.quad	0x4021ed1e75360d02              # double 8.9631229999999995
	.quad	0x40222f5cf2495e18              # double 9.0925060000000002
	.quad	0x3fceffb8b26394fb              # double 0.24217900000000001
	.quad	0x400d8ec39799e519              # double 3.694709
	.quad	0x4016cdaa92e62132              # double 5.7008460000000003
	.quad	0x4014e92fb19e731d              # double 5.2277209999999998
	.quad	0x4001966c6de76428              # double 2.1984490000000001
	.quad	0x401971cef240fa9c              # double 6.3611409999999999
	.quad	0x3fda2ba9d1f60179              # double 0.40891499999999997
	.quad	0x4014d743e963dc48              # double 5.2102199999999996
	.quad	0x401e964f11b60ae9              # double 7.6467859999999996
	.quad	0x40223e744b2b777d              # double 9.1219809999999999
	.quad	0x4023d75c0767d34e              # double 9.9206240000000001
	.quad	0x4014abe6e6538690              # double 5.1678730000000002
	.quad	0x401aecf13cee9dd8              # double 6.7313890000000001
	.quad	0x3ffa3d3910c2c5e3              # double 1.639947
	.quad	0x3fe3dea033e78e19              # double 0.62092599999999998
	.quad	0x4001d2ba9d1f6018              # double 2.2278950000000002
	.quad	0x4023ae019b0ab2e1              # double 9.8398559999999992
	.quad	0x40220963baba7b91              # double 9.0183389999999992
	.quad	0x40230a6e5471715c              # double 9.5203729999999993
	.quad	0x40145999dcb5781c              # double 5.0875009999999996
	.quad	0x401e3ab14ec204f3              # double 7.5573170000000002
	.quad	0x40188ddebd9018e7              # double 6.1385449999999997
	.quad	0x3ffb58201cd5f99c              # double 1.709015
	.quad	0x401fb0c38f366949              # double 7.9226210000000003
	.quad	0x40161ed02cd39da1              # double 5.5300909999999996
	.quad	0x401665cc426351df              # double 5.5994120000000001
	.quad	0x400c7fe542e557de              # double 3.562449
	.quad	0x401e528954a7f801              # double 7.5806019999999998
	.quad	0x4022ebb906466b1e              # double 9.4603959999999994
	.quad	0x402239cb252ce033              # double 9.1128780000000003
	.quad	0x401be4a8c154c986              # double 6.9733000000000001
	.quad	0x3fceffc115df6556              # double 0.24218000000000001
	.quad	0x40037903a7546d40              # double 2.4340890000000002
	.quad	0x3fb7fd1dcd7060bb              # double 0.093705999999999998
	.quad	0x4002ae2328f9f44d              # double 2.3350279999999999
	.quad	0x4016d0d3cff64cf9              # double 5.7039330000000001
	.quad	0x4016e30f49491f2e              # double 5.7217380000000002
	.quad	0x400059b8887229e9              # double 2.043809
	.quad	0x401a6bd61f5be5da              # double 6.6053090000000001
	.quad	0x4021d7b5d031055c              # double 8.9213090000000008
	.quad	0x40036102ff8ec0f9              # double 2.4223690000000002
	.quad	0x400dbabf33871609              # double 3.7161849999999998
	.quad	0x40011d4a5df2239e              # double 2.1393019999999998
	.quad	0x40117b2d4d4024b3              # double 4.3702899999999998
	.quad	0x402163bb1f255f35              # double 8.6947869999999998
	.quad	0x40214ea37ac3eb7d              # double 8.6535910000000005
	.quad	0x4023c46f9b994e1a              # double 9.8836639999999996
	.quad	0x401a1e7a743a6480              # double 6.5297640000000001
	.quad	0x3fed89b738e6d15b              # double 0.92306100000000002
	.quad	0x401a2b3bb83cf2d0              # double 6.5422200000000004
	.quad	0x401dc4ccee5abc0e              # double 7.4421879999999998
	.quad	0x400bb583a53b8e4c              # double 3.4636300000000002
	.quad	0x4023d72f33ca31e8              # double 9.9202820000000002
	.quad	0x4003cdd93c46d82c              # double 2.4755120000000002
	.quad	0x40182f633ce63a5c              # double 6.0462769999999999
	.quad	0x40114733a8a3f898              # double 4.3195329999999998
	.quad	0x4013ac96030c23fb              # double 4.9185410000000003
	.quad	0x400428c9320d9946              # double 2.5199150000000001
	.quad	0x4004adcfcc5b8dc5              # double 2.5848689999999999
	.quad	0x3fe604988094e5d6              # double 0.68806100000000003
	.quad	0x401b32bae03b3e9a              # double 6.7995409999999996
	.quad	0x401a7d783dff3f10              # double 6.6225290000000001
	.quad	0x402257b9389b5200              # double 9.1713349999999991
	.quad	0x3fe4747304039abf              # double 0.63921499999999998
	.quad	0x4010bc011d3671ac              # double 4.1835979999999999
	.quad	0x402003a53b8e4b88              # double 8.0071200000000005
	.quad	0x3fe162435696e58a              # double 0.54324499999999998
	.quad	0x400b06f0cfe15443              # double 3.3783889999999999
	.quad	0x400b3e6149c6f36f              # double 3.405459
	.quad	0x3ff6ed0917d6b65b              # double 1.4328700000000001
	.quad	0x401e7f74cd31769b              # double 7.6244690000000003
	.quad	0x3ff6779d909f1f15              # double 1.4042030000000001
	.quad	0x400de5119ce075f7              # double 3.73685
	.quad	0x4005eb838c111ada              # double 2.7399969999999998
	.quad	0x3fe94e13f4a98aa8              # double 0.79078099999999996
	.quad	0x3f9f20ea5b530ced              # double 0.030398999999999999
	.quad	0x4018fc88a47ecfea              # double 6.2466150000000003
	.quad	0x401a9a09cc319c5a              # double 6.6504279999999998
	.quad	0x4010892e62131a8f              # double 4.133966
	.quad	0x40231b630a91537a              # double 9.55349
	.quad	0x401243e8576cce5f              # double 4.5663159999999996
	.quad	0x40209ace032db1ea              # double 8.3023530000000001
	.quad	0x3febfb97bb730835              # double 0.87446199999999996
	.quad	0x40146caa326e1156              # double 5.1061180000000004
	.quad	0x4020de696a26e547              # double 8.4343979999999998
	.quad	0x40214638c9752978              # double 8.6371520000000004
	.quad	0x3fe2ec0d6f544bb2              # double 0.59131500000000004
	.quad	0x4003dd36f7e3d1cc              # double 2.483015
	.quad	0x4022add41fa76534              # double 9.3395089999999996
	.quad	0x401cb409a2403148              # double 7.1758179999999996
	.quad	0x3ff525aab4741073              # double 1.321696
	.quad	0x40144476f2a5a46a              # double 5.0668600000000001
	.quad	0x4022730af5fd47bf              # double 9.2246930000000003
	.quad	0x3ff82bfdb4cc2507              # double 1.51074
	.quad	0x401bd5c39bcba301              # double 6.9587539999999999
	.quad	0x401f2d883ba3443d              # double 7.7944649999999997
	.quad	0x4001bda48b652370              # double 2.2175989999999999
	.quad	0x400bdb4a2339c0ec              # double 3.482075
	.quad	0x400c969b9d7fd827              # double 3.5735389999999998
	.quad	0x40124b395c422036              # double 4.573461
	.quad	0x40145ec743201041              # double 5.0925570000000002
	.quad	0x4003881b21c475e6              # double 2.4414579999999999
	.quad	0x4013fb4a2339c0ec              # double 4.9954000000000001
	.quad	0x4007d805e5f30e80              # double 2.98048
	.quad	0x4002898f605ab3ab              # double 2.3171680000000001
	.quad	0x401fac64fdb09a67              # double 7.9183539999999998
	.quad	0x3ffed988d2a1f8e4              # double 1.9281090000000001
	.quad	0x40193d2d87f88766              # double 6.3097440000000002
	.quad	0x4004a2a23bff8a8f              # double 2.5794109999999999
	.quad	0x3fff3780346dc5d6              # double 1.95105
	.quad	0x401a359253543aeb              # double 6.5523160000000003
	.quad	0x3ff36f1fddebd902              # double 1.2146300000000001
	.quad	0x40172c98a222d517              # double 5.7935509999999999
	.quad	0x3fe8e7125dd095af              # double 0.77820699999999998
	.quad	0x40162eaf251c193b              # double 5.5455899999999998
	.quad	0x4019b8533b107747              # double 6.4300050000000004
	.quad	0x401c79420b3d4ae4              # double 7.1184159999999999
	.quad	0x401a3a3e39f77293              # double 6.5568780000000002
	.quad	0x400d519bd4067cf2              # double 3.6648480000000001
	.quad	0x401f52c01e68a0d3              # double 7.8308109999999997
	.quad	0x40142334c5da6a44              # double 5.0343809999999998
	.quad	0x401f23b3636f3b21              # double 7.7848639999999997
	.quad	0x3ff1dd084e831ad2              # double 1.116463
	.quad	0x4023d6e02a77a2cf              # double 9.9196790000000003
	.quad	0x4016e124d099e0e7              # double 5.7198669999999998
	.quad	0x40189585be1a8262              # double 6.1460179999999998
	.quad	0x400e182f51266341              # double 3.761809
	.quad	0x401e816d2aa5c5f8              # double 7.6263930000000001
	.quad	0x3ff238bac710cb29              # double 1.1388499999999999
	.quad	0x4022af8f8a4c1ebd              # double 9.3428920000000009
	.quad	0x40201a2f6a50d6b2              # double 8.0511429999999997
	.quad	0x4009ca172abef06b              # double 3.2236769999999999
	.quad	0x401bff37329c347f              # double 6.9992340000000004
	.quad	0x401165e84f09528f              # double 4.3495189999999999
	.quad	0x3fffa9cfdd228566              # double 1.978958
	.quad	0x400c7474107314cb              # double 3.5568620000000002
	.quad	0x401e6393682730c6              # double 7.5972419999999996
	.quad	0x402279da9c99285b              # double 9.2379960000000008
	.quad	0x401c0eb91b3f20a7              # double 7.0143779999999998
	.quad	0x400d2258d5842b73              # double 3.6417709999999999
	.quad	0x401bf954eb13dfb1              # double 6.9934880000000001
	.quad	0x40070be8bc169c24              # double 2.8808150000000001
	.quad	0x4013a2ee84ad794a              # double 4.9091129999999996
	.quad	0x401f6eba6aca7935              # double 7.8581329999999995
	.quad	0x3ff54621b7e0ac7e              # double 1.3296220000000001
	.quad	0x401e5e4bcad9ad86              # double 7.5920860000000001
	.quad	0x3ff4f21815a07b35              # double 1.309105
	.quad	0x40204ce50c5eb314              # double 8.1501850000000004
	.quad	0x401401c68ec52a41              # double 5.0017339999999999
	.quad	0x4001e916ca46e08f              # double 2.2388129999999999
	.quad	0x402322ea52ef911d              # double 9.568194
	.quad	0x4010b817763e4abe              # double 4.1797769999999996
	.quad	0x400a955714b9cb68              # double 3.3229199999999999
	.quad	0x401f1b33daf8df7a              # double 7.7765649999999997
	.quad	0x40176ca5375c8da0              # double 5.8560990000000004
	.quad	0x3ff7d7c2ca148ba8              # double 1.4901759999999999
	.quad	0x4017caf3a14cec42              # double 5.9481950000000001
	.quad	0x401aa93ff25e56cd              # double 6.6652829999999996
	.quad	0x3fc46149c6f36ef8              # double 0.159219
	.quad	0x402220dcb9a9da59              # double 9.0641839999999991
	.quad	0x400b13e89a88ace2              # double 3.3847209999999999
	.quad	0x40219b2788db0575              # double 8.8030360000000005
	.quad	0x3fb28a82a5614df9              # double 0.072426000000000004
	.quad	0x40220957eed45e92              # double 9.0182490000000008
	.quad	0x40126148fd9fd36f              # double 4.5950049999999996
	.quad	0x3ff004ef88b97785              # double 1.0012049999999999
	.quad	0x400f530728e92d56              # double 3.9155410000000002
	.quad	0x3ff8701eabbcb1cd              # double 1.5273730000000001
	.quad	0x402166115592d98c              # double 8.699351
	.quad	0x400f28893b7d8490              # double 3.8947929999999999
	.quad	0x3fd9fa26a22b3893              # double 0.405893
	.quad	0x4009010f94c87981              # double 3.125518
	.quad	0x4003c83b1d0c8041              # double 2.472769
	.quad	0x400eec5b078d92fb              # double 3.865408
	.quad	0x4011f564302b40f6              # double 4.4896399999999996
	.quad	0x402228f5c28f5c29              # double 9.0800000000000001
	.quad	0x40035a2df9378ee3              # double 2.4190330000000002
	.quad	0x3fe0a925fe974a34              # double 0.520648
	.quad	0x4020097a89331a09              # double 8.0185130000000004
	.quad	0x401035b1422ccb3a              # double 4.0524339999999999
	.quad	0x4020aea747d805e6              # double 8.3411200000000001
	.quad	0x4021e3c558644524              # double 8.944865
	.quad	0x401e9b2031ceaf25              # double 7.6514899999999999
	.quad	0x4017ce27e0ef9980              # double 5.9513239999999996
	.quad	0x4005398958d9b5e9              # double 2.6530939999999998
	.quad	0x401a4c2e770bd018              # double 6.5743960000000001
	.quad	0x4022fac8e68e3ef3              # double 9.4898140000000008
	.quad	0x400205c78a6dacac              # double 2.2528220000000001
	.quad	0x40117b4aec8d5c74              # double 4.3704029999999996
	.quad	0x4016883621fafc8b              # double 5.633019
	.quad	0x4021ea73f748a15a              # double 8.9579160000000009
	.quad	0x400b073a365cb35f              # double 3.3785289999999999
	.quad	0x4010f925fe974a34              # double 4.243309
	.quad	0x4012acb1cc964628              # double 4.668647
	.quad	0x400d98d9b5e95b79              # double 3.6996340000000001
	.quad	0x4018e2f3c2dadb83              # double 6.2216329999999997
	.quad	0x401562ecaeea63b7              # double 5.3466060000000004
	.quad	0x401b5791c4b90215              # double 6.8355170000000003
	.quad	0x401ab2f944241c3f              # double 6.674779
	.quad	0x4023f6e1deacc921              # double 9.9821919999999995
	.quad	0x4005af3d3a1d3240              # double 2.710566
	.quad	0x401bc001d5c31594              # double 6.9375070000000001
	.quad	0x401518305d95dd4c              # double 5.2736219999999996
	.quad	0x40208879c4113c68              # double 8.2665539999999993
	.quad	0x401c72595bbbe879              # double 7.111669
	.quad	0x4014a317efe0ce0c              # double 5.1592710000000004
	.quad	0x4014e1bda5119ce0              # double 5.2204499999999996
	.quad	0x3fef142d490e66cb              # double 0.97121299999999999
	.quad	0x401e549774256bca              # double 7.5826089999999997
	.quad	0x401b66c7219220ff              # double 6.8503689999999997
	.quad	0x40008a8c154c985f              # double 2.06765
	.quad	0x3ffee24031487768              # double 1.930237
	.quad	0x401ddfed634549b6              # double 7.4686789999999998
	.quad	0x401c5da9003eea21              # double 7.0914650000000004
	.quad	0x4013fcbc05d52c17              # double 4.9968110000000001
	.quad	0x3ff12817763e4abe              # double 1.0722879999999999
	.quad	0x401c2af89c5e6ff8              # double 7.0419640000000001
	.quad	0x40230877ccc03793              # double 9.5165389999999998
	.quad	0x4000f0a2ca9ac365              # double 2.1174979999999999
	.quad	0x4014a86f049a9974              # double 5.1644860000000001
	.quad	0x3ff961975f2cb641              # double 1.5863259999999999
	.quad	0x401db24af0bf1a5d              # double 7.4241140000000003
	.quad	0x40218eb053198288              # double 8.778689
	.quad	0x40231a49a133c1ce              # double 9.5513429999999993
	.quad	0x4012b6f86a098916              # double 4.6786820000000002
	.quad	0x3fd9d2135daad602              # double 0.403447
	.quad	0x3fea6ba6aca79357              # double 0.82564099999999996
	.quad	0x401db999dcb5781c              # double 7.4312509999999996
	.quad	0x40237c15f45e0b4e              # double 9.7423549999999999
	.quad	0x3ff2fc200c0f01fc              # double 1.1865540000000001
	.quad	0x4012ce9f6a93f291              # double 4.7017800000000003
	.quad	0x40155f79420b3d4b              # double 5.3432360000000001
	.quad	0x40160b599aa60914              # double 5.5110840000000003
	.quad	0x401d800bcbe61d00              # double 7.3750450000000001
	.quad	0x3ff71ea897635e74              # double 1.444985
	.quad	0x400c5deb52c9d170              # double 3.5458590000000001
	.quad	0x40057a2ad3e920c0              # double 2.6846519999999998
	.quad	0x4023aef60e0eb67c              # double 9.8417209999999997
	.quad	0x40038a07f66e86c6              # double 2.4423979999999998
	.quad	0x4015b4a1272c94b4              # double 5.4263960000000004
	.quad	0x40231b97353b4b30              # double 9.5538880000000006
	.quad	0x401440fd3b29a1ba              # double 5.063466
	.quad	0x40121f3775b81301              # double 4.5304849999999997
	.quad	0x401fd2617c1bda51              # double 7.9554499999999999
	.quad	0x4012f2a0ec743201              # double 4.736942
	.quad	0x3ff540c8472c0e7c              # double 1.3283160000000001
	.quad	0x401f8582dbe7f2c3              # double 7.8803819999999999
	.quad	0x3ff39a1a93293d10              # double 1.225123
	.quad	0x3ffbb863beec397a              # double 1.7325170000000001
	.quad	0x4003a1fc8f32378b              # double 2.4540950000000001
	.quad	0x3fe3af3e468cac4b              # double 0.61514199999999997
	.quad	0x400c1070fbeb9e49              # double 3.5080279999999999
	.quad	0x4015bc558644523f              # double 5.4339199999999996
	.quad	0x40214539b888722a              # double 8.6352060000000002
	.quad	0x4023e6b5f5f0b285              # double 9.9506069999999997
	.quad	0x4019ab068123810f              # double 6.4170170000000004
	.quad	0x402378d51f81a587              # double 9.7360009999999999
	.quad	0x401062491afc04c9              # double 4.0959820000000002
	.quad	0x3ff33f69014b599b              # double 1.2029810000000001
	.quad	0x402357229e90795f              # double 9.6701859999999992
	.quad	0x4012f634549b62c7              # double 4.7404339999999996
	.quad	0x40157964628027d9              # double 5.3685470000000004
	.quad	0x40134c73abc94706              # double 4.8246599999999997
	.quad	0x40118e414e7ee914              # double 4.3889209999999999
	.quad	0x40200eb0d9513f8e              # double 8.0286930000000005
	.quad	0x402298cfe154434e              # double 9.2984609999999996
	.quad	0x4022e5892684cf07              # double 9.4483119999999995
	.quad	0x4018e6e75ff609dd              # double 6.225492
	.quad	0x4022fb23fee2c98e              # double 9.4905089999999994
	.quad	0x401bbe215336deb9              # double 6.9356739999999997
	.quad	0x400cbe1c15097c81              # double 3.5928270000000002
	.quad	0x40069526d8b1dd5d              # double 2.8228279999999999
	.quad	0x3fea2921ccd96207              # double 0.81752100000000005
	.quad	0x401af55d1c3ac92a              # double 6.7396130000000003
	.quad	0x3fccd2ed783dff3f              # double 0.225187
	.quad	0x40097abead4f5904              # double 3.1849340000000002
	.quad	0x401233586ca89fc7              # double 4.5501420000000001
	.quad	0x401ebf4adbc664d4              # double 7.6868090000000002
	.quad	0x400bc548a9bcfd4c              # double 3.47133
	.quad	0x3fe2978d4fdf3b64              # double 0.58099999999999996
	.quad	0x3fe8627bf61aa3f0              # double 0.76202199999999998
	.quad	0x3ffd094b380cb6c8              # double 1.8147690000000001
	.quad	0x402236fbb0e5e679              # double 9.1073889999999995
	.quad	0x40087e41d4b6a61a              # double 3.0616490000000001
	.quad	0x4018e50ce4ead0c4              # double 6.2236820000000002
	.quad	0x401bd6412cf0f9d3              # double 6.9592330000000002
	.quad	0x4004e44f1a1986ba              # double 2.6114790000000001
	.quad	0x401047329c347e8d              # double 4.0695290000000002
	.quad	0x401bcb30728e92d5              # double 6.9484269999999997
	.quad	0x3ff77393ab430f49              # double 1.4657169999999999
	.quad	0x40108ea2d2fe3f36              # double 4.1392930000000003
	.quad	0x400866ed245b291c              # double 3.0502570000000002
	.quad	0x401b3b395c422036              # double 6.807836
	.quad	0x401f4cfd08d4bad8              # double 7.8251840000000001
	.quad	0x4007eecaeea63b69              # double 2.9915980000000002
	.quad	0x4015ec4f3ba775fb              # double 5.4807709999999998
	.quad	0x3ff8614ad362e903              # double 1.5237529999999999
	.quad	0x401ee0870110a138              # double 7.719265
	.quad	0x40207f7878b7a1c2              # double 8.2489659999999994
	.quad	0x40011c67dfe32a06              # double 2.1388699999999998
	.quad	0x4019b93b7d84901d              # double 6.4308909999999999
	.quad	0x4020c882cf52b90a              # double 8.3916229999999992
	.quad	0x3fdabab21815a07b              # double 0.41764499999999999
	.quad	0x401a566e008e9b39              # double 6.5844040000000001
	.quad	0x401558283d35eb74              # double 5.3360909999999997
	.quad	0x3fc38e5c4eb56fb9              # double 0.152782
	.quad	0x3fec8769ec2ce465              # double 0.89153000000000004
	.quad	0x3ff082de00d1b717              # double 1.0319499999999999
	.quad	0x3fc6ab81f969e3c9              # double 0.17710899999999999
	.quad	0x401507e28240b780              # double 5.2576999999999998
	.quad	0x40102e9f6a93f291              # double 4.0455300000000003
	.quad	0x4000d2bf5515054b              # double 2.1029040000000001
	.quad	0x4021bc84b5dcc63f              # double 8.8681999999999999
	.quad	0x3fec37bd05af6c6a              # double 0.88180400000000003
	.quad	0x401c0b7f5a5332ad              # double 7.011228
	.quad	0x3ff4a687f455a7d2              # double 1.2906569999999999
	.quad	0x40024f52b90a7829              # double 2.288732
	.quad	0x40045e8ab4fa4830              # double 2.546163
	.quad	0x401d9d8409e55c10              # double 7.4038240000000002
	.quad	0x40124269df97aaac              # double 4.5648569999999999
	.quad	0x400637f1f9acffa8              # double 2.777317
	.quad	0x4020e10b417ca212              # double 8.4395389999999999
	.quad	0x4020783eea209aaa              # double 8.2348549999999996
	.quad	0x3ff6cb49e01de269              # double 1.424631
	.quad	0x40235b98e9707182              # double 9.6789009999999998
	.quad	0x4020a0cf1800a7c6              # double 8.3140800000000006
	.quad	0x3fda876e1deacc92              # double 0.414516
	.quad	0x3fe5289fc6da4485              # double 0.66120900000000005
	.quad	0x400f2b9346994185              # double 3.896277
	.quad	0x4015b35610adcd2d              # double 5.4251329999999998
	.quad	0x401c358d9b5e95b8              # double 7.0522980000000004
	.quad	0x401641e0c5a8155d              # double 5.5643339999999997
	.quad	0x40065db65ecc3e32              # double 2.7957580000000002
	.quad	0x4015cb1cc9646280              # double 5.4483519999999999
	.quad	0x4020452849cb252d              # double 8.1350730000000002
	.quad	0x3ffea817763e4abe              # double 1.9160379999999999
	.quad	0x4012693708aac96d              # double 4.6027490000000002
	.quad	0x4004e6b2f23033a4              # double 2.6126459999999998
	.quad	0x40152320535c9e67              # double 5.2843030000000004
	.quad	0x3ff4b5c28f5c28f6              # double 1.2943750000000001
	.quad	0x40172e8576cce5f7              # double 5.7954309999999998
	.quad	0x3ff350abb44e50c6              # double 1.207195
	.quad	0x3ff7c0303c07ee0b              # double 1.484421
	.quad	0x40138d323fee2c99              # double 4.8878870000000001
	.quad	0x40205466d373affb              # double 8.164847
	.quad	0x402289633482be8c              # double 9.2683350000000004
	.quad	0x401685fb71fbc5df              # double 5.6308420000000003
	.quad	0x400612f449129889              # double 2.759255
	.quad	0x401438ede54b48d4              # double 5.0555950000000003
	.quad	0x4011262ed352220c              # double 4.2872880000000002
	.quad	0x4015fb841248d7e0              # double 5.4956209999999999
	.quad	0x400318e864020818              # double 2.387162
	.quad	0x4023dcdf69878317              # double 9.9313920000000006
	.quad	0x4002a8c60cbf2b24              # double 2.3324090000000002
	.quad	0x40185ef177a7008a              # double 6.0927179999999996
	.quad	0x4019348b65237048              # double 6.3013130000000004
	.quad	0x400075970b49e01e              # double 2.0574170000000001
	.quad	0x401f008bb906466b              # double 7.7505329999999998
	.quad	0x401a6e0653005815              # double 6.6074460000000004
	.quad	0x4023f5ba0a526959              # double 9.9799349999999993
	.quad	0x400ac327674d1633              # double 3.3452899999999999
	.quad	0x400cafbd273d5bab              # double 3.5858099999999999
	.quad	0x402297e670e2c12b              # double 9.2966800000000003
	.quad	0x400d89d6adf71eb0              # double 3.692304
	.quad	0x3fb1df43c7d5ed07              # double 0.069813
	.quad	0x401d06dc1a47a9e3              # double 7.2566990000000002
	.quad	0x401a9aa4766c6de7              # double 6.6510179999999997
	.quad	0x40109610adcd2d45              # double 4.1465480000000001
	.quad	0x3ff7fa30121682f9              # double 1.4985809999999999
	.quad	0x40201c447c30d307              # double 8.0552100000000006
	.quad	0x40232d48a9bcfd4c              # double 9.5884450000000001
	.quad	0x4017a4b9884c6a3c              # double 5.9108640000000001
	.quad	0x3fce83c297bfa4c6              # double 0.238396
	.quad	0x401ad8a159817b96              # double 6.7115530000000003
	.quad	0x40134fa4c61d8623              # double 4.8277770000000002
	.quad	0x40126ac2df0d4131              # double 4.6042589999999999
	.quad	0x40210615ebfa8f7e              # double 8.5118860000000005
	.quad	0x402207db2b346131              # double 9.0153440000000007
	.quad	0x4023ec59103c8e26              # double 9.9616170000000004
	.quad	0x40222e18ce2d1f1d              # double 9.090033
	.quad	0x401ea1bf7ad4b274              # double 7.6579569999999997
	.quad	0x4007f2ae07e5a78f              # double 2.9934959999999999
	.quad	0x40094d666a98244f              # double 3.1627930000000002
	.quad	0x40233e8576cce5f7              # double 9.6221119999999995
	.quad	0x4021e294bbe4473d              # double 8.9425410000000003
	.quad	0x40103dfc19c17226              # double 4.0605320000000003
	.quad	0x401247a95c853c15              # double 4.5699820000000004
	.quad	0x401ac0917d6b65aa              # double 6.6880550000000003
	.quad	0x40162efb2aae2974              # double 5.5458800000000004
	.quad	0x401333ebbfd71b04              # double 4.8007039999999996
	.quad	0x4021b227ae9ab29e              # double 8.8479589999999995
	.quad	0x40153bc169c23b79              # double 5.3083549999999997
	.quad	0x40110dd00f776c48              # double 4.2634889999999999
	.quad	0x3ff4eed02cd39da1              # double 1.3083039999999999
	.quad	0x402142d4d4024b34              # double 8.6305300000000002
	.quad	0x3fd44b018611fd59              # double 0.31707800000000003
	.quad	0x4013201f31f46ed2              # double 4.7813689999999998
	.quad	0x40169c853c148345              # double 5.6528520000000002
	.quad	0x40167c254a3c6434              # double 5.6212359999999997
	.quad	0x401ac0ff97247454              # double 6.6884750000000004
	.quad	0x40236f143393ab43              # double 9.7169509999999998
	.quad	0x401ef67f0aa21a72              # double 7.7407190000000003
	.quad	0x401970b88ca3e7d1              # double 6.3600789999999998
	.quad	0x4022a1c7ffde7211              # double 9.3159790000000005
	.quad	0x4020eafaf8594291              # double 8.4589459999999992
	.quad	0x4007b09d8c6d612c              # double 2.9612379999999998
	.quad	0x401faab191dde376              # double 7.9166930000000004
	.quad	0x401775ff609dcf89              # double 5.8652319999999998
	.quad	0x402205bff04577d9              # double 9.0112299999999994
	.quad	0x40223f29f59ccfaf              # double 9.123367
	.quad	0x401a33dddb1209ee              # double 6.5506510000000002
	.quad	0x3ffd617e34b94531              # double 1.8363020000000001
	.quad	0x4022df69ca9ef523              # double 9.4363539999999996
	.quad	0x401436a3bddfca00              # double 5.0533590000000004
	.quad	0x400096c7219220ff              # double 2.0736219999999999
	.quad	0x401bddb8348f53c5              # double 6.9665229999999996
	.quad	0x3ffbf2b12d3415b1              # double 1.7467509999999999
	.quad	0x3fe1183d790752db              # double 0.53420900000000004
	.quad	0x401ec7f0ed3d859d              # double 7.6952550000000004
	.quad	0x401f2c579f234656              # double 7.7933029999999999
	.quad	0x400e2b32ce89656f              # double 3.771093
	.quad	0x40232731098d477c              # double 9.5765460000000004
	.quad	0x4005dc8a7a41e57e              # double 2.7326860000000002
	.quad	0x40212340f66a5508              # double 8.5688549999999992
	.quad	0x3ff8afa93af74cd3              # double 1.542886
	.quad	0x3fed469b5a63f9a5              # double 0.91486900000000004
	.quad	0x40110f31f46ed246              # double 4.2648390000000003
	.quad	0x40219fd8cf398e97              # double 8.812201
	.quad	0x3ff323dc486ad2dd              # double 1.1962550000000001
	.quad	0x401152014727dcbe              # double 4.3300830000000001
	.quad	0x4020d9a60d4562e1              # double 8.4250950000000007
	.quad	0x4012e112ba16e7a3              # double 4.7197979999999999
	.quad	0x4012d2ef911cf356              # double 4.7059920000000002
	.quad	0x401949ee02a77a2d              # double 6.3221970000000001
	.quad	0x40104ff3f0fe047d              # double 4.0780789999999998
	.quad	0x4013697353b4b2fb              # double 4.8529790000000004
	.quad	0x4001146887a8d64d              # double 2.1349649999999998
	.quad	0x4019f23a29c779a7              # double 6.4865500000000003
	.quad	0x4020f74ddf86e3b4              # double 8.4830159999999992
	.quad	0x40006b474107314d              # double 2.0523820000000002
	.quad	0x401c5c2b51bd61f6              # double 7.0900090000000002
	.quad	0x4004ea8b8f14db59              # double 2.6145239999999998
	.quad	0x4021edb59578a2a9              # double 8.9642759999999999
	.quad	0x40196dfdef8487ba              # double 6.3574140000000003
	.quad	0x3fc4921ccd962068              # double 0.16070899999999999
	.quad	0x4010393dd97f62b7              # double 4.0559000000000003
	.quad	0x40223aa9b499d020              # double 9.1145759999999996
	.quad	0x4015b512a94ff002              # double 5.4268289999999997
	.quad	0x4019a2f0e0a84be4              # double 6.409122
	.quad	0x401b929bf162ae4b              # double 6.893173
	.quad	0x400d5dc93ea2d2fe              # double 3.6707939999999999
	.quad	0x40219c4806290eed              # double 8.805237
	.quad	0x4020e4f7caa7589f              # double 8.447203
	.quad	0x4008a5d4a5df223a              # double 3.080972
	.quad	0x40143f3c70c996b7              # double 5.0617539999999996
	.quad	0x4015723e5b8561d4              # double 5.3615659999999998
	.quad	0x40156c66d373affb              # double 5.355861
	.quad	0x402383445ed4a1ad              # double 9.7563809999999993
	.quad	0x40183e8815e39714              # double 6.0610660000000003
	.quad	0x4022ea459103c8e2              # double 9.4575619999999994
	.quad	0x40004698bb4d4888              # double 2.0344709999999999
	.quad	0x401b172de43ed95a              # double 6.7726360000000003
	.quad	0x40129250f840181e              # double 4.642887
	.quad	0x3fe4bda0dfdef848              # double 0.64814799999999995
	.quad	0x3ff90a1f080303c0              # double 1.5649709999999999
	.quad	0x4020bc77ff151e75              # double 8.3681029999999996
	.quad	0x401e2b7bf1e8e608              # double 7.5424649999999999
	.quad	0x400cd6a1e81cb46c              # double 3.6048010000000001
	.quad	0x3ff4b1eafee6fb4c              # double 1.2934369999999999
	.quad	0x4017c99392189bd8              # double 5.9468519999999998
	.quad	0x40116764f11b60af              # double 4.3509710000000004
	.quad	0x400928438088509c              # double 3.14466
	.quad	0x3ff9d34373f316e3              # double 1.6140779999999999
	.quad	0x401a46d549731099              # double 6.5691730000000002
	.quad	0x3fed8a5269595fee              # double 0.92313500000000004
	.quad	0x40200d8750c1b973              # double 8.0264229999999994
	.quad	0x401ced89ce4a7b4e              # double 7.2319709999999997
	.quad	0x3fc5d8d79d0a6762              # double 0.17068
	.quad	0x401f2049235f8099              # double 7.7815289999999999
	.quad	0x4020955821294574              # double 8.2916880000000006
	.quad	0x400a590a7829068a              # double 3.2934770000000002
	.quad	0x3ff5bfef39085f4a              # double 1.359359
	.quad	0x401d734d6a161e4f              # double 7.3625999999999996
	.quad	0x402074d1e96c3fc4              # double 8.2281639999999995
	.quad	0x401f89df1172ef0b              # double 7.88464
	.quad	0x4019a72606fac604              # double 6.4132309999999997
	.quad	0x401b71b003686a4d              # double 6.8610230000000003
	.quad	0x401fd2c94b380cb7              # double 7.9558460000000001
	.quad	0x4009a95faa8a82a5              # double 3.2077019999999998
	.quad	0x401997357e670e2c              # double 6.3976649999999999
	.quad	0x40102216c61522a7              # double 4.03329
	.quad	0x3ff5b164c729f59d              # double 1.355809
	.quad	0x40212f4b61fe21d9              # double 8.5923719999999992
	.quad	0x400953059641f645              # double 3.1655380000000002
	.quad	0x4011050092ccf6be              # double 4.2548849999999998
	.quad	0x3feff57b41bfbdf1              # double 0.99871600000000004
	.quad	0x40071c9bc7714339              # double 2.8889689999999999
	.quad	0x3fe18c0ce91c8eac              # double 0.548346
	.quad	0x40201ad01c0ca601              # double 8.0523690000000006
	.quad	0x40094cf41f212d77              # double 3.1625749999999999
	.quad	0x4003dec918e325d5              # double 2.4837820000000002
	.quad	0x40172fdcdf698783              # double 5.7967409999999999
	.quad	0x40090a0c282c6ef4              # double 3.1299060000000001
	.quad	0x40226953dea465a5              # double 9.2057179999999992
	.quad	0x3fe335286b59146e              # double 0.60023899999999997
	.quad	0x401fa831ad2135db              # double 7.9142520000000002
	.quad	0x3ff1daf9ebe9c886              # double 1.115961
	.quad	0x4018ad6a161e4f76              # double 6.1693499999999997
	.quad	0x4013c33333333333              # double 4.9406249999999998
	.quad	0x4022b5ad31fcd24e              # double 9.3548369999999998
	.quad	0x402037b19e731d2e              # double 8.1087769999999999
	.quad	0x4023f153586ca8a0              # double 9.9713390000000004
	.quad	0x3fffa6e5471715c6              # double 1.9782459999999999
	.quad	0x401d0d82fd75e204              # double 7.2631949999999996
	.quad	0x3fe82c386d2ed784              # double 0.75539800000000001
	.quad	0x401260fe047d3d43              # double 4.5947190000000004
	.quad	0x3ff27cea6c1a048e              # double 1.155497
	.quad	0x40167c714fce746d              # double 5.6215260000000002
	.quad	0x4010ab65a9a80496              # double 4.1673799999999996
	.quad	0x4004a34c1a8ac5c1              # double 2.5797349999999999
	.quad	0x4013205c896dd26b              # double 4.7816029999999996
	.quad	0x401539c66d373b00              # double 5.3064210000000003
	.quad	0x3ff207faa044ae86              # double 1.1269480000000001
	.quad	0x400c08094e5d5b25              # double 3.503924
	.quad	0x40224013ec460ed8              # double 9.1251519999999999
	.quad	0x3ff1c3aa79bbadc1              # double 1.1102700000000001
	.quad	0x400d72b3cc4ac6ce              # double 3.6810070000000001
	.quad	0x3fe1e3476295208e              # double 0.55899399999999999
	.quad	0x4023cc28b2a6b0d9              # double 9.8987479999999994
	.quad	0x40158fe60c38f367              # double 5.3905260000000004
	.quad	0x4020954e4c942d49              # double 8.2916129999999999
	.quad	0x4004187a4a48f96e              # double 2.511952
	.quad	0x4022e3f7f06705c9              # double 9.4452510000000007
	.quad	0x3fd2810a569b1748              # double 0.28912599999999999
	.quad	0x4001d63d3e4ef028              # double 2.229609
	.quad	0x40179851a8694035              # double 5.8987489999999996
	.quad	0x3feb5f6fd21ff2e5              # double 0.85540000000000005
	.quad	0x401d8430f49491f3              # double 7.3790930000000001
	.quad	0x3fee503968d759ef              # double 0.94729300000000005
	.quad	0x401e35475a31a4be              # double 7.5520300000000002
	.quad	0x40106aaf35e310dc              # double 4.1041840000000001
	.quad	0x40203008c8259e1f              # double 8.0938169999999996
	.quad	0x402151d9b1b79d91              # double 8.6598640000000007
	.quad	0x401b9ac710cb295f              # double 6.9011500000000003
	.quad	0x400ef625a682b628              # double 3.8701889999999999
	.quad	0x4008c13d31b9b670              # double 3.0943550000000002
	.quad	0x4003e68f4b61fe22              # double 2.4875780000000001
	.quad	0x401c7a808c8259e2              # double 7.119631
	.quad	0x401a75fe542e557e              # double 6.6152280000000001
	.quad	0x401bc050374ff866              # double 6.9378060000000001
	.quad	0x3fe833354c12274a              # double 0.75625100000000001
	.quad	0x3ffded0c3d25247d              # double 1.8703730000000001
	.quad	0x4021747d5ed06fef              # double 8.7275189999999991
	.quad	0x401404b2314013ec              # double 5.0045859999999998
	.quad	0x40211dc4eb56fb8f              # double 8.5581429999999994
	.quad	0x40149f4b1ee24357              # double 5.1555600000000004
	.quad	0x400385718eb89507              # double 2.4401579999999998
	.quad	0x400323e6c4c5974e              # double 2.3925299999999998
	.quad	0x40215f6640a6b93d              # double 8.6863270000000004
	.quad	0x3ffefa55d1c3ac93              # double 1.9361170000000001
	.quad	0x401f2c77dd872f34              # double 7.7934260000000002
	.quad	0x4015ef255f3519bd              # double 5.4835409999999998
	.quad	0x401dcc08fa7a8501              # double 7.4492529999999997
	.quad	0x4001442a66dbd72c              # double 2.1582840000000001
	.quad	0x4006432a0663c750              # double 2.7827950000000001
	.quad	0x40231e04e1e71045              # double 9.558631
	.quad	0x4023a1389b52007e              # double 9.8148850000000003
	.quad	0x4019dc7de5082cf5              # double 6.4653239999999998
	.quad	0x400eec493426783a              # double 3.8653740000000001
	.quad	0x40213d1d68c692f7              # double 8.6193650000000002
	.quad	0x401b5fcb4f1e4b45              # double 6.8435490000000003
	.quad	0x40140d9988d2a1f9              # double 5.0132810000000001
	.quad	0x4011c2da122fad6d              # double 4.4402850000000003
	.quad	0x4020a897635e742a              # double 8.3292800000000007
	.quad	0x4008064ba94bbe44              # double 3.0030739999999998
	.quad	0x4007f78c436fc159              # double 2.995873
	.quad	0x4016999a62ed3522              # double 5.6500029999999999
	.quad	0x401ebe32e3821af8              # double 7.6857410000000001
	.quad	0x4022e78705425f20              # double 9.4522019999999998
	.quad	0x4022a93f077ccc03              # double 9.3305589999999992
	.quad	0x3fc0c17ebaf10236              # double 0.13090499999999999
	.quad	0x40216628027d88c2              # double 8.6995240000000003
	.quad	0x4001a6c11a11233e              # double 2.206423
	.quad	0x40025a31a4bdba0a              # double 2.2940399999999999
	.quad	0x4002f9780baa582e              # double 2.3718110000000001
	.quad	0x401a6f6f8f041462              # double 6.6088240000000003
	.quad	0x3ff866cc1ca3a4b5              # double 1.5250969999999999
	.quad	0x401c429c779a6b51              # double 7.0650500000000003
	.quad	0x4021a69e1b089a02              # double 8.8254249999999992
	.quad	0x40183fe47991bc56              # double 6.0623950000000004
	.quad	0x40202d946c332f01              # double 8.0890229999999992
	.quad	0x3ffdd77b7c7820a3              # double 1.865108
	.quad	0x3ff6ba615a8deb10              # double 1.4205030000000001
	.quad	0x40069b5393250b52              # double 2.8258429999999999
	.quad	0x401ec4189374bc6a              # double 7.6914999999999996
	.quad	0x401bde62131a8ef7              # double 6.9671709999999996
	.quad	0x40178fe2a3cea6c2              # double 5.8905130000000003
	.quad	0x4018ba0945f9df55              # double 6.1816760000000004
	.quad	0x400479170d62bf12              # double 2.559126
	.quad	0x400de90f733a8a40              # double 3.7387990000000002
	.quad	0x40051775b8130165              # double 2.6364550000000002
	.quad	0x40155d81adea8976              # double 5.3413149999999998
	.quad	0x3feb44007570c565              # double 0.852051
	.quad	0x3ff629131ec0b567              # double 1.3850279999999999
	.quad	0x4020b2856605ee57              # double 8.3486740000000008
	.quad	0x4013b27d45a5fc7e              # double 4.9243059999999996
	.quad	0x3ffe67ed84d338f8              # double 1.9003730000000001
	.quad	0x400bd8ab0c88a47f              # double 3.4807950000000001
	.quad	0x4020ca9888f861a6              # double 8.3956949999999999
	.quad	0x400e338476f2a5a4              # double 3.7751549999999998
	.quad	0x400da222d5171e2a              # double 3.7041680000000001
	.quad	0x400111d1d4738a3b              # double 2.1337009999999998
	.quad	0x40207c940bbb1f25              # double 8.2433169999999993
	.quad	0x4015434549b62c77              # double 5.3156939999999997
	.quad	0x4011891d14e3bcd3              # double 4.3838999999999997
	.quad	0x4005886bdf4c2b52              # double 2.6916120000000001
	.quad	0x3ff23a0c6b484d77              # double 1.1391720000000001
	.quad	0x4010dc11a11233df              # double 4.2149109999999999
	.quad	0x3ff201205bc01a37              # double 1.125275
	.quad	0x400423193f6c269a              # double 2.5171380000000001
	.quad	0x3ffb86da4484944f              # double 1.720423
	.quad	0x401af9917939a7c1              # double 6.7437189999999996
	.quad	0x3ffcf738e6d15ad1              # double 1.810357
	.quad	0x4010ac200c0f01fc              # double 4.1680910000000004
	.quad	0x4021cbbecaab8a5d              # double 8.8979400000000002
	.quad	0x401329e279dd3bb0              # double 4.7909030000000001
	.quad	0x401b964a16a48733              # double 6.8967669999999996
	.quad	0x40015b2c40d0aaa8              # double 2.1695180000000001
	.quad	0x3ff07dc1615ebfa9              # double 1.030702
	.quad	0x4023eb404ea4a8c1              # double 9.9594749999999994
	.quad	0x3fac0b780346dc5d              # double 0.054774999999999997
	.quad	0x401c192a737110e4              # double 7.0245759999999997
	.quad	0x4007b8be7296f651              # double 2.9652069999999999
	.quad	0x40153210be9424e6              # double 5.2988920000000004
	.quad	0x3fffbeac42e9899c              # double 1.984051
	.quad	0x401372b12d3415b1              # double 4.8620039999999998
	.quad	0x40213b71b8aa0019              # double 8.6161019999999997
	.quad	0x4023e97635e7429a              # double 9.9559800000000003
	.quad	0x4017039a7c17a893              # double 5.7535189999999998
	.quad	0x401dbcb252ce032e              # double 7.4342740000000003
	.quad	0x4021ff2cb641700d              # double 8.9983880000000003
	.quad	0x401b5ae5bc87db2b              # double 6.8387669999999998
	.quad	0x40064537e2c55c96              # double 2.783798
	.quad	0x401aabc5de9c022a              # double 6.6677470000000003
	.quad	0x3ff966c6de76427c              # double 1.5875919999999999
	.quad	0x400081b97353b4b3              # double 2.063342
	.quad	0x401bd72ffd1dcd70              # double 6.9601439999999997
	.quad	0x4019153b4b2fa93b              # double 6.270734
	.quad	0x3feb19392189bd84              # double 0.84682900000000005
	.quad	0x3ffc4008637bd05b              # double 1.765633
	.quad	0x3ff65b4784230fd0              # double 1.3972850000000001
	.quad	0x3ff155ad106ee30d              # double 1.0834170000000001
	.quad	0x401d45bc87db2b34              # double 7.3181019999999997
	.quad	0x40204dcc426351df              # double 8.1519490000000001
	.quad	0x400b126a65cf67b2              # double 3.3839920000000001
	.quad	0x4015c0c4dec1c1d7              # double 5.4382510000000002
	.quad	0x4012090a350d2807              # double 4.5088280000000003
	.quad	0x3fe5089a02752546              # double 0.6573
	.quad	0x400dbf1d81f10668              # double 3.718318
	.quad	0x4015f49ecb31c21a              # double 5.4888870000000001
	.quad	0x401dc3361565c2d2              # double 7.4406359999999996
	.quad	0x400269fe004b7f5a              # double 2.3017539999999999
	.quad	0x401668c7e28240b8              # double 5.6023250000000004
	.quad	0x401c58d2a1f8e3ac              # double 7.086741
	.quad	0x3f95f394b7b28955              # double 0.021437000000000001
	.quad	0x400db9b2c40d0aaa              # double 3.7156729999999998
	.quad	0x402197a3b9ae0c17              # double 8.7961709999999993
	.quad	0x400828c36da87a07              # double 3.0199039999999999
	.quad	0x402207ebf22c01e7              # double 9.0154720000000008
	.quad	0x4000b0df15a4acf3              # double 2.086363
	.quad	0x4007e97d06bbdbe4              # double 2.9890080000000001
	.quad	0x402154532a497fa6              # double 8.6646970000000003
	.quad	0x4011f7bc3c5bd0e1              # double 4.4919289999999998
	.quad	0x4017d47baa9b499d              # double 5.957503
	.quad	0x40110f16f4384ba1              # double 4.2647360000000001
	.quad	0x4020cd219a847b24              # double 8.4006469999999993
	.quad	0x3ffb2a9d627bf61b              # double 1.6979040000000001
	.quad	0x4005b0d0678c0054              # double 2.7113350000000001
	.quad	0x401a91d9b1b79d91              # double 6.6424320000000003
	.quad	0x4000bc63ae2541d9              # double 2.091987
	.quad	0x4012f5cb35f3d7d4              # double 4.7400330000000004
	.quad	0x40204bf63c31df76              # double 8.1483629999999998
	.quad	0x3fe25028a1dfb939              # double 0.57228500000000004
	.quad	0x4016fe24bba12b5e              # double 5.7481869999999997
	.quad	0x400cfbd1ed9dfdac              # double 3.6229589999999998
	.quad	0x40001d0c80410300              # double 2.0141840000000002
	.quad	0x3fd88027d88c1db0              # double 0.382822
	.quad	0x40217774256bca53              # double 8.7333079999999992
	.quad	0x40026ec0f88333fd              # double 2.3040790000000002
	.quad	0x401736f049a9973e              # double 5.8036510000000003
	.quad	0x401795b5fa22706d              # double 5.8962019999999997
	.quad	0x402130dd82fd75e2              # double 8.59544
	.quad	0x401c4cd7cf5f4e44              # double 7.0750419999999998
	.quad	0x3ff26dd9c27e9531              # double 1.1518189999999999
	.quad	0x3fb96d19dece5711              # double 0.099321000000000007
	.quad	0x4022214573a79789              # double 9.0649829999999998
	.quad	0x3ffc29b17481b21c              # double 1.7601789999999999
	.quad	0x4002470435efa616              # double 2.2846760000000002
	.quad	0x401be8e4b87bdcf0              # double 6.9774349999999998
	.quad	0x402277de7210be94              # double 9.2341189999999997
	.quad	0x402233fec13b9f12              # double 9.1015529999999991
	.quad	0x4013071715c63ae2              # double 4.7569239999999997
	.quad	0x400fb9e060fe4799              # double 3.96576
	.quad	0x401286e82949a565              # double 4.6317449999999996
	.quad	0x4010e98b71b8aa00              # double 4.2280709999999999
	.quad	0x4013823422467be5              # double 4.8771519999999997
	.quad	0x400e0fbdad7518b1              # double 3.7576860000000001
	.quad	0x4006b77f27fe4bcb              # double 2.8395980000000001
	.quad	0x40200b3acd5b6806              # double 8.0219330000000006
	.quad	0x40059774256bca53              # double 2.6989519999999998
	.quad	0x3fa9394317acc4f0              # double 0.049265000000000003
	.quad	0x4013668f4b61fe22              # double 4.8501560000000001
	.quad	0x400bdc69728a6117              # double 3.4826229999999998
	.quad	0x3ffacf2064239607              # double 1.6755679999999999
	.quad	0x400957e6f71a7e31              # double 3.1679210000000002
	.quad	0x4000b9e8c47a17f4              # double 2.090776
	.quad	0x4012e29bf162ae4b              # double 4.721298
	.quad	0x400c0dc2b0ea1837              # double 3.5067189999999999
	.quad	0x401a7b1cc9646280              # double 6.6202269999999999
	.quad	0x401d14df47f993d5              # double 7.2703829999999998
	.quad	0x4014073cd573647c              # double 5.0070680000000003
	.quad	0x3ffb00b673c4f3ba              # double 1.6876739999999999
	.quad	0x401ece90bc7b45f1              # double 7.7017239999999995
	.quad	0x4002f93b3a68b19a              # double 2.3716949999999999
	.quad	0x401eecdc443914f5              # double 7.7313090000000004
	.quad	0x4014e8f75536933a              # double 5.227506
	.quad	0x3ff054f69ca9ef52              # double 1.020743
	.quad	0x4011a1d798d8a97a              # double 4.4080490000000001
	.quad	0x3ffd5899bf5946c3              # double 1.834131
	.quad	0x400a9b5fa22706d5              # double 3.325866
	.quad	0x4013d3b29a1b9f99              # double 4.9567360000000003
	.quad	0x3feb0f7985271bce              # double 0.84563900000000003
	.quad	0x40147eacc92146a2              # double 5.1237060000000003
	.quad	0x4021bee04c059210              # double 8.8728049999999996
	.quad	0x4014be02a77a2ced              # double 5.1855570000000002
	.quad	0x401522b0a6fc58ac              # double 5.2838770000000004
	.quad	0x4021ebc6a7ef9db2              # double 8.9604999999999997
	.quad	0x4021e6fd86a8fc0d              # double 8.9511529999999997
	.quad	0x4021fff2e48e8a72              # double 8.9999000000000002
	.quad	0x400b44f00ef1348b              # double 3.4086609999999999
	.quad	0x40105af3a14cec42              # double 4.0888200000000001
	.quad	0x401312135daad602              # double 4.767652
	.quad	0x3fd3b7c7820a30db              # double 0.30809199999999998
	.quad	0x3ff58625e99e94ab              # double 1.345251
	.quad	0x40072df47f993d53              # double 2.8974389999999999
	.quad	0x401f69c66d373b00              # double 7.8532960000000003
	.quad	0x3fef615011904b3c              # double 0.98062899999999997
	.quad	0x40211607e5a78f26              # double 8.5430290000000007
	.quad	0x3ff64d573647baaa              # double 1.3938820000000001
	.quad	0x400588fb86f47b67              # double 2.6918859999999998
	.quad	0x400c983dff3f0fe0              # double 3.5743369999999999
	.quad	0x3ff76f9ca5bd944b              # double 1.4647490000000001
	.quad	0x4004330489d27c39              # double 2.5249109999999999
	.quad	0x4014369ad42c3c9f              # double 5.0533250000000001
	.quad	0x401eca9fbe76c8b4              # double 7.6978749999999998
	.quad	0x401c92c98e53eb3a              # double 7.1433470000000003
	.quad	0x400423f359ff4fd7              # double 2.5175540000000001
	.quad	0x400bff572de43ed9              # double 3.4996779999999998
	.quad	0x401605d8d79d0a67              # double 5.5057099999999997
	.quad	0x401c5af5771001d6              # double 7.0888270000000002
	.quad	0x401a30e1b4bb5e0f              # double 6.5477359999999996
	.quad	0x401821ceaf251c19              # double 6.0330149999999998
	.quad	0x40166210be9424e6              # double 5.5957670000000004
	.quad	0x40236e7924af0bf2              # double 9.7157680000000006
	.quad	0x40059304039abf34              # double 2.6967850000000002
	.quad	0x40180d01c0ca600b              # double 6.012702
	.quad	0x401f0168f8e7ddca              # double 7.7513769999999997
	.quad	0x4007e1de26916441              # double 2.985287
	.quad	0x401da53a81dc0db2              # double 7.4113559999999996
	.quad	0x402304cff21b3aef              # double 9.5093990000000001
	.quad	0x3ff41320d9945b6c              # double 1.25467
	.quad	0x401c5593a2df9379              # double 7.0835710000000001
	.quad	0x4008d52fc2656abe              # double 3.104095
	.quad	0x3fe90e086bdf4c2b              # double 0.78296299999999996
	.quad	0x40013a7d24180d3d              # double 2.153559
	.quad	0x4020d25332acfb76              # double 8.4107909999999997
	.quad	0x401cbd76ee73e682              # double 7.1850240000000003
	.quad	0x402249c1b54195cd              # double 9.1440560000000009
	.quad	0x3fe2fc6759ab6d01              # double 0.59331100000000003
	.quad	0x4001ed2806af46aa              # double 2.240799
	.quad	0x3ffaf5696e58a32f              # double 1.6849149999999999
	.quad	0x40239937f38c5437              # double 9.7992550000000004
	.quad	0x3fcc3d3e4ef0281c              # double 0.22061900000000001
	.quad	0x401a65cbbc2b94d9              # double 6.5994099999999998
	.quad	0x400781700cd85597              # double 2.938202
	.quad	0x3fed2b990afe60c4              # double 0.91157200000000004
	.quad	0x401f8705425f2021              # double 7.8818559999999999
	.quad	0x40165389b52007dd              # double 5.5815799999999998
	.quad	0x3ff569f2778140dd              # double 1.3383659999999999
	.quad	0x400e6d72799a1fd1              # double 3.8034409999999998
	.quad	0x40022a697aeddce8              # double 2.2707090000000001
	.quad	0x40069b55ac03ff69              # double 2.825847
	.quad	0x4020c11148fd9fd3              # double 8.3770849999999992
	.quad	0x4022df61cbccf28c              # double 9.4362929999999991
	.quad	0x3ff0da3b14a90471              # double 1.0532790000000001
	.quad	0x400eed24e160d888              # double 3.865793
	.quad	0x3fcdc9eecbfb15b5              # double 0.23272499999999999
	.quad	0x401d4b4a66559f6f              # double 7.3235260000000002
	.quad	0x40114e2eb1c432ca              # double 4.3263499999999997
	.quad	0x400812cadddf43c8              # double 3.0091760000000001
	.quad	0x401df43526527a20              # double 7.4884839999999997
	.quad	0x401c29d2391d5800              # double 7.0408410000000003
	.quad	0x4021b7e08aefb2ab              # double 8.8591350000000002
	.quad	0x400b1a1b1960fa16              # double 3.3877470000000001
	.quad	0x4021ffca643cc07b              # double 8.9995910000000006
	.quad	0x4020d940357a3550              # double 8.4243179999999995
	.quad	0x4022f41bda5119ce              # double 9.4767749999999999
	.quad	0x3fe5c6b484d76ab6              # double 0.68050600000000006
	.quad	0x3ff82528ae74f2f1              # double 1.509072
	.quad	0x40202b44806290ef              # double 8.0845070000000003
	.quad	0x4017f0c996b7670a              # double 5.985144
	.quad	0x401aeb267c6b8b69              # double 6.7296389999999997
	.quad	0x402234f7446f9b99              # double 9.1034489999999995
	.quad	0x3fff8c21e1d2178f              # double 1.9717119999999999
	.quad	0x40178f19d66adb40              # double 5.8897469999999998
	.quad	0x4023bf4107314ca9              # double 9.8735429999999997
	.quad	0x40073f01b866e43b              # double 2.9057650000000002
	.quad	0x401514eca686e7e6              # double 5.2704339999999998
	.quad	0x400a8d22c881e471              # double 3.3189139999999999
	.quad	0x4013c9c5a3e39f77              # double 4.9470429999999999
	.quad	0x3ff3f6709fa54c55              # double 1.2476659999999999
	.quad	0x4013e916ca46e08f              # double 4.9776259999999999
	.quad	0x4014ba6698bb4d49              # double 5.1820320000000004
	.quad	0x40116109d0635a42              # double 4.3447639999999996
	.quad	0x4013ae2de8709742              # double 4.9200970000000002
	.quad	0x40185837b4a2339c              # double 6.0861499999999999
	.quad	0x3ff8283f4eca686e              # double 1.5098259999999999
	.quad	0x401b7caa7589efd8              # double 6.8717439999999996
	.quad	0x40237d347a5b0ff1              # double 9.7445409999999998
	.quad	0x4013cbd987c6327f              # double 4.9490720000000001
	.quad	0x4012eb0142f61ed6              # double 4.7294970000000003
	.quad	0x40176dba4d6e47dc              # double 5.8571559999999998
	.quad	0x4000128e92d55a3a              # double 2.009061
	.quad	0x40020983d790752e              # double 2.2546460000000002
	.quad	0x3ff15c10d7be9857              # double 1.0849770000000001
	.quad	0x400eb12ec6bce853              # double 3.8365149999999999
	.quad	0x401810c9539b8887              # double 6.0163929999999999
	.quad	0x4018be02645e4e6a              # double 6.1855560000000001
	.quad	0x4020b652bd3c3611              # double 8.3560999999999996
	.quad	0x40074d02cd39da16              # double 2.9126029999999998
	.quad	0x402114b70ac3a861              # double 8.5404590000000002
	.quad	0x401764bcad9ad85e              # double 5.848376
	.quad	0x400e56249a133c1d              # double 3.792062
	.quad	0x401c435c182ecaef              # double 7.0657810000000003
	.quad	0x4007e409e55c0fcb              # double 2.9863469999999999
	.quad	0x40223574d594f26b              # double 9.1044070000000001
	.quad	0x402395d1e53a81dc              # double 9.7926169999999999
	.quad	0x4004c31593e5fb72              # double 2.595256
	.quad	0x401bfe8c47a17f41              # double 6.9985819999999999
	.quad	0x401bcb877ab32485              # double 6.9487589999999999
	.quad	0x4012206a2b1704ff              # double 4.5316549999999998
	.quad	0x402196136e71cda3              # double 8.7931170000000005
	.quad	0x40027669ced0b30b              # double 2.3078189999999998
	.quad	0x402341878316a055              # double 9.6279869999999991
	.quad	0x40214db3e1437c57              # double 8.6517630000000008
	.quad	0x4010c36049ecb31c              # double 4.1907969999999999
	.quad	0x3fe024cc6822ff09              # double 0.50449200000000005
	.quad	0x40084b97fe8ee6b8              # double 3.0369109999999999
	.quad	0x40219ca0a0f4d7ae              # double 8.8059130000000003
	.quad	0x40129dff3f0fe048              # double 4.6542940000000002
	.quad	0x40118ffc5479d4d8              # double 4.3906109999999998
	.quad	0x40207016f0068db9              # double 8.2189250000000005
	.quad	0x3fb249c2c1b10fd8              # double 0.071438000000000001
	.quad	0x401a7f5126634118              # double 6.624333
	.quad	0x3ff08880d801b435              # double 1.033326
	.quad	0x4021d06af46aa088              # double 8.9070660000000004
	.quad	0x40238545a5fc7e6b              # double 9.7602969999999995
	.quad	0x3fc8e6644d877250              # double 0.19453100000000001
	.quad	0x4009cab0c88a47ed              # double 3.22397
	.quad	0x402282a68f4b61fe              # double 9.2551769999999998
	.quad	0x402114e9c4545847              # double 8.5408460000000002
	.quad	0x4017a8d8665e02eb              # double 5.9148880000000004
	.quad	0x401452b27cbf6e3f              # double 5.0807589999999996
	.quad	0x3ff0c2bf9830e3ce              # double 1.0475460000000001
	.quad	0x40108b9991361dc9              # double 4.1363279999999998
	.quad	0x4020637b4a2339c1              # double 8.1943000000000001
	.quad	0x3fe2c914b167ec78              # double 0.58704599999999996
	.quad	0x4015deb4e981387a              # double 5.4674870000000002
	.quad	0x402228e2e2b8c75c              # double 9.0798559999999994
	.quad	0x3ff670e1b4bb5e0f              # double 1.4025589999999999
	.quad	0x4023ad79af1886e0              # double 9.8388190000000009
	.quad	0x400ec78f25a250f8              # double 3.8474409999999999
	.quad	0x400eac764adff823              # double 3.8342100000000001
	.quad	0x3fec87746887a8d6              # double 0.89153499999999997
	.quad	0x400a5c9eecbfb15b              # double 3.2952249999999998
	.quad	0x3ff3f61672324c83              # double 1.2475799999999999
	.quad	0x40131e8ff327aa69              # double 4.779846
	.quad	0x400c2a3df6db9410              # double 3.520626
	.quad	0x3fe1e605ee568a50              # double 0.55932899999999997
	.quad	0x4011dfa97e132b56              # double 4.4684200000000001
	.quad	0x4004af68be2f7b18              # double 2.5856490000000001
	.quad	0x40121d71f36262cc              # double 4.5287550000000003
	.quad	0x4018cb2d4d4024b3              # double 6.1984149999999998
	.quad	0x400e14edb2f661f2              # double 3.7602190000000002
	.quad	0x4002759e6256366d              # double 2.3074309999999998
	.quad	0x40220b1832fcac8e              # double 9.0216689999999993
	.quad	0x402127112fd32c62              # double 8.5763029999999993
	.quad	0x400aba921ccd9620              # double 3.3410989999999998
	.quad	0x400341d7dbf487fd              # double 2.4071500000000001
	.quad	0x400763c968943e10              # double 2.923724
	.quad	0x40140089a0275254              # double 5.0005249999999997
	.quad	0x3fe6fb677f6b1a2a              # double 0.71818899999999997
	.quad	0x4000e4febd09e12a              # double 2.1118139999999999
	.quad	0x4020dc73abc94706              # double 8.4305699999999995
	.quad	0x4022ad744f5d3565              # double 9.3387779999999996
	.quad	0x4015890364388ebd              # double 5.3838020000000002
	.quad	0x400d72849cb252ce              # double 3.680917
	.quad	0x400f05197a24894c              # double 3.8774899999999999
	.quad	0x401cca6eb91b3f21              # double 7.1976880000000003
	.quad	0x4020fe2f166e008f              # double 8.4964530000000007
	.quad	0x4006d3fe1975f2cb              # double 2.8535119999999998
	.quad	0x4000f6e0d23d4f16              # double 2.120546
	.quad	0x40031800218def41              # double 2.3867189999999998
	.quad	0x4002983b60285ec4              # double 2.3243320000000001
	.quad	0x40207a26809d4952              # double 8.2385750000000009
	.quad	0x4007df562174c4ce              # double 2.984051
	.quad	0x4010c82cf52b90a8              # double 4.1954840000000004
	.quad	0x3fdbd49949e8815e              # double 0.43485099999999999
	.quad	0x40157709741d084f              # double 5.3662470000000004
	.quad	0x4021d9f340d4dc66              # double 8.9256840000000004
	.quad	0x3fece2003ab862b2              # double 0.90258799999999995
	.quad	0x4016fcf5b1c86488              # double 5.7470309999999998
	.quad	0x3ff71f9378ee2867              # double 1.445209
	.quad	0x3ff5ff36ac647779              # double 1.374808
	.quad	0x401ad4a9cdc44391              # double 6.7076789999999997
	.quad	0x401626bd2b6f1993              # double 5.5378309999999997
	.quad	0x4002bcbff47735c2              # double 2.3421630000000002
	.quad	0x4020e4e789e774ef              # double 8.4470790000000004
	.quad	0x40205d09e12a51e3              # double 8.1817159999999998
	.quad	0x3ff026772d5e071c              # double 1.0093909999999999
	.quad	0x401d415f88fc9364              # double 7.313841
	.quad	0x40086cc4ef88b978              # double 3.0531100000000002
	.quad	0x3fe31cf56eac8605              # double 0.59728499999999995
	.quad	0x4021e62c98e53eb4              # double 8.9495590000000007
	.quad	0x40238644955b4678              # double 9.7622420000000005
	.quad	0x401d41858bc59b80              # double 7.3139859999999999
	.quad	0x4010dfbefd00713f              # double 4.218502
	.quad	0x4008483f4eca686e              # double 3.0352769999999998
	.quad	0x40203c43f5f91601              # double 8.1177060000000001
	.quad	0x4020f8d6f544bb1b              # double 8.4860150000000001
	.quad	0x3ff01ddb1209edc0              # double 1.0072890000000001
	.quad	0x401f9b18548a9bd0              # double 7.9014600000000002
	.quad	0x4016f741d084e832              # double 5.7414620000000003
	.quad	0x3ff7e68f4b61fe22              # double 1.493789
	.quad	0x4016029aa1d755bd              # double 5.5025430000000002
	.quad	0x40110e5cd4ed2cbf              # double 4.2640260000000003
	.quad	0x401aef765fd8adac              # double 6.7338500000000003
	.quad	0x4008ca6b93ccd0ff              # double 3.0988380000000002
	.quad	0x401d9ef7c243dccf              # double 7.4052420000000003
	.quad	0x40141db163baba7c              # double 5.0289970000000004
	.quad	0x401845946c332f01              # double 6.0679489999999996
	.quad	0x4022ec2b94d94079              # double 9.4612700000000007
	.quad	0x40122057d1782d38              # double 4.5315849999999998
	.quad	0x40012d1633482be9              # double 2.1470150000000001
	.quad	0x4006f3c03bc4d22d              # double 2.8690190000000002
	.quad	0x4011315fcc1871e7              # double 4.2982170000000002
	.quad	0x401694bcad9ad85e              # double 5.645251
	.quad	0x40076b042528ae75              # double 2.927254
	.quad	0x4018fa4ebdd334c6              # double 6.2444410000000001
	.quad	0x3ff16bb1290257c9              # double 1.088792
	.quad	0x401ed0807357e671              # double 7.7036150000000001
	.quad	0x401aadfc5cdd50a9              # double 6.6699080000000004
	.quad	0x4020c2606fac6046              # double 8.3796420000000005
	.quad	0x4022479e7b80a9df              # double 9.1398810000000008
	.quad	0x4023d9f0e4da09cc              # double 9.9256659999999996
	.quad	0x4007f3faf42784a9              # double 2.9941309999999999
	.quad	0x400d24fca42aed14              # double 3.6430600000000002
	.quad	0x40158be6601bc98a              # double 5.3866209999999999
	.quad	0x3f667ec7863beec4              # double 0.0027460000000000002
	.quad	0x3ff332abef06b378              # double 1.1998709999999999
	.quad	0x4005e0ef1348b220              # double 2.7348309999999998
	.quad	0x400bfc48f10a99b7              # double 3.498186
	.quad	0x4019e706d5065732              # double 6.4756119999999999
	.quad	0x400cc19c17225b75              # double 3.5945360000000002
	.quad	0x3ffbf8f9b13165d4              # double 1.7482850000000001
	.quad	0x400457763e4abe6a              # double 2.5427059999999999
	.quad	0x400da4cc6822ff09              # double 3.7054680000000002
	.quad	0x3fc880389f83be66              # double 0.191413
	.quad	0x40158866e43aa79c              # double 5.3832050000000002
	.quad	0x401b097d06bbdbe4              # double 6.7592660000000002
	.quad	0x40011d0aed99cbef              # double 2.1391810000000002
	.quad	0x400c1f91e646f156              # double 3.515415
	.quad	0x401898db0574b407              # double 6.149273
	.quad	0x3ffbaed99cbee808              # double 1.7301880000000001
	.quad	0x3ff9b558a7610279              # double 1.6067739999999999
	.quad	0x401ce75104d551d7              # double 7.2258950000000004
	.quad	0x3ff50477ff151e75              # double 1.313591
	.quad	0x40143b549f94855e              # double 5.0579400000000003
	.quad	0x4014faf4adbc664d              # double 5.2450739999999998
	.quad	0x402372615a8deb10              # double 9.7233990000000006
	.quad	0x3ff7607c4199fe43              # double 1.4610559999999999
	.quad	0x4019058969a0ad8a              # double 6.2554069999999999
	.quad	0x40177e7c8d195897              # double 5.8735220000000004
	.quad	0x4020b0f9b13165d4              # double 8.3456550000000007
	.quad	0x40228951e75360d0              # double 9.2682029999999997
	.quad	0x401e6e0221426fe7              # double 7.6074299999999999
	.quad	0x3ff5bb213e3e2930              # double 1.3581859999999999
	.quad	0x4009e8fc9363f573              # double 3.2387630000000001
	.quad	0x4005819220ff5409              # double 2.6882670000000002
	.quad	0x400c38fd5cb790fb              # double 3.5278269999999998
	.quad	0x401e18b4bf8fcd68              # double 7.524127
	.quad	0x4007dc1bda5119ce              # double 2.982475
	.quad	0x401a843aa79bbadc              # double 6.62913
	.quad	0x40229394b7b28955              # double 9.2882440000000006
	.quad	0x4023ad288ce703b0              # double 9.8382000000000005
	.quad	0x3ffa332acfb762d8              # double 1.6374919999999999
	.quad	0x3fc017dae81882ae              # double 0.12572800000000001
	.quad	0x3fea8d3ae685db77              # double 0.82974000000000003
	.quad	0x40086b90214ad363              # double 3.052521
	.quad	0x3fdf398e97071822              # double 0.48788799999999999
	.quad	0x3fc2a915379fa97e              # double 0.145785
	.quad	0x40006adf71eafee7              # double 2.052184
	.quad	0x401f16e9ff0cbaf9              # double 7.7723769999999996
	.quad	0x401764e9c4545847              # double 5.8485480000000001
	.quad	0x402228e8ea39c51e              # double 9.0799020000000006
	.quad	0x4012e0e3cd9a5226              # double 4.7196189999999998
	.quad	0x400be83558a76102              # double 3.4883829999999998
	.quad	0x402211a38fbca106              # double 9.0344510000000007
	.quad	0x40159e820e629952              # double 5.4047929999999997
	.quad	0x401694a87e38eb03              # double 5.6451739999999999
	.quad	0x4014292b3cc4ac6d              # double 5.0402040000000001
	.quad	0x401e69b38d60a633              # double 7.6032239999999999
	.quad	0x3fba21fafc8b007a              # double 0.10208100000000001
	.quad	0x3fe7bdba0a526959              # double 0.74190999999999996
	.quad	0x40214ef4be835dee              # double 8.6542110000000001
	.quad	0x3fe22085b18548aa              # double 0.56647000000000003
	.quad	0x4007b63f572de43f              # double 2.9639880000000001
	.quad	0x3ff9a516db0dd830              # double 1.602805
	.quad	0x3fc061e92923e5b8              # double 0.12798799999999999
	.quad	0x3ff2973215fcc187              # double 1.161913
	.quad	0x40209228fe260b2d              # double 8.2854690000000009
	.quad	0x3ffdf52da98676a7              # double 1.872358
	.quad	0x402376f49cf56ead              # double 9.7323350000000008
	.quad	0x401aac11e42e1262              # double 6.668037
	.quad	0x4021c633ce63a5c2              # double 8.8871140000000004
	.quad	0x4016b6ec5b078d93              # double 5.678636
	.quad	0x4023fcccee5abc0e              # double 9.9937509999999996
	.quad	0x401f0b5e0f7fcfc4              # double 7.761101
	.quad	0x4021b7d694ccab3f              # double 8.8590590000000002
	.quad	0x40088165907d9125              # double 3.0631819999999998
	.quad	0x400af4898f605ab4              # double 3.3694030000000001
	.quad	0x4022a541fa765343              # double 9.3227689999999992
	.quad	0x4023cb1ca7d6733f              # double 9.8967030000000004
	.quad	0x40090319c5a3e39f              # double 3.1265139999999998
	.quad	0x4002ee1693c03bc5              # double 2.3662540000000001
	.quad	0x40039042d8c2a455              # double 2.4454400000000001
	.quad	0x4005233df2a9d628              # double 2.6422080000000001
	.quad	0x4013960aa64c2f83              # double 4.8965249999999996
	.quad	0x4019d013ec460ed8              # double 6.453201
	.quad	0x400f420ab7132724              # double 3.9072469999999999
	.quad	0x4022b20a30db6a1f              # double 9.3477340000000009
	.quad	0x401f247dc37a3db4              # double 7.7856360000000002
	.quad	0x401d43e920c069e8              # double 7.316319
	.quad	0x4020ea82e87d2c7c              # double 8.4580300000000008
	.quad	0x4009aee49f51697f              # double 3.2103969999999999
	.quad	0x3fd23632c1f42bb6              # double 0.28455799999999998
	.quad	0x4010fbf6a0dbad3a              # double 4.2460579999999997
	.quad	0x40229ae9ee45c359              # double 9.3025660000000006
	.quad	0x400f83ca7503b81b              # double 3.9393509999999998
	.quad	0x401083415b1422cd              # double 4.1281790000000003
	.quad	0x4000a83d35eb7458              # double 2.0821480000000001
	.quad	0x40196c36976bc1f0              # double 6.355677
	.quad	0x40200c52e72da123              # double 8.02407
	.quad	0x402073a7b9170d63              # double 8.2258890000000005
	.quad	0x3fede5e02ea960b7              # double 0.934311
	.quad	0x4005dde0d66f0cfe              # double 2.733339
	.quad	0x4006a88509bf9c63              # double 2.8322850000000002
	.quad	0x40007899392189be              # double 2.0588860000000002
	.quad	0x40139f2d7f950b95              # double 4.9054469999999997
	.quad	0x401ccba0e8427419              # double 7.1988560000000001
	.quad	0x401b6181e03f7058              # double 6.8452219999999997
	.quad	0x3fe031f8a0902de0              # double 0.50609999999999999
	.quad	0x4022f907b784662c              # double 9.4863870000000005
	.quad	0x400bacd423d9231c              # double 3.4593889999999998
	.quad	0x40236531769a9110              # double 9.6976429999999993
	.quad	0x3fc96d330941c821              # double 0.19864499999999999
	.quad	0x4006cc6bce8533b1              # double 2.849815
	.quad	0x401377b4e54f7a92              # double 4.8669010000000004
	.quad	0x401f66540cc78e9f              # double 7.8499299999999996
	.quad	0x4014101040bfe3b0              # double 5.0156869999999998
	.quad	0x400c3a6a44417870              # double 3.5285229999999999
	.quad	0x401ef5421c044285              # double 7.7395100000000001
	.quad	0x3fc8c460ed80a17b              # double 0.193493
	.quad	0x4002149e01de2691              # double 2.2600669999999998
	.quad	0x4002a509bf9c62a2              # double 2.3305850000000001
	.quad	0x3ff5e317268d3283              # double 1.367942
	.quad	0x401df878316a0557              # double 7.4926459999999996
	.quad	0x3fffaea63b688bdb              # double 1.9801390000000001
	.quad	0x4001e904f6dfc5ce              # double 2.2387790000000001
	.quad	0x4021a3fb7a5f41af              # double 8.8202780000000001
	.quad	0x400037af640639d6              # double 2.02719
	.quad	0x4010cf1886df82b2              # double 4.202242
	.quad	0x4023b8e0eb67c287              # double 9.861091
	.quad	0x3ff157c4e2f37fbf              # double 1.083928
	.quad	0x4020b9cda2b5a20e              # double 8.3628970000000002
	.quad	0x4022918c3b0c4589              # double 9.2842730000000007
	.quad	0x400b0f1ed17c5ef6              # double 3.3823829999999999
	.quad	0x3ff4a7c286f8ad25              # double 1.2909569999999999
	.quad	0x3ff8686c6583e857              # double 1.5254939999999999
	.quad	0x40133c126a65cf68              # double 4.8086640000000003
	.quad	0x3fcba68b19a415f4              # double 0.21601999999999999
	.quad	0x401ee945f9df548f              # double 7.7278060000000001
	.quad	0x3ff18b05b7cfe586              # double 1.096441
	.quad	0x401102bbecaab8a6              # double 4.2526700000000002
	.quad	0x4016550e34762952              # double 5.583062
	.quad	0x4011dc1d29dc725c              # double 4.4649549999999998
	.quad	0x4015d0589acbc8c1              # double 5.4534630000000002
	.quad	0x40125ad794a6eb92              # double 4.5887130000000003
	.quad	0x401ec8be2f7b17ce              # double 7.6960379999999997
	.quad	0x40103035371971c1              # double 4.047078
	.quad	0x3fe056798958d9b6              # double 0.51055600000000001
	.quad	0x4020775e41d4b6a6              # double 8.2331409999999998
	.quad	0x3fc3b6cbd987c632              # double 0.15401599999999999
	.quad	0x401012da122fad6d              # double 4.0184100000000003
	.quad	0x402039d883ba3444              # double 8.1129800000000003
	.quad	0x4023308fa7a85016              # double 9.5948460000000004
	.quad	0x4023127b2cc70868              # double 9.5360960000000005
	.quad	0x40215f3eee525892              # double 8.6860269999999993
	.quad	0x3fcb1c0010c6f7a1              # double 0.21179200000000001
	.quad	0x40201ddb3397dd01              # double 8.0583130000000001
	.quad	0x401ca94d50ebaade              # double 7.1653339999999996
	.quad	0x400f9c347e8ccdd9              # double 3.9512719999999999
	.quad	0x3ff142917507e9d9              # double 1.0787519999999999
	.quad	0x4002a3f0bae89eba              # double 2.3300489999999998
	.quad	0x400930f94c87980f              # double 3.1489129999999999
	.quad	0x400e3802c0a4a05e              # double 3.7773490000000001
	.quad	0x4022bebc408d8ec9              # double 9.3725299999999993
	.quad	0x401c09d7774aba38              # double 7.0096109999999996
	.quad	0x40226d974e65bea1              # double 9.2140450000000005
	.quad	0x40014120e1f7d73d              # double 2.1568010000000002
	.quad	0x402157b7c7820a31              # double 8.6713240000000003
	.quad	0x40113d8c2a454de8              # double 4.3101050000000001
	.quad	0x40181cacd184c272              # double 6.028003
	.quad	0x400ec5a1cac08312              # double 3.8464999999999998
	.quad	0x3ff26dd590c0ad04              # double 1.151815
	.quad	0x401732a023209678              # double 5.7994389999999996
	.quad	0x401d0f0739b024f6              # double 7.2646759999999997
	.quad	0x3fec9ff2e48e8a72              # double 0.89452500000000001
	.quad	0x40177906034f3fd9              # double 5.8681869999999998
	.quad	0x402395d4e8fb00bd              # double 9.7926400000000004
	.quad	0x40229c7dc37a3db4              # double 9.3056470000000004
	.quad	0x4010960b2c83ec89              # double 4.1465269999999999
	.quad	0x4021df3365881a15              # double 8.9359389999999994
	.quad	0x4003e02ea960b6fa              # double 2.484464
	.quad	0x4021c05319828805              # double 8.8756339999999998
	.quad	0x400456f4384ba0e8              # double 2.5424579999999999
	.quad	0x4005e3aeab7995ee              # double 2.736173
	.quad	0x4012fd4067cf1c32              # double 4.7473159999999996
	.quad	0x401a38ccdd93c46e              # double 6.5554690000000004
	.quad	0x401f0edb2f661f19              # double 7.7645080000000001
	.quad	0x4023a4f0520d130e              # double 9.822146
	.quad	0x3ff3f2a497fa5d29              # double 1.246739
	.quad	0x40220719f7f8ca82              # double 9.0138700000000007
	.quad	0x40155c19c17225b7              # double 5.3399419999999997
	.quad	0x4016b4588a04d120              # double 5.6761189999999999
	.quad	0x40140381d7dbf488              # double 5.003425
	.quad	0x4021456494d50ebb              # double 8.6355330000000006
	.quad	0x40142ae4b0186120              # double 5.0418880000000001
	.quad	0x4016bce703afb7e9              # double 5.6844749999999999
	.quad	0x3fe4c8ecd8dbcec8              # double 0.64952699999999997
	.quad	0x40229c2bf9830e3d              # double 9.3050230000000003
	.quad	0x400d72d1aeb3dd12              # double 3.6810640000000001
	.quad	0x4002f5f4e4430b18              # double 2.3700960000000002
	.quad	0x401a4492ff4ba51a              # double 6.566967
	.quad	0x4022da2467be553b              # double 9.4260590000000004
	.quad	0x400a5fd9ba1b1961              # double 3.296802
	.quad	0x4002060d4562e0a0              # double 2.252955
	.quad	0x4002da7008a697af              # double 2.3566590000000001
	.quad	0x40186d1351159c49              # double 6.1065189999999996
	.quad	0x40148165d3996fa8              # double 5.1263649999999998
	.quad	0x40205461b6d43d04              # double 8.1648080000000007
	.quad	0x3fec4aa10e022142              # double 0.88410999999999995
	.quad	0x4003480f12c27a63              # double 2.4101849999999998
	.quad	0x400d8f06b37867f1              # double 3.6948370000000001
	.quad	0x401a501e2584f4c7              # double 6.5782400000000001
	.quad	0x4008fdc725c3dee8              # double 3.1239150000000002
	.quad	0x401b1939eadd590c              # double 6.774635
	.quad	0x4008e0fdc1615ec0              # double 3.1098590000000002
	.quad	0x401c995a6c5d206d              # double 7.1497590000000004
	.quad	0x400d6647778dd617              # double 3.674941
	.quad	0x4005f07bfe7e1fc1              # double 2.7424240000000002
	.quad	0x402093e0ded288ce              # double 8.2888249999999992
	.quad	0x4022693b3a68b19a              # double 9.2055299999999995
	.quad	0x40141e2089e34331              # double 5.0294210000000001
	.quad	0x4001082adc4c9c91              # double 2.1289880000000001
	.quad	0x400631eafee6fb4c              # double 2.7743739999999999
	.quad	0x401ae003254e6e22              # double 6.7187619999999999
	.quad	0x400db609dcf893fb              # double 3.713886
	.quad	0x400782c881e4712e              # double 2.9388589999999999
	.quad	0x4014c55f78359bc3              # double 5.1927469999999998
	.quad	0x40173bd72bcb5fe5              # double 5.8084379999999998
	.quad	0x40135ae3a3a8e714              # double 4.8387589999999996
	.quad	0x3ff14cd962068555              # double 1.0812619999999999
	.quad	0x40187b63d3e4ef03              # double 6.1204980000000004
	.quad	0x3ff3c9070fbeb9e5              # double 1.2365790000000001
	.quad	0x401ecef5232d2bb2              # double 7.7021069999999998
	.quad	0x401a6a77e5eaab04              # double 6.6039729999999999
	.quad	0x4015e3dc8b86b160              # double 5.4725210000000004
	.quad	0x4016bf5fd47bedb7              # double 5.6868889999999999
	.quad	0x40069cd898b2e9cd              # double 2.8265850000000001
	.quad	0x4021d14d94078961              # double 8.9087949999999996
	.quad	0x401125104d551d69              # double 4.2861950000000002
	.quad	0x401fb59641f64495              # double 7.9273309999999996
	.quad	0x3fe0e9c886162f16              # double 0.52853799999999995
	.quad	0x4019b47f993d5348              # double 6.4262680000000003
	.quad	0x401b061804d98394              # double 6.7559509999999996
	.quad	0x4023beb97fe8ee6c              # double 9.8725090000000008
	.quad	0x400071ac9afe1da8              # double 2.0555050000000001
	.quad	0x402000c868b9fdbd              # double 8.0015289999999997
	.quad	0x401b923f67f4dbe0              # double 6.8928200000000004
	.quad	0x401a55109070fbec              # double 6.5830710000000003
	.quad	0x40033d0aed99cbef              # double 2.4048060000000002
	.quad	0x402178b673c4f3ba              # double 8.7357669999999992
	.quad	0x401de7b56b873797              # double 7.4762779999999998
	.quad	0x40149540cc78e9f7              # double 5.1457550000000003
	.quad	0x3fe410a99b6f5caf              # double 0.62703399999999998
	.quad	0x40187bfb9bed30f0              # double 6.1210769999999997
	.quad	0x401368ba40d90e24              # double 4.8522730000000003
	.quad	0x4017d0d62bf11f92              # double 5.9539419999999996
	.quad	0x4001ba58f7121ab5              # double 2.2159900000000001
	.quad	0x40074a1f8e3ac0c6              # double 2.9111929999999999
	.quad	0x3fd7427418d6909b              # double 0.363431
	.quad	0x401835e529bae46d              # double 6.052632
	.quad	0x401fde21d96e9bbf              # double 7.9669259999999999
	.quad	0x400afd87b56b8738              # double 3.3737940000000002
	.quad	0x401f4cf0b6b6e0d2              # double 7.8251369999999998
	.quad	0x4023fa36e2eb1c43              # double 9.9886999999999996
	.quad	0x4014f5cb790fb656              # double 5.2400339999999996
	.quad	0x4020788ce703afb8              # double 8.2354500000000002
	.quad	0x4016b71b0468448d              # double 5.678814
	.quad	0x3fe227179bfdf7e8              # double 0.567272
	.quad	0x4011f4c2f837b4a2              # double 4.4890249999999998
	.quad	0x3fe1f92d1287c201              # double 0.56166700000000003
	.quad	0x40189640639d5e4a              # double 6.1467299999999998
	.quad	0x401f442dcf4623d1              # double 7.8165810000000002
	.quad	0x4006de89a88ace25              # double 2.8586610000000001
	.quad	0x40206f9e9d0e9920              # double 8.2180070000000001
	.quad	0x40218d66277c45cc              # double 8.7761700000000004
	.quad	0x3ff53ce63a5c1c61              # double 1.3273680000000001
	.quad	0x3ffd94738a3b57c5              # double 1.848743
	.quad	0x3f983947496aad1d              # double 0.023656
	.quad	0x4021105e3da2f8be              # double 8.5319690000000001
	.quad	0x401352c7325918a0              # double 4.830838
	.quad	0x3fd5e6c093d96638              # double 0.34220899999999999
	.quad	0x4019bcdb37c99ae9              # double 6.4344299999999999
	.quad	0x4014f4228997c3d7              # double 5.2384130000000004
	.quad	0x401f7ca89fc6da45              # double 7.8717370000000004
	.quad	0x4009058ab92c0618              # double 3.1277059999999999
	.quad	0x401ce96a26e54717              # double 7.2279439999999999
	.quad	0x4014058644523f68              # double 5.005395
	.quad	0x4013a1b43526527a              # double 4.9079139999999999
	.quad	0x3fe6a6aca7935760              # double 0.70784599999999998
	.quad	0x4013178a6dacabc5              # double 4.7729889999999999
	.quad	0x401bc5d80e496edf              # double 6.9432070000000001
	.quad	0x401f694317acc4f0              # double 7.8527950000000004
	.quad	0x40122b413986338b              # double 4.5422409999999998
	.quad	0x40070ebbba55d1c4              # double 2.8821940000000001
	.quad	0x401e8ba5e353f7cf              # double 7.6363750000000001
	.quad	0x4021790d5a5b9629              # double 8.7364300000000004
	.quad	0x3ffef2e1693c03bc              # double 1.9342969999999999
	.quad	0x3ffa39f23465625a              # double 1.6391469999999999
	.quad	0x3ff4b5fb2edfe75c              # double 1.2944290000000001
	.quad	0x40200cae21101b00              # double 8.0247659999999996
	.quad	0x401e0f23cc8de2ac              # double 7.5147849999999998
	.quad	0x3fff1a9003eea20a              # double 1.9439850000000001
	.quad	0x3ff2241e57d9dba9              # double 1.133818
	.quad	0x3fef6af46aa087ca              # double 0.98180599999999996
	.quad	0x40228a2d948dc11e              # double 9.2698789999999995
	.quad	0x401e7b20fb224aae              # double 7.6202430000000003
	.quad	0x3ff89f8f4730403a              # double 1.5389550000000001
	.quad	0x40229061e92923e6              # double 9.2819970000000005
	.quad	0x402221d627bf61aa              # double 9.0660869999999996
	.quad	0x40143c664d3bf2f5              # double 5.0589839999999997
	.quad	0x400ec577531db446              # double 3.846419
	.quad	0x401bdf5d35653c9b              # double 6.9681290000000002
	.quad	0x401be06f69446738              # double 6.9691749999999999
	.quad	0x401e52014727dcbe              # double 7.5800830000000001
	.quad	0x4017b6ebd4cfd08d              # double 5.9286339999999997
	.quad	0x4023066e008e9b39              # double 9.5125580000000002
	.quad	0x401c733d6c721922              # double 7.1125389999999999
	.quad	0x40180cc037931444              # double 6.0124519999999997
	.quad	0x4012a5b813016484              # double 4.661835
	.quad	0x4020b01ba7fc32ec              # double 8.3439610000000001
	.quad	0x4005749f0e4da09d              # double 2.6819440000000001
	.quad	0x400c6a60913a4f87              # double 3.5519419999999999
	.quad	0x40061e718a86d71f              # double 2.7648649999999999
	.quad	0x4016243aa79bbadc              # double 5.53538
	.quad	0x40143d6fda836eb5              # double 5.0599970000000001
	.quad	0x4006aab1d4f9c1f8              # double 2.8333469999999998
	.quad	0x4011d1b328b6d86f              # double 4.4547850000000002
	.quad	0x4016282a9930be0e              # double 5.5392250000000001
	.quad	0x402295783dff3f10              # double 9.2919330000000002
	.quad	0x4017ff7dfa00e27e              # double 5.9995039999999999
	.quad	0x401aa1d1d4738a3b              # double 6.6580269999999997
	.quad	0x3ff84204f2ae07e6              # double 1.5161180000000001
	.quad	0x3fe5a9b6b2af1455              # double 0.67696699999999999
	.quad	0x401c66e9bbf0dc77              # double 7.1005010000000004
	.quad	0x401b1c5197a24895              # double 6.7776550000000002
	.quad	0x4022646c764adff8              # double 9.1961399999999997
	.quad	0x400aa8787485e3da              # double 3.3322609999999999
	.quad	0x3ff2cdee34fc610f              # double 1.175276
	.quad	0x3ffbdc6e2a80064b              # double 1.7413160000000001
	.quad	0x4015b0dc768dfbd7              # double 5.4227160000000003
	.quad	0x4015d65c70435efa              # double 5.4593369999999997
	.quad	0x40214605681ecd4b              # double 8.6367600000000007
	.quad	0x4020abab21815a08              # double 8.3352900000000005
	.quad	0x40207787ad080b67              # double 8.2334569999999996
	.quad	0x400730edc3bd5992              # double 2.8988909999999999
	.quad	0x4011ff71eafee6fb              # double 4.4994579999999997
	.quad	0x3fde3baba7b9170d              # double 0.47239199999999998
	.quad	0x3fd714983d790753              # double 0.36063200000000001
	.quad	0x4014bf5771001d5c              # double 5.1868569999999998
	.quad	0x4014ba8650e77920              # double 5.1821529999999996
	.quad	0x401e62a90cd423d9              # double 7.5963479999999998
	.quad	0x402301b6f5caf2d8              # double 9.503349
	.quad	0x40087b4784230fd0              # double 3.0601950000000002
	.quad	0x4020b37c5692b3cc              # double 8.3505579999999994
	.quad	0x40215c1d8e864021              # double 8.6799130000000009
	.quad	0x4023988dd1e53a82              # double 9.7979570000000002
	.quad	0x4013ec660a201472              # double 4.9808579999999996
	.quad	0x4018528c79f66623              # double 6.0806139999999997
	.quad	0x4022f7db09a671ef              # double 9.4840929999999996
	.quad	0x4020aa365cb35f3d              # double 8.3324459999999991
	.quad	0x3fed74e874c8ffb9              # double 0.92052100000000003
	.quad	0x3ff73ecedd484513              # double 1.452834
	.quad	0x4013df21f6cacd18              # double 4.9679029999999997
	.quad	0x3fdef1a9fbe76c8b              # double 0.48349999999999999
	.quad	0x4020b30df9bdc6a0              # double 8.3497160000000008
	.quad	0x4022b8b220791c4c              # double 9.3607340000000007
	.quad	0x3ff06a7bd48cb4af              # double 1.025997
	.quad	0x3fde7fa5d28d002e              # double 0.47654099999999999
	.quad	0x401ba61309c7ffde              # double 6.9121819999999996
	.quad	0x4023696787ce95fb              # double 9.7058680000000006
	.quad	0x3ff35c044284dfce              # double 1.209965
	.quad	0x4002593250b5243a              # double 2.2935530000000002
	.quad	0x401bb23571d1d474              # double 6.9240320000000004
	.quad	0x3f5372a38b8ae31d              # double 0.0011869999999999999
	.quad	0x4013f122749f0e4e              # double 4.9854830000000003
	.quad	0x401efcb31c219eb6              # double 7.7467769999999998
	.quad	0x40119c23315d701e              # double 4.4024780000000003
	.quad	0x3ff1d91dde37585c              # double 1.115507
	.quad	0x3fe78fe260b2c83f              # double 0.73631400000000002
	.quad	0x4010d6709fa54c55              # double 4.2094139999999998
	.quad	0x401a403fb3743633              # double 6.5627430000000002
	.quad	0x3ffac0d1b71758e2              # double 1.672075
	.quad	0x40156fcb4f1e4b45              # double 5.3591740000000003
	.quad	0x4021b183947496ab              # double 8.8467070000000003
	.quad	0x40109d6e47dc37a4              # double 4.1537410000000001
	.quad	0x4006109aed56b010              # double 2.758108
	.quad	0x3fe3f06b37867f0b              # double 0.62309800000000004
	.quad	0x4020d75d35653c9b              # double 8.4206330000000005
	.quad	0x401a2afff36ac647              # double 6.5419919999999996
	.quad	0x4011a68e3ef28416              # double 4.4126519999999996
	.quad	0x401ae24c404a72eb              # double 6.7209940000000001
	.quad	0x400c4a8fc0d2c387              # double 3.5364070000000001
	.quad	0x3ffbab92c061847f              # double 1.7293879999999999
	.quad	0x3fb93aa369fcf3dc              # double 0.098550999999999999
	.quad	0x3fe362ac322291fb              # double 0.60579499999999997
	.quad	0x3fdb77bbf93ff25e              # double 0.42918299999999998
	.quad	0x3fe59b5c7cd898b3              # double 0.67521500000000001
	.quad	0x3fc42f944241c3f0              # double 0.15770200000000001
	.quad	0x401fa7b0b3919264              # double 7.9137599999999999
	.quad	0x401323d74d594f27              # double 4.7850010000000003
	.quad	0x40230b4d6a161e4f              # double 9.5220749999999991
	.quad	0x400edbf6a0dbad3a              # double 3.8574039999999998
	.quad	0x4023a73affb04ee8              # double 9.8266220000000004
	.quad	0x3fd3013a92a30553              # double 0.29694999999999999
	.quad	0x40235ae1693c03bc              # double 9.6775009999999994
	.quad	0x4022652007dd4413              # double 9.1975099999999994
	.quad	0x4021bf5d35653c9b              # double 8.8737580000000005
	.quad	0x40139fa7a85015c2              # double 4.905913
	.quad	0x4009c06d938151a4              # double 3.2189589999999999
	.quad	0x4020d40e5a35d67c              # double 8.4141720000000006
	.quad	0x400ba6822ff08894              # double 3.4563030000000001
	.quad	0x40193c2b94d94079              # double 6.3087600000000004
	.quad	0x4004cd80a17b0f6b              # double 2.6003430000000001
	.quad	0x40113b22d0e56042              # double 4.3077500000000004
	.quad	0x40236b4aec8d5c74              # double 9.7095559999999991
	.quad	0x4002574ddf86e3b4              # double 2.2926289999999998
	.quad	0x3ff277f06705c897              # double 1.154282
	.quad	0x4020869a4df47f99              # double 8.2628959999999996
	.quad	0x3fc1f961804d9839              # double 0.14042299999999999
	.quad	0x401f7e6f71a7e308              # double 7.8734719999999995
	.quad	0x4014916fc9bc7714              # double 5.1420279999999998
	.quad	0x401b60f238972043              # double 6.8446740000000004
	.quad	0x401a27f993d5347a              # double 6.5390379999999997
	.quad	0x4013f473471f7942              # double 4.988721
	.quad	0x3fe899029ae4f334              # double 0.76867799999999997
	.quad	0x400e989bd8383ada              # double 3.824516
	.quad	0x401ef14d2f5dbb9d              # double 7.735646
	.quad	0x4023376188b1140a              # double 9.6081660000000007
	.quad	0x40227574b407032a              # double 9.2294060000000009
	.quad	0x4014b251c193b3a7              # double 5.1741400000000004
	.quad	0x40185c1b54195cc8              # double 6.0899479999999997
	.quad	0x40011ee99a62ed35              # double 2.1400939999999999
	.quad	0x3fd9410b630a9153              # double 0.39459499999999997
	.quad	0x40207037f7be121f              # double 8.2191770000000002
	.quad	0x401e22378ab0c88a              # double 7.5334149999999998
	.quad	0x40218160d887ebf2              # double 8.7526919999999997
	.quad	0x40203e66ec9e236c              # double 8.1218789999999998
	.quad	0x401a790b84988095              # double 6.6182080000000001
	.quad	0x400b4c5436b8f9b1              # double 3.4122699999999999
	.quad	0x401b116052502eec              # double 6.7669689999999996
	.quad	0x3fc3ed527e521577              # double 0.15568000000000001
	.quad	0x4020ab9e279dd3bb              # double 8.335191
	.quad	0x3fff460780fdc161              # double 1.9545969999999999
	.quad	0x4022d10adcd2d44e              # double 9.4082860000000004
	.quad	0x400eeabd5dc40075              # double 3.8646189999999998
	.quad	0x400a246f9b994e1a              # double 3.2677909999999999
	.quad	0x4010277963992c8c              # double 4.0385489999999997
	.quad	0x401809d12cadddf4              # double 6.0095869999999998
	.quad	0x400d9c169c23b795              # double 3.7012149999999999
	.quad	0x4013665bea0ba1f5              # double 4.8499600000000003
	.quad	0x40235367e414e7ef              # double 9.6629020000000007
	.quad	0x400d79c1f85d744f              # double 3.6844519999999998
	.quad	0x4020d73a14cec41e              # double 8.4203650000000003
	.quad	0x400abca7503b81b6              # double 3.3421159999999999
	.quad	0x4008b78359bc33f8              # double 3.0896059999999999
	.quad	0x40214bc05d52c16e              # double 8.6479520000000001
	.quad	0x401e27a311e85fd0              # double 7.5387079999999997
	.quad	0x4012eaa9717df19d              # double 4.7291619999999996
	.quad	0x400e5d694ccab3ee              # double 3.7956110000000001
	.quad	0x4020af9314445aa3              # double 8.3429190000000002
	.quad	0x402176c6bce8533b              # double 8.7319849999999999
	.quad	0x401923864cb5bb38              # double 6.2846919999999997
	.quad	0x3ff8b1a8ef77f280              # double 1.543374
	.quad	0x4015f90f301eabbd              # double 5.4932220000000003
	.quad	0x4012cfcefaa4766c              # double 4.7029379999999996
	.quad	0x3ff6a0157eed45e9              # double 1.414083
	.quad	0x402191cb6848beb6              # double 8.7847550000000005
	.quad	0x3ff1c9752977c88e              # double 1.1116839999999999
	.quad	0x401f153da72a7bd5              # double 7.7707430000000004
	.quad	0x40121e642bf9830e              # double 4.5296789999999998
	.quad	0x3fff037824d4cb9f              # double 1.938347
	.quad	0x40175d3bafd976ff              # double 5.8410479999999998
	.quad	0x401a09185cee17a0              # double 6.5088819999999998
	.quad	0x401dc774aba38759              # double 7.4447809999999999
	.quad	0x400387fdc5931ca8              # double 2.4414020000000001
	.quad	0x3ff237b8d3f1843c              # double 1.1386039999999999
	.quad	0x4022390257c914b1              # double 9.1113459999999993
	.quad	0x40051bc0a06e9ff1              # double 2.6385510000000001
	.quad	0x3fff0e7ab7564303              # double 1.9410350000000001
	.quad	0x401b484988094e5d              # double 6.8205929999999997
	.quad	0x4008ae0daa0cae64              # double 3.0849869999999999
	.quad	0x4002155de58e64b2              # double 2.2604329999999999
	.quad	0x402341945b6c3761              # double 9.6280850000000004
	.quad	0x40016eebf65dbfcf              # double 2.1791610000000001
	.quad	0x4010d77ea1c68ec5              # double 4.2104439999999999
	.quad	0x4019a6a161e4f766              # double 6.412725
	.quad	0x4021467b3d8e0008              # double 8.6376589999999993
	.quad	0x400d1b2031ceaf25              # double 3.638245
	.quad	0x401d4059a73b42cc              # double 7.3128419999999998
	.quad	0x40225525aab47410              # double 9.1663029999999992
	.quad	0x3ff9810c6f7a0b5f              # double 1.594006
	.quad	0x4021856e8af81627              # double 8.7606090000000005
	.quad	0x3fe3c877681669cf              # double 0.61822100000000002
	.quad	0x40044b3e5753a3ec              # double 2.53674
	.quad	0x401d168dfbd6a594              # double 7.2720260000000003
	.quad	0x40029e1b8ed1bf7b              # double 2.3272010000000001
	.quad	0x3fed818c5c9a34ca              # double 0.92206399999999999
	.quad	0x40173a6506141637              # double 5.8070259999999996
	.quad	0x3fff0cb295e9e1b1              # double 1.9406000000000001
	.quad	0x402140c111ada76e              # double 8.6264730000000007
	.quad	0x4010901bc98a222d              # double 4.1407309999999997
	.quad	0x3fee3b60285ec3db              # double 0.94474800000000003
	.quad	0x40216ec13b9f127f              # double 8.7163179999999993
	.quad	0x4018c389b52007dd              # double 6.1909549999999998
	.quad	0x400997d6b65a9a80              # double 3.1991399999999999
	.quad	0x3ff2c430b178b370              # double 1.172898
	.quad	0x40123d60e94ee393              # double 4.5599400000000001
	.quad	0x401496ec9e236c16              # double 5.1473870000000002
	.quad	0x4010c21294573a79              # double 4.1895239999999996
	.quad	0x400404827b6fe2e7              # double 2.502202
	.quad	0x3fe2e1cbccf28c7a              # double 0.590063
	.quad	0x4012f3b320535c9e              # double 4.7379879999999996
	.quad	0x401829b30728e92d              # double 6.0407219999999997
	.quad	0x401f1f5558212945              # double 7.7805989999999995
	.quad	0x4017efa54c554328              # double 5.9840289999999996
	.quad	0x400a18bb4d48882f              # double 3.262076
	.quad	0x3fda39fba450acc1              # double 0.40978900000000001
	.quad	0x3ffaa53868fd199c              # double 1.6653370000000001
	.quad	0x402275da059a73b4              # double 9.2301789999999996
	.quad	0x4011a12be48a58b4              # double 4.407394
	.quad	0x400ee0b8066c2acc              # double 3.8597260000000002
	.quad	0x4003cfbca1059ea5              # double 2.4764339999999998
	.quad	0x4016f95bbbe878fb              # double 5.7435140000000002
	.quad	0x40211893532e7b3e              # double 8.5479990000000008
	.quad	0x3ff21d2178f68be3              # double 1.132112
	.quad	0x4009531c219eb639              # double 3.165581
	.quad	0x3ffe54a0a0f4d7ae              # double 1.895661
	.quad	0x402260f3eccc4695              # double 9.1893609999999999
	.quad	0x401117d7c2ca148c              # double 4.2732840000000003
	.quad	0x4023ff37110e453d              # double 9.9984669999999997
	.quad	0x3fc414cec41dd1a2              # double 0.156885
	.quad	0x4022e8db4890928a              # double 9.4547980000000003
	.quad	0x3ffea775fb2edfe7              # double 1.9158839999999999
	.quad	0x3fef628027d88c1e              # double 0.98077400000000003
	.quad	0x40222456f75d9a0f              # double 9.0709759999999999
	.quad	0x3ff64887229e9079              # double 1.3927069999999999
	.quad	0x402338941c8216c6              # double 9.6105049999999999
	.quad	0x4021f0ecb74ddf87              # double 8.9705560000000002
	.quad	0x40016bc83a96d4c3              # double 2.1776279999999999
	.quad	0x401bba033e78e193              # double 6.9316529999999998
	.quad	0x4014fb3311a543f2              # double 5.2453120000000002
	.quad	0x401b1650e779207d              # double 6.7717929999999997
	.quad	0x40094bf444e0daa1              # double 3.1620870000000001
	.quad	0x3fdf4c942d490e67              # double 0.48904900000000001
	.quad	0x4021a0afa2f05a71              # double 8.8138400000000008
	.quad	0x3ffa9845dc832336              # double 1.6621760000000001
	.quad	0x400c78a009f62307              # double 3.5588989999999998
	.quad	0x401ac86db50f40e6              # double 6.6957310000000003
	.quad	0x401aba9de8b3b320              # double 6.6822429999999997
	.quad	0x3ff70a04d12018a4              # double 1.4399459999999999
	.quad	0x40153da5119ce076              # double 5.3102
	.quad	0x40147b18116ebd4d              # double 5.120209
	.quad	0x401e819f7f8ca81a              # double 7.6265850000000004
	.quad	0x400672aae297396d              # double 2.80599
	.quad	0x4015897d49d7ba67              # double 5.3842670000000004
	.quad	0x40180bdad7518b0d              # double 6.0115769999999999
	.quad	0x401f36887a8d64d8              # double 7.803255
	.quad	0x40191aab47410731              # double 6.2760439999999997
	.quad	0x4008c5154866a11f              # double 3.0962320000000001
	.quad	0x400c25af6c69b5a6              # double 3.5184009999999999
	.quad	0x40068b295e9e1b09              # double 2.8179500000000002
	.quad	0x40026130164840e1              # double 2.2974549999999998
	.quad	0x401efa38fbca105a              # double 7.7443580000000001
	.quad	0x4022c642e1262025              # double 9.3872289999999996
	.quad	0x400ba65a57646ae4              # double 3.4562270000000002
	.quad	0x4008d1843c3a42f2              # double 3.102303
	.quad	0x4010027179bfdf7f              # double 4.0023860000000004
	.quad	0x4022fed56b00ffda              # double 9.4977219999999996
	.quad	0x4014b2a9d627bf62              # double 5.1744760000000003
	.quad	0x401561151611ba3d              # double 5.3448070000000003
	.quad	0x40208b95e5aff2a1              # double 8.2726279999999992
	.quad	0x40198902de00d1b7              # double 6.3837999999999999
	.quad	0x3ff797ecbb7f9d6f              # double 1.474591
	.quad	0x40200e5bc87db2b3              # double 8.0280439999999995
	.quad	0x4019626aa8eb4635              # double 6.3461100000000004
	.quad	0x40147068db8bac71              # double 5.109775
	.quad	0x4023cf4fb549f948              # double 9.9049049999999994
	.quad	0x400dd7d41743e964              # double 3.7303850000000001
	.quad	0x3fbf4e7685985ad5              # double 0.122291
	.quad	0x3fe61f01b866e43b              # double 0.69128500000000004
	.quad	0x3ffe95464dc22ab2              # double 1.9114439999999999
	.quad	0x4019a18ce2d1f1d0              # double 6.4077640000000002
	.quad	0x40142ac57e23f24e              # double 5.0417690000000004
	.quad	0x40050229a5ebb774              # double 2.6260560000000002
	.quad	0x3ff24e15011904b4              # double 1.1440630000000001
	.quad	0x400a992e1ef73c0c              # double 3.3247949999999999
	.quad	0x401b518fc504816f              # double 6.82965
	.quad	0x40178a3161a1db87              # double 5.8849539999999996
	.quad	0x3fcc45dc8323358f              # double 0.220882
	.quad	0x3fe21680e0653006              # double 0.56524700000000005
	.quad	0x401c95dcc63f1412              # double 7.14635
	.quad	0x401ba7dae81882ae              # double 6.9139210000000002
	.quad	0x40043eeed8904f6e              # double 2.530729
	.quad	0x4017f12556d19ded              # double 5.9854940000000001
	.quad	0x40163dd3bafd9770              # double 5.560378
	.quad	0x40183d59d55e6bc6              # double 6.0599129999999999
	.quad	0x4001a6bf8769ec2d              # double 2.20642
	.quad	0x401ef0870110a138              # double 7.73489
	.quad	0x3fc5ccc037931444              # double 0.17031099999999999
	.quad	0x40223570a3d70a3d              # double 9.1043749999999992
	.quad	0x402327e8ccdd93c4              # double 9.5779479999999992
	.quad	0x400b1b4dcebfec14              # double 3.3883320000000001
	.quad	0x4003bec3dab5c39c              # double 2.4681470000000001
	.quad	0x3ff4824c404a72eb              # double 1.281811
	.quad	0x4021b141e9af5ba3              # double 8.8462060000000005
	.quad	0x3ffe12dfd694ccab              # double 1.8796079999999999
	.quad	0x400840296b3354c1              # double 3.0313289999999999
	.quad	0x4021536fe2e6ea85              # double 8.6629629999999995
	.quad	0x4011635ac8a37260              # double 4.3470259999999996
	.quad	0x40017e835dedf1e1              # double 2.1867740000000002
	.quad	0x401fa6922d948dc1              # double 7.9126669999999998
	.quad	0x3ff9391a32b12d34              # double 1.576441
	.quad	0x40192711d798d8a9              # double 6.2881539999999996
	.quad	0x40151d3ed527e521              # double 5.2785599999999997
	.quad	0x401518eb8950763a              # double 5.2743359999999999
	.quad	0x401243baba7b9171              # double 4.5661420000000001
	.quad	0x4007f30489d27c39              # double 2.9936609999999999
	.quad	0x400d261bf37b8d3f              # double 3.643608
	.quad	0x401d3cb4aec8d5c7              # double 7.3092829999999998
	.quad	0x4016a9cf9a06a6e3              # double 5.6658309999999998
	.quad	0x400d6e07e5a78f26              # double 3.6787260000000002
	.quad	0x402343cfd4bf0996              # double 9.6324450000000006
	.quad	0x400caf2c7325918a              # double 3.585534
	.quad	0x4017e4bcad9ad85e              # double 5.973376
	.quad	0x3f68372e6a76965f              # double 0.0029559999999999999
	.quad	0x401cc68dfbd6a594              # double 7.1939010000000003
	.quad	0x40168dffc5479d4e              # double 5.6386710000000004
	.quad	0x401edb1a6d698fe7              # double 7.7139680000000003
	.quad	0x4011b9c6b0531983              # double 4.4314220000000004
	.quad	0x40120d2aa5c5f7c6              # double 4.5128579999999996
	.quad	0x400b64a59c065b64              # double 3.4241440000000001
	.quad	0x4019e26d8b1dd5d4              # double 6.4711210000000001
	.quad	0x3fea9c36976bc1f0              # double 0.831569
	.quad	0x401e09fa97e132b5              # double 7.5097449999999996
	.quad	0x3fe15b8348f53c58              # double 0.54242100000000004
	.quad	0x401a49ce8d972cd8              # double 6.5720770000000002
	.quad	0x3feb3d3804534bd7              # double 0.85122299999999995
	.quad	0x3ffbbb44e50c5eb3              # double 1.73322
	.quad	0x40228cbab649d389              # double 9.2748620000000006
	.quad	0x40003304039abf34              # double 2.0249100000000002
	.quad	0x401293e81450efdd              # double 4.6444400000000003
	.quad	0x401515c422036007              # double 5.2712560000000002
	.quad	0x401f09888f861a61              # double 7.7593100000000001
	.quad	0x40125408d8ec95c0              # double 4.5820650000000001
	.quad	0x400bdc0ca600b029              # double 3.4824459999999999
	.quad	0x4019f7d1351159c5              # double 6.4920090000000004
	.quad	0x400b41d6494d50ec              # double 3.4071470000000001
	.quad	0x3ff2eb56fb8f57f7              # double 1.182456
	.quad	0x400ed170d62bf120              # double 3.8522660000000002
	.quad	0x3fd55edd052934ad              # double 0.33391500000000002
	.quad	0x3fee6de33269df98              # double 0.95091400000000003
	.quad	0x4021a434e3369b9d              # double 8.8207159999999991
	.quad	0x3fccf4c6e6d9be4d              # double 0.22622
	.quad	0x4012e97a24894c44              # double 4.7280049999999996
	.quad	0x4021c82c4d65e460              # double 8.8909629999999993
	.quad	0x401a40ce91c8eac0              # double 6.563288
	.quad	0x401bc983947496ab              # double 6.9467910000000002
	.quad	0x3fe527e0ef99806f              # double 0.66111799999999998
	.quad	0x3ff303526527a205              # double 1.1883109999999999
	.quad	0x4018bc3547e06962              # double 6.1837970000000002
	.quad	0x401f24dfce3150db              # double 7.78601
	.quad	0x4012896638433d6c              # double 4.6341789999999996
	.quad	0x400f2aa326e11559              # double 3.8958189999999999
	.quad	0x401597d73c925786              # double 5.398282
	.quad	0x3fea6d8f4f93bc0a              # double 0.825874
	.quad	0x4010dfb1e18efbb1              # double 4.2184520000000001
	.quad	0x4003c6e5cd4ed2cc              # double 2.472118
	.quad	0x40021c04c8bc9cd4              # double 2.2636810000000001
	.quad	0x4014a6030c23fab1              # double 5.162121
	.quad	0x40120799e518f3ed              # double 4.5074230000000002
	.quad	0x4000c617c1bda512              # double 2.0967250000000002
	.size	.L__constant_1999xf64, 15992

	.section	".note.GNU-stack","",@progbits
