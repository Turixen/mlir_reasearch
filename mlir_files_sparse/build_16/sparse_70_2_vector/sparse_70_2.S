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
	.quad	0x41448e2de5ba1b19              # double 2694235.7947419998
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
	.quad	3000                            # 0xbb8
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	3000                            # 0xbb8
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
	lui	a7, %hi(.L__constant_3000xindex)
	addi	a7, a7, %lo(.L__constant_3000xindex)
	lui	t0, %hi(.L__constant_3000xf64)
	addi	t0, t0, %lo(.L__constant_3000xf64)
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
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	117                             # 0x75
	.quad	122                             # 0x7a
	.quad	179                             # 0xb3
	.quad	185                             # 0xb9
	.quad	238                             # 0xee
	.quad	242                             # 0xf2
	.quad	299                             # 0x12b
	.quad	305                             # 0x131
	.quad	358                             # 0x166
	.quad	365                             # 0x16d
	.quad	419                             # 0x1a3
	.quad	421                             # 0x1a5
	.quad	474                             # 0x1da
	.quad	483                             # 0x1e3
	.quad	537                             # 0x219
	.quad	543                             # 0x21f
	.quad	596                             # 0x254
	.quad	602                             # 0x25a
	.quad	654                             # 0x28e
	.quad	660                             # 0x294
	.quad	711                             # 0x2c7
	.quad	715                             # 0x2cb
	.quad	771                             # 0x303
	.quad	774                             # 0x306
	.quad	828                             # 0x33c
	.quad	837                             # 0x345
	.quad	889                             # 0x379
	.quad	893                             # 0x37d
	.quad	947                             # 0x3b3
	.quad	955                             # 0x3bb
	.quad	1008                            # 0x3f0
	.quad	1013                            # 0x3f5
	.quad	1070                            # 0x42e
	.quad	1083                            # 0x43b
	.quad	1137                            # 0x471
	.quad	1143                            # 0x477
	.quad	1196                            # 0x4ac
	.quad	1204                            # 0x4b4
	.quad	1258                            # 0x4ea
	.quad	1263                            # 0x4ef
	.quad	1314                            # 0x522
	.quad	1318                            # 0x526
	.quad	1372                            # 0x55c
	.quad	1378                            # 0x562
	.quad	1432                            # 0x598
	.quad	1438                            # 0x59e
	.quad	1491                            # 0x5d3
	.quad	1498                            # 0x5da
	.quad	1552                            # 0x610
	.quad	1556                            # 0x614
	.quad	1609                            # 0x649
	.quad	1611                            # 0x64b
	.quad	1666                            # 0x682
	.quad	1672                            # 0x688
	.quad	1727                            # 0x6bf
	.quad	1733                            # 0x6c5
	.quad	1784                            # 0x6f8
	.quad	1786                            # 0x6fa
	.quad	1840                            # 0x730
	.quad	1850                            # 0x73a
	.quad	1902                            # 0x76e
	.quad	1906                            # 0x772
	.quad	1958                            # 0x7a6
	.quad	1970                            # 0x7b2
	.quad	2026                            # 0x7ea
	.quad	2037                            # 0x7f5
	.quad	2090                            # 0x82a
	.quad	2098                            # 0x832
	.quad	2152                            # 0x868
	.quad	2162                            # 0x872
	.quad	2213                            # 0x8a5
	.quad	2217                            # 0x8a9
	.quad	2271                            # 0x8df
	.quad	2280                            # 0x8e8
	.quad	2332                            # 0x91c
	.quad	2338                            # 0x922
	.quad	2393                            # 0x959
	.quad	2400                            # 0x960
	.quad	2454                            # 0x996
	.quad	2464                            # 0x9a0
	.quad	2515                            # 0x9d3
	.quad	2520                            # 0x9d8
	.quad	2574                            # 0xa0e
	.quad	2578                            # 0xa12
	.quad	2629                            # 0xa45
	.quad	2638                            # 0xa4e
	.quad	2690                            # 0xa82
	.quad	2694                            # 0xa86
	.quad	2751                            # 0xabf
	.quad	2755                            # 0xac3
	.quad	2808                            # 0xaf8
	.quad	2818                            # 0xb02
	.quad	2872                            # 0xb38
	.quad	2879                            # 0xb3f
	.quad	2933                            # 0xb75
	.quad	2939                            # 0xb7b
	.quad	2993                            # 0xbb1
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex_0, 808

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
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
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
	.quad	53                              # 0x35
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
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	98                              # 0x62
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
	.quad	65                              # 0x41
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	82                              # 0x52
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
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	29                              # 0x1d
	.quad	45                              # 0x2d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	55                              # 0x37
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
	.quad	7                               # 0x7
	.quad	34                              # 0x22
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	82                              # 0x52
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
	.quad	51                              # 0x33
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	27                              # 0x1b
	.quad	42                              # 0x2a
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	86                              # 0x56
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
	.quad	27                              # 0x1b
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	23                              # 0x17
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
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
	.quad	45                              # 0x2d
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	67                              # 0x43
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
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	41                              # 0x29
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
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
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
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
	.quad	99                              # 0x63
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	49                              # 0x31
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
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	62                              # 0x3e
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	33                              # 0x21
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	96                              # 0x60
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
	.quad	73                              # 0x49
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	64                              # 0x40
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
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
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	54                              # 0x36
	.quad	66                              # 0x42
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
	.quad	33                              # 0x21
	.quad	49                              # 0x31
	.quad	85                              # 0x55
	.quad	98                              # 0x62
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	29                              # 0x1d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
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
	.quad	45                              # 0x2d
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
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	53                              # 0x35
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	15                              # 0xf
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	88                              # 0x58
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
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	62                              # 0x3e
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	41                              # 0x29
	.quad	78                              # 0x4e
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
	.quad	61                              # 0x3d
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	61                              # 0x3d
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	13                              # 0xd
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	52                              # 0x34
	.quad	82                              # 0x52
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	81                              # 0x51
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	24                              # 0x18
	.quad	68                              # 0x44
	.quad	81                              # 0x51
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
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	86                              # 0x56
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
	.quad	39                              # 0x27
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
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	44                              # 0x2c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	21                              # 0x15
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
	.quad	16                              # 0x10
	.quad	31                              # 0x1f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	87                              # 0x57
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
	.quad	5                               # 0x5
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	69                              # 0x45
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
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	71                              # 0x47
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
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	57                              # 0x39
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	82                              # 0x52
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
	.quad	45                              # 0x2d
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
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	67                              # 0x43
	.quad	95                              # 0x5f
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	12                              # 0xc
	.quad	56                              # 0x38
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
	.quad	13                              # 0xd
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
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
	.quad	45                              # 0x2d
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
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	63                              # 0x3f
	.quad	76                              # 0x4c
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
	.quad	43                              # 0x2b
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
	.quad	16                              # 0x10
	.quad	35                              # 0x23
	.quad	62                              # 0x3e
	.quad	92                              # 0x5c
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
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
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
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	42                              # 0x2a
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
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
	.quad	0                               # 0x0
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	71                              # 0x47
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
	.quad	75                              # 0x4b
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
	.quad	10                              # 0xa
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.size	.L__constant_3000xindex, 24000

	.type	.L__constant_3000xf64,@object   # @__constant_3000xf64
	.p2align	6, 0x0
