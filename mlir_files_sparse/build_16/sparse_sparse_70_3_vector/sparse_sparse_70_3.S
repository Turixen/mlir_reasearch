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
	.quad	0x41364ed7e02f5126              # double 1461975.8757219999
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
	.quad	48                              # 0x30
	.quad	71                              # 0x47
	.quad	88                              # 0x58
	.quad	135                             # 0x87
	.quad	157                             # 0x9d
	.quad	184                             # 0xb8
	.quad	225                             # 0xe1
	.quad	248                             # 0xf8
	.quad	273                             # 0x111
	.quad	327                             # 0x147
	.quad	346                             # 0x15a
	.quad	376                             # 0x178
	.quad	415                             # 0x19f
	.quad	437                             # 0x1b5
	.quad	456                             # 0x1c8
	.quad	505                             # 0x1f9
	.quad	530                             # 0x212
	.quad	554                             # 0x22a
	.quad	604                             # 0x25c
	.quad	622                             # 0x26e
	.quad	641                             # 0x281
	.quad	689                             # 0x2b1
	.quad	708                             # 0x2c4
	.quad	725                             # 0x2d5
	.quad	773                             # 0x305
	.quad	792                             # 0x318
	.quad	818                             # 0x332
	.quad	872                             # 0x368
	.quad	899                             # 0x383
	.quad	917                             # 0x395
	.quad	966                             # 0x3c6
	.quad	984                             # 0x3d8
	.quad	997                             # 0x3e5
	.quad	1046                            # 0x416
	.quad	1064                            # 0x428
	.quad	1089                            # 0x441
	.quad	1135                            # 0x46f
	.quad	1159                            # 0x487
	.quad	1180                            # 0x49c
	.quad	1228                            # 0x4cc
	.quad	1254                            # 0x4e6
	.quad	1280                            # 0x500
	.quad	1327                            # 0x52f
	.quad	1350                            # 0x546
	.quad	1365                            # 0x555
	.quad	1414                            # 0x586
	.quad	1442                            # 0x5a2
	.quad	1460                            # 0x5b4
	.quad	1506                            # 0x5e2
	.quad	1529                            # 0x5f9
	.quad	1551                            # 0x60f
	.quad	1605                            # 0x645
	.quad	1630                            # 0x65e
	.quad	1649                            # 0x671
	.quad	1698                            # 0x6a2
	.quad	1727                            # 0x6bf
	.quad	1747                            # 0x6d3
	.quad	1799                            # 0x707
	.quad	1825                            # 0x721
	.quad	1854                            # 0x73e
	.quad	1904                            # 0x770
	.quad	1921                            # 0x781
	.quad	1939                            # 0x793
	.quad	1983                            # 0x7bf
	.quad	2001                            # 0x7d1
	.quad	2016                            # 0x7e0
	.quad	2066                            # 0x812
	.quad	2088                            # 0x828
	.quad	2107                            # 0x83b
	.quad	2153                            # 0x869
	.quad	2172                            # 0x87c
	.quad	2188                            # 0x88c
	.quad	2232                            # 0x8b8
	.quad	2252                            # 0x8cc
	.quad	2268                            # 0x8dc
	.quad	2314                            # 0x90a
	.quad	2334                            # 0x91e
	.quad	2350                            # 0x92e
	.quad	2403                            # 0x963
	.quad	2414                            # 0x96e
	.quad	2434                            # 0x982
	.quad	2484                            # 0x9b4
	.quad	2503                            # 0x9c7
	.quad	2524                            # 0x9dc
	.quad	2572                            # 0xa0c
	.quad	2599                            # 0xa27
	.quad	2619                            # 0xa3b
	.quad	2658                            # 0xa62
	.quad	2676                            # 0xa74
	.quad	2696                            # 0xa88
	.quad	2745                            # 0xab9
	.quad	2760                            # 0xac8
	.quad	2778                            # 0xada
	.quad	2832                            # 0xb10
	.quad	2850                            # 0xb22
	.quad	2869                            # 0xb35
	.quad	2917                            # 0xb65
	.quad	2936                            # 0xb78
	.quad	2952                            # 0xb88
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
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
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
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
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	46                              # 0x2e
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
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	0                               # 0x0
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
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
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	73                              # 0x49
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
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
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	61                              # 0x3d
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	53                              # 0x35
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	53                              # 0x35
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
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
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
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
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
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
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	88                              # 0x58
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
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
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
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
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	20                              # 0x14
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	43                              # 0x2b
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
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
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
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
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	70                              # 0x46
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
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
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
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
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	90                              # 0x5a
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	88                              # 0x58
	.quad	96                              # 0x60
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
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	33                              # 0x21
	.quad	36                              # 0x24
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
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.size	.L__constant_3000xindex, 24000

	.type	.L__constant_3000xf64,@object   # @__constant_3000xf64
	.p2align	6, 0x0