.L__constant_3000xf64:
	.quad	0x401da33bd9cae211              # double 7.409408
	.quad	0x40175825e13b18db              # double 5.8360820000000002
	.quad	0x3fe3cece9a2c6690              # double 0.61899499999999996
	.quad	0x401637e1b8ed1bf8              # double 5.5545720000000003
	.quad	0x3ffeb891e215336e              # double 1.920061
	.quad	0x401d0be0157eed46              # double 7.2615970000000001
	.quad	0x4003b23810e88590              # double 2.462021
	.quad	0x4007873797460243              # double 2.9410240000000001
	.quad	0x3fd9fa0945f9df55              # double 0.40588600000000002
	.quad	0x3ffe795f676ea423              # double 1.9046320000000001
	.quad	0x40225bbf0dc768e0              # double 9.1791920000000005
	.quad	0x4022b9aa1d755bcd              # double 9.3626260000000005
	.quad	0x40165aaa3ad18d26              # double 5.5885400000000001
	.quad	0x40208c827b6fe2e7              # double 8.2744330000000001
	.quad	0x3fd9c371da37ef5b              # double 0.40255400000000002
	.quad	0x401047f38c5436b9              # double 4.070265
	.quad	0x400489d7ba6698bb              # double 2.5673059999999999
	.quad	0x3f90cbaf965b20b8              # double 0.016402
	.quad	0x4020793059641f64              # double 8.2366969999999994
	.quad	0x4008844a6223e187              # double 3.0645950000000002
	.quad	0x400efab21815a07b              # double 3.8724099999999999
	.quad	0x400ff3d6c7219221              # double 3.994062
	.quad	0x40202d6e04c05921              # double 8.08873
	.quad	0x40154c1f85d744f6              # double 5.3243390000000002
	.quad	0x401c3854046412cf              # double 7.0550079999999999
	.quad	0x3fe5b3b96af038e3              # double 0.67818900000000004
	.quad	0x400997e996312f4d              # double 3.199176
	.quad	0x401378e3ac0c62e5              # double 4.8680560000000002
	.quad	0x40226f164c729f5a              # double 9.2169670000000004
	.quad	0x4008661f18c9fb61              # double 3.0498639999999999
	.quad	0x4018be24bba12b5e              # double 6.1856869999999997
	.quad	0x40231230b9dc2f40              # double 9.5355279999999993
	.quad	0x4011aaa1511dffc5              # double 4.4166309999999998
	.quad	0x401573dee78183f9              # double 5.3631549999999999
	.quad	0x400077f0ed3d859d              # double 2.0585650000000002
	.quad	0x400464662bae03b4              # double 2.549023
	.quad	0x40183f9830e3cd9a              # double 6.0621039999999997
	.quad	0x4023778012dfd695              # double 9.7333990000000003
	.quad	0x4013c2abef06b378              # double 4.9401089999999996
	.quad	0x4003be0d66f0cfe1              # double 2.4677989999999999
	.quad	0x400b3af9ebe9c886              # double 3.403797
	.quad	0x3ff4726f1dc50ce5              # double 1.277938
	.quad	0x400cb729b280f12c              # double 3.5894349999999999
	.quad	0x4000e40746455eaf              # double 2.1113420000000001
	.quad	0x3ffd9b1c864883fd              # double 1.8503689999999999
	.quad	0x401008b545c78a6e              # double 4.0085040000000003
	.quad	0x401e1fe974a3400c              # double 7.5311640000000004
	.quad	0x401c2c8605681ecd              # double 7.0434799999999997
	.quad	0x401631b97353b4b3              # double 5.548559
	.quad	0x40230734f82f5126              # double 9.5140759999999993
	.quad	0x3fe3f5d56f32bdc2              # double 0.62375899999999995
	.quad	0x3ffc3317efe0ce0c              # double 1.7624740000000001
	.quad	0x401c48a58b3f63c3              # double 7.0709439999999999
	.quad	0x401df8e7ddca4b12              # double 7.4930719999999997
	.quad	0x4000210e8858ff76              # double 2.0161410000000002
	.quad	0x4004d3e81450efdd              # double 2.6034700000000002
	.quad	0x3f74f3775b813016              # double 0.0051149999999999998
	.quad	0x402350c9fb6134ce              # double 9.6577909999999996
	.quad	0x40204d640e9d51b5              # double 8.151154
	.quad	0x4004b0cd423d9232              # double 2.5863290000000001
	.quad	0x4000f343fa2ad3e9              # double 2.1187819999999999
	.quad	0x3ff106af46aa087d              # double 1.0641320000000001
	.quad	0x3ff8eaf78feef5ed              # double 1.5573650000000001
	.quad	0x400a3b0f6ad70e6f              # double 3.2788379999999999
	.quad	0x3ff084f1a1986b9c              # double 1.032457
	.quad	0x402038f0c77dd873              # double 8.1112120000000001
	.quad	0x3ff19f505d0fa58f              # double 1.1013949999999999
	.quad	0x4020f0958d9b5e96              # double 8.4698910000000005
	.quad	0x401e9f444e0daa0d              # double 7.6555340000000002
	.quad	0x4017bede97d06bbe              # double 5.9363960000000002
	.quad	0x40027d1782d38477              # double 2.31108
	.quad	0x4020ebbf727136a4              # double 8.4604449999999999
	.quad	0x401f69c0ebedfa44              # double 7.853275
	.quad	0x401b032d6ece13f5              # double 6.7531030000000003
	.quad	0x40200e297396d091              # double 8.0276599999999991
	.quad	0x402384ae85b9e8c4              # double 9.7591439999999991
	.quad	0x3ffa904c48adeebb              # double 1.660229
	.quad	0x4003b0520d130dfa              # double 2.4610940000000001
	.quad	0x4014e40895d0b73d              # double 5.2226889999999999
	.quad	0x400896d86ec17ebb              # double 3.073655
	.quad	0x4017a21d53cddd6e              # double 5.908315
	.quad	0x3ff22fc47e49b1fb              # double 1.1366620000000001
	.quad	0x4016db3aeee95747              # double 5.7140919999999999
	.quad	0x40212f84a9478c87              # double 8.5928090000000008
	.quad	0x401a67bfa4c61d86              # double 6.6013169999999999
	.quad	0x4020d5b2702a3487              # double 8.4173770000000001
	.quad	0x401b0b21815a07b3              # double 6.7608699999999997
	.quad	0x4008c0d5629d840a              # double 3.094157
	.quad	0x3ff9972799a1fd15              # double 1.5994029999999999
	.quad	0x3ff513b9f127f5e8              # double 1.3173159999999999
	.quad	0x401435de9c0229a6              # double 5.0526070000000001
	.quad	0x400ce67dfe32a066              # double 3.6125449999999999
	.quad	0x3ff3dc1f85d744f6              # double 1.241241
	.quad	0x401ab64ece9a2c67              # double 6.6780350000000004
	.quad	0x401a606961c36977              # double 6.5941520000000002
	.quad	0x4020ee4302b40f67              # double 8.4653550000000006
	.quad	0x401be7414a4d2b2c              # double 6.975835
	.quad	0x40232375ea67e847              # double 9.5692590000000006
	.quad	0x4010b3d4ae429e0a              # double 4.1756159999999998
	.quad	0x4020fe93c03bc4d2              # double 8.4972209999999997
	.quad	0x400421c475e6362a              # double 2.5164879999999998
	.quad	0x3fdbc69f8c21e1d2              # double 0.43399799999999999
	.quad	0x4022761cbccf28c8              # double 9.2306880000000006
	.quad	0x401e06d698fe6927              # double 7.5066779999999999
	.quad	0x40167ac083126e98              # double 5.6198750000000004
	.quad	0x40183c22ee41919b              # double 6.0587270000000002
	.quad	0x401d77c393682731              # double 7.3669570000000002
	.quad	0x3fd47b4a2339c0ec              # double 0.320025
	.quad	0x3fe82adc4c9c90c5              # double 0.75523200000000001
	.quad	0x3fa53b29a1b9f98b              # double 0.041466999999999997
	.quad	0x401a6fd60e94ee39              # double 6.6092149999999998
	.quad	0x4020828a3f8982cb              # double 8.2549609999999998
	.quad	0x4004fb75a74c09c4              # double 2.6227830000000001
	.quad	0x401522deca2552a0              # double 5.2840530000000001
	.quad	0x4005b9c17225b74a              # double 2.7157010000000001
	.quad	0x3ffecc75c4a83b1d              # double 1.924917
	.quad	0x4007ac2b51bd61f6              # double 2.9590670000000001
	.quad	0x400c7b0ab2e1693c              # double 3.560079
	.quad	0x40063049a9973d9f              # double 2.7735780000000001
	.quad	0x3ffd19029ae4f334              # double 1.8186059999999999
	.quad	0x3ff6fdba0a526959              # double 1.4369449999999999
	.quad	0x40030e7e62dc6e2b              # double 2.3820770000000002
	.quad	0x40239b74ddf86e3b              # double 9.8036259999999995
	.quad	0x401282ae4b018612              # double 4.627618
	.quad	0x4013bd0edc3bd599              # double 4.9346269999999999
	.quad	0x40232ce3bcd35a86              # double 9.5876750000000008
	.quad	0x3fd7f95d4e8fb00c              # double 0.37459500000000001
	.quad	0x40205a22b3892ee8              # double 8.1760459999999995
	.quad	0x400fa835dedf1e08              # double 3.9571339999999999
	.quad	0x4018b90afe60c38f              # double 6.1807059999999998
	.quad	0x40037a4b5568e821              # double 2.434714
	.quad	0x3fde87ce95faa8a8              # double 0.47703899999999999
	.quad	0x4020e056a37ac3eb              # double 8.4381609999999991
	.quad	0x401929f94855da27              # double 6.2909899999999999
	.quad	0x4022a66dbd72bcb6              # double 9.325056
	.quad	0x3fea4621b7e0ac7e              # double 0.82106100000000004
	.quad	0x40112f294dd72368              # double 4.2960560000000001
	.quad	0x40221f8df7a4e7ab              # double 9.0616299999999992
	.quad	0x400262ad3e920c07              # double 2.2981820000000002
	.quad	0x401848882f0e0a85              # double 6.0708320000000002
	.quad	0x3fe985d95dd4c76d              # double 0.79758899999999999
	.quad	0x3ffcd32f87ad080b              # double 1.8015589999999999
	.quad	0x4014d2235b4edb2f              # double 5.2052129999999996
	.quad	0x40226f27dcbddb98              # double 9.2171009999999995
	.quad	0x4007df2c3009b307              # double 2.9839709999999999
	.quad	0x3ffd61dc93ea2d30              # double 1.836392
	.quad	0x3ffd096aad1d041d              # double 1.8147990000000001
	.quad	0x3ff2e9478c868ba0              # double 1.181953
	.quad	0x3ff55f83be6601bd              # double 1.3358190000000001
	.quad	0x401762036006d0d5              # double 5.8457160000000004
	.quad	0x40213528f190d174              # double 8.603828
	.quad	0x3ff709a34ca0c283              # double 1.439853
	.quad	0x402279a3f4666eca              # double 9.2375790000000002
	.quad	0x4016389a459103c9              # double 5.5552760000000001
	.quad	0x400a490abb44e50c              # double 3.2856649999999998
	.quad	0x4011f4827b6fe2e7              # double 4.4887790000000001
	.quad	0x40237d4152b0a6fc              # double 9.7446389999999993
	.quad	0x40218b19c5a3e39f              # double 8.7716809999999992
	.quad	0x401e212513b5bf6a              # double 7.532368
	.quad	0x40147cdfefbf401c              # double 5.1219479999999997
	.quad	0x401c70bd87b56b87              # double 7.1100979999999998
	.quad	0x4022887d6f976790              # double 9.2665819999999997
	.quad	0x400bf1eb851eb852              # double 3.493125
	.quad	0x4014ca2a0a958538              # double 5.1974260000000001
	.quad	0x401253836a832b99              # double 4.581556
	.quad	0x402312d0a2446306              # double 9.5367479999999993
	.quad	0x40192abcd78c4370              # double 6.2917360000000002
	.quad	0x401c33cc8de2ac32              # double 7.0505849999999999
	.quad	0x3fd6b3892ee84ad8              # double 0.35470800000000002
	.quad	0x40008eb702602c91              # double 2.0696850000000002
	.quad	0x3fe2016ce789e775              # double 0.56267400000000001
	.quad	0x4004e469d7342edc              # double 2.6115300000000001
	.quad	0x40181a4f440af1cc              # double 6.0256930000000004
	.quad	0x402036032db1e9f2              # double 8.1054929999999992
	.quad	0x3fdb9c17225b749b              # double 0.43140200000000001
	.quad	0x4020dcf63800218e              # double 8.4315660000000001
	.quad	0x40160996fa82e87d              # double 5.5093649999999998
	.quad	0x400e272756861e93              # double 3.7691180000000002
	.quad	0x3fdf1fd5885d3133              # double 0.48631799999999997
	.quad	0x40195ca0c282c6ef              # double 6.3404569999999998
	.quad	0x401ba5903a7546d4              # double 6.911683
	.quad	0x401c7047d3d4280b              # double 7.1096490000000001
	.quad	0x4022f2be48a58b3f              # double 9.4741079999999993
	.quad	0x40218777d0f1f57b              # double 8.7645859999999995
	.quad	0x401766427c7c5261              # double 5.849863
	.quad	0x40134647778dd617              # double 4.818632
	.quad	0x3fe222e5de15ca6d              # double 0.56676000000000004
	.quad	0x401add972cd7cf5f              # double 6.7163969999999997
	.quad	0x4003e6be7afa7222              # double 2.4876680000000002
	.quad	0x401cfe69f05ea24d              # double 7.2484510000000002
	.quad	0x3fd9f5f91600f345              # double 0.405638
	.quad	0x3fe861e92923e5b8              # double 0.76195199999999996
	.quad	0x40237678183f91e6              # double 9.7313849999999995
	.quad	0x40148d2c7b890d5a              # double 5.1378649999999997
	.quad	0x4020a52fe3f359ff              # double 8.3226309999999994
	.quad	0x4021a3f42352eb5f              # double 8.8202219999999993
	.quad	0x4008a3b46fdeb52d              # double 3.0799340000000002
	.quad	0x400c213e3e29307b              # double 3.516232
	.quad	0x401830bbf50e3476              # double 6.0475919999999999
	.quad	0x4021d07160956c0d              # double 8.9071149999999992
	.quad	0x4014abe3c105186e              # double 5.1678610000000003
	.quad	0x401b9af922962cfe              # double 6.9013410000000004
	.quad	0x3ff725668c261390              # double 1.446631
	.quad	0x401a61ca3a4b5569              # double 6.5954980000000001
	.quad	0x40131e325d4a5df2              # double 4.7794889999999999
	.quad	0x3ffec0f345069a4e              # double 1.922107
	.quad	0x4023032b12d3415b              # double 9.5061879999999998
	.quad	0x4022603d57796399              # double 9.1879679999999997
	.quad	0x40120f2a172abef0              # double 4.5148089999999996
	.quad	0x402169ad2135daad              # double 8.7063989999999993
	.quad	0x3fb7a4d6e47dc37a              # double 0.092358999999999996
	.quad	0x401c1dafd113836b              # double 7.0289910000000004
	.quad	0x3fe5efbb0e5e6794              # double 0.68551399999999996
	.quad	0x401fc31487768167              # double 7.9405080000000003
	.quad	0x3fc5d6e8af81626b              # double 0.17062099999999999
	.quad	0x4018db291b823c86              # double 6.2140240000000002
	.quad	0x3fa5c981beb18117              # double 0.042553000000000001
	.quad	0x40120d22424a276b              # double 4.5128259999999996
	.quad	0x40206d06dd69d302              # double 8.2129429999999992
	.quad	0x3fe4e4649906cca3              # double 0.65288000000000002
	.quad	0x3fe07f79c842fa51              # double 0.51556100000000005
	.quad	0x4021d8b7c3504c49              # double 8.9232770000000006
	.quad	0x4009e073de1e2de8              # double 3.2345959999999998
	.quad	0x4017fe4d1a650614              # double 5.9983409999999999
	.quad	0x40017016ce789e77              # double 2.1797309999999999
	.quad	0x401b202f2f987400              # double 6.7814300000000003
	.quad	0x4000001cd5f99c39              # double 2.0000550000000001
	.quad	0x4023627fa1a0cf18              # double 9.6923799999999999
	.quad	0x4015baa5c5f7c676              # double 5.4322730000000004
	.quad	0x40111cf9a06a6e33              # double 4.2782960000000001
	.quad	0x4006c8461f9f01b8              # double 2.8477899999999998
	.quad	0x400c34be835dedf2              # double 3.5257540000000001
	.quad	0x40229834b0e1b4bb              # double 9.2972769999999993
	.quad	0x401836ec9e236c16              # double 6.0536370000000002
	.quad	0x4019da732df505d1              # double 6.46333
	.quad	0x3fefba0407cc7d1c              # double 0.99145700000000003
	.quad	0x401a49bfdf7e8039              # double 6.5720210000000003
	.quad	0x400299c5a3e39f77              # double 2.3250839999999999
	.quad	0x4017f8754f3775b8              # double 5.9926349999999999
	.quad	0x4022102795703f2d              # double 9.0315519999999996
	.quad	0x400c9616f86a0989              # double 3.573286
	.quad	0x3f9060780fdc1616              # double 0.015993
	.quad	0x40233a7d24180d3d              # double 9.614236
	.quad	0x3fe82a8869c66d37              # double 0.75519199999999997
	.quad	0x400f6746cb966be8              # double 3.9254280000000001
	.quad	0x4005617d2849cb25              # double 2.6726019999999999
	.quad	0x400bd369b9d7fd82              # double 3.4782289999999998
	.quad	0x3ff35c3efae7924b              # double 1.210021
	.quad	0x40221306e5cd4ed3              # double 9.0371620000000004
	.quad	0x40095b1960fa15db              # double 3.1694819999999999
	.quad	0x40086c98e53eb39a              # double 3.053026
	.quad	0x3ff8835371971c11              # double 1.532062
	.quad	0x40216710a99b6f5d              # double 8.7012990000000006
	.quad	0x400b985c67dfe32a              # double 3.449395
	.quad	0x3fd4b9ecf6380022              # double 0.32384800000000002
	.quad	0x4023bcbccf28c79f              # double 9.8686279999999992
	.quad	0x3fe9b59146e4c0df              # double 0.80341399999999996
	.quad	0x400a4ff0025bfad3              # double 3.2890320000000002
	.quad	0x401e5e8427418d69              # double 7.5923009999999999
	.quad	0x3ff247314ca925ff              # double 1.1423810000000001
	.quad	0x402397b2031ceaf2              # double 9.7962799999999994
	.quad	0x4007bd96e9bbf0dc              # double 2.9675729999999998
	.quad	0x3fee953dea465a57              # double 0.95571799999999996
	.quad	0x4005b5fd47bedb73              # double 2.7138620000000002
	.quad	0x400030d5a5b9628d              # double 2.0238450000000001
	.quad	0x40236e5492ff4ba5              # double 9.7154889999999998
	.quad	0x40035387160956c1              # double 2.4157850000000001
	.quad	0x402303cff64cf8d7              # double 9.5074459999999998
	.quad	0x400ca2bf9830e3ce              # double 3.5794670000000002
	.quad	0x402328919ef954eb              # double 9.5792359999999998
	.quad	0x3fb45718eb895076              # double 0.079453999999999996
	.quad	0x4014775104d551d7              # double 5.1165200000000004
	.quad	0x401e59aed56b0100              # double 7.5875810000000001
	.quad	0x4015488b545c78a7              # double 5.3208440000000001
	.quad	0x4022e86df82b1f68              # double 9.4539639999999991
	.quad	0x401836006d0d4995              # double 6.0527360000000003
	.quad	0x40126736049ecb32              # double 4.6007920000000002
	.quad	0x4009f6c508b32ce9              # double 3.2454930000000002
	.quad	0x3ff2837718655193              # double 1.1570959999999999
	.quad	0x4003a1f7d73c9258              # double 2.4540860000000002
	.quad	0x40199c044284dfce              # double 6.4023599999999998
	.quad	0x4015b82e87d2c7b9              # double 5.4298650000000004
	.quad	0x40230793bc0a06ea              # double 9.514799
	.quad	0x40071d3ed527e521              # double 2.8892799999999998
	.quad	0x40202057f3061c7a              # double 8.0631710000000005
	.quad	0x3ffb9a500d5e8d54              # double 1.725174
	.quad	0x4019050ce4ead0c4              # double 6.2549320000000002
	.quad	0x4011730fcf80dc33              # double 4.3623649999999996
	.quad	0x4011d9652bd3c361              # double 4.4622999999999999
	.quad	0x402033018611fd59              # double 8.0996210000000008
	.quad	0x40001e64f54d1e97              # double 2.0148410000000001
	.quad	0x401f47d7c2ca148c              # double 7.8201590000000003
	.quad	0x401a87b784662bae              # double 6.632536
	.quad	0x40117fdc1615ebfb              # double 4.3748630000000004
	.quad	0x3ff2b992c8c50050              # double 1.1703060000000001
	.quad	0x4009474fb549f948              # double 3.1598199999999999
	.quad	0x401f7d9945b6c376              # double 7.872655
	.quad	0x4023004c8bc9cd3e              # double 9.5005839999999999
	.quad	0x400e96b8f9b13166              # double 3.8235950000000001
	.quad	0x401cd57e23f24d90              # double 7.2084890000000001
	.quad	0x40086e86c6583e85              # double 3.0539679999999998
	.quad	0x400781e1d2178f69              # double 2.9384190000000001
	.quad	0x4009d7b5286b5914              # double 3.2303259999999998
	.quad	0x400c7521144cbe1f              # double 3.5571920000000001
	.quad	0x4020478f041461b7              # double 8.1397630000000003
	.quad	0x400b740dd3fe1976              # double 3.431667
	.quad	0x4020f3037d63022e              # double 8.4746360000000003
	.quad	0x4019ceb7cbb3c819              # double 6.451873
	.quad	0x401a593d5347a5b1              # double 6.587148
	.quad	0x4003c98c3b0c4589              # double 2.4734120000000002
	.quad	0x40234add590c0ad0              # double 9.6462199999999996
	.quad	0x3ff66fcac8e68e3f              # double 1.402293
	.quad	0x401117dc7abfb9bf              # double 4.2733020000000002
	.quad	0x4021fcb5568e820e              # double 8.9935709999999993
	.quad	0x40214bb7521144cc              # double 8.6478830000000002
	.quad	0x401c52235b4edb2f              # double 7.0802129999999996
	.quad	0x4021f36a619da9ca              # double 8.9754210000000008
	.quad	0x40163a7589efd86b              # double 5.5570890000000004
	.quad	0x4005c09d495182aa              # double 2.7190500000000002
	.quad	0x4023d78a2a90cd42              # double 9.9209759999999996
	.quad	0x4012222e5de15ca7              # double 4.5333800000000002
	.quad	0x400ea263d816aceb              # double 3.8292920000000001
	.quad	0x40170a222d5171e3              # double 5.7598960000000003
	.quad	0x40191982cb20fb22              # double 6.2749129999999997
	.quad	0x3ffeb54c122749f1              # double 1.919262
	.quad	0x401376c2efd438d2              # double 4.8659780000000001
	.quad	0x401cfe5cd4ed2cbf              # double 7.2484010000000003
	.quad	0x3ff1e808c8259e1f              # double 1.1191489999999999
	.quad	0x400f4e08f2170931              # double 3.913103
	.quad	0x40019b2e59af9ebf              # double 2.2007720000000002
	.quad	0x40108104d551d68c              # double 4.1259949999999996
	.quad	0x4023ba1ccd962068              # double 9.8635009999999994
	.quad	0x401dd125dd095af3              # double 7.4542460000000004
	.quad	0x402087540895d0b7              # double 8.2643129999999996
	.quad	0x40224eb56fb8f57f              # double 9.1537279999999992
	.quad	0x40068f672b884407              # double 2.8200210000000001
	.quad	0x3fe1931a8ef77f28              # double 0.549207
	.quad	0x40206549f94855da              # double 8.1978299999999997
	.quad	0x401814e65bea0ba2              # double 6.02041
	.quad	0x3fc3a38fbca1059f              # double 0.15342900000000001
	.quad	0x40239c58cd20afa3              # double 9.8053650000000001
	.quad	0x40223c9363f572de              # double 9.1183119999999995
	.quad	0x40179b163baba7b9              # double 5.9014519999999999
	.quad	0x402345117b5286b6              # double 9.6348990000000008
	.quad	0x4010b1e71044f1a2              # double 4.1737330000000004
	.quad	0x40000cb4aec8d5c7              # double 2.0062039999999999
	.quad	0x3fc920c8cd63cb81              # double 0.19631299999999999
	.quad	0x4020191d14e3bcd3              # double 8.0490499999999994
	.quad	0x400121e57d9dba91              # double 2.1415510000000002
	.quad	0x401e38eabffcdab2              # double 7.5555830000000004
	.quad	0x4020454195cc857f              # double 8.1352659999999997
	.quad	0x3ff59592d98bf7f0              # double 1.3490169999999999
	.quad	0x40129ca148ba83f5              # double 4.6529590000000001
	.quad	0x401ac9cb6848beb6              # double 6.6970650000000003
	.quad	0x4020d5c67dfe32a0              # double 8.4175299999999993
	.quad	0x3ff5f5bc44bf4cb2              # double 1.3724940000000001
	.quad	0x40116f8d716d2aa6              # double 4.3589380000000002
	.quad	0x401822e9899bf594              # double 6.0340939999999996
	.quad	0x4021e3dc486ad2dd              # double 8.9450400000000005
	.quad	0x4012eeecbfb15b57              # double 4.7333249999999998
	.quad	0x3fbcef34d6a161e5              # double 0.113025
	.quad	0x3fd6039abf338716              # double 0.34397
	.quad	0x400f7d1a21ea3593              # double 3.9360849999999998
	.quad	0x401ab36544fe36d2              # double 6.6751909999999999
	.quad	0x40007edfa43fe5c9              # double 2.0619499999999999
	.quad	0x4018b4f1a1986b9c              # double 6.1767029999999998
	.quad	0x400fbd462c343b71              # double 3.967419
	.quad	0x40064406c00da1a9              # double 2.7832159999999999
	.quad	0x4011175ff609dcf9              # double 4.2728270000000004
	.quad	0x401b267e846a5d6c              # double 6.7875920000000001
	.quad	0x3fb06338b47c73ef              # double 0.064014000000000001
	.quad	0x4020b9d4738a3b58              # double 8.3629490000000004
	.quad	0x3febf1fddebd9019              # double 0.87329000000000001
	.quad	0x4005273eee525892              # double 2.6441629999999998
	.quad	0x4005c77bbf93ff26              # double 2.722404
	.quad	0x4016b9e6256366d8              # double 5.6815420000000003
	.quad	0x4013c9185cee17a0              # double 4.9463819999999998
	.quad	0x3fd66d1e108c3f3e              # double 0.35041
	.quad	0x40209fbe553ac4f8              # double 8.3119990000000001
	.quad	0x3ff02e9899bf5947              # double 1.0113760000000001
	.quad	0x3fec3a81dc0db270              # double 0.88214199999999998
	.quad	0x400d18f81e8a2ec3              # double 3.6371920000000002
	.quad	0x401480bae89eba6b              # double 5.1257130000000002
	.quad	0x4021e4c2938de6de              # double 8.9467970000000001
	.quad	0x401be18eb8950764              # double 6.9702710000000003
	.quad	0x4022758cb07d0aee              # double 9.2295890000000007
	.quad	0x401e2d66277c45cc              # double 7.5443350000000002
	.quad	0x3ff57ce8533b1077              # double 1.3429949999999999
	.quad	0x4007665add9c27e9              # double 2.9249779999999999
	.quad	0x40233c3c3a42f1ed              # double 9.6176469999999998
	.quad	0x401c3abbcb1cc964              # double 7.0573569999999997
	.quad	0x401333ff25e56cd7              # double 4.8007780000000002
	.quad	0x3fee6fd651b0ccbc              # double 0.95115199999999999
	.quad	0x4017dda09cc319c6              # double 5.9664330000000003
	.quad	0x400d3606317268d3              # double 3.6513789999999999
	.quad	0x4014f435ac8a3726              # double 5.238486
	.quad	0x4008e02afdda8bd2              # double 3.1094569999999999
	.quad	0x3fef0d0678c0053e              # double 0.97033999999999998
	.quad	0x400ed045fe111277              # double 3.851696
	.quad	0x40214200e27e0efa              # double 8.6289130000000007
	.quad	0x40103e4e26d4801f              # double 4.0608449999999996
	.quad	0x4018e0ef566490a3              # double 6.2196629999999997
	.quad	0x4010215a4acf312b              # double 4.0325709999999999
	.quad	0x400df84fd2a62aa2              # double 3.7462460000000002
	.quad	0x40233a5a038194c0              # double 9.6139679999999998
	.quad	0x40155d438d1d8a55              # double 5.3410780000000004
	.quad	0x40220d75c0767d35              # double 9.0262890000000002
	.quad	0x401ff9d9d3458cd2              # double 7.993995
	.quad	0x40175e5cd4ed2cbf              # double 5.8421510000000003
	.quad	0x402209cc319c5a3e              # double 9.0191359999999996
	.quad	0x401e5422ccb3a259              # double 7.5821639999999996
	.quad	0x402359a005c4651f              # double 9.6750489999999995
	.quad	0x401ac49adc8fb86f              # double 6.6919969999999998
	.quad	0x3ff73d438d1d8a55              # double 1.4524570000000001
	.quad	0x401017c4e2f37fbf              # double 4.023212
	.quad	0x402184677b395c42              # double 8.7586019999999998
	.quad	0x3ffa99fa11a975b0              # double 1.6625920000000001
	.quad	0x401fed3c792d1288              # double 7.9816760000000002
	.quad	0x40212ea8b8f14db6              # double 8.5911310000000007
	.quad	0x40224c5260f5e41d              # double 9.1490659999999995
	.quad	0x400fc55e28aa4335              # double 3.971371
	.quad	0x4010df7d73c92578              # double 4.2182519999999997
	.quad	0x4019468448cf7caa              # double 6.3188639999999996
	.quad	0x401e8af533f42353              # double 7.635701
	.quad	0x40215df00abf76a3              # double 8.6834720000000001
	.quad	0x4020fabde3fbbd7b              # double 8.4897299999999998
	.quad	0x3ffcf776c4827b70              # double 1.810416
	.quad	0x4018591148fd9fd3              # double 6.0869799999999996
	.quad	0x4018616ca46e08f2              # double 6.0951409999999999
	.quad	0x40034af5771001d6              # double 2.4116010000000001
	.quad	0x4009627e9531550d              # double 3.1730930000000002
	.quad	0x402292d948dc11e4              # double 9.2868139999999996
	.quad	0x401b3b790fb65669              # double 6.8080790000000002
	.quad	0x401c7f75104d551d              # double 7.1244699999999996
	.quad	0x4023773bc903ea70              # double 9.7328779999999995
	.quad	0x40200001d5c31594              # double 8.0000140000000001
	.quad	0x400a5a3e39f77293              # double 3.2940640000000001
	.quad	0x40200db0bbf50e34              # double 8.0267389999999991
	.quad	0x40079d33d29563aa              # double 2.951759
	.quad	0x400228672756861f              # double 2.2697280000000002
	.quad	0x40195f02c4d65e46              # double 6.342784
	.quad	0x400397c243dccea3              # double 2.4491010000000002
	.quad	0x3fd1874c8ffb8b26              # double 0.27388299999999999
	.quad	0x401b5cc3e3193f6c              # double 6.8405909999999999
	.quad	0x4016c2656abde3fc              # double 5.6898400000000002
	.quad	0x4012f8b86b15f890              # double 4.7428910000000002
	.quad	0x4002598c7e28240b              # double 2.2937249999999998
	.quad	0x401808b60f1b25f6              # double 6.0085069999999998
	.quad	0x401570a67620ee8d              # double 5.3600099999999999
	.quad	0x401ae7ced916872b              # double 6.726375
	.quad	0x3fecbf3387160957              # double 0.89834000000000003
	.quad	0x400ceb5b2d4d4025              # double 3.6149200000000001
	.quad	0x3fe35286b59146e5              # double 0.60382400000000003
	.quad	0x3fffb2c5197a2489              # double 1.9811449999999999
	.quad	0x401019b738e6d15b              # double 4.0251130000000002
	.quad	0x3ff399c17225b74a              # double 1.2250380000000001
	.quad	0x401c751d68c692f7              # double 7.1143700000000001
	.quad	0x3ff4bd00713f077d              # double 1.296143
	.quad	0x401f1b4289118c19              # double 7.7766209999999995
	.quad	0x4022e14b7b28954a              # double 9.4400289999999991
	.quad	0x401ee71c970f7b9e              # double 7.725695
	.quad	0x3ffd499f1ae2da55              # double 1.8304739999999999
	.quad	0x4021c1680e065300              # double 8.8777469999999994
	.quad	0x401b980e06530058              # double 6.8984909999999999
	.quad	0x401ddab14ec204f3              # double 7.4635670000000003
	.quad	0x4000f700cd855971              # double 2.1206070000000001
	.quad	0x4008e23e18698351              # double 3.1104699999999998
	.quad	0x4020aafe1da7b0b4              # double 8.3339700000000007
	.quad	0x4020ccacf312b1b3              # double 8.3997569999999993
	.quad	0x400d14dc65c70436              # double 3.635186
	.quad	0x4013709aed56b010              # double 4.859966
	.quad	0x3ffbcd37c1376d55              # double 1.7376020000000001
	.quad	0x400ec13e3e29307b              # double 3.844357
	.quad	0x400cb88f42fe8251              # double 3.5901169999999998
	.quad	0x400aaafe60c38f36              # double 3.3334929999999998
	.quad	0x402110a222d5171e              # double 8.5324869999999997
	.quad	0x3ffdbdbd2fa0d77b              # double 1.8588229999999999
	.quad	0x400529835158b828              # double 2.64527
	.quad	0x3ff75c5b4aa9717e              # double 1.460048
	.quad	0x3ff3edf612407464              # double 1.2455959999999999
	.quad	0x40057a69be09bb6b              # double 2.6847720000000002
	.quad	0x401d160913a4f872              # double 7.2715189999999996
	.quad	0x40103a4052d666aa              # double 4.0568860000000004
	.quad	0x402398cae642bf98              # double 9.7984229999999996
	.quad	0x4022a1fcd24e160e              # double 9.3163820000000008
	.quad	0x4021cfcbd556084a              # double 8.9058519999999994
	.quad	0x3ffc1f31f46ed246              # double 1.7576160000000001
	.quad	0x401a83e100607810              # double 6.6287880000000001
	.quad	0x402257b549f94856              # double 9.1713050000000003
	.quad	0x40237e09fe86833c              # double 9.7461699999999993
	.quad	0x402393d102bc72e2              # double 9.7887039999999992
	.quad	0x40200e62131a8ef7              # double 8.0280919999999991
	.quad	0x40002db163baba7c              # double 2.0223110000000002
	.quad	0x4004cf21f6cacd18              # double 2.6011389999999999
	.quad	0x401890c34c1a8ac6              # double 6.1413700000000002
	.quad	0x40195e86c6583e85              # double 6.3423109999999996
	.quad	0x4013f96a26e54717              # double 4.9935689999999999
	.quad	0x4009ba786c22680a              # double 3.2160500000000001
	.quad	0x3fe7f143393ab431              # double 0.748201
	.quad	0x4002a41dd1a21ea3              # double 2.3301349999999998
	.quad	0x40060a0ec7432010              # double 2.7549109999999999
	.quad	0x4012f635610adcd3              # double 4.7404380000000002
	.quad	0x4016cc80c73abc94              # double 5.6997099999999996
	.quad	0x4016ad6c2efd438d              # double 5.6693579999999999
	.quad	0x4010be518f3eccc4              # double 4.1858579999999996
	.quad	0x4011a490e66cb103              # double 4.4107089999999998
	.quad	0x4022354c76d117b5              # double 9.1040989999999997
	.quad	0x401fbfc3f811f4f5              # double 7.9372709999999999
	.quad	0x400c5554fbdad752              # double 3.5416660000000002
	.quad	0x3fdc0435efa615a9              # double 0.43775700000000001
	.quad	0x4021153586ca89fc              # double 8.5414239999999992
	.quad	0x40141ab8e8ea39c5              # double 5.0260959999999999
	.quad	0x4020a11cd1c7de51              # double 8.3146730000000009
	.quad	0x400695dfeb8d8234              # double 2.8231809999999999
	.quad	0x400f2ccd530489d2              # double 3.8968759999999998
	.quad	0x40204e540cc78e9f              # double 8.1529849999999993
	.quad	0x400a148b220791c5              # double 3.2600310000000001
	.quad	0x4020f034091c0874              # double 8.4691469999999995
	.quad	0x40001dd76683c298              # double 2.0145710000000001
	.quad	0x3fb807cc7d1bb491              # double 0.093868999999999994
	.quad	0x40157522a6f3f530              # double 5.3643900000000002
	.quad	0x401d0db8fde2ef4e              # double 7.263401
	.quad	0x4017cb8cfbfc6541              # double 5.9487800000000002
	.quad	0x4023ecf80dc33722              # double 9.9628300000000003
	.quad	0x401858c197e56473              # double 6.0866759999999998
	.quad	0x3fd7e6ddf00abf77              # double 0.37346600000000002
	.quad	0x3fbd93708aac96cc              # double 0.11553099999999999
	.quad	0x4011f5caafbc1ace              # double 4.4900310000000001
	.quad	0x400da9ff0cbaf966              # double 3.7080060000000001
	.quad	0x401d310f51ac9afe              # double 7.2979099999999999
	.quad	0x401fee6ff7dfa00e              # double 7.9828489999999999
	.quad	0x3ff9d9cae21101b0              # double 1.615672
	.quad	0x40214ef73c0c1fc9              # double 8.6542300000000001
	.quad	0x400f109635610add              # double 3.8830990000000001
	.quad	0x401cfa95421c0443              # double 7.2447100000000004
	.quad	0x4021725785f8d2e5              # double 8.7233239999999999
	.quad	0x4021679a2834d270              # double 8.7023480000000006
	.quad	0x400c4df82b1f687b              # double 3.538071
	.quad	0x40195a5daf07bfe8              # double 6.3382480000000001
	.quad	0x400892f449129889              # double 3.071755
	.quad	0x401a7fd199bb2789              # double 6.6248230000000001
	.quad	0x402212925fe974a3              # double 9.0362729999999996
	.quad	0x401ddd6a9c560c7c              # double 7.4662269999999999
	.quad	0x4014b8b1572580c3              # double 5.180364
	.quad	0x3fe20ce4ead0c3d2              # double 0.56407399999999996
	.quad	0x40223007570c5650              # double 9.0938060000000007
	.quad	0x4002aaafbc1acde2              # double 2.3333430000000002
	.quad	0x3fbced4e4c942d49              # double 0.112996
	.quad	0x401bed1c3ac929aa              # double 6.9815529999999999
	.quad	0x4020c7314ca925ff              # double 8.3890480000000007
	.quad	0x40229094a2b9d3cc              # double 9.2823840000000004
	.quad	0x4020bcf70153bd16              # double 8.3690719999999992
	.quad	0x3ffc014b599aa609              # double 1.750316
	.quad	0x4020956909aed56b              # double 8.291817
	.quad	0x4023776427c7c526              # double 9.7331859999999999
	.quad	0x3fff4583621fafc9              # double 1.9544710000000001
	.quad	0x4009500bcbe61d00              # double 3.164085
	.quad	0x401ba9c62a1b5c7d              # double 6.9157950000000001
	.quad	0x3ff60e453d20f2bf              # double 1.378484
	.quad	0x402309ca18bd6627              # double 9.5191199999999991
	.quad	0x400cb7c02afdda8c              # double 3.5897220000000001
	.quad	0x40204d18b0d0edc4              # double 8.1505790000000004
	.quad	0x4022da11ec918e32              # double 9.4259179999999994
	.quad	0x4022a51dcd7060bb              # double 9.3224929999999997
	.quad	0x40164b8023a6ce36              # double 5.5737310000000004
	.quad	0x401de52fc2656abe              # double 7.4738150000000001
	.quad	0x401ea09b738e6d16              # double 7.6568430000000003
	.quad	0x4022e711947cfa27              # double 9.4513060000000006
	.quad	0x401d3d245b291b82              # double 7.3097089999999998
	.quad	0x3ff53465625a682b              # double 1.3252919999999999
	.quad	0x4003537da61e0c5b              # double 2.4157670000000002
	.quad	0x40132ac215b9a5a9              # double 4.7917560000000003
	.quad	0x4023bb107746887b              # double 9.8653600000000007
	.quad	0x400bbb97353b4b30              # double 3.4665970000000002
	.quad	0x4020425bb7b6bb13              # double 8.1296060000000008
	.quad	0x3ffbbebd09e12a52              # double 1.734067
	.quad	0x401b2284167a95c8              # double 6.7837069999999997
	.quad	0x40217b1ab0856e69              # double 8.7404379999999993
	.quad	0x4016b644955b4678              # double 5.6779960000000003
	.quad	0x4013318f3eccc469              # double 4.7983979999999997
	.quad	0x4011dbe76c8b4396              # double 4.4647500000000004
	.quad	0x40171ef8055fbb51              # double 5.7802429999999996
	.quad	0x40188c5479d4d834              # double 6.137041
	.quad	0x3ffd3d7d3910c2c6              # double 1.827512
	.quad	0x40103f43c7d5ed07              # double 4.061782
	.quad	0x4023472de43ed95a              # double 9.6390220000000006
	.quad	0x401175614df8b157              # double 4.3646289999999999
	.quad	0x3feca9e2bcf91a33              # double 0.89573800000000003
	.quad	0x40213ed3d859c8c9              # double 8.6227099999999997
	.quad	0x4023f2eff5c6c11a              # double 9.9744869999999999
	.quad	0x40138016052502ef              # double 4.8750840000000002
	.quad	0x401fc60fa15db339              # double 7.9434189999999995
	.quad	0x4017c1183b60285f              # double 5.9385690000000002
	.quad	0x3ffe55054ac29bf1              # double 1.8957569999999999
	.quad	0x400097a89331a08c              # double 2.074052
	.quad	0x4012b266ba493c8a              # double 4.67422
	.quad	0x40024adddf43c7d6              # double 2.286556
	.quad	0x401b8270b06c43f6              # double 6.877383
	.quad	0x400d5e6ddf00abf7              # double 3.6711079999999998
	.quad	0x4002040f23897204              # double 2.2519819999999999
	.quad	0x3fd202d59d55e6bc              # double 0.28142299999999998
	.quad	0x401efdb0dd82fd76              # double 7.7477450000000001
	.quad	0x3fd25d9e40c8472c              # double 0.286964
	.quad	0x400df47b677f6b1a              # double 3.7443759999999999
	.quad	0x3fd4c2ca148ba83f              # double 0.32438899999999998
	.quad	0x3ff119695d91ab8f              # double 1.0687040000000001
	.quad	0x402257727136a401              # double 9.170795
	.quad	0x400ffbc2b94d9408              # double 3.9979300000000002
	.quad	0x401320902de00d1b              # double 4.7817999999999996
	.quad	0x4013ec4e7253da73              # double 4.9807680000000003
	.quad	0x3ff59971c10d7bea              # double 1.3499620000000001
	.quad	0x40105a098915bdd7              # double 4.0879269999999996
	.quad	0x3fd6eeaa6d267408              # double 0.358317
	.quad	0x4013e6a98244e93e              # double 4.9752559999999999
	.quad	0x3fd16fcdee34fc61              # double 0.272449
	.quad	0x401afb24638c9753              # double 6.7452560000000004
	.quad	0x401443422467be55              # double 5.0656819999999998
	.quad	0x4003495421c04428              # double 2.4108049999999999
	.quad	0x3ff86748e4755ffe              # double 1.5252159999999999
	.quad	0x40149b990afe60c4              # double 5.1519510000000004
	.quad	0x401dd6f60e0eb67c              # double 7.4599229999999999
	.quad	0x401288e7ddca4b12              # double 4.6336969999999997
	.quad	0x3ff5bcad9ad85dfb              # double 1.3585640000000001
	.quad	0x4010aeccc46950fc              # double 4.1707029999999996
	.quad	0x4021cb78897e9963              # double 8.8974039999999999
	.quad	0x4001ea077036c9c1              # double 2.2392720000000002
	.quad	0x401c2393250b5244              # double 7.0347410000000004
	.quad	0x3fd802c0a4a05dd9              # double 0.375168
	.quad	0x4001dd3a1d323fee              # double 2.2330209999999999
	.quad	0x400e5f0bae89eba7              # double 3.7964090000000001
	.quad	0x401832b1b36bd2b7              # double 6.049506
	.quad	0x3ff3dec5f394b7b3              # double 1.2418880000000001
	.quad	0x4012c3cf2cf95d4f              # double 4.6912200000000004
	.quad	0x3ff4bc957cd466f5              # double 1.296041
	.quad	0x402146e47dc37a3e              # double 8.6384620000000005
	.quad	0x4022f4cb9ecf6380              # double 9.478116
	.quad	0x4017cc4cdfaca362              # double 5.9495120000000004
	.quad	0x4021b386d2ed783e              # double 8.850638
	.quad	0x4006544028e4fb98              # double 2.7911380000000001
	.quad	0x40156dc6195464dc              # double 5.3572009999999999
	.quad	0x400a42a5e785b5b7              # double 3.282543
	.quad	0x401a5fef39085f4a              # double 6.5936859999999999
	.quad	0x400a5c1a47a9e2bd              # double 3.294972
	.quad	0x401dfbd8be7296f6              # double 7.4959439999999997
	.quad	0x3ff6997b30f8c650              # double 1.412471
	.quad	0x3fed3edfa43fe5c9              # double 0.91392499999999999
	.quad	0x40053458cd20afa3              # double 2.65056
	.quad	0x3fc00370cdc8754f              # double 0.12510499999999999
	.quad	0x40008ed1bf7ad4b2              # double 2.0697359999999998
	.quad	0x402062db402d16b9              # double 8.1930789999999991
	.quad	0x4012e625a682b628              # double 4.7247529999999998
	.quad	0x4023d20620ab7132              # double 9.9102029999999992
	.quad	0x3ff888fc9363f573              # double 1.533444
	.quad	0x3f867a95c853c148              # double 0.010976
	.quad	0x4022517a46173b86              # double 9.1591360000000002
	.quad	0x402344471b478423              # double 9.6333549999999998
	.quad	0x4018da2877ee4e27              # double 6.2130450000000002
	.quad	0x400c515831f03d14              # double 3.5397189999999998
	.quad	0x4013f42e9899bf59              # double 4.9884589999999998
	.quad	0x4012f02afdda8bd2              # double 4.7345389999999998
	.quad	0x402254925785f8d3              # double 9.1651790000000002
	.quad	0x40115d234eb9a177              # double 4.3409550000000001
	.quad	0x4017d90b417ca212              # double 5.961957
	.quad	0x3fc5674d1633482c              # double 0.167215
	.quad	0x401b39539b888723              # double 6.8059830000000003
	.quad	0x40175e6149c6f36f              # double 5.842168
	.quad	0x4016d9f87f023e9f              # double 5.7128620000000003
	.quad	0x3febe583e8576cce              # double 0.87176699999999996
	.quad	0x4013ccd035371972              # double 4.9500130000000002
	.quad	0x402139731098d478              # double 8.6122060000000005
	.quad	0x401965b4aa9717df              # double 6.3493219999999999
	.quad	0x4019dde225fa658c              # double 6.4666829999999997
	.quad	0x402193b7521144cc              # double 8.7885080000000002
	.quad	0x40096399b2c40d0b              # double 3.1736330000000001
	.quad	0x40166ae89eba6aca              # double 5.6044029999999996
	.quad	0x3ff4d9fd36f7e3d2              # double 1.30322
	.quad	0x4005852e72da1230              # double 2.6900300000000001
	.quad	0x3ff973cb3e5753a4              # double 1.59077
	.quad	0x3ff4120afa2f05a7              # double 1.254405
	.quad	0x3ff752f901083dbc              # double 1.457757
	.quad	0x401a5d1b71758e22              # double 6.5909250000000004
	.quad	0x401c45015c209247              # double 7.0673880000000002
	.quad	0x4012c66a55087011              # double 4.693765
	.quad	0x3ff25dd8f92af9a9              # double 1.147912
	.quad	0x4021e48ffb8b2639              # double 8.9464109999999994
	.quad	0x4013d1465e892253              # double 4.9543699999999999
	.quad	0x4008d11947cfa26a              # double 3.1020989999999999
	.quad	0x40057ab29e4d5d81              # double 2.684911
	.quad	0x4022aaaac1094a2c              # double 9.3333340000000006
	.quad	0x40063fc0096feb4a              # double 2.7811279999999998
	.quad	0x40181c710cb295ea              # double 6.0277750000000001
	.quad	0x3f80c996b76709fa              # double 0.0081969999999999994
	.quad	0x4013b2ca9ac36545              # double 4.924601
	.quad	0x3fdbd2d01c0ca601              # double 0.43474200000000002
	.quad	0x4005edda48b65237              # double 2.741139
	.quad	0x40016df9bdc69f8c              # double 2.1786989999999999
	.quad	0x4017079a6b50b0f2              # double 5.7574249999999996
	.quad	0x3fc6d0b30b5aa716              # double 0.17824400000000001
	.quad	0x401a6944241c3efb              # double 6.6027990000000001
	.quad	0x400a6f93bc0a06ea              # double 3.304481
	.quad	0x3ff14f4623d0bfa1              # double 1.0818540000000001
	.quad	0x4007f08d4bad7d7c              # double 2.9924569999999999
	.quad	0x400e634a87e38eb0              # double 3.7984819999999999
	.quad	0x3ffe93a71151611c              # double 1.9110480000000001
	.quad	0x3fcdcbff47735c18              # double 0.23278799999999999
	.quad	0x4007ad0fe8ab4fa5              # double 2.9595030000000002
	.quad	0x401829707182235b              # double 6.0404679999999997
	.quad	0x40207d4f9c1f85d7              # double 8.2447479999999995
	.quad	0x400e1a5f41aef6f9              # double 3.762877
	.quad	0x4021c2a6b0d95140              # double 8.8801780000000008
	.quad	0x4023a780346dc5d6              # double 9.8271499999999996
	.quad	0x400051aa821f2991              # double 2.039876
	.quad	0x3fd3436b8f9b1316              # double 0.30098999999999998
	.quad	0x4012273c0c1fc8f3              # double 4.5383149999999999
	.quad	0x4021f0a47ecfe9b8              # double 8.9700050000000005
	.quad	0x4019af4384ba0e84              # double 6.4211559999999999
	.quad	0x3febceb56fb8f57f              # double 0.86898299999999995
	.quad	0x4016e5b9a5a89b95              # double 5.7243409999999999
	.quad	0x400655d3dc8b86b1              # double 2.7919079999999998
	.quad	0x4023b77f6b1a2a4e              # double 9.8583940000000005
	.quad	0x3ff73ad4b2745bf2              # double 1.4518629999999999
	.quad	0x40151e1ac57e23f2              # double 5.2793989999999997
	.quad	0x401f976ea4228998              # double 7.8978830000000002
	.quad	0x4011a10342aa9f7b              # double 4.4072389999999997
	.quad	0x3ff28232096787cf              # double 1.1567860000000001
	.quad	0x400bcf67b1c0010c              # double 3.4762719999999998
	.quad	0x400e2fc69728a611              # double 3.7733279999999998
	.quad	0x4018f92d1287c201              # double 6.2433360000000002
	.quad	0x3ff80f12c27a6373              # double 1.5036799999999999
	.quad	0x401f78deb0fadf2f              # double 7.8680370000000001
	.quad	0x4019ccac4b4d056c              # double 6.4498759999999997
	.quad	0x4020859a95421c04              # double 8.2609449999999995
	.quad	0x3fccb65a9a804966              # double 0.22431499999999999
	.quad	0x4002b4c016052503              # double 2.338257
	.quad	0x3ff5110d38cda6e7              # double 1.3166629999999999
	.quad	0x40101304039abf34              # double 4.0185700000000004
	.quad	0x3fc0de43ed959a31              # double 0.13178300000000001
	.quad	0x40133f748a159818              # double 4.8119680000000002
	.quad	0x401295c78a6dacac              # double 4.6462690000000002
	.quad	0x40169d43d03968d7              # double 5.6535789999999997
	.quad	0x4021a60b912dba4d              # double 8.8243069999999992
	.quad	0x4018597edc7ef178              # double 6.0873980000000003
	.quad	0x4021af505d0fa58f              # double 8.8424099999999992
	.quad	0x3ffc75b2d4d4024b              # double 1.778735
	.quad	0x4018ad1fe64f54d2              # double 6.1690670000000001
	.quad	0x4004c8e043a21640              # double 2.5980840000000001
	.quad	0x4014c2c16df3f962              # double 5.1901910000000004
	.quad	0x402081d3458cd20b              # double 8.253565
	.quad	0x40239b161a1db878              # double 9.8029030000000005
	.quad	0x40203135b91f70df              # double 8.0961130000000008
	.quad	0x40131f0f16f4384c              # double 4.7803310000000003
	.quad	0x400b514983d79075              # double 3.4146909999999999
	.quad	0x401b301bc98a222d              # double 6.7969809999999997
	.quad	0x400927525460aa65              # double 3.1442000000000001
	.quad	0x401d2886162f166e              # double 7.289574
	.quad	0x40166436fc158fb4              # double 5.5978659999999998
	.quad	0x400bd0bf1a5ca298              # double 3.4769269999999999
	.quad	0x4000b16a8b8f14db              # double 2.0866289999999998
	.quad	0x401e605ccc89b0ee              # double 7.5941039999999997
	.quad	0x3feedeefe4ffc979              # double 0.96471399999999996
	.quad	0x40085e49b1fab96f              # double 3.0460389999999999
	.quad	0x4000d20b8066c2ad              # double 2.1025610000000001
	.quad	0x4022ba919695d91b              # double 9.3643920000000004
	.quad	0x40220d35eb7457c1              # double 9.0258020000000005
	.quad	0x4018590f301eabbd              # double 6.0869720000000003
	.quad	0x3fe3264c2f837b4a              # double 0.59842499999999998
	.quad	0x40216a53543aeab8              # double 8.7076670000000007
	.quad	0x4022ef262888b546              # double 9.4670880000000004
	.quad	0x400c035e74299d88              # double 3.5016449999999999
	.quad	0x3fde0b673c4f3ba7              # double 0.46944599999999997
	.quad	0x400cab242070b8d0              # double 3.5835650000000001
	.quad	0x4022d240d90e23af              # double 9.4106509999999996
	.quad	0x40117705c896dd27              # double 4.3662330000000003
	.quad	0x3fea0b220791c4b9              # double 0.813859
	.quad	0x3fc2bf3387160957              # double 0.14646000000000001
	.quad	0x401739a8049667b6              # double 5.806305
	.quad	0x400ea3675ddd2ae9              # double 3.8297870000000001
	.quad	0x3fdc7a8d64d7f0ed              # double 0.44497999999999999
	.quad	0x401b14113c68661b              # double 6.7695970000000001
	.quad	0x4013ce6a337a80d0              # double 4.9515770000000003
	.quad	0x40238a6fc58ab92c              # double 9.7703839999999999
	.quad	0x401c6df86e3b46fe              # double 7.1073930000000001
	.quad	0x400cf42352eb5f5f              # double 3.619208
	.quad	0x401d8ccc46950fc7              # double 7.3874979999999999
	.quad	0x3fc1861a60d4562e              # double 0.136905
	.quad	0x400769774256bca5              # double 2.9264969999999999
	.quad	0x3feabcb1cc964628              # double 0.835534
	.quad	0x400c473bc903ea70              # double 3.5347819999999999
	.quad	0x400f2731d2e0e304              # double 3.8941379999999999
	.quad	0x3fc79a415f45e0b5              # double 0.184395
	.quad	0x401c8bf8b9baa151              # double 7.1366909999999999
	.quad	0x402116bedfa43fe6              # double 8.5444250000000004
	.quad	0x400ac4095f2452c6              # double 3.3457210000000002
	.quad	0x4022427ce0fc2eba              # double 9.1298589999999997
	.quad	0x4023197b30f8c650              # double 9.5497680000000003
	.quad	0x3ff539c842fa5094              # double 1.3266070000000001
	.quad	0x4022fd2c386d2ed8              # double 9.4944780000000008
	.quad	0x400ca4f6598e10cf              # double 3.5805479999999998
	.quad	0x4023816aceaaf35e              # double 9.7527679999999997
	.quad	0x4013f1bb8c32a8ca              # double 4.9860670000000002
	.quad	0x40224d42a23bff8b              # double 9.1508990000000008
	.quad	0x40117c2a454de7ea              # double 4.3712549999999997
	.quad	0x4005ec8e68e3ef28              # double 2.7405059999999999
	.quad	0x3fde9d94d0dcfcc6              # double 0.47836800000000002
	.quad	0x4023a76922d948dc              # double 9.8269739999999998
	.quad	0x4003383621fafc8b              # double 2.402447
	.quad	0x4015d9cb6848beb6              # double 5.4626900000000003
	.quad	0x4012bc62e4d1a650              # double 4.6839709999999997
	.quad	0x401944b7b28954a8              # double 6.317107
	.quad	0x4022f7774aba3876              # double 9.4833320000000008
	.quad	0x402012c3eb7cbb3d              # double 8.0366510000000009
	.quad	0x401113c925785f8d              # double 4.2693219999999998
	.quad	0x40000810a569b175              # double 2.0039380000000002
	.quad	0x401ce38d60a63305              # double 7.2222189999999999
	.quad	0x40087d8622c45027              # double 3.0612910000000002
	.quad	0x40152b14a90470a8              # double 5.292071
	.quad	0x3fff4c521dda059a              # double 1.9561329999999999
	.quad	0x4007fc9de0503750              # double 2.998348
	.quad	0x400763fb3743632c              # double 2.9238189999999999
	.quad	0x40193a1be2b4959e              # double 6.3067469999999997
	.quad	0x3fcc37bd05af6c6a              # double 0.22045100000000001
	.quad	0x4018da34ca0c282c              # double 6.2130919999999996
	.quad	0x40180c6b8b69552e              # double 6.0121289999999998
	.quad	0x401e3ccff21b3aef              # double 7.559387
	.quad	0x400f793250b5243a              # double 3.9341780000000002
	.quad	0x3fe955000c9539b9              # double 0.79162600000000005
	.quad	0x3ff8cfc0d2c386d3              # double 1.550721
	.quad	0x40173b1a2a4db164              # double 5.8077170000000002
	.quad	0x40220139a7c17a89              # double 9.0023929999999996
	.quad	0x40042b10ba6266fd              # double 2.5210279999999998
	.quad	0x401e11b25f633ce6              # double 7.5172819999999998
	.quad	0x40084c38f366948a              # double 3.0372180000000002
	.quad	0x400200ff540895d1              # double 2.2504870000000001
	.quad	0x400e823e9ea14057              # double 3.813596
	.quad	0x400ee5119ce075f7              # double 3.86185
	.quad	0x4021230e7ff583a5              # double 8.5684699999999996
	.quad	0x40188df266ba493d              # double 6.1386200000000004
	.quad	0x401bcd87724fa8b5              # double 6.9507120000000002
	.quad	0x4019f86b59146e4c              # double 6.492597
	.quad	0x4020aaa8869c66d3              # double 8.3333169999999992
	.quad	0x401c4e7cd0353719              # double 7.0766479999999996
	.quad	0x4018a69ced0b30b6              # double 6.1627080000000003
	.quad	0x40108bda9435ac8a              # double 4.1365759999999998
	.quad	0x4021d841aac53b08              # double 8.9223759999999999
	.quad	0x3fff35c39bcba301              # double 1.950626
	.quad	0x4023d58ea7ce0fc3              # double 9.9171040000000001
	.quad	0x402026dc3bd59924              # double 8.0758989999999997
	.quad	0x400649da597d49d8              # double 2.7860610000000001
	.quad	0x401522eb5f5f0b28              # double 5.2841009999999997
	.quad	0x4021a0d3cff64cf9              # double 8.8141160000000003
	.quad	0x401742a3cea6c1a0              # double 5.8150779999999997
	.quad	0x40235adf0d413123              # double 9.6774830000000005
	.quad	0x401bce4712e40853              # double 6.9514430000000003
	.quad	0x3fe492c8c5004fb1              # double 0.64291799999999999
	.quad	0x4016721af7d30ad4              # double 5.6114309999999996
	.quad	0x3ff515ac03ff6901              # double 1.3177909999999999
	.quad	0x4015e972474538ef              # double 5.4779749999999998
	.quad	0x4010380cf9e3864d              # double 4.0547370000000003
	.quad	0x401c14d2b2bfdb4d              # double 7.0203350000000002
	.quad	0x3fbf4906034f3fd9              # double 0.122208
	.quad	0x402142c8605681ed              # double 8.6304350000000003
	.quad	0x40207009917939a8              # double 8.2188230000000004
	.quad	0x4023e1695d91ab8f              # double 9.9402570000000007
	.quad	0x401085f88fc9363f              # double 4.1308309999999997
	.quad	0x4009d9b8887229e9              # double 3.231309
	.quad	0x3ffd96b3354c1227              # double 1.8492919999999999
	.quad	0x3fb39335d249e450              # double 0.076465000000000005
	.quad	0x4016b003eea209ab              # double 5.6718900000000003
	.quad	0x3ff44e25c810a56a              # double 1.2690790000000001
	.quad	0x40069cb1cc964628              # double 2.826511
	.quad	0x4020f9a06a6e32e4              # double 8.4875520000000008
	.quad	0x3fe9430d306a2b17              # double 0.789435
	.quad	0x4001076f2a5a469d              # double 2.1286299999999998
	.quad	0x40059cb1cc964628              # double 2.701511
	.quad	0x40049ec2480e8c8b              # double 2.5775190000000001
	.quad	0x402397b41bfbdf09              # double 9.7962959999999998
	.quad	0x400e429307af20ea              # double 3.7825069999999998
	.quad	0x40102f7d30ad46f6              # double 4.0463760000000004
	.quad	0x40139b367a0f9097              # double 4.9015750000000002
	.quad	0x40226317efe0ce0c              # double 9.1935420000000007
	.quad	0x4003c36a832b990b              # double 2.470418
	.quad	0x4015ad97f62b6ae8              # double 5.4195250000000001
	.quad	0x401f3071c53f39d2              # double 7.7973090000000003
	.quad	0x400c1343fa2ad3e9              # double 3.5094069999999999
	.quad	0x3fbd4e7ee9142b30              # double 0.114479
	.quad	0x40228c7b890d5a5c              # double 9.2743800000000007
	.quad	0x402048d64d7f0ed4              # double 8.1422600000000002
	.quad	0x401b6bf5946c332f              # double 6.855429
	.quad	0x3fc8d035371971c1              # double 0.193854
	.quad	0x401fb86ec17ebaf1              # double 7.9301099999999999
	.quad	0x40238d173fb7a5f4              # double 9.7755679999999998
	.quad	0x400f7f7164c729f6              # double 3.9372280000000002
	.quad	0x40230902795703f3              # double 9.5175970000000003
	.quad	0x401bf057d1782d38              # double 6.9847099999999998
	.quad	0x401b5e0b4e11dbcb              # double 6.8418400000000004
	.quad	0x400b55464dc22ab2              # double 3.4166379999999998
	.quad	0x40179126e978d4fe              # double 5.89175
	.quad	0x400e8019b0ab2e17              # double 3.8125490000000002
	.quad	0x402140bbb1f255f3              # double 8.6264319999999994
	.quad	0x401ee2e40852b4d9              # double 7.7215730000000002
	.quad	0x400a4e4217d2849d              # double 3.2882120000000001
	.quad	0x4004dc0229a5ebb7              # double 2.6074259999999998
	.quad	0x4021b30d306a2b17              # double 8.84971
	.quad	0x40195bb8800eae19              # double 6.3395710000000003
	.quad	0x3fe792684cf0739b              # double 0.736622
	.quad	0x3ff9e809d495182b              # double 1.6191500000000001
	.quad	0x401d7076c050bd88              # double 7.3598280000000002
	.quad	0x400962174c4cdfad              # double 3.1728960000000002
	.quad	0x402312921ccd9620              # double 9.5362709999999993
	.quad	0x400e3013a92a3055              # double 3.7734749999999999
	.quad	0x4019db2788db0575              # double 6.4640180000000003
	.quad	0x40140c8cd63cb817              # double 5.0122559999999998
	.quad	0x401d08a4c1ebc83b              # double 7.2584410000000004
	.quad	0x40209c2bd7f51efb              # double 8.3050219999999992
	.quad	0x3fe0027b6fe2e6eb              # double 0.50030300000000005
	.quad	0x3fe19dde37585be2              # double 0.55052100000000004
	.quad	0x401181c9f72f76e6              # double 4.3767469999999999
	.quad	0x40038bef8ceb356e              # double 2.4433280000000002
	.quad	0x401e3bff47735c18              # double 7.5585909999999998
	.quad	0x4020a2b94d940789              # double 8.3178199999999993
	.quad	0x4021a52cbea4ebdd              # double 8.8226069999999996
	.quad	0x400e1154003254e7              # double 3.7584610000000001
	.quad	0x401ce8472c0e7bc4              # double 7.2268340000000002
	.quad	0x3fdafbefd00713f0              # double 0.42162699999999997
	.quad	0x4003c415f45e0b4e              # double 2.470745
	.quad	0x401de1ac57e23f25              # double 7.4703840000000001
	.quad	0x3ffb9beb18116ebd              # double 1.7255659999999999
	.quad	0x402278203e63e8de              # double 9.2346210000000006
	.quad	0x4001de889c1b5419              # double 2.2336589999999998
	.quad	0x400795675579af19              # double 2.9479510000000002
	.quad	0x40205143393ab431              # double 8.1587160000000001
	.quad	0x401ee7a0f9096bba              # double 7.7262000000000004
	.quad	0x4019929c347e8cce              # double 6.3931740000000001
	.quad	0x4012f9b90ea9e6ef              # double 4.7438700000000003
	.quad	0x4023325375c8d9f9              # double 9.5982929999999999
	.quad	0x3ff498b60f1b25f6              # double 1.287283
	.quad	0x4020a9dbec2480e9              # double 8.3317560000000004
	.quad	0x3fee49a133c1ce6c              # double 0.94648799999999999
	.quad	0x4006a73b42cc2d6b              # double 2.8316560000000002
	.quad	0x3fff540fecdd0d8d              # double 1.9580230000000001
	.quad	0x3f929dc725c3dee8              # double 0.018180000000000002
	.quad	0x400a6808c8259e1f              # double 3.3007979999999999
	.quad	0x3ff46d05f2884838              # double 1.2766169999999999
	.quad	0x4021b5f612407464              # double 8.8553929999999994
	.quad	0x4017e19652bd3c36              # double 5.9702999999999999
	.quad	0x4023da92c4934268              # double 9.9269010000000008
	.quad	0x400bfb1a6d698fe7              # double 3.4976090000000002
	.quad	0x40167808c8259e1f              # double 5.6172209999999998
	.quad	0x40098f0e0a84be40              # double 3.1948509999999999
	.quad	0x4017f15fcc1871e7              # double 5.9857170000000002
	.quad	0x401df4b1ab0856e7              # double 7.4889590000000003
	.quad	0x401346d4801f7510              # double 4.8191699999999997
	.quad	0x40222a38327674d1              # double 9.0824599999999993
	.quad	0x401ab56798958d9b              # double 6.6771529999999997
	.quad	0x4009db18dac258d6              # double 3.2319810000000002
	.quad	0x40173d5b6805a2d7              # double 5.8099189999999998
	.quad	0x3fda5db76b3bb83d              # double 0.41197
	.quad	0x4018bd37c1376d55              # double 6.1847830000000004
	.quad	0x3fdb386d2ed783e0              # double 0.425319
	.quad	0x40176c9abb01c92e              # double 5.8560590000000001
	.quad	0x40236180f55de58e              # double 9.6904369999999993
	.quad	0x401267b41bfbdf09              # double 4.6012729999999999
	.quad	0x40075d24180d3cff              # double 2.9204789999999998
	.quad	0x402337008a697aee              # double 9.6074260000000002
	.quad	0x40019a2e7f6f4be8              # double 2.2002839999999999
	.quad	0x401a32163fdd65a1              # double 6.5489129999999998
	.quad	0x401f7f661f18c9fb              # double 7.8744129999999996
	.quad	0x400c0012599ed7c7              # double 3.500035
	.quad	0x400a3a8049667b5f              # double 3.278565
	.quad	0x40218a35d67ba238              # double 8.7699420000000003
	.quad	0x4017d744f5d35654              # double 5.9602240000000002
	.quad	0x4013a153bd167664              # double 4.907546
	.quad	0x3fd99e1f3a57eaa3              # double 0.40027600000000002
	.quad	0x4023c63b8a19c9d6              # double 9.8871730000000007
	.quad	0x40214bae2541d8e8              # double 8.6478129999999993
	.quad	0x400325015c209247              # double 2.3930690000000001
	.quad	0x40192b317efe0ce1              # double 6.2921810000000002
	.quad	0x4020c2674080f990              # double 8.3796940000000006
	.quad	0x4023055fbb517a46              # double 9.5104959999999998
	.quad	0x40214d323fee2c99              # double 8.6507740000000002
	.quad	0x400b36d655e28aa4              # double 3.4017759999999999
	.quad	0x401ba3f67f4dbdf9              # double 6.91012
	.quad	0x40034c0724b76f6d              # double 2.4121229999999998
	.quad	0x4020c9c842fa5094              # double 8.3941060000000007
	.quad	0x401c03e39f77292c              # double 7.0037979999999997
	.quad	0x4014e7a919695d92              # double 5.2262310000000003
	.quad	0x402044a48f96e158              # double 8.1340679999999992
	.quad	0x4018e5bf26f1dc51              # double 6.2243620000000002
	.quad	0x400c76d0917d6b66              # double 3.5580150000000001
	.quad	0x40226d017dae8188              # double 9.2129019999999997
	.quad	0x400d4cb6c7a7c9de              # double 3.662458
	.quad	0x40237a6fa3fcc9eb              # double 9.7391330000000007
	.quad	0x401cd620685553ef              # double 7.2091079999999996
	.quad	0x40044f4b61fe21d9              # double 2.5387179999999998
	.quad	0x400dac1871e6cd29              # double 3.709031
	.quad	0x4016b85b5b70691f              # double 5.6800360000000003
	.quad	0x401e5a03c4b09e99              # double 7.5879050000000001
	.quad	0x4020796aad1d041d              # double 8.2371420000000004
	.quad	0x3fd6186db50f40e6              # double 0.34524100000000002
	.quad	0x402264b85a4f00ef              # double 9.1967189999999999
	.quad	0x3fffae264e48626f              # double 1.9800169999999999
	.quad	0x4007755b4677b396              # double 2.9323030000000001
	.quad	0x3fda6a9c560c7c0f              # double 0.41275699999999999
	.quad	0x4016771715c63ae2              # double 5.6162989999999997
	.quad	0x40020e2b8c75c4a8              # double 2.2569189999999999
	.quad	0x4018fc61d8622c45              # double 6.246467
	.quad	0x3ffdc3be6601bc99              # double 1.8602890000000001
	.quad	0x3ff946940357a355              # double 1.579731
	.quad	0x3febd332acfb762e              # double 0.86953100000000005
	.quad	0x40224aa8650e7792              # double 9.1458159999999999
	.quad	0x40153f39d1b2e59b              # double 5.311744
	.quad	0x4009ccfbfc6540cc              # double 3.2250899999999998
	.quad	0x40137aba7b9170d6              # double 4.8698519999999998
	.quad	0x3fa32e59af9ebe9d              # double 0.037463000000000003
	.quad	0x3fffd63fdd65a145              # double 1.9898070000000001
	.quad	0x401649e55c0fcb4f              # double 5.5721639999999999
	.quad	0x401b70b28522ea10              # double 6.8600560000000002
	.quad	0x4003061a60d4562e              # double 2.37798
	.quad	0x401925e0b4e11dbd              # double 6.2869900000000003
	.quad	0x401d07ad080b673c              # double 7.2574959999999997
	.quad	0x3ffce30fcf80dc33              # double 1.8054349999999999
	.quad	0x40102e6299524bfd              # double 4.0452979999999998
	.quad	0x402177a3b9ae0c17              # double 8.7336709999999993
	.quad	0x4013febe9c886163              # double 4.9987740000000001
	.quad	0x40221171c10d7bea              # double 9.0340710000000009
	.quad	0x402375d851654d62              # double 9.7301660000000005
	.quad	0x3fe8917d6b65a9a8              # double 0.76776
	.quad	0x400ee8a8b08dd1e5              # double 3.8636029999999999
	.quad	0x400287cbf6e3f78c              # double 2.3163070000000001
	.quad	0x4022cc7ef177a701              # double 9.3994060000000008
	.quad	0x40154f28c79f6662              # double 5.3273039999999998
	.quad	0x3ff8cad57bc7f77b              # double 1.54952
	.quad	0x401c25604189374c              # double 7.0365000000000002
	.quad	0x40095b9a5a89b952              # double 3.1697280000000001
	.quad	0x401859ad85dfa872              # double 6.0875760000000003
	.quad	0x401efcfede97d06c              # double 7.7470660000000002
	.quad	0x4018dc07aaef2c73              # double 6.2148729999999999
	.quad	0x400658383ad9f0a2              # double 2.7930760000000001
	.quad	0x401aea2a4db163bb              # double 6.7286770000000002
	.quad	0x401bded6fda836eb              # double 6.9676169999999997
	.quad	0x3fe0821af7d30ad4              # double 0.51588199999999995
	.quad	0x400dcf6f8f041462              # double 3.7262870000000001
	.quad	0x4003bd63022dd7aa              # double 2.4674740000000002
	.quad	0x402197c06e19b90f              # double 8.7963900000000006
	.quad	0x4020dd1f1cfbb949              # double 8.4318779999999993
	.quad	0x401c360aa64c2f83              # double 7.0527749999999996
	.quad	0x4020ba70b06c43f6              # double 8.364141
	.quad	0x401069d6adf71eb0              # double 4.1033580000000001
	.quad	0x40204efd00713f07              # double 8.1542739999999991
	.quad	0x40237fc7607c419a              # double 9.749568
	.quad	0x400283b9ae0c1765              # double 2.3143189999999998
	.quad	0x4023db1183b60286              # double 9.9278680000000001
	.quad	0x40169fdef8487b9a              # double 5.6561240000000002
	.quad	0x4011e8f8a4c1ebc8              # double 4.4775109999999998
	.quad	0x400ac39b456b441c              # double 3.3455110000000001
	.quad	0x4014abc2b94d9408              # double 5.1677350000000004
	.quad	0x401923059641f645              # double 6.2842010000000004
	.quad	0x401f1845132f87ad              # double 7.7737009999999999
	.quad	0x4000cc95bff04578              # double 2.0998950000000001
	.quad	0x40106949a5657fb7              # double 4.1028200000000004
	.quad	0x4020551c9f72f76e              # double 8.1662339999999993
	.quad	0x40238a36c15d2d02              # double 9.7699490000000004
	.quad	0x40191eb9a176ddad              # double 6.2800050000000001
	.quad	0x402196b8b69552e3              # double 8.794378
	.quad	0x401f574cd31769a9              # double 7.8352539999999999
	.quad	0x40214c7e8ccdd93c              # double 8.6494029999999995
	.quad	0x3fec6b1c432ca57a              # double 0.88807499999999995
	.quad	0x40024754f3775b81              # double 2.2848299999999999
	.quad	0x4004d1af3a14cec4              # double 2.6023849999999999
	.quad	0x401f0242070b8cfc              # double 7.752205
	.quad	0x400f1735c182ecaf              # double 3.886333
	.quad	0x40017677f6b1a2a5              # double 2.1828460000000001
	.quad	0x3ff00e3ef284167b              # double 1.0034780000000001
	.quad	0x401660c564f97edc              # double 5.5945029999999996
	.quad	0x3fe9eb4a66559f6f              # double 0.80997200000000003
	.quad	0x400957f3061c79b3              # double 3.1679439999999999
	.quad	0x4022c6225fa658c5              # double 9.3869810000000004
	.quad	0x401233f7ced91687              # double 4.5507499999999999
	.quad	0x401764cc25072086              # double 5.8484350000000003
	.quad	0x402155204af92296              # double 8.6662619999999997
	.quad	0x3ff93ca1059ea572              # double 1.577302
	.quad	0x400e700a393ee5ef              # double 3.8047070000000001
	.quad	0x40059d63886594af              # double 2.7018499999999999
	.quad	0x40037691212513b6              # double 2.4328940000000001
	.quad	0x402385cebfec13ba              # double 9.7613430000000001
	.quad	0x401bbdf8b1572581              # double 6.9355190000000002
	.quad	0x401ee879c4113c68              # double 7.7270269999999996
	.quad	0x401d8b55ac03ff69              # double 7.386069
	.quad	0x4010076188b1140a              # double 4.0072080000000003
	.quad	0x3ff1c606748e4756              # double 1.110846
	.quad	0x40138c74b838c112              # double 4.8871640000000003
	.quad	0x400846ce358298cc              # double 3.034573
	.quad	0x3fef3a30121682f9              # double 0.97585299999999997
	.quad	0x4022d21a0cf1800a              # double 9.4103549999999991
	.quad	0x4015408bb906466b              # double 5.3130329999999999
	.quad	0x401d4e5c91d14e3c              # double 7.3265250000000002
	.quad	0x3feaef284167a95d              # double 0.84169400000000005
	.quad	0x40200deb7457c0b1              # double 8.0271869999999996
	.quad	0x3ff07a13c254a3c6              # double 1.0298039999999999
	.quad	0x40186ad3a604e1e7              # double 6.1043229999999999
	.quad	0x400bcb80ecfa69be              # double 3.474367
	.quad	0x4015e903ea704bc2              # double 5.4775539999999996
	.quad	0x3fdd40b780346dc6              # double 0.45707500000000001
	.quad	0x4005a5fe111276fb              # double 2.706051
	.quad	0x400c97ff151e7536              # double 3.574217
	.quad	0x401d3c98a222d517              # double 7.3091759999999999
	.quad	0x40105fe1975f2cb6              # double 4.0936339999999998
	.quad	0x4022ebd640e9d51b              # double 9.4606189999999994
	.quad	0x402179c68ec52a41              # double 8.7378429999999998
	.quad	0x401388c2e770bd01              # double 4.8835559999999996
	.quad	0x4014eccf6be37de9              # double 5.2312599999999998
	.quad	0x3fe25cf893faf428              # double 0.57384900000000005
	.quad	0x3ff45f601797cc3a              # double 1.273285
	.quad	0x401334d4024b33db              # double 4.80159
	.quad	0x4011834b51372a39              # double 4.3782170000000002
	.quad	0x402053f5d78811b2              # double 8.1639850000000003
	.quad	0x40165f4f93bc0a07              # double 5.5930770000000001
	.quad	0x401f483d790752db              # double 7.8205470000000003
	.quad	0x400fd3519bd4067d              # double 3.978183
	.quad	0x4003e4cc6822ff09              # double 2.4867180000000002
	.quad	0x40104ee5eedcc20d              # double 4.0770489999999997
	.quad	0x4021b5933e35c5b5              # double 8.8546390000000006
	.quad	0x40149c5b078d92fb              # double 5.1526909999999999
	.quad	0x4002ac918e325d4a              # double 2.3342619999999998
	.quad	0x4011aa7ac81d3aa3              # double 4.4164839999999996
	.quad	0x4021a1b79d909f1f              # double 8.8158539999999999
	.quad	0x3ff55769a91105e2              # double 1.3338410000000001
	.quad	0x401d657928e0c9da              # double 7.3490950000000002
	.quad	0x4017b16ce789e775              # double 5.9232670000000001
	.quad	0x401ea8fbca1059ea              # double 7.6650229999999997
	.quad	0x4010987bdcf0307f              # double 4.1489099999999999
	.quad	0x40149b395c422036              # double 5.151586
	.quad	0x3ff848f217093101              # double 1.517809
	.quad	0x401de3dc486ad2dd              # double 7.4725200000000003
	.quad	0x40236c940bbb1f25              # double 9.7120669999999993
	.quad	0x3ffc30bd017dae82              # double 1.7618990000000001
	.quad	0x401b5f9e3864cb5c              # double 6.8433770000000003
	.quad	0x4017341248d7e026              # double 5.8008509999999998
	.quad	0x400e43c18b502abb              # double 3.7830840000000001
	.quad	0x3ff7f899392189be              # double 1.4981930000000001
	.quad	0x402318dc11e42e12              # double 9.5485539999999993
	.quad	0x4023b4a1f080303c              # double 9.8527979999999999
	.quad	0x3fdd89acbc8c0ce9              # double 0.46152799999999999
	.quad	0x4018a4bb1af3a14d              # double 6.1608700000000001
	.quad	0x401a79991361dc94              # double 6.6187480000000001
	.quad	0x401a8d94d0dcfcc6              # double 6.6382630000000002
	.quad	0x40211bf67f4dbdf9              # double 8.5546150000000001
	.quad	0x4017e6a161e4f766              # double 5.975225
	.quad	0x401983f077ccc038              # double 6.3788470000000004
	.quad	0x4020d160fa15db34              # double 8.4089430000000007
	.quad	0x4021dfe8ccdd93c4              # double 8.9373229999999992
	.quad	0x3ff14a0e410b630b              # double 1.0805800000000001
	.quad	0x4001e91d14e3bcd3              # double 2.2388249999999998
	.quad	0x401d962fdfc19c17              # double 7.3966669999999999
	.quad	0x3fec48abd5dc4007              # double 0.88387099999999996
	.quad	0x401c4e820e629952              # double 7.0766679999999997
	.quad	0x400172f449129889              # double 2.18113
	.quad	0x400c823854046413              # double 3.5635840000000001
	.quad	0x401acb1a2a4db164              # double 6.6983420000000002
	.quad	0x402197720c8cd63d              # double 8.7957920000000005
	.quad	0x40039d50a88effe3              # double 2.4518140000000002
	.quad	0x4021d1d9b1b79d91              # double 8.9098640000000007
	.quad	0x401acffc9795b35b              # double 6.703112
	.quad	0x4011b1a500d5e8d5              # double 4.4234809999999998
	.quad	0x4004309b738e6d16              # double 2.5237340000000001
	.quad	0x4010d2c5e2cdc012              # double 4.2058330000000002
	.quad	0x3ffad19dece57109              # double 1.6761760000000001
	.quad	0x401c3605681ecd4b              # double 7.0527550000000003
	.quad	0x40207ee06d938152              # double 8.2478060000000006
	.quad	0x3fc528e0c9d9d346              # double 0.16531000000000001
	.quad	0x40033a615a8deb10              # double 2.4035060000000001
	.quad	0x401b262d40aaeafb              # double 6.7872820000000003
	.quad	0x402237ee4e26d480              # double 9.1092399999999998
	.quad	0x4021394c22ee4192              # double 8.6119090000000007
	.quad	0x40009ab3aabcd78c              # double 2.0755379999999999
	.quad	0x4016ddcb5781c715              # double 5.716596
	.quad	0x4021072da122fad7              # double 8.5140200000000004
	.quad	0x3ffa788b9778572a              # double 1.6544300000000001
	.quad	0x3ff5e69057d1782d              # double 1.36879
	.quad	0x3ff56045baf533f4              # double 1.336004
	.quad	0x4023ea858793dd98              # double 9.95805
	.quad	0x401b51dda059a73b              # double 6.8299469999999998
	.quad	0x400d22ab25b317f0              # double 3.6419280000000001
	.quad	0x400dd1f36262cba7              # double 3.7275149999999999
	.quad	0x400e16b873797460              # double 3.7610939999999999
	.quad	0x400552799a1fd157              # double 2.6652710000000002
	.quad	0x3fe9eed02cd39da1              # double 0.81040199999999996
	.quad	0x4019727674d16335              # double 6.3617800000000004
	.quad	0x4010bd9f90539fba              # double 4.1851789999999998
	.quad	0x401e079fa97e132b              # double 7.5074449999999997
	.quad	0x401fd68512231833              # double 7.959492
	.quad	0x3fe587d0aed99cbf              # double 0.67282900000000001
	.quad	0x3ff9b542a23bff8b              # double 1.6067530000000001
	.quad	0x3ff96adf71eafee7              # double 1.588592
	.quad	0x401cbae5bc87db2b              # double 7.1825169999999998
	.quad	0x400fc23d9231c64c              # double 3.9698440000000002
	.quad	0x401c604534bd76ee              # double 7.0940139999999996
	.quad	0x40184121ab4b72c5              # double 6.0636049999999999
	.quad	0x401a183947496aad              # double 6.5236559999999999
	.quad	0x40233526527a2058              # double 9.6038080000000007
	.quad	0x40106ad794a6eb92              # double 4.1043380000000003
	.quad	0x40202cce1c58255b              # double 8.08751
	.quad	0x400d3baba7b9170d              # double 3.6541359999999998
	.quad	0x3ffb66f3f52fc265              # double 1.7126349999999999
	.quad	0x401e8b7d84901d19              # double 7.6362209999999999
	.quad	0x4008c45803cd141a              # double 3.0958709999999998
	.quad	0x3fe0c436fc158fb4              # double 0.52395199999999997
	.quad	0x3fe1279dd3bafd97              # double 0.53608599999999995
	.quad	0x4018261672324c83              # double 6.0371949999999996
	.quad	0x3ff29aab47410731              # double 1.1627609999999999
	.quad	0x4023430d0edc3bd6              # double 9.6309590000000007
	.quad	0x4012e3800218def4              # double 4.7221679999999999
	.quad	0x4006385729b280f1              # double 2.7775099999999999
	.quad	0x40147dffc5479d4e              # double 5.1230460000000004
	.quad	0x4012bb3cc4ac6cdb              # double 4.682849
	.quad	0x3fcb4f0520d130e0              # double 0.21334900000000001
	.quad	0x4014127c39368273              # double 5.018052
	.quad	0x4012a26c7eae5bc8              # double 4.6586169999999996
	.quad	0x3fbc52f7f498c3b1              # double 0.110641
	.quad	0x401e71fafc8b007a              # double 7.6113090000000003
	.quad	0x4023cbaa369fcf3e              # double 9.8977830000000004
	.quad	0x400da595bbbe8790              # double 3.7058520000000001
	.quad	0x3fec472c0e7bc3c6              # double 0.88368800000000003
	.quad	0x40205405f6ba0621              # double 8.1641080000000006
	.quad	0x401c879cc74b838c              # double 7.1324339999999999
	.quad	0x3ffa04cdfaca361a              # double 1.6261730000000001
	.quad	0x4011252157689ca2              # double 4.2862600000000004
	.quad	0x402110c8259e1f3a              # double 8.5327769999999994
	.quad	0x4011561522a6f3f5              # double 4.3340649999999998
	.quad	0x401366134ce3de61              # double 4.8496829999999997
	.quad	0x401fd2f8bdec5f39              # double 7.9560269999999997
	.quad	0x4016e578e5c4eb57              # double 5.724094
	.quad	0x40162c9fb6134ce4              # double 5.5435780000000001
	.quad	0x3fee30f49491f2dc              # double 0.94347599999999998
	.quad	0x400e0791c4b90215              # double 3.7536960000000001
	.quad	0x401986a8b8f14db6              # double 6.3815030000000004
	.quad	0x4014d2bbecaab8a6              # double 5.2057950000000002
	.quad	0x401724bdfd2630ec              # double 5.7858809999999998
	.quad	0x400eaf112fd32c62              # double 3.8354819999999998
	.quad	0x4013113d74d594f2              # double 4.7668359999999996
	.quad	0x3fe7358298cc1440              # double 0.72528199999999998
	.quad	0x3fffeb649d388a8b              # double 1.994969
	.quad	0x3fff5b499d0203e6              # double 1.9597869999999999
	.quad	0x40105f5d35653c9b              # double 4.0931290000000002
	.quad	0x4006d35f3d7d3911              # double 2.8532090000000001
	.quad	0x4015e2f1ed17c5ef              # double 5.4716259999999997
	.quad	0x40227907746887a9              # double 9.2363850000000003
	.quad	0x401087136a400fbb              # double 4.1319100000000004
	.quad	0x4013c636b0963561              # double 4.943568
	.quad	0x401154e618ce2d1f              # double 4.3329089999999999
	.quad	0x3ff22c5f394b7b29              # double 1.1358330000000001
	.quad	0x4019ee3150dae3e7              # double 6.4826100000000002
	.quad	0x401b5893faf42785              # double 6.8365020000000003
	.quad	0x401469331a08bfc2              # double 5.1027339999999999
	.quad	0x40165a53fc0096ff              # double 5.5882110000000003
	.quad	0x400dea6a875d56f3              # double 3.7394609999999999
	.quad	0x401d5380cb6c7a7d              # double 7.3315460000000003
	.quad	0x4019506530058149              # double 6.3285109999999998
	.quad	0x3ff5545f9df548ed              # double 1.333099
	.quad	0x40048b0c026cc1ca              # double 2.5678939999999999
	.quad	0x3ff12174c4cdfaca              # double 1.070668
	.quad	0x4022d068986fcdee              # double 9.4070479999999996
	.quad	0x4000719e731d2e0e              # double 2.0554779999999999
	.quad	0x4015858255b035bd              # double 5.3803799999999997
	.quad	0x40171853c148344c              # double 5.7737569999999998
	.quad	0x400c65b8561d4307              # double 3.549668
	.quad	0x40102203a322af57              # double 4.0332169999999996
	.quad	0x40167a0ec7432010              # double 5.6191969999999998
	.quad	0x40010896dd26b724              # double 2.129194
	.quad	0x3fe8f4c4cdfaca36              # double 0.77987899999999999
	.quad	0x400e312f4cf4a559              # double 3.774016
	.quad	0x3ff1de57d9dba909              # double 1.1167830000000001
	.quad	0x4021c249e44fa051              # double 8.8794699999999995
	.quad	0x401a6d1287c200c1              # double 6.6065160000000001
	.quad	0x40071e3c968943e1              # double 2.889764
	.quad	0x401114b2fa93af75              # double 4.2702140000000002
	.quad	0x4020f477bbf93ff2              # double 8.4774759999999993
	.quad	0x40097291b823c85c              # double 3.1809419999999999
	.quad	0x400a96aceaaf35e3              # double 3.323572
	.quad	0x4023c0d90e23af32              # double 9.8766560000000005
	.quad	0x401811f601797cc4              # double 6.0175400000000003
	.quad	0x4020b70c996b7671              # double 8.3575180000000007
	.quad	0x3fecad85dfa871a4              # double 0.89618200000000003
	.quad	0x3ff9a47ecfe9b7bf              # double 1.60266
	.quad	0x400d987ad080b674              # double 3.6994530000000001
	.quad	0x4012195e9e1b089a              # double 4.524775
	.quad	0x401bcbc01a36e2eb              # double 6.9489749999999999
	.quad	0x402032674080f990              # double 8.0984440000000006
	.quad	0x40223f727136a401              # double 9.12392
	.quad	0x400962a12f901084              # double 3.1731590000000001
	.quad	0x40146f86a098915c              # double 5.1089120000000001
	.quad	0x3ff07b4e54f7a919              # double 1.0301039999999999
	.quad	0x400d04d12018a43c              # double 3.6273520000000001
	.quad	0x40174dc9c4da9004              # double 5.8259650000000001
	.quad	0x402000705425f202              # double 8.0008569999999999
	.quad	0x4018277574f722e2              # double 6.0385340000000003
	.quad	0x4022c1ff4fd6d7e9              # double 9.3789010000000008
	.quad	0x3fe183bc4d22c882              # double 0.54733100000000001
	.quad	0x4014b9e9d0e991ff              # double 5.1815559999999996
	.quad	0x40107f572de43ed9              # double 4.1243559999999997
	.quad	0x400f4aafbc1acde2              # double 3.9114680000000002
	.quad	0x4013a80f12c27a63              # double 4.9141199999999996
	.quad	0x3fddbb6ed677707a              # double 0.46456500000000001
	.quad	0x400cd1d81f106680              # double 3.6024630000000002
	.quad	0x3ff19d72367e414e              # double 1.1009389999999999
	.quad	0x3fad36f7e3d1cc10              # double 0.05706
	.quad	0x401c50880d801b43              # double 7.0786439999999997
	.quad	0x3ffc820a30db6a1f              # double 1.7817480000000001
	.quad	0x401bd7ba6698bb4d              # double 6.9606719999999997
	.quad	0x3fa9c3efae7924af              # double 0.050323
	.quad	0x401bd5082cf52b91              # double 6.9580390000000003
	.quad	0x40210d6fda836eb5              # double 8.5262440000000002
	.quad	0x400d2b4aec8d5c74              # double 3.6461389999999998
	.quad	0x3fd17b5f1bef49cf              # double 0.27315499999999998
	.quad	0x3ff6880e8c8abd5e              # double 1.4082170000000001
	.quad	0x400299231c64ba95              # double 2.3247740000000001
	.quad	0x400f02be0589acbd              # double 3.8763390000000002
	.quad	0x40084c5d206c8712              # double 3.0372870000000001
	.quad	0x401473e100607810              # double 5.1131630000000001
	.quad	0x3ff80d9c6b053198              # double 1.503323
	.quad	0x4021025375c8d9f9              # double 8.504543
	.quad	0x3ffb129aa1d755bd              # double 1.692042
	.quad	0x40105d9b5e95b78d              # double 4.0914130000000002
	.quad	0x400378ceb356da01              # double 2.4339879999999998
	.quad	0x40124bedfa43fe5d              # double 4.5741500000000004
	.quad	0x402317064ece9a2c              # double 9.5449699999999992
	.quad	0x40200ce89656eefa              # double 8.0252119999999998
	.quad	0x4006038759253544              # double 2.7517230000000001
	.quad	0x3fce3864cb5bb385              # double 0.236096
	.quad	0x401b9e0008637bd0              # double 6.9042969999999997
	.quad	0x4022b5c0db2702a3              # double 9.3549869999999994
	.quad	0x402234bc48f10a9a              # double 9.1029990000000005
	.quad	0x4023a2849cb252ce              # double 9.817418
	.quad	0x3ff894866a11ec92              # double 1.5362610000000001
	.quad	0x4014e796bfca85cb              # double 5.2261610000000003
	.quad	0x40108de5082cf52c              # double 4.1385690000000004
	.quad	0x40227baf533f4235              # double 9.2415719999999997
	.quad	0x40066fba8826aa8f              # double 2.8045550000000001
	.quad	0x4010d5703f2d3c79              # double 4.2084359999999998
	.quad	0x3fe3c82be8bc169c              # double 0.61818499999999998
	.quad	0x3fc8b7aa25d8d79d              # double 0.193105
	.quad	0x40235dfa00e27e0f              # double 9.683548
	.quad	0x401b25ab3aabcd79              # double 6.7867860000000002
	.quad	0x3ff34385c67dfe33              # double 1.2039850000000001
	.quad	0x3ffebba8826aa8eb              # double 1.9208149999999999
	.quad	0x400e677143393ab4              # double 3.8005089999999999
	.quad	0x401a5582dbe7f2c3              # double 6.583507
	.quad	0x3fff51569f490603              # double 1.9573579999999999
	.quad	0x40060f68be2f7b18              # double 2.7575240000000001
	.quad	0x400f750b955f7836              # double 3.9321510000000002
	.quad	0x40125da98676a726              # double 4.5914669999999997
	.quad	0x40126a36e2eb1c43              # double 4.6037249999999998
	.quad	0x40097f6ec5b078d9              # double 3.1872229999999999
	.quad	0x400b21d3aa369fcf              # double 3.3915169999999999
	.quad	0x40209801711947d0              # double 8.2968860000000006
	.quad	0x4000730270f38822              # double 2.0561569999999998
	.quad	0x40233096787ce960              # double 9.5948980000000006
	.quad	0x4018708205ff1d82              # double 6.1098710000000001
	.quad	0x4013ed38476f2a5a              # double 4.9816599999999998
	.quad	0x401730f49491f2dc              # double 5.7978079999999999
	.quad	0x40103763a1900820              # double 4.0540909999999997
	.quad	0x40225b4eb9a176de              # double 9.1783350000000006
	.quad	0x3ff80d9d7774aba4              # double 1.5033240000000001
	.quad	0x40206eafcce1c582              # double 8.2161849999999994
	.quad	0x4022a0b652370479              # double 9.3138909999999999
	.quad	0x3fddceb356da0169              # double 0.46574100000000002
	.quad	0x40117dab191dde37              # double 4.3727229999999997
	.quad	0x401fe338f7985272              # double 7.9718970000000002
	.quad	0x4009fd206c8711d8              # double 3.2485970000000002
	.quad	0x40220edb940fecdd              # double 9.0290189999999999
	.quad	0x402058cdc8754f37              # double 8.1734449999999992
	.quad	0x40176e1262025397              # double 5.8574919999999997
	.quad	0x3fea61804d983947              # double 0.82440199999999997
	.quad	0x40173a7ded6ba8c6              # double 5.8071210000000004
	.quad	0x401308205ff1d81f              # double 4.7579359999999999
	.quad	0x402137062d40aaeb              # double 8.607469
	.quad	0x4011305dd8f92afa              # double 4.2972330000000003
	.quad	0x4010088765ba6efc              # double 4.0083289999999998
	.quad	0x3fd0ba27ae9ab29e              # double 0.26136199999999998
	.quad	0x401b8089a0275254              # double 6.8755249999999997
	.quad	0x40025933e35c5b4b              # double 2.2935560000000002
	.quad	0x401a766adb402d17              # double 6.6156420000000002
	.quad	0x40197abead4f5904              # double 6.3698680000000003
	.quad	0x3ffc08fb86f47b67              # double 1.7521929999999999
	.quad	0x401200c1333b96af              # double 4.500737
	.quad	0x400d1513f8db4891              # double 3.6352920000000002
	.quad	0x3ff0935fc3b4f616              # double 1.0359799999999999
	.quad	0x400217d73c925786              # double 2.261641
	.quad	0x3fe4f2c7325918a0              # double 0.654636
	.quad	0x401b06db0dd82fd7              # double 6.7566949999999997
	.quad	0x400d55842b734b51              # double 3.6667559999999999
	.quad	0x401a8e718a86d71f              # double 6.6391049999999998
	.quad	0x40203a0c282c6ef4              # double 8.1133740000000003
	.quad	0x400312263d816acf              # double 2.3838620000000001
	.quad	0x40129192a737110e              # double 4.6421609999999998
	.quad	0x40210b1209edbf8c              # double 8.5216220000000006
	.quad	0x4021fea11ec918e3              # double 8.9973229999999997
	.quad	0x3ffbc4cbe1eb4203              # double 1.735546
	.quad	0x4012f065b63d3e4f              # double 4.7347630000000001
	.quad	0x3fe0e7c6b8b69553              # double 0.52829300000000001
	.quad	0x40135cc814d7279a              # double 4.8406070000000003
	.quad	0x401c32a305532618              # double 7.0494500000000002
	.quad	0x4021986c6583e857              # double 8.7977019999999992
	.quad	0x4013d9abf3387161              # double 4.9625700000000004
	.quad	0x3ff4f940fecdd0d9              # double 1.310853
	.quad	0x4011b90a7829068a              # double 4.4307040000000004
	.quad	0x3fe2fe73a365cb36              # double 0.59356100000000001
	.quad	0x3ffc4b97785729b3              # double 1.7684550000000001
	.quad	0x3ff03354c122749f              # double 1.012532
	.quad	0x4021908509bf9c63              # double 8.7822650000000007
	.quad	0x402307c9363f572e              # double 9.5152070000000002
	.quad	0x40177b40b34e7686              # double 5.8703640000000004
	.quad	0x4020d54280ae1049              # double 8.4165229999999998
	.quad	0x400241b97353b4b3              # double 2.282092
	.quad	0x4016cf41f212d773              # double 5.7023999999999999
	.quad	0x400d6557de0d66f1              # double 3.6744840000000001
	.quad	0x4021ac1fa7653437              # double 8.8361789999999996
	.quad	0x400c0769ec2ce465              # double 3.5036200000000002
	.quad	0x401d21e646f15619              # double 7.2831049999999999
	.quad	0x402297325918a00a              # double 9.2953060000000001
	.quad	0x400699a8cdea033e              # double 2.8250289999999998
	.quad	0x40215746ed245b29              # double 8.6704629999999998
	.quad	0x401f7e73e681a9b9              # double 7.8734890000000001
	.quad	0x40214c86cebbba56              # double 8.6494660000000003
	.quad	0x400b124f227d028a              # double 3.3839399999999999
	.quad	0x3fe1f1b4784230fd              # double 0.560755
	.quad	0x3ff507e28240b780              # double 1.314425
	.quad	0x4006cfa69be09bb7              # double 2.8513920000000001
	.quad	0x3f90b417ca2120e2              # double 0.016312
	.quad	0x4006fa604e1e7104              # double 2.8722539999999999
	.quad	0x401ac435696e58a3              # double 6.6916099999999998
	.quad	0x401a4566490a350d              # double 6.5677729999999999
	.quad	0x401dc5d35653c9ac              # double 7.4431890000000003
	.quad	0x3fddf6cacd184c27              # double 0.46818799999999999
	.quad	0x3fe21a91105e1c15              # double 0.565743
	.quad	0x40238e874c8ffb8b              # double 9.7783759999999997
	.quad	0x4020856ffc115df6              # double 8.2606199999999994
	.quad	0x3fe9dbd72bcb5fe5              # double 0.80808599999999997
	.quad	0x3fd48b588e368f08              # double 0.32100499999999998
	.quad	0x401afab29e4d5d81              # double 6.7448220000000001
	.quad	0x401eaa2a4db163bb              # double 7.6661770000000002
	.quad	0x4010128a1dfb938a              # double 4.0181050000000003
	.quad	0x4021ab929ed3953e              # double 8.8351030000000002
	.quad	0x401a53f4eca686e8              # double 6.5819890000000001
	.quad	0x4017165ba6efc372              # double 5.7718340000000001
	.quad	0x4021fea209aaa3ad              # double 8.9973299999999998
	.quad	0x4016f56b441bb8c3              # double 5.7396669999999999
	.quad	0x3ffed8750c1b9735              # double 1.9278459999999999
	.quad	0x4022ae46ae3a3a8e              # double 9.3403829999999992
	.quad	0x400d1b01c92ddbdb              # double 3.6381869999999998
	.quad	0x401777735c182ecb              # double 5.8666510000000001
	.quad	0x4008c647778dd617              # double 3.096816
	.quad	0x401fc88ce703afb8              # double 7.94585
	.quad	0x3ff91da16616b54e              # double 1.569734
	.quad	0x40006fede97d06bc              # double 2.0546530000000001
	.quad	0x4012164ba94bbe44              # double 4.5217729999999996
	.quad	0x40126a708ede54b5              # double 4.6039450000000004
	.quad	0x3fe74d1633482be9              # double 0.72816000000000003
	.quad	0x3fe3680e06530058              # double 0.60645199999999999
	.quad	0x4010caad1d041cc5              # double 4.1979259999999998
	.quad	0x40129195cc857f30              # double 4.6421729999999997
	.quad	0x402379be8ff327aa              # double 9.7377819999999993
	.quad	0x3feaa2ff08893b7e              # double 0.83239700000000005
	.quad	0x4000927e5215768a              # double 2.0715300000000001
	.quad	0x3ff6676534373f31              # double 1.4002429999999999
	.quad	0x3fe95cd0bb6ed677              # double 0.79257999999999995
	.quad	0x4012a2788db0574b              # double 4.6586629999999998
	.quad	0x3ff2a76534373f31              # double 1.1658679999999999
	.quad	0x40108e631f8a0903              # double 4.1390500000000001
	.quad	0x3fa47820a30db6a2              # double 0.039979000000000001
	.quad	0x4003829845dc8323              # double 2.4387669999999999
	.quad	0x40221018e757928e              # double 9.0314399999999999
	.quad	0x4008f79f23465626              # double 3.1209090000000002
	.quad	0x4023a0d79d0a6762              # double 9.8141449999999999
	.quad	0x401b4e31d712a0ec              # double 6.8263619999999996
	.quad	0x40234bbb40b34e77              # double 9.6479130000000008
	.quad	0x400a3324851a8694              # double 3.274972
	.quad	0x402039d0a67620ef              # double 8.1129200000000008
	.quad	0x40059b584b1ab085              # double 2.7008519999999998
	.quad	0x40079c6b05319829              # double 2.9513760000000002
	.quad	0x40054a372606fac6              # double 2.661238
	.quad	0x4016de6c093d9664              # double 5.7172090000000004
	.quad	0x401d03e707e175d1              # double 7.2538109999999998
	.quad	0x4019a6b26bf8769f              # double 6.4127900000000002
	.quad	0x401ac0828c36da88              # double 6.6879980000000003
	.quad	0x401d2d32c625e99f              # double 7.2941390000000004
	.quad	0x40224ab063e07a29              # double 9.1458770000000005
	.quad	0x3fc921f6cacd184c              # double 0.196349
	.quad	0x400115d78811b1d9              # double 2.1356649999999999
	.quad	0x3fefbb29a1b9f98b              # double 0.99159699999999995
	.quad	0x40066be61cffeb07              # double 2.8026849999999999
	.quad	0x401f3425f202107b              # double 7.8009259999999995
	.quad	0x4019482cb20fb225              # double 6.3204830000000003
	.quad	0x402035c26dce39b4              # double 8.1049989999999993
	.quad	0x4023821554fbdad7              # double 9.7540689999999994
	.quad	0x40235dc28f5c28f6              # double 9.6831250000000004
	.quad	0x400aae50c5eb313c              # double 3.3351150000000001
	.quad	0x401d768d32830a0b              # double 7.3657729999999999
	.quad	0x4023f35daad60200              # double 9.9753240000000005
	.quad	0x4014ec6de76427c8              # double 5.2308880000000002
	.quad	0x40099e7e1fc08fa8              # double 3.2023890000000002
	.quad	0x401e3650e779207d              # double 7.5530429999999997
	.quad	0x40214a493c89f40a              # double 8.6450899999999997
	.quad	0x400b303968d759ef              # double 3.3985470000000002
	.quad	0x401b922e1ac57e24              # double 6.892754
	.quad	0x401dbe935b91f70e              # double 7.4361090000000001
	.quad	0x3ffbf11f926c7eae              # double 1.7463679999999999
	.quad	0x3fd298cc144028e5              # double 0.290576
	.quad	0x40223499ae924f22              # double 9.1027349999999991
	.quad	0x401eaad70e6f2e8c              # double 7.666836
	.quad	0x3fb41248d7e02646              # double 0.078404000000000001
	.quad	0x3ff5dda597d49d7c              # double 1.3666130000000001
	.quad	0x4017fc83a96d4c34              # double 5.9965960000000003
	.quad	0x4020202795703f2d              # double 8.0628019999999996
	.quad	0x40177e121ee67514              # double 5.8731159999999996
	.quad	0x4017e8333fc86cec              # double 5.9767580000000002
	.quad	0x3fa0b827fa1a0cf2              # double 0.032655000000000003
	.quad	0x401f477c02afdda9              # double 7.8198090000000002
	.quad	0x4018128e92d55a3a              # double 6.018122
	.quad	0x4022281d7dbf4880              # double 9.0783500000000004
	.quad	0x400f73c9abb01c93              # double 3.9315370000000001
	.quad	0x4022ba3076c050be              # double 9.3636510000000008
	.quad	0x40109fc6540cc78f              # double 4.1560300000000003
	.quad	0x401a6b6390c91080              # double 6.6048720000000003
	.quad	0x4013f892ab68cef6              # double 4.9927469999999996
	.quad	0x4020d1c25d074214              # double 8.4096860000000006
	.quad	0x3fd1542a23bff8a9              # double 0.270762
	.quad	0x400c6dd69d30270f              # double 3.5536319999999999
	.quad	0x400f5901083dbc23              # double 3.9184589999999999
	.quad	0x401a9a8650e77920              # double 6.6509029999999996
	.quad	0x4011534dad31fcd2              # double 4.3313509999999997
	.quad	0x40013aca36199781              # double 2.1537060000000001
	.quad	0x402221dabe27179c              # double 9.066122
	.quad	0x402217cdab191dde              # double 9.0464909999999996
	.quad	0x4022d69707182236              # double 9.4191210000000005
	.quad	0x401f7ee2003ab863              # double 7.8739090000000002
	.quad	0x401af65d3996fa83              # double 6.7405900000000001
	.quad	0x401a8999dcb5781c              # double 6.6343759999999996
	.quad	0x40118ca793576039              # double 4.3873579999999999
	.quad	0x3fe12c1d29dc725c              # double 0.53663499999999997
	.quad	0x40155b020c49ba5e              # double 5.3388749999999998
	.quad	0x400744f11b60ae97              # double 2.9086630000000002
	.quad	0x400f8ef4e0114d2f              # double 3.9448029999999998
	.quad	0x4010a295a6c5d207              # double 4.1587740000000002
	.quad	0x4023c7e308787486              # double 9.8904040000000002
	.quad	0x401b6dcad14a0a0f              # double 6.8572189999999997
	.quad	0x400f3d9f4d37c137              # double 3.9050889999999998
	.quad	0x4013c886162f166e              # double 4.945824
	.quad	0x4015882ecaeea63b              # double 5.3829909999999996
	.quad	0x3ffd2d9ad85dfa87              # double 1.823634
	.quad	0x3fd4109d0635a427              # double 0.31351400000000001
	.quad	0x4010540789613d32              # double 4.0820600000000002
	.quad	0x4010ee61cffeb075              # double 4.2327950000000003
	.quad	0x4011dfc8b0079a28              # double 4.4685389999999998
	.quad	0x3ff64a07f66e86c6              # double 1.3930739999999999
	.quad	0x401e5aa6d2674081              # double 7.588527
	.quad	0x4010f8327674d163              # double 4.2423799999999998
	.quad	0x401f7c4651f3e89b              # double 7.8713620000000004
	.quad	0x4018bb2cc70867ae              # double 6.1827880000000004
	.quad	0x3ff31c981beb1811              # double 1.1944809999999999
	.quad	0x400e07e28240b780              # double 3.7538499999999999
	.quad	0x3fd2abf76a2f48c3              # double 0.29174600000000001
	.quad	0x401dd8611fd5885d              # double 7.4613079999999998
	.quad	0x3fe8a05143bf7271              # double 0.76956999999999998
	.quad	0x3ffab83dff3f0fe0              # double 1.6699809999999999
	.quad	0x402149b3f20a73f7              # double 8.6439509999999995
	.quad	0x3fd4856e696a26e5              # double 0.32064399999999998
	.quad	0x401791bb8c32a8ca              # double 5.8923170000000002
	.quad	0x40072027d88c1db0              # double 2.890701
	.quad	0x40209599cbee807c              # double 8.2921890000000004
	.quad	0x40178ffc5479d4d8              # double 5.8906109999999998
	.quad	0x4000530270f38822              # double 2.0405319999999998
	.quad	0x400861ede1198aec              # double 3.0478170000000002
	.quad	0x3ff7ebc621b7e0ac              # double 1.4950619999999999
	.quad	0x3ff42d5e071c53f4              # double 1.2610760000000001
	.quad	0x40108f9591cd1c7e              # double 4.1402190000000001
	.quad	0x4022d516fc9bc771              # double 9.4161909999999995
	.quad	0x401e3fbd6a593a2e              # double 7.562246
	.quad	0x3ff6563cb8173322              # double 1.3960539999999999
	.quad	0x4004ff2ecf206424              # double 2.6246010000000002
	.quad	0x4013b8344c37e6f7              # double 4.9298869999999999
	.quad	0x3fd15c31593e5fb7              # double 0.27125199999999999
	.quad	0x400edfcdab191dde              # double 3.8592789999999999
	.quad	0x4023b1b2c40d0aaa              # double 9.8470669999999991
	.quad	0x40234468ec52a412              # double 9.6336130000000004
	.quad	0x402249d4306e5cd5              # double 9.1441970000000001
	.quad	0x401494395810624e              # double 5.1447500000000002
	.quad	0x4020482d16b97fe9              # double 8.1409690000000001
	.quad	0x3ff70a116659d12d              # double 1.4399580000000001
	.quad	0x402171fc4c165908              # double 8.7226280000000003
	.quad	0x401bae3eaf6837f8              # double 6.9201610000000002
	.quad	0x40059707182235b5              # double 2.698744
	.quad	0x40150a9a3d2d87f9              # double 5.2603540000000004
	.quad	0x401ab54195cc857f              # double 6.6770079999999998
	.quad	0x4004fb6aa4b9884c              # double 2.6227619999999998
	.quad	0x401f18c47a17f413              # double 7.7741870000000004
	.quad	0x4022505dd8f92afa              # double 9.1569660000000006
	.quad	0x401de3abc947064f              # double 7.4723350000000002
	.quad	0x3fe00cc575c0767d              # double 0.50155899999999998
	.quad	0x3ff82fe718a86d72              # double 1.511695
	.quad	0x401f5d51b4fe79ee              # double 7.841132
	.quad	0x402251c2c1b10fd8              # double 9.1596890000000001
	.quad	0x400e9d523b3636f4              # double 3.8268170000000001
	.quad	0x4013f5dbb9cf9a07              # double 4.9900960000000003
	.quad	0x40223150331e3a7e              # double 9.0963150000000006
	.quad	0x4016ad041cc532a5              # double 5.6689610000000004
	.quad	0x40215dfd694ccab4              # double 8.6835740000000001
	.quad	0x40149bdcad14a0a1              # double 5.152209
	.quad	0x4019b1986b9c304d              # double 6.4234330000000002
	.quad	0x401bf51efb6dca08              # double 6.989376
	.quad	0x401478f7985271bd              # double 5.1181320000000001
	.quad	0x402076705c896dd2              # double 8.2313259999999993
	.quad	0x4023986034f3fd93              # double 9.7976089999999995
	.quad	0x400f8a8d21bc126a              # double 3.9426519999999998
	.quad	0x4023786940357a35              # double 9.7351779999999994
	.quad	0x4002151372a38b8b              # double 2.2602910000000001
	.quad	0x402331f01b866e44              # double 9.5975350000000005
	.quad	0x40211631d712a0ec              # double 8.5433489999999991
	.quad	0x40112b4a2339c0ec              # double 4.2922750000000001
	.quad	0x3ff8f94b7b28954a              # double 1.5608629999999999
	.quad	0x40210f11b60ae968              # double 8.5294319999999999
	.quad	0x40220e40639d5e4a              # double 9.0278349999999996
	.quad	0x40052b8c75c4a83b              # double 2.6462639999999999
	.quad	0x3ffbca2b9d3cbc49              # double 1.736858
	.quad	0x40228df82b1f687b              # double 9.2772839999999999
	.quad	0x40205bab21815a08              # double 8.1790400000000005
	.quad	0x400e030db6a1e81d              # double 3.7514910000000001
	.quad	0x3fe28d25edd05293              # double 0.57972999999999997
	.quad	0x4007b276fb09203a              # double 2.9621409999999999
	.quad	0x4023932af145521a              # double 9.7874370000000006
	.quad	0x401a6e3de6149c6f              # double 6.6076579999999998
	.quad	0x40191f7d30ad46f6              # double 6.2807510000000004
	.quad	0x40122f93bc0a06ea              # double 4.546462
	.quad	0x400d56dd26b723ee              # double 3.667414
	.quad	0x4011839f77292c49              # double 4.3785379999999998
	.quad	0x3ffdc79b34a44c7b              # double 1.861232
	.quad	0x3fecac59fb1e18f0              # double 0.89603900000000003
	.quad	0x402183884406c00e              # double 8.7568990000000007
	.quad	0x40109e9424e59296              # double 4.1548619999999996
	.quad	0x4018070cdc8754f3              # double 6.0068849999999996
	.quad	0x3ff40840e1719f80              # double 1.2520150000000001
	.quad	0x401dbde657b84dba              # double 7.4354490000000002
	.quad	0x4013937110e453d2              # double 4.8939859999999999
	.quad	0x4007a445aa2e3c53              # double 2.9552109999999998
	.quad	0x40168ba6698bb4d5              # double 5.6363770000000004
	.quad	0x3fb5d7ba6698bb4d              # double 0.085322999999999996
	.quad	0x40047608d08919f0              # double 2.5576340000000002
	.quad	0x40208c46950fc71d              # double 8.2739759999999993
	.quad	0x4018d81c714fce74              # double 6.2110459999999996
	.quad	0x40171adc8fb86f48              # double 5.7762320000000003
	.quad	0x401ae620ab713272              # double 6.7247339999999998
	.quad	0x402247e28240b780              # double 9.1403999999999996
	.quad	0x3ff379207d4e0978              # double 1.2170719999999999
	.quad	0x4012af4d7add15f0              # double 4.6711939999999998
	.quad	0x401579fa54c55433              # double 5.3691190000000004
	.quad	0x401e9bde82d7b635              # double 7.6522160000000001
	.quad	0x4013ea9fbe76c8b4              # double 4.9791249999999998
	.quad	0x4010b4db59578a2b              # double 4.1766180000000004
	.quad	0x3f7d50a88effe2a4              # double 0.0071570000000000002
	.quad	0x40173080f98fa377              # double 5.7973670000000004
	.quad	0x4022b51b71758e22              # double 9.3537250000000007
	.quad	0x4021b708cc575c07              # double 8.8574889999999993
	.quad	0x3ff7dc23b7952d23              # double 1.4912449999999999
	.quad	0x3fc98fc504816f00              # double 0.19969999999999999
	.quad	0x401693254e6e221d              # double 5.6436970000000004
	.quad	0x401f5da2b5a20ddc              # double 7.8414409999999997
	.quad	0x40212a656abde3fc              # double 8.5828050000000004
	.quad	0x40189214ad362e90              # double 6.1426569999999998
	.quad	0x40195a005c4651f4              # double 6.3378920000000001
	.quad	0x4019d5e74299d884              # double 6.4588900000000002
	.quad	0x4018eb456b441bb9              # double 6.2297570000000002
	.quad	0x3ff4dec1c1d6cf85              # double 1.304384
	.quad	0x3ff60d6e47dc37a4              # double 1.378279
	.quad	0x4020b85ec3dab5c4              # double 8.3600980000000006
	.quad	0x400b95475a31a4be              # double 3.4478900000000001
	.quad	0x401dfe86833c6003              # double 7.4985600000000003
	.quad	0x4017689613d31b9b              # double 5.8521349999999996
	.quad	0x4014eaa3f034b0e2              # double 5.2291410000000003
	.quad	0x401c85ae5ffa3b9b              # double 7.1305480000000001
	.quad	0x4004e59af9ebe9c9              # double 2.6121120000000002
	.quad	0x3fe8e58e64b23140              # double 0.77802199999999999
	.quad	0x4022c59641f64495              # double 9.3859119999999993
	.quad	0x400c7e73a365cb36              # double 3.561744
	.quad	0x400e09cf56eac860              # double 3.7547899999999998
	.quad	0x4022cb44a1f08030              # double 9.3970079999999996
	.quad	0x4023022e7f6f4be8              # double 9.5042609999999996
	.quad	0x3fa736ef8055fbb5              # double 0.045340999999999999
	.quad	0x40145b66f9335d25              # double 5.0892600000000003
	.quad	0x3fd8cd8dbcec84f9              # double 0.387546
	.quad	0x401262b990afe60c              # double 4.5964109999999998
	.quad	0x3fed8b242070b8d0              # double 0.92323500000000003
	.quad	0x401f1c3e74afd545              # double 7.7775819999999997
	.quad	0x40206b95a294141f              # double 8.2101260000000007
	.quad	0x40204b84fd2a62aa              # double 8.1474989999999998
	.quad	0x400a7d8cf398e970              # double 3.3113039999999998
	.quad	0x3ff9237154003255              # double 1.571153
	.quad	0x402170945f9df549              # double 8.7198820000000001
	.quad	0x401a3e991ff7164c              # double 6.5611309999999996
	.quad	0x3ffb82a3486f049b              # double 1.7193940000000001
	.quad	0x4017b3ae2541d8e8              # double 5.9254689999999997
	.quad	0x400ab0df15a4acf3              # double 3.336363
	.quad	0x4023199934efcbd5              # double 9.5499969999999994
	.quad	0x40221f685985ad54              # double 9.0613430000000008
	.quad	0x40220dac471b4784              # double 9.0267049999999997
	.quad	0x3ff0a97396d0917d              # double 1.0413699999999999
	.quad	0x401b6fe5c91d14e4              # double 6.8592750000000002
	.quad	0x40181be9856a37ac              # double 6.0272579999999998
	.quad	0x40204c47e49b1fac              # double 8.1489860000000007
	.quad	0x400955f2452c59fb              # double 3.1669659999999999
	.quad	0x4022e3986338b47c              # double 9.4445219999999991
	.quad	0x3ffd25e4606748e4              # double 1.8217509999999999
	.quad	0x401ead8be7296f65              # double 7.6694789999999999
	.quad	0x4022566cf41f212d              # double 9.1687999999999992
	.quad	0x4010d6ae7d566cf4              # double 4.2096499999999999
	.quad	0x40163127b2cc7086              # double 5.5480029999999996
	.quad	0x401466cf850df15a              # double 5.1004009999999997
	.quad	0x4021c03ea704bc27              # double 8.8754779999999993
	.quad	0x3ff1dc981beb1811              # double 1.1163559999999999
	.quad	0x4000954d1e96c3fc              # double 2.0729009999999999
	.quad	0x4019341e9af5ba2c              # double 6.3008980000000001
	.quad	0x4009508f648c7193              # double 3.164336
	.quad	0x400b499f1ae2da55              # double 3.4109479999999999
	.quad	0x4011f292817763e5              # double 4.4868870000000003
	.quad	0x40192c0485a0be51              # double 6.292986
	.quad	0x3ffb33397dd00f77              # double 1.7000059999999999
	.quad	0x3ff7580c308feac4              # double 1.458996
	.quad	0x4016dd6d3b6cbd98              # double 5.7162369999999996
	.quad	0x4021d25b530ced4e              # double 8.9108529999999995
	.quad	0x4016992e62131a8f              # double 5.649591
	.quad	0x4011eb0ab2e1693c              # double 4.479533
	.quad	0x40231c0dd3fe1976              # double 9.5547930000000001
	.quad	0x401de7e175d13d75              # double 7.4764460000000001
	.quad	0x4015392b7fe08af0              # double 5.3058300000000003
	.quad	0x401fe6634117f844              # double 7.9749879999999997
	.quad	0x401f81693c03bc4d              # double 7.8763779999999998
	.quad	0x402397972474538f              # double 9.796075
	.quad	0x40214c5154866a12              # double 8.6490580000000001
	.quad	0x3ffa49a5657fb69a              # double 1.6429800000000001
	.quad	0x4015fe2867275686              # double 5.4982009999999999
	.quad	0x401b32fd75e2046c              # double 6.7997949999999996
	.quad	0x401234e9c4545847              # double 4.5516730000000001
	.quad	0x4009294ab1d4f9c2              # double 3.145162
	.quad	0x401dd12d77318fc5              # double 7.454275
	.quad	0x4013baa3f034b0e2              # double 4.9322660000000003
	.quad	0x3fef376922d948dc              # double 0.97551399999999999
	.quad	0x3fda7b890d5a5b96              # double 0.41378999999999999
	.quad	0x3ff69ce6c093d966              # double 1.413306
	.quad	0x401001c044284dfd              # double 4.0017100000000001
	.quad	0x4012d6dacabc5155              # double 4.7098190000000004
	.quad	0x40212f0cbaf965b2              # double 8.5918939999999999
	.quad	0x40226dda6a444178              # double 9.2145569999999992
	.quad	0x401c697cc39ffd61              # double 7.1030150000000001
	.quad	0x3ffac8a372606fac              # double 1.6739839999999999
	.quad	0x4002b39085f4a127              # double 2.3376779999999999
	.quad	0x3fefde74299d883c              # double 0.99590500000000004
	.quad	0x40105c1df3300de5              # double 4.0899580000000002
	.quad	0x3fe9fc6540cc78ea              # double 0.81206
	.quad	0x4013eb11409a2403              # double 4.9795579999999999
	.quad	0x4017135eb7457c0b              # double 5.7689159999999999
	.quad	0x40007cefaa4766c7              # double 2.0610040000000001
	.quad	0x3ff7a2ccb3a2595c              # double 1.4772460000000001
	.quad	0x40204a37cdcca70d              # double 8.1449569999999998
	.quad	0x4016f682f944241c              # double 5.7407339999999998
	.quad	0x401c2e49f51697f2              # double 7.045204
	.quad	0x4018c86a8fc0d2c4              # double 6.1957190000000004
	.quad	0x3ff9c0cb6c7a7c9e              # double 1.609569
	.quad	0x4006543e963dc487              # double 2.7911350000000001
	.quad	0x4012aec39799e519              # double 4.670668
	.quad	0x3fed2c4f7ec3547e              # double 0.911659
	.quad	0x3ff79464dc22ab26              # double 1.4737290000000001
	.quad	0x3fefa148ba83f4ed              # double 0.98843800000000003
	.quad	0x401378b60f1b25f6              # double 4.8678819999999998
	.quad	0x400c3c37a3db3bfb              # double 3.5294029999999998
	.quad	0x4012f100a393ee5f              # double 4.7353540000000001
	.quad	0x4003d10c2c5e2cdc              # double 2.477074
	.quad	0x4014453b0813cab8              # double 5.0676079999999999
	.quad	0x3ff95ced0b30b5aa              # double 1.5851869999999999
	.quad	0x400c4c083126e979              # double 3.5371250000000001
	.quad	0x401d65bd512ec6bd              # double 7.3493550000000001
	.quad	0x4016e5f6fd21ff2e              # double 5.7245749999999997
	.quad	0x4015c7e308787486              # double 5.4452020000000001
	.quad	0x40183e931876188b              # double 6.0611079999999999
	.quad	0x40232b2edfe75bc4              # double 9.5843419999999994
	.quad	0x40126cbd1244a622              # double 4.6061899999999998
	.quad	0x4022d37521144cbe              # double 9.4130029999999998
	.quad	0x4021c8abd5dc4007              # double 8.8919359999999994
	.quad	0x3fe41083dbc23316              # double 0.62701600000000002
	.quad	0x401fe446f9b994e2              # double 7.9729270000000003
	.quad	0x3fe10afa2f05a709              # double 0.53259000000000001
	.quad	0x4016fd0aed99cbef              # double 5.7471120000000004
	.quad	0x3fd227a63736cdf2              # double 0.28366999999999998
	.quad	0x3ff741083dbc2331              # double 1.4533769999999999
	.quad	0x40036338b47c73ef              # double 2.423448
	.quad	0x3ff148adeebb341e              # double 1.080244
	.quad	0x4015c6b4c7f34938              # double 5.4440489999999997
	.quad	0x402015fb9389b520              # double 8.0429349999999999
	.quad	0x40206426fe718a87              # double 8.1956100000000003
	.quad	0x4011257646ae3a3b              # double 4.2865840000000004
	.quad	0x400a15d9a0f0a5f0              # double 3.260669
	.quad	0x401c7120e1f7d73d              # double 7.1104770000000004
	.quad	0x4017b2617c1bda51              # double 5.9241999999999999
	.quad	0x401e55d67ba237ce              # double 7.5838260000000002
	.quad	0x3fccf0e90bc7b45f              # double 0.226102
	.quad	0x4009508cc575c076              # double 3.1643309999999998
	.quad	0x401ef94ea077036d              # double 7.7434640000000003
	.quad	0x3ff63c9795b35b0c              # double 1.3897930000000001
	.quad	0x40109d052934acb0              # double 4.15334
	.quad	0x4001b6c15d2d01c1              # double 2.2142360000000001
	.quad	0x4021c77121ab4b73              # double 8.8895350000000004
	.quad	0x3ffd723dd54da4cf              # double 1.8403910000000001
	.quad	0x40130055b8993922              # double 4.7503270000000004
	.quad	0x40093913e81450f0              # double 3.1528700000000001
	.quad	0x401db3bd5992428d              # double 7.4255269999999998
	.quad	0x3ff70aea747d805e              # double 1.4401649999999999
	.quad	0x40087640639d5e4a              # double 3.0577399999999999
	.quad	0x4008a061847f5621              # double 3.0783109999999998
	.quad	0x3ff78a0e410b630b              # double 1.4712050000000001
	.quad	0x4012491ea78af3e4              # double 4.5714059999999996
	.quad	0x401afd234eb9a177              # double 6.7472050000000001
	.quad	0x3ffb1ad106ee30cb              # double 1.6940470000000001
	.quad	0x40237f86e3b46fdf              # double 9.7490760000000005
	.quad	0x401bfd0edc3bd599              # double 6.9971269999999999
	.quad	0x401e7b79d909f1f1              # double 7.6205819999999997
	.quad	0x3ffbdc8fb86f47b6              # double 1.7413479999999999
	.quad	0x4015d90eed02cd3a              # double 5.4619710000000001
	.quad	0x4007687b99d451fc              # double 2.9260169999999999
	.quad	0x401f4ccee5abc0e4              # double 7.8250080000000004
	.quad	0x40238c97b7414a4d              # double 9.7745949999999997
	.quad	0x4020afa48301a7a0              # double 8.3430520000000001
	.quad	0x4002de2a3cea6c1a              # double 2.358479
	.quad	0x4023abd1244a6224              # double 9.8355800000000002
	.quad	0x400d06ff7dfa00e2              # double 3.6284169999999998
	.quad	0x3fe75c8754f3775c              # double 0.73004500000000005
	.quad	0x4023a391f70de8f7              # double 9.8194730000000003
	.quad	0x4015d0852b4d8ba4              # double 5.453633
	.quad	0x4006d487fcb923a3              # double 2.8537750000000002
	.quad	0x3fdbb25f633ce63a              # double 0.43276199999999998
	.quad	0x4000f465625a682b              # double 2.1193339999999998
	.quad	0x4010ed1bf7ad4b27              # double 4.2315519999999998
	.quad	0x40225f3860999dcb              # double 9.1859769999999994
	.quad	0x401335781c714fce              # double 4.8022159999999996
	.quad	0x402207893faf4278              # double 9.0147189999999995
	.quad	0x4021bfb97bb73083              # double 8.8744619999999994
	.quad	0x40119a569b17481b              # double 4.4007209999999999
	.quad	0x40070a4873365882              # double 2.8800210000000002
	.quad	0x4012b5bfad299956              # double 4.6774889999999996
	.quad	0x402221b5c7cd898b              # double 9.0658399999999997
	.quad	0x401900bfa0945f9e              # double 6.250731
	.quad	0x4000aa055757d5aa              # double 2.083018
	.quad	0x3ff6c060780fdc16              # double 1.421967
	.quad	0x4022f279dd3bafd9              # double 9.4735859999999991
	.quad	0x4019c688bda9435b              # double 6.4438810000000002
	.quad	0x4006d2e83a109d06              # double 2.8529819999999999
	.quad	0x4000e9129888f862              # double 2.1138050000000002
	.quad	0x4022a0a1be2b495a              # double 9.3137340000000002
	.quad	0x3feeca9cdc443915              # double 0.962233
	.quad	0x4011fd73860999dd              # double 4.4975110000000003
	.quad	0x4019a17225b749ae              # double 6.4076620000000002
	.quad	0x401c6b9bed30f063              # double 7.1050870000000002
	.quad	0x402329843c3a42f2              # double 9.5810870000000001
	.quad	0x4021fa9d627bf61b              # double 8.9894820000000006
	.quad	0x4011027b6fe2e6eb              # double 4.2524240000000004
	.quad	0x401250be9424e593              # double 4.5788520000000004
	.quad	0x401e9f1455219a84              # double 7.6553509999999996
	.quad	0x402380e219652bd4              # double 9.7517250000000004
	.quad	0x400c913f8db48909              # double 3.5709219999999999
	.quad	0x40105b91f70de8f7              # double 4.0894240000000002
	.quad	0x400699bfdf7e8039              # double 2.8250730000000002
	.quad	0x401a866f5019f3c7              # double 6.631284
	.quad	0x40178d855970b49e              # double 5.888204
	.quad	0x3fde70cdc8754f37              # double 0.47563499999999997
	.quad	0x3fe977a4e7ab7564              # double 0.79585499999999997
	.quad	0x4019fbb0a2ca9ac3              # double 6.4957909999999996
	.quad	0x4011b264e48626f6              # double 4.424213
	.quad	0x3ff5a1d53cddd6e0              # double 1.3520099999999999
	.quad	0x401fc33d6c721922              # double 7.9406639999999999
	.quad	0x401ec27bf61aa3f0              # double 7.6899259999999998
	.quad	0x401dc7ccc0379314              # double 7.4451169999999998
	.quad	0x3ffc84d338f79852              # double 1.7824279999999999
	.quad	0x4007adeca25529fe              # double 2.959924
	.quad	0x4013bb36bd2b6f1a              # double 4.9328260000000004
	.quad	0x4013c2dc2b0ea183              # double 4.9402929999999996
	.quad	0x3ff0cf52b90a7829              # double 1.050616
	.quad	0x40230a4228997c3d              # double 9.5200359999999992
	.quad	0x400b8102795703f3              # double 3.4379930000000001
	.quad	0x4000c178705425f2              # double 2.094468
	.quad	0x4013387160956c0d              # double 4.8051199999999996
	.quad	0x400e4efed634549b              # double 3.7885719999999998
	.quad	0x402121554fbdad75              # double 8.5651039999999998
	.quad	0x4016b4af922962d0              # double 5.6764510000000001
	.quad	0x4008e00a7c5ac472              # double 3.1093950000000001
	.quad	0x4010e6a619da9c99              # double 4.2252429999999999
	.quad	0x4015f8aac96cc5fc              # double 5.492839
	.quad	0x4000d69a91105e1c              # double 2.104787
	.quad	0x4001a3d68405b39e              # double 2.2049989999999999
	.quad	0x40110cb46bacf744              # double 4.2624069999999996
	.quad	0x400db7824d4cb9ed              # double 3.714604
	.quad	0x400c5e586013660e              # double 3.5460669999999999
	.quad	0x40166cfd4bf0995b              # double 5.6064350000000003
	.quad	0x4012fe2089e34331              # double 4.7481710000000001
	.quad	0x401694873365881a              # double 5.6450469999999999
	.quad	0x401ecf2d3c792d13              # double 7.7023210000000004
	.quad	0x400d3af965b20b80              # double 3.6537959999999998
	.quad	0x4022fd579af1886e              # double 9.4948090000000001
	.quad	0x40096864883fd502              # double 3.1759729999999999
	.quad	0x3ffd6d77318fc505              # double 1.8392250000000001
	.quad	0x401f43f1843c3a43              # double 7.816351
	.quad	0x400c913836a832ba              # double 3.5709080000000002
	.quad	0x3fd977fae3608d09              # double 0.39794800000000002
	.quad	0x401303b645a1cac1              # double 4.7536250000000004
	.quad	0x4015aa53b8e4b87c              # double 5.4163350000000001
	.quad	0x40205e39d5e4a383              # double 8.1840349999999997
	.quad	0x401795d4a5df223a              # double 5.8963190000000001
	.quad	0x401af32d6ece13f5              # double 6.7374780000000003
	.quad	0x4004ea5614df8b15              # double 2.6144219999999998
	.quad	0x3fff214488c60cbf              # double 1.945622
	.quad	0x40217d4fbdad7519              # double 8.7447490000000005
	.quad	0x3ff8563fdd65a145              # double 1.5210570000000001
	.quad	0x400d5be5d9e40c84              # double 3.6698719999999998
	.quad	0x4006c9802c0a4a06              # double 2.8483890000000001
	.quad	0x40162cee9dd7ecbb              # double 5.5438789999999996
	.quad	0x3fb44bd33d29563b              # double 0.079282000000000005
	.quad	0x400318305d95dd4c              # double 2.3868109999999998
	.quad	0x402101aa1d755bcd              # double 8.5032510000000006
	.quad	0x4015a5d9a0f0a5f0              # double 5.4119630000000001
	.quad	0x401658b75ea67e84              # double 5.5866369999999996
	.quad	0x4022f9af7d30ad47              # double 9.487667
	.quad	0x4023a1717df19d67              # double 9.8153190000000005
	.quad	0x4013fbb1f255f352              # double 4.9957960000000003
	.quad	0x400d69613d31b9b6              # double 3.6764549999999998
	.quad	0x3fc386e3b46fdeb5              # double 0.152554
	.quad	0x4012ba59c065b63d              # double 4.6819829999999998
	.quad	0x3fd5e30014f8b589              # double 0.34198000000000001
	.quad	0x40234d29131ec0b5              # double 9.6507039999999992
	.quad	0x401e896cc5fbf834              # double 7.6342040000000004
	.quad	0x3fd40ecb74ddf86e              # double 0.31340299999999999
	.quad	0x402215362e903644              # double 9.0414290000000008
	.quad	0x3fdef8e3ac0c62e5              # double 0.48394100000000001
	.quad	0x401e6d05f2884838              # double 7.6064679999999995
	.quad	0x3ff984449dbec248              # double 1.594792
	.quad	0x3ffbb0d0edc3bd5a              # double 1.7306680000000001
	.quad	0x400d620ab7132724              # double 3.6728719999999999
	.quad	0x3fe0340b34e7685a              # double 0.50635300000000005
	.quad	0x4005a3eaf6837f7c              # double 2.7050380000000001
	.quad	0x3ff4751bd61f5be6              # double 1.278591
	.quad	0x401fd0fc2eba27af              # double 7.9540870000000003
	.quad	0x3fe5c03361565c2d              # double 0.67971199999999998
	.quad	0x401e07fd3f5b5fa2              # double 7.5078019999999999
	.quad	0x3ffde6d2674080fa              # double 1.8688530000000001
	.quad	0x40211019b0ab2e17              # double 8.5314460000000008
	.quad	0x401ae0d4562e09ff              # double 6.7195600000000004
	.quad	0x401a27503b81b64e              # double 6.538392
	.quad	0x401088d045fe1112              # double 4.1336069999999996
	.quad	0x40128be878fabda1              # double 4.6366290000000001
	.quad	0x4020974256bca537              # double 8.2954279999999994
	.quad	0x3fdde1e2de870974              # double 0.46691199999999999
	.quad	0x4005ca0232096788              # double 2.7236370000000001
	.quad	0x40165ff865d7cb2e              # double 5.5937210000000004
	.quad	0x401901e71044f1a2              # double 6.2518580000000004
	.quad	0x40231201040bfe3b              # double 9.5351639999999999
	.quad	0x4006c87fcb923a2a              # double 2.8479000000000001
	.quad	0x40104a7b0b391926              # double 4.0727349999999998
	.quad	0x3fc1d1244a6223e2              # double 0.13919500000000001
	.quad	0x400526e6d9be4cd7              # double 2.6439949999999999
	.quad	0x3ff64ea4a8c154ca              # double 1.3942000000000001
	.quad	0x3ff6cc9752977c89              # double 1.424949
	.quad	0x402318079a2834d2              # double 9.5469329999999992
	.quad	0x401a2d29131ec0b5              # double 6.5441019999999996
	.quad	0x400564e69f05ea25              # double 2.6742680000000001
	.quad	0x400e34b61fe21d97              # double 3.775738
	.quad	0x40226f13f077ccc0              # double 9.2169489999999996
	.quad	0x4019bb7c7820a30e              # double 6.4330920000000003
	.quad	0x401ee66a98244e94              # double 7.7250160000000001
	.quad	0x4016b070329802c1              # double 5.6723030000000003
	.quad	0x3ff14bd017dae819              # double 1.0810090000000001
	.quad	0x400576f32bdc26dd              # double 2.683081
	.quad	0x4019d3c64345cfee              # double 6.4568110000000001
	.quad	0x3ff08856e696a26e              # double 1.0332859999999999
	.quad	0x40197f141205bc02              # double 6.3741000000000003
	.quad	0x3fc79591cd1c7de5              # double 0.184252
	.quad	0x400d9ed17c5ef630              # double 3.7025480000000002
	.quad	0x401b45f8d2e514c2              # double 6.8183319999999998
	.quad	0x3ff0644b6e935b92              # double 1.024486
	.quad	0x40143984a0e410b6              # double 5.0561699999999998
	.quad	0x3ff7fa615a8deb10              # double 1.4986280000000001
	.quad	0x3fe2aecf20642396              # double 0.583839
	.quad	0x4015c96f6512a950              # double 5.4467140000000001
	.quad	0x40055949e8815e39              # double 2.6685979999999998
	.quad	0x40205c37a3db3bfb              # double 8.1801119999999994
	.quad	0x401161711947cfa2              # double 4.3451579999999996
	.quad	0x401adf0e90bc7b46              # double 6.7178290000000001
	.quad	0x3fdaf1a1986b9c30              # double 0.42099799999999998
	.quad	0x40208d2ed783dff4              # double 8.2757480000000001
	.quad	0x3fcd8d8a979e16d7              # double 0.230882
	.quad	0x402397abda0dfdf0              # double 9.7962330000000009
	.quad	0x401afa18bd66277c              # double 6.7442349999999998
	.quad	0x3fe416440f238972              # double 0.627718
	.quad	0x401193ef284167a9              # double 4.3944669999999997
	.quad	0x3fcd08bb906466b2              # double 0.226829
	.quad	0x40114892253111f1              # double 4.3208700000000002
	.quad	0x40233a93293d102c              # double 9.6144040000000003
	.quad	0x3ffc058bc59b8024              # double 1.7513540000000001
	.quad	0x3fd1a69be09bb6aa              # double 0.27579399999999998
	.quad	0x401bc14db59578a3              # double 6.9387730000000003
	.quad	0x400e74373f316e37              # double 3.806746
	.quad	0x400cc5ca29845dc8              # double 3.5965769999999999
	.quad	0x400eb3e0bd44998d              # double 3.837831
	.quad	0x400bc3a322af5771              # double 3.470526
	.quad	0x401efa9973d9ec70              # double 7.744726
	.quad	0x4023e5dcc63f1412              # double 9.94895
	.quad	0x4022476145953587              # double 9.1394140000000004
	.quad	0x3fdb33a0407cc7d2              # double 0.42502600000000001
	.quad	0x400400064a9cdc44              # double 2.5000119999999999
	.quad	0x400d34cfd08d4bad              # double 3.6507869999999998
	.quad	0x400a47863beec398              # double 3.2849240000000002
	.quad	0x4009b7c6fbd273d6              # double 3.2147350000000001
	.quad	0x401c598d045fe111              # double 7.0874519999999999
	.quad	0x3ffaa1b4bb5e0f80              # double 1.664479
	.quad	0x401ac5360d024702              # double 6.6925889999999999
	.quad	0x4014db07d0aed99d              # double 5.2138970000000002
	.quad	0x400ace12e83a109d              # double 3.350622
	.quad	0x40139ce4649906cd              # double 4.9032150000000003
	.quad	0x3ff0134699418506              # double 1.0047060000000001
	.quad	0x4008241a261bf37c              # double 3.0176280000000002
	.quad	0x3fa957689ca18bd6              # double 0.049494999999999997
	.quad	0x4009350a02b84125              # double 3.1508980000000002
	.quad	0x401165935fc3b4f6              # double 4.3491949999999999
	.quad	0x400cb6a400fba882              # double 3.5891799999999998
	.quad	0x4023c643cc07aaef              # double 9.8872359999999996
	.quad	0x40186b0dd82fd75e              # double 6.1045449999999999
	.quad	0x4008f5bd512ec6bd              # double 3.11999
	.quad	0x4020dccd31769a91              # double 8.4312529999999999
	.quad	0x4005dd00f776c482              # double 2.7329119999999998
	.quad	0x40221d31550ca1cf              # double 9.0570170000000001
	.quad	0x4022d0ecd8dbcec8              # double 9.4080569999999994
	.quad	0x4016b23c85c24c40              # double 5.6740589999999997
	.quad	0x4023dc95182a9931              # double 9.9308250000000004
	.quad	0x4023ea491afc04c9              # double 9.9575890000000004
	.quad	0x401d7e1e71044f1a              # double 7.3731629999999999
	.quad	0x401559e3864cb5bb              # double 5.3377819999999998
	.quad	0x3ff63a0945f9df55              # double 1.3891690000000001
	.quad	0x40214b12d3415b14              # double 8.6466279999999997
	.quad	0x4021407789a45910              # double 8.6259119999999996
	.quad	0x3ff3b9ee02a77a2d              # double 1.232893
	.quad	0x4020b4105186db51              # double 8.3516870000000001
	.quad	0x400aa7253da72a7c              # double 3.3316140000000001
	.quad	0x4006801e68a0d34a              # double 2.8125580000000001
	.quad	0x4021150b524399b3              # double 8.5411020000000004
	.quad	0x4001e87b139c94f7              # double 2.2385160000000002
	.quad	0x400fe67f0aa21a72              # double 3.9875470000000002
	.quad	0x40210e043a2163fe              # double 8.5273760000000003
	.quad	0x4022e021af7d30ad              # double 9.4377569999999995
	.quad	0x4015dcbb7f9d6f11              # double 5.4655589999999998
	.quad	0x401ab574b407032a              # double 6.6772030000000004
	.quad	0x401a8b2e1693c03c              # double 6.6359180000000002
	.quad	0x401ce686a4ca4f44              # double 7.225123
	.quad	0x4001f2c94b380cb7              # double 2.2435480000000001
	.quad	0x402029d6cf850df1              # double 8.0817169999999994
	.quad	0x401fae5710880d80              # double 7.9202539999999999
	.quad	0x3ff40b4070329803              # double 1.2527470000000001
	.quad	0x401a025aee631f8a              # double 6.5023
	.quad	0x3ff3f558a7610279              # double 1.2473989999999999
	.quad	0x3ff45d31337eb28e              # double 1.2727520000000001
	.quad	0x402350c9107faa04              # double 9.6577839999999994
	.quad	0x40143c6a7ef9db23              # double 5.0590000000000002
	.quad	0x4019f36ac647778e              # double 6.4877120000000001
	.quad	0x4021bb352a843809              # double 8.8656400000000009
	.quad	0x3ff0eac322291fb4              # double 1.057315
	.quad	0x4020053dea465a57              # double 8.0102379999999993
	.quad	0x401c7f20a73f748a              # double 7.1241479999999999
	.quad	0x4019fd73c9257860              # double 6.4975120000000004
	.quad	0x40225da87a072d1b              # double 9.1829260000000001
	.quad	0x402342e7f6f4be83              # double 9.6306759999999993
	.quad	0x400329f1f14983d8              # double 2.3954810000000002
	.quad	0x3ffd999dcb5781c7              # double 1.850004
	.quad	0x4013d253da72a7bd              # double 4.9553979999999997
	.quad	0x4023824d099e0e73              # double 9.7544939999999993
	.quad	0x4023747778dd6170              # double 9.7274740000000008
	.quad	0x3ff0adafd113836b              # double 1.0424040000000001
	.quad	0x401acffc115df655              # double 6.7031099999999997
	.quad	0x401df45e4e69f05f              # double 7.4886410000000003
	.quad	0x400c36323bbc6eb1              # double 3.5264630000000001
	.quad	0x4006a27d028a1dfc              # double 2.8293400000000002
	.quad	0x40154306a2b17050              # double 5.315455
	.quad	0x4019f1ec0b567558              # double 6.4862520000000004
	.quad	0x3fe1f20642396074              # double 0.56079400000000001
	.quad	0x3ff7612e83a109d0              # double 1.4612259999999999
	.quad	0x4020bf8f68be2f7b              # double 8.3741409999999998
	.quad	0x3fbc7d805e5f30e8              # double 0.11129
	.quad	0x400841be2b4959e6              # double 3.0321009999999999
	.quad	0x4014cf6b5d462c34              # double 5.2025579999999998
	.quad	0x401f4e7ddca4b125              # double 7.8266520000000001
	.quad	0x3f87baecd07852f8              # double 0.011587
	.quad	0x402398fa9c12f09e              # double 9.7987870000000008
	.quad	0x4013f7cd898b2e9d              # double 4.9919950000000002
	.quad	0x3ffc17bfa4c61d86              # double 1.755798
	.quad	0x400d17ec3547e069              # double 3.6366809999999998
	.quad	0x40226b1db445ed4a              # double 9.2092109999999998
	.quad	0x401020e0a84be404              # double 4.0321069999999999
	.quad	0x40049d1aa821f299              # double 2.576711
	.quad	0x4023fd71b0468449              # double 9.9950080000000003
	.quad	0x4016ac9c0a8d21bc              # double 5.6685639999999999
	.quad	0x401a24d44567125e              # double 6.5359660000000002
	.quad	0x401c9bfdf7e8038a              # double 7.152336
	.quad	0x4016cc76d117b528              # double 5.6996719999999996
	.quad	0x40196ee6fb4c3c19              # double 6.3583030000000003
	.quad	0x401d68d5c74751ce              # double 7.3523779999999999
	.quad	0x4011b890d5a5b963              # double 4.4302400000000004
	.quad	0x3feb00e065300581              # double 0.84385699999999997
	.quad	0x40231572367e414e              # double 9.5418869999999991
	.quad	0x3fd32bfdb4cc2507              # double 0.29955999999999999
	.quad	0x3fe7d08919ef954f              # double 0.74420600000000003
	.quad	0x401518a3b57c4e2f              # double 5.2740619999999998
	.quad	0x4014df3387160957              # double 5.2179700000000002
	.quad	0x40000835dedf1e08              # double 2.0040089999999999
	.quad	0x3fe5a82a5614df8b              # double 0.67677799999999999
	.quad	0x401bb7924af0bf1a              # double 6.9292689999999997
	.quad	0x401d74edb2f661f2              # double 7.3641880000000004
	.quad	0x400c169fcf3dc055              # double 3.511047
	.quad	0x3fe406f47b677f6b              # double 0.62584899999999999
	.quad	0x401345bc44bf4cb2              # double 4.8181010000000004
	.quad	0x3fd2ac258d5842b7              # double 0.29175699999999999
	.quad	0x400563ba3443d46b              # double 2.6736949999999999
	.quad	0x4019b9f1ae2da555              # double 6.4315860000000002
	.quad	0x400059c8c9320d99              # double 2.0438399999999999
	.quad	0x402353543aeab799              # double 9.6627519999999993
	.quad	0x4008235e74299d88              # double 3.0172699999999999
	.quad	0x401de5147f130596              # double 7.4737109999999998
	.quad	0x40119985f06f6944              # double 4.3999249999999996
	.quad	0x3ff6167a95c853c1              # double 1.3804879999999999
	.quad	0x401ae0daa0cae643              # double 6.7195840000000002
	.quad	0x4020f77a919695d9              # double 8.4833569999999998
	.quad	0x4022444028e4fb98              # double 9.1333020000000005
	.quad	0x402254450268900c              # double 9.1645889999999994
	.quad	0x4018b50d6b228dca              # double 6.1768090000000004
	.quad	0x400fdf05ea24cc68              # double 3.9838979999999999
	.quad	0x3fed03a7546d3f9e              # double 0.90669599999999995
	.quad	0x4019fc93a7115161              # double 6.4966569999999999
	.quad	0x4020d6b56fb8f57f              # double 8.4193529999999992
	.quad	0x402144306e5cd4ed              # double 8.6331819999999997
	.quad	0x3ff3c0c8472c0e7c              # double 1.2345660000000001
	.quad	0x4018d9f87f023e9f              # double 6.2128620000000003
	.quad	0x4008d82ba5a03819              # double 3.1055519999999999
	.quad	0x400e37939a7c17a9              # double 3.7771370000000002
	.quad	0x4016ab3f63c31df7              # double 5.6672339999999997
	.quad	0x40147a087ca643cc              # double 5.119173
	.quad	0x3fdd41bb8c32a8ca              # double 0.45713700000000002
	.quad	0x40237a47ecfe9b7c              # double 9.73883
	.quad	0x401726a98244e93e              # double 5.7877559999999999
	.quad	0x3fe1443b2dd377e2              # double 0.53957900000000003
	.quad	0x400bfb0c4588a04d              # double 3.497582
	.quad	0x40220a5e99e94ab2              # double 9.0202530000000003
	.quad	0x4011dd6494d50ebb              # double 4.4662040000000003
	.quad	0x4020e4e3369b9d80              # double 8.4470460000000003
	.quad	0x4006eaf0bf1a5ca3              # double 2.8647170000000002
	.quad	0x40176e675147f130              # double 5.8578159999999997
	.quad	0x40051269595feda6              # double 2.6339899999999998
	.quad	0x4002f2e946801712              # double 2.3686090000000002
	.quad	0x40191e58a32f4491              # double 6.2796349999999999
	.quad	0x3ff4ff2f55582129              # double 1.3123009999999999
	.quad	0x4023980f98fa3769              # double 9.7969939999999997
	.quad	0x4020d757f737da62              # double 8.4205930000000002
	.quad	0x401051aeb3dd11be              # double 4.0797679999999996
	.quad	0x40152ba8c586876e              # double 5.2926359999999999
	.quad	0x401b86523704790c              # double 6.8811730000000004
	.quad	0x400b425f202107b8              # double 3.4074080000000002
	.quad	0x401c97318fc50481              # double 7.1476499999999996
	.quad	0x401679285a921cce              # double 5.6183180000000004
	.quad	0x401a45ad106ee30d              # double 6.5680430000000003
	.quad	0x4021f99695d91ab9              # double 8.9874770000000002
	.quad	0x401d37f737da61e1              # double 7.3046540000000002
	.quad	0x401dac6045baf534              # double 7.418336
	.quad	0x401d674c4cdfaca3              # double 7.3508769999999997
	.quad	0x401069a8049667b6              # double 4.10318
	.quad	0x40149d6451b93038              # double 5.1537030000000001
	.quad	0x400545564b662fe0              # double 2.6588560000000001
	.quad	0x4009d7e670e2c12b              # double 3.2304200000000001
	.quad	0x402126ed8904f6e0              # double 8.5760310000000004
	.quad	0x4007f185cee17a03              # double 2.992931
	.quad	0x3ff214185058dde8              # double 1.1299060000000001
	.quad	0x40167e17a02fb5d0              # double 5.6231369999999998
	.quad	0x402125c8754f3776              # double 8.5737950000000005
	.quad	0x40020fe154434e33              # double 2.2577539999999998
	.quad	0x400084e831ad2136              # double 2.0648960000000001
	.quad	0x3ffd0d466f5019f4              # double 1.815741
	.quad	0x4016a034f3fd933e              # double 5.6564519999999998
	.quad	0x40212e1672324c83              # double 8.5900149999999993
	.quad	0x4023c85553ef6b5d              # double 9.8912759999999995
	.quad	0x401ee37bd05af6c7              # double 7.7221520000000003
	.quad	0x40140b4f61672325              # double 5.0110450000000002
	.quad	0x40190c7cd898b2ea              # double 6.2621950000000002
	.quad	0x401dbc1ce6c093d9              # double 7.4337039999999996
	.quad	0x4015c53c148344c3              # double 5.4426119999999996
	.quad	0x3ff50d25edd05293              # double 1.3157099999999999
	.quad	0x400eefc829cfdd23              # double 3.8670810000000002
	.quad	0x40212e5321e603d5              # double 8.5904779999999992
	.quad	0x40192a93293d102c              # double 6.2915770000000002
	.quad	0x401da296f6512a95              # double 7.408779
	.quad	0x400bae874c8ffb8b              # double 3.4602189999999999
	.quad	0x40122ffe6d58c8ef              # double 4.546869
	.quad	0x402018e1719f7f8d              # double 8.0485950000000006
	.quad	0x401af64a59c065b6              # double 6.7405179999999998
	.quad	0x40171bbf50e34763              # double 5.7770970000000004
	.quad	0x3ff6a2e7f6f4be83              # double 1.4147719999999999
	.quad	0x4021d2a582dbe7f3              # double 8.9114190000000004
	.quad	0x402347df7e8038a0              # double 9.6403770000000009
	.quad	0x4007b04ee7c49fd8              # double 2.9610880000000002
	.quad	0x3f5676640a6b93cd              # double 0.001371
	.quad	0x401063d9a95421c0              # double 4.0975099999999998
	.quad	0x4009e6aca7935760              # double 3.2376339999999999
	.quad	0x4016a605ab3aabcd              # double 5.6621309999999996
	.quad	0x40192e581cf7878b              # double 6.2952579999999996
	.quad	0x400427fcb923a29c              # double 2.5195249999999998
	.quad	0x4013ac5bd0e12e84              # double 4.9183190000000003
	.quad	0x40209922b7baecd0              # double 8.2990929999999992
	.quad	0x40134d7be9856a38              # double 4.8256680000000003
	.quad	0x3fc69057d1782d38              # double 0.17627999999999999
	.quad	0x3fbe3b14a90470a8              # double 0.118089
	.quad	0x3ff74f2e05ccc89b              # double 1.456831
	.quad	0x3ff2e3b03e20ccff              # double 1.180588
	.quad	0x4012e89ce4a7b4e5              # double 4.7271609999999997
	.quad	0x40001fca85caafbc              # double 2.015523
	.quad	0x4006a9fe004b7f5a              # double 2.8330039999999999
	.quad	0x401cd852f7f498c4              # double 7.2112540000000003
	.quad	0x400b61ffb480a5ad              # double 3.4228510000000001
	.quad	0x4015fb40b34e7686              # double 5.4953640000000004
	.quad	0x4003f5b1422ccb3a              # double 2.4949669999999999
	.quad	0x401546145953586d              # double 5.3184370000000003
	.quad	0x401d3e3f359ff4fd              # double 7.3107879999999996
	.quad	0x401e7a2c2374794f              # double 7.6193090000000003
	.quad	0x401304ff865d7cb3              # double 4.7548810000000001
	.quad	0x4009ec8de2ac3223              # double 3.2405050000000002
	.quad	0x401c8e2de8709742              # double 7.1388470000000002
	.quad	0x401180242d05f288              # double 4.3751379999999997
	.quad	0x402110ac5c13fd0d              # double 8.532565
	.quad	0x4010befd86a8fc0d              # double 4.1865139999999998
	.quad	0x4001555ef1fddebe              # double 2.1666850000000002
	.quad	0x3fea0ed80a17b0f7              # double 0.81431200000000004
	.quad	0x401d53dea465a576              # double 7.3319039999999998
	.quad	0x401dbd1a65061416              # double 7.4346709999999998
	.quad	0x3fc46e221c8a7a42              # double 0.159611
	.quad	0x4020aaac322291fb              # double 8.3333449999999996
	.quad	0x4013507bbb62413e              # double 4.8285970000000002
	.quad	0x401d66cb966be7b0              # double 7.3503860000000003
	.quad	0x401d6e1c9b413986              # double 7.3575309999999998
	.quad	0x400593e24febd09e              # double 2.697209
	.quad	0x400e2a6c1a048e04              # double 3.7707139999999999
	.quad	0x4009a4c8366516db              # double 3.20546
	.quad	0x3fe1323dd54da4cf              # double 0.53738300000000006
	.quad	0x4016a1847f562175              # double 5.6577320000000002
	.quad	0x3ff604dec1c1d6d0              # double 1.3761890000000001
	.quad	0x4020fc6b69db65ed              # double 8.4930070000000004
	.quad	0x40113b0bbf50e347              # double 4.3076619999999997
	.quad	0x401feb068123810f              # double 7.9795170000000004
	.quad	0x4020e9f77292c493              # double 8.4569659999999995
	.quad	0x3ff5f6c7a7c9de05              # double 1.372749
	.quad	0x3fd875afaf859429              # double 0.38218299999999999
	.quad	0x4018112d77318fc5              # double 6.016775
	.quad	0x40144c5974e65bea              # double 5.07456
	.quad	0x400c478a6dacabc5              # double 3.534932
	.quad	0x40226dabe27179c0              # double 9.2142020000000002
	.quad	0x3fd927aa68f4b620              # double 0.39304600000000001
	.quad	0x3fe0a595bbbe8790              # double 0.52021300000000004
	.quad	0x40107a2ad3e920c0              # double 4.1193039999999996
	.quad	0x4020babb6672fba0              # double 8.3647109999999998
	.quad	0x4021ed49b62c7757              # double 8.9634529999999994
	.quad	0x400c5b328b6d86ec              # double 3.54453
	.quad	0x400ea2b1f687b13a              # double 3.8294410000000001
	.quad	0x401af28a1dfb938a              # double 6.7368550000000003
	.quad	0x3fd33c68661ae70c              # double 0.300562
	.quad	0x3ffcb136a400fba9              # double 1.7932650000000001
	.quad	0x4011a4eb13dfb0d5              # double 4.4110529999999999
	.quad	0x400ce3ed959a3098              # double 3.6112929999999999
	.quad	0x3fc2b6f19934efcc              # double 0.146208
	.quad	0x4021f0b8066c2acc              # double 8.9701540000000008
	.quad	0x400a275579af1887              # double 3.2692060000000001
	.quad	0x3ffd7986338b47c7              # double 1.8421689999999999
	.quad	0x401279e6eeb70260              # double 4.6190449999999998
	.quad	0x400e1bd3804534bd              # double 3.7635869999999998
	.quad	0x401ee7778dd616f8              # double 7.7260419999999996
	.quad	0x3ff53aafff36ac64              # double 1.3268279999999999
	.quad	0x3ff87d61f5be5d9e              # double 1.5306109999999999
	.quad	0x3fbe321a2e7f6f4c              # double 0.117952
	.quad	0x4021be85985ad539              # double 8.8721130000000006
	.quad	0x4017eef177a7008a              # double 5.9833429999999996
	.quad	0x4022b07e175d13d7              # double 9.3447119999999995
	.quad	0x401256c764adff82              # double 4.5847449999999998
	.quad	0x402259cfdd228566              # double 9.175414
	.quad	0x400aebdba0a52696              # double 3.3651650000000002
	.quad	0x401ea6601bc98a22              # double 7.6624759999999998
	.quad	0x3fd42556d19dece5              # double 0.31477899999999998
	.quad	0x3ffefb8e4b87bdcf              # double 1.936415
	.quad	0x40106c1094a2b9d4              # double 4.1055320000000002
	.quad	0x400d6a94ff0025c0              # double 3.6770420000000001
	.quad	0x3fff497204295a6c              # double 1.9554309999999999
	.quad	0x4023d4ee9dd7ecbb              # double 9.9158829999999991
	.quad	0x401f96c43f5f9160              # double 7.8972329999999999
	.quad	0x40238402d16b97ff              # double 9.7578340000000007
	.quad	0x4019c5db76b3bb84              # double 6.4432200000000002
	.quad	0x4012eb3354c12275              # double 4.7296880000000003
	.quad	0x4020a20407cc7d1c              # double 8.3164370000000005
	.quad	0x401947079e59f2bb              # double 6.3193650000000003
	.quad	0x3ff963d816aceaaf              # double 1.586876
	.quad	0x40214d017dae8188              # double 8.6504019999999997
	.quad	0x40122087442c7fbb              # double 4.5317660000000002
	.quad	0x40225af1886df82b              # double 9.1776239999999998
	.quad	0x4009ffc2224edf61              # double 3.2498819999999999
	.quad	0x400346e221c8a7a4              # double 2.4096109999999999
	.quad	0x4020500ecfa69be1              # double 8.1563630000000007
	.quad	0x401d857d5a9eb207              # double 7.3803609999999997
	.quad	0x3ff112c061847f56              # double 1.067078
	.quad	0x40092a2b1704ff43              # double 3.1455899999999999
	.quad	0x4020ecb252ce032e              # double 8.4622980000000005
	.quad	0x40238dec5f394b7b              # double 9.7771939999999997
	.quad	0x40191394317acc4f              # double 6.26912
	.quad	0x400cf24e160d887f              # double 3.6183130000000001
	.quad	0x40183d0e56041893              # double 6.0596249999999996
	.quad	0x40219b93037d6302              # double 8.8038559999999997
	.quad	0x4017369ad42c3c9f              # double 5.8033250000000001
	.quad	0x3fd021c8a7a41e58              # double 0.25206200000000001
	.quad	0x401840ef1348b220              # double 6.0634119999999996
	.quad	0x4015cc6de76427c8              # double 5.4496380000000002
	.quad	0x401183db3bfb58d1              # double 4.3787659999999997
	.quad	0x40178aa8650e7792              # double 5.885408
	.quad	0x4000929e4d5d80e5              # double 2.0715910000000002
	.quad	0x4007af8bdec5f395              # double 2.9607160000000001
	.quad	0x4017e8f7985271bd              # double 5.9775070000000001
	.quad	0x4018f9118c197e56              # double 6.2432309999999998
	.quad	0x400785692b3cc4ac              # double 2.9401419999999998
	.quad	0x4017d55f78359bc3              # double 5.9583719999999998
	.quad	0x3fd461c79b34a44c              # double 0.31846799999999997
	.quad	0x400e65f633ce63a6              # double 3.7997860000000001
	.quad	0x3ff62f533f42352f              # double 1.3865540000000001
	.quad	0x40237c55a7d24181              # double 9.7428410000000003
	.quad	0x4017aab9b23dd54e              # double 5.9167240000000003
	.quad	0x4005484b5dcc63f1              # double 2.6602999999999999
	.quad	0x40158612c6ac215c              # double 5.3809310000000004
	.quad	0x3fe645b8dc55000d              # double 0.69601100000000005
	.quad	0x401c674a3400b88d              # double 7.1008690000000003
	.quad	0x400d7caafbc1acde              # double 3.685873
	.quad	0x3fe6f34f82f51266              # double 0.71720099999999998
	.quad	0x40069410f94c8798              # double 2.822298
	.quad	0x400ef157abb8800f              # double 3.8678430000000001
	.quad	0x3ff3d1212513b5bf              # double 1.2385569999999999
	.quad	0x3ff7f5b70691ea79              # double 1.4974890000000001
	.quad	0x4020c8cf7caa758a              # double 8.3922080000000001
	.quad	0x4022274be835dedf              # double 9.0767509999999998
	.quad	0x4021077e5eaab042              # double 8.5146359999999994
	.quad	0x400af9578a2a90cd              # double 3.3717489999999999
	.quad	0x4013b042528ae74f              # double 4.9221279999999998
	.quad	0x3fd8d0aaa7ded6bb              # double 0.38773600000000003
	.quad	0x4020ebe5753a3ec0              # double 8.4607349999999997
	.quad	0x4022646a1a500d5f              # double 9.1961220000000008
	.quad	0x402168218def416c              # double 8.7033810000000002
	.quad	0x40226b4e11dbca97              # double 9.2095800000000008
	.quad	0x400b59c304ccee5b              # double 3.4188290000000001
	.quad	0x40207aef6f8f0414              # double 8.2401079999999993
	.quad	0x401f06223e186983              # double 7.7559899999999997
	.quad	0x3fffcc660a201472              # double 1.9874019999999999
	.quad	0x4021b818e757928e              # double 8.8595649999999999
	.quad	0x40060e8427418d69              # double 2.757088
	.quad	0x4023aa541d8e8640              # double 9.8326729999999997
	.quad	0x3fcde0f7fcfc3f81              # double 0.233428
	.quad	0x4007f6427c7c5261              # double 2.995244
	.quad	0x4005c1eff9f87f02              # double 2.7196959999999999
	.quad	0x4021c6a465a57647              # double 8.8879730000000006
	.quad	0x4003acbc8c0ce91d              # double 2.4593440000000002
	.quad	0x40170b2b3461309c              # double 5.7609069999999996
	.quad	0x40179c4c9c90c4df              # double 5.9026360000000002
	.quad	0x40128c226809d495              # double 4.6368499999999999
	.quad	0x402047394b7b2895              # double 8.1391089999999995
	.quad	0x401b54a2fcefaa47              # double 6.8326529999999996
	.quad	0x401cbe2fbe33acd6              # double 7.1857290000000003
	.quad	0x3ff04c271fff79c8              # double 1.0185919999999999
	.quad	0x3ff890917d6b65aa              # double 1.5352950000000001
	.quad	0x401d7e38eb0318b9              # double 7.3732639999999998
	.quad	0x3fc77d30ad46f588              # double 0.183508
	.quad	0x40088c9a77e5eaab              # double 3.068654
	.quad	0x3fd04d8ba40d90e2              # double 0.25473299999999999
	.quad	0x402081bbadc0980b              # double 8.2533849999999997
	.quad	0x3ffa52e1ef73c0c2              # double 1.645235
	.quad	0x401dbb2d4d4024b3              # double 7.4327899999999998
	.quad	0x40041323fee2c98e              # double 2.5093459999999999
	.quad	0x401199fcf3dc054f              # double 4.400379
	.quad	0x3fe614488c60cbf3              # double 0.68997600000000003
	.quad	0x402013c07ee0b0af              # double 8.0385779999999993
	.quad	0x401e536b09635611              # double 7.5814630000000002
	.quad	0x3ff74fa376922d95              # double 1.4569430000000001
	.quad	0x401dd4ee7c49fd7a              # double 7.4579409999999999
	.quad	0x3ff1050acc0bdcad              # double 1.063731
	.quad	0x4021d0c6f7a0b5ee              # double 8.9077680000000008
	.quad	0x3fd97d9dba908a26              # double 0.39829199999999998
	.quad	0x4016b6a0dbad3a60              # double 5.6783479999999997
	.quad	0x3feb7162ae4b0186              # double 0.85759099999999999
	.quad	0x4016e7210be9424e              # double 5.7257119999999997
	.quad	0x4021177143393ab4              # double 8.5457859999999996
	.quad	0x401acd462c343b71              # double 6.7004630000000001
	.quad	0x40051f7b5aea3162              # double 2.6403720000000002
	.quad	0x40135b3f20a73f75              # double 4.8391080000000004
	.quad	0x4015293b3a68b19a              # double 5.2902649999999998
	.quad	0x401d1cc7d1bb4917              # double 7.2781060000000002
	.quad	0x3ff1d99029ae4f33              # double 1.1156159999999999
	.quad	0x400c6d3953dea466              # double 3.5533320000000002
	.quad	0x3fb5e4e69f05ea25              # double 0.085524000000000003
	.quad	0x40138aac1094a2ba              # double 4.8854220000000002
	.quad	0x401b212d77318fc5              # double 6.7824
	.quad	0x400f7dadfb506dd7              # double 3.9363670000000002
	.quad	0x401d30407cc7d1bb              # double 7.2971209999999997
	.quad	0x401fb280ae104923              # double 7.9243189999999996
	.quad	0x3ff1d0cd423d9232              # double 1.1134770000000001
	.quad	0x401c1faa4766c6de              # double 7.0309229999999996
	.quad	0x4001a3c6c97d8cf4              # double 2.2049690000000002
	.quad	0x4010d47b677f6b1a              # double 4.2075019999999999
	.quad	0x401d7da122fad6cb              # double 7.3726849999999997
	.quad	0x401f0220791c4b90              # double 7.7520769999999999
	.quad	0x4001e5df2239e6ac              # double 2.2372420000000002
	.quad	0x40225d2ef911cf35              # double 9.1819989999999994
	.quad	0x401eaef911cf355d              # double 7.6708720000000001
	.quad	0x401b916ca46e08f2              # double 6.8920159999999999
	.quad	0x3fe0f1cfbb949625              # double 0.52951800000000004
	.quad	0x4020bee5cd4ed2cc              # double 8.3728470000000001
	.quad	0x4021bab4528283d3              # double 8.8646569999999993
	.quad	0x401489ab29e4d5d8              # double 5.134442
	.quad	0x4022ce21fafc8b00              # double 9.4026029999999992
	.quad	0x401143e29307af21              # double 4.3162940000000001
	.quad	0x4023ae9984a0e411              # double 9.8410150000000005
	.quad	0x401f3ca31e7d9989              # double 7.8092160000000001
	.quad	0x4023d159a30984e4              # double 9.908887
	.quad	0x4022b0ae536501e2              # double 9.3450799999999994
	.quad	0x3fe14d67fd3f5b60              # double 0.54069900000000004
	.quad	0x4018fc47a17f4129              # double 6.2463670000000002
	.quad	0x4023bc1376d54973              # double 9.8673359999999998
	.quad	0x4012fea8112ba16e              # double 4.7486879999999996
	.quad	0x4008618266772d5e              # double 3.047612
	.quad	0x40030ed1394317ad              # double 2.3822350000000001
	.quad	0x3fa1014b599aa609              # double 0.033212999999999999
	.quad	0x40067bea91d9b1b8              # double 2.8105060000000002
	.quad	0x400323265add9c28              # double 2.392163
	.quad	0x3fee98ce2d1f1cfc              # double 0.95615300000000003
	.quad	0x401bc673c4f3ba77              # double 6.9438009999999997
	.quad	0x401ca87ad080b674              # double 7.1645310000000002
	.quad	0x4022feece13f4a99              # double 9.4979010000000005
	.quad	0x401a3e32e3821af8              # double 6.5607410000000002
	.quad	0x402249af1886df83              # double 9.1439140000000005
	.quad	0x4015bfe64f54d1e9              # double 5.4374019999999996
	.quad	0x401a1cc6c54bcf0b              # double 6.5281019999999996
	.quad	0x401d206961c36977              # double 7.2816520000000002
	.quad	0x4021b816aceaaf36              # double 8.8595480000000002
	.quad	0x4021417c5ef62f9d              # double 8.6279020000000006
	.quad	0x401cdf5dbb9cf9a0              # double 7.2181309999999996
	.quad	0x40156321a2e7f6f5              # double 5.3468080000000002
	.quad	0x40113532a497fa5d              # double 4.3019509999999999
	.quad	0x4013e8fbca1059ea              # double 4.9775229999999997
	.quad	0x4008577292c49342              # double 3.0426989999999998
	.quad	0x401539c0a8d21bc1              # double 5.3063989999999999
	.quad	0x401101290257c915              # double 4.2511330000000003
	.quad	0x4023ed93a2df9379              # double 9.9640170000000001
	.quad	0x40152d7be9856a38              # double 5.2944180000000003
	.quad	0x40116e9f6a93f291              # double 4.3580300000000003
	.quad	0x4014c1975f2cb641              # double 5.1890539999999996
	.quad	0x3fe42b1d4f9c1f86              # double 0.63026300000000002
	.quad	0x40116685553ef6b6              # double 4.3501180000000002
	.quad	0x4016a5f0b28522ea              # double 5.6620509999999999
	.quad	0x3ffe3d0f1f57b41c              # double 1.889907
	.quad	0x401ebc209246bf01              # double 7.6837179999999998
	.quad	0x4023dd95feda6613              # double 9.9327850000000008
	.quad	0x402304fb762d83c7              # double 9.5097310000000003
	.quad	0x4010cdb877ab3248              # double 4.2008989999999997
	.quad	0x3fe7e490a350d280              # double 0.74665099999999995
	.quad	0x401c2af8df7a4e7b              # double 7.0419650000000003
	.quad	0x402371374bc6a7f0              # double 9.7211250000000007
	.quad	0x401b75c209246bf0              # double 6.8649979999999999
	.quad	0x401c37852f7f498c              # double 7.0542189999999998
	.quad	0x3ff90be2f7b17ce5              # double 1.565402
	.quad	0x400d4d7c6fbd273d              # double 3.6628349999999998
	.quad	0x40055cc4ac6cdaf5              # double 2.6702970000000001
	.quad	0x400f1a00e27e0efa              # double 3.8876970000000002
	.quad	0x3fdc065f9591cd1c              # double 0.43788899999999997
	.quad	0x401b92513b5bf6a1              # double 6.8928880000000001
	.quad	0x401fd03cd141a693              # double 7.9533569999999995
	.quad	0x401cf5ad106ee30d              # double 7.2399180000000003
	.quad	0x3fbf85e80bed740c              # double 0.123137
	.quad	0x400b2e7924af0bf2              # double 3.3976920000000002
	.quad	0x401cb57928e0c9da              # double 7.1772200000000002
	.quad	0x401a921187e7c06e              # double 6.6426449999999999
	.quad	0x3fe0c6bacf7446fa              # double 0.52425900000000003
	.quad	0x3ff1e0ae9680e065              # double 1.117354
	.quad	0x4011e113404ea4a9              # double 4.4698000000000002
	.quad	0x3fe4a3f8982cb210              # double 0.64501600000000003
	.quad	0x4022c8316a055758              # double 9.3910020000000002
	.quad	0x40229dd701d9f4d3              # double 9.3082809999999991
	.quad	0x3fe2aa25d8d79d0a              # double 0.58326999999999996
	.quad	0x4023d2cc2d6a9c56              # double 9.9117139999999999
	.quad	0x4023f9dc50ce4ead              # double 9.9880089999999999
	.quad	0x3fdd0fa15db3397e              # double 0.45407900000000001
	.quad	0x4021d3fca85caafc              # double 8.9140370000000004
	.quad	0x401c8b17ce52deca              # double 7.1358329999999999
	.quad	0x3ff2e2962cfd8f0c              # double 1.1803189999999999
	.quad	0x3ffed38cda6e75ff              # double 1.9266479999999999
	.quad	0x401c2fa76534373f              # double 7.0465369999999998
	.quad	0x402268af3e468cac              # double 9.2044619999999994
	.quad	0x40060426351deefe              # double 2.7520259999999999
	.quad	0x40127ce24bba12b6              # double 4.6219570000000001
	.quad	0x401be8b69552e2fc              # double 6.9772590000000001
	.quad	0x400b90a67620ee8d              # double 3.44563
	.quad	0x3fd1fd976ff3ade2              # double 0.28110299999999999
	.quad	0x401d49b3d07c84b6              # double 7.3219750000000001
	.quad	0x402353a190082060              # double 9.6633420000000001
	.quad	0x401ea9157abb8801              # double 7.665121
	.quad	0x4000c6195464dc23              # double 2.0967280000000001
	.quad	0x3ffef6a832b990b0              # double 1.935219
	.quad	0x40187d7e45803cd1              # double 6.1225519999999998
	.quad	0x3fe5a0902de00d1b              # double 0.67584999999999995
	.quad	0x401ae0fe47991bc5              # double 6.7197199999999997
	.quad	0x4020bac40d0aaa7e              # double 8.3647770000000001
	.quad	0x401dfadab9f559b4              # double 7.4949750000000002
	.quad	0x400015d2d01c0ca6              # double 2.010656
	.quad	0x40078662bae03b3f              # double 2.9406180000000002
	.quad	0x40150e931876188b              # double 5.2642329999999999
	.quad	0x401ba9e518f3eccc              # double 6.9159129999999998
	.quad	0x401c455000c9539c              # double 7.0676880000000004
	.quad	0x4003cc8abd5dc400              # double 2.4748739999999998
	.quad	0x40155c13b9f127f6              # double 5.3399190000000001
	.quad	0x3fe85fb0d51f81a6              # double 0.76168100000000005
	.quad	0x3ff2050268900c52              # double 1.126223
	.quad	0x3ff6889e34330d74              # double 1.4083540000000001
	.quad	0x401931d3aa369fcf              # double 6.2986589999999998
	.quad	0x3fc511cf355cd91f              # double 0.164606
	.quad	0x3fedc93a71151612              # double 0.93081400000000003
	.quad	0x401bea60913a4f87              # double 6.9788839999999999
	.quad	0x40236ec11a11233e              # double 9.7163170000000001
	.quad	0x4007e7789a459104              # double 2.9880230000000001
	.quad	0x40159463497b7415              # double 5.3949100000000003
	.quad	0x4021739bed30f063              # double 8.7257990000000003
	.quad	0x4003adbe7f2c300a              # double 2.4598360000000001
	.quad	0x40139da7f3cf7015              # double 4.9039609999999998
	.quad	0x4023773300de4c51              # double 9.7328109999999998
	.quad	0x40212f5bc44bf4cb              # double 8.5924969999999998
	.quad	0x4021c954eb13dfb1              # double 8.8932260000000003
	.quad	0x3ff959a95421c044              # double 1.58439
	.quad	0x3fe6139c94f69caa              # double 0.68989400000000001
	.quad	0x40232f0281ba7fc3              # double 9.5918159999999996
	.quad	0x40193445aa2e3c53              # double 6.3010469999999996
	.quad	0x4018b58255b035bd              # double 6.1772549999999997
	.quad	0x3ff79c8c9320d994              # double 1.4757199999999999
	.quad	0x400d121815a07b35              # double 3.6338349999999999
	.quad	0x40177d08d4bad7d8              # double 5.8721040000000002
	.quad	0x401dc1a8ef77f280              # double 7.4391210000000001
	.quad	0x401a087ebf22c01e              # double 6.5082959999999996
	.quad	0x4023f49385836220              # double 9.9776880000000006
	.quad	0x40185da76d97b310              # double 6.0914590000000004
	.quad	0x3ffa264e48626f61              # double 1.634352
	.quad	0x3fe5cf6be37de93a              # double 0.68157000000000001
	.quad	0x401c01522a6f3f53              # double 7.00129
	.quad	0x40110c8a7a41e57e              # double 4.2622470000000003
	.quad	0x4022c84ab606b7aa              # double 9.3911949999999997
	.quad	0x4009f3bc903ea705              # double 3.2440120000000001
	.quad	0x4007eb1b36bd2b6f              # double 2.989798
	.quad	0x3fca04d983947497              # double 0.20327300000000001
	.quad	0x40239e2cba732df5              # double 9.8089349999999999
	.quad	0x4004eaf0bf1a5ca3              # double 2.6147170000000002
	.quad	0x4016c2ac753e707e              # double 5.6901109999999999
	.quad	0x40152f84cad57bc8              # double 5.296405
	.quad	0x4014652977c88e7a              # double 5.0987910000000003
	.quad	0x3fe26557de0d66f1              # double 0.57487100000000002
	.quad	0x400f670fbeb9e493              # double 3.9253230000000001
	.quad	0x40105f61672324c8              # double 4.0931449999999998
	.quad	0x400f89bd8383ad9f              # double 3.942256
	.quad	0x3ffd8739b024f65a              # double 1.8455140000000001
	.quad	0x3ff462c77574f723              # double 1.274116
	.quad	0x400df33f42352eb6              # double 3.743773
	.quad	0x4018d51b93037d63              # double 6.208113
	.quad	0x401e410e453d20f3              # double 7.5635310000000002
	.quad	0x4023bfbe76c8b439              # double 9.8744999999999993
	.quad	0x401cbe1262025397              # double 7.1856169999999997
	.quad	0x401f6e02ea960b70              # double 7.8574330000000003
	.quad	0x4016a121682f9442              # double 5.6573539999999998
	.quad	0x4023c11d57ff9b56              # double 9.8771769999999997
	.quad	0x4018c122749f0e4e              # double 6.1886080000000003
	.quad	0x4021ec154c985f07              # double 8.9611000000000001
	.quad	0x401f97064ece9a2c              # double 7.8974849999999996
	.quad	0x4022db3a2595bbbf              # double 9.4281780000000008
	.quad	0x401f8d6ba8c58687              # double 7.8881059999999996
	.quad	0x40174609dcf893fb              # double 5.818397
	.quad	0x40121c6540cc78ea              # double 4.52773
	.quad	0x401de65bea0ba1f5              # double 7.4749600000000003
	.quad	0x400d17da61e0c5a8              # double 3.636647
	.quad	0x401914c059210386              # double 6.2702650000000002
	.quad	0x3ffdaeaa6d267408              # double 1.855143
	.quad	0x401f33821af7d30b              # double 7.8003010000000001
	.quad	0x40148a6d26740810              # double 5.1351820000000004
	.quad	0x400a5988d2a1f8e4              # double 3.2937180000000001
	.quad	0x3ffa7584b1ab0857              # double 1.653691
	.quad	0x401555232d2bb235              # double 5.3331419999999996
	.quad	0x3ff1d6d8f4f93bc1              # double 1.1149530000000001
	.quad	0x400dbab3aabcd78c              # double 3.7161629999999999
	.quad	0x4017d72bcb5fe543              # double 5.9601280000000001
	.quad	0x4010429f9ce8d973              # double 4.0650620000000002
	.quad	0x3ffb1c0010c6f7a1              # double 1.6943360000000001
	.quad	0x40160bddfc9ff92f              # double 5.5115889999999998
	.quad	0x400ca679463cfb33              # double 3.581286
	.quad	0x4022c1c9d5a187a5              # double 9.3784930000000006
	.quad	0x4007957a355043e5              # double 2.9479869999999999
	.quad	0x3ffe93dfb0d51f82              # double 1.9111020000000001
	.quad	0x4014568448cf7caa              # double 5.0844889999999996
	.quad	0x40204c63497b7415              # double 8.1491950000000006
	.quad	0x40203ec2ce464990              # double 8.1225799999999992
	.quad	0x4017d62456f75d9a              # double 5.9591229999999999
	.quad	0x3ffb813ec460ed81              # double 1.7190540000000001
	.quad	0x40106ba51a005c46              # double 4.1051219999999997
	.quad	0x400a5b688bda9436              # double 3.2946330000000001
	.quad	0x4022ee4b2314013f              # double 9.4654170000000004
	.quad	0x400479fec99f1ae3              # double 2.5595680000000001
	.quad	0x3ff07681669ced0b              # double 1.028932
	.quad	0x4019ac3a42f1ed18              # double 6.4181910000000002
	.quad	0x401a279d4d834092              # double 6.5386860000000002
	.quad	0x401e16bb55ac03ff              # double 7.5221989999999996
	.quad	0x4006765d3996fa83              # double 2.807795
	.quad	0x400944c0df58c08b              # double 3.1585709999999998
	.quad	0x401637dd00f776c5              # double 5.5545540000000004
	.quad	0x4022c47192ea52f0              # double 9.3836790000000008
	.quad	0x3fe610cb295e9e1b              # double 0.68955
	.quad	0x400ea9f9ce8d972d              # double 3.8329960000000001
	.quad	0x4005e0de4c51116b              # double 2.7347990000000002
	.quad	0x3ff22f6f8f041462              # double 1.1365810000000001
	.quad	0x4018218b0d0edc3c              # double 6.0327570000000001
	.quad	0x4013db749adc8fb8              # double 4.9643119999999996
	.quad	0x400d94a01abd1aa8              # double 3.6975709999999999
	.quad	0x40109e4b44a1f080              # double 4.1545839999999998
	.quad	0x4011d03b3e9a6f82              # double 4.4533509999999996
	.quad	0x4021a27c7c5260f6              # double 8.8173560000000002
	.quad	0x40077fe75bc44bf5              # double 2.9374530000000001
	.quad	0x3fff2dcb1465e892              # double 1.94868
	.quad	0x4021933dd11be6e6              # double 8.7875809999999994
	.quad	0x401d8018a43bb40b              # double 7.3750939999999998
	.quad	0x4023788c1db0142f              # double 9.7354439999999993
	.quad	0x40218cbf4cb1897a              # double 8.7748969999999993
	.quad	0x400d78726d04e619              # double 3.6838120000000001
	.quad	0x4021f1da16616b55              # double 8.9723670000000002
	.quad	0x401cabcbe61cffeb              # double 7.16777
	.quad	0x4021c90e8858ff76              # double 8.8926890000000007
	.quad	0x4011b6d8f4f93bc1              # double 4.4285620000000003
	.quad	0x401c490f301eabbd              # double 7.0713470000000003
	.quad	0x400bad77b7c7820a              # double 3.4597009999999999
	.quad	0x4000140c4156e265              # double 2.009789
	.quad	0x400cc5accd53048a              # double 3.5965210000000001
	.quad	0x3fc2df9378ee2867              # double 0.147448
	.quad	0x401aa255f3519bd4              # double 6.658531
	.quad	0x40183734b51372a4              # double 6.0539120000000004
	.quad	0x402333b29a1b9f99              # double 9.6009720000000005
	.quad	0x400a5d9fd36f7e3d              # double 3.295715
	.quad	0x4018a1c2e33eff19              # double 6.1579699999999997
	.quad	0x4004df62b6ae7d56              # double 2.6090749999999998
	.quad	0x400b9a2be0589acc              # double 3.4502790000000001
	.quad	0x4013427f1b691212              # double 4.8149379999999997
	.quad	0x4021d058793dd97f              # double 8.9069249999999993
	.quad	0x3f9b3461309c7ffe              # double 0.026567
	.quad	0x401a2639d5e4a383              # double 6.5373299999999999
	.quad	0x401d9697f1f9ad00              # double 7.3970640000000003
	.quad	0x401c3f345069a4df              # double 7.0617229999999998
	.quad	0x400ec090b417ca21              # double 3.8440259999999999
	.quad	0x3ff439a9da597d4a              # double 1.264078
	.quad	0x4018c90539fba451              # double 6.1963090000000003
	.quad	0x402043e63e8dda49              # double 8.1326160000000005
	.quad	0x40010df7a4e7ab75              # double 2.1318199999999998
	.quad	0x400d08b545c78a6e              # double 3.6292520000000001
	.quad	0x401adbb44e50c5eb              # double 6.7145549999999998
	.quad	0x401d60e8c8abd5dc              # double 7.3446379999999998
	.quad	0x40149aff2a172abf              # double 5.1513640000000001
	.quad	0x401db898f605ab3b              # double 7.4302710000000003
	.quad	0x401033da72a7bd49              # double 4.0506380000000002
	.quad	0x3ff5e6516db0dd83              # double 1.36873
	.quad	0x401b5b2a6b0d9514              # double 6.839029
	.quad	0x3fec9702e6644d87              # double 0.89343399999999995
	.quad	0x4021510afe60c38f              # double 8.6582869999999996
	.quad	0x400238854cdb7ae5              # double 2.2775979999999998
	.quad	0x400e8b3e5753a3ec              # double 3.81799
	.quad	0x401568cef672b884              # double 5.3523519999999998
	.quad	0x401f9aea3161a1dc              # double 7.9012840000000004
	.quad	0x3fcad080b673c4f4              # double 0.20948800000000001
	.quad	0x40155e236c15d2d0              # double 5.3419319999999999
	.quad	0x40093b9d7fd82774              # double 3.1541090000000001
	.quad	0x4020163305100a39              # double 8.0433579999999996
	.quad	0x401b9c62a1b5c7ce              # double 6.9027200000000004
	.quad	0x402172d8e4324420              # double 8.7243110000000001
	.quad	0x40176a8c9b845565              # double 5.8540520000000003
	.quad	0x40223a45b291b824              # double 9.1138130000000003
	.quad	0x40114b9ae0c17657              # double 4.3238329999999996
	.quad	0x401e56d1e108c3f4              # double 7.5847850000000001
	.quad	0x4008902b40f66a55              # double 3.070395
	.quad	0x4013301c4fc1df33              # double 4.796983
	.quad	0x4015a60aa64c2f83              # double 5.4121499999999996
	.quad	0x3ffb933a0407cc7d              # double 1.723444
	.quad	0x401c0b039ef0f16f              # double 7.0107559999999998
	.quad	0x3ff7dd50a88effe3              # double 1.4915320000000001
	.quad	0x4012e60b6f9fcb0c              # double 4.724653
	.quad	0x40005c5154866a12              # double 2.045077
	.quad	0x4018dd0635a426bb              # double 6.2158439999999997
	.quad	0x3ff779eadd590c0b              # double 1.467265
	.quad	0x4021419439de481f              # double 8.6280839999999994
	.quad	0x3ff71cfaacd9e83e              # double 1.4445749999999999
	.quad	0x401777add15f02c5              # double 5.8668740000000001
	.quad	0x3fde743201040bfe              # double 0.47584199999999999
	.quad	0x4023d479b34a44c8              # double 9.9149910000000005
	.quad	0x3fcd307af20ea5b5              # double 0.22804199999999999
	.quad	0x40239c0c62e4d1a6              # double 9.8047819999999994
	.quad	0x3fca4cd74927913f              # double 0.20547000000000001
	.quad	0x400db270b06c43f6              # double 3.712129
	.quad	0x3fff3841248d7e02              # double 1.9512339999999999
	.quad	0x401687bbf93ff25e              # double 5.6325529999999997
	.quad	0x3fe777db6e503fb3              # double 0.73338099999999995
	.quad	0x4014468f4b61fe22              # double 5.0689060000000001
	.quad	0x401fdbe22e5de15d              # double 7.9647300000000003
	.quad	0x401db85729b280f1              # double 7.4300199999999998
	.quad	0x3ffc62c98e53eb3a              # double 1.7741180000000001
	.quad	0x4005f521144cbe1f              # double 2.7446920000000001
	.quad	0x400e3932d6ece13f              # double 3.7779289999999999
	.quad	0x4010551c9f72f76e              # double 4.0831169999999997
	.quad	0x3fdd6eac8605681f              # double 0.45988000000000001
	.quad	0x40022d045fe11127              # double 2.2719809999999998
	.quad	0x401519389b52007e              # double 5.2746300000000002
	.quad	0x400c063b688bda94              # double 3.5030429999999999
	.quad	0x3fe91d27c3936827              # double 0.78480899999999998
	.quad	0x3fe4694ab1d4f9c2              # double 0.637853
	.quad	0x402303e878fabda1              # double 9.5076330000000002
	.quad	0x40196f661f18c9fb              # double 6.3587879999999997
	.quad	0x3fe4628027d88c1e              # double 0.63702400000000003
	.quad	0x3fcda56de33269e0              # double 0.23161100000000001
	.quad	0x4003686cebbba55d              # double 2.425989
	.quad	0x4017558fb43d89ce              # double 5.8335559999999997
	.quad	0x40179c5479d4d834              # double 5.902666
	.quad	0x4015166cb10342ab              # double 5.2718990000000003
	.quad	0x4011d0b9dc2f405f              # double 4.4538339999999996
	.quad	0x400ac1a1554fbdad              # double 3.3445459999999998
	.quad	0x40116239e6ab9b24              # double 4.3459240000000001
	.quad	0x4014a139c94f69cb              # double 5.1574470000000003
	.quad	0x4001135b0bbf50e3              # double 2.1344509999999999
	.quad	0x3ffc6e9ee45c358b              # double 1.777007
	.quad	0x401afe219652bd3c              # double 6.7481749999999998
	.quad	0x402130d4bad7d7c3              # double 8.5953730000000004
	.quad	0x3fd60d1fa333764f              # double 0.344551
	.quad	0x400b5cb9a9da597d              # double 3.4202759999999999
	.quad	0x4017179bfdf7e804              # double 5.7730560000000004
	.quad	0x3fd7bbecaab8a5ce              # double 0.37084499999999998
	.quad	0x4019d9707182235b              # double 6.4623429999999997
	.quad	0x4016278f25a250f8              # double 5.5386319999999998
	.quad	0x40108f36ef8055fc              # double 4.1398580000000003
	.quad	0x40204e2478854cdb              # double 8.1526219999999991
	.quad	0x400b22e2328f9f45              # double 3.3920330000000001
	.quad	0x4023c4bdba0a5269              # double 9.8842599999999993
	.quad	0x3febd332acfb762e              # double 0.86953100000000005
	.quad	0x40203a58b3f63c32              # double 8.1139580000000002
	.quad	0x3fa7b7a5f41aef70              # double 0.046323000000000003
	.quad	0x4010219ac79702e6              # double 4.0328169999999997
	.quad	0x4022f087442c7fbb              # double 9.4697820000000003
	.quad	0x400c18fde2ef4e01              # double 3.512203
	.quad	0x401e42b020c49ba6              # double 7.5651250000000001
	.quad	0x400222c6ef3d3a1d              # double 2.2669809999999999
	.quad	0x4013a1c3efae7925              # double 4.9079740000000003
	.quad	0x4021fa41a261bf38              # double 8.9887820000000005
	.quad	0x401a1210be9424e6              # double 6.5176420000000004
	.quad	0x4021160c7c0f4517              # double 8.5430639999999993
	.quad	0x40100240b780346e              # double 4.0022000000000002
	.quad	0x4013446412cf0f9d              # double 4.8167879999999998
	.quad	0x4004f0880d801b43              # double 2.6174469999999999
	.quad	0x4016ab5286b59147              # double 5.6673070000000001
	.quad	0x4002eb0a6fc58ab9              # double 2.3647659999999999
	.quad	0x402206cf41f212d7              # double 9.0132999999999992
	.quad	0x401131db445ed4a2              # double 4.2986880000000003
	.quad	0x4010c9068986fcdf              # double 4.1963140000000001
	.quad	0x4022e835371971c1              # double 9.4535309999999999
	.quad	0x401eea4f440af1cc              # double 7.7288180000000004
	.quad	0x3fe570196d8f4f94              # double 0.66993400000000003
	.quad	0x4011947c73eee526              # double 4.3950060000000004
	.quad	0x40142ebb341e14be              # double 5.045636
	.quad	0x40233d413122b7bb              # double 9.6196380000000001
	.quad	0x3fbb4784230fcf81              # double 0.10656
	.quad	0x401c27a2cecc814d              # double 7.0387069999999996
	.quad	0x3fe68b242070b8d0              # double 0.70448500000000003
	.quad	0x4021abe7afa72218              # double 8.8357519999999994
	.quad	0x3ff6cb3d4ae429e1              # double 1.4246190000000001
	.quad	0x4020a8b630a91538              # double 8.3295150000000007
	.quad	0x4014ea9a8049667b              # double 5.2291049999999997
	.quad	0x4010441c3efae792              # double 4.0665139999999997
	.quad	0x3ff0a85a921ccd96              # double 1.041102
	.quad	0x3ffa69131ec0b567              # double 1.6506529999999999
	.quad	0x3ff014d4024b33db              # double 1.005085
	.quad	0x4009a5abc0e38a7e              # double 3.2058939999999998
	.quad	0x4023126266fd651b              # double 9.5359069999999999
	.quad	0x400cdaa92e62131b              # double 3.6067680000000002
	.quad	0x4010e51efb6dca08              # double 4.223751
	.quad	0x4020756798958d9b              # double 8.2293059999999993
	.quad	0x401a4b2b777d0f1f              # double 6.5734079999999997
	.quad	0x401c2839042d8c2a              # double 7.0392799999999998
	.quad	0x3fec575e2046c765              # double 0.88566500000000004
	.quad	0x4013cbdcf0307f24              # double 4.9490850000000002
	.quad	0x4021305319828805              # double 8.5943839999999998
	.quad	0x401a9e1c58255b03              # double 6.6544049999999997
	.quad	0x3fe9d0a02b841249              # double 0.80671700000000002
	.quad	0x3fa11be6e6538690              # double 0.033416000000000001
	.quad	0x3ff6f963992c8c50              # double 1.435886
	.quad	0x401f031162281345              # double 7.7529960000000004
	.quad	0x3ff885931ca7d673              # double 1.5326109999999999
	.quad	0x401e2b0bbf50e347              # double 7.5420369999999996
	.quad	0x4002abf6e3f78bbd              # double 2.3339669999999999
	.quad	0x4013da261bf37b8d              # double 4.9630359999999998
	.quad	0x3ff6f78ee2867275              # double 1.4354389999999999
	.quad	0x400a64a83b1d0c80              # double 3.2991489999999999
	.quad	0x3febd5347a5b0ff1              # double 0.86977599999999999
	.quad	0x4022bec4827b6fe3              # double 9.3725930000000001
	.quad	0x400a1f9df548ecd9              # double 3.2654380000000001
	.quad	0x40236346dc5d6388              # double 9.6938999999999992
	.quad	0x4019792ea52ef912              # double 6.3683420000000002
	.quad	0x40237fd1dcd7060c              # double 9.7496480000000005
	.quad	0x40102e08aefb2aae              # double 4.0449549999999999
	.quad	0x400ef55714b9cb68              # double 3.8697949999999999
	.quad	0x4017c722e1ac57e2              # double 5.9444689999999998
	.quad	0x40090e221c8a7a42              # double 3.131901
	.quad	0x40236c15097c8084              # double 9.7110979999999997
	.quad	0x4022a857f3061c7a              # double 9.3287960000000005
	.quad	0x4022c58e64b23140              # double 9.3858519999999998
	.quad	0x40117299524bfd2f              # double 4.3619130000000004
	.quad	0x4020b1bc55864452              # double 8.3471399999999996
	.quad	0x40228b8f57f737da              # double 9.2725779999999993
	.quad	0x4000b63a19008206              # double 2.088978
	.quad	0x3fe988b11409a240              # double 0.79793599999999998
	.quad	0x40215052d666a982              # double 8.6568819999999995
	.quad	0x4009b4091c087443              # double 3.2129080000000001
	.quad	0x4013bce4ead0c3d2              # double 4.9344669999999997
	.quad	0x3ffe66698bb4d489              # double 1.9000030000000001
	.quad	0x401f292d1287c201              # double 7.7902110000000002
	.quad	0x4020375968512232              # double 8.1081040000000009
	.quad	0x4023e3882278d0cc              # double 9.9443979999999996
	.quad	0x4020bcaafbc1acde              # double 8.3684919999999998
	.quad	0x3f9558a761027957              # double 0.020846
	.quad	0x3ff8577318fc5048              # double 1.52135
	.quad	0x4016967903211cb0              # double 5.6469459999999998
	.quad	0x401fdc8711d798d9              # double 7.9653590000000003
	.quad	0x4008886162f166e0              # double 3.066592
	.quad	0x4022114ea077036d              # double 9.0338030000000007
	.quad	0x40219595bbbe8790              # double 8.7921580000000006
	.quad	0x400d36640a6b93cd              # double 3.6515580000000001
	.quad	0x3fcb4c8ffb8b2639              # double 0.21327399999999999
	.quad	0x4011f4bcf0b6b6e1              # double 4.4890020000000002
	.quad	0x401c78e25c810a57              # double 7.1180510000000004
	.quad	0x4015c02eec7c957d              # double 5.4376790000000002
	.quad	0x40207ee5471715c6              # double 8.2478429999999996
	.quad	0x3ffad933e35c5b4b              # double 1.6780280000000001
	.quad	0x3f91a08bfc2224ee              # double 0.017214
	.quad	0x4007726394face68              # double 2.9308540000000001
	.quad	0x3fdb8d10f51ac9b0              # double 0.43048500000000001
	.quad	0x4021ae48a58b3f64              # double 8.8403980000000004
	.quad	0x4020eb6523704791              # double 8.4597560000000005
	.quad	0x400f0d2ed783dff4              # double 3.881437
	.quad	0x402058ab92c06184              # double 8.1731839999999991
	.quad	0x40193000c9539b89              # double 6.2968780000000004
	.quad	0x40206c7c957cd467              # double 8.2118880000000001
	.quad	0x3ff6eb6e0d23d4f1              # double 1.4324779999999999
	.quad	0x4001a90795f676ea              # double 2.2075339999999999
	.quad	0x400db32b55ef1fde              # double 3.712485
	.quad	0x4014fd556084a516              # double 5.2473960000000002
	.quad	0x4017e0a6b93ccd10              # double 5.9693860000000001
	.quad	0x400aefd976ff3ade              # double 3.3671139999999999
	.quad	0x401220691ea78af4              # double 4.5316510000000001
	.quad	0x40108e3608d0891a              # double 4.1388780000000001
	.quad	0x4008563ed0f62739              # double 3.0421119999999999
	.quad	0x40212e21fafc8b00              # double 8.5901029999999992
	.quad	0x401bf40af1cb89d7              # double 6.9883230000000003
	.quad	0x4009bbdad7518b0d              # double 3.216726
	.quad	0x4021eadcf4623d0c              # double 8.958717
	.quad	0x3fe34aeea63b688c              # double 0.60289700000000002
	.quad	0x401647ce95faa8a8              # double 5.5701239999999999
	.quad	0x401389ced0b30b5b              # double 4.8845780000000003
	.quad	0x3ff1a17f4128bf3c              # double 1.101928
	.quad	0x40134712e40852b5              # double 4.8194080000000001
	.quad	0x40208a9ac36544fe              # double 8.2707119999999996
	.quad	0x3ff756dc1a47a9e3              # double 1.4587060000000001
	.quad	0x4018f358298cc144              # double 6.237641
	.quad	0x401f75e4606748e4              # double 7.8651289999999996
	.quad	0x402092915379fa98              # double 8.2862650000000002
	.quad	0x40046a4d2b2bfdb5              # double 2.5519050000000001
	.quad	0x4012352e2fbe33ad              # double 4.5519340000000001
	.quad	0x40178f91600f3450              # double 5.8902029999999996
	.quad	0x40215c866a11ec92              # double 8.6807130000000008
	.quad	0x4012a9bcfd4bf099              # double 4.6657599999999997
	.quad	0x4023ddd80e496edf              # double 9.9332890000000002
	.quad	0x4023e1c8a7a41e58              # double 9.9409840000000002
	.quad	0x40229f33a8a3f898              # double 9.3109409999999996
	.quad	0x3ffa41b54195cc85              # double 1.6410419999999999
	.quad	0x401736f9b994e1a4              # double 5.803687
	.quad	0x400466bb55ac03ff              # double 2.5501619999999998
	.quad	0x4001aaeb80ecfa6a              # double 2.2084570000000001
	.quad	0x3fdb359bc33f8551              # double 0.425147
	.quad	0x4021494a6eb91b3f              # double 8.6431459999999998
	.quad	0x401c18cb4aec8d5c              # double 7.0242129999999996
	.quad	0x400659b13165d399              # double 2.7937949999999998
	.quad	0x3fe9436da87a072d              # double 0.78948099999999999
	.quad	0x401df46ae3a3a8e7              # double 7.4886889999999999
	.quad	0x400fdeec39799e52              # double 3.9838490000000002
	.quad	0x401280ed3d859c8d              # double 4.6259050000000004
	.quad	0x400e9797460242d0              # double 3.8240189999999998
	.quad	0x401b6cbff47735c2              # double 6.8562010000000004
	.quad	0x4014aa2a90cd423e              # double 5.1661780000000004
	.quad	0x40078c5197a24895              # double 2.9435150000000001
	.quad	0x400ab0ff97247454              # double 3.3364250000000002
	.quad	0x400038266772d5e0              # double 2.0274169999999998
	.quad	0x3ff0eece13f4a98b              # double 1.0583020000000001
	.quad	0x4023b7d1bb4916ca              # double 9.8590219999999995
	.quad	0x4022ad4aa10e0221              # double 9.3384599999999995
	.quad	0x3ff26cfb762d83c7              # double 1.151607
	.quad	0x40032455eaee2004              # double 2.3927420000000001
	.quad	0x401aceb3dd11be6e              # double 6.7018579999999996
	.quad	0x400ed4d056c508b3              # double 3.8539129999999999
	.quad	0x401b882d7b634dad              # double 6.8829859999999998
	.quad	0x401ca96a26e54717              # double 7.1654439999999999
	.quad	0x401785aab4741073              # double 5.8805339999999999
	.quad	0x401590ec74320104              # double 5.391527
	.quad	0x3ffa79bbadc0980b              # double 1.65472
	.quad	0x401d6240746455eb              # double 7.3459490000000001
	.quad	0x3fed2bc72e275ab8              # double 0.91159400000000002
	.quad	0x3ffb90f40e5a35d6              # double 1.7228889999999999
	.quad	0x3ff1128283d35eb7              # double 1.0670189999999999
	.quad	0x400a197891e21533              # double 3.2624369999999998
	.quad	0x4014dc52a411c2a0              # double 5.2151589999999999
	.quad	0x40129eea209aaa3b              # double 4.6551900000000002
	.quad	0x4013ab91f70de8f7              # double 4.9175490000000002
	.quad	0x3ff72dd15f02c4d6              # double 1.4486859999999999
	.quad	0x40057dab5c39bcba              # double 2.6863619999999999
	.quad	0x400d9709310129cc              # double 3.6987480000000001
	.quad	0x401d94fe79ee02a7              # double 7.3955019999999996
	.quad	0x401ee1797cc39ffd              # double 7.7201899999999996
	.quad	0x4022d520296b3355              # double 9.4162610000000004
	.quad	0x400fee9dd7ecbb80              # double 3.9915120000000002
	.quad	0x3fd9620685553ef7              # double 0.39660800000000002
	.quad	0x3ff30332f01754b0              # double 1.1882809999999999
	.quad	0x3ffdce3ef284167b              # double 1.8628530000000001
	.quad	0x400605cc426351df              # double 2.752831
	.quad	0x4020f7f7dfa00e28              # double 8.4843130000000002
	.quad	0x402080da1a93293d              # double 8.2516639999999999
	.quad	0x40103c1b97353b4b              # double 4.0586989999999998
	.quad	0x4004f25aab474107              # double 2.6183369999999999
	.quad	0x401233471f79420b              # double 4.5500759999999998
	.quad	0x3ff28ab2e1693c04              # double 1.1588620000000001
	.quad	0x4015c7abb8800eae              # double 5.4449909999999999
	.quad	0x401820ce91c8eac0              # double 6.032038
	.quad	0x40049dd441355476              # double 2.5770650000000002
	.quad	0x400d52ca57a786c2              # double 3.6654249999999999
	.quad	0x40230ca70d1fa333              # double 9.5247119999999991
	.quad	0x3fe0a47021d10b20              # double 0.52007300000000001
	.quad	0x4010313d74d594f2              # double 4.0480859999999996
	.quad	0x401e233226c3b928              # double 7.5343710000000001
	.quad	0x40184a9c12f09d8c              # double 6.0728609999999996
	.quad	0x4005b6eb4e981388              # double 2.7143160000000002
	.quad	0x3fd99eb2074ea8da              # double 0.40031099999999997
	.quad	0x3ff428e4fb97bb73              # double 1.259984
	.quad	0x4021d7ba01eeed89              # double 8.921341
	.quad	0x4015be2867275686              # double 5.4357009999999999
	.quad	0x4012e97353b4b2fb              # double 4.7279790000000004
	.quad	0x4020f6b18116ebd5              # double 8.4818230000000003
	.quad	0x401f2efa615a8deb              # double 7.7958769999999999
	.quad	0x3fe0e0ac7da1ec4e              # double 0.52742599999999995
	.quad	0x3ff9fd2630ec3116              # double 1.624304
	.quad	0x4006f58750c1b973              # double 2.8698869999999999
	.quad	0x4001f65cb35f3d7d              # double 2.2452939999999999
	.quad	0x40188deb52c9d170              # double 6.1385930000000002
	.quad	0x3ff39cc964628028              # double 1.225778
	.quad	0x3ff5cb039ef0f16f              # double 1.3620639999999999
	.quad	0x4014779e9d0e9920              # double 5.116816
	.quad	0x401cd8cf7caa758a              # double 7.2117290000000001
	.quad	0x4020c54c76d117b5              # double 8.3853489999999997
	.quad	0x4013bccff21b3aef              # double 4.9343870000000001
	.quad	0x40207a7e30878748              # double 8.2392439999999993
	.quad	0x401bcefe93187619              # double 6.9521430000000004
	.quad	0x4019f0ab2e1693c0              # double 6.4850279999999998
	.quad	0x4006ab59146e4c0e              # double 2.833666
	.quad	0x40125fc829cfdd23              # double 4.5935370000000004
	.quad	0x3fcbc74fb549f948              # double 0.21701999999999999
	.quad	0x40103d4d4024b33e              # double 4.0598650000000003
	.quad	0x402188e3ef284168              # double 8.7673640000000006
	.quad	0x401cff5e41d4b6a6              # double 7.2493829999999999
	.quad	0x40180c4eb56fb8f5              # double 6.0120189999999996
	.quad	0x4010cd601ffb480a              # double 4.2005619999999997
	.quad	0x40138ac6045baf53              # double 4.8855209999999998
	.quad	0x4010f8ecd8dbcec8              # double 4.2430909999999997
	.quad	0x4020ddda6a444178              # double 8.4333069999999992
	.quad	0x400190ec31162281              # double 2.1957629999999999
	.quad	0x401c12a3cea6c1a0              # double 7.0182029999999997
	.quad	0x401d9957470eb24a              # double 7.3997469999999996
	.quad	0x3ff13b6ed677707a              # double 1.07701
	.quad	0x400e3b8aa00192a7              # double 3.7790729999999999
	.quad	0x401bfe31d712a0ec              # double 6.9982369999999996
	.quad	0x40061efae7924af1              # double 2.7651270000000001
	.quad	0x401cc40789613d32              # double 7.1914350000000002
	.quad	0x40159e5c4eb56fb9              # double 5.404649
	.quad	0x4010bb845564b663              # double 4.183122
	.quad	0x40235b6d00b45ae6              # double 9.678566
	.quad	0x401e4e653868fd1a              # double 7.5765580000000003
	.quad	0x4009b483cafb3b75              # double 3.2131419999999999
	.quad	0x4015e2dadb8348f5              # double 5.4715379999999998
	.quad	0x400625fd04a2fcf0              # double 2.7685490000000001
	.size	.L__constant_3000xf64, 24000

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
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
	.size	.L__constant_101xindex, 808

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

	.section	".note.GNU-stack","",@progbits