.L__constant_3000xf64:
	.quad	0x4023fe687f455a7d              # double 9.9968909999999997
	.quad	0x3ffddf70de8f6cf0              # double 1.867051
	.quad	0x401e3c061847f562              # double 7.5586169999999999
	.quad	0x4020b60ac7da1ec5              # double 8.3555510000000002
	.quad	0x400d31372a38b8ae              # double 3.6490309999999999
	.quad	0x401a1e121ee67514              # double 6.5293659999999996
	.quad	0x400a086162f166e0              # double 3.254092
	.quad	0x4017c577d955714c              # double 5.9428400000000003
	.quad	0x402097f540895d0b              # double 8.2967929999999992
	.quad	0x400424a7b4e54f7b              # double 2.5178980000000002
	.quad	0x400f7a5f41aef6f9              # double 3.934752
	.quad	0x4023cf954eb13dfb              # double 9.9054359999999999
	.quad	0x4018739da16616b5              # double 6.1129059999999997
	.quad	0x400be527a20578e6              # double 3.4868920000000001
	.quad	0x40161795b35b0bbf              # double 5.5230319999999997
	.quad	0x4022a5a3a08398a6              # double 9.3235139999999994
	.quad	0x3fd8a2c669057d18              # double 0.38493500000000003
	.quad	0x3fd1c443914f483d              # double 0.27760400000000002
	.quad	0x401da908e581cf78              # double 7.4150729999999995
	.quad	0x401c02e946801712              # double 7.0028430000000004
	.quad	0x4009afdc9c4da900              # double 3.2108699999999999
	.quad	0x401af52263d816ad              # double 6.7393890000000001
	.quad	0x40200ac27a63736d              # double 8.0210150000000002
	.quad	0x3fdf883771865519              # double 0.49268899999999999
	.quad	0x4005b914f483cafb              # double 2.7153719999999999
	.quad	0x3ff8b460242d05f3              # double 1.5440370000000001
	.quad	0x4020de41d4b6a61a              # double 8.4340960000000003
	.quad	0x3ff6bbfc6540cc79              # double 1.420895
	.quad	0x401331fddebd9019              # double 4.7988200000000001
	.quad	0x3fbff540895d0b74              # double 0.124836
	.quad	0x3ff6058cd20afa2f              # double 1.376355
	.quad	0x401d5e892253111f              # double 7.34232
	.quad	0x4006ccc0bdcad14a              # double 2.849977
	.quad	0x400195aea3161a1e              # double 2.1980870000000001
	.quad	0x4011f23b3636f3b2              # double 4.4865539999999999
	.quad	0x40187646f1561911              # double 6.1155049999999997
	.quad	0x401d1d86a8fc0d2c              # double 7.2788339999999998
	.quad	0x4000aa2014727dcc              # double 2.0830690000000001
	.quad	0x400fcfa0d77b7c78              # double 3.9763809999999999
	.quad	0x401477878b7a1c26              # double 5.1167280000000002
	.quad	0x4018556de33269e0              # double 6.0834270000000004
	.quad	0x4014a7aa25d8d79d              # double 5.163735
	.quad	0x4004e4d6e47dc37a              # double 2.6117379999999999
	.quad	0x40000f112fd32c62              # double 2.0073569999999998
	.quad	0x3ff157b95a294142              # double 1.083917
	.quad	0x4012dd8c6d612c6b              # double 4.7163560000000002
	.quad	0x401157be553ac4f8              # double 4.3356870000000001
	.quad	0x402276ce13f4a98b              # double 9.2320410000000006
	.quad	0x401bb2a6b0d95140              # double 6.9244640000000004
	.quad	0x40179fcc5b8dc550              # double 5.906053
	.quad	0x40083ef954eb13e0              # double 3.0307490000000001
	.quad	0x402284a44c7b02d6              # double 9.2590660000000007
	.quad	0x401c48427418d691              # double 7.0705660000000004
	.quad	0x40223f04ff43419e              # double 9.1230849999999997
	.quad	0x40103b51372a38b9              # double 4.0579270000000003
	.quad	0x4000fff79c842fa5              # double 2.124984
	.quad	0x4010aa53fc0096ff              # double 4.1663360000000003
	.quad	0x3fb018a43bb40b35              # double 0.062876000000000001
	.quad	0x3fad8a979e16d6dc              # double 0.057697999999999999
	.quad	0x401e41a9b8cb8e08              # double 7.5641239999999996
	.quad	0x4018e9af9ebe9c88              # double 6.2282089999999997
	.quad	0x3fd3227d028a1dfc              # double 0.29898000000000002
	.quad	0x3ff3fd8f0c77dd87              # double 1.249404
	.quad	0x4023aeeac8605682              # double 9.8416350000000001
	.quad	0x3fd6c026cc1ca3a5              # double 0.35547800000000002
	.quad	0x4010256bca5375c9              # double 4.0365440000000001
	.quad	0x401e7c48adeebb34              # double 7.6213709999999999
	.quad	0x3fda1711947cfa27              # double 0.40765800000000002
	.quad	0x401504f6dfc5cdd5              # double 5.254848
	.quad	0x402305fbd6a593a3              # double 9.5116870000000002
	.quad	0x3ff763736cdf266c              # double 1.4617800000000001
	.quad	0x4002b9210385c67e              # double 2.340395
	.quad	0x4015ffd32c625e9a              # double 5.4998290000000001
	.quad	0x40096de76427c7c5              # double 3.1786639999999999
	.quad	0x3ffbfc5bd0e12e84              # double 1.7491110000000001
	.quad	0x3ff012c061847f56              # double 1.004578
	.quad	0x40044bdfd2630ec3              # double 2.537048
	.quad	0x401e4a2e3c536d65              # double 7.5724419999999996
	.quad	0x4009ed948dc11e43              # double 3.2410060000000001
	.quad	0x4008c91afc04c8bd              # double 3.0981960000000002
	.quad	0x4017c1f6cacd184c              # double 5.9394179999999999
	.quad	0x40213e4b2314013f              # double 8.6216670000000004
	.quad	0x4017e073de1e2de8              # double 5.9691919999999996
	.quad	0x401dfd61b2a27f1b              # double 7.4974429999999996
	.quad	0x3ff846e9ff0cbaf9              # double 1.5173129999999999
	.quad	0x4009f8887229e908              # double 3.2463540000000002
	.quad	0x40178a9d627bf61b              # double 5.8853660000000003
	.quad	0x40228f0435efa616              # double 9.2793290000000006
	.quad	0x3fe97049a9973d9f              # double 0.79495700000000002
	.quad	0x4022e47000431bdf              # double 9.4461670000000008
	.quad	0x401c29c6f36ef805              # double 7.0407979999999997
	.quad	0x3fe9897e996312f5              # double 0.79803400000000002
	.quad	0x400f4d35a858793e              # double 3.9127000000000001
	.quad	0x400b5ff9b56323bc              # double 3.4218630000000001
	.quad	0x40120dec5f394b7b              # double 4.5135969999999999
	.quad	0x401119131ec0b567              # double 4.2744869999999997
	.quad	0x400b02595bbbe879              # double 3.376147
	.quad	0x4017b4028e4fb97c              # double 5.9257910000000003
	.quad	0x3fffe81ba7fc32ec              # double 1.994167
	.quad	0x401b8d6cb5350093              # double 6.8881100000000002
	.quad	0x4013817f4128bf3c              # double 4.8764620000000001
	.quad	0x4015eca600b02928              # double 5.4811019999999999
	.quad	0x40222169c23b7953              # double 9.0652600000000003
	.quad	0x400dce379b77c02b              # double 3.725692
	.quad	0x400e6fb00bcbe61d              # double 3.804535
	.quad	0x400f523cc8de2ac3              # double 3.9151549999999999
	.quad	0x4020b7e542e557de              # double 8.3591709999999999
	.quad	0x40204c792d1287c2              # double 8.149362
	.quad	0x3fd55fd47bedb728              # double 0.33397399999999999
	.quad	0x400aec5c13fd0d06              # double 3.3654099999999998
	.quad	0x3fd418a43bb40b35              # double 0.31400400000000001
	.quad	0x4017a156191148fe              # double 5.9075550000000003
	.quad	0x3ffacff64cf8d717              # double 1.675772
	.quad	0x40037de82d7b634e              # double 2.4364780000000001
	.quad	0x400c076af89c5e70              # double 3.503622
	.quad	0x4013bb4bf8fcd680              # double 4.9329070000000002
	.quad	0x3ff41fc5cdd50a89              # double 1.257757
	.quad	0x401d1b866e43aa7a              # double 7.2768800000000002
	.quad	0x400ef4f82f512663              # double 3.8696139999999999
	.quad	0x40072e7c49fd7a14              # double 2.8976980000000001
	.quad	0x401de7e1b8ed1bf8              # double 7.4764470000000002
	.quad	0x400194dad31fcd25              # double 2.1976830000000001
	.quad	0x40238cda4ce8101f              # double 9.7751029999999996
	.quad	0x401501e3a7daa4fd              # double 5.2518450000000003
	.quad	0x40044594af4f0d84              # double 2.5339749999999999
	.quad	0x3fca80841ede1199              # double 0.20704700000000001
	.quad	0x40201e44523f67f5              # double 8.0591150000000003
	.quad	0x401b10c7c0f45176              # double 6.7663869999999999
	.quad	0x4018be73e681a9b9              # double 6.1859890000000002
	.quad	0x401808d2a1f8e3ac              # double 6.008616
	.quad	0x4013e297396d0918              # double 4.9712800000000001
	.quad	0x400a9e3fbbd7b203              # double 3.3272699999999999
	.quad	0x400996ed6777079e              # double 3.1986949999999998
	.quad	0x4018e3eff1950332              # double 6.2225950000000001
	.quad	0x3fea509bf9c62a1b              # double 0.82233999999999996
	.quad	0x401f759b3d07c84b              # double 7.8648499999999996
	.quad	0x401019fd7a13c255              # double 4.0253810000000003
	.quad	0x4008ee6d15ad106f              # double 3.1164190000000001
	.quad	0x3fe3e3b03e20ccff              # double 0.62154399999999999
	.quad	0x3fef9e6ab9b23dd5              # double 0.98808799999999996
	.quad	0x401b9e52deca2553              # double 6.9046130000000003
	.quad	0x4023c285ec3dab5c              # double 9.8799279999999995
	.quad	0x3ff5839042d8c2a4              # double 1.3446199999999999
	.quad	0x40157ca2db61bb06              # double 5.371715
	.quad	0x40188855da272863              # double 6.13314
	.quad	0x3fb94738a3b57c4e              # double 0.098742999999999997
	.quad	0x4019da1986b9c305              # double 6.4629880000000002
	.quad	0x3ff2936933a0407d              # double 1.160989
	.quad	0x401602b4528283d3              # double 5.5026409999999997
	.quad	0x4020f704790b8499              # double 8.4824560000000009
	.quad	0x402085db76b3bb84              # double 8.2614400000000003
	.quad	0x4012bea78af3e469              # double 4.6861860000000002
	.quad	0x4010f646f1561911              # double 4.2405049999999997
	.quad	0x40161a3875925354              # double 5.5256059999999998
	.quad	0x400d1ad18d25edd0              # double 3.6380949999999999
	.quad	0x402104cc89b0ee4a              # double 8.5093730000000001
	.quad	0x40188d6a161e4f76              # double 6.1380999999999997
	.quad	0x400e70eed02cd39e              # double 3.8051430000000002
	.quad	0x401132d59d55e6bc              # double 4.2996429999999997
	.quad	0x3ff73722e1ac57e2              # double 1.4509609999999999
	.quad	0x401ca8c0485a0be5              # double 7.1647959999999999
	.quad	0x3ff422ac322291fb              # double 1.2584649999999999
	.quad	0x402388fadf2ecf20              # double 9.7675389999999993
	.quad	0x400a9109070fbeba              # double 3.320818
	.quad	0x401c7e1932d6ece1              # double 7.1231429999999998
	.quad	0x4014a30d306a2b17              # double 5.15923
	.quad	0x4010e026cc1ca3a5              # double 4.2188980000000003
	.quad	0x3fef52bf5515054b              # double 0.97885100000000002
	.quad	0x40236ba7546d3f9e              # double 9.7102609999999991
	.quad	0x3fda390c9107faa0              # double 0.40973199999999999
	.quad	0x401d02441fea8113              # double 7.2522130000000002
	.quad	0x4023e06833c6002a              # double 9.9382950000000001
	.quad	0x4007922af5771002              # double 2.9463710000000001
	.quad	0x4022b3a96d4c33b5              # double 9.3509019999999996
	.quad	0x4011050763a19008              # double 4.2549109999999999
	.quad	0x4020d44d87724fa9              # double 8.4146540000000005
	.quad	0x40175f63800218df              # double 5.843153
	.quad	0x3fdaa4df47f993d5              # double 0.41631299999999999
	.quad	0x401adf0739b024f6              # double 6.7178009999999997
	.quad	0x4006efadf2ecf206              # double 2.8670309999999999
	.quad	0x40164f46aa087ca6              # double 5.5774179999999998
	.quad	0x40079953586ca8a0              # double 2.9498660000000001
	.quad	0x401f650a88effe2a              # double 7.8486729999999998
	.quad	0x400afd4280ae1049              # double 3.3736619999999999
	.quad	0x3fe2983f91e646f1              # double 0.58108499999999996
	.quad	0x3fe2fb9389b52008              # double 0.59321000000000002
	.quad	0x400c13825e13b18e              # double 3.5095260000000001
	.quad	0x4011da99fa11a976              # double 4.4634780000000003
	.quad	0x40111e8c47a17f41              # double 4.2798319999999999
	.quad	0x3ffc3353b4b2fa94              # double 1.7625310000000001
	.quad	0x40145192a737110e              # double 5.0796609999999998
	.quad	0x4018c0ca600b0293              # double 6.1882720000000004
	.quad	0x4023fcac8e68e3ef              # double 9.9935039999999997
	.quad	0x401f13211cb039ef              # double 7.7686809999999999
	.quad	0x4015a6177ea1c68f              # double 5.4121990000000002
	.quad	0x3ffdda187a4a48f9              # double 1.8657459999999999
	.quad	0x402173f0563ed0f6              # double 8.7264429999999997
	.quad	0x40070bc408d8ec96              # double 2.8807450000000001
	.quad	0x4021d222706d5065              # double 8.9104189999999992
	.quad	0x402352fa93af74cd              # double 9.6620679999999996
	.quad	0x401923c81908e582              # double 6.2849430000000002
	.quad	0x4022063c74fb54a0              # double 9.0121800000000007
	.quad	0x401cacf9a06a6e33              # double 7.1689210000000001
	.quad	0x40166ec80c73abc9              # double 5.6081849999999998
	.quad	0x4023c0b2a6b0d951              # double 9.8763629999999995
	.quad	0x401b5934267839ce              # double 6.8371130000000004
	.quad	0x4012c8b9baa1511e              # double 4.696021
	.quad	0x401a26f5caf2d7f9              # double 6.5380469999999997
	.quad	0x4023f214488c60cc              # double 9.972811
	.quad	0x40117ff5c6c11a11              # double 4.3749609999999999
	.quad	0x4007c2a3cea6c1a0              # double 2.9700389999999999
	.quad	0x3ff11ad7518b0d0f              # double 1.069053
	.quad	0x401327353b4b2fa9              # double 4.7882889999999998
	.quad	0x4021c674080f98fa              # double 8.8876039999999996
	.quad	0x3ffffa908a265f0f              # double 1.9986729999999999
	.quad	0x3ff1bda2f8bdec5f              # double 1.108798
	.quad	0x4021144aa53fc009              # double 8.5396319999999992
	.quad	0x401ab1a6937d1fe6              # double 6.6734869999999997
	.quad	0x4021bb17481b21c4              # double 8.8654119999999991
	.quad	0x40222a7008a697af              # double 9.0828860000000002
	.quad	0x4012924edf612407              # double 4.6428789999999998
	.quad	0x401d4e7296f6512b              # double 7.3266090000000004
	.quad	0x40118b17ce52deca              # double 4.3858329999999999
	.quad	0x4003dacf7446f9ba              # double 2.4818410000000002
	.quad	0x40202158750c1b97              # double 8.0651279999999996
	.quad	0x40074a1d755bccaf              # double 2.9111889999999998
	.quad	0x400f138a3b57c4e3              # double 3.884541
	.quad	0x40094af5fd47bedb              # double 3.1616019999999998
	.quad	0x400419ef0f16f438              # double 2.5126629999999999
	.quad	0x402390d9945b6c37              # double 9.7829099999999993
	.quad	0x4015ace0b912dba5              # double 5.4188260000000001
	.quad	0x3fd719e30014f8b6              # double 0.36095500000000003
	.quad	0x400ae65b63d3e4ef              # double 3.362479
	.quad	0x400dc43bb40b34e7              # double 3.7208169999999998
	.quad	0x40238b990afe60c4              # double 9.7726520000000007
	.quad	0x401b3d9b1b79d90a              # double 6.810162
	.quad	0x3ff8871c53f39d1b              # double 1.532986
	.quad	0x400aa94ff0025bfb              # double 3.3326720000000001
	.quad	0x3ffe12f2b66b6178              # double 1.879626
	.quad	0x4021a9e0828c36db              # double 8.8317910000000008
	.quad	0x4006d996744b2b77              # double 2.8562439999999998
	.quad	0x3ff3356eac860568              # double 1.200545
	.quad	0x3fdea1db877ab325              # double 0.47862900000000003
	.quad	0x401c270f7b9e0610              # double 7.0381450000000001
	.quad	0x4015a16a8b8f14db              # double 5.4076329999999997
	.quad	0x4021c3632c1f42bb              # double 8.8816159999999993
	.quad	0x4008b60ae9680e06              # double 3.0888879999999999
	.quad	0x40223c4c37e6f71a              # double 9.1177689999999991
	.quad	0x4018ea554b8bef8d              # double 6.2288410000000001
	.quad	0x4001cf56eac86057              # double 2.2262400000000002
	.quad	0x401ad01040bfe3b0              # double 6.7031869999999998
	.quad	0x4023c0af5fd47bee              # double 9.8763380000000005
	.quad	0x40210a5247cb70ac              # double 8.5201589999999995
	.quad	0x40134606b7aa25d9              # double 4.8183850000000001
	.quad	0x400faf5ec80c73ac              # double 3.9606300000000001
	.quad	0x400720ad03d9a954              # double 2.8909549999999999
	.quad	0x4022710129cbab65              # double 9.2207120000000007
	.quad	0x40109a6b0d9513f9              # double 4.1507990000000001
	.quad	0x4022aeea854477ff              # double 9.3416329999999999
	.quad	0x401c42396073de1e              # double 7.0646719999999998
	.quad	0x4016396b3354c122              # double 5.5560729999999996
	.quad	0x400fdbf83382e44b              # double 3.9824069999999998
	.quad	0x3ffd3b1c0010c6f8              # double 1.8269310000000001
	.quad	0x401b54a5df2239e7              # double 6.8326640000000003
	.quad	0x4017163cb8173322              # double 5.7717159999999996
	.quad	0x401e25c422036007              # double 7.5368810000000001
	.quad	0x3ff237e6f71a7e31              # double 1.1386480000000001
	.quad	0x401d36106ab14ec2              # double 7.302797
	.quad	0x401ffb1d4f9c1f86              # double 7.9952290000000001
	.quad	0x40208cacf312b1b3              # double 8.2747569999999993
	.quad	0x401d66defc7a3982              # double 7.35046
	.quad	0x4022f0c9fb6134ce              # double 9.4702909999999996
	.quad	0x40137ababead4f59              # double 4.869853
	.quad	0x4015bfa69be09bb7              # double 5.4371590000000003
	.quad	0x401a177ff151e753              # double 6.5229489999999997
	.quad	0x401611eabbcb1cc9              # double 5.5174969999999997
	.quad	0x3ffffff583a53b8e              # double 1.9999899999999999
	.quad	0x4023930164840e17              # double 9.7871199999999998
	.quad	0x40214ef156191149              # double 8.654185
	.quad	0x3ff3775968512232              # double 1.2166380000000001
	.quad	0x400f1f30e7ff583a              # double 3.8902299999999999
	.quad	0x402288a19c9d5a18              # double 9.2668579999999991
	.quad	0x3ffdc3d9a95421c0              # double 1.8603149999999999
	.quad	0x3fee03e20ccff21b              # double 0.93797399999999997
	.quad	0x3ff063bddfc9ff93              # double 1.024351
	.quad	0x4010f4f61672324d              # double 4.2392200000000004
	.quad	0x3fc77574f722e1ac              # double 0.18327199999999999
	.quad	0x3fe2258b3f63c31e              # double 0.567083
	.quad	0x4020a13fd0d0678c              # double 8.3149399999999999
	.quad	0x3ff61526d8b1dd5d              # double 1.3801639999999999
	.quad	0x4022bcbd1244a622              # double 9.3686299999999996
	.quad	0x40041cf7878b7a1c              # double 2.5141439999999999
	.quad	0x401711376d549731              # double 5.766813
	.quad	0x3fa5d52c16df3f96              # double 0.042641999999999999
	.quad	0x401d428522ea0fd4              # double 7.3149610000000003
	.quad	0x40037ef7c243dccf              # double 2.4369960000000002
	.quad	0x3fd446994185058e              # double 0.31680900000000001
	.quad	0x3ff39bbf0dc768e0              # double 1.2255240000000001
	.quad	0x3ffac296b3354c12              # double 1.672507
	.quad	0x4016276cce5f7404              # double 5.5385010000000001
	.quad	0x401c7bf162ae4b02              # double 7.1210380000000004
	.quad	0x4015537de939eadd              # double 5.3315349999999997
	.quad	0x4023c81abd1aa822              # double 9.8908290000000001
	.quad	0x40032c7b890d5a5c              # double 2.3967200000000002
	.quad	0x4010113c254a3c64              # double 4.0168309999999998
	.quad	0x4020a5fd47bedb73              # double 8.3241980000000009
	.quad	0x400e30574b407033              # double 3.7736040000000002
	.quad	0x401d43baba7b9171              # double 7.3161420000000001
	.quad	0x401b3ca57a786c22              # double 6.8092249999999996
	.quad	0x400b99ee88df3733              # double 3.4501620000000002
	.quad	0x401774aa9717df1a              # double 5.8639320000000001
	.quad	0x400e465300581494              # double 3.784338
	.quad	0x3ff45d93c46d82ba              # double 1.2728459999999999
	.quad	0x402040b502ababeb              # double 8.1263810000000003
	.quad	0x40121afab53d640f              # double 4.5263470000000003
	.quad	0x4015a252ce032db2              # double 5.4085190000000001
	.quad	0x400fe3e63e8dda49              # double 3.9862790000000001
	.quad	0x4008a4ead0c3d252              # double 3.0805259999999999
	.quad	0x3fff54ab1d4f9c20              # double 1.9581710000000001
	.quad	0x4006d6390c9107fb              # double 2.8546010000000002
	.quad	0x4002a6bf8769ec2d              # double 2.33142
	.quad	0x4007147cfa26a22b              # double 2.8850039999999999
	.quad	0x40007e57d9dba909              # double 2.0616910000000002
	.quad	0x401c118c9fb6134d              # double 7.0171380000000001
	.quad	0x3fe1d002e2328f9f              # double 0.55664199999999997
	.quad	0x4012d6e0d23d4f16              # double 4.7098420000000001
	.quad	0x3ff1eba7b9170d63              # double 1.1200330000000001
	.quad	0x4001cde657b84dba              # double 2.2255370000000001
	.quad	0x401f9b3c3e74afd5              # double 7.9015969999999997
	.quad	0x401e8f6f08cc575c              # double 7.640072
	.quad	0x4008e3fb3743632c              # double 3.1113189999999999
	.quad	0x4023a2647fdc5932              # double 9.8171730000000004
	.quad	0x401950357a355044              # double 6.3283290000000001
	.quad	0x3fb8acaff6d33094              # double 0.096384999999999998
	.quad	0x400a6c5eb313be23              # double 3.302915
	.quad	0x400061fe21d96e9c              # double 2.0478480000000001
	.quad	0x40052e1e71044f1a              # double 2.647519
	.quad	0x401271e53a81dc0e              # double 4.6112260000000003
	.quad	0x400fc9aa1d755bcd              # double 3.9734690000000001
	.quad	0x40112287c200c0f0              # double 4.2837209999999999
	.quad	0x4010f43aeab7995f              # double 4.2385060000000001
	.quad	0x401d612dba4d6e48              # double 7.3449010000000001
	.quad	0x4015225f202107b8              # double 5.2835660000000004
	.quad	0x4009367dbb16c1e3              # double 3.1516069999999998
	.quad	0x401591704ff4341a              # double 5.3920300000000001
	.quad	0x4017988effe2a3cf              # double 5.8989830000000003
	.quad	0x3ffac228997c3d68              # double 1.6724019999999999
	.quad	0x4018cfbf83382e45              # double 6.2028790000000003
	.quad	0x4019ce060fe47992              # double 6.4511950000000002
	.quad	0x40126ba6266fd652              # double 4.6051260000000003
	.quad	0x4001bf6db940fece              # double 2.2184710000000001
	.quad	0x400850b7c3504c49              # double 3.0394130000000001
	.quad	0x400a5015c209246c              # double 3.289104
	.quad	0x402378b84988094e              # double 9.7357809999999994
	.quad	0x3fea6dedaec4a409              # double 0.82591899999999996
	.quad	0x400e640f23897204              # double 3.7988569999999999
	.quad	0x3ff3788765ba6efc              # double 1.216926
	.quad	0x3fe8b0468448cf7d              # double 0.77151800000000004
	.quad	0x40201599ed7c6fbd              # double 8.0421899999999997
	.quad	0x40158603925bb7b7              # double 5.3808730000000002
	.quad	0x40032357a355043e              # double 2.3922569999999999
	.quad	0x4016a2dba4d6e47e              # double 5.6590410000000002
	.quad	0x40188a46173b85e8              # double 6.135033
	.quad	0x401eec1d29dc725c              # double 7.7305799999999998
	.quad	0x400231fab96f21f7              # double 2.2744040000000001
	.quad	0x401503c4b09e98dd              # double 5.2536800000000001
	.quad	0x4007ad666a98244f              # double 2.9596680000000002
	.quad	0x401b125f633ce63a              # double 6.7679419999999997
	.quad	0x40176eb13dfb0d52              # double 5.858098
	.quad	0x3fa547e06961c369              # double 0.041563999999999997
	.quad	0x400ab9a30984e400              # double 3.340643
	.quad	0x4008d3879c4113c7              # double 3.1032860000000002
	.quad	0x3ff7d2849cb252ce              # double 1.488896
	.quad	0x3ffe40fdc1615ec0              # double 1.8908670000000001
	.quad	0x40102709b738e6d1              # double 4.0381229999999997
	.quad	0x4020f8ce0b912dba              # double 8.4859469999999995
	.quad	0x4022146aa087ca64              # double 9.0398759999999995
	.quad	0x400491287c200c0f              # double 2.570878
	.quad	0x401b27867f0aa21a              # double 6.7885989999999996
	.quad	0x401ef4024b33daf9              # double 7.7382900000000001
	.quad	0x4010ce5d9e40c847              # double 4.2015289999999998
	.quad	0x3ffe321b3aeee957              # double 1.8872329999999999
	.quad	0x4004b4ea8da7f3cf              # double 2.5883379999999998
	.quad	0x4021d3f5b5fa2270              # double 8.9139839999999992
	.quad	0x40072159817b95a3              # double 2.8912840000000002
	.quad	0x3ff71d3cbc48f10b              # double 1.4446380000000001
	.quad	0x3febd4ed2cbea4ec              # double 0.86974200000000001
	.quad	0x40011b46fdeb52ca              # double 2.1383190000000001
	.quad	0x4002c822ff08893b              # double 2.3477229999999998
	.quad	0x3fe3cde5d18090b4              # double 0.61888399999999999
	.quad	0x3ff8309741d084e8              # double 1.511863
	.quad	0x3ff0b3cf70153bd1              # double 1.0438989999999999
	.quad	0x4021943b0c4588a0              # double 8.7895129999999995
	.quad	0x3ffb97635e74299e              # double 1.7244600000000001
	.quad	0x3ffcb96d0917d6b6              # double 1.7952699999999999
	.quad	0x40124329802c0a4a              # double 4.565588
	.quad	0x4022b562bf11f927              # double 9.3542690000000003
	.quad	0x3ffee845996744b3              # double 1.9317070000000001
	.quad	0x40079ce9e5e24788              # double 2.9516179999999999
	.quad	0x4014211ec918e326              # double 5.0323440000000002
	.quad	0x3fef0e66cb10342b              # double 0.97050800000000003
	.quad	0x4000c28fe260b2c8              # double 2.0950009999999999
	.quad	0x401ca235b4edb2f6              # double 7.1584079999999997
	.quad	0x401df0a782906898              # double 7.4850139999999996
	.quad	0x40047bd7b2031ceb              # double 2.56047
	.quad	0x3ff1a1565c2d2780              # double 1.1018889999999999
	.quad	0x40211f7f06705c89              # double 8.5615159999999992
	.quad	0x4009de0370cdc875              # double 3.2334049999999999
	.quad	0x401c65f3519bd406              # double 7.0995609999999996
	.quad	0x40128e9813879c41              # double 4.6392519999999999
	.quad	0x401b365492ff4ba5              # double 6.8030569999999999
	.quad	0x402381e321a2e7f7              # double 9.753686
	.quad	0x4010e0bbb1f255f3              # double 4.2194659999999997
	.quad	0x3fd33af74cd3176a              # double 0.30047400000000002
	.quad	0x40146d35eb7457c1              # double 5.1066510000000003
	.quad	0x4008b275ee99a62f              # double 3.0871390000000001
	.quad	0x4021ef74cd31769b              # double 8.9676880000000008
	.quad	0x4013092e1ef73c0c              # double 4.7589649999999999
	.quad	0x3fa6aab042528ae7              # double 0.044270999999999998
	.quad	0x4017f43ed959a30a              # double 5.9885210000000004
	.quad	0x3fff883ba3443d47              # double 1.9707600000000001
	.quad	0x40214577531db446              # double 8.6356760000000001
	.quad	0x401f4f2064239607              # double 7.8272719999999997
	.quad	0x4019c4d6a161e4f7              # double 6.4422249999999996
	.quad	0x402026638433d6c7              # double 8.0749779999999998
	.quad	0x40132539b888722a              # double 4.7863530000000001
	.quad	0x3fc12873bc903ea7              # double 0.134047
	.quad	0x3fe4ab302f72b453              # double 0.64589700000000005
	.quad	0x4010f5b5fa22706d              # double 4.2399519999999997
	.quad	0x40115ae429e0a41a              # double 4.3387609999999999
	.quad	0x4020896a6a01259a              # double 8.2683900000000001
	.quad	0x4022c486ad2dcb14              # double 9.3838399999999992
	.quad	0x4005eaed99cbee80              # double 2.7397109999999998
	.quad	0x4014e5818c5c9a35              # double 5.2241270000000002
	.quad	0x401066a26e547171              # double 4.1002289999999997
	.quad	0x3ff5f4aec8d5c747              # double 1.3722369999999999
	.quad	0x4016a93b7d84901d              # double 5.6652659999999999
	.quad	0x3fc309fa54c55433              # double 0.14874200000000001
	.quad	0x401e40b3d4ae429e              # double 7.563186
	.quad	0x401328c7192ea52f              # double 4.789822
	.quad	0x3fe3a5d4a5df223a              # double 0.61399300000000001
	.quad	0x4020a93ad5bee3d6              # double 8.330527
	.quad	0x3fd433f42352eb5f              # double 0.31567099999999998
	.quad	0x4010f5718eb89507              # double 4.2396909999999997
	.quad	0x401cbc88e79aae6d              # double 7.1841160000000004
	.quad	0x4014a00d1b71758e              # double 5.1562999999999999
	.quad	0x40231b524399b2c4              # double 9.5533619999999999
	.quad	0x40209e299524bfd3              # double 8.3089110000000002
	.quad	0x4022310b417ca212              # double 9.0957889999999999
	.quad	0x40056dd93c46d82c              # double 2.6786370000000002
	.quad	0x3fda2089e34330d7              # double 0.40823599999999999
	.quad	0x3fe6c3e5321e603d              # double 0.71141299999999996
	.quad	0x401e8364388ebcc7              # double 7.6283120000000002
	.quad	0x4010a49906cca2db              # double 4.1607399999999997
	.quad	0x3ffd2cd29131ec0b              # double 1.8234429999999999
	.quad	0x40129db65ecc3e32              # double 4.6540160000000004
	.quad	0x40015edd052934ad              # double 2.1713200000000001
	.quad	0x401fcf2d3c792d13              # double 7.9523210000000004
	.quad	0x401324ee392e1ef7              # double 4.7860649999999998
	.quad	0x401ddc7b890d5a5c              # double 7.4653150000000004
	.quad	0x4022d37c7820a30e              # double 9.4130590000000005
	.quad	0x4021fe6e008e9b39              # double 8.9969330000000003
	.quad	0x3ff90bcad9ad85e0              # double 1.5653790000000001
	.quad	0x40104af533f42353              # double 4.0732010000000001
	.quad	0x4013173860999dcb              # double 4.7726759999999997
	.quad	0x4013ab0f27bb2fec              # double 4.9170499999999997
	.quad	0x4018568c26139000              # double 6.0845190000000002
	.quad	0x40160b213e3e2930              # double 5.5108689999999996
	.quad	0x40136b81b64e0547              # double 4.8549870000000004
	.quad	0x40193bdcad14a0a1              # double 6.308459
	.quad	0x4017caec4a4095f2              # double 5.9481669999999998
	.quad	0x401d5870da5daf08              # double 7.3363680000000002
	.quad	0x4019b7d1bb4916ca              # double 6.4295109999999998
	.quad	0x3fd4a6dacabc5155              # double 0.32268400000000003
	.quad	0x3ff0a3161a1db878              # double 1.0398160000000001
	.quad	0x4003074299d883ba              # double 2.3785449999999999
	.quad	0x401900fd3b29a1ba              # double 6.250966
	.quad	0x3fedf985271bcdbc              # double 0.93670900000000001
	.quad	0x40209e158750c1b9              # double 8.3087579999999992
	.quad	0x4022d32b3461309c              # double 9.4124389999999991
	.quad	0x401375c853c14834              # double 4.8650219999999997
	.quad	0x4023d19eb6390c91              # double 9.9094139999999999
	.quad	0x4019bec6bce8533b              # double 6.4363049999999999
	.quad	0x40112638433d6c72              # double 4.2873239999999999
	.quad	0x401560c996b7670a              # double 5.344519
	.quad	0x3fe85fbd6a593a2e              # double 0.761687
	.quad	0x3fff354195cc857f              # double 1.950502
	.quad	0x401a0c99ae924f22              # double 6.5123049999999996
	.quad	0x401e5e9ccb7d4174              # double 7.5923949999999998
	.quad	0x400d3ca8e2e2b8c7              # double 3.6546189999999998
	.quad	0x401c5e85fd04a2fd              # double 7.0923080000000001
	.quad	0x400e1ed5ae1cde5d              # double 3.765056
	.quad	0x3ff34348f53c579f              # double 1.203927
	.quad	0x40086e379b77c02b              # double 3.053817
	.quad	0x400c038c9752977d              # double 3.5017330000000002
	.quad	0x3feff5a964e8b7e5              # double 0.99873800000000001
	.quad	0x4012a36d22424a27              # double 4.6595959999999996
	.quad	0x40181eeb702602c9              # double 6.030195
	.quad	0x401196e503fb3743              # double 4.3973579999999997
	.quad	0x400a2aa19439de48              # double 3.2708159999999999
	.quad	0x4017f9b5e95b78cd              # double 5.9938580000000004
	.quad	0x400270ee49f51698              # double 2.305142
	.quad	0x4013a3415b1422cd              # double 4.9094290000000003
	.quad	0x4022bc178705425f              # double 9.3673669999999997
	.quad	0x401582b94d940789              # double 5.3776599999999997
	.quad	0x400d32a305532618              # double 3.6497250000000001
	.quad	0x40213f82b1f687b1              # double 8.6240439999999996
	.quad	0x4003cfb3311a543f              # double 2.476416
	.quad	0x40154f3b213e3e29              # double 5.3273739999999998
	.quad	0x3fffc9e6687f455a              # double 1.9867919999999999
	.quad	0x401bd06e19b90eaa              # double 6.9535450000000001
	.quad	0x400be752da98676a              # double 3.4879509999999998
	.quad	0x4022db780346dc5d              # double 9.4286499999999993
	.quad	0x4021db9496249a13              # double 8.9288679999999996
	.quad	0x4015d4e160d887ec              # double 5.457891
	.quad	0x40210f8f4730403a              # double 8.5303900000000006
	.quad	0x40030d5f138bcdff              # double 2.381529
	.quad	0x40115c8eabffcdab              # double 4.3403879999999999
	.quad	0x4005f5c853c14834              # double 2.7450109999999999
	.quad	0x401e8ae9ee45c359              # double 7.6356580000000002
	.quad	0x40212a91d9b1b79e              # double 8.5831440000000008
	.quad	0x402290a0902de00d              # double 9.2824749999999998
	.quad	0x4020d1aa3f034b0e              # double 8.4095019999999998
	.quad	0x401a6d145d851655              # double 6.6065230000000001
	.quad	0x3ff1c8cf7caa758a              # double 1.111526
	.quad	0x40175035371971c1              # double 5.828328
	.quad	0x4012394c87980f56              # double 4.5559560000000001
	.quad	0x40238b530ced4e4d              # double 9.7721180000000007
	.quad	0x40143e33acd5b680              # double 5.0607439999999997
	.quad	0x400311bac2df0d41              # double 2.3836569999999999
	.quad	0x4015a171e29b6b2b              # double 5.4076610000000001
	.quad	0x4020e8053e2d6239              # double 8.4531650000000003
	.quad	0x4015b6ee73e681aa              # double 5.4286440000000002
	.quad	0x3ff6813cab81f96a              # double 1.406552
	.quad	0x4016fe73a365cb36              # double 5.748488
	.quad	0x4008c5bd944aa540              # double 3.0965530000000001
	.quad	0x4013e0a3d70a3d71              # double 4.9693750000000003
	.quad	0x3fe331e18efbb0e6              # double 0.59983900000000001
	.quad	0x401aff049a9973da              # double 6.7490410000000001
	.quad	0x401a061c36976bc2              # double 6.5059670000000001
	.quad	0x3fd47a072d1aeb3e              # double 0.31994800000000001
	.quad	0x40112924f227d029              # double 4.2901800000000003
	.quad	0x401a73fa6defc7a4              # double 6.6132600000000004
	.quad	0x4023e47bedb72820              # double 9.9462580000000003
	.quad	0x401860c026cc1ca4              # double 6.0944830000000003
	.quad	0x3ffcdc39bcba3012              # double 1.803766
	.quad	0x400a9059641f6449              # double 3.3204829999999999
	.quad	0x4005f2d1aeb3dd12              # double 2.7435640000000001
	.quad	0x40230da0168b5cc0              # double 9.526612
	.quad	0x4012ef0b6b6e0d24              # double 4.7334420000000001
	.quad	0x4022aedbb59ddc1e              # double 9.3415199999999992
	.quad	0x4019802602c9081c              # double 6.3751449999999998
	.quad	0x3ff40096feb4a665              # double 1.2501439999999999
	.quad	0x3feb43d46b26bf87              # double 0.85202999999999995
	.quad	0x401ce8090b417ca2              # double 7.2265969999999999
	.quad	0x401996d938151a43              # double 6.3973129999999996
	.quad	0x402108b6b6e0d23d              # double 8.5170189999999995
	.quad	0x4020f4317acc4ef9              # double 8.4769400000000008
	.quad	0x40222fc6da448494              # double 9.0933139999999994
	.quad	0x3ffc2c5b078d92fb              # double 1.760829
	.quad	0x400d94fe79ee02a7              # double 3.6977509999999998
	.quad	0x4013403afb7e9100              # double 4.8127250000000004
	.quad	0x401e85cb35f3d7d4              # double 7.6306580000000004
	.quad	0x40055ef0f16f4385              # double 2.6713580000000001
	.quad	0x40215e5471715c64              # double 8.6842380000000005
	.quad	0x402331e3864cb5bb              # double 9.5974389999999996
	.quad	0x40069cd141a6937d              # double 2.8265709999999999
	.quad	0x401bc4213a0c6b48              # double 6.9415329999999997
	.quad	0x3ffd1883ba3443d4              # double 1.8184849999999999
	.quad	0x40050940357a3550              # double 2.6295169999999999
	.quad	0x3fe78f6ad70e6f2f              # double 0.73625700000000005
	.quad	0x400a85a5fc7e6b40              # double 3.315258
	.quad	0x4017ae8bc169c23b              # double 5.9204549999999996
	.quad	0x40205b8a3b57c4e3              # double 8.1787890000000001
	.quad	0x4018e864883fd502              # double 6.2269459999999999
	.quad	0x4022602539756c94              # double 9.1877840000000006
	.quad	0x3fd471c970f7b9e0              # double 0.31944499999999998
	.quad	0x4022f344c37e6f72              # double 9.4751340000000006
	.quad	0x4005e711d798d8a9              # double 2.7378269999999998
	.quad	0x4021b021d10b1fef              # double 8.8440080000000005
	.quad	0x401c61d9f4d37c13              # double 7.0955579999999996
	.quad	0x400a893ea2d2fe3f              # double 3.3170139999999999
	.quad	0x4020ef1ac14c660a              # double 8.4670009999999998
	.quad	0x3ff05569f4906035              # double 1.020853
	.quad	0x401fa999dcb5781c              # double 7.9156259999999996
	.quad	0x400b063736cdf267              # double 3.3780350000000001
	.quad	0x3ff412a411c2a023              # double 1.254551
	.quad	0x401bde0589acbc8c              # double 6.966818
	.quad	0x4008121d53cddd6e              # double 3.008845
	.quad	0x3ff6b558a7610279              # double 1.4192739999999999
	.quad	0x40225027525460aa              # double 9.1565499999999993
	.quad	0x4009189e774eebf6              # double 3.1370209999999998
	.quad	0x401f46202539756d              # double 7.8184820000000003
	.quad	0x40138dcad14a0a0f              # double 4.8884689999999997
	.quad	0x400f78116ebd4cfd              # double 3.933627
	.quad	0x401b909246bf0132              # double 6.8911829999999998
	.quad	0x40173b83cf2cf95d              # double 5.8081199999999997
	.quad	0x4014e5ba6efc371e              # double 5.2243440000000003
	.quad	0x4015e59ddc1e7968              # double 5.4742350000000002
	.quad	0x40116586876e1deb              # double 4.3491460000000002
	.quad	0x40126645a1cac083              # double 4.5998749999999999
	.quad	0x401d55d3996fa82f              # double 7.3338150000000004
	.quad	0x3fed6d00b45ae600              # double 0.91955600000000004
	.quad	0x40202535a858793e              # double 8.0726750000000003
	.quad	0x40213bf316e37154              # double 8.6170889999999999
	.quad	0x3fe1c62e4d1a6506              # double 0.55544199999999999
	.quad	0x401124edb2f661f2              # double 4.2860630000000004
	.quad	0x3ffa18fe69270b07              # double 1.6311020000000001
	.quad	0x40198a2d72ffd1dd              # double 6.3849390000000001
	.quad	0x4000dfdd65a14489              # double 2.1093090000000001
	.quad	0x3f743f1c75818c5d              # double 0.0049430000000000003
	.quad	0x4008eeb0b7c3504c              # double 3.1165479999999999
	.quad	0x401adb9f127f5e85              # double 6.7144740000000001
	.quad	0x3fea14013ec460ee              # double 0.81494200000000006
	.quad	0x401273dc486ad2dd              # double 4.6131450000000003
	.quad	0x401d2c925785f8d3              # double 7.2935270000000001
	.quad	0x402102860dcb9a9e              # double 8.5049290000000006
	.quad	0x401508ab92c06184              # double 5.2584669999999996
	.quad	0x4012639756c93a71              # double 4.5972569999999999
	.quad	0x400457bbf93ff25e              # double 2.5428389999999998
	.quad	0x400cca1272c94b38              # double 3.598668
	.quad	0x401a5f5c6c11a112              # double 6.5931259999999998
	.quad	0x401ce4052d666a98              # double 7.2226759999999999
	.quad	0x4021fd6adf71eaff              # double 8.9949560000000002
	.quad	0x4022cb4f61672325              # double 9.3970900000000003
	.quad	0x402000605681ecd5              # double 8.0007350000000006
	.quad	0x4002edb61bb05faf              # double 2.3660700000000001
	.quad	0x401f853e2d6238da              # double 7.8801199999999998
	.quad	0x4020f60cbf2b239a              # double 8.4805659999999996
	.quad	0x400ca49e44fa0514              # double 3.5803799999999999
	.quad	0x3fdef4f0d844d014              # double 0.48370000000000002
	.quad	0x40146f79c842fa51              # double 5.1088630000000004
	.quad	0x3ff39e646f156191              # double 1.22617
	.quad	0x40058e746cb966be              # double 2.6945579999999998
	.quad	0x3ffb89a133c1ce6c              # double 1.721101
	.quad	0x401b4d2674080f99              # double 6.825342
	.quad	0x4012963a9f383f0c              # double 4.6467080000000003
	.quad	0x401c25a682b62846              # double 7.0367680000000004
	.quad	0x4016563cb8173322              # double 5.5842159999999996
	.quad	0x4013f8e0c9d9d346              # double 4.9930450000000004
	.quad	0x3fdadabe27179bfe              # double 0.419601
	.quad	0x401380ac3a860dcc              # double 4.8756570000000004
	.quad	0x4015866a55087011              # double 5.381265
	.quad	0x401573d20f2becee              # double 5.3631060000000002
	.quad	0x40067865d7cb2d90              # double 2.8087879999999998
	.quad	0x40099f202107b784              # double 3.2026979999999998
	.quad	0x401a49fc6da44849              # double 6.5722519999999998
	.quad	0x4017eec28b2a6b0e              # double 5.9831640000000004
	.quad	0x402190a761027957              # double 8.782527
	.quad	0x401f5c664d3bf2f5              # double 7.8402339999999997
	.quad	0x400c4e503fb37436              # double 3.5382389999999999
	.quad	0x40176aaf35e310dc              # double 5.8541840000000001
	.quad	0x4011a47e06961c37              # double 4.4106370000000004
	.quad	0x4004e7e0ef99806f              # double 2.6132219999999999
	.quad	0x4000f5c8d9f9053a              # double 2.120012
	.quad	0x401e5f71a7e30878              # double 7.5932069999999995
	.quad	0x401c343d89ce4a7b              # double 7.0510159999999997
	.quad	0x4019b83fd5022574              # double 6.4299309999999998
	.quad	0x4014e63f572de43f              # double 5.2248510000000001
	.quad	0x40132a4b5568e821              # double 4.7913030000000001
	.quad	0x401ff2cc70867ad9              # double 7.987108
	.quad	0x3ff9881908e581cf              # double 1.5957269999999999
	.quad	0x3ff412be48a58b3f              # double 1.2545759999999999
	.quad	0x401a47b139c94f6a              # double 6.5700120000000002
	.quad	0x401c94fd6d7e889c              # double 7.1454979999999999
	.quad	0x3fe0a9f59ccfaeff              # double 0.52074699999999996
	.quad	0x3fef45a8155d5f57              # double 0.97725300000000003
	.quad	0x4012736199780baa              # double 4.6126769999999997
	.quad	0x40178b23571d1d47              # double 5.8858769999999998
	.quad	0x3fea576ee73e681b              # double 0.82317300000000004
	.quad	0x4022b77b7c7820a3              # double 9.3583639999999999
	.quad	0x400302fbe33acd5b              # double 2.3764569999999998
	.quad	0x4021afab53d640ea              # double 8.8431040000000003
	.quad	0x401c3d3804534bd7              # double 7.0597839999999996
	.quad	0x401fd285ec3dab5c              # double 7.9555889999999998
	.quad	0x4016303686a4ca4f              # double 5.5470829999999998
	.quad	0x401be9e16d6dc1a4              # double 6.9783989999999996
	.quad	0x4021b88a265f0f5a              # double 8.8604289999999999
	.quad	0x40173301eabbcb1d              # double 5.7998120000000002
	.quad	0x40175ba40d90e23b              # double 5.839493
	.quad	0x402120b6f9fcb0c0              # double 8.5638959999999997
	.quad	0x4012aab4fa48301a              # double 4.6667059999999996
	.quad	0x3fe2889c1b54195d              # double 0.57917600000000002
	.quad	0x40196d944aa53fc0              # double 6.357011
	.quad	0x3ffa7fa3b9ae0c17              # double 1.6561619999999999
	.quad	0x4021d400da1a9329              # double 8.9140689999999996
	.quad	0x4022eeaf6837f7be              # double 9.4661819999999999
	.quad	0x402082009f623077              # double 8.2539110000000004
	.quad	0x400482a90cd423d9              # double 2.5637989999999999
	.quad	0x40222d436b8f9b13              # double 9.0884049999999998
	.quad	0x401179df97aaac11              # double 4.3690170000000004
	.quad	0x401dd8b9fdbd2fa1              # double 7.4616470000000001
	.quad	0x3fee24bfd2e94680              # double 0.94198599999999999
	.quad	0x40101fed634549b6              # double 4.0311789999999998
	.quad	0x3fd82a0a958537e3              # double 0.37756600000000001
	.quad	0x402275bb384fd2a6              # double 9.2299439999999997
	.quad	0x4023e647778dd617              # double 9.949764
	.quad	0x4014a4dca8e2e2b9              # double 5.1609980000000002
	.quad	0x4014ba73f748a15a              # double 5.1820830000000004
	.quad	0x400c28b0079a2835              # double 3.5198670000000001
	.quad	0x40213dbd2fa0d77b              # double 8.6205839999999991
	.quad	0x4006f89374bc6a7f              # double 2.871375
	.quad	0x401ac729f59ccfaf              # double 6.694496
	.quad	0x401f9f17bd8be729              # double 7.9053639999999996
	.quad	0x40040e6e221c8a7a              # double 2.5070459999999999
	.quad	0x3fea61847f562175              # double 0.82440400000000003
	.quad	0x40105290257c914b              # double 4.0806279999999999
	.quad	0x40182973d9ec7000              # double 6.0404809999999998
	.quad	0x3fe476555c52e72e              # double 0.63944500000000004
	.quad	0x4020fbfe1975f2cb              # double 8.4921729999999993
	.quad	0x3ffbf6ff3ade2260              # double 1.7478020000000001
	.quad	0x40022711d798d8a9              # double 2.2690769999999998
	.quad	0x401337a5f41aef70              # double 4.8043440000000004
	.quad	0x4023c0288051c9f7              # double 9.8753089999999996
	.quad	0x40106fb762d83c6d              # double 4.1090980000000004
	.quad	0x401af3486f049a99              # double 6.7375809999999996
	.quad	0x3feb184c271fff7a              # double 0.84671600000000002
	.quad	0x3ff0cd1b71758e22              # double 1.0500750000000001
	.quad	0x402332960b6f9fcb              # double 9.5988009999999999
	.quad	0x401bde04c0592104              # double 6.9668150000000004
	.quad	0x4022c65881a15550              # double 9.3873940000000005
	.quad	0x4023bddca4b124d1              # double 9.8708240000000007
	.quad	0x401219d388a8b08e              # double 4.5252210000000002
	.quad	0x4014ad07852f7f4a              # double 5.1689740000000004
	.quad	0x4010b6d8f4f93bc1              # double 4.1785620000000003
	.quad	0x3ff9f3abc947064f              # double 1.62199
	.quad	0x3ffa4ef1348b2208              # double 1.6442730000000001
	.quad	0x4016d466f5019f3c              # double 5.7074239999999996
	.quad	0x401aeba8c586876e              # double 6.7301359999999999
	.quad	0x401957c6759ab6d0              # double 6.335718
	.quad	0x3fe6c371da37ef5b              # double 0.71135800000000005
	.quad	0x4001c7c73eee5259              # double 2.2225480000000002
	.quad	0x400567b99d451fc5              # double 2.6756470000000001
	.quad	0x4012ed65a14488c6              # double 4.731833
	.quad	0x4012609aed56b010              # double 4.594341
	.quad	0x401e3a5c1c6088d7              # double 7.5569920000000001
	.quad	0x40239100e6afcce2              # double 9.7832100000000004
	.quad	0x401fbad42c3c9eed              # double 7.9324500000000002
	.quad	0x401bf0b1bbcf4e87              # double 6.9850529999999997
	.quad	0x4016dc70c996b767              # double 5.715274
	.quad	0x401a41a9b8cb8e08              # double 6.5641239999999996
	.quad	0x40116d11be6e6538              # double 4.3565129999999996
	.quad	0x401d4de6ddf00abf              # double 7.3260759999999996
	.quad	0x3feb91a32b12d341              # double 0.86152799999999996
	.quad	0x3fefaa38b8ae31d7              # double 0.98952899999999999
	.quad	0x4012fef1bac2df0d              # double 4.7489689999999998
	.quad	0x3fd4f0fe047d3d43              # double 0.32720900000000003
	.quad	0x401982bc72e275ab              # double 6.3776719999999996
	.quad	0x401f6b66f9335d25              # double 7.8548850000000003
	.quad	0x4011b06b37867f0b              # double 4.4222840000000003
	.quad	0x3fe605d52c16df40              # double 0.68821200000000005
	.quad	0x40162a7eb6bf444e              # double 5.541499
	.quad	0x40229169a0ad8a11              # double 9.2840089999999993
	.quad	0x40227d4866a11ec9              # double 9.2446929999999998
	.quad	0x4008a6b7aa25d8d8              # double 3.0814050000000002
	.quad	0x4007a41248d7e026              # double 2.9551129999999999
	.quad	0x4010bd52c16df3f9              # double 4.1848859999999997
	.quad	0x3fdc1fc08fa7a850              # double 0.439438
	.quad	0x3fb9e0f7fcfc3f81              # double 0.101089
	.quad	0x4005e6c7eae5bc88              # double 2.7376860000000001
	.quad	0x4022d3fb7a5f41af              # double 9.414028
	.quad	0x40213aecaeea63b7              # double 8.6150870000000008
	.quad	0x400c4b6f9fcb0c02              # double 3.5368339999999998
	.quad	0x40223dca29845dc8              # double 9.1206829999999997
	.quad	0x40066469d7342edc              # double 2.7990300000000001
	.quad	0x400f90d38cda6e76              # double 3.945716
	.quad	0x3faef672b884406c              # double 0.060474
	.quad	0x3ff50ad362e90364              # double 1.315143
	.quad	0x4017305ff1d81f10              # double 5.7972409999999996
	.quad	0x4011f13122b7baed              # double 4.4855390000000002
	.quad	0x3fd9cffeb074a772              # double 0.40332000000000001
	.quad	0x4011910e8858ff76              # double 4.3916570000000004
	.quad	0x400178705425f202              # double 2.183808
	.quad	0x4009d045fe111277              # double 3.226696
	.quad	0x4010e24edf612407              # double 4.2210039999999998
	.quad	0x400f84199fe43676              # double 3.9395020000000001
	.quad	0x40230d2d666a9824              # double 9.5257369999999994
	.quad	0x3feb5e95b78cc9a7              # double 0.85529599999999995
	.quad	0x40142c087442c7fc              # double 5.0430010000000003
	.quad	0x4001754c985f06f7              # double 2.1822750000000002
	.quad	0x401e72a38b8ae31d              # double 7.6119519999999996
	.quad	0x401959d2391d5800              # double 6.3377160000000003
	.quad	0x4012d835158b8280              # double 4.7111400000000003
	.quad	0x4016f9057d1782d4              # double 5.7431850000000004
	.quad	0x4021de55e28aa433              # double 8.9342489999999994
	.quad	0x4023d9beb18116ec              # double 9.9252830000000002
	.quad	0x4020fcb5781c7150              # double 8.4935720000000003
	.quad	0x400f094898f605ab              # double 3.8795329999999999
	.quad	0x3fbc267839cd8128              # double 0.109962
	.quad	0x40152d8d79d0a676              # double 5.2944849999999999
	.quad	0x3ffff38d60a63305              # double 1.996961
	.quad	0x400266687f455a7d              # double 2.3000039999999999
	.quad	0x3fceb1ab0856e697              # double 0.23979700000000001
	.quad	0x4006679aae6c8f75              # double 2.8005879999999999
	.quad	0x4008466ba493c89f              # double 3.0343849999999999
	.quad	0x4022ef572de43ed9              # double 9.4674619999999993
	.quad	0x3fc0332f01754b06              # double 0.12656200000000001
	.quad	0x3feecf7caa7589f0              # double 0.96282800000000002
	.quad	0x4021a292817763e5              # double 8.8175240000000006
	.quad	0x400a281cb46bacf7              # double 3.2695859999999999
	.quad	0x40223a63f9a49c2c              # double 9.1140439999999998
	.quad	0x4021e570e6f2e8c0              # double 8.9481269999999994
	.quad	0x4010fbef8ceb356e              # double 4.2460310000000003
	.quad	0x3fe0842528ae74f3              # double 0.51613100000000001
	.quad	0x400795afaf859429              # double 2.948089
	.quad	0x4021e597f62b6ae8              # double 8.9484250000000003
	.quad	0x40028344c37e6f72              # double 2.3140960000000002
	.quad	0x4002096a26e54717              # double 2.254597
	.quad	0x3fe49c90c4dec1c2              # double 0.64411200000000002
	.quad	0x401e580c308feac4              # double 7.5859839999999998
	.quad	0x402067a9c12f09d9              # double 8.2024670000000004
	.quad	0x4013bf36ac647779              # double 4.9367320000000001
	.quad	0x401f1c10d7be9857              # double 7.7774080000000003
	.quad	0x4011f4bb5e0f7fd0              # double 4.4889960000000002
	.quad	0x3fd81dda059a73b4              # double 0.37682199999999999
	.quad	0x40238e4b018611fd              # double 9.7779159999999993
	.quad	0x40115ef30a4e379b              # double 4.3427239999999996
	.quad	0x3ffb78c32a8c9b84              # double 1.7169829999999999
	.quad	0x401daef459d9902a              # double 7.4208540000000003
	.quad	0x4020806cca2db61c              # double 8.2508300000000005
	.quad	0x4000463cfb3311a5              # double 2.0342959999999999
	.quad	0x4014ff77f27fe4bd              # double 5.2494810000000003
	.quad	0x401f11b003686a4d              # double 7.7672730000000003
	.quad	0x400c6933a0407cc8              # double 3.5513680000000001
	.quad	0x4020813c89f40a28              # double 8.2524149999999992
	.quad	0x400a51cb039ef0f1              # double 3.2899379999999998
	.quad	0x4000c03dddb1209f              # double 2.0938680000000001
	.quad	0x40060280ae104923              # double 2.7512219999999998
	.quad	0x40122c6f7a0b5ed9              # double 4.5433940000000002
	.quad	0x4002012a51e321a3              # double 2.250569
	.quad	0x3fff75afaf859429              # double 1.966232
	.quad	0x4014d6e2a80064aa              # double 5.2098490000000002
	.quad	0x40066095f2452c5a              # double 2.797161
	.quad	0x3ffa3a732df505d1              # double 1.63927
	.quad	0x4021b21f2990f302              # double 8.8478940000000001
	.quad	0x4001acd63cb81733              # double 2.2093929999999999
	.quad	0x401b9357a355043e              # double 6.8938889999999997
	.quad	0x3ff19564b662fdfc              # double 1.098973
	.quad	0x4010ce221c8a7a42              # double 4.2013020000000001
	.quad	0x401a19ff4fd6d7e9              # double 6.5253880000000004
	.quad	0x4000dddb1209edc0              # double 2.1083280000000002
	.quad	0x401d7956c0d6f545              # double 7.3684950000000002
	.quad	0x40092188b11409a2              # double 3.1413739999999999
	.quad	0x4011e816f0068db9              # double 4.4766500000000002
	.quad	0x401682f61ed5ae1d              # double 5.6278920000000001
	.quad	0x4022a43b4f616723              # double 9.3207649999999997
	.quad	0x402097d36f7e3d1d              # double 8.2965350000000004
	.quad	0x3ffd2d70e6f2e8c0              # double 1.8235939999999999
	.quad	0x4008d0292817763e              # double 3.1016409999999999
	.quad	0x400d86e2a80064aa              # double 3.6908620000000001
	.quad	0x40042f893faf4278              # double 2.5232109999999999
	.quad	0x4004b3005814940c              # double 2.5874030000000001
	.quad	0x401059f94855da27              # double 4.0878649999999999
	.quad	0x4015b156191148fe              # double 5.4231800000000003
	.quad	0x3ffdb8d92fb19e73              # double 1.857629
	.quad	0x401e4fdd65a14489              # double 7.5779930000000002
	.quad	0x40152b9b66f9335d              # double 5.2925849999999999
	.quad	0x3ff3255193708aad              # double 1.1966110000000001
	.quad	0x3fb476295208e150              # double 0.079927999999999999
	.quad	0x401bf8f0c77dd873              # double 6.993106
	.quad	0x4006f37d1fe64f55              # double 2.8688910000000001
	.quad	0x4014dbd66277c45d              # double 5.2146850000000002
	.quad	0x3fea72d5e071c53f              # double 0.82651799999999997
	.quad	0x400f1bd8383ad9f1              # double 3.8885960000000002
	.quad	0x4007ae2541d8e864              # double 2.960032
	.quad	0x3fe08e6f2e8c0486              # double 0.51738700000000004
	.quad	0x4010fda9435ac8a3              # double 4.2477159999999996
	.quad	0x400f80663c74fb55              # double 3.9376950000000002
	.quad	0x401eff826edaa92e              # double 7.7495209999999997
	.quad	0x402186922d948dc1              # double 8.7628339999999998
	.quad	0x4018853cddd6e04c              # double 6.130115
	.quad	0x401956e9bbf0dc77              # double 6.3348760000000004
	.quad	0x401e64d7f0ed3d86              # double 7.5984800000000003
	.quad	0x3fdcac6cdaf4adbc              # double 0.44802399999999998
	.quad	0x3ff61363f572de44              # double 1.379734
	.quad	0x3fe40b4395810625              # double 0.62637500000000002
	.quad	0x402361f6cacd184c              # double 9.6913359999999997
	.quad	0x4022064ba94bbe44              # double 9.0122959999999991
	.quad	0x401240867ad8e432              # double 4.5630129999999998
	.quad	0x40239bfd933e35c6              # double 9.8046690000000005
	.quad	0x401ae33acd5b6806              # double 6.7219040000000003
	.quad	0x4023b3a493c89f41              # double 9.8508650000000006
	.quad	0x4014d1d29dc725c4              # double 5.2049050000000001
	.quad	0x400d353d640e9d52              # double 3.6509960000000001
	.quad	0x3fcd780346dc5d64              # double 0.23022500000000001
	.quad	0x402288b029281776              # double 9.2669689999999996
	.quad	0x3ff1ec1e364bec68              # double 1.1201460000000001
	.quad	0x3fdcd76ab5807fed              # double 0.45064799999999999
	.quad	0x400224fc1df3300e              # double 2.268059
	.quad	0x401edbb8800eae19              # double 7.7145710000000002
	.quad	0x4019b705857afea4              # double 6.4287320000000001
	.quad	0x401f2fd50225742e              # double 7.7967110000000002
	.quad	0x3fcb86338b47c73f              # double 0.215033
	.quad	0x4020587ca643cc08              # double 8.1728260000000006
	.quad	0x4020a0259e1f3a58              # double 8.3127870000000001
	.quad	0x3fe2e295208e1501              # double 0.59015899999999999
	.quad	0x4013d87ebf22c01e              # double 4.9614209999999996
	.quad	0x400d2438088509c0              # double 3.6426850000000002
	.quad	0x400198f3eccc4695              # double 2.199684
	.quad	0x40122738a3b57c4e              # double 4.5383019999999998
	.quad	0x40126cc7d1bb4917              # double 4.6062310000000002
	.quad	0x3ff0f2990f301eac              # double 1.0592280000000001
	.quad	0x401374d37c1376d5              # double 4.8640879999999997
	.quad	0x3fe575e6362a5e78              # double 0.67064199999999996
	.quad	0x4009d43fa2ad3e92              # double 3.228637
	.quad	0x40091ceaf251c194              # double 3.1391200000000001
	.quad	0x401fa90c0ad03d9b              # double 7.9150850000000003
	.quad	0x3fe1a26e5471715c              # double 0.55107799999999996
	.quad	0x40056e73e681a9b9              # double 2.6789320000000001
	.quad	0x40061be6e6538690              # double 2.7636240000000001
	.quad	0x401bc653868fd19a              # double 6.9436780000000002
	.quad	0x3ffe6efa1e3eaf68              # double 1.902094
	.quad	0x4023c3ad9f0a1be3              # double 9.8821840000000005
	.quad	0x4010e5c63ae2541e              # double 4.2243890000000004
	.quad	0x3ffe7bbc6eb0b7c3              # double 1.9052089999999999
	.quad	0x4022cea0ba1f4b1f              # double 9.4035700000000002
	.quad	0x40035a22706d5065              # double 2.4190109999999998
	.quad	0x400ce894c447c30d              # double 3.6135649999999999
	.quad	0x4007877ccc037931              # double 2.9411559999999999
	.quad	0x4016e97c80841ede              # double 5.7280139999999999
	.quad	0x4017096b3354c122              # double 5.7591979999999996
	.quad	0x4010f2788db0574b              # double 4.2367879999999998
	.quad	0x3feb8d0edc3bd599              # double 0.86096899999999998
	.quad	0x40161a36e2eb1c43              # double 5.5255999999999998
	.quad	0x3fe37e996312f4cf              # double 0.60920399999999997
	.quad	0x40153b966be7afa7              # double 5.3081909999999999
	.quad	0x401f19b738e6d15b              # double 7.7751130000000001
	.quad	0x40173e7b3d8e0008              # double 5.8110169999999997
	.quad	0x3ffd91f1cfbb9496              # double 1.848131
	.quad	0x4003c86bdf4c2b52              # double 2.4728620000000001
	.quad	0x402326940357a355              # double 9.5753479999999999
	.quad	0x400e04463065f959              # double 3.752087
	.quad	0x40191a3f034b0e1b              # double 6.2756309999999997
	.quad	0x4021cb92e1ef73c1              # double 8.8976050000000004
	.quad	0x401139b499d0203e              # double 4.3063529999999997
	.quad	0x401aa4a2339c0ebf              # double 6.6607750000000001
	.quad	0x40129a47ecfe9b7c              # double 4.650665
	.quad	0x4005fe3c105186db              # double 2.7491379999999999
	.quad	0x4014a3037d63022e              # double 5.1591930000000001
	.quad	0x401a703ea704bc27              # double 6.6096139999999997
	.quad	0x4000755714b9cb68              # double 2.0572949999999999
	.quad	0x402155273d5bab22              # double 8.6663150000000009
	.quad	0x402041c99285a922              # double 8.1284910000000004
	.quad	0x3ff6a90abb44e50c              # double 1.4162699999999999
	.quad	0x4012db8c32a8c9b8              # double 4.7144019999999998
	.quad	0x40236ee957470eb2              # double 9.7166239999999995
	.quad	0x3fcb878316a05575              # double 0.21507299999999999
	.quad	0x40123e07a28bb0a3              # double 4.5605760000000002
	.quad	0x401902046c764ae0              # double 6.25197
	.quad	0x3ff65dcf893faf42              # double 1.3979029999999999
	.quad	0x401efa2f8bdec5f4              # double 7.7443220000000004
	.quad	0x4022eb0e5e679464              # double 9.4590940000000003
	.quad	0x400c544028e4fb98              # double 3.5411380000000001
	.quad	0x40175144028e4fb9              # double 5.8293609999999996
	.quad	0x4014bace24bba12b              # double 5.1824269999999997
	.quad	0x400eb89e774eebf6              # double 3.8401459999999998
	.quad	0x40047db445ed4a1b              # double 2.5613790000000001
	.quad	0x401eb2f72b452828              # double 7.6747709999999997
	.quad	0x4014e0635a426bb5              # double 5.2191289999999997
	.quad	0x400aa4cf0739b025              # double 3.330473
	.quad	0x40203f27fe4bcada              # double 8.1233520000000006
	.quad	0x4006aa05dd8f92b0              # double 2.8330190000000002
	.quad	0x4014f51c5c5718ec              # double 5.2393660000000004
	.quad	0x4017e732df505d10              # double 5.9757800000000003
	.quad	0x4022330856e696a2              # double 9.0996729999999992
	.quad	0x4008f71da37ef5a9              # double 3.1206619999999998
	.quad	0x4020b57f3061c79b              # double 8.3544859999999996
	.quad	0x400bdf10ecb74de0              # double 3.4839190000000002
	.quad	0x4021ca79fec99f1b              # double 8.8954620000000002
	.quad	0x4013d4ac6cdaf4ae              # double 4.9576890000000002
	.quad	0x401ea7da1ec4e725              # double 7.6639179999999997
	.quad	0x40130ac5c13fd0d0              # double 4.7605199999999996
	.quad	0x402211c347e8ccde              # double 9.0346930000000008
	.quad	0x3fbf924af0bf1a5d              # double 0.12332600000000001
	.quad	0x40233a9478c868ba              # double 9.614414
	.quad	0x400f8925785f8d2e              # double 3.9419659999999999
	.quad	0x401b8297bfa4c61e              # double 6.8775320000000004
	.quad	0x401a77d028a1dfb9              # double 6.6170049999999998
	.quad	0x402090d5a5b9628d              # double 8.2828800000000005
	.quad	0x401fdb1c864883fd              # double 7.9639759999999997
	.quad	0x3fe0623d0bfa0946              # double 0.511992
	.quad	0x40192f0281ba7fc3              # double 6.2959079999999998
	.quad	0x401ddc853c148345              # double 7.4653520000000002
	.quad	0x4010bb9c304ccee6              # double 4.1832130000000003
	.quad	0x401427a786c22681              # double 5.0387250000000003
	.quad	0x401afb691212513b              # double 6.7455179999999997
	.quad	0x401b82949a5657fb              # double 6.8775199999999996
	.quad	0x3fe9d02ababead4f              # double 0.80666099999999996
	.quad	0x400732f01754b05b              # double 2.8998719999999998
	.quad	0x4017ba7a41e57d9e              # double 5.9321070000000002
	.quad	0x3ffbcddb5525cc42              # double 1.7377579999999999
	.quad	0x4010bcf52b90a783              # double 4.1845290000000004
	.quad	0x4020a414c660a201              # double 8.3204709999999995
	.quad	0x400588d10f51ac9b              # double 2.691805
	.quad	0x401d574c4cdfaca3              # double 7.3352519999999997
	.quad	0x4020d3497b7414a5              # double 8.4126700000000003
	.quad	0x401a402e6644d877              # double 6.5626769999999999
	.quad	0x3fe963cfb3311a54              # double 0.79343399999999997
	.quad	0x401a52eb5f5f0b28              # double 6.5809759999999997
	.quad	0x4014ec69f8c21e1d              # double 5.2308729999999999
	.quad	0x40121d0247021d11              # double 4.5283290000000003
	.quad	0x401b92af9a8cdea0              # double 6.8932479999999998
	.quad	0x401c78e086bdf4c3              # double 7.1180440000000003
	.quad	0x40118795f676ea42              # double 4.3824079999999999
	.quad	0x4023edd3996fa82f              # double 9.9645050000000008
	.quad	0x4022c677f6b1a2a5              # double 9.3876340000000002
	.quad	0x4004dc9d5a187a4a              # double 2.6077219999999999
	.quad	0x3ffa9899bf5946c3              # double 1.662256
	.quad	0x40043c5d63886595              # double 2.5294750000000001
	.quad	0x3ff734fb549f9485              # double 1.4504349999999999
	.quad	0x401d30baa582dbe8              # double 7.297587
	.quad	0x40072106ab14ec20              # double 2.8911259999999999
	.quad	0x3fd8b1359791819d              # double 0.38581599999999999
	.quad	0x401010a63305100a              # double 4.0162589999999998
	.quad	0x40056310dbf0563f              # double 2.6733720000000001
	.quad	0x4001391c4b90214b              # double 2.1528860000000001
	.quad	0x4020653868fd199c              # double 8.1976960000000005
	.quad	0x4014f4955b4677b4              # double 5.2388510000000004
	.quad	0x40117bce4217d285              # double 4.3709040000000003
	.quad	0x401b7b6dca07f66f              # double 6.8705360000000004
	.quad	0x4013988051c9f72f              # double 4.8989269999999996
	.quad	0x40211193d5347a5b              # double 8.5343309999999999
	.quad	0x401f3ec204f2ae08              # double 7.811287
	.quad	0x40139a2a0a958538              # double 4.9005510000000001
	.quad	0x40163845564b6630              # double 5.5549520000000001
	.quad	0x4008e256bca5375d              # double 3.1105170000000002
	.quad	0x40049c46d82ba5a0              # double 2.5763069999999999
	.quad	0x40232f6f4be835df              # double 9.5926460000000002
	.quad	0x401fd5bb384fd2a6              # double 7.9587219999999999
	.quad	0x401d6a0c6b484d77              # double 7.3535630000000003
	.quad	0x401cfeb91b3f20a7              # double 7.2487529999999998
	.quad	0x40084bd7f51efb6e              # double 3.0370330000000001
	.quad	0x4020925e353f7cee              # double 8.2858750000000008
	.quad	0x40217741f212d773              # double 8.7329249999999998
	.quad	0x40071485e3da2f8c              # double 2.8850210000000001
	.quad	0x3fca4180d3cff64d              # double 0.205124
	.quad	0x3f97d6f976790321              # double 0.023281
	.quad	0x3fd712ba16e7a312              # double 0.36051800000000001
	.quad	0x4023e1ccb7d41744              # double 9.9410150000000001
	.quad	0x40226f8fabda0dfe              # double 9.2178930000000001
	.quad	0x3fd946994185058e              # double 0.39493400000000001
	.quad	0x3fd1731098d477bc              # double 0.272648
	.quad	0x402267d04a2fcefb              # double 9.2027610000000006
	.quad	0x40025c50ce4ead0c              # double 2.2950759999999999
	.quad	0x401390c8472c0e7c              # double 4.8913890000000002
	.quad	0x4001065d7cb2d906              # double 2.1281080000000001
	.quad	0x402164f8b588e369              # double 8.6972100000000001
	.quad	0x4013c55043e5321e              # double 4.9426889999999997
	.quad	0x401f1deca25529fe              # double 7.779223
	.quad	0x401b030728e92d56              # double 6.7529570000000003
	.quad	0x4022eb1f687b139d              # double 9.4592240000000007
	.quad	0x4022dfa3db3bfb59              # double 9.4367970000000003
	.quad	0x3fec5bc01a36e2eb              # double 0.88619999999999999
	.quad	0x401b83cee9dd7ecc              # double 6.8787190000000002
	.quad	0x3fe4144028e4fb98              # double 0.62747200000000003
	.quad	0x4023f1707182235b              # double 9.9715609999999994
	.quad	0x401ec4e9813879c4              # double 7.6922969999999999
	.quad	0x4020e0374ff865d8              # double 8.4379220000000004
	.quad	0x4018ba9973d9ec70              # double 6.182226
	.quad	0x401a2cfa69be09bb              # double 6.5439239999999996
	.quad	0x4017769e3c968944              # double 5.8658380000000001
	.quad	0x4015a83f91e646f1              # double 5.4143049999999997
	.quad	0x402331bb8c32a8ca              # double 9.5971340000000005
	.quad	0x4014312ad81adea9              # double 5.0480150000000004
	.quad	0x4017f1de26916441              # double 5.986199
	.quad	0x40147f98fa376923              # double 5.1246070000000001
	.quad	0x400f6a6fc58ab92c              # double 3.926971
	.quad	0x3fba65add9c27e95              # double 0.103114
	.quad	0x40208aed56b00ffe              # double 8.2713420000000006
	.quad	0x400319b6f5caf2d8              # double 2.387556
	.quad	0x402330663c74fb55              # double 9.5945300000000006
	.quad	0x401b15c9e6687f45              # double 6.7712779999999997
	.quad	0x3fe9cf91a32b12d3              # double 0.80658799999999997
	.quad	0x40078fa26a22b389              # double 2.9451339999999999
	.quad	0x400922003ab862b2              # double 3.1416019999999998
	.quad	0x401d19d451fc4c16              # double 7.2752239999999997
	.quad	0x4010c49667b5f1bf              # double 4.19198
	.quad	0x4004e7ad080b673c              # double 2.6131229999999999
	.quad	0x40203d7f0ed3d85a              # double 8.1201100000000004
	.quad	0x400c0718a86d71f3              # double 3.5034649999999998
	.quad	0x3ff4d63ed0f62739              # double 1.302306
	.quad	0x3fc5efb6dca07f67              # double 0.171378
	.quad	0x4005fcfaacd9e83e              # double 2.7485249999999999
	.quad	0x4021f1ac79702e66              # double 8.9720189999999995
	.quad	0x400521bc98a222d5              # double 2.641473
	.quad	0x401bb549f94855da              # double 6.9270399999999999
	.quad	0x40167eb702602c91              # double 5.6237450000000004
	.quad	0x402211a8cdea033e              # double 9.0344909999999992
	.quad	0x400848522ea0fd3b              # double 3.0353129999999999
	.quad	0x3ff407b99d451fc5              # double 1.2518860000000001
	.quad	0x3faf470eb24a6a87              # double 0.061088999999999997
	.quad	0x3ff7ab25b317efe1              # double 1.479284
	.quad	0x3fbe53fc0096feb5              # double 0.118469
	.quad	0x401ef1116a8b8f15              # double 7.7354180000000001
	.quad	0x400bb123c42a66dc              # double 3.4614940000000001
	.quad	0x4020fb9756c93a71              # double 8.4913889999999999
	.quad	0x4013b0c5a8155d5f              # double 4.9226289999999997
	.quad	0x3fcb1dcd7060bb2c              # double 0.21184700000000001
	.quad	0x400043810e8858ff              # double 2.0329609999999998
	.quad	0x3fecae18ac9f2fdc              # double 0.89625200000000004
	.quad	0x4008c01de2691644              # double 3.093807
	.quad	0x4000215fcc1871e7              # double 2.0162960000000001
	.quad	0x3ffd76bb1290257d              # double 1.8414870000000001
	.quad	0x4005b5d9a0f0a5f0              # double 2.713794
	.quad	0x4023b5983947496b              # double 9.8546770000000005
	.quad	0x400bd819d2391d58              # double 3.480518
	.quad	0x40053cbee807bbb6              # double 2.6546609999999999
	.quad	0x4021c6fda836eb4f              # double 8.8886540000000007
	.quad	0x4004b7c0b1359792              # double 2.5897230000000002
	.quad	0x4020e8ebcc6c54bd              # double 8.4549240000000001
	.quad	0x4017afaf42784a94              # double 5.9215669999999996
	.quad	0x3ff90dd1e53a81dc              # double 1.565874
	.quad	0x3ff0d9ff4fd6d7e9              # double 1.0532220000000001
	.quad	0x4009a8f9f44d4456              # double 3.2075079999999998
	.quad	0x3ff474acaff6d331              # double 1.2784850000000001
	.quad	0x4018057c914b167f              # double 6.0053580000000002
	.quad	0x4020874b40703298              # double 8.264246
	.quad	0x401f01fff79c8430              # double 7.7519530000000003
	.quad	0x4006340aaeafab54              # double 2.7754110000000001
	.quad	0x40191389b52007dd              # double 6.2690799999999998
	.quad	0x3ff5b7dfa00e27e1              # double 1.357391
	.quad	0x40230cd3bf2f5558              # double 9.5250529999999997
	.quad	0x401e2b1b36bd2b6f              # double 7.5420959999999999
	.quad	0x40052e0114d2f5dc              # double 2.6474630000000001
	.quad	0x400ac1d084e831ad              # double 3.3446359999999999
	.quad	0x4011d539756c93a7              # double 4.4582269999999999
	.quad	0x3ff5d0ff97247454              # double 1.3635250000000001
	.quad	0x3fcc35b4edb2f662              # double 0.220389
	.quad	0x4015c158fb43d89d              # double 5.4388160000000001
	.quad	0x3fd9588e368f0846              # double 0.39602999999999999
	.quad	0x4015867caea747d8              # double 5.381335
	.quad	0x400ae18a43bb40b3              # double 3.3601269999999999
	.quad	0x4010b3f3e0370cdd              # double 4.1757350000000004
	.quad	0x402214ff43419e30              # double 9.04101
	.quad	0x4023ba2ff08893b8              # double 9.8636470000000002
	.quad	0x3ffe42ff8ec0f883              # double 1.891357
	.quad	0x4003c155d5f56a7b              # double 2.4694020000000001
	.quad	0x40238ec2ce464990              # double 9.7788299999999992
	.quad	0x400f43ed959a3098              # double 3.9081679999999999
	.quad	0x401cf3201040bfe4              # double 7.2374270000000003
	.quad	0x40160091c087442c              # double 5.5005559999999996
	.quad	0x40030312f4cf4a56              # double 2.3765010000000002
	.quad	0x401737eed45e9186              # double 5.8046220000000002
	.quad	0x40023fb69984a0e4              # double 2.28111
	.quad	0x4010ee37585be1a8              # double 4.2326329999999999
	.quad	0x400d776c4827b6fe              # double 3.6833119999999999
	.quad	0x3fe3688bda9435ad              # double 0.60651200000000005
	.quad	0x4002ba36e2eb1c43              # double 2.3409249999999999
	.quad	0x3ffb56b11c6d1e11              # double 1.7086650000000001
	.quad	0x3fd38c8eef1bac2e              # double 0.305454
	.quad	0x401bdf70de8f6cf0              # double 6.9682040000000001
	.quad	0x4020414ec204f2ae              # double 8.1275539999999999
	.quad	0x3ffe16eefa1e3eaf              # double 1.8805989999999999
	.quad	0x3fed170b49e01de2              # double 0.90906299999999995
	.quad	0x4022abe33acd5b68              # double 9.3357179999999999
	.quad	0x4011d25fe974a340              # double 4.455444
	.quad	0x4000dc49774256bd              # double 2.1075620000000002
	.quad	0x401cfeb2d0a24463              # double 7.248729
	.quad	0x401bfafe60c38f36              # double 6.9951109999999996
	.quad	0x3fe5ef8ceb356da0              # double 0.68549199999999999
	.quad	0x3ff0479c4113c686              # double 1.0174829999999999
	.quad	0x401443f077ccc038              # double 5.0663470000000004
	.quad	0x4008a4e26d4801f7              # double 3.0805099999999999
	.quad	0x3fbbfdf7e80389f8              # double 0.109344
	.quad	0x3fe68e0008637bd0              # double 0.70483399999999996
	.quad	0x3ffd2f0ae536501e              # double 1.823985
	.quad	0x401ddf42bb6672fc              # double 7.4680280000000003
	.quad	0x4013db7ae5796bfd              # double 4.9643360000000003
	.quad	0x40035bc87db2b346              # double 2.419816
	.quad	0x40034c93a7115161              # double 2.412391
	.quad	0x401b9dc69f8c21e2              # double 6.9040780000000002
	.quad	0x4015977ccc037931              # double 5.3979369999999998
	.quad	0x3fcd18a009f62307              # double 0.22731399999999999
	.quad	0x4022d76c69b5a640              # double 9.4207490000000007
	.quad	0x40104a2877ee4e27              # double 4.0724200000000002
	.quad	0x40130484944ed6fe              # double 4.7544120000000003
	.quad	0x4005f3eee5258927              # double 2.7441080000000002
	.quad	0x400e1d4738a3b57c              # double 3.7642959999999999
	.quad	0x3ff86fb2aae29739              # double 1.5272699999999999
	.quad	0x400363b70ef56649              # double 2.423689
	.quad	0x4006ea76965f5276              # double 2.864484
	.quad	0x3fecbf8fcd67fd3f              # double 0.89838399999999996
	.quad	0x400793dd11be6e65              # double 2.9471989999999999
	.quad	0x3fb057d1782d3847              # double 0.063839999999999994
	.quad	0x3fff91cb039ef0f1              # double 1.9730939999999999
	.quad	0x401251d9f4d37c13              # double 4.5799329999999996
	.quad	0x401e0d206c8711d8              # double 7.5128190000000003
	.quad	0x4013984b1ab0856e              # double 4.8987239999999996
	.quad	0x40088074ea8da7f4              # double 3.0627230000000001
	.quad	0x401d22c9081c2e34              # double 7.2839700000000001
	.quad	0x401ecf4dbdf8f473              # double 7.7024449999999999
	.quad	0x401f009e98dcdb38              # double 7.7506050000000001
	.quad	0x401a84528283d35f              # double 6.6292210000000003
	.quad	0x40217147ae147ae1              # double 8.7212499999999995
	.quad	0x400b0da33bd9cae2              # double 3.381659
	.quad	0x4006d795b35b0bbf              # double 2.8552659999999999
	.quad	0x401faf7b9e060fe4              # double 7.9213699999999996
	.quad	0x3fcc433d6c721922              # double 0.220802
	.quad	0x4019cd823422467c              # double 6.4506920000000001
	.quad	0x40199fc2a8869c67              # double 6.4060160000000002
	.quad	0x3fd76cbd987c6328              # double 0.366012
	.quad	0x3ff89c8a7a41e57e              # double 1.5382180000000001
	.quad	0x3ff471a3b14a9047              # double 1.277744
	.quad	0x4007eec0724b76f7              # double 2.9915780000000001
	.quad	0x40201cd573647bab              # double 8.0563160000000007
	.quad	0x4021194dd72367e4              # double 8.5494219999999998
	.quad	0x401b5f40e5a35d68              # double 6.8430210000000002
	.quad	0x40009c011d3671ac              # double 2.076174
	.quad	0x401449ff92f2b66b              # double 5.0722639999999997
	.quad	0x3fd19c779a6b50b1              # double 0.275175
	.quad	0x40131205ff1d81f1              # double 4.767601
	.quad	0x401990520d130dfa              # double 6.3909380000000002
	.quad	0x3ff942fa5093964a              # double 1.5788519999999999
	.quad	0x3faf65fd8adab9f5              # double 0.061324999999999998
	.quad	0x4020a91bc5586445              # double 8.3302899999999998
	.quad	0x3ffba0f6f08cc576              # double 1.7267980000000001
	.quad	0x401c1d352220bc38              # double 7.0285229999999999
	.quad	0x401d5e6c4c5974e6              # double 7.3422099999999997
	.quad	0x4018f36a832b990b              # double 6.237711
	.quad	0x3fe17f327aa68f4b              # double 0.54677699999999996
	.quad	0x4021944b09e98dce              # double 8.7896350000000005
	.quad	0x40029b035bd512ec              # double 2.3256899999999998
	.quad	0x3ffd19392189bd84              # double 1.8186580000000001
	.quad	0x4019df3f52fc2657              # double 6.4680150000000003
	.quad	0x40219fdfc19c1722              # double 8.8122539999999994
	.quad	0x3ff0210adcd2d44e              # double 1.008067
	.quad	0x4006349c6f36ef80              # double 2.7756889999999999
	.quad	0x40234b3b320535ca              # double 9.6469360000000002
	.quad	0x401b4ceee0f3cb3e              # double 6.8251299999999997
	.quad	0x3ff69192641b328b              # double 1.4105399999999999
	.quad	0x4013d7980f55de59              # double 4.9605410000000001
	.quad	0x401e45753a3ec02f              # double 7.5678299999999998
	.quad	0x400499a73b42cc2d              # double 2.5750259999999998
	.quad	0x40102d851654d61b              # double 4.0444529999999999
	.quad	0x400c64f09528f191              # double 3.5492870000000001
	.quad	0x4018ff4e4430b179              # double 6.2493220000000003
	.quad	0x3ffd145a5fc7e6b4              # double 1.817469
	.quad	0x402026e0d23d4f16              # double 8.0759340000000002
	.quad	0x3ff4d38de6ddf00b              # double 1.3016490000000001
	.quad	0x400b41847f562175              # double 3.4069910000000001
	.quad	0x40142cfc3f811f4f              # double 5.0439309999999997
	.quad	0x4019ef8982cb20fb              # double 6.4839229999999999
	.quad	0x3ff3e9a2c669057d              # double 1.24454
	.quad	0x40133dbb59ddc1e8              # double 4.8102850000000004
	.quad	0x40160925785f8d2e              # double 5.5089319999999997
	.quad	0x40183851eb851eb8              # double 6.0549999999999997
	.quad	0x4013ae36d22424a2              # double 4.9201309999999996
	.quad	0x40201b35d249e450              # double 8.0531450000000007
	.quad	0x3ffeaafcce1c5825              # double 1.9167449999999999
	.quad	0x3fe160c5a8155d5f              # double 0.54306299999999996
	.quad	0x4021fea8112ba16e              # double 8.9973759999999992
	.quad	0x40141f601797cc3a              # double 5.03064
	.quad	0x40120e29b6b2af14              # double 4.5138309999999997
	.quad	0x3fe3f79a6b50b0f2              # double 0.62397499999999995
	.quad	0x4023b56c93a71151              # double 9.8543439999999993
	.quad	0x40213f4aba387592              # double 8.6236169999999994
	.quad	0x401546cfc829cfdd              # double 5.3191519999999999
	.quad	0x4022ed855970b49e              # double 9.463908
	.quad	0x3fdc18ce2d1f1cfc              # double 0.43901400000000002
	.quad	0x3fdfe0008637bd06              # double 0.49804700000000002
	.quad	0x401c69930be0ded3              # double 7.1031000000000004
	.quad	0x4020f84a515ce9e6              # double 8.4849420000000002
	.quad	0x400e63ca7503b81b              # double 3.7987259999999998
	.quad	0x4020d81040bfe3b0              # double 8.4219989999999996
	.quad	0x4011a35f3d7d3911              # double 4.4095430000000002
	.quad	0x4011e63d816aceab              # double 4.474844
	.quad	0x3ff6e7e0ef99806f              # double 1.431611
	.quad	0x40162c77574f722e              # double 5.5434239999999999
	.quad	0x4013c0bae89eba6b              # double 4.9382130000000002
	.quad	0x401505614df8b157              # double 5.2552539999999999
	.quad	0x4023848cd63cb817              # double 9.7588869999999996
	.quad	0x4010724cc6822ff1              # double 4.1116210000000004
	.quad	0x40128ba6efc371da              # double 4.6363789999999998
	.quad	0x4023f9d0e991ff71              # double 9.9879219999999993
	.quad	0x3fe5daee631f8a09              # double 0.682975
	.quad	0x4019911622813448              # double 6.391686
	.quad	0x402189650a45d420              # double 8.7683490000000006
	.quad	0x4023de44523f67f5              # double 9.9341150000000002
	.quad	0x400cf925bb7b6bb1              # double 3.6216539999999999
	.quad	0x40233c78c868b9fe              # double 9.6181090000000005
	.quad	0x40164bf162ae4b02              # double 5.5741630000000004
	.quad	0x40223d6e47dc37a4              # double 9.1199820000000002
	.quad	0x40201be29307af21              # double 8.0544630000000002
	.quad	0x400cb58537e2c55d              # double 3.5886330000000002
	.quad	0x4022cf7fae3608d1              # double 9.4052710000000008
	.quad	0x401ae2cf0f9d2bf5              # double 6.7214929999999997
	.quad	0x3fe27dc5931ca7d6              # double 0.57785299999999995
	.quad	0x401f349774256bca              # double 7.8013589999999997
	.quad	0x40122ca1cef240fb              # double 4.5435860000000003
	.quad	0x4003abcf0b6b6e0d              # double 2.4588909999999999
	.quad	0x4009a365cb35f3d8              # double 3.2047840000000001
	.quad	0x400b470eb24a6a87              # double 3.4096959999999998
	.quad	0x3ffa13f4a98aa865              # double 1.629872
	.quad	0x3fd369e7fb267c6c              # double 0.30333900000000003
	.quad	0x4014448301a79fed              # double 5.0669060000000004
	.quad	0x4011ee08aefb2aae              # double 4.4824549999999999
	.quad	0x3ffd6f5dbb9cf9a0              # double 1.8396889999999999
	.quad	0x4012319fc2a8869c              # double 4.5484609999999996
	.quad	0x3ff7351159c49774              # double 1.450456
	.quad	0x401ef5f56a7ac81d              # double 7.7401939999999997
	.quad	0x3feae4c729f59cd0              # double 0.84042700000000004
	.quad	0x40067416bdb1a6d7              # double 2.8066840000000002
	.quad	0x4019c9a0f0a5efe9              # double 6.4469029999999998
	.quad	0x4010e4f61672324d              # double 4.2235950000000004
	.quad	0x401b06fef7c243dd              # double 6.7568320000000002
	.quad	0x4011fc5e2cdc011d              # double 4.4964529999999998
	.quad	0x3fefb9cb6848beb6              # double 0.99143000000000003
	.quad	0x4016c3968d759ee9              # double 5.6910040000000004
	.quad	0x401f446f587d6f97              # double 7.8168309999999996
	.quad	0x40004a3cea6c1a05              # double 2.0362490000000002
	.quad	0x401400fe047d3d43              # double 5.0009690000000004
	.quad	0x401973e100607810              # double 6.3631630000000001
	.quad	0x400e35cd91eeaa6d              # double 3.7762709999999999
	.quad	0x3fe0231832fcac8e              # double 0.50428399999999995
	.quad	0x3fd3fba01eeed890              # double 0.31223299999999998
	.quad	0x3fff9350092ccf6c              # double 1.973465
	.quad	0x4019d4840e1719f8              # double 6.457535
	.quad	0x401547967caea748              # double 5.3199100000000001
	.quad	0x401b4f290abb44e5              # double 6.827305
	.quad	0x401e68c154c985f0              # double 7.6022999999999996
	.quad	0x40212ed3f9e7b80b              # double 8.5914610000000007
	.quad	0x400f835e74299d88              # double 3.9391449999999999
	.quad	0x40100d549731098d              # double 4.0130179999999998
	.quad	0x401fc758e219652c              # double 7.9446750000000002
	.quad	0x4012ed27c3936827              # double 4.7315969999999998
	.quad	0x401ee5b7cfe58601              # double 7.7243339999999998
	.quad	0x4010b5efe9318762              # double 4.1776730000000004
	.quad	0x400f70ecb74ddf87              # double 3.930139
	.quad	0x3fa28e4fb97bb731              # double 0.036242000000000003
	.quad	0x4023fe0f1b25f634              # double 9.9962090000000003
	.quad	0x400684c7b02d59d5              # double 2.8148339999999998
	.quad	0x401618b32ce89657              # double 5.5241210000000001
	.quad	0x3ff60197e5647347              # double 1.375389
	.quad	0x40152841aac53b08              # double 5.2893129999999999
	.quad	0x402218919ef954eb              # double 9.0479859999999999
	.quad	0x3fee3b9496249a13              # double 0.94477299999999997
	.quad	0x40239bc2b94d9408              # double 9.8042200000000008
	.quad	0x40104a979e16d6dc              # double 4.0728439999999999
	.quad	0x3ff82d698fe69271              # double 1.5110870000000001
	.quad	0x401d3eaf6837f7be              # double 7.3112159999999999
	.quad	0x3ffdc72b020c49ba              # double 1.8611249999999999
	.quad	0x40239b3fc86cebbc              # double 9.8032210000000006
	.quad	0x4013ad523b3636f4              # double 4.9192590000000003
	.quad	0x4010b87379746024              # double 4.1801279999999998
	.quad	0x3ff65888f861a60d              # double 1.3966149999999999
	.quad	0x40236d451fc4c166              # double 9.7134180000000008
	.quad	0x3ff9dcdf69878317              # double 1.6164240000000001
	.quad	0x4003233bd9cae211              # double 2.392204
	.quad	0x3ffd9aa60913a4f8              # double 1.8502559999999999
	.quad	0x3ffaf5e310dbf056              # double 1.6850309999999999
	.quad	0x4014952fc2656abe              # double 5.1456900000000001
	.quad	0x40131532e7b3d8e0              # double 4.770702
	.quad	0x40043bf9c62a1b5c              # double 2.5292849999999998
	.quad	0x4000e9d495182a99              # double 2.1141749999999999
	.quad	0x3fdc738a3b57c4e3              # double 0.444552
	.quad	0x4014db328b6d86ec              # double 5.2140599999999999
	.quad	0x401dd3fd50225743              # double 7.4570210000000001
	.quad	0x401d6c881e4712e4              # double 7.355988
	.quad	0x3ff5b9389b52007e              # double 1.35772
	.quad	0x40161e78183f91e6              # double 5.5297549999999998
	.quad	0x3ffab060bb2bba99              # double 1.668061
	.quad	0x40060994185058de              # double 2.754677
	.quad	0x40233db5525cc426              # double 9.6205239999999996
	.quad	0x40208c31bde82d7b              # double 8.2738169999999993
	.quad	0x4005e76c8b439581              # double 2.738
	.quad	0x3ffa460cbf2b239a              # double 1.642102
	.quad	0x4023426e5471715c              # double 9.6297479999999993
	.quad	0x3ff21dfeb8d82342              # double 1.132323
	.quad	0x401beb573eab367a              # double 6.9798249999999999
	.quad	0x401280d5629d840a              # double 4.6258140000000001
	.quad	0x401567cc39ffd60f              # double 5.3513650000000004
	.quad	0x40152b649d388a8b              # double 5.292376
	.quad	0x401cc3033a4723ab              # double 7.190442
	.quad	0x401906c3fc43b2dd              # double 6.2566069999999998
	.quad	0x4004b9e9d0e991ff              # double 2.5907779999999998
	.quad	0x3ffa24ef0281ba80              # double 1.6340170000000001
	.quad	0x3ff7bf609dcf8940              # double 1.4842230000000001
	.quad	0x4023a7d976ff3ade              # double 9.8278309999999998
	.quad	0x400fadc443914f48              # double 3.9598469999999999
	.quad	0x4023e1a5ebb7739f              # double 9.9407189999999996
	.quad	0x400ce9c347e8ccde              # double 3.6141420000000002
	.quad	0x40155f0cbaf965b2              # double 5.342822
	.quad	0x4021fa847b24638d              # double 8.9892920000000007
	.quad	0x40205e63e8dda48b              # double 8.1843559999999993
	.quad	0x3ff199029ae4f334              # double 1.0998559999999999
	.quad	0x3fe2d206c8711d7a              # double 0.58813800000000005
	.quad	0x4022f4e48626f60e              # double 9.4783059999999999
	.quad	0x4023cb7718655193              # double 9.8973929999999992
	.quad	0x4012d6e82949a565              # double 4.7098699999999996
	.quad	0x4019cd1f601797cc              # double 6.4503149999999998
	.quad	0x401e276ab5807fed              # double 7.5384929999999998
	.quad	0x401e80bbb1f255f3              # double 7.6257159999999997
	.quad	0x4017f6f2e8c0485a              # double 5.991161
	.quad	0x40150af89c5e6ff8              # double 5.2607140000000001
	.quad	0x3fc0ff6d330941c8              # double 0.132795
	.quad	0x400d5c8323358f2e              # double 3.670172
	.quad	0x40136f2e05ccc89b              # double 4.8585739999999999
	.quad	0x401ed3bd9cae2110              # double 7.7067779999999999
	.quad	0x402218746455eaee              # double 9.0477629999999998
	.quad	0x3ff68bec679cc74c              # double 1.4091610000000001
	.quad	0x3ff0e88051c9f72f              # double 1.0567629999999999
	.quad	0x4011b3ea704bc276              # double 4.4256989999999998
	.quad	0x400248b545c78a6e              # double 2.2855020000000001
	.quad	0x40229bccf28c79f6              # double 9.3042979999999993
	.quad	0x40225a964e8b7e4e              # double 9.1769280000000002
	.quad	0x3fec9a671ef30a4e              # double 0.89384799999999998
	.quad	0x40064d14a0a0f4d8              # double 2.7876370000000001
	.quad	0x4023ae21fafc8b00              # double 9.8401029999999992
	.quad	0x40148bf0995aaf79              # double 5.13666
	.quad	0x40234eefe4ffc979              # double 9.6541739999999993
	.quad	0x401b59dba908a266              # double 6.8377520000000001
	.quad	0x400beb1a2a4db164              # double 3.4897960000000001
	.quad	0x4020e979bfdf7e80              # double 8.4560069999999996
	.quad	0x3fe8a31e7d9988d3              # double 0.76991200000000004
	.quad	0x4013cf993d5347a6              # double 4.9527330000000003
	.quad	0x402395ad538ac190              # double 9.7923380000000009
	.quad	0x401391344806290f              # double 4.8918010000000001
	.quad	0x4014d162f166e009              # double 5.2044790000000001
	.quad	0x401171d14e3bcd36              # double 4.3611500000000003
	.quad	0x4021f62888b545c8              # double 8.9807780000000008
	.quad	0x3ffebce4217d284a              # double 1.921116
	.quad	0x4022568533b10774              # double 9.1689849999999992
	.quad	0x4023447219220ff5              # double 9.6336829999999995
	.quad	0x40069821294573a8              # double 2.8242820000000002
	.quad	0x4013db61bb05faec              # double 4.9642400000000002
	.quad	0x3ffa3e2e6ea85447              # double 1.6401809999999999
	.quad	0x4003c46e8f29d40f              # double 2.4709140000000001
	.quad	0x400c5ba6698bb4d5              # double 3.5447510000000002
	.quad	0x3ff427d028a1dfb9              # double 1.25972
	.quad	0x401101947cfa26a2              # double 4.2515429999999999
	.quad	0x40081691212513b6              # double 3.0110190000000001
	.quad	0x4014adaf4adbc665              # double 5.1696140000000002
	.quad	0x400ec01eeed8904f              # double 3.8438089999999998
	.quad	0x402028765ba6efc3              # double 8.0790279999999992
	.quad	0x4004f9ec7000431c              # double 2.6220330000000001
	.quad	0x4009c89eba6aca79              # double 3.2229589999999999
	.quad	0x400fb1bc55864452              # double 3.9617849999999999
	.quad	0x4013d5ea67e846a6              # double 4.9589020000000001
	.quad	0x401ab55970b49e02              # double 6.6770990000000001
	.quad	0x402360726d04e619              # double 9.6883730000000003
	.quad	0x40227991bc558644              # double 9.2374399999999994
	.quad	0x400c20f88333fc87              # double 3.5160990000000001
	.quad	0x400f19f77292c493              # double 3.8876789999999999
	.quad	0x402189e81cb46bad              # double 8.7693490000000001
	.quad	0x401ec75f6fd21ff3              # double 7.6947
	.quad	0x3ff960ec74320104              # double 1.586163
	.quad	0x3ff4b8cda6e75ff6              # double 1.295118
	.quad	0x4020a9d8622c4502              # double 8.3317289999999993
	.quad	0x40232a1d96e9bbf1              # double 9.5822570000000002
	.quad	0x3ffae8a6117720c9              # double 1.681799
	.quad	0x400281c3efae7925              # double 2.3133620000000001
	.quad	0x4000a286f8ad2568              # double 2.0793590000000002
	.quad	0x401572d490e66cb1              # double 5.362139
	.quad	0x4023f018e757928e              # double 9.9689399999999999
	.quad	0x4021e13c89f40a28              # double 8.9399149999999992
	.quad	0x40103e1b089a0275              # double 4.0606499999999999
	.quad	0x40150d9b5e95b78d              # double 5.2632880000000002
	.quad	0x40214c45cbbc2b95              # double 8.6489700000000003
	.quad	0x401618e10cf5b1c8              # double 5.5242959999999997
	.quad	0x3fefc0639d5e4a38              # double 0.99223499999999997
	.quad	0x402228d844d013a9              # double 9.0797749999999997
	.quad	0x3ff1aa6a012599ed              # double 1.1041049999999999
	.quad	0x3ff9a00d1b71758e              # double 1.601575
	.quad	0x3fed1713ad5bee3d              # double 0.90906699999999996
	.quad	0x40124ab81f969e3d              # double 4.5729680000000004
	.quad	0x401a00157eed45e9              # double 6.5000819999999999
	.quad	0x401f2ace24bba12b              # double 7.7918019999999996
	.quad	0x401c259210385c68              # double 7.0366900000000001
	.quad	0x4002fb1d92b7fe09              # double 2.3726150000000001
	.quad	0x40110b73d188f430              # double 4.2611840000000001
	.quad	0x401ad8af3e468cac              # double 6.7116059999999997
	.quad	0x3ff0598f1d3ed528              # double 1.021865
	.quad	0x400efcb70ac3a861              # double 3.8733960000000001
	.quad	0x402101784ec636b1              # double 8.5028710000000007
	.quad	0x4014e31b9b66f933              # double 5.2217849999999997
	.quad	0x4013a06bbdbe3c10              # double 4.9066609999999997
	.quad	0x4018be6e221c8a7a              # double 6.1859669999999998
	.quad	0x4012497a24894c44              # double 4.5717549999999996
	.quad	0x4021d98fe69270b0              # double 8.9249259999999992
	.quad	0x4022017e996312f5              # double 9.0029190000000003
	.quad	0x40183b4e9813879c              # double 6.0579169999999998
	.quad	0x3fffec9081c2e33f              # double 1.995255
	.quad	0x401dd0c6b484d76b              # double 7.4538830000000003
	.quad	0x3ffa72b239a38fbd              # double 1.6530020000000001
	.quad	0x40212b2a497fa5d3              # double 8.5843070000000008
	.quad	0x4003d8012dfd694d              # double 2.4804710000000001
	.quad	0x401aee71cda2b5a2              # double 6.732856
	.quad	0x3febcdc443914f48              # double 0.86886799999999997
	.quad	0x400a95ab7dc7abfc              # double 3.3230810000000002
	.quad	0x4006c371da37ef5b              # double 2.8454320000000002
	.quad	0x3fb9fdcdf6987831              # double 0.10152899999999999
	.quad	0x4009588b11409a24              # double 3.168234
	.quad	0x401b8cdb7ae5796c              # double 6.887556
	.quad	0x40178b5525cc4263              # double 5.8860669999999997
	.quad	0x40126bfec13b9f12              # double 4.6054639999999996
	.quad	0x400bd7de939eadd6              # double 3.4804050000000002
	.quad	0x401b84c271fff79d              # double 6.8796480000000004
	.quad	0x401bd448cf7caa76              # double 6.9573090000000004
	.quad	0x4019af2c3009b307              # double 6.4210669999999999
	.quad	0x3fe0febaf102363b              # double 0.53109499999999998
	.quad	0x3ff1f18a86d71f36              # double 1.12147
	.quad	0x3ff8191ab8e8ea3a              # double 1.5061290000000001
	.quad	0x401db9d66adb402d              # double 7.4314819999999999
	.quad	0x401484d4024b33db              # double 5.129715
	.quad	0x40218acbea4ebdd3              # double 8.7710869999999996
	.quad	0x3fe6ce5d5b24e9c4              # double 0.71269099999999996
	.quad	0x40208e70e2c12ad8              # double 8.2782049999999998
	.quad	0x400543f4666ec9e2              # double 2.6581809999999999
	.quad	0x4015b6634117f844              # double 5.4281129999999997
	.quad	0x3ff56d9ad85dfa87              # double 1.339259
	.quad	0x401ff3e4ef0281ba              # double 7.9881779999999996
	.quad	0x402014625e99e94b              # double 8.0398130000000005
	.quad	0x40150f81e8a2ec29              # double 5.2651440000000003
	.quad	0x40227a5a250f8402              # double 9.2389690000000009
	.quad	0x40013952d234eb9a              # double 2.15299
	.quad	0x3ff7586a8fc0d2c4              # double 1.4590860000000001
	.quad	0x401109ec2ce46499              # double 4.25969
	.quad	0x3fd5438d1d8a5482              # double 0.33224799999999999
	.quad	0x4004996a6a01259a              # double 2.57491
	.quad	0x40135a411c2a0232              # double 4.838139
	.quad	0x400fcef566490a35              # double 3.976054
	.quad	0x401f62f33ca31e7e              # double 7.8466310000000004
	.quad	0x40161dbfceb78898              # double 5.5290520000000001
	.quad	0x3fde2e09fe86833c              # double 0.47155999999999998
	.quad	0x401b25e2478854ce              # double 6.7869960000000003
	.quad	0x3fffab649d388a8b              # double 1.979344
	.quad	0x3fe4f0025bfad29a              # double 0.65429800000000005
	.quad	0x402280eb0318b934              # double 9.2517929999999992
	.quad	0x4020e5c22ab25b31              # double 8.4487469999999991
	.quad	0x400ccd7f0ed3d85a              # double 3.6003400000000001
	.quad	0x4020df5ab7dc7ac0              # double 8.4362390000000005
	.quad	0x401c35b1c8648840              # double 7.0524360000000001
	.quad	0x40037d60e94ee393              # double 2.4362200000000001
	.quad	0x401c84d8fd5cb791              # double 7.129734
	.quad	0x3ffd42b734b51373              # double 1.8287880000000001
	.quad	0x401470d49949e881              # double 5.1101859999999997
	.quad	0x401b42367e414e7f              # double 6.8146610000000001
	.quad	0x4021db9f340d4dc6              # double 8.9289489999999994
	.quad	0x401279ba5e353f7d              # double 4.6188750000000001
	.quad	0x40171caa7589efd8              # double 5.7779939999999996
	.quad	0x400e55454152b0a7              # double 3.791636
	.quad	0x401942bc2fc69729              # double 6.3151710000000003
	.quad	0x400616dd26b723ee              # double 2.761164
	.quad	0x401f9358f2e05ccd              # double 7.8938940000000004
	.quad	0x400966de76427c7c              # double 3.1752289999999999
	.quad	0x401699752977c88e              # double 5.6498609999999996
	.quad	0x3fe82ddbdb5d8948              # double 0.75559799999999999
	.quad	0x401f468f8e7ddca5              # double 7.8189070000000002
	.quad	0x401033ed527e5215              # double 4.0507099999999996
	.quad	0x40017d31337eb28e              # double 2.1861290000000002
	.quad	0x3ff8becaab8a5ce6              # double 1.5465800000000001
	.quad	0x4021f572580c3090              # double 8.9793880000000001
	.quad	0x3fe32b96f21f6cad              # double 0.59907100000000002
	.quad	0x4007e8f29d40ee07              # double 2.9887440000000001
	.quad	0x4020a7b0f6ad70e7              # double 8.3275220000000001
	.quad	0x4017ff28848387df              # double 5.9991779999999997
	.quad	0x4010a1333b96af04              # double 4.1574220000000004
	.quad	0x4020d3cbc48f10aa              # double 8.4136640000000007
	.quad	0x4008dc5c5718eb89              # double 3.1075979999999999
	.quad	0x4017bf51efb6dca0              # double 5.9368359999999996
	.quad	0x3ff47e4de3b8a19d              # double 1.2808360000000001
	.quad	0x4022aa7c17a89332              # double 9.3329780000000007
	.quad	0x401b6bb906466b1e              # double 6.8551979999999997
	.quad	0x4022bef9fcb0c027              # double 9.3730010000000003
	.quad	0x3ff9df05ea24cc68              # double 1.616949
	.quad	0x40176ca9691a75cd              # double 5.856115
	.quad	0x40076e368f084620              # double 2.9288150000000002
	.quad	0x401b09a176ddacef              # double 6.7594050000000001
	.quad	0x3fe6eee0f3cb3e57              # double 0.71665999999999996
	.quad	0x4015a63f141205bc              # double 5.41235
	.quad	0x400773996fa82e88              # double 2.9314450000000001
	.quad	0x4008624bba12b5e5              # double 3.0479959999999999
	.quad	0x40038474d9c6b053              # double 2.439676
	.quad	0x3ff5fdbe3c105187              # double 1.374449
	.quad	0x401a36a65cf67b1c              # double 6.553369
	.quad	0x401ab23ee1bd1eda              # double 6.6740680000000001
	.quad	0x401662378ab0c88a              # double 5.5959149999999998
	.quad	0x401df6b9c304ccee              # double 7.4909429999999997
	.quad	0x401997368ad68837              # double 6.3976689999999996
	.quad	0x401cff73c0c1fc8f              # double 7.2494649999999998
	.quad	0x4011ba133c1ce6c1              # double 4.4317140000000004
	.quad	0x3ff60f8c64fdb09a              # double 1.3787959999999999
	.quad	0x3ff4aa92e62131a9              # double 1.291644
	.quad	0x401cb7dfe32a0664              # double 7.1795650000000002
	.quad	0x40118480e8c8abd6              # double 4.3793980000000001
	.quad	0x401fb988094e5d5b              # double 7.9311829999999998
	.quad	0x3fd9f0b28522ea10              # double 0.40531600000000001
	.quad	0x400e129f59ccfaf0              # double 3.759093
	.quad	0x4008fe90ff972474              # double 3.1242999999999999
	.quad	0x401836a337a80cfa              # double 6.0533570000000001
	.quad	0x3fdb563ed0f62739              # double 0.42713899999999999
	.quad	0x4010abfca85caafc              # double 4.1679560000000002
	.quad	0x4021e3cd78c436fc              # double 8.9449269999999998
	.quad	0x40035e6ab9b23dd5              # double 2.4211019999999999
	.quad	0x3ffa88cf7caa758a              # double 1.658401
	.quad	0x40180145953586cb              # double 6.0012420000000004
	.quad	0x40180fb6dca07f67              # double 6.0153460000000001
	.quad	0x4021f0563ed0f627              # double 8.9694079999999996
	.quad	0x4015750331e3a7db              # double 5.3642700000000003
	.quad	0x4009a08a697aeddd              # double 3.203389
	.quad	0x401f8f4cb1897a68              # double 7.8899410000000003
	.quad	0x3fdcbd230b9dc2f4              # double 0.449044
	.quad	0x3fed2fc2656abde4              # double 0.91208
	.quad	0x4020c28240b78034              # double 8.3798999999999992
	.quad	0x4014ccd63cb81733              # double 5.2000359999999999
	.quad	0x4020ee290eed02cd              # double 8.4651569999999996
	.quad	0x4006cb6523704791              # double 2.8493140000000001
	.quad	0x3fd809c3ce2089e3              # double 0.37559599999999999
	.quad	0x4022dc2cc2d6a9c5              # double 9.4300289999999993
	.quad	0x40202fb7e90ff972              # double 8.0931999999999995
	.quad	0x4022d6b4a66559f7              # double 9.4193470000000001
	.quad	0x400fef52b90a7829              # double 3.991857
	.quad	0x401fc8487b99d452              # double 7.945589
	.quad	0x40013dfa00e27e0f              # double 2.155262
	.quad	0x3ffe36e3f78bbd38              # double 1.888401
	.quad	0x4020529cdc443915              # double 8.1613530000000001
	.quad	0x4013658255b035bd              # double 4.8491299999999997
	.quad	0x4015a14df8b15726              # double 5.4075240000000004
	.quad	0x40149b48d3ae685e              # double 5.1516450000000003
	.quad	0x40214a2706d50657              # double 8.6448289999999997
	.quad	0x40064fab53d640ea              # double 2.7889010000000001
	.quad	0x400b9c0ebedfa440              # double 3.4512
	.quad	0x401ccfd694ccab3f              # double 7.2029670000000001
	.quad	0x40149e0a41a261bf              # double 5.1543359999999998
	.quad	0x4014261aa3f034b1              # double 5.0372110000000001
	.quad	0x4011901f75104d55              # double 4.3907449999999999
	.quad	0x401640cae642bf98              # double 5.5632739999999998
	.quad	0x3ff7363f572de43f              # double 1.450744
	.quad	0x3fdf61c36976bc1f              # double 0.490342
	.quad	0x4018af0563ed0f62              # double 6.1709189999999996
	.quad	0x401b830be0ded289              # double 6.8779750000000002
	.quad	0x402081817b95a294              # double 8.2529409999999998
	.quad	0x4023289b951c5c57              # double 9.5793119999999998
	.quad	0x4022ee1fe21d96ea              # double 9.4650870000000005
	.quad	0x402351856a37ac3f              # double 9.6592210000000005
	.quad	0x400609552e2fbe34              # double 2.7545570000000001
	.quad	0x402123ad9f0a1be3              # double 8.5696840000000005
	.quad	0x4012a210385c67e0              # double 4.6582650000000001
	.quad	0x4010aee17a02fb5d              # double 4.170782
	.quad	0x400289ed3953dea4              # double 2.3173469999999998
	.quad	0x3fd41975f2cb6417              # double 0.314054
	.quad	0x3fe428283d35eb74              # double 0.62990199999999996
	.quad	0x4012c97d06bbdbe4              # double 4.6967660000000002
	.quad	0x40114f4c6e6d9be5              # double 4.3274400000000002
	.quad	0x4014283be6601bca              # double 5.0392910000000004
	.quad	0x4020f6277c45cbbc              # double 8.4807699999999996
	.quad	0x400e1eea209aaa3b              # double 3.7650950000000001
	.quad	0x4018ebb59ddc1e79              # double 6.2301849999999996
	.quad	0x400c82856605ee57              # double 3.5637310000000002
	.quad	0x4010d7aa68f4b620              # double 4.2106110000000001
	.quad	0x400b2494d50ebaae              # double 3.392862
	.quad	0x401e760ed80a17b1              # double 7.615291
	.quad	0x40168c94f69ca9ef              # double 5.6372869999999997
	.quad	0x4021347000431bdf              # double 8.6024170000000009
	.quad	0x401e30be0ded288d              # double 7.5476
	.quad	0x40225cd3e0bd449a              # double 9.1813040000000008
	.quad	0x3ff62d549731098d              # double 1.3860669999999999
	.quad	0x3fff17df19d66adb              # double 1.9433279999999999
	.quad	0x4001495d0b73d189              # double 2.160822
	.quad	0x3fe32719b4dcebff              # double 0.59852300000000003
	.quad	0x400144dec1c1d6d0              # double 2.1586280000000002
	.quad	0x3fc4979e16d6dc1a              # double 0.16087699999999999
	.quad	0x401030e12e83a10a              # double 4.0477340000000002
	.quad	0x3ff5625204af9229              # double 1.3365039999999999
	.quad	0x4013d85caafbc1ad              # double 4.9612910000000001
	.quad	0x40181c7b02d59d56              # double 6.0278130000000001
	.quad	0x3ff955b6805a2d73              # double 1.583426
	.quad	0x4014709d8c6d612c              # double 5.1099759999999996
	.quad	0x401c8f63c31df762              # double 7.1400290000000002
	.quad	0x40194566cf41f213              # double 6.3177750000000001
	.quad	0x4011f964a59c065b              # double 4.4935479999999997
	.quad	0x401a13d102bc72e2              # double 6.5193519999999996
	.quad	0x401e11b4784230fd              # double 7.51729
	.quad	0x40229f6a93f290ac              # double 9.3113600000000005
	.quad	0x3fe5715c63ae2542              # double 0.67008800000000002
	.quad	0x401284d6a161e4f7              # double 4.6297249999999996
	.quad	0x3fe9cc942d490e67              # double 0.80622300000000002
	.quad	0x400afcac083126e9              # double 3.3733749999999998
	.quad	0x401cf08d08919ef9              # double 7.2349129999999997
	.quad	0x40116c96cc5fbf83              # double 4.3560439999999998
	.quad	0x401f8489d27c3937              # double 7.8794320000000004
	.quad	0x40096c58eeae9ee4              # double 3.1779039999999998
	.quad	0x3fd1649906cca2db              # double 0.27176499999999998
	.quad	0x401e68427418d691              # double 7.6018160000000003
	.quad	0x400985db76b3bb84              # double 3.1903600000000001
	.quad	0x401753d35eb7457c              # double 5.831861
	.quad	0x40237c7f562174c5              # double 9.7431590000000003
	.quad	0x4006eca25529fe00              # double 2.8655439999999999
	.quad	0x401d89b0ab2e1694              # double 7.3844630000000002
	.quad	0x4001e5bc87db2b34              # double 2.2371759999999998
	.quad	0x4006bf0b28522ea1              # double 2.843283
	.quad	0x4016bae5ffa3b9ae              # double 5.682518
	.quad	0x4023066d58c8eef2              # double 9.5125530000000005
	.quad	0x4017673797460243              # double 5.8507980000000002
	.quad	0x4020b757d5a9eb20              # double 8.3580919999999992
	.quad	0x3fff1f5275ee99a6              # double 1.945147
	.quad	0x401ca74213a0c6b5              # double 7.1633380000000004
	.quad	0x4003a11ba3ca7504              # double 2.4536660000000001
	.quad	0x400069068986fcdf              # double 2.051282
	.quad	0x3fdc40d90e23af32              # double 0.44145800000000002
	.quad	0x40069253543aeab8              # double 2.8214480000000002
	.quad	0x40214985271bcdbc              # double 8.6435940000000002
	.quad	0x40230cacf312b1b3              # double 9.5247569999999992
	.quad	0x3ffaad16b97fe8ee              # double 1.6672579999999999
	.quad	0x3ff39c78a6dacabc              # double 1.2257009999999999
	.quad	0x4014f6cd6c2efd44              # double 5.2410180000000004
	.quad	0x4020a808a697aede              # double 8.3281910000000003
	.quad	0x400e5f02c4d65e46              # double 3.796392
	.quad	0x3ff2814b599aa609              # double 1.156566
	.quad	0x3ff3814940bbb1f2              # double 1.2190639999999999
	.quad	0x4017711ba3ca7504              # double 5.8604570000000002
	.quad	0x3ffdb49e01de2691              # double 1.8565959999999999
	.quad	0x4001d4d1633482bf              # double 2.2289150000000002
	.quad	0x401927214f0520d1              # double 6.2882129999999998
	.quad	0x401674a44c7b02d6              # double 5.6139080000000003
	.quad	0x3fef643675ddd2af              # double 0.98098300000000004
	.quad	0x4002713c68661ae7              # double 2.305291
	.quad	0x4009662456f75d9a              # double 3.174874
	.quad	0x4020596db0dd82fd              # double 8.1746649999999992
	.quad	0x402204eaf251c194              # double 9.0096050000000005
	.quad	0x402249ede1198aec              # double 9.1443930000000008
	.quad	0x4016a0d9d7774aba              # double 5.6570809999999998
	.quad	0x40057f0995aaf790              # double 2.68703
	.quad	0x402314c39ffd60e9              # double 9.5405549999999994
	.quad	0x402364070329802c              # double 9.6953659999999999
	.quad	0x402035b4677b395c              # double 8.1048919999999995
	.quad	0x40206786e3b46fdf              # double 8.2022010000000005
	.quad	0x3fe5df2239e6ab9b              # double 0.68348799999999998
	.quad	0x401f1200c0f01fb8              # double 7.7675809999999998
	.quad	0x401afb1e18efbb0e              # double 6.7452319999999997
	.quad	0x40226a7136a400fc              # double 9.2078950000000006
	.quad	0x401e391d57ff9b56              # double 7.5557759999999998
	.quad	0x4017a626b2f23034              # double 5.9122570000000003
	.quad	0x40183523f67f4dbe              # double 6.051895
	.quad	0x3ff61886df82b1f7              # double 1.3809880000000001
	.quad	0x40050ce1c58255b0              # double 2.6312899999999999
	.quad	0x40225c6c54bcf0b7              # double 9.1805140000000005
	.quad	0x4023732a497fa5d3              # double 9.7249320000000007
	.quad	0x4020f228997c3d68              # double 8.4729659999999996
	.quad	0x400787d5ed06fef8              # double 2.9413260000000001
	.quad	0x401066ab5807fed2              # double 4.100263
	.quad	0x40153ad9274e22a3              # double 5.3074690000000002
	.quad	0x40221f8854cdb7ae              # double 9.0615869999999994
	.quad	0x40166fb549f94856              # double 5.6090900000000001
	.quad	0x400f11e9f2778141              # double 3.8837470000000001
	.quad	0x40052b97785729b3              # double 2.6462850000000002
	.quad	0x3ff77899392189be              # double 1.4669430000000001
	.quad	0x3ff9dfc08fa7a850              # double 1.617127
	.quad	0x3feb029f16b11c6d              # double 0.84406999999999999
	.quad	0x3ff441d6cf850df1              # double 1.2660739999999999
	.quad	0x40213b1a6d698fe7              # double 8.6154360000000008
	.quad	0x3fd387a4a48f96e1              # double 0.30515399999999998
	.quad	0x4020ca1016ce789e              # double 8.3946539999999992
	.quad	0x4013270ef566490a              # double 4.7881429999999998
	.quad	0x400d1a2b5a20ddc6              # double 3.637778
	.quad	0x40108eff5c6c11a1              # double 4.1396459999999999
	.quad	0x40145ec95bff0457              # double 5.0925649999999996
	.quad	0x4023483dff3f0fe0              # double 9.6410979999999995
	.quad	0x3fef53868fd199bb              # double 0.97894599999999998
	.quad	0x4010343632c1f42c              # double 4.0509880000000003
	.quad	0x401950329802c0a5              # double 6.3283180000000003
	.quad	0x40148a0f0a5efe93              # double 5.1348229999999999
	.quad	0x401ccaf35e310dbf              # double 7.198194
	.quad	0x401cd6a8b8f14db6              # double 7.2096280000000004
	.quad	0x4010464e8b7e4de4              # double 4.0686590000000002
	.quad	0x4020a53b6cbd987c              # double 8.3227189999999993
	.quad	0x4015832db1e9f278              # double 5.3781040000000004
	.quad	0x401912ea960b6fa0              # double 6.2684730000000002
	.quad	0x4013d26c3b927d46              # double 4.9554910000000003
	.quad	0x40201bb18dac258d              # double 8.0540889999999994
	.quad	0x4021ac927913e814              # double 8.8370549999999994
	.quad	0x4021c4e65bea0ba2              # double 8.8845700000000001
	.quad	0x401dd03b3e9a6f82              # double 7.4533509999999996
	.quad	0x40201862f5989df1              # double 8.0476299999999998
	.quad	0x400d7754b05b7cfe              # double 3.6832669999999998
	.quad	0x402062dd15f02c4d              # double 8.1930929999999993
	.quad	0x401fd61f5be5d9e4              # double 7.959104
	.quad	0x3ffb5379fa97e133              # double 1.7078800000000001
	.quad	0x3ffe0cb295e9e1b1              # double 1.8781000000000001
	.quad	0x4011d1e7d9988d2a              # double 4.4549859999999999
	.quad	0x4023829de8b3b320              # double 9.7551109999999994
	.quad	0x402051f7f8ca8199              # double 8.1600950000000001
	.quad	0x3ffb18efbb0e5e68              # double 1.6935880000000001
	.quad	0x4013daac96cc5fc0              # double 4.9635490000000004
	.quad	0x400189c1b54195cd              # double 2.1922640000000002
	.quad	0x401b6b9628cbd124              # double 6.8550649999999997
	.quad	0x3feb5f86e3b46fdf              # double 0.85541100000000003
	.quad	0x401d642528ae74f3              # double 7.3477980000000001
	.quad	0x4011d856605ee569              # double 4.4612670000000003
	.quad	0x3fe7038e29f9ce8e              # double 0.71918400000000005
	.quad	0x40216595bbbe8790              # double 8.6984080000000006
	.quad	0x4019fc4d65e46067              # double 6.4963889999999997
	.quad	0x40120b60ae9680e0              # double 4.5111109999999996
	.quad	0x3fee76c050bd87b5              # double 0.95199599999999995
	.quad	0x4014bdc2f405f6ba              # double 5.185314
	.quad	0x401dd72b020c49ba              # double 7.4601249999999997
	.quad	0x3ff53de2ef4e0115              # double 1.327609
	.quad	0x4022761fc08fa7a8              # double 9.2307109999999994
	.quad	0x4022e8f98fa37692              # double 9.4550289999999997
	.quad	0x4012bfb3b7521145              # double 4.6872090000000002
	.quad	0x400f69e0a41a261c              # double 3.926698
	.quad	0x401d11dde37585be              # double 7.2674479999999999
	.quad	0x3feea400fba8826b              # double 0.95752000000000004
	.quad	0x401933d102bc72e2              # double 6.3006019999999996
	.quad	0x400ef11e85fd04a3              # double 3.867734
	.quad	0x4014b5bb7b6bb129              # double 5.177473
	.quad	0x3ff06085b18548aa              # double 1.0235650000000001
	.quad	0x4018d5a9eb2074eb              # double 6.2086560000000004
	.quad	0x401f4c0d2c386d2f              # double 7.8242690000000001
	.quad	0x3fe1db2b3461309c              # double 0.55800399999999994
	.quad	0x401268d1958969a1              # double 4.6023620000000003
	.quad	0x4013a95d0b73d189              # double 4.915394
	.quad	0x4014769ced0b30b6              # double 5.1158330000000003
	.quad	0x401d98ad68837718              # double 7.3990989999999996
	.quad	0x3feeef112fd32c62              # double 0.96668299999999996
	.quad	0x3ff3a2435696e58a              # double 1.227115
	.quad	0x40135fcd67fd3f5b              # double 4.8435569999999997
	.quad	0x401b7590c0ad03da              # double 6.8648100000000003
	.quad	0x4014e59253543aeb              # double 5.2241910000000003
	.quad	0x3ffe01e8a2ec28b3              # double 1.8754660000000001
	.quad	0x4009161565c2d278              # double 3.135783
	.quad	0x40164f1950331e3a              # double 5.5772449999999996
	.quad	0x401e7a43bb40b34e              # double 7.6193989999999996
	.quad	0x400e5aad601ffb48              # double 3.794276
	.quad	0x3fe64873365881a1              # double 0.69634399999999996
	.quad	0x4021385ee568a505              # double 8.6100989999999999
	.quad	0x40184b5e95b78cca              # double 6.0736030000000003
	.quad	0x401856bc1eff9f88              # double 6.0847020000000001
	.quad	0x40238b73083558a7              # double 9.7723619999999993
	.quad	0x4011634efcbd5561              # double 4.3469810000000004
	.quad	0x401c6a19008205ff              # double 7.1036109999999999
	.quad	0x4004bee4e26d4802              # double 2.59321
	.quad	0x40146374ff865d7d              # double 5.0971260000000003
	.quad	0x3feced8904f6dfc6              # double 0.90399600000000002
	.quad	0x400656f2a5a469d7              # double 2.7924549999999999
	.quad	0x4016cf7caa7589f0              # double 5.7026240000000001
	.quad	0x3feca02539756c94              # double 0.89454900000000003
	.quad	0x401c43996fa82e88              # double 7.0660150000000002
	.quad	0x400183a7546d3f9e              # double 2.1892839999999998
	.quad	0x401519a88ace24bc              # double 5.2750570000000003
	.quad	0x400cdd77fae3608d              # double 3.608139
	.quad	0x4022fcbfd2e94680              # double 9.4936509999999998
	.quad	0x400eeb074a771c97              # double 3.86476
	.quad	0x401703201040bfe4              # double 5.7530520000000003
	.quad	0x401b869fcf3dc055              # double 6.8814690000000001
	.quad	0x4015641919ac7970              # double 5.3477519999999998
	.quad	0x3fca17225b749add              # double 0.20383100000000001
	.quad	0x40123db7f1737543              # double 4.5602720000000003
	.quad	0x4017a28ed5f138bd              # double 5.9087480000000001
	.quad	0x4019a430f49491f3              # double 6.4103430000000001
	.quad	0x400518140dd3fe19              # double 2.6367569999999998
	.quad	0x40103f40e5a35d68              # double 4.0617710000000002
	.quad	0x3ff8579bfdf7e804              # double 1.5213890000000001
	.quad	0x4020fc95bff04578              # double 8.4933300000000003
	.quad	0x3fe740bfe3b03e21              # double 0.72665400000000002
	.quad	0x402226dc1a47a9e3              # double 9.0758980000000005
	.quad	0x40227b69db65ecc4              # double 9.2410420000000002
	.quad	0x402109d755bccaf7              # double 8.5192209999999999
	.quad	0x401624e7253da72a              # double 5.5360379999999996
	.quad	0x400204cd74927914              # double 2.252345
	.quad	0x401f49bb2788db05              # double 7.8220029999999995
	.quad	0x401be7b139c94f6a              # double 6.9762620000000002
	.quad	0x3fbed01c0ca600b0              # double 0.120363
	.quad	0x400422b6ae7d566d              # double 2.51695
	.quad	0x4018ddf2a9d627bf              # double 6.2167459999999997
	.quad	0x40101c8c5004fb12              # double 4.0278790000000004
	.quad	0x400a8bdb1a6d6990              # double 3.318289
	.quad	0x401a34f0520d130e              # double 6.551698
	.quad	0x4000b31d2e0e3044              # double 2.0874579999999998
	.quad	0x40031a24894c447c              # double 2.3877649999999999
	.quad	0x401f2950fc71d606              # double 7.7903479999999998
	.quad	0x40161c72e275ab7e              # double 5.5277820000000002
	.quad	0x4015d778140dd3fe              # double 5.4604189999999999
	.quad	0x401468140dd3fe19              # double 5.1016389999999996
	.quad	0x401b5738a3b57c4e              # double 6.8351769999999998
	.quad	0x401d28897e996313              # double 7.289587
	.quad	0x40230f7121ab4b73              # double 9.5301600000000004
	.quad	0x3fd3aeb80ecfa69c              # double 0.30753900000000001
	.quad	0x4007a0af1cb89d6b              # double 2.9534590000000001
	.quad	0x401e6e30446b69db              # double 7.6076059999999996
	.quad	0x40129079a2834d27              # double 4.641089
	.quad	0x401635e99e94ab1d              # double 5.5526489999999997
	.quad	0x4018de07a28bb0a3              # double 6.2168260000000002
	.quad	0x401a2dc981beb181              # double 6.5447139999999999
	.quad	0x401a834a44c7b02d              # double 6.6282129999999997
	.quad	0x3fd85ca6ca03c4b1              # double 0.38065500000000002
	.quad	0x4020100eae18ac9f              # double 8.0313619999999997
	.quad	0x3fbd1244a6223e18              # double 0.11355999999999999
	.quad	0x401aa0691ea78af4              # double 6.6566510000000001
	.quad	0x401a77a56de3326a              # double 6.6168420000000001
	.quad	0x4013d9d0203e63e9              # double 4.9627080000000001
	.quad	0x4012433fc86cebbc              # double 4.5656730000000003
	.quad	0x401682d2bb23571d              # double 5.6277569999999999
	.quad	0x4010b41d084e831b              # double 4.1758920000000002
	.quad	0x4006009cc319c5a4              # double 2.750299
	.quad	0x40200b8aa00192a7              # double 8.0225419999999996
	.quad	0x40071a16e7a311e8              # double 2.8877389999999998
	.quad	0x4021d58f2e05ccc9              # double 8.9171080000000007
	.quad	0x4021c8b1dd5d3dc9              # double 8.8919820000000005
	.quad	0x401f7ff5c6c11a11              # double 7.8749609999999998
	.quad	0x3ffd84284dfce315              # double 1.844765
	.quad	0x4014a12cf0f9d2bf              # double 5.1573979999999997
	.quad	0x400de496ededaec5              # double 3.7366160000000002
	.quad	0x4015e910c2c5e2ce              # double 5.4776030000000002
	.quad	0x4023079e9d0e9920              # double 9.5148820000000001
	.quad	0x400113868fd199bb              # double 2.1345339999999999
	.quad	0x40170dea033e78e2              # double 5.7635880000000004
	.quad	0x3ffa3a19008205ff              # double 1.639184
	.quad	0x3fe41016ce789e77              # double 0.62696399999999997
	.quad	0x3fecbfee2c98e53f              # double 0.89842900000000003
	.quad	0x3ffd711d798d8a98              # double 1.8401160000000001
	.quad	0x4012881733226c3c              # double 4.6329010000000004
	.quad	0x40023c7820a30db7              # double 2.2795260000000002
	.quad	0x3fef849a9973d9ec              # double 0.98493699999999995
	.quad	0x400623d89ce4a7b5              # double 2.767503
	.quad	0x4019c142b302f72b              # double 6.4387309999999998
	.quad	0x4020d68ea39c51db              # double 8.4190570000000005
	.quad	0x4005eb662fdfc19c              # double 2.739941
	.quad	0x400633d6c7219221              # double 2.775312
	.quad	0x400fc6eb91b3f20a              # double 3.9721289999999998
	.quad	0x400ffbad3a604e1e              # double 3.9978889999999998
	.quad	0x4010f897a67a52ac              # double 4.2427659999999996
	.quad	0x4016195aaf78feef              # double 5.5247599999999997
	.quad	0x401b7d17c5ef62fa              # double 6.8721610000000002
	.quad	0x40236b80cb6c7a7d              # double 9.7099670000000006
	.quad	0x40095cd78c436fc1              # double 3.1703329999999998
	.quad	0x401a63c74fb549f9              # double 6.5974399999999997
	.quad	0x40130b1e5c0b9991              # double 4.7608579999999998
	.quad	0x40209d69d30270f4              # double 8.3074480000000008
	.quad	0x401fa250b524399b              # double 7.9085109999999998
	.quad	0x40221f4fb549f948              # double 9.0611549999999994
	.quad	0x400fb48e4755ffe7              # double 3.9631620000000001
	.quad	0x401982d1287c200c              # double 6.3777509999999999
	.quad	0x401a5398a65492ff              # double 6.5816369999999997
	.quad	0x40224318b9346994              # double 9.1310479999999998
	.quad	0x401c398a222d5172              # double 7.0561910000000001
	.quad	0x400db2b0a6fc58ac              # double 3.7122510000000002
	.quad	0x401580a2877ee4e2              # double 5.3756199999999996
	.quad	0x40083004fb1183b6              # double 3.023447
	.quad	0x401c07000431bde8              # double 7.0068359999999998
	.quad	0x4022b51611ba3ca7              # double 9.3536839999999994
	.quad	0x4016940b34e7685a              # double 5.6445740000000004
	.quad	0x3fe3c8216c61522a              # double 0.61817999999999995
	.quad	0x4022f457e23f24d9              # double 9.477233
	.quad	0x4014f5de15ca6ca0              # double 5.2401049999999998
	.quad	0x4023ff4ff865d7cb              # double 9.9986569999999996
	.quad	0x4010cb73d188f430              # double 4.1986840000000001
	.quad	0x4022b329a1b9f98b              # double 9.3499269999999992
	.quad	0x400c54d72799a1fd              # double 3.541426
	.quad	0x3fda76709fa54c55              # double 0.41347899999999999
	.quad	0x4019ec17a89331a1              # double 6.4805590000000004
	.quad	0x3ffcfc914b167ec8              # double 1.8116620000000001
	.quad	0x402301f8e3ac0c63              # double 9.5038520000000001
	.quad	0x40210b7521144cbe              # double 8.5223779999999998
	.quad	0x401bb1c15097c808              # double 6.9235889999999998
	.quad	0x401f123a6ce3582a              # double 7.7678010000000004
	.quad	0x400444f1a1986b9c              # double 2.5336639999999999
	.quad	0x4010cbb62413db7f              # double 4.1989369999999999
	.quad	0x401b0bdec5f394b8              # double 6.7615920000000003
	.quad	0x4023b3682730c671              # double 9.8504039999999992
	.quad	0x40155a5e353f7cee              # double 5.3382500000000004
	.quad	0x4017d654d61b2a28              # double 5.959308
	.quad	0x3ffc3fe8ee6b8306              # double 1.765603
	.quad	0x3ff5f2f555821294              # double 1.3718159999999999
	.quad	0x3fff0a7e73a365cb              # double 1.940062
	.quad	0x401b91116a8b8f15              # double 6.8916680000000001
	.quad	0x4007e7e175d13d75              # double 2.9882230000000001
	.quad	0x3ffd542f61ed5ae2              # double 1.833053
	.quad	0x402238eef1bac2df              # double 9.1111979999999999
	.quad	0x4019b67a0f9096bc              # double 6.4282000000000004
	.quad	0x4017b0a2ca9ac365              # double 5.9224959999999998
	.quad	0x40029ac9afe1da7b              # double 2.32558
	.quad	0x401fa868b9fdbd30              # double 7.9144620000000003
	.quad	0x4013cece9a2c6690              # double 4.9519599999999997
	.quad	0x3feecdf266ba493d              # double 0.96264000000000005
	.quad	0x4022c75ea67e846a              # double 9.3893939999999994
	.quad	0x4015d4b2fa93af75              # double 5.4577140000000002
	.quad	0x3faa1b5c7cd898b3              # double 0.050990000000000001
	.quad	0x4018796851223183              # double 6.1185619999999998
	.quad	0x401d63e8dda48b65              # double 7.3475679999999999
	.quad	0x4006d66d7a56de33              # double 2.8547009999999999
	.quad	0x3fe56045baf533f4              # double 0.66800199999999998
	.quad	0x401e0d851654d61b              # double 7.5132029999999998
	.quad	0x402226392e1ef73c              # double 9.0746549999999999
	.quad	0x40064c308feac42f              # double 2.7872020000000002
	.quad	0x400da40d90e23af3              # double 3.705104
	.quad	0x4017f1b4bb5e0f80              # double 5.9860410000000002
	.quad	0x4015ee05ccc89b0f              # double 5.4824440000000001
	.quad	0x4008767c286f8ad2              # double 3.0578539999999998
	.quad	0x4020d859210385c6              # double 8.4225549999999991
	.quad	0x400f599ed7c6fbd2              # double 3.9187599999999998
	.quad	0x4001fd2f1a9fbe77              # double 2.2486250000000001
	.quad	0x3fffb836a832b991              # double 1.9824740000000001
	.quad	0x3ff5584b1ab0856e              # double 1.3340559999999999
	.quad	0x40230575c0767d35              # double 9.5106640000000002
	.quad	0x3fd968c692f6e829              # double 0.39701999999999998
	.quad	0x402122a1511dffc5              # double 8.5676369999999995
	.quad	0x40126240b780346e              # double 4.5959500000000002
	.quad	0x40194a921ccd9620              # double 6.3228229999999996
	.quad	0x3ff21dfeb8d82342              # double 1.132323
	.quad	0x4016c008a697aede              # double 5.6875330000000002
	.quad	0x4023baa51e321a2e              # double 9.8645409999999991
	.quad	0x4003bcbf6e3f78bc              # double 2.4671620000000001
	.quad	0x401bf1e5c0b99913              # double 6.9862279999999997
	.quad	0x4017e52ac753e708              # double 5.9737960000000001
	.quad	0x40217f50c1b97354              # double 8.7486630000000005
	.quad	0x4022fd31fcd24e16              # double 9.4945219999999999
	.quad	0x4006a5204af92296              # double 2.8306279999999999
	.quad	0x3ff9d5e8d5410f95              # double 1.614724
	.quad	0x402044e95faa8a83              # double 8.1345930000000006
	.quad	0x40179b25b317efe1              # double 5.9015110000000002
	.quad	0x3fc8ece9a2c66905              # double 0.19472999999999999
	.quad	0x401b62a3cea6c1a0              # double 6.8463279999999997
	.quad	0x3ff8810d7be9856a              # double 1.531507
	.quad	0x3ffd145953586ca9              # double 1.8174680000000001
	.quad	0x400889d30270f388              # double 3.0672969999999999
	.quad	0x40112a7ef9db22d1              # double 4.2915000000000001
	.quad	0x4013c325918a009f              # double 4.9405729999999997
	.quad	0x4012e5143bf72713              # double 4.7237099999999996
	.quad	0x4011ad13d74d594f              # double 4.4190209999999999
	.quad	0x3fbb90752da98677              # double 0.107673
	.quad	0x4023736390c91080              # double 9.7253690000000006
	.quad	0x4003fa2c669057d1              # double 2.4971549999999998
	.quad	0x401e39f59ccfaeff              # double 7.5566009999999996
	.quad	0x40206161a1db877b              # double 8.1901980000000005
	.quad	0x400f0ac9f2fdb8fe              # double 3.8802680000000001
	.quad	0x40090188b11409a2              # double 3.1257489999999999
	.quad	0x3fc2b3b320535c9e              # double 0.14610899999999999
	.quad	0x3fd5aceaaf35e311              # double 0.33867900000000001
	.quad	0x3ff95c63ae2541d9              # double 1.585056
	.quad	0x3fff02b51bd61f5c              # double 1.938161
	.quad	0x3fe4b9bed30f062d              # double 0.64767399999999997
	.quad	0x4019a02602c9081c              # double 6.4063949999999998
	.quad	0x3fc4ad46f587d6f9              # double 0.16153799999999999
	.quad	0x4011aabcd78c4370              # double 4.4167360000000002
	.quad	0x402257d5a9eb2075              # double 9.1715520000000001
	.quad	0x40225f04bc27631b              # double 9.1855829999999994
	.quad	0x4023bfa5d28d002e              # double 9.8743119999999998
	.quad	0x400bc20a30db6a1f              # double 3.4697460000000002
	.quad	0x400d5a9003eea20a              # double 3.6692200000000001
	.quad	0x3ff2027525460aa6              # double 1.1255999999999999
	.quad	0x401b13e3e29307af              # double 6.7694239999999999
	.quad	0x4020aadd377e1b8f              # double 8.3337190000000003
	.quad	0x4014729fe004b7f6              # double 5.1119380000000003
	.quad	0x4007ea4441787054              # double 2.9893879999999999
	.quad	0x401330f345069a4e              # double 4.797803
	.quad	0x4008cf5dbb9cf9a0              # double 3.1012529999999998
	.quad	0x4015d11e85fd04a3              # double 5.454218
	.quad	0x401be1dffc5479d5              # double 6.9705810000000001
	.quad	0x401f98b19a415f46              # double 7.8991150000000001
	.quad	0x4001e732df505d10              # double 2.2378900000000002
	.quad	0x402161055b899392              # double 8.6894939999999998
	.quad	0x3ff07a24894c447c              # double 1.02982
	.quad	0x3fc5127f5e84f095              # double 0.164627
	.quad	0x401f0168f8e7ddca              # double 7.7513769999999997
	.quad	0x401d28754f3775b8              # double 7.2895099999999999
	.quad	0x40143f255f3519bd              # double 5.0616659999999998
	.quad	0x40209e594af4f0d8              # double 8.3092749999999995
	.quad	0x40136e6bc621b7e1              # double 4.8578330000000003
	.quad	0x4015586a4ca4f441              # double 5.3363430000000003
	.quad	0x40235b28954a7f80              # double 9.6780439999999999
	.quad	0x3ff93eed45e9185d              # double 1.577863
	.quad	0x4012390470a808c8              # double 4.5556809999999999
	.quad	0x3ffd28fb00bcbe62              # double 1.822505
	.quad	0x400ba1f31f46ed24              # double 3.4540769999999998
	.quad	0x40166292817763e5              # double 5.5962620000000003
	.quad	0x4023add206c8711d              # double 9.8394929999999991
	.quad	0x3ff6f3311a543f1c              # double 1.4343729999999999
	.quad	0x402173b14a90470b              # double 8.7259620000000009
	.quad	0x4023555a5b9628cc              # double 9.6667050000000003
	.quad	0x3ff3eb8d82342246              # double 1.2450079999999999
	.quad	0x40117316e3715400              # double 4.3623919999999998
	.quad	0x3ffcb3797460242d              # double 1.793817
	.quad	0x400938e0008637bd              # double 3.152771
	.quad	0x40103465625a682b              # double 4.0511679999999997
	.quad	0x4021c9d3ed527e52              # double 8.8941949999999999
	.quad	0x4008fea9a3d2d880              # double 3.1243470000000002
	.quad	0x40201a350d2806af              # double 8.0511859999999995
	.quad	0x402040bcdfefbf40              # double 8.1264409999999998
	.quad	0x4017a51611ba3ca7              # double 5.9112169999999997
	.quad	0x4007aa454de7ea60              # double 2.9581400000000002
	.quad	0x3fd13f9a49c2c1b1              # double 0.269507
	.quad	0x4001f63baba7b917              # double 2.245231
	.quad	0x3ff62dbb59ddc1e8              # double 1.3861650000000001
	.quad	0x401e3f709b738e6d              # double 7.5619529999999999
	.quad	0x3ff775afaf859429              # double 1.466232
	.quad	0x400683de6149c6f3              # double 2.8143889999999998
	.quad	0x402325823422467c              # double 9.5732590000000001
	.quad	0x40203e3608d0891a              # double 8.1215060000000001
	.quad	0x401f5bda9435ac8a              # double 7.8397009999999998
	.quad	0x3fe2657fb69984a1              # double 0.57489000000000001
	.quad	0x3ffb6933a0407cc8              # double 1.713184
	.quad	0x4001eb042528ae75              # double 2.239754
	.quad	0x3fd85bb384fd2a63              # double 0.38059700000000002
	.quad	0x401cfa2014727dcc              # double 7.2442630000000001
	.quad	0x401d73404ea4a8c1              # double 7.3625499999999997
	.quad	0x4010926fa3fcc9eb              # double 4.1430040000000004
	.quad	0x4022634df04ddb55              # double 9.1939539999999997
	.quad	0x4000b1737542a23c              # double 2.086646
	.quad	0x40147a51e321a2e8              # double 5.119453
	.quad	0x40071cebfec13b9f              # double 2.889122
	.quad	0x4013f4f3775b8130              # double 4.9892099999999999
	.quad	0x3fd599bb2788db05              # double 0.33750799999999997
	.quad	0x40016be37de939eb              # double 2.1776800000000001
	.quad	0x40235e670e2c12ae              # double 9.6843800000000009
	.quad	0x4015c89efd86a8fc              # double 5.445919
	.quad	0x400eb76cce5f7404              # double 3.8395630000000001
	.quad	0x401d8e10cf5b1c86              # double 7.3887359999999997
	.quad	0x4008c3eea209aaa4              # double 3.0956700000000001
	.quad	0x4015109246bf0132              # double 5.2661829999999998
	.quad	0x401db69552e2fbe3              # double 7.4283039999999998
	.quad	0x4009a27179bfdf7f              # double 3.2043180000000002
	.quad	0x401de942917507ea              # double 7.4777930000000001
	.quad	0x3fc5c8e25c810a57              # double 0.17019300000000001
	.quad	0x401933ac929aa1d7              # double 6.3004629999999997
	.quad	0x3ff0b9e7b80a9de9              # double 1.0453870000000001
	.quad	0x4002db4245f5ad97              # double 2.3570600000000002
	.quad	0x400ca168b5cbff47              # double 3.5788129999999998
	.quad	0x4014cd0c3d25247d              # double 5.2002420000000003
	.quad	0x40212a5b530ced4e              # double 8.5827279999999995
	.quad	0x3fee3ed959a30985              # double 0.94517200000000001
	.quad	0x4017c26527a20579              # double 5.9398390000000001
	.quad	0x4021122856605ee5              # double 8.5354639999999993
	.quad	0x401e12745bf26f1e              # double 7.5180220000000002
	.quad	0x3ffb8060780fdc16              # double 1.718842
	.quad	0x3fff69478c868ba0              # double 1.963203
	.quad	0x400420ee06d93815              # double 2.516079
	.quad	0x4004313059641f64              # double 2.5240179999999999
	.quad	0x4005846a5d6bebe1              # double 2.6896559999999998
	.quad	0x40232de54b48d3ae              # double 9.5896399999999993
	.quad	0x401bc94c447c30d3              # double 6.94658
	.quad	0x3fec4069e7fb267c              # double 0.88286299999999995
	.quad	0x4013b599ed7c6fbd              # double 4.9273449999999999
	.quad	0x4022c6ca46e08f21              # double 9.3882619999999992
	.quad	0x4021801adea89763              # double 8.7502049999999993
	.quad	0x400bf058dde7a744              # double 3.4923570000000002
	.quad	0x401f4d49d7ba6699              # double 7.8254770000000002
	.quad	0x3fe2ae5de15ca6ca              # double 0.583785
	.quad	0x40181ce5710880d8              # double 6.028219
	.quad	0x40149163779e9d0f              # double 5.1419810000000004
	.quad	0x4011ee0a41a261bf              # double 4.4824609999999998
	.quad	0x3fcda6937d1fe64f              # double 0.23164599999999999
	.quad	0x3fd8c5eb313be22e              # double 0.38707999999999998
	.quad	0x4012437718655193              # double 4.5658839999999996
	.quad	0x401c319b0ab2e169              # double 7.0484429999999998
	.quad	0x4015b0c4588a04d1              # double 5.4226239999999999
	.quad	0x40190121ab4b72c5              # double 6.2511049999999999
	.quad	0x3fe6c8d5c74751ce              # double 0.71201599999999998
	.quad	0x401903361565c2d2              # double 6.2531359999999996
	.quad	0x40181435696e58a3              # double 6.0197349999999998
	.quad	0x40221871c53f39d2              # double 9.0477430000000005
	.quad	0x401f42d05f288484              # double 7.8152480000000004
	.quad	0x3ff4cc2e770bd018              # double 1.299849
	.quad	0x3ff65389b52007dd              # double 1.3953949999999999
	.quad	0x4010a61309c7ffde              # double 4.1621819999999996
	.quad	0x3ffbeda4484944ed              # double 1.7455179999999999
	.quad	0x401769f340d4dc66              # double 5.8534670000000002
	.quad	0x3ff6a57d9dba908a              # double 1.415403
	.quad	0x401bc4cf0739b025              # double 6.942196
	.quad	0x401bb7d9dba908a2              # double 6.9295419999999996
	.quad	0x4008fe34330d7386              # double 3.124123
	.quad	0x4023e737542a23c0              # double 9.951594
	.quad	0x40209f6be37de93a              # double 8.3113700000000001
	.quad	0x40041938151a4378              # double 2.5123139999999999
	.quad	0x4022ae8a50507a6c              # double 9.3408990000000002
	.quad	0x4015be6f2e8c0486              # double 5.4359710000000003
	.quad	0x3fe06e41919ac797              # double 0.513459
	.quad	0x4014ba5c5f7c675a              # double 5.1819930000000003
	.quad	0x3fa9904b3c3e74b0              # double 0.049929000000000001
	.quad	0x401ae595feda6613              # double 6.7242050000000004
	.quad	0x4015cacaff6d3309              # double 5.4480399999999998
	.quad	0x40221dab7dc7abfc              # double 9.0579490000000006
	.quad	0x402080daa0cae643              # double 8.2516680000000004
	.quad	0x402169ee88df3733              # double 8.7068980000000007
	.quad	0x400b99652bd3c361              # double 3.4499
	.quad	0x400ebe4c51116a8c              # double 3.8429190000000002
	.quad	0x40094ef672b88440              # double 3.1635559999999998
	.quad	0x4011742528ae74f3              # double 4.3634230000000001
	.quad	0x3fc98c0053e2d624              # double 0.19958500000000001
	.quad	0x3ff1140fecdd0d8d              # double 1.0673980000000001
	.quad	0x4015f19c5a3e39f7              # double 5.4859479999999996
	.quad	0x40236f3e0370cdc8              # double 9.7172699999999991
	.quad	0x401225393250b524              # double 4.5363509999999998
	.quad	0x3ff172c83ec892ab              # double 1.0905229999999999
	.quad	0x401e21240746455f              # double 7.5323640000000002
	.quad	0x4019e220bc382a13              # double 6.470828
	.quad	0x401647ba6698bb4d              # double 5.5700469999999997
	.quad	0x4006fe0ce0b912dc              # double 2.8740480000000002
	.quad	0x401913dd97f62b6b              # double 6.2694000000000001
	.quad	0x4013e89a459103c9              # double 4.9771510000000001
	.quad	0x4023ef761cbccf29              # double 9.9676980000000003
	.quad	0x3ffa609aaa3ad18d              # double 1.648585
	.quad	0x3fe290880d801b43              # double 0.58014299999999996
	.quad	0x40206a6fe718a86d              # double 8.2078849999999992
	.quad	0x3ffb338b47c73eee              # double 1.7000839999999999
	.quad	0x3feca9de8b3b3205              # double 0.89573599999999998
	.quad	0x400e5357e670e2c1              # double 3.7906949999999999
	.quad	0x3ff0b06705c896dd              # double 1.043067
	.quad	0x40124ddb9841aac5              # double 4.5760329999999998
	.quad	0x401a38d08919ef95              # double 6.5554829999999997
	.quad	0x401d51572580c309              # double 7.329434
	.quad	0x4003b675ddd2ae8e              # double 2.4640919999999999
	.quad	0x40080391d57ff9b5              # double 3.0017429999999998
	.quad	0x401c9e5929670197              # double 7.1546370000000001
	.quad	0x401e79b8cb8e086c              # double 7.6188690000000001
	.quad	0x3fede2b6ae7d566d              # double 0.93392500000000001
	.quad	0x401670a63305100a              # double 5.6100089999999998
	.quad	0x400d29728a611772              # double 3.645238
	.quad	0x40205bec2480e8c9              # double 8.1795360000000006
	.quad	0x40219e50e779207d              # double 8.8092109999999995
	.quad	0x40168f4906034f40              # double 5.6399270000000001
	.quad	0x401e6b0f27bb2fec              # double 7.6045499999999997
	.quad	0x3ffc0a2ca9ac3654              # double 1.7524839999999999
	.quad	0x40147db76b3bb83d              # double 5.12277
	.quad	0x3ff5d5f45e0b4e12              # double 1.364735
	.quad	0x40201ae31d712a0f              # double 8.0525140000000004
	.quad	0x3ff32e6ea8544780              # double 1.198836
	.quad	0x400289b499d0203e              # double 2.3172389999999998
	.quad	0x4022e04c48adeebb              # double 9.4380819999999996
	.quad	0x40016d8c2a454de8              # double 2.17849
	.quad	0x401866af038e29fa              # double 6.1002770000000002
	.quad	0x4007d42b302f72b4              # double 2.9785979999999999
	.quad	0x4019cdfd694ccab4              # double 6.4511620000000001
	.quad	0x40223d6084a515cf              # double 9.1198770000000007
	.quad	0x3ffe4ca70d1fa333              # double 1.8937139999999999
	.quad	0x400724007570c565              # double 2.892579
	.quad	0x3fb942d490e66cb1              # double 0.098676
	.quad	0x40223703afb7e910              # double 9.10745
	.quad	0x4023090afe60c38f              # double 9.5176619999999996
	.quad	0x400cc789613d31ba              # double 3.5974300000000001
	.quad	0x3ff31c5718eb8950              # double 1.1944189999999999
	.quad	0x401f45857afea3df              # double 7.8178919999999996
	.quad	0x4021a6052502eec8              # double 8.8242580000000004
	.quad	0x3fc9af1886df82b2              # double 0.200656
	.quad	0x3fae9db65ecc3e32              # double 0.059797000000000003
	.quad	0x4020df7a7008a698              # double 8.4364810000000006
	.quad	0x401aa04bc27631b6              # double 6.6565390000000004
	.quad	0x3fd1e66cb10342ab              # double 0.27968900000000002
	.quad	0x4019a62c343b70ef              # double 6.4122779999999997
	.quad	0x401c01600f34506a              # double 7.0013430000000003
	.quad	0x3f9dd54da4ce8102              # double 0.029134
	.quad	0x3fed854ac29bf163              # double 0.92252100000000004
	.quad	0x4012a455219a847b              # double 4.6604809999999999
	.quad	0x400d8115592d98bf              # double 3.6880289999999998
	.quad	0x4013fea8da7f3cf7              # double 4.998691
	.quad	0x40091b0b39192642              # double 3.1382050000000001
	.quad	0x3ffc7ee2c98e53eb              # double 1.780978
	.quad	0x401bb8ae31d712a1              # double 6.9303520000000001
	.quad	0x3ffbd5b24e9c4546              # double 1.7396720000000001
	.quad	0x3ff46145953586cb              # double 1.2737480000000001
	.quad	0x401ce10f94c87981              # double 7.219786
	.quad	0x3feac508b32ce896              # double 0.83655199999999996
	.quad	0x40235ef60e0eb67c              # double 9.6854709999999997
	.quad	0x40044ec17ebaf102              # double 2.5384549999999999
	.quad	0x4021a9f0e4da09cc              # double 8.8319159999999996
	.quad	0x3fdf4c165907d912              # double 0.48901899999999998
	.quad	0x3ff1ccbf2b239a39              # double 1.112487
	.quad	0x401cdae685db76b4              # double 7.2137700000000002
	.quad	0x3fe6d388a8b08dd2              # double 0.71332200000000001
	.quad	0x401358d1d8a54824              # double 4.8367380000000004
	.quad	0x401f182235b4edb3              # double 7.773568
	.quad	0x4014a2be8bc169c2              # double 5.1589299999999998
	.quad	0x401e197d8cf398e9              # double 7.5248929999999996
	.quad	0x40004a465a57646b              # double 2.036267
	.quad	0x4022c974a3400b89              # double 9.3934680000000003
	.quad	0x402101ffb480a5ad              # double 8.5039040000000004
	.quad	0x401ea396d0917d6b              # double 7.6597549999999996
	.quad	0x401a8f0739b024f6              # double 6.6396759999999997
	.quad	0x3fc6974a3400b88d              # double 0.17649200000000001
	.quad	0x3ff3bcfa26a22b39              # double 1.2336370000000001
	.quad	0x3ffa716c1e364bec              # double 1.6526909999999999
	.quad	0x4021b909aed56b01              # double 8.861402
	.quad	0x401bee0b912dba4d              # double 6.9824659999999996
	.quad	0x400d2fc0d2c386d3              # double 3.648317
	.quad	0x40236918e325d4a6              # double 9.7052680000000002
	.quad	0x40113b84988094e6              # double 4.3081230000000001
	.quad	0x40202af640639d5e              # double 8.0839099999999995
	.quad	0x401174ce8101f31f              # double 4.3640689999999998
	.quad	0x4019def77f27fe4c              # double 6.4677410000000002
	.quad	0x401986dc5d638866              # double 6.3817000000000004
	.quad	0x400848301a79feca              # double 3.0352480000000002
	.quad	0x3ffc510b1feeb2d1              # double 1.7697860000000001
	.quad	0x40116a88effe2a3d              # double 4.3540380000000001
	.quad	0x401bfea52ef911cf              # double 6.9986769999999998
	.quad	0x400058d79d0a6762              # double 2.04338
	.quad	0x4012b30121682f94              # double 4.6748089999999998
	.quad	0x3fc54ea8da7f3cf7              # double 0.166463
	.quad	0x3ff26bead4f5903a              # double 1.1513469999999999
	.quad	0x4014d4e26d4801f7              # double 5.2078949999999997
	.quad	0x401c597b30f8c650              # double 7.0873840000000001
	.quad	0x4018ae2ac3222920              # double 6.1700850000000003
	.quad	0x40233bad18d25edd              # double 9.6165549999999999
	.quad	0x4020c35c5b4aa971              # double 8.3815639999999991
	.quad	0x40223253111f0c35              # double 9.0982900000000004
	.quad	0x4016e62aa19439de              # double 5.7247719999999997
	.quad	0x40214a4873365882              # double 8.6450840000000007
	.quad	0x4017c061847f5621              # double 5.9378719999999996
	.quad	0x402161083dbc2331              # double 8.6895159999999994
	.quad	0x4020a4af2d7f950c              # double 8.3216490000000007
	.quad	0x4011b835dedf1e08              # double 4.4298929999999999
	.quad	0x4020acb85a4f00ef              # double 8.3373439999999999
	.quad	0x40122f748a159818              # double 4.5463430000000002
	.quad	0x4004b1a9fbe76c8b              # double 2.5867499999999999
	.quad	0x3fdc03d9a95421c0              # double 0.43773499999999999
	.quad	0x3fd929a5ebb7739f              # double 0.39316699999999999
	.quad	0x3ff35a1db877ab32              # double 1.2095009999999999
	.quad	0x401e40a06e9ff0cc              # double 7.5631120000000003
	.quad	0x40201d3005814941              # double 8.0570070000000005
	.quad	0x401d8837f7be121f              # double 7.3830260000000001
	.quad	0x4023480d3cff64d0              # double 9.6407260000000008
	.quad	0x40176a1f4b1ee243              # double 5.8536349999999997
	.quad	0x40227ed6ba8c5868              # double 9.2477319999999991
	.quad	0x4023069ccb7d4174              # double 9.5129149999999995
	.quad	0x400c54ee392e1ef7              # double 3.5414699999999999
	.quad	0x4021cd352220bc38              # double 8.9007959999999997
	.quad	0x3ff492253111f0c3              # double 1.2856799999999999
	.quad	0x40172b0ccbc05d53              # double 5.7920410000000002
	.quad	0x40198a3400b88ca4              # double 6.3849640000000001
	.quad	0x401734bb1af3a14d              # double 5.8014950000000001
	.quad	0x4000b64bec679cc7              # double 2.0890119999999999
	.quad	0x401d7fd5885d3133              # double 7.3748379999999996
	.quad	0x40238c7778dd6170              # double 9.7743490000000008
	.quad	0x40169af251c193b4              # double 5.6513150000000003
	.quad	0x3fe0bbc903ea704c              # double 0.52292300000000003
	.quad	0x4014ee52deca2553              # double 5.2327380000000003
	.quad	0x4003209246bf0132              # double 2.3909039999999999
	.quad	0x3fe732ebe596c82e              # double 0.724966
	.quad	0x3fed0d4fdf3b645a              # double 0.90787499999999999
	.quad	0x4021995bbbe878fb              # double 8.7995280000000005
	.quad	0x4001f4434e3369ba              # double 2.2442690000000001
	.quad	0x4017485271bcdbbe              # double 5.820627
	.quad	0x40199bc7b45f17be              # double 6.4021290000000004
	.quad	0x401f5e0fc2eba27b              # double 7.841857
	.quad	0x401241dffc5479d5              # double 4.5643310000000001
	.quad	0x3fd46e7e62dc6e2b              # double 0.31924400000000003
	.quad	0x3feba91d9b1b79d9              # double 0.864394
	.quad	0x4010b0a350d2806b              # double 4.172498
	.quad	0x400014cb1897a67a              # double 2.0101529999999999
	.quad	0x400452b5e529bae4              # double 2.5403859999999998
	.quad	0x4021e49320d9945b              # double 8.9464349999999992
	.quad	0x4020fae05ccc89b1              # double 8.4899930000000001
	.quad	0x401e80bd44998d04              # double 7.6257219999999997
	.quad	0x401cac7abfb9bed3              # double 7.1684369999999999
	.quad	0x4010a6aad1d041cc              # double 4.1627609999999997
	.quad	0x400aca925fe974a3              # double 3.3489119999999999
	.quad	0x4006b84c271fff7a              # double 2.8399890000000001
	.quad	0x3fee77dd872f33ca              # double 0.95213199999999998
	.quad	0x40141a4b5568e821              # double 5.0256780000000001
	.quad	0x3ff43890d5a5b963              # double 1.2638100000000001
	.quad	0x40188b81b64e0547              # double 6.1362370000000004
	.quad	0x3ff8ed82ba5a0382              # double 1.5579860000000001
	.quad	0x401a840f66a55087              # double 6.628965
	.quad	0x4000ad434a01abd2              # double 2.0846010000000001
	.quad	0x4012b912556d19df              # double 4.6807340000000002
	.quad	0x4014ea2ad3e920c0              # double 5.2286789999999996
	.quad	0x3fefd6494d50ebab              # double 0.99490800000000001
	.quad	0x3ff9538583621fb0              # double 1.582891
	.quad	0x401f6ebc408d8ec9              # double 7.8581399999999996
	.quad	0x40214b254e6e221d              # double 8.6467690000000008
	.quad	0x4015890752da9867              # double 5.3838169999999996
	.quad	0x401b0f6db940fece              # double 6.7650670000000002
	.quad	0x4023cf88b9778573              # double 9.9053400000000006
	.quad	0x400d99dc2f405f6c              # double 3.7001270000000002
	.quad	0x401af08a265f0f5a              # double 6.7349019999999999
	.quad	0x3ffc8e5e679463d0              # double 1.7847580000000001
	.quad	0x401fce59af9ebe9d              # double 7.9515140000000004
	.quad	0x40125e40852b4d8c              # double 4.5920430000000003
	.quad	0x40135608d08919f0              # double 4.8340180000000004
	.quad	0x401547ebaf102364              # double 5.3202350000000003
	.quad	0x4005b1ab0856e697              # double 2.7117520000000002
	.quad	0x40223fb784662bae              # double 9.124447
	.quad	0x40057746887a8d65              # double 2.6832400000000001
	.quad	0x401ad2fb5d031056              # double 6.7060370000000002
	.quad	0x401f4cbe61cffeb0              # double 7.8249449999999996
	.quad	0x4003258255b035bd              # double 2.3933149999999999
	.quad	0x401b4c122749f0e5              # double 6.8242880000000001
	.quad	0x401f60841ede1199              # double 7.8442540000000002
	.quad	0x401d4f13cee9dd7f              # double 7.3272240000000002
	.quad	0x3feac3bf727136a4              # double 0.83639499999999999
	.quad	0x401e6ee99a62ed35              # double 7.6083129999999998
	.quad	0x3ff72e1ac57e23f2              # double 1.4487559999999999
	.quad	0x3fe7720642396074              # double 0.73266900000000001
	.quad	0x40239644955b4678              # double 9.7934920000000005
	.quad	0x3ff328dda48b6523              # double 1.1974769999999999
	.quad	0x401aa205bc01a36e              # double 6.6582249999999998
	.quad	0x3ff8a272862f598a              # double 1.53966
	.quad	0x4010db4784230fd0              # double 4.2141400000000004
	.quad	0x3ff7ed783dff3f10              # double 1.495476
	.quad	0x40183534bd76ee74              # double 6.0519590000000001
	.quad	0x3ffad9157abb8801              # double 1.677999
	.quad	0x4015c67f4dbdf8f4              # double 5.4438449999999996
	.quad	0x400925d8d79d0a67              # double 3.1434799999999998
	.quad	0x4016322d948dc11e              # double 5.5490019999999998
	.quad	0x3fdcb2788db0574b              # double 0.44839299999999999
	.quad	0x40067e16d6dc1a48              # double 2.8115670000000001
	.quad	0x4000904ddb5525cc              # double 2.0704609999999999
	.quad	0x400f46490a350d28              # double 3.909319
	.quad	0x3ffb992c8c5004fb              # double 1.724896
	.quad	0x400844d44567125e              # double 3.0336080000000001
	.quad	0x3fbda3d2d87f8876              # double 0.115781
	.quad	0x401daf0e0a84be40              # double 7.4209519999999998
	.quad	0x3fd16c764adff823              # double 0.27224500000000001
	.quad	0x3ffd342edbb59ddc              # double 1.82524
	.quad	0x4005f1fab96f21f7              # double 2.7431540000000001
	.quad	0x3fedf0025bfad29a              # double 0.93554800000000005
	.quad	0x40113fcc5b8dc550              # double 4.312303
	.quad	0x400b65edd052934b              # double 3.4247700000000001
	.quad	0x400562b27cbf6e3f              # double 2.6731919999999998
	.quad	0x3ff99af5ba2be059              # double 1.6003320000000001
	.quad	0x4009252b4d8ba40e              # double 3.1431490000000002
	.quad	0x401c65b24e9c4546              # double 7.0993130000000004
	.quad	0x400c20c069e7fb26              # double 3.5159919999999998
	.quad	0x40040c5fbf83382e              # double 2.5060419999999999
	.quad	0x401d2e7ee9142b30              # double 7.2954059999999998
	.quad	0x40169b7cbb3c8191              # double 5.6518430000000004
	.quad	0x401929363f572de4              # double 6.2902459999999998
	.quad	0x4012651a005c4652              # double 4.598732
	.quad	0x4017331db445ed4a              # double 5.7999179999999999
	.quad	0x4011c2c7fbacb429              # double 4.4402160000000004
	.quad	0x4012b135daad6020              # double 4.673057
	.quad	0x401d903ff69014b6              # double 7.3908690000000004
	.quad	0x3fa66277c45cbbc3              # double 0.043720000000000002
	.quad	0x3ff0b764f11b60af              # double 1.0447740000000001
	.quad	0x3ffa3cb923a29c78              # double 1.6398250000000001
	.quad	0x4019294ccab3edd9              # double 6.2903320000000003
	.quad	0x4016e49c6f36ef80              # double 5.7232529999999997
	.quad	0x40229d04e618ce2d              # double 9.3066779999999998
	.quad	0x40111589acbc8c0d              # double 4.2710330000000001
	.quad	0x402092b92c061848              # double 8.2865690000000001
	.quad	0x402173b7952d234f              # double 8.7260100000000005
	.quad	0x4004655000c9539c              # double 2.5494690000000002
	.quad	0x40072611fd5885d3              # double 2.893589
	.quad	0x40119a9b8cb8e087              # double 4.4009840000000002
	.quad	0x4010f3f1c75818c6              # double 4.2382270000000002
	.quad	0x4022b7296f6512a9              # double 9.3577379999999994
	.quad	0x3fef4083126e978d              # double 0.97662499999999996
	.quad	0x4021b079a2834d27              # double 8.844678
	.quad	0x401515e6362a5e78              # double 5.2713859999999997
	.quad	0x4023c1d627bf61aa              # double 9.8785869999999996
	.quad	0x40206087229e9079              # double 8.1885309999999993
	.quad	0x3ff8dd4306e5cd4f              # double 1.554019
	.quad	0x4021f4853c148345              # double 8.9775790000000004
	.quad	0x401ff16df3f96180              # double 7.9857709999999997
	.quad	0x40173b30b5aa7158              # double 5.8078029999999998
	.quad	0x401eaac471b47842              # double 7.6667649999999998
	.quad	0x4000b28283d35eb7              # double 2.0871629999999999
	.quad	0x3ffa2e935b91f70e              # double 1.636371
	.quad	0x401ff400fba8826b              # double 7.9882850000000003
	.quad	0x40237953586ca8a0              # double 9.7369640000000004
	.quad	0x4022c16c3fc43b2e              # double 9.3777790000000003
	.quad	0x4000830ec3116228              # double 2.063993
	.quad	0x4023a8ee28672757              # double 9.8299420000000008
	.quad	0x401171be2b4959e6              # double 4.3610769999999999
	.quad	0x4016baa25d8d79d1              # double 5.6822600000000003
	.quad	0x401d9305532617c2              # double 7.3935750000000002
	.quad	0x4016a36976bc1f00              # double 5.6595820000000003
	.quad	0x3ff6b8887229e908              # double 1.4200520000000001
	.quad	0x401e6f36ef8055fc              # double 7.6086080000000003
	.quad	0x3ff00945f9df548f              # double 1.002264
	.quad	0x402059e55c0fcb4f              # double 8.1755779999999998
	.quad	0x3ff05fe43675ddd3              # double 1.0234110000000001
	.quad	0x3ff10efed634549b              # double 1.0661609999999999
	.quad	0x4016f8eb463497b7              # double 5.7430849999999998
	.quad	0x40165b6c3760bf5d              # double 5.5892799999999996
	.quad	0x401696149c6f36f0              # double 5.6465630000000004
	.quad	0x401fe50e34762952              # double 7.973687
	.quad	0x4017223e18698351              # double 5.7834399999999997
	.quad	0x400702ac322291fb              # double 2.8763049999999999
	.quad	0x3fee954eb13dfb0d              # double 0.95572599999999996
	.quad	0x401f51c3ac929aa2              # double 7.8298480000000001
	.quad	0x4022f41743e963dc              # double 9.4767399999999994
	.quad	0x4014ba0902de00d2              # double 5.1816750000000003
	.quad	0x4012520fb224aada              # double 4.5801379999999998
	.quad	0x400e1faebc408d8f              # double 3.7654700000000001
	.quad	0x3fb0d5d80e496edf              # double 0.065763000000000002
	.quad	0x4022f30d306a2b17              # double 9.4747099999999999
	.quad	0x3fded5f138bcdff0              # double 0.48180800000000001
	.quad	0x4011b86db50f40e6              # double 4.4301060000000003
	.quad	0x40116311a543f1c7              # double 4.3467469999999997
	.quad	0x400c30539fba450b              # double 3.5235970000000001
	.quad	0x40005dc4007570c5              # double 2.0457839999999998
	.quad	0x400b493293d102bc              # double 3.4107409999999998
	.quad	0x40001a78f25a2510              # double 2.0129260000000002
	.quad	0x40230b2d905c0336              # double 9.5218319999999999
	.quad	0x401570a06e9ff0cc              # double 5.3599870000000003
	.quad	0x4000522e1ac57e24              # double 2.040127
	.quad	0x401b499b6f5caf2d              # double 6.8218819999999996
	.quad	0x4023f868123810e9              # double 9.9851690000000008
	.quad	0x4011e82730c67169              # double 4.476712
	.quad	0x401bc1a9fbe76c8b              # double 6.9391249999999998
	.quad	0x401f60b1bbcf4e87              # double 7.8444279999999997
	.quad	0x40239730c67168f9              # double 9.7952940000000001
	.quad	0x401a50096feb4a66              # double 6.5781609999999997
	.quad	0x4019fefe93187619              # double 6.4990180000000004
	.quad	0x401a49ddc1e7967d              # double 6.5721350000000003
	.quad	0x4021f36cdf266ba5              # double 8.9754400000000008
	.quad	0x40053ca1059ea572              # double 2.654604
	.quad	0x40133c1b97353b4b              # double 4.8086989999999998
	.quad	0x3fbf99f5dfeb8d82              # double 0.123443
	.quad	0x401fd48c2e770bd0              # double 7.9575659999999999
	.quad	0x40219d6b228dc982              # double 8.8074580000000005
	.quad	0x401975e17e34b945              # double 6.3651179999999998
	.quad	0x3fda5ce9e5e24788              # double 0.41192099999999998
	.quad	0x4023ddfd8adab9f5              # double 9.9335749999999993
	.quad	0x40213cee9dd7ecbb              # double 8.6190079999999991
	.quad	0x4009778b3700474e              # double 3.1833710000000002
	.quad	0x3fc387bdcf0307f2              # double 0.15257999999999999
	.quad	0x401fc66be7afa722              # double 7.9437709999999999
	.quad	0x4011937f7be121ee              # double 4.3940409999999996
	.quad	0x400ca52ef911cf35              # double 3.5806559999999998
	.quad	0x40174b2702a3486f              # double 5.823391
	.quad	0x40233b44a1f08030              # double 9.6157579999999996
	.quad	0x400ab0a88effe2a4              # double 3.3362590000000001
	.quad	0x40176be3c105186e              # double 5.8553610000000003
	.quad	0x401cd55000c9539c              # double 7.2083130000000004
	.quad	0x3ff4f0e4da09cc32              # double 1.3088120000000001
	.quad	0x40026b97785729b3              # double 2.3025350000000002
	.quad	0x4018a5aab4741073              # double 6.1617839999999999
	.quad	0x40232cf3775b8130              # double 9.5877949999999998
	.quad	0x400950917d6b65aa              # double 3.1643400000000002
	.quad	0x401f5fddebd9018e              # double 7.8436199999999996
	.quad	0x40018f0520d130e0              # double 2.1948340000000002
	.quad	0x40010351deefe500              # double 2.1266210000000001
	.quad	0x40076ef459d9902a              # double 2.9291770000000001
	.quad	0x3fe313e5fb71fbc6              # double 0.59617900000000001
	.quad	0x400ef5f3d7d3910c              # double 3.8700939999999999
	.quad	0x3fd28900c521dda0              # double 0.28961199999999998
	.quad	0x4020b87d912556d2              # double 8.3603330000000007
	.quad	0x401dd14445aa2e3c              # double 7.4543619999999997
	.quad	0x4022e05857afea3e              # double 9.4381740000000001
	.quad	0x4022de95b78cc9a7              # double 9.4347359999999991
	.quad	0x40210ef0068db8bb              # double 8.5291750000000004
	.quad	0x400b080b673c4f3c              # double 3.3789280000000002
	.quad	0x4012592641b328b7              # double 4.5870600000000001
	.quad	0x3fe1cbf4cb1897a6              # double 0.55614699999999995
	.quad	0x401cc94af4f0d845              # double 7.1965750000000002
	.quad	0x4010ad30270f3882              # double 4.1691289999999999
	.quad	0x4023af2f33ca31e8              # double 9.8421570000000002
	.quad	0x401cba0f9096bb99              # double 7.1817000000000002
	.quad	0x40206c63cfb3311a              # double 8.2116989999999994
	.quad	0x4002329ed3953dea              # double 2.2747169999999999
	.quad	0x40162a37ac3eb7cc              # double 5.5412280000000003
	.quad	0x400064d87724fa8b              # double 2.0492409999999999
	.quad	0x4019c68fd199bb28              # double 6.4439080000000004
	.quad	0x401364b662fdfc1a              # double 4.8483520000000002
	.quad	0x402258897e996313              # double 9.1729240000000001
	.quad	0x40204cc319c5a3e4              # double 8.1499260000000006
	.quad	0x40137ec0b567557a              # double 4.8737820000000003
	.quad	0x4017f26e978d4fdf              # double 5.9867499999999998
	.quad	0x3ff872e1693c03bc              # double 1.5280469999999999
	.quad	0x40220b3333333333              # double 9.0218749999999996
	.quad	0x40106b2edfe75bc4              # double 4.1046709999999997
	.quad	0x40153f4dbdf8f473              # double 5.31182
	.quad	0x4000931550ca1cef              # double 2.0718179999999999
	.quad	0x400dd43201040bfe              # double 3.7286109999999999
	.quad	0x401f63358f2e05cd              # double 7.8468840000000001
	.quad	0x3ffbcee392e1ef74              # double 1.7380100000000001
	.quad	0x4023e6d8904f6dfc              # double 9.9508709999999993
	.quad	0x401eda671ef30a4e              # double 7.7132839999999998
	.quad	0x4020fe121ee67514              # double 8.4962319999999991
	.quad	0x40017caea747d806              # double 2.18588
	.quad	0x40214e27179bfdf8              # double 8.6526420000000002
	.quad	0x4013c4024b33daf9              # double 4.9414150000000001
	.quad	0x402122f09d8c6d61              # double 8.5682419999999997
	.quad	0x4001da68b19a415f              # double 2.2316449999999999
	.quad	0x40231666234a87e4              # double 9.5437480000000007
	.quad	0x40151e529bae46d0              # double 5.2796120000000002
	.quad	0x4020f5de37585be2              # double 8.4802110000000006
	.quad	0x3ff59d2178f68be3              # double 1.350862
	.quad	0x40124c47e49b1fac              # double 4.5744930000000004
	.quad	0x4003921682f94424              # double 2.446332
	.quad	0x401d39f59ccfaeff              # double 7.3066009999999997
	.quad	0x401ddd234eb9a177              # double 7.4659550000000001
	.quad	0x4009fd145d851655              # double 3.2485740000000001
	.quad	0x401541fc8f32378b              # double 5.3144400000000003
	.quad	0x4010e333b96af039              # double 4.2218770000000001
	.quad	0x401c48b9baa1511e              # double 7.071021
	.quad	0x40076cefed63454a              # double 2.9281920000000001
	.quad	0x3fc08d08919ef955              # double 0.129304
	.quad	0x4005a07357e670e3              # double 2.7033450000000001
	.quad	0x402304a59c065b64              # double 9.5090760000000003
	.quad	0x401d373929ed3954              # double 7.3039290000000001
	.quad	0x40183bfd2e946801              # double 6.0585829999999996
	.quad	0x401cb2b2bfdb4cc2              # double 7.1745099999999997
	.quad	0x3ffa3294dd72367e              # double 1.6373489999999999
	.quad	0x401b89b13165d399              # double 6.8844649999999996
	.quad	0x4022fb64e054690e              # double 9.4910040000000002
	.quad	0x4022f0626f60e0eb              # double 9.4695009999999992
	.quad	0x4017227fa1a0cf18              # double 5.78369
	.quad	0x40112d5f138bcdff              # double 4.294308
	.quad	0x4010e96c3fc43b2e              # double 4.2279520000000002
	.quad	0x3fee90667f90d9d7              # double 0.95512699999999995
	.quad	0x400025753a3ec02f              # double 2.0182899999999999
	.quad	0x402025fb9389b520              # double 8.0741849999999999
	.quad	0x40079f487fcb923a              # double 2.9527749999999999
	.quad	0x401168deb0fadf2f              # double 4.3524120000000002
	.quad	0x400608ffb8b26395              # double 2.754394
	.quad	0x4022ac87fcb923a3              # double 9.3369750000000007
	.quad	0x4014ef15e7c8d196              # double 5.2334820000000004
	.quad	0x3ff3e656abde3fbc              # double 1.243735
	.quad	0x40215c59b8023a6d              # double 8.6803720000000002
	.quad	0x40222f35c182ecaf              # double 9.0922070000000001
	.quad	0x400b224031487768              # double 3.391724
	.quad	0x401dae2c98e53eb4              # double 7.4200920000000004
	.quad	0x3fd2bb384fd2a62b              # double 0.29267700000000002
	.quad	0x40236ceee0f3cb3e              # double 9.7127599999999994
	.quad	0x401762cb20fb224b              # double 5.8464780000000003
	.quad	0x40218861c79b34a4              # double 8.7663709999999994
	.quad	0x4000f17a46173b86              # double 2.117909
	.quad	0x4008d59ab6d00b46              # double 3.1042990000000001
	.quad	0x40185a1f4b1ee243              # double 6.0880099999999997
	.quad	0x40196f4384ba0e84              # double 6.3586559999999999
	.quad	0x40213c26138fffbd              # double 8.6174780000000002
	.quad	0x400a5b8c32a8c9b8              # double 3.2947009999999999
	.quad	0x40022a2ec28b2a6b              # double 2.270597
	.quad	0x40033bb6aa4b9885              # double 2.4041570000000001
	.quad	0x40168bd5992428d4              # double 5.6365569999999998
	.quad	0x4019bbcdfefbf402              # double 6.4334030000000002
	.quad	0x4009e6bdf4c2b51c              # double 3.2376670000000001
	.quad	0x3ff60bdfd2630ec3              # double 1.377899
	.quad	0x40097eab367a0f91              # double 3.1868500000000002
	.quad	0x400377fae3608d09              # double 2.4335840000000002
	.quad	0x401f50e779207d4e              # double 7.829008
	.quad	0x402163d35eb7457c              # double 8.6949719999999999
	.quad	0x4008fdab5c39bcba              # double 3.1238619999999999
	.quad	0x400bd87485e3da30              # double 3.4806910000000002
	.quad	0x3ff24a686e7e62dc              # double 1.1431659999999999
	.quad	0x4014f8ea39c51dac              # double 5.2430810000000001
	.quad	0x40139e1650a45d42              # double 4.904382
	.quad	0x40194ef566490a35              # double 6.327108
	.quad	0x40207ef6f8f04146              # double 8.2479779999999998
	.quad	0x40200abcf91a32b1              # double 8.0209729999999997
	.quad	0x4016ed206c8711d8              # double 5.7315690000000004
	.quad	0x3fe9d3bf2f555821              # double 0.80709799999999998
	.quad	0x3fe1294ff0025bfb              # double 0.53629300000000002
	.quad	0x402360123810e886              # double 9.6876390000000008
	.quad	0x4016d7efe0ce0b91              # double 5.7108759999999998
	.quad	0x3fe146d1e108c3f4              # double 0.53989500000000001
	.quad	0x4013ac92ddbdb5d9              # double 4.9185290000000004
	.quad	0x401ccc1a47a9e2bd              # double 7.199319
	.quad	0x3ffcd22c881e4713              # double 1.801312
	.quad	0x3feac86cebbba55d              # double 0.83696599999999999
	.quad	0x4010c6f7e3d1cc10              # double 4.1943049999999999
	.quad	0x40103f5ec80c73ac              # double 4.0618850000000002
	.quad	0x3fee055b89939219              # double 0.93815400000000004
	.quad	0x40107e5471715c64              # double 4.1233690000000003
	.quad	0x3fe245c9a34ca0c3              # double 0.57101900000000005
	.quad	0x4023cb32acfb762e              # double 9.8968710000000009
	.quad	0x401d35b5fa22706d              # double 7.3024519999999997
	.quad	0x3ff435989df1172f              # double 1.263085
	.quad	0x4008711276fb0920              # double 3.0552109999999999
	.quad	0x3fcf62b6ae7d566d              # double 0.2452
	.quad	0x3ff9112dba4d6e48              # double 1.566694
	.quad	0x400432428d434a02              # double 2.5245410000000001
	.quad	0x4014819220ff5409              # double 5.1265340000000004
	.quad	0x3fe7aa497fa5d28d              # double 0.739537
	.quad	0x3ff98575c0767d35              # double 1.595083
	.quad	0x3ff07ff25e56cd6c              # double 1.031237
	.quad	0x401db4c0df58c08b              # double 7.4265169999999996
	.quad	0x40091d095af294dd              # double 3.1391779999999998
	.quad	0x40001baa1511dffc              # double 2.0135079999999999
	.quad	0x3ffe3083558a7610              # double 1.886844
	.quad	0x401f39a2834d26fa              # double 7.8062839999999998
	.quad	0x40137102363b2570              # double 4.86036
	.quad	0x402311906cca2db6              # double 9.5343049999999998
	.quad	0x4001e830a0b1bbcf              # double 2.2383739999999999
	.quad	0x401b4e2c98e53eb4              # double 6.8263420000000004
	.quad	0x40085aab47410731              # double 3.0442719999999999
	.quad	0x3fcea02b841248d8              # double 0.239263
	.quad	0x400af76a2f48c2e7              # double 3.3708079999999998
	.quad	0x401bb2849cb252ce              # double 6.924334
	.quad	0x401e66cf850df15a              # double 7.6004009999999997
	.quad	0x400c2544fe36d224              # double 3.5181979999999999
	.quad	0x4020a52b90a78290              # double 8.3225979999999993
	.quad	0x401a514c22ee4192              # double 6.5793920000000004
	.quad	0x40098a9b499d0204              # double 3.192679
	.quad	0x3fa31e9f2778140e              # double 0.037343000000000001
	.quad	0x3ffd06950fc71d60              # double 1.8141069999999999
	.quad	0x40119f0ae536501e              # double 4.4053149999999999
	.quad	0x40129f82b1f687b1              # double 4.6557719999999998
	.quad	0x401777457c0b1359              # double 5.8664759999999996
	.quad	0x4002e1ad6451b930              # double 2.3601939999999999
	.quad	0x3ff697470eb24a6b              # double 1.4119330000000001
	.quad	0x3fec83f0bae89eba              # double 0.89110599999999995
	.quad	0x3fd83254e6e221c9              # double 0.37807200000000002
	.quad	0x401afdb2702a3487              # double 6.7477510000000001
	.quad	0x4002d71a7e308787              # double 2.3550309999999999
	.quad	0x4023934dad31fcd2              # double 9.7877019999999995
	.quad	0x4017385122318330              # double 5.8049970000000002
	.quad	0x40100ec5f394b7b3              # double 4.0144270000000004
	.quad	0x3ff2b2452c59fb1e              # double 1.168523
	.quad	0x401e3f3dc054ef46              # double 7.5617590000000003
	.quad	0x400f40f12c27a637              # double 3.9067099999999999
	.quad	0x4013de6601bc98a2              # double 4.9671859999999999
	.quad	0x401cf75a31a4bdba              # double 7.241555
	.quad	0x4021777b9e060fe4              # double 8.7333649999999991
	.quad	0x400bc14cec41dd1a              # double 3.4693849999999999
	.quad	0x4017d0096feb4a66              # double 5.9531609999999997
	.quad	0x40171f75d9a0f0a6              # double 5.7807230000000001
	.quad	0x401dd8c5c9a34ca1              # double 7.4616920000000002
	.quad	0x400f84766c6de764              # double 3.9396789999999999
	.quad	0x4020abfb15b573eb              # double 8.3359000000000005
	.quad	0x3fe95bdf8f473040              # double 0.79246499999999997
	.quad	0x4015711ada76d97b              # double 5.3604539999999998
	.quad	0x401fe58c4bd33d29              # double 7.9741679999999997
	.quad	0x4023cd6fb8f57f73              # double 9.9012429999999991
	.quad	0x400518e10cf5b1c8              # double 2.6371479999999998
	.quad	0x4014781882adc4ca              # double 5.1172810000000002
	.quad	0x401f22756861e929              # double 7.7836509999999998
	.quad	0x4004ad3a604e1e71              # double 2.584584
	.quad	0x4010920c069e7fb2              # double 4.1426239999999996
	.quad	0x40217c284dfce315              # double 8.7424949999999999
	.quad	0x4021f9569f490603              # double 8.9869889999999995
	.quad	0x4011105ff1d81f10              # double 4.2659909999999996
	.quad	0x3ff92ba0620ab713              # double 1.573151
	.quad	0x40219d6adf71eaff              # double 8.8074560000000002
	.quad	0x3fdf1a437824d4cc              # double 0.48597800000000002
	.quad	0x4022a558644523f6              # double 9.3229399999999991
	.quad	0x40191da16616b54e              # double 6.2789359999999999
	.quad	0x40001a176ddaceee              # double 2.01274
	.quad	0x400e96323bbc6eb1              # double 3.8233380000000001
	.quad	0x3fe6f219220ff541              # double 0.71705300000000005
	.quad	0x4013a12ad81adea9              # double 4.9073900000000004
	.quad	0x401dc7d6733ebbfd              # double 7.4451539999999996
	.quad	0x401b427e9531550d              # double 6.8149360000000003
	.quad	0x400e7d3671ac14c6              # double 3.8111389999999998
	.quad	0x4014a81733226c3c              # double 5.1641510000000004
	.quad	0x40035475a31a4bdc              # double 2.4162400000000002
	.quad	0x4022a97aeddce7cd              # double 9.331016
	.quad	0x401b9d916872b021              # double 6.9038750000000002
	.quad	0x40228e9c4545846f              # double 9.2785360000000008
	.quad	0x4011a1feeb2d0a24              # double 4.4081989999999998
	.quad	0x40219d3cbc48f10b              # double 8.8071040000000007
	.quad	0x4020890ff9724745              # double 8.2676999999999996
	.quad	0x401e78a936c58eeb              # double 7.617833
	.quad	0x4010c90de093532e              # double 4.1963419999999996
	.quad	0x40135289dadfb507              # double 4.8306040000000001
	.quad	0x401f0f640639d5e5              # double 7.7650300000000003
	.quad	0x3fd32d7b634dad32              # double 0.299651
	.quad	0x401400ec74320104              # double 5.000902
	.quad	0x4016f6c11a11233e              # double 5.740971
	.quad	0x402319539b888723              # double 9.5494660000000006
	.quad	0x402269ad6451b930              # double 9.2064009999999996
	.quad	0x4013833acd5b6806              # double 4.8781540000000003
	.quad	0x401cef7ec3547e07              # double 7.2338820000000004
	.quad	0x400a44dc22ab25b3              # double 3.283623
	.quad	0x3fea1f8a0902de01              # double 0.81635000000000002
	.quad	0x4011b389b52007dd              # double 4.4253299999999998
	.quad	0x4011d462c343b70f              # double 4.457408
	.quad	0x401398c36da87a07              # double 4.8991829999999998
	.quad	0x401c49f666234a88              # double 7.0722290000000001
	.quad	0x4002ebd44998d046              # double 2.365151
	.quad	0x4021d456b441bb8c              # double 8.9147239999999996
	.quad	0x4002b09203a322af              # double 2.3362159999999998
	.quad	0x4020c15097c80842              # double 8.3775680000000001
	.quad	0x401e40ced4e4c943              # double 7.5632890000000001
	.quad	0x4008486f8ad2567a              # double 3.0353690000000002
	.quad	0x40019d6c72192210              # double 2.201867
	.quad	0x40134005c4651f3f              # double 4.8125220000000004
	.quad	0x4021d222b3892ee8              # double 8.9104209999999995
	.quad	0x400f96eefa1e3eaf              # double 3.9486979999999998
	.quad	0x401146705c896dd2              # double 4.3187879999999996
	.quad	0x4021108aac96cc60              # double 8.5323080000000004
	.quad	0x401701b2e59af9ec              # double 5.7516590000000001
	.quad	0x40102fbefd00713f              # double 4.046627
	.quad	0x401fe1f8a0902de0              # double 7.970675
	.quad	0x4019c9fe43675ddd              # double 6.4472589999999999
	.quad	0x401fa79d0a67620f              # double 7.913685
	.quad	0x40189b58d1526d8b              # double 6.1517059999999999
	.quad	0x401acf4a558ea7ce              # double 6.7024319999999999
	.quad	0x400bef533f42352f              # double 3.4918580000000001
	.quad	0x401c0cb5350092cd              # double 7.01241
	.quad	0x4023c0cc78e9f6a9              # double 9.8765599999999995
	.quad	0x3fe73d25247cb70b              # double 0.72621400000000003
	.quad	0x3fe4f5f0b28522ea              # double 0.65502199999999999
	.quad	0x40136582dbe7f2c3              # double 4.849132
	.quad	0x4023c7fc115df655              # double 9.8905949999999993
	.quad	0x40032f92af9a8cdf              # double 2.3982290000000002
	.quad	0x40181d49d7ba6699              # double 6.0286020000000002
	.quad	0x4008564e054690de              # double 3.042141
	.quad	0x401804738a3b57c5              # double 6.0043470000000001
	.quad	0x3fe4c213a0c6b485              # double 0.64869100000000002
	.quad	0x4000a3af31b152f4              # double 2.0799240000000001
	.quad	0x3ff46e008e9b38d6              # double 1.276856
	.quad	0x401b2c4ac6cdaf4b              # double 6.7932540000000001
	.quad	0x40155c660a201472              # double 5.3402329999999996
	.quad	0x3ff59c304ccee5ac              # double 1.3506320000000001
	.quad	0x3ff61b445ed4a1ad              # double 1.3816569999999999
	.quad	0x40097907d912556d              # double 3.184097
	.quad	0x401839acbc8c0ce9              # double 6.0563229999999999
	.quad	0x4021e37521144cbe              # double 8.9442529999999998
	.quad	0x400723f1c75818c6              # double 2.8925510000000001
	.quad	0x3ffc2d17c5ef62fa              # double 1.761009
	.quad	0x401ee6ee73e681aa              # double 7.7255190000000002
	.quad	0x4013dfd5cb790fb6              # double 4.9685889999999997
	.quad	0x4019b3311a543f1c              # double 6.4249919999999996
	.quad	0x3faa30fcf80dc337              # double 0.051154999999999999
	.quad	0x4016612dfd694ccb              # double 5.5949020000000003
	.quad	0x400d59f0a1be2b49              # double 3.6689159999999998
	.quad	0x400fb93b3a68b19a              # double 3.9654449999999999
	.quad	0x3fe4fe0ef99806f2              # double 0.65601299999999996
	.quad	0x4007674d9c6b0532              # double 2.9254410000000002
	.quad	0x401a0dd1a21ea359              # double 6.5134949999999998
	.quad	0x40102514c22ee419              # double 4.0362119999999999
	.quad	0x401e1fb71fbc5dea              # double 7.5309720000000002
	.quad	0x4007ca92e62131a9              # double 2.973913
	.quad	0x401fb93c89f40a28              # double 7.9308949999999995
	.quad	0x40235c95182a9931              # double 9.6808250000000004
	.quad	0x3feaf0329802c0a5              # double 0.84182100000000004
	.quad	0x402034a7503b81b6              # double 8.1028389999999995
	.quad	0x3ff2bf77af64063a              # double 1.171745
	.quad	0x40034c386d2ed784              # double 2.4122170000000001
	.quad	0x401cb13879c4113c              # double 7.1730669999999996
	.quad	0x4009ff78bbd38045              # double 3.2497419999999999
	.quad	0x401152de43ed959a              # double 4.3309259999999998
	.quad	0x400e7c9cd3e0bd45              # double 3.8108460000000002
	.quad	0x4005970c564f97ee              # double 2.6987540000000001
	.quad	0x4000c8af81626b2f              # double 2.0979909999999999
	.quad	0x401b5c89f40a2878              # double 6.8403700000000001
	.quad	0x40127c2224edf612              # double 4.6212239999999998
	.quad	0x400d918dac258d58              # double 3.6960709999999999
	.quad	0x4020b58f92af9a8d              # double 8.3546110000000002
	.quad	0x400a772c5197a249              # double 3.3081900000000002
	.quad	0x4021075f6fd21ff3              # double 8.5144000000000002
	.quad	0x40060b26394face6              # double 2.7554439999999998
	.quad	0x40106f3cb3e5753a              # double 4.1086299999999998
	.quad	0x40139a5870da5daf              # double 4.900728
	.quad	0x4022e177c88e79ab              # double 9.4403670000000001
	.quad	0x3ff994f7a919695e              # double 1.5988690000000001
	.quad	0x3ff3ea3df6db9410              # double 1.244688
	.quad	0x3fe2d718eb895076              # double 0.58875699999999997
	.quad	0x4020d3da72a7bd49              # double 8.4137760000000004
	.quad	0x4007a34ca0c282c7              # double 2.954736
	.quad	0x3fe79795b35b0bbf              # double 0.73725399999999996
	.quad	0x401fc58a76102795              # double 7.9429109999999996
	.quad	0x401e19a459103c8e              # double 7.5250409999999999
	.quad	0x4022aac42e9899bf              # double 9.3335279999999994
	.quad	0x3ff622a2c2374795              # double 1.383456
	.quad	0x401dbac3eb7cbb3d              # double 7.4323880000000004
	.quad	0x4022adf9bdc69f8c              # double 9.3397959999999997
	.quad	0x4019aa4c61d8622c              # double 6.4163069999999998
	.quad	0x3ff120b8066c2acc              # double 1.0704880000000001
	.quad	0x4012bc2656abde40              # double 4.6837400000000002
	.quad	0x3ff5e694898f605b              # double 1.3687940000000001
	.quad	0x4013392ea52ef912              # double 4.8058420000000002
	.quad	0x4023b8ae536501e2              # double 9.8607049999999994
	.quad	0x3ff7e856605ee569              # double 1.4942230000000001
	.quad	0x401e689a02752546              # double 7.60215
	.quad	0x4012a545c78a6dad              # double 4.6613990000000003
	.quad	0x401a50663c74fb55              # double 6.5785150000000003
	.quad	0x4020a6f9335d249e              # double 8.3261199999999995
	.quad	0x4014f21bc126a65d              # double 5.236434
	.quad	0x401db7baecd07853              # double 7.429424
	.quad	0x400045f5ad96a6a0              # double 2.03416
	.quad	0x3ffc2d6777079e5a              # double 1.761085
	.quad	0x402374bee807bbb6              # double 9.7280189999999997
	.quad	0x40079b3743632c1f              # double 2.9507889999999999
	.quad	0x401ffda22f6a50d7              # double 7.9976890000000002
	.quad	0x401af0d173fb7a5f              # double 6.7351739999999998
	.quad	0x4022b5f8f4730404              # double 9.3554150000000007
	.quad	0x3fde591cd1c7de51              # double 0.47418900000000003
	.quad	0x401a250efdc9c4db              # double 6.5361900000000004
	.quad	0x402040092ccf6be3              # double 8.1250699999999991
	.quad	0x3ff9d2a51e321a2e              # double 1.6139269999999999
	.quad	0x3ff72cfa69be09bb              # double 1.4484809999999999
	.quad	0x40049fc7e6b3fea0              # double 2.5780180000000001
	.quad	0x3fef5fc3b4f61672              # double 0.98043999999999998
	.quad	0x4015a372a38b8ae3              # double 5.4096169999999999
	.quad	0x400b404295a6c5d2              # double 3.406377
	.quad	0x40175242070b8cfc              # double 5.83033
	.quad	0x400d8f6837f7be12              # double 3.6950229999999999
	.quad	0x3ffc930489d27c39              # double 1.785893
	.quad	0x4015024edf612407              # double 5.2522539999999998
	.quad	0x4013acd035371972              # double 4.9187630000000002
	.quad	0x40149df86e3b46fe              # double 5.1542680000000001
	.quad	0x40239d0f40e5a35d              # double 9.8067569999999992
	.quad	0x4023e6a140570825              # double 9.9504490000000007
	.quad	0x4016801abd1aa822              # double 5.625102
	.quad	0x401869b1b79d909f              # double 6.1032169999999999
	.quad	0x3ff861a60d4562e1              # double 1.5238400000000001
	.quad	0x3ffe053e2d6238da              # double 1.8762799999999999
	.quad	0x40125213e3e29308              # double 4.5801540000000003
	.quad	0x4005ef32378ab0c9              # double 2.7417950000000002
	.quad	0x4014f69db65ecc3e              # double 5.2408359999999998
	.quad	0x401856bb55ac03ff              # double 6.0846989999999996
	.quad	0x3fe5cfe79ee02a78              # double 0.68162900000000004
	.quad	0x400f53d188f42fe8              # double 3.9159269999999999
	.quad	0x3ffa7d1dcd7060bb              # double 1.655546
	.quad	0x3fe50a88effe2a3d              # double 0.65753600000000001
	.quad	0x40210f89613d31ba              # double 8.5303450000000005
	.quad	0x401a888509bf9c63              # double 6.6333200000000003
	.quad	0x401c2180d3cff64d              # double 7.032718
	.quad	0x4013d1b3f20a73f7              # double 4.9547879999999997
	.quad	0x400284bec679cc75              # double 2.3148170000000001
	.quad	0x4011d17507e9d94d              # double 4.454548
	.quad	0x4023b924af0bf1a6              # double 9.8616080000000004
	.quad	0x3ffee1b7e0ac7da2              # double 1.930107
	.quad	0x3ff834959e625636              # double 1.5128379999999999
	.quad	0x3ffc3aa25d8d79d1              # double 1.7643150000000001
	.quad	0x400c8de4c51116a9              # double 3.5692840000000001
	.quad	0x400b4135daad6020              # double 3.406841
	.quad	0x401a91d798d8a97a              # double 6.6424240000000001
	.quad	0x40101b05faebc409              # double 4.0263900000000001
	.quad	0x401fb6199780baa6              # double 7.9278320000000004
	.quad	0x400ec299524bfd2f              # double 3.8450190000000002
	.quad	0x4023a8b30b5aa716              # double 9.8294910000000009
	.quad	0x4000c5100a393ee6              # double 2.096222
	.quad	0x400806cdaf4adbc6              # double 3.0033219999999998
	.quad	0x3fd48d7e02645e4e              # double 0.32113599999999998
	.quad	0x4017c7e414e7ee91              # double 5.9452059999999998
	.quad	0x3fe74f69ca9ef523              # double 0.72844399999999998
	.quad	0x4019347cb70ac3a8              # double 6.3012569999999997
	.quad	0x401cb605681ecd4b              # double 7.1777550000000003
	.quad	0x40127dc93ea2d2fe              # double 4.6228379999999998
	.quad	0x4022501e68a0d34a              # double 9.1564820000000005
	.quad	0x4001a93a71151612              # double 2.2076310000000001
	.quad	0x40122ba775fb2ee0              # double 4.5426310000000001
	.quad	0x4012d402d16b97ff              # double 4.7070420000000004
	.quad	0x3ffb9cde5d18090b              # double 1.7257979999999999
	.quad	0x3ffc144998d045fe              # double 1.754953
	.quad	0x4010b4d1633482bf              # double 4.1765800000000004
	.quad	0x40167c8366516db1              # double 5.6215950000000001
	.quad	0x401e58b8ae31d713              # double 7.5866420000000003
	.quad	0x3fe51bd1ed9dfdac              # double 0.65964599999999995
	.quad	0x4020bacdc011d367              # double 8.3648509999999998
	.quad	0x401dc6a098915bdd              # double 7.4439719999999996
	.quad	0x402366daa92e6213              # double 9.7008869999999998
	.quad	0x401ed45d41fa7653              # double 7.7073869999999997
	.quad	0x401bcbfa0945f9df              # double 6.9491959999999997
	.quad	0x401508c47a17f413              # double 5.2585620000000004
	.quad	0x4021b7559b3d07c8              # double 8.8580749999999995
	.quad	0x40239af07bfe7e20              # double 9.8026160000000004
	.quad	0x400025931ca7d673              # double 2.0183469999999999
	.quad	0x401a6e874c8ffb8b              # double 6.6079379999999999
	.quad	0x3feb727136a400fc              # double 0.85772000000000003
	.quad	0x3ff03005814940bc              # double 1.0117240000000001
	.quad	0x400ed532617c1bda              # double 3.8540999999999999
	.quad	0x4011d5faa8a82a56              # double 4.4589639999999999
	.quad	0x40182394face67d7              # double 6.0347479999999996
	.quad	0x401b00bf5d78811b              # double 6.7507299999999999
	.quad	0x40202bb59ddc1e79              # double 8.0853699999999993
	.quad	0x3ff77cce1c58255b              # double 1.46797
	.quad	0x40059c74751ce28f              # double 2.7013940000000001
	.quad	0x401a5f27bb2fec57              # double 6.5929250000000001
	.quad	0x4023375e6362a5e8              # double 9.6081420000000008
	.quad	0x402294ff43419e30              # double 9.29101
	.quad	0x401df41cc532a498              # double 7.488391
	.quad	0x4017694af4f0d845              # double 5.8528250000000002
	.quad	0x4010c99f5dfeb8d8              # double 4.1968969999999999
	.quad	0x3fee5e43ed959a31              # double 0.94900700000000004
	.quad	0x4016571de69ad42c              # double 5.5850749999999998
	.quad	0x400348bfc2224edf              # double 2.4105219999999998
	.quad	0x4014034549b62c77              # double 5.0031939999999997
	.quad	0x40124f94855da273              # double 4.5777150000000004
	.quad	0x3feaa66dbd72bcb6              # double 0.832816
	.quad	0x40001ea9a3d2d880              # double 2.0149720000000002
	.quad	0x3ff01dd5d3dc8b87              # double 1.0072840000000001
	.quad	0x4015006fef7c243e              # double 5.2504270000000002
	.quad	0x4022972e275ab7dc              # double 9.2952739999999991
	.quad	0x401cfa25529fe005              # double 7.2442830000000002
	.quad	0x4010c6d117b5286b              # double 4.1941569999999997
	.quad	0x401981a60d4562e1              # double 6.3766100000000003
	.quad	0x4023d5c3dee78184              # double 9.91751
	.quad	0x400fd82cb20fb225              # double 3.9805540000000001
	.quad	0x400e43a3a8e71477              # double 3.7830270000000001
	.quad	0x40205fef5a964e8b              # double 8.1873729999999991
	.quad	0x401ec0b5675579af              # double 7.6881919999999999
	.quad	0x400c1fdac68a936c              # double 3.5155539999999998
	.quad	0x401817af640639d6              # double 6.0231300000000001
	.quad	0x4007b0d62bf11f92              # double 2.9613459999999998
	.quad	0x3ffb774cd31769a9              # double 1.716626
	.quad	0x3ffef30d7386099a              # double 1.934339
	.quad	0x40160a027525460b              # double 5.5097750000000003
	.quad	0x40202f3387160957              # double 8.0921900000000004
	.quad	0x3fff0bf4cb1897a6              # double 1.9404189999999999
	.quad	0x4018a05f6ba0620b              # double 6.1566140000000003
	.quad	0x40223f6427c7c526              # double 9.1238109999999999
	.quad	0x400b8de7ea5f84cb              # double 3.4442900000000001
	.quad	0x4019631ceaf251c2              # double 6.3467900000000004
	.quad	0x401396295208e150              # double 4.8966419999999999
	.quad	0x40076a19c9d5a188              # double 2.9268070000000002
	.quad	0x402211207d4e0978              # double 9.0334509999999995
	.quad	0x400a22eec7c957cd              # double 3.2670569999999999
	.quad	0x4014b05319828805              # double 5.1721919999999999
	.quad	0x401cff9d6f112fd3              # double 7.2496239999999998
	.quad	0x400b32dc2b0ea183              # double 3.3998339999999998
	.quad	0x401de2873bc903ea              # double 7.4712189999999996
	.quad	0x3ff693532e7b3d8e              # double 1.410968
	.quad	0x3ff1ada554b8bef9              # double 1.104894
	.quad	0x40235571b0468449              # double 9.6668830000000003
	.quad	0x401dcac9afe1da7b              # double 7.448035
	.quad	0x400fa908a265f0f6              # double 3.9575360000000002
	.quad	0x40006990f301eabc              # double 2.0515460000000001
	.quad	0x40129501e2584f4c              # double 4.6455149999999996
	.quad	0x4011de9d94d0dcfd              # double 4.4673980000000002
	.quad	0x4018064388ebcc6c              # double 6.0061169999999997
	.quad	0x4016b1bac2df0d41              # double 5.6735639999999998
	.quad	0x400e5d230b9dc2f4              # double 3.795477
	.quad	0x4011081f10667f91              # double 4.2579310000000001
	.quad	0x3ffe73fa6defc7a4              # double 1.9033150000000001
	.size	.L__constant_3000xf64, 24000

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
