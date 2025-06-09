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
	.quad	0x4144406c970ba626              # double 2654425.1800429998
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
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	108                             # 0x6c
	.quad	121                             # 0x79
	.quad	172                             # 0xac
	.quad	181                             # 0xb5
	.quad	235                             # 0xeb
	.quad	244                             # 0xf4
	.quad	299                             # 0x12b
	.quad	305                             # 0x131
	.quad	359                             # 0x167
	.quad	364                             # 0x16c
	.quad	418                             # 0x1a2
	.quad	428                             # 0x1ac
	.quad	480                             # 0x1e0
	.quad	483                             # 0x1e3
	.quad	536                             # 0x218
	.quad	545                             # 0x221
	.quad	598                             # 0x256
	.quad	601                             # 0x259
	.quad	654                             # 0x28e
	.quad	661                             # 0x295
	.quad	711                             # 0x2c7
	.quad	719                             # 0x2cf
	.quad	769                             # 0x301
	.quad	776                             # 0x308
	.quad	829                             # 0x33d
	.quad	833                             # 0x341
	.quad	885                             # 0x375
	.quad	894                             # 0x37e
	.quad	946                             # 0x3b2
	.quad	956                             # 0x3bc
	.quad	1009                            # 0x3f1
	.quad	1014                            # 0x3f6
	.quad	1069                            # 0x42d
	.quad	1078                            # 0x436
	.quad	1130                            # 0x46a
	.quad	1136                            # 0x470
	.quad	1188                            # 0x4a4
	.quad	1193                            # 0x4a9
	.quad	1247                            # 0x4df
	.quad	1250                            # 0x4e2
	.quad	1305                            # 0x519
	.quad	1314                            # 0x522
	.quad	1365                            # 0x555
	.quad	1371                            # 0x55b
	.quad	1422                            # 0x58e
	.quad	1429                            # 0x595
	.quad	1481                            # 0x5c9
	.quad	1492                            # 0x5d4
	.quad	1545                            # 0x609
	.quad	1552                            # 0x610
	.quad	1609                            # 0x649
	.quad	1617                            # 0x651
	.quad	1671                            # 0x687
	.quad	1676                            # 0x68c
	.quad	1727                            # 0x6bf
	.quad	1734                            # 0x6c6
	.quad	1787                            # 0x6fb
	.quad	1794                            # 0x702
	.quad	1851                            # 0x73b
	.quad	1858                            # 0x742
	.quad	1911                            # 0x777
	.quad	1917                            # 0x77d
	.quad	1970                            # 0x7b2
	.quad	1976                            # 0x7b8
	.quad	2029                            # 0x7ed
	.quad	2038                            # 0x7f6
	.quad	2089                            # 0x829
	.quad	2092                            # 0x82c
	.quad	2146                            # 0x862
	.quad	2153                            # 0x869
	.quad	2206                            # 0x89e
	.quad	2211                            # 0x8a3
	.quad	2264                            # 0x8d8
	.quad	2274                            # 0x8e2
	.quad	2326                            # 0x916
	.quad	2331                            # 0x91b
	.quad	2386                            # 0x952
	.quad	2393                            # 0x959
	.quad	2445                            # 0x98d
	.quad	2450                            # 0x992
	.quad	2503                            # 0x9c7
	.quad	2513                            # 0x9d1
	.quad	2567                            # 0xa07
	.quad	2576                            # 0xa10
	.quad	2629                            # 0xa45
	.quad	2633                            # 0xa49
	.quad	2687                            # 0xa7f
	.quad	2700                            # 0xa8c
	.quad	2753                            # 0xac1
	.quad	2758                            # 0xac6
	.quad	2810                            # 0xafa
	.quad	2814                            # 0xafe
	.quad	2867                            # 0xb33
	.quad	2876                            # 0xb3c
	.quad	2928                            # 0xb70
	.quad	2935                            # 0xb77
	.quad	2990                            # 0xbae
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
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	80                              # 0x50
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
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	90                              # 0x5a
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
	.quad	9                               # 0x9
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	57                              # 0x39
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
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
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
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
	.quad	12                              # 0xc
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
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
	.quad	14                              # 0xe
	.quad	55                              # 0x37
	.quad	66                              # 0x42
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
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	32                              # 0x20
	.quad	52                              # 0x34
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	89                              # 0x59
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
	.quad	23                              # 0x17
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
	.quad	55                              # 0x37
	.quad	71                              # 0x47
	.quad	91                              # 0x5b
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
	.quad	2                               # 0x2
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	60                              # 0x3c
	.quad	74                              # 0x4a
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
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	69                              # 0x45
	.quad	91                              # 0x5b
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
	.quad	9                               # 0x9
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	74                              # 0x4a
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	72                              # 0x48
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
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
	.quad	1                               # 0x1
	.quad	25                              # 0x19
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
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
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	14                              # 0xe
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	80                              # 0x50
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
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	58                              # 0x3a
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	17                              # 0x11
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
	.quad	21                              # 0x15
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
	.quad	61                              # 0x3d
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
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
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
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	31                              # 0x1f
	.quad	63                              # 0x3f
	.quad	78                              # 0x4e
	.quad	91                              # 0x5b
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
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
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
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	89                              # 0x59
	.quad	97                              # 0x61
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
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	29                              # 0x1d
	.quad	44                              # 0x2c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
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
	.quad	45                              # 0x2d
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	66                              # 0x42
	.quad	88                              # 0x58
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
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
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	63                              # 0x3f
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	21                              # 0x15
	.quad	34                              # 0x22
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
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
	.quad	81                              # 0x51
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
	.quad	7                               # 0x7
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	14                              # 0xe
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	74                              # 0x4a
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
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	45                              # 0x2d
	.quad	66                              # 0x42
	.quad	80                              # 0x50
	.quad	87                              # 0x57
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
	.quad	2                               # 0x2
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
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
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	58                              # 0x3a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
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
	.quad	20                              # 0x14
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	35                              # 0x23
	.quad	56                              # 0x38
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
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
	.quad	63                              # 0x3f
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	62                              # 0x3e
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
	.quad	18                              # 0x12
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
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
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	80                              # 0x50
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
	.quad	49                              # 0x31
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
	.quad	1                               # 0x1
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	95                              # 0x5f
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
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
	.quad	51                              # 0x33
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
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	96                              # 0x60
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
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	74                              # 0x4a
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
	.quad	7                               # 0x7
	.quad	21                              # 0x15
	.quad	84                              # 0x54
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
	.quad	7                               # 0x7
	.quad	30                              # 0x1e
	.quad	43                              # 0x2b
	.quad	54                              # 0x36
	.quad	65                              # 0x41
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
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
	.quad	37                              # 0x25
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
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
	.quad	85                              # 0x55
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
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	95                              # 0x5f
	.size	.L__constant_3000xindex, 24000

	.type	.L__constant_3000xf64,@object   # @__constant_3000xf64
	.p2align	6, 0x0
.L__constant_3000xf64:
	.quad	0x40125eb5f5f0b285              # double 4.5924909999999999
	.quad	0x400bc642bf9830e4              # double 3.4718070000000001
	.quad	0x40124e15011904b4              # double 4.5762520000000002
	.quad	0x3fedb2f449129889              # double 0.928095
	.quad	0x400e311f926c7eae              # double 3.7739859999999998
	.quad	0x40218ff43419e300              # double 8.7811599999999999
	.quad	0x3ff93419e30014f9              # double 1.5752200000000001
	.quad	0x4020fd3586ca89fc              # double 8.4945489999999992
	.quad	0x400ff3892ee84ad8              # double 3.9939140000000002
	.quad	0x40174e7d1351159c              # double 5.8266489999999997
	.quad	0x40213e73a365cb36              # double 8.6219760000000001
	.quad	0x401be9e060fe4799              # double 6.9783949999999999
	.quad	0x4013d7f51efb6dca              # double 4.960896
	.quad	0x400d9a2834d26fa4              # double 3.700272
	.quad	0x402343c3a42f1ed1              # double 9.6323519999999991
	.quad	0x401d144fe36d2242              # double 7.2698359999999997
	.quad	0x402008027d88c1db              # double 8.015644
	.quad	0x4016aa8049667b5f              # double 5.6665049999999999
	.quad	0x4016a96b3354c122              # double 5.6654479999999996
	.quad	0x4019671a3b14a904              # double 6.3506859999999996
	.quad	0x401bf60fa15db339              # double 6.9902939999999996
	.quad	0x40199faca3619978              # double 6.405932
	.quad	0x3ff40b9baa1511e0              # double 1.252834
	.quad	0x4013b77fae3608d1              # double 4.9291980000000004
	.quad	0x40236dae3e6c4c59              # double 9.7142199999999991
	.quad	0x4008c1d4306e5cd5              # double 3.094643
	.quad	0x4014c9899bf5946c              # double 5.1968139999999998
	.quad	0x40209d393250b524              # double 8.3070769999999996
	.quad	0x3fdc79cc74b838c1              # double 0.444934
	.quad	0x3fff532b55ef1fde              # double 1.957805
	.quad	0x3fe2c3f811f4f50a              # double 0.586422
	.quad	0x401c47ee4e26d480              # double 7.0702449999999999
	.quad	0x40090376922d948e              # double 3.1266910000000001
	.quad	0x401059780baa582e              # double 4.0873720000000002
	.quad	0x3fe3e11ba3ca7504              # double 0.62122900000000003
	.quad	0x4022078cc9a77e5f              # double 9.0147460000000006
	.quad	0x401ea46e8f29d40f              # double 7.6605780000000001
	.quad	0x3fe127179bfdf7e8              # double 0.536022
	.quad	0x3ffe2a6b0d9513f9              # double 1.885356
	.quad	0x4013f20c8cd63cb8              # double 4.9863759999999999
	.quad	0x40076be1eb4202da              # double 2.9276770000000001
	.quad	0x400226b2f23033a4              # double 2.2688959999999998
	.quad	0x3ffa328954a7f801              # double 1.637338
	.quad	0x4006e2a3cea6c1a0              # double 2.8606639999999999
	.quad	0x40155ebbba55d1c4              # double 5.3425130000000003
	.quad	0x40227003eea209ab              # double 9.2187800000000006
	.quad	0x40005dc9c4da9004              # double 2.045795
	.quad	0x400980fba8826aa9              # double 3.18798
	.quad	0x401231a75cd0bb6f              # double 4.5484900000000001
	.quad	0x401f3c77dd872f34              # double 7.8090510000000002
	.quad	0x4000b3eff1950332              # double 2.08786
	.quad	0x4022a98ac9f2fdb9              # double 9.331137
	.quad	0x4015780f98fa3769              # double 5.3672469999999999
	.quad	0x401b7a99b6f5caf3              # double 6.8697270000000001
	.quad	0x400536a26e547171              # double 2.6516769999999998
	.quad	0x401784face67d780              # double 5.8798630000000003
	.quad	0x3fe339389b52007e              # double 0.60073500000000002
	.quad	0x400a4752da98676a              # double 3.2848259999999998
	.quad	0x4018c67a0f9096bc              # double 6.1938250000000004
	.quad	0x40205f064ece9a2c              # double 8.1855949999999992
	.quad	0x401b18f041461b6d              # double 6.7743539999999998
	.quad	0x4021cab94d940789              # double 8.8959449999999993
	.quad	0x400bea85caafbc1b              # double 3.4895130000000001
	.quad	0x401764e26d4801f7              # double 5.8485199999999997
	.quad	0x401d507faa044ae8              # double 7.3286119999999996
	.quad	0x4008bb7f1737542a              # double 3.0915509999999999
	.quad	0x3ff5a58a32f44913              # double 1.3529150000000001
	.quad	0x4004c6149c6f36f0              # double 2.5967190000000002
	.quad	0x3ffbd6052502eec8              # double 1.739751
	.quad	0x401735247cb70ac4              # double 5.8018970000000003
	.quad	0x4017ac764adff823              # double 5.9184200000000002
	.quad	0x40204bc60029f16b              # double 8.1479949999999999
	.quad	0x401cd41aef6f8f04              # double 7.2071339999999999
	.quad	0x4017415054ac29bf              # double 5.8137829999999999
	.quad	0x401d841fa7653437              # double 7.3790269999999998
	.quad	0x40215f19f7f8ca82              # double 8.6857450000000007
	.quad	0x3fb62131a8ef77f2              # double 0.086443999999999993
	.quad	0x4000266fd651b0cd              # double 2.0187680000000001
	.quad	0x4010f701d9f4d37c              # double 4.2412179999999999
	.quad	0x4020affd82773e25              # double 8.343731
	.quad	0x400d4b95e5aff2a1              # double 3.6619069999999998
	.quad	0x40186316a055757d              # double 6.0967659999999997
	.quad	0x401b36a4ca4f440b              # double 6.803363
	.quad	0x40189f9ebe9c8861              # double 6.1558789999999997
	.quad	0x4020ebcd35a85879              # double 8.4605499999999996
	.quad	0x40132e7f2c3009b3              # double 4.795407
	.quad	0x401626c050bd87b5              # double 5.5378429999999996
	.quad	0x40122e9fadafd114              # double 4.5455310000000004
	.quad	0x401567d9988d2a20              # double 5.3514160000000004
	.quad	0x4002b74d594f26af              # double 2.3395030000000001
	.quad	0x4020975275ee99a6              # double 8.2955509999999997
	.quad	0x401c944e50c5eb31              # double 7.1448299999999998
	.quad	0x402384c0df58c08b              # double 9.7592839999999991
	.quad	0x4022e5955714b9cb              # double 9.4484049999999992
	.quad	0x40169d462c343b71              # double 5.6535880000000001
	.quad	0x4014409070fbeb9e              # double 5.0630509999999997
	.quad	0x4013f2d666a98245              # double 4.9871460000000001
	.quad	0x4011a1db445ed4a2              # double 4.4080630000000003
	.quad	0x4000044fa05143bf              # double 2.0021049999999998
	.quad	0x40059742dcf4623d              # double 2.698858
	.quad	0x3fd2986b9c304ccf              # double 0.29055300000000001
	.quad	0x4020de33482be8bc              # double 8.4339849999999998
	.quad	0x4021feafab53d641              # double 8.9974340000000002
	.quad	0x401019817b95a294              # double 4.0249079999999999
	.quad	0x3ffd518e325d4a5e              # double 1.832411
	.quad	0x4003dff8a8f3a9b0              # double 2.4843609999999998
	.quad	0x4005e161e4f765fe              # double 2.7350500000000002
	.quad	0x3ff93c33f85510d4              # double 1.5771980000000001
	.quad	0x400f7f0995aaf790              # double 3.93703
	.quad	0x400b7a1a0cf1800a              # double 3.4346199999999998
	.quad	0x3ff72e6644d87725              # double 1.448828
	.quad	0x4007ba7f3cf70154              # double 2.9660630000000001
	.quad	0x3fff8abd5dc40075              # double 1.9713719999999999
	.quad	0x40175d2d01c0ca60              # double 5.840992
	.quad	0x3fe6d100a393ee5f              # double 0.71301300000000001
	.quad	0x401c069878316a05              # double 7.0064409999999997
	.quad	0x3fc66b3fe9fadafd              # double 0.175148
	.quad	0x4016fa76534373f3              # double 5.7445919999999999
	.quad	0x40239d771001d5c3              # double 9.8075489999999998
	.quad	0x401b17aeddce7cd0              # double 6.7731279999999998
	.quad	0x4012a492ff4ba51a              # double 4.660717
	.quad	0x4008652e72da1230              # double 3.0494050000000001
	.quad	0x401447c3504c48ae              # double 5.0700810000000001
	.quad	0x4000cd573647baaa              # double 2.1002640000000001
	.quad	0x40155b34e7685986              # double 5.3390690000000003
	.quad	0x401d500ef1348b22              # double 7.328182
	.quad	0x401d37403dddb121              # double 7.3039560000000003
	.quad	0x40193a35935fc3b5              # double 6.306845
	.quad	0x3ff5183a53b8e4b8              # double 1.3184149999999999
	.quad	0x3ffa21f7d73c9258              # double 1.6332930000000001
	.quad	0x40223823c85c24c4              # double 9.1096479999999999
	.quad	0x3fb5b2b3461309c8              # double 0.084758
	.quad	0x3fd9c1ce6c093d96              # double 0.40245399999999998
	.quad	0x40036adddf43c7d6              # double 2.427181
	.quad	0x4022624894c447c3              # double 9.1919599999999999
	.quad	0x4023035b0bbf50e3              # double 9.5065539999999995
	.quad	0x4005fa3d2d87f887              # double 2.7471869999999998
	.quad	0x4007d8a32f44912a              # double 2.9807800000000002
	.quad	0x400418f9b13165d4              # double 2.5121950000000002
	.quad	0x401ba1ec0b567558              # double 6.9081270000000004
	.quad	0x401fc0c069e7fb26              # double 7.9382339999999996
	.quad	0x400de151a437824d              # double 3.7350189999999999
	.quad	0x4022025dd095af29              # double 9.0046219999999995
	.quad	0x3fe61ba7fc32ebe6              # double 0.69087600000000005
	.quad	0x3ffeea8869c66d37              # double 1.9322589999999999
	.quad	0x401ea951c5c5718f              # double 7.6653510000000002
	.quad	0x401277a20578e5c5              # double 4.6168290000000001
	.quad	0x400e5c99ae924f22              # double 3.7952149999999998
	.quad	0x400694f69ca9ef52              # double 2.8227359999999999
	.quad	0x40136a95421c0443              # double 4.8540850000000004
	.quad	0x4011806d938151a4              # double 4.3754179999999998
	.quad	0x4021f5d97f62b6ae              # double 8.9801749999999991
	.quad	0x40053a459103c8e2              # double 2.6534529999999998
	.quad	0x401689c62a1b5c7d              # double 5.6345450000000001
	.quad	0x401f4c3ac929aa1d              # double 7.8244429999999995
	.quad	0x400f183f91e646f1              # double 3.8868399999999999
	.quad	0x3fd5c271fff79c84              # double 0.33999299999999999
	.quad	0x3ff187c73eee5259              # double 1.0956490000000001
	.quad	0x3ffc25375c8d9f90              # double 1.7590859999999999
	.quad	0x401fa145d851654d              # double 7.9074929999999996
	.quad	0x40056a65492ff4ba              # double 2.6769509999999999
	.quad	0x3fe6763800218def              # double 0.70193099999999997
	.quad	0x401c55525cc42635              # double 7.0833219999999999
	.quad	0x40226d6e04c05921              # double 9.21373
	.quad	0x4021197f1f9acffa              # double 8.5497979999999991
	.quad	0x3ffcaa4228997c3d              # double 1.7915669999999999
	.quad	0x4023dba2df9378ee              # double 9.9289769999999997
	.quad	0x402175dedf1e0829              # double 8.7302160000000004
	.quad	0x4018cb6d00b45ae6              # double 6.198658
	.quad	0x4012071ef30a4e38              # double 4.5069540000000003
	.quad	0x401343f748a15981              # double 4.8163729999999996
	.quad	0x401d2abd1aa821f3              # double 7.2917370000000004
	.quad	0x4023ed9ec7000432              # double 9.9641020000000005
	.quad	0x3ff74c23fab10ba6              # double 1.456089
	.quad	0x401d463a9f383f0c              # double 7.3185830000000003
	.quad	0x4002ce0eb67c2870              # double 2.3506140000000002
	.quad	0x40045d4c76d117b5              # double 2.5455559999999999
	.quad	0x40188095af294dd7              # double 6.1255709999999999
	.quad	0x401736534373f317              # double 5.8030520000000001
	.quad	0x3fe7e0c5a8155d5f              # double 0.74618799999999996
	.quad	0x400b960e94ee392e              # double 3.4482699999999999
	.quad	0x4020aab367a0f909              # double 8.3333999999999993
	.quad	0x3fc1f7f8ca8198f2              # double 0.14038
	.quad	0x4004edb163baba7c              # double 2.6160610000000002
	.quad	0x4010c00f776c4828              # double 4.1875590000000003
	.quad	0x401690a63305100a              # double 5.6412589999999998
	.quad	0x401f28ff75968512              # double 7.7900369999999999
	.quad	0x401a4ba8826aa8eb              # double 6.5738849999999998
	.quad	0x401588deb0fadf2f              # double 5.3836620000000002
	.quad	0x3ff8058cd20afa2f              # double 1.501355
	.quad	0x40215f6c69b5a640              # double 8.6863740000000007
	.quad	0x4014037d1fe64f55              # double 5.0034070000000002
	.quad	0x4012150a45d41fa7              # double 4.5205469999999996
	.quad	0x3fd5a9c99285a922              # double 0.33848800000000001
	.quad	0x400ff8f68be2f7b1              # double 3.9965639999999998
	.quad	0x401290e3cd9a5226              # double 4.6414939999999998
	.quad	0x3fced002e2328f9f              # double 0.24072299999999999
	.quad	0x401e57d5ed06fef8              # double 7.5857770000000002
	.quad	0x401b912620253975              # double 6.8917469999999996
	.quad	0x40219d460aa64c30              # double 8.8071750000000009
	.quad	0x400ff0b30b5aa716              # double 3.9925290000000002
	.quad	0x3ff4765ba6efc372              # double 1.278896
	.quad	0x4011da122fad6cb5              # double 4.4629599999999998
	.quad	0x4022c42917507e9e              # double 9.3831260000000007
	.quad	0x4010ba2b1704ff43              # double 4.1818049999999998
	.quad	0x401c4347e8ccdd94              # double 7.0657040000000002
	.quad	0x4003f46aa087ca64              # double 2.4943439999999999
	.quad	0x402125aa4fca42af              # double 8.5735650000000003
	.quad	0x3ff036cefed63455              # double 1.0133810000000001
	.quad	0x4001875d56f32bdc              # double 2.1910959999999999
	.quad	0x4020eddfeb8d8234              # double 8.4645989999999997
	.quad	0x40115c4da9003eea              # double 4.3401399999999999
	.quad	0x4020c3354c12274a              # double 8.3812660000000001
	.quad	0x40096d106ee30caa              # double 3.1782539999999999
	.quad	0x3fc3ef9db22d0e56              # double 0.15575
	.quad	0x3ffb0254a3c64346              # double 1.688069
	.quad	0x3fdf2b6284599674              # double 0.48702299999999998
	.quad	0x40215b26e115592e              # double 8.6780310000000007
	.quad	0x40018297bfa4c61e              # double 2.1887660000000002
	.quad	0x40125fa2f05a708f              # double 4.5933950000000001
	.quad	0x4007ff7e80389f84              # double 2.9997530000000001
	.quad	0x40215bf401c4fc1e              # double 8.6795960000000001
	.quad	0x4015518efbb0e5e6              # double 5.3296469999999996
	.quad	0x402371ca18bd6627              # double 9.7222449999999991
	.quad	0x4020ef0f3882278d              # double 8.4669129999999999
	.quad	0x4019942fa5093965              # double 6.3947130000000003
	.quad	0x4020ab74794ea077              # double 8.334873
	.quad	0x401af521144cbe1f              # double 6.7393840000000003
	.quad	0x4017684f8f8a4c1f              # double 5.8518660000000002
	.quad	0x4003e52502eec7c9              # double 2.4868869999999998
	.quad	0x4014e2b063e07a29              # double 5.2213760000000002
	.quad	0x3fe5f69a91105e1c              # double 0.68635299999999999
	.quad	0x4011d0ed3d859c8d              # double 4.4540300000000004
	.quad	0x4020b09bd8383ada              # double 8.3449390000000001
	.quad	0x400b401711947cfa              # double 3.4062939999999999
	.quad	0x40175c73abc94706              # double 5.8402849999999997
	.quad	0x4003603361565c2d              # double 2.4219729999999999
	.quad	0x401823543aeab799              # double 6.0345009999999997
	.quad	0x40214ced4e4c942d              # double 8.6502479999999995
	.quad	0x401eb53da72a7bd5              # double 7.6769930000000004
	.quad	0x40229720ea5b530d              # double 9.2951730000000001
	.quad	0x3fe4cedd48451330              # double 0.65025200000000005
	.quad	0x4013789a02752546              # double 4.867775
	.quad	0x402300014f8b588e              # double 9.5000099999999996
	.quad	0x401ec034b0e1b4bb              # double 7.6877009999999996
	.quad	0x401686ddaceee0f4              # double 5.6317050000000002
	.quad	0x4021fcabc5154867              # double 8.9934980000000007
	.quad	0x40106fa6defc7a3a              # double 4.1090350000000004
	.quad	0x3fe4c5b4aa9717df              # double 0.64913399999999999
	.quad	0x401064d48882f0e1              # double 4.0984670000000003
	.quad	0x40129554b8bef8cf              # double 4.6458310000000003
	.quad	0x4014b9873ffac1d3              # double 5.1811800000000003
	.quad	0x4018d62f9ca5bd94              # double 6.2091659999999997
	.quad	0x3fb970c564f97edc              # double 0.099376999999999993
	.quad	0x3ff4b1465e892253              # double 1.29328
	.quad	0x4002bdaceee0f3cb              # double 2.3426149999999999
	.quad	0x4020705553ef6b5d              # double 8.2194009999999995
	.quad	0x401865e071c53f3a              # double 6.0994890000000002
	.quad	0x40207144aa53fc01              # double 8.2212270000000007
	.quad	0x400ba256366d7a57              # double 3.4542660000000001
	.quad	0x4001d714b9cb6849              # double 2.2300200000000001
	.quad	0x40226c4ed6fda837              # double 9.2115390000000001
	.quad	0x3ff1bbf1e8e60807              # double 1.108385
	.quad	0x401dfed4a1ad6452              # double 7.4988580000000002
	.quad	0x3fc2f14db59578a3              # double 0.14798900000000001
	.quad	0x402377e02645e4e7              # double 9.7341320000000006
	.quad	0x4012cfc1df3300de              # double 4.7028879999999997
	.quad	0x3ff4335b0bbf50e3              # double 1.2625379999999999
	.quad	0x3ffd88effe2a3cea              # double 1.8459319999999999
	.quad	0x4017b42e9899bf59              # double 5.9259589999999998
	.quad	0x3fc7e94ab1d4f9c2              # double 0.186807
	.quad	0x3fb4404a72ead927              # double 0.079105999999999996
	.quad	0x3ff664a05dd8f92b              # double 1.399567
	.quad	0x3fffe57eaa2a0a96              # double 1.9935290000000001
	.quad	0x401cec58eeae9ee4              # double 7.2308079999999997
	.quad	0x40167fd60e94ee39              # double 5.6248399999999998
	.quad	0x4002f65881a15550              # double 2.3702860000000001
	.quad	0x40131ad106ee30cb              # double 4.7761880000000003
	.quad	0x4023c237cdcca70d              # double 9.8793319999999997
	.quad	0x401f56c9c0a8d21c              # double 7.8347540000000002
	.quad	0x4002a23b7952d235              # double 2.329215
	.quad	0x40231afea3df6db9              # double 9.5527239999999995
	.quad	0x402313f9c62a1b5c              # double 9.5390149999999991
	.quad	0x4021ef5ab7dc7ac0              # double 8.9674890000000004
	.quad	0x3ffe2f42784a9479              # double 1.886538
	.quad	0x3ff72db50f40e5a3              # double 1.4486589999999999
	.quad	0x4023849e44fa0514              # double 9.7590199999999995
	.quad	0x40082b588e368f08              # double 3.0211649999999999
	.quad	0x40220acfb762d83c              # double 9.0211159999999992
	.quad	0x401e9c83a96d4c34              # double 7.6528460000000003
	.quad	0x40143f572de43ed9              # double 5.0618559999999997
	.quad	0x3fcee275ab7dc7ac              # double 0.241286
	.quad	0x401ef6cb966be7b0              # double 7.7410110000000003
	.quad	0x3fb460dcb9a9da59              # double 0.079602999999999993
	.quad	0x40189b0142f61ed6              # double 6.1513720000000003
	.quad	0x3ffe243dccea28fe              # double 1.883848
	.quad	0x40216235f8099179              # double 8.6918179999999996
	.quad	0x40233327cbf6e3f8              # double 9.5999130000000008
	.quad	0x401f6611fd5885d3              # double 7.8496779999999999
	.quad	0x401ab38151a43782              # double 6.6752979999999997
	.quad	0x400f886a4ca4f441              # double 3.9416090000000001
	.quad	0x4014960e94ee392e              # double 5.1465399999999999
	.quad	0x4020f991bc558644              # double 8.4874399999999994
	.quad	0x40196cd31769a911              # double 6.356274
	.quad	0x3ff4b9d7fd82773e              # double 1.295372
	.quad	0x40080eb78897e996              # double 3.0071859999999999
	.quad	0x401b2aed56b00ffe              # double 6.7919210000000003
	.quad	0x3ff61c1f85d744f6              # double 1.381866
	.quad	0x3fe3ec1e364bec68              # double 0.62257300000000004
	.quad	0x401666d43d03968d              # double 5.6004189999999996
	.quad	0x401c1796bfca85cb              # double 7.0230360000000003
	.quad	0x3ffca04c05921038              # double 1.7891349999999999
	.quad	0x401e28a19c9d5a18              # double 7.5396789999999995
	.quad	0x4023a21d96e9bbf1              # double 9.8166320000000002
	.quad	0x40220dd0fa58f712              # double 9.0269849999999998
	.quad	0x400787eae5bc87db              # double 2.9413659999999999
	.quad	0x4005d48fd9fd36f8              # double 2.72879
	.quad	0x40051856a37ac3eb              # double 2.6368839999999998
	.quad	0x4016fefe0ce0b913              # double 5.7490160000000001
	.quad	0x3ff510e991ff7165              # double 1.316629
	.quad	0x40123cae642bf983              # double 4.559259
	.quad	0x4006b4eb13dfb0d5              # double 2.8383389999999999
	.quad	0x402128092ccf6be3              # double 8.5781949999999991
	.quad	0x400ce504816f0069              # double 3.6118250000000001
	.quad	0x400be8bb0a2ca9ac              # double 3.4886379999999999
	.quad	0x4011c5bfad299956              # double 4.4431139999999996
	.quad	0x4010423810e88590              # double 4.064667
	.quad	0x40219628aa433509              # double 8.7932790000000001
	.quad	0x4020fa9dc725c3df              # double 8.4894850000000002
	.quad	0x4021e7e80389f83c              # double 8.9529420000000001
	.quad	0x40139e62131a8ef7              # double 4.9046709999999996
	.quad	0x3ff9a699c7bcc294              # double 1.6031740000000001
	.quad	0x40127e2328f9f44d              # double 4.6231809999999998
	.quad	0x402046634117f844              # double 8.1374759999999994
	.quad	0x40216714fce746cc              # double 8.7013320000000007
	.quad	0x4009d4f61672324d              # double 3.2289850000000002
	.quad	0x401662bb6672fba0              # double 5.5964179999999999
	.quad	0x4023a070110a137f              # double 9.8133549999999996
	.quad	0x401977c6fbd273d6              # double 6.3669700000000002
	.quad	0x4010a0f88333fc87              # double 4.1571980000000002
	.quad	0x401fc3d577963993              # double 7.9412440000000001
	.quad	0x40221d2157689ca2              # double 9.0568950000000008
	.quad	0x40041daceee0f3cb              # double 2.5144899999999999
	.quad	0x4016f81a5870da5e              # double 5.7422880000000003
	.quad	0x40205e44955b4678              # double 8.1841170000000005
	.quad	0x4014133acd5b6806              # double 5.0187790000000003
	.quad	0x3fdedaad601ffb48              # double 0.482097
	.quad	0x4021357e889c1b54              # double 8.6044809999999998
	.quad	0x3fec30ff10ecb74e              # double 0.88098100000000001
	.quad	0x3fdbe31d712a0ec7              # double 0.43573699999999999
	.quad	0x40180ddf86e3b470              # double 6.0135480000000001
	.quad	0x3fffbef7c243dccf              # double 1.9841230000000001
	.quad	0x401d5fae7924af0c              # double 7.343439
	.quad	0x4023dd6bebe1650a              # double 9.9324639999999995
	.quad	0x4019101c4fc1df33              # double 6.265733
	.quad	0x40208f911cf355ce              # double 8.2804040000000008
	.quad	0x4017e8fb86f47b67              # double 5.9775219999999996
	.quad	0x4019b5015c209247              # double 6.4267630000000002
	.quad	0x401243a3ec02f2fa              # double 4.5660550000000004
	.quad	0x40177b063e07a28c              # double 5.8701410000000003
	.quad	0x3fd1946c332f0175              # double 0.27468399999999998
	.quad	0x3febec80c73abc94              # double 0.87261999999999995
	.quad	0x402335ce7cd03537              # double 9.6050909999999998
	.quad	0x4010b897635e742a              # double 4.1802650000000003
	.quad	0x401e72f2734f82f5              # double 7.6122529999999999
	.quad	0x4006772580c308ff              # double 2.8081770000000001
	.quad	0x4012b30121682f94              # double 4.6748089999999998
	.quad	0x401ff89b52007dd4              # double 7.9927799999999998
	.quad	0x4011ce7685985ad5              # double 4.4516239999999998
	.quad	0x3fda28c36da87a07              # double 0.40873799999999999
	.quad	0x3fc41b97353b4b30              # double 0.15709200000000001
	.quad	0x40147adc4c9c90c5              # double 5.1199810000000001
	.quad	0x3ff883a7546d3f9e              # double 1.5321419999999999
	.quad	0x4002c85553ef6b5d              # double 2.3478189999999999
	.quad	0x4006706ab14ec205              # double 2.804891
	.quad	0x401507eae5bc87db              # double 5.2577319999999999
	.quad	0x400286d8b1dd5d3e              # double 2.3158430000000001
	.quad	0x401b0884406c00da              # double 6.7583169999999999
	.quad	0x3ffc79873ffac1d3              # double 1.7796700000000001
	.quad	0x3ffff8a19c9d5a18              # double 1.9982009999999999
	.quad	0x402144e1e71044f2              # double 8.6345360000000007
	.quad	0x3fd70a88effe2a3d              # double 0.360018
	.quad	0x3fde59641f644956              # double 0.47420600000000002
	.quad	0x4015990c0ad03d9b              # double 5.3994600000000004
	.quad	0x40145f1ed17c5ef6              # double 5.0928909999999998
	.quad	0x4000111be6e65387              # double 2.0083540000000002
	.quad	0x4022774c4cdfaca3              # double 9.2330039999999993
	.quad	0x40032fb3311a543f              # double 2.398291
	.quad	0x401d8ef34d6a161e              # double 7.3895999999999997
	.quad	0x3fbd88d2a1f8e3ac              # double 0.115369
	.quad	0x3fb78bef8ceb356e              # double 0.091979000000000005
	.quad	0x401e36a5d6bebe16              # double 7.5533669999999997
	.quad	0x4009b7b9e060fe48              # double 3.2147100000000002
	.quad	0x3fd7a1cef240fa9c              # double 0.369251
	.quad	0x40235c9a34ca0c28              # double 9.6808639999999996
	.quad	0x4017dc8366516db1              # double 5.9653450000000001
	.quad	0x4011cf290abb44e5              # double 4.452305
	.quad	0x4005327674d16335              # double 2.6496400000000002
	.quad	0x401d79307af20ea6              # double 7.3683490000000003
	.quad	0x40147e5604189375              # double 5.1233750000000002
	.quad	0x400dc0a393ee5eee              # double 3.7190620000000001
	.quad	0x3ffb03137b07075b              # double 1.6882509999999999
	.quad	0x3fea1248d7e02646              # double 0.81473200000000001
	.quad	0x4023c46c54bcf0b7              # double 9.8836390000000005
	.quad	0x3ff3cfc829cfdd23              # double 1.2382280000000001
	.quad	0x3fe1a4052d666a98              # double 0.55127199999999998
	.quad	0x3fec37bf1e8e6080              # double 0.88180499999999995
	.quad	0x401d376ddaceee0f              # double 7.3041299999999998
	.quad	0x401279da597d49d8              # double 4.6189970000000002
	.quad	0x400c953ac4f7ec35              # double 3.5728659999999999
	.quad	0x401b998676a7264a              # double 6.8999269999999999
	.quad	0x40115ce39b456b44              # double 4.3407119999999999
	.quad	0x4011b2324c836651              # double 4.4240199999999996
	.quad	0x4020cce4649906cd              # double 8.4001800000000006
	.quad	0x4021af4080f98fa3              # double 8.8422889999999992
	.quad	0x4023d2bda0dfdef8              # double 9.9116029999999994
	.quad	0x4008061c79b34a45              # double 3.0029840000000001
	.quad	0x3ffe07cd898b2e9d              # double 1.876905
	.quad	0x4013f7c8d195896a              # double 4.9919770000000003
	.quad	0x4015e0b178b37004              # double 5.4694269999999996
	.quad	0x3fe1882adc4c9c91              # double 0.54787200000000003
	.quad	0x400717785729b281              # double 2.88646
	.quad	0x400901e7967caea7              # double 3.1259299999999999
	.quad	0x3fcb94c87980f55e              # double 0.215478
	.quad	0x4022986290eed02d              # double 9.2976270000000003
	.quad	0x401f92580c308feb              # double 7.8929140000000002
	.quad	0x4021d427418d690a              # double 8.9143620000000006
	.quad	0x400b06f1dc50ce4f              # double 3.3783910000000001
	.quad	0x40135126634117f8              # double 4.8292479999999998
	.quad	0x40231d4e09784ec6              # double 9.5572359999999996
	.quad	0x401651344806290f              # double 5.5793010000000001
	.quad	0x401489131ec0b567              # double 5.1338619999999997
	.quad	0x40110c122749f0e5              # double 4.2617880000000001
	.quad	0x402397583a53b8e5              # double 9.7955950000000004
	.quad	0x3ff9d5992428d435              # double 1.6146480000000001
	.quad	0x400fb9ecf6380022              # double 3.9657840000000002
	.quad	0x4021acdc8754f377              # double 8.8376199999999994
	.quad	0x401898b2e9ccb7d4              # double 6.1491199999999999
	.quad	0x3ffa5627bf61aa3f              # double 1.646034
	.quad	0x40157c504816f007              # double 5.3714000000000004
	.quad	0x4016f13cab81f96a              # double 5.7355830000000001
	.quad	0x401f58cf398e9707              # double 7.8367279999999999
	.quad	0x3fd129c347e8ccde              # double 0.26817400000000002
	.quad	0x3fdd7e2c55c96031              # double 0.46082600000000001
	.quad	0x4015a86e7e62dc6e              # double 5.4144839999999999
	.quad	0x3fe8271151611ba4              # double 0.75476900000000002
	.quad	0x4022e41a261bf37c              # double 9.4455120000000007
	.quad	0x401456bb55ac03ff              # double 5.0846989999999996
	.quad	0x4022abd2d87f8876              # double 9.3355929999999994
	.quad	0x4020bd23d4f15e7d              # double 8.3694140000000008
	.quad	0x4020d27e73a365cb              # double 8.4111209999999996
	.quad	0x4011123e9ea14057              # double 4.267817
	.quad	0x4018756c0d6f544c              # double 6.1146700000000003
	.quad	0x400e2fc58ab92c06              # double 3.773326
	.quad	0x400007cfa26a22b4              # double 2.0038140000000002
	.quad	0x3fe36e4c0df58c09              # double 0.60721400000000003
	.quad	0x4010e8e219652bd4              # double 4.2274250000000002
	.quad	0x4021ce7a95c853c1              # double 8.9032789999999995
	.quad	0x401e512dfd694ccb              # double 7.5792770000000002
	.quad	0x4020bdb402d16b98              # double 8.370514
	.quad	0x400b9476af89c5e7              # double 3.447492
	.quad	0x4019a59e1f3a57eb              # double 6.4117360000000003
	.quad	0x3ffcbb9cf9a06a6e              # double 1.795804
	.quad	0x4023c0b0f27bb2ff              # double 9.8763500000000004
	.quad	0x402226fac6045baf              # double 9.0761319999999994
	.quad	0x401a912be48a58b4              # double 6.641769
	.quad	0x3fec3ad5bee3d5fe              # double 0.88218200000000002
	.quad	0x401b8ca1059ea572              # double 6.8873329999999999
	.quad	0x4022610fb65668c2              # double 9.1895729999999993
	.quad	0x401169bbf0dc768e              # double 4.353256
	.quad	0x400cb8fc504816f0              # double 3.590325
	.quad	0x3ff99c1f85d744f6              # double 1.600616
	.quad	0x4011309aaa3ad18d              # double 4.2974649999999999
	.quad	0x3ff476e503fb3743              # double 1.2790269999999999
	.quad	0x3fe55985ad538ac2              # double 0.66717800000000005
	.quad	0x4022cb7b28954a80              # double 9.3974240000000009
	.quad	0x400d900b45ae5ffa              # double 3.6953339999999999
	.quad	0x401c22b8c75c4a84              # double 7.0339080000000003
	.quad	0x4014ac73eee52589              # double 5.1684109999999999
	.quad	0x3fc1518b0d0edc3c              # double 0.135301
	.quad	0x401e5cb70ac3a861              # double 7.5905420000000001
	.quad	0x3ff29aeb3dd11be7              # double 1.162822
	.quad	0x40117754b05b7cfe              # double 4.3665339999999997
	.quad	0x401c8825e13b18db              # double 7.1329570000000002
	.quad	0x3ff290f51ac9afe2              # double 1.16039
	.quad	0x3ff02a93f290abb4              # double 1.0103949999999999
	.quad	0x401eb69e7fb267c7              # double 7.6783390000000002
	.quad	0x400442730c671690              # double 2.5324460000000002
	.quad	0x3ff4fcc07aaef2c7              # double 1.311707
	.quad	0x40165d577963992d              # double 5.5911540000000004
	.quad	0x4007afa69be09bb7              # double 2.9607670000000001
	.quad	0x4005925cc426351e              # double 2.696466
	.quad	0x40234d173fb7a5f4              # double 9.6505679999999998
	.quad	0x4011571de69ad42c              # double 4.3350749999999998
	.quad	0x4015cea63b688bdb              # double 5.4518060000000004
	.quad	0x4022c221c8a7a41e              # double 9.3791639999999994
	.quad	0x3ff7ac3760bf5d79              # double 1.4795450000000001
	.quad	0x40134f7ec3547e07              # double 4.8276320000000004
	.quad	0x400a94195cc857f3              # double 3.322314
	.quad	0x4018037154003255              # double 6.0033620000000001
	.quad	0x401bf17225b749ae              # double 6.9857870000000002
	.quad	0x40236bed30f062d4              # double 9.7107939999999999
	.quad	0x40201da2f8bdec5f              # double 8.0578839999999996
	.quad	0x401d4cb641700cd8              # double 7.3249139999999997
	.quad	0x3ffdd0624dd2f1aa              # double 1.863375
	.quad	0x400899d2bf551505              # double 3.0751089999999999
	.quad	0x401e0150dae3e6c5              # double 7.5012850000000002
	.quad	0x3fe33f4eca686e7e              # double 0.60147799999999996
	.quad	0x401e3d0b30b5aa71              # double 7.5596129999999996
	.quad	0x3fbe2456f75d9a0f              # double 0.117742
	.quad	0x3ff26ee0f3cb3e57              # double 1.1520699999999999
	.quad	0x401127878b7a1c26              # double 4.2886030000000002
	.quad	0x4023953fc0096feb              # double 9.7915019999999994
	.quad	0x4003b93e5fb71fbc              # double 2.4654509999999998
	.quad	0x3ff84f09528f190d              # double 1.519296
	.quad	0x401ebe8d5410f94d              # double 7.6860860000000004
	.quad	0x400325f30e7ff584              # double 2.3935300000000002
	.quad	0x4004d7add15f02c5              # double 2.6053120000000001
	.quad	0x4023009edbf8b9bb              # double 9.5012120000000006
	.quad	0x4022bbb4f6167232              # double 9.3666149999999995
	.quad	0x40054636b0963561              # double 2.659284
	.quad	0x3fd4a2d2fe3f35a0              # double 0.322438
	.quad	0x402196084a515cea              # double 8.7930320000000002
	.quad	0x4011656f75d9a0f1              # double 4.3490580000000003
	.quad	0x3fe829ac36544fe3              # double 0.75508699999999995
	.quad	0x400fa46a5d6bebe1              # double 3.9552809999999998
	.quad	0x40140b866e43aa7a              # double 5.0112550000000002
	.quad	0x401ad49f94855da2              # double 6.7076399999999996
	.quad	0x4017e2a1b5c7cd8a              # double 5.9713200000000004
	.quad	0x40093e41d4b6a61a              # double 3.1553990000000001
	.quad	0x401edf7e3d1cc101              # double 7.718255
	.quad	0x400b9c88e79aae6d              # double 3.4514330000000002
	.quad	0x4001e84f09528f19              # double 2.238432
	.quad	0x40075bfa4c61d862              # double 2.9199109999999999
	.quad	0x40212452c59fb1e2              # double 8.5709440000000008
	.quad	0x40104ffb480a5acd              # double 4.0781070000000001
	.quad	0x40135d0247021d11              # double 4.8408290000000003
	.quad	0x3fde4a05dd8f92b0              # double 0.47326800000000002
	.quad	0x4011af826edaa92e              # double 4.4213959999999997
	.quad	0x4022e60029f16b12              # double 9.4492200000000004
	.quad	0x401fa7ca643cc07b              # double 7.9138580000000002
	.quad	0x3fec70329802c0a5              # double 0.88869600000000004
	.quad	0x402113899392189c              # double 8.5381590000000002
	.quad	0x4023cfad6cb53501              # double 9.9056200000000007
	.quad	0x401ef38476f2a5a4              # double 7.7378099999999996
	.quad	0x400803b4f6167232              # double 3.0018099999999999
	.quad	0x401a5202d9cf13cf              # double 6.5800890000000001
	.quad	0x40207c9f72f76e61              # double 8.243404
	.quad	0x400d7039ef0f16f4              # double 3.6797979999999999
	.quad	0x40008644d87724fb              # double 2.0655610000000002
	.quad	0x3fe760daa0cae643              # double 0.73057300000000003
	.quad	0x40181f61ed5ae1ce              # double 6.0306470000000001
	.quad	0x3fc477b395c42203              # double 0.15990299999999999
	.quad	0x400fb60d887ebf23              # double 3.9638930000000001
	.quad	0x3fe061437c5692b4              # double 0.51187300000000002
	.quad	0x4023637154003255              # double 9.6942240000000001
	.quad	0x40235cb018611fd6              # double 9.6810310000000008
	.quad	0x40223806af46aa08              # double 9.1094259999999991
	.quad	0x4014a467381d7dbf              # double 5.1605499999999997
	.quad	0x3ffa9fcc1871e6cd              # double 1.664013
	.quad	0x3fbe1f3a57eaa2a1              # double 0.117664
	.quad	0x40210f41f212d773              # double 8.5297999999999998
	.quad	0x400cc62ed352220c              # double 3.5967690000000001
	.quad	0x40209f023e9ea140              # double 8.3105639999999994
	.quad	0x4000f80f55de58e6              # double 2.1211229999999999
	.quad	0x4001c96dd26b723f              # double 2.2233540000000001
	.quad	0x402142b9b23dd54e              # double 8.6303230000000006
	.quad	0x4018bf5019f3c70d              # double 6.1868290000000004
	.quad	0x40034ee631f8a090              # double 2.4135249999999999
	.quad	0x4001a8adeebb341e              # double 2.207363
	.quad	0x40174443d46b26c0              # double 5.8166650000000004
	.quad	0x40108425f202107b              # double 4.1290509999999996
	.quad	0x4017b1bb8c32a8ca              # double 5.9235670000000002
	.quad	0x3fc0abb44e50c5eb              # double 0.13023999999999999
	.quad	0x4016cdae81882adc              # double 5.7008609999999997
	.quad	0x4019bde050374ff8              # double 6.4354259999999996
	.quad	0x4001cf459d99029b              # double 2.226207
	.quad	0x3ff2de8a2ec28b2a              # double 1.1793309999999999
	.quad	0x3ff8ab8950763a19              # double 1.541879
	.quad	0x3ff927aa68f4b620              # double 1.572184
	.quad	0x401610068db8bac7              # double 5.5156499999999999
	.quad	0x4010437c5692b3cc              # double 4.0659039999999997
	.quad	0x401ed9e94ab1d4fa              # double 7.7128040000000002
	.quad	0x4020887ad080b674              # double 8.2665620000000004
	.quad	0x40019e6c4c5974e6              # double 2.2023549999999998
	.quad	0x401209a847b24639              # double 4.5094310000000002
	.quad	0x4011115ca6ca03c5              # double 4.2669550000000003
	.quad	0x4010ef284167a95d              # double 4.2335520000000004
	.quad	0x401afe160d887ebf              # double 6.7481309999999999
	.quad	0x3ff0adcd2d44dca9              # double 1.042432
	.quad	0x4018c477ff151e75              # double 6.1918639999999998
	.quad	0x40191da48b652370              # double 6.2789479999999998
	.quad	0x401dfd5dc4007571              # double 7.4974280000000002
	.quad	0x400783ad18d25edd              # double 2.939295
	.quad	0x4023a5ddd2ae8e1d              # double 9.8239579999999993
	.quad	0x401f247cfa26a22b              # double 7.7856329999999998
	.quad	0x402387de7210be94              # double 9.7653689999999997
	.quad	0x4011fb69552e2fbe              # double 4.4955189999999998
	.quad	0x40104869c66d373b              # double 4.070716
	.quad	0x401e7662fdfc19c1              # double 7.6156119999999996
	.quad	0x4020dc579f234656              # double 8.4303559999999997
	.quad	0x3ff6e757928e0c9e              # double 1.4314800000000001
	.quad	0x400ccbb2bba98eda              # double 3.5994619999999999
	.quad	0x4003c8198f1d3ed5              # double 2.4727049999999999
	.quad	0x4023fbd9231c64bb              # double 9.9918910000000007
	.quad	0x40111bdc69f8c21e              # double 4.2772079999999999
	.quad	0x4020ff316e371540              # double 8.498424
	.quad	0x3fe2a1426fe718a8              # double 0.58218499999999995
	.quad	0x401f41715c63ae25              # double 7.8139089999999997
	.quad	0x3ff4941205bc01a3              # double 1.2861499999999999
	.quad	0x40155927913e8145              # double 5.3370649999999999
	.quad	0x40096902de00d1b7              # double 3.176275
	.quad	0x400debd76ee73e68              # double 3.740157
	.quad	0x40211ff69014b59a              # double 8.5624280000000006
	.quad	0x401db395c4220360              # double 7.425376
	.quad	0x3ff15b328b6d86ec              # double 1.084765
	.quad	0x40075a57646ae3a4              # double 2.9191120000000002
	.quad	0x40214eaca7935760              # double 8.6536609999999996
	.quad	0x40184154c985f06f              # double 6.0637999999999996
	.quad	0x402227e542e557de              # double 9.0779209999999999
	.quad	0x4012deac42e9899c              # double 4.717454
	.quad	0x4012ace24bba12b6              # double 4.6688320000000001
	.quad	0x4012d39b456b441c              # double 4.7066470000000002
	.quad	0x3ff30d8a979e16d7              # double 1.190806
	.quad	0x400aad1bf7ad4b27              # double 3.3345259999999999
	.quad	0x400aff2dc2b0ea18              # double 3.3745989999999999
	.quad	0x401b547e49b1fab9              # double 6.8325129999999996
	.quad	0x3f621ab4b72c5198              # double 0.0022100000000000002
	.quad	0x400b6ee5abc0e38a              # double 3.4291489999999998
	.quad	0x4010254d1e96c3fc              # double 4.0364269999999998
	.quad	0x3fff8e7cd0353719              # double 1.9722869999999999
	.quad	0x40170aac96cc5fc0              # double 5.7604240000000004
	.quad	0x3ff56308787485e4              # double 1.336678
	.quad	0x40066268900c521e              # double 2.7980510000000001
	.quad	0x3fc5dcf893faf428              # double 0.17080600000000001
	.quad	0x4023a3780346dc5d              # double 9.8192749999999993
	.quad	0x3fffcce3de6149c7              # double 1.987522
	.quad	0x401a3fa2f05a708f              # double 6.5621450000000001
	.quad	0x4002aa875d56f32c              # double 2.3332660000000001
	.quad	0x3feea26a22b3892f              # double 0.95732600000000001
	.quad	0x401e1fe21d96e9bc              # double 7.5311360000000001
	.quad	0x4014b79e9d0e9920              # double 5.179316
	.quad	0x3ff7df19d66adb40              # double 1.491968
	.quad	0x401ccfed634549b6              # double 7.2030539999999998
	.quad	0x4022e5a57646ae3a              # double 9.4485279999999996
	.quad	0x40084536501e2585              # double 3.033795
	.quad	0x401417fe08aefb2b              # double 5.0234300000000003
	.quad	0x401270bbb1f255f3              # double 4.6100909999999997
	.quad	0x401672becedd4845              # double 5.6120559999999999
	.quad	0x4023106af46aa088              # double 9.5320660000000003
	.quad	0x4019ada72a7bd48d              # double 6.4195830000000003
	.quad	0x3ff1f39f340d4dc6              # double 1.1219779999999999
	.quad	0x40016b630a91537a              # double 2.177435
	.quad	0x402028f25a250f84              # double 8.0799739999999999
	.quad	0x401d62339c0ebee0              # double 7.3459000000000003
	.quad	0x401cfd14a0a0f4d8              # double 7.2471490000000003
	.quad	0x401a3737110e453d              # double 6.5539209999999999
	.quad	0x40180b780346dc5d              # double 6.0111999999999997
	.quad	0x400697e0ac7da1ec              # double 2.8241589999999999
	.quad	0x4021f55dc4007571              # double 8.9792310000000004
	.quad	0x401970aa21a719b5              # double 6.3600240000000001
	.quad	0x401bf234a87e38eb              # double 6.986529
	.quad	0x4006664a9cdc4439              # double 2.799947
	.quad	0x4021dd475a31a4be              # double 8.9321850000000005
	.quad	0x4012b80f55de58e6              # double 4.6797459999999997
	.quad	0x401e26ece13f4a99              # double 7.5380130000000002
	.quad	0x40208eb2f23033a4              # double 8.2787089999999992
	.quad	0x40134da76d97b310              # double 4.8258340000000004
	.quad	0x4005702eec7c957d              # double 2.6797770000000001
	.quad	0x4023d2d1d041cc53              # double 9.9117569999999997
	.quad	0x40207b777d0f1f58              # double 8.2411460000000005
	.quad	0x401f021d10b1feeb              # double 7.7520639999999998
	.quad	0x4013d3aa79bbadc1              # double 4.9567050000000004
	.quad	0x3ffc16df3f961805              # double 1.755584
	.quad	0x401174b90214ad36              # double 4.3639869999999998
	.quad	0x3ff5b42784a9478d              # double 1.3564830000000001
	.quad	0x40204b79d909f1f1              # double 8.1474139999999995
	.quad	0x3fe906bbdbe3c105              # double 0.78207199999999999
	.quad	0x4000cd2fe3f359ff              # double 2.1001889999999999
	.quad	0x3fe242b734b51373              # double 0.57064400000000004
	.quad	0x401977f993d5347a              # double 6.3671629999999997
	.quad	0x4021695b78cc9a78              # double 8.7057760000000002
	.quad	0x3ff785186db50f41              # double 1.469994
	.quad	0x401a396c82e019b1              # double 6.5560780000000003
	.quad	0x3fe1c163779e9d0f              # double 0.55485700000000004
	.quad	0x400411d81f106680              # double 2.5087130000000002
	.quad	0x4018d95dd4c76d11              # double 6.2122719999999996
	.quad	0x400b6bd1244a6224              # double 3.4276450000000001
	.quad	0x4018b136a400fba9              # double 6.1730600000000004
	.quad	0x40175336deb95e5b              # double 5.831264
	.quad	0x4013925d074213a1              # double 4.8929330000000002
	.quad	0x3fb2c80c73abc947              # double 0.073365
	.quad	0x3ff0e68c26139000              # double 1.0562860000000001
	.quad	0x3ff0bc6a7ef9db23              # double 1.046
	.quad	0x4001f281fd9ba1b2              # double 2.2434120000000002
	.quad	0x401fc89e774eebf6              # double 7.9459169999999997
	.quad	0x4005655a7d24180d              # double 2.6744889999999999
	.quad	0x401fb154003254e7              # double 7.9231720000000001
	.quad	0x4001e8d7e02645e5              # double 2.238693
	.quad	0x40205ec58eeae9ee              # double 8.1851009999999995
	.quad	0x4008fb5a63f9a49c              # double 3.1227309999999999
	.quad	0x4017bc2a454de7ea              # double 5.9337549999999997
	.quad	0x401078950763a190              # double 4.117756
	.quad	0x40007742dcf4623d              # double 2.058233
	.quad	0x40225da20ddc6195              # double 9.1828769999999995
	.quad	0x401027d73c925786              # double 4.038907
	.quad	0x3ffa7e111276fb09              # double 1.655778
	.quad	0x3fc69e5e2478854d              # double 0.176708
	.quad	0x4019c01d9f4d37c1              # double 6.4376129999999998
	.quad	0x401c10a84be40421              # double 7.016267
	.quad	0x3fd64b48d3ae685e              # double 0.34834500000000002
	.quad	0x40002f4be835dedf              # double 2.0230939999999999
	.quad	0x40009e9a6f826edb              # double 2.0774430000000002
	.quad	0x400db796bfca85cb              # double 3.7146430000000001
	.quad	0x4021cd7d3910c2c6              # double 8.9013460000000002
	.quad	0x40174ce075f6fd22              # double 5.825075
	.quad	0x4021b605681ecd4b              # double 8.8555100000000007
	.quad	0x4007ba176ddaceee              # double 2.965865
	.quad	0x3ff91fcc1871e6cd              # double 1.570263
	.quad	0x40165c0485a0be51              # double 5.589861
	.quad	0x40156ed41b75a74c              # double 5.358231
	.quad	0x4010b7f88765ba6f              # double 4.179659
	.quad	0x3fbb549f94855da2              # double 0.10675999999999999
	.quad	0x40046490a350d280              # double 2.5491039999999998
	.quad	0x40215f07182235b5              # double 8.6856010000000001
	.quad	0x3fcbe2584f4c6e6e              # double 0.21784500000000001
	.quad	0x40079b573eab367a              # double 2.95085
	.quad	0x401f932c1f42bb66              # double 7.8937229999999996
	.quad	0x3ff545e6ff7dfa01              # double 1.329566
	.quad	0x400af6534373f317              # double 3.370276
	.quad	0x401d2c2ca148ba84              # double 7.293139
	.quad	0x40060b9a176ddacf              # double 2.755665
	.quad	0x3ffcb7f38c5436b9              # double 1.79491
	.quad	0x4004e3ad9f0a1be3              # double 2.6111710000000001
	.quad	0x3ff090d5a5b9628d              # double 1.0353600000000001
	.quad	0x402150b86b15f890              # double 8.6576570000000004
	.quad	0x401888dcdb37c99b              # double 6.1336550000000001
	.quad	0x40000ac8605681ed              # double 2.0052650000000001
	.quad	0x3fe09cc74b838c11              # double 0.51913799999999999
	.quad	0x400d4359bc33f855              # double 3.657886
	.quad	0x40177b530ced4e4d              # double 5.8704340000000004
	.quad	0x4011b69f8c21e1d2              # double 4.4283429999999999
	.quad	0x401f9c1871e6cd29              # double 7.9024369999999999
	.quad	0x4019545e4e69f05f              # double 6.3323910000000003
	.quad	0x3f9b72c5197a2489              # double 0.026804999999999999
	.quad	0x4023656c93a71151              # double 9.6980939999999993
	.quad	0x401ebfa0d77b7c78              # double 7.6871369999999998
	.quad	0x3fd3e957470eb24a              # double 0.31111699999999998
	.quad	0x4011582385404641              # double 4.3360729999999998
	.quad	0x4004216c61522a6f              # double 2.5163199999999999
	.quad	0x4003731b152f3c2e              # double 2.4312040000000001
	.quad	0x4013acfdd2285660              # double 4.9189369999999997
	.quad	0x401f41bde82d7b63              # double 7.8142009999999997
	.quad	0x4023ad36501e2585              # double 9.838305
	.quad	0x401d202c0a4a05de              # double 7.2814180000000004
	.quad	0x3ff51e8c47a17f41              # double 1.319958
	.quad	0x40190211cb039ef1              # double 6.2520210000000001
	.quad	0x40204f97aaac1095              # double 8.1554540000000006
	.quad	0x402215e26916440f              # double 9.0427429999999998
	.quad	0x3fed41f212d77319              # double 0.9143
	.quad	0x4022113dd97f62b7              # double 9.0336750000000006
	.quad	0x402366b37867f0aa              # double 9.7005879999999998
	.quad	0x401180aaeafab53d              # double 4.3756519999999997
	.quad	0x3fc0a350d2806af4              # double 0.12998399999999999
	.quad	0x4012b1b0ccbc05d5              # double 4.6735259999999998
	.quad	0x402126d655e28aa4              # double 8.5758539999999996
	.quad	0x400ed49f0e4da09d              # double 3.8538190000000001
	.quad	0x402301c6088d6d3b              # double 9.5034639999999992
	.quad	0x3ff04dc22ab25b31              # double 1.0189839999999999
	.quad	0x400c8c34c1a8ac5c              # double 3.56846
	.quad	0x3ff11670196d8f50              # double 1.0679780000000001
	.quad	0x4021d674080f98fa              # double 8.9188539999999996
	.quad	0x40143dab9f559b3d              # double 5.060225
	.quad	0x40189ccd96206855              # double 6.1531279999999997
	.quad	0x400eeb3c3e74afd5              # double 3.8648609999999999
	.quad	0x3ff71425f202107b              # double 1.4424189999999999
	.quad	0x4022db022dd7a9a0              # double 9.4277510000000007
	.quad	0x40224a452c59fb1e              # double 9.1450589999999998
	.quad	0x4022b54d834091c1              # double 9.3541070000000008
	.quad	0x40097fc9ff92f2b6              # double 3.1873969999999998
	.quad	0x401de66a11ec918e              # double 7.4750139999999998
	.quad	0x3ffa51a650614163              # double 1.6449339999999999
	.quad	0x4019a1fab96f21f7              # double 6.4081830000000002
	.quad	0x40159edcc20d562a              # double 5.4051390000000001
	.quad	0x4016e4901d19157b              # double 5.7232060000000002
	.quad	0x4012736deb95e5b0              # double 4.612724
	.quad	0x4022268fd199bb28              # double 9.0753160000000008
	.quad	0x4017cb649d388a8b              # double 5.948626
	.quad	0x401b78d64d7f0ed4              # double 6.8680050000000001
	.quad	0x4018cf2e8c0485a1              # double 6.2023260000000002
	.quad	0x401a22f7f498c3b1              # double 6.5341490000000002
	.quad	0x4023cf46887a8d65              # double 9.9048350000000002
	.quad	0x401e94873365881a              # double 7.6450469999999999
	.quad	0x401d802a77a2cecd              # double 7.3751620000000004
	.quad	0x401605fcc1871e6d              # double 5.5058470000000002
	.quad	0x40154c7da1ec4e72              # double 5.3246979999999997
	.quad	0x4021466a11ec918e              # double 8.6375279999999997
	.quad	0x4009b148fd9fd36f              # double 3.2115649999999998
	.quad	0x400c00218def416c              # double 3.5000640000000001
	.quad	0x4017fc1df3300de5              # double 5.9962080000000002
	.quad	0x401fcb9dc2f405f7              # double 7.9488440000000002
	.quad	0x40175677f6b1a2a5              # double 5.8344420000000001
	.quad	0x40209577b7c7820a              # double 8.2919289999999997
	.quad	0x401a2d512ec6bce8              # double 6.5442549999999997
	.quad	0x4001645b291b823d              # double 2.1740020000000002
	.quad	0x3ff9021187e7c06e              # double 1.563005
	.quad	0x4014dd0203e63e8e              # double 5.2158280000000001
	.quad	0x40134b474107314d              # double 4.8235140000000003
	.quad	0x401bfed4a1ad6452              # double 6.9988580000000002
	.quad	0x3ff8e6a22b3892ef              # double 1.5563070000000001
	.quad	0x4022ebba12b5e52a              # double 9.4604040000000005
	.quad	0x3fd10f301eabbcb2              # double 0.26655200000000001
	.quad	0x400d4da9003eea21              # double 3.6629200000000002
	.quad	0x40106c981beb1811              # double 4.1060489999999996
	.quad	0x3ff3edb7281fd9ba              # double 1.245536
	.quad	0x4012dfdb09a671ef              # double 4.7186089999999998
	.quad	0x401a2947cfa26a23              # double 6.5403130000000003
	.quad	0x4011bbe5d9e40c84              # double 4.4334939999999996
	.quad	0x402283ca9691a75d              # double 9.2574050000000003
	.quad	0x40209be3c105186e              # double 8.3044720000000005
	.quad	0x4008cae6c8f75537              # double 3.0990730000000002
	.quad	0x4005a56b441bb8c3              # double 2.7057709999999999
	.quad	0x400efc74751ce28f              # double 3.8732690000000001
	.quad	0x4019af9fcb0c026d              # double 6.4215080000000002
	.quad	0x4021640fa9c12f0a              # double 8.6954320000000003
	.quad	0x3ff42c3eb7cbb3c8              # double 1.260802
	.quad	0x40145931876188b1              # double 5.0871029999999999
	.quad	0x3ff5d42e557de0d6              # double 1.3643019999999999
	.quad	0x40113b3fa6defc7a              # double 4.3078599999999998
	.quad	0x3ff9d6d19dece571              # double 1.614946
	.quad	0x401f3379fa97e133              # double 7.8002700000000002
	.quad	0x3fe9e37585be1a82              # double 0.80901599999999996
	.quad	0x401724d12018a43c              # double 5.7859540000000003
	.quad	0x40142c282c6ef3d4              # double 5.0431220000000003
	.quad	0x4010cccf6be37de9              # double 4.2000099999999998
	.quad	0x401bb025bfad2999              # double 6.9220189999999997
	.quad	0x4017b13165d39970              # double 5.9230400000000003
	.quad	0x3fdce40c8472c0e8              # double 0.45141900000000001
	.quad	0x3ff91c0980b24207              # double 1.569345
	.quad	0x40160f53825e13b2              # double 5.5149670000000004
	.quad	0x4019895f676ea423              # double 6.3841530000000004
	.quad	0x40164477bbf93ff2              # double 5.5668629999999997
	.quad	0x4018156da0168b5d              # double 6.0209260000000002
	.quad	0x3ff5ba5e353f7cee              # double 1.3580000000000001
	.quad	0x40201001b4352652              # double 8.0312629999999992
	.quad	0x3fdb983947496aad              # double 0.43116599999999999
	.quad	0x3f930a915379fa98              # double 0.018595
	.quad	0x4020877d523b3637              # double 8.2646280000000001
	.quad	0x4023712f901083dc              # double 9.7210660000000004
	.quad	0x4023ac7d1bb4916d              # double 9.8368920000000006
	.quad	0x401f70fa9c12f09e              # double 7.8603310000000004
	.quad	0x402355d4a5df223a              # double 9.6676380000000002
	.quad	0x400a772cd7cf5f4e              # double 3.3081909999999999
	.quad	0x4023f97df19d66ae              # double 9.9872890000000005
	.quad	0x401fa79463cfb331              # double 7.9136519999999999
	.quad	0x4003e32873bc903f              # double 2.4859170000000002
	.quad	0x401bbc3b0c4588a0              # double 6.9338189999999997
	.quad	0x402104f15e7c8d19              # double 8.5096539999999994
	.quad	0x4008f7eed45e9186              # double 3.1210610000000001
	.quad	0x401960daa0cae643              # double 6.3445840000000002
	.quad	0x4008e42396073de2              # double 3.1113960000000001
	.quad	0x401e069595feda66              # double 7.5064299999999999
	.quad	0x401431626b2f2303              # double 5.0482269999999998
	.quad	0x40231311409a2403              # double 9.5372409999999998
	.quad	0x401f1b445ed4a1ad              # double 7.7766279999999996
	.quad	0x3fc1969e3c968944              # double 0.137409
	.quad	0x4010de28aa433509              # double 4.216952
	.quad	0x4002f5350092ccf7              # double 2.3697300000000001
	.quad	0x40007a3fcc9ea9a4              # double 2.0596920000000001
	.quad	0x401a079420b3d4ae              # double 6.5074009999999998
	.quad	0x401fc16e7a311e86              # double 7.938898
	.quad	0x40031db6e503fb37              # double 2.3895089999999999
	.quad	0x3ff4d20e1f7d73c9              # double 1.301283
	.quad	0x3fe25106ee30caa3              # double 0.57239099999999998
	.quad	0x400a9503b81b64e0              # double 3.3227609999999999
	.quad	0x400edf444e0daa0d              # double 3.8590170000000001
	.quad	0x4021eacd9e83e426              # double 8.9586000000000006
	.quad	0x40193307af20ea5b              # double 6.2998339999999997
	.quad	0x402020cc35ce1826              # double 8.0640579999999993
	.quad	0x401341e321a2e7f7              # double 4.814343
	.quad	0x3fb4dc22ab25b318              # double 0.081484000000000001
	.quad	0x4023dfa63736cdf2              # double 9.9368149999999993
	.quad	0x40017f20a73f748a              # double 2.187074
	.quad	0x3ffe3d805e5f30e8              # double 1.890015
	.quad	0x401696c7a7c9de05              # double 5.647246
	.quad	0x40215b9d5e4a3832              # double 8.6789349999999992
	.quad	0x3fffb2de43ed959a              # double 1.981169
	.quad	0x3fd31309c7ffde72              # double 0.298037
	.quad	0x4022e4bccf28c79f              # double 9.4467529999999992
	.quad	0x3ff3ceffe2a3cea7              # double 1.2380370000000001
	.quad	0x400998d2e514c22f              # double 3.199621
	.quad	0x400f405f6ba0620b              # double 3.9064320000000001
	.quad	0x401130ef1348b220              # double 4.2977869999999996
	.quad	0x40221f84230fcf81              # double 9.0615550000000002
	.quad	0x3fedc845132f87ad              # double 0.930697
	.quad	0x4015627d45a5fc7e              # double 5.3461809999999996
	.quad	0x3ffe74299d883ba3              # double 1.9033599999999999
	.quad	0x3ff8d1dffc5479d5              # double 1.551239
	.quad	0x40235e3bcd35a858              # double 9.6840499999999991
	.quad	0x4021b07a6bd6e8b0              # double 8.8446840000000009
	.quad	0x40215a6f1dc50ce5              # double 8.6766290000000001
	.quad	0x4010dda6e75ff60a              # double 4.2164570000000001
	.quad	0x4002fe9856a37ac4              # double 2.374314
	.quad	0x3fd400218def416c              # double 0.31250800000000001
	.quad	0x40228515ce9e5e24              # double 9.2599319999999991
	.quad	0x402363df2a9d627c              # double 9.695062
	.quad	0x4012ab213e3e2930              # double 4.6671189999999996
	.quad	0x40156bca9691a75d              # double 5.3552650000000002
	.quad	0x4013dece9a2c6690              # double 4.9675849999999997
	.quad	0x401738a936c58eeb              # double 5.8053330000000001
	.quad	0x40233097a67a52ac              # double 9.5949069999999991
	.quad	0x401aaa0407cc7d1c              # double 6.6660310000000003
	.quad	0x3fd151697f1f9ad0              # double 0.270594
	.quad	0x401e54a3c64345d0              # double 7.5826560000000001
	.quad	0x3ff9fb98c7e28241              # double 1.6239250000000001
	.quad	0x3fff2ac8605681ed              # double 1.947945
	.quad	0x400492bba98eda23              # double 2.571647
	.quad	0x4014fc9c4da9003f              # double 5.2466900000000001
	.quad	0x4007bb738e6d15ad              # double 2.966529
	.quad	0x3fe254eb13dfb0d5              # double 0.57286599999999999
	.quad	0x4015a74afd545415              # double 5.4133719999999999
	.quad	0x4012c1deacc92147              # double 4.6893260000000003
	.quad	0x4022199f5dfeb8d8              # double 9.0500439999999998
	.quad	0x4019e5610adcd2d4              # double 6.4740029999999997
	.quad	0x4016569b5a63f9a5              # double 5.5845770000000003
	.quad	0x4017fdd1e53a81dc              # double 5.997871
	.quad	0x401b156eac860568              # double 6.7709299999999999
	.quad	0x400285dd8f92af9b              # double 2.3153640000000002
	.quad	0x40173583e8576cce              # double 5.8022609999999997
	.quad	0x402225fdac68a937              # double 9.0742010000000004
	.quad	0x3fe98025bfad2999              # double 0.79689299999999996
	.quad	0x4006f71001d5c316              # double 2.8706360000000002
	.quad	0x3fd6ef1fddebd902              # double 0.35834500000000002
	.quad	0x4007ab074a771c97              # double 2.95851
	.quad	0x40118c48adeebb34              # double 4.3869959999999999
	.quad	0x401fffc43b2dd378              # double 7.9997720000000001
	.quad	0x400d1d2bf5515055              # double 3.6392440000000001
	.quad	0x4020936b6e0d23d5              # double 8.2879290000000001
	.quad	0x400123e4abe6a338              # double 2.1425260000000002
	.quad	0x401ed44d87724fa9              # double 7.7073270000000002
	.quad	0x402067c02afdda8c              # double 8.2026380000000003
	.quad	0x4023fd3b4b2fa93b              # double 9.994593
	.quad	0x40196e95b78cc9a7              # double 6.3579929999999996
	.quad	0x400fa69e7fb267c7              # double 3.9563570000000001
	.quad	0x3fe650225742dcf4              # double 0.69728199999999996
	.quad	0x402069f23465625a              # double 8.2069259999999993
	.quad	0x401e8dc33721d53d              # double 7.6384400000000001
	.quad	0x3ff709235f809918              # double 1.4397310000000001
	.quad	0x40127c2480e8c8ac              # double 4.6212330000000001
	.quad	0x401d9a0168b5cbff              # double 7.4003959999999998
	.quad	0x4022a8e736049ecb              # double 9.3298889999999997
	.quad	0x40101c9ea9a3d2d8              # double 4.0279489999999996
	.quad	0x401e5685db76b3bc              # double 7.5844950000000004
	.quad	0x401d37820a30db6a              # double 7.3042069999999999
	.quad	0x401ab36b09635611              # double 6.6752130000000003
	.quad	0x400d6b5bb384fd2a              # double 3.6774209999999998
	.quad	0x401a8e0114d2f5dc              # double 6.6386760000000002
	.quad	0x4022cb293d102bc7              # double 9.3967989999999996
	.quad	0x400904dca8e2e2b9              # double 3.1273740000000001
	.quad	0x4012f6fe2e6ea854              # double 4.7412039999999998
	.quad	0x401194e2f37fbefd              # double 4.395397
	.quad	0x4020417763e4abe7              # double 8.1278640000000006
	.quad	0x400b593037d63023              # double 3.4185490000000001
	.quad	0x4023c31a4bdba0a5              # double 9.8810599999999997
	.quad	0x401e0ad1d041cc53              # double 7.5105659999999998
	.quad	0x4015caacd9e83e42              # double 5.4479249999999997
	.quad	0x40127146a1a500d6              # double 4.6106210000000001
	.quad	0x401c4c07ee0b0af6              # double 7.074249
	.quad	0x401c4e0828c36da8              # double 7.0762029999999996
	.quad	0x40216ce2b063e07a              # double 8.7126669999999997
	.quad	0x401ff14ca925fe97              # double 7.9856439999999997
	.quad	0x4002cea854477ff1              # double 2.3509069999999999
	.quad	0x40014bdec5f394b8              # double 2.1620460000000001
	.quad	0x40043612c6ac215c              # double 2.5264030000000002
	.quad	0x3ffb9a76d97b30f9              # double 1.7252110000000001
	.quad	0x4009c8848387df5d              # double 3.222909
	.quad	0x401425ff1d81f106              # double 5.0371059999999996
	.quad	0x401da4117f84449e              # double 7.4102230000000002
	.quad	0x402301307af20ea6              # double 9.5023230000000005
	.quad	0x40216d6a593a2df9              # double 8.7137019999999996
	.quad	0x4013855e6bc621b8              # double 4.8802430000000001
	.quad	0x3ff3acb20fb224ab              # double 1.229662
	.quad	0x400339420b3d4ae4              # double 2.4029579999999999
	.quad	0x4023ac0f66a55087              # double 9.8360549999999999
	.quad	0x3ff4474c8ffb8b26              # double 1.267407
	.quad	0x40211de9c0229a5f              # double 8.5584240000000005
	.quad	0x40128aceaaf35e31              # double 4.635554
	.quad	0x40213dc96030c240              # double 8.6206770000000006
	.quad	0x401e76b37867f0aa              # double 7.6159189999999999
	.quad	0x3fd61c7de5082cf5              # double 0.34548899999999999
	.quad	0x40010268900c521e              # double 2.1261760000000001
	.quad	0x40056f1bac2df0d4              # double 2.679252
	.quad	0x4010855582129457              # double 4.1302089999999998
	.quad	0x4009ece5710880d8              # double 3.240672
	.quad	0x401a4e33269df97b              # double 6.5763670000000003
	.quad	0x401372491afc04c9              # double 4.8616070000000002
	.quad	0x3ff43945308bb906              # double 1.2639819999999999
	.quad	0x40133d3f1843c3a4              # double 4.8098109999999998
	.quad	0x4012a54152b0a6fc              # double 4.6613819999999997
	.quad	0x40016e31d712a0ec              # double 2.1788059999999998
	.quad	0x401fba9973d9ec70              # double 7.932226
	.quad	0x401781b1d92b7fe1              # double 5.8766550000000004
	.quad	0x4020996d2aa5c5f8              # double 8.2996610000000004
	.quad	0x4023ae5f30e7ff58              # double 9.8405699999999995
	.quad	0x401ecf51697f1f9b              # double 7.7024590000000001
	.quad	0x402064face67d780              # double 8.1972260000000006
	.quad	0x401aa804534bd76f              # double 6.6640790000000001
	.quad	0x40109e846a5d6bec              # double 4.1548020000000001
	.quad	0x3fe0ff1737542a24              # double 0.53113900000000003
	.quad	0x400c188db0574b40              # double 3.5119889999999998
	.quad	0x3ff1122856605ee5              # double 1.0669329999999999
	.quad	0x402244d338f79852              # double 9.1344239999999992
	.quad	0x400ff2799a1fd157              # double 3.9933960000000002
	.quad	0x401773d96638433d              # double 5.8631339999999996
	.quad	0x402120ee8d10f51b              # double 8.5643200000000004
	.quad	0x401385a921ccd962              # double 4.880528
	.quad	0x400c14dcebfec13c              # double 3.5101870000000002
	.quad	0x401739613d31b9b6              # double 5.8060349999999996
	.quad	0x3ff2c370cdc8754f              # double 1.172715
	.quad	0x4021c52fc2656abe              # double 8.8851300000000002
	.quad	0x40236e8e820e6299              # double 9.7159309999999994
	.quad	0x400ae7a8d64d7f0f              # double 3.3631150000000001
	.quad	0x3fe2d816aceaaf36              # double 0.58887800000000001
	.quad	0x3fbd12a94ff0025c              # double 0.113566
	.quad	0x401d83ca7503b81b              # double 7.3787019999999997
	.quad	0x400c0567125dd096              # double 3.5026380000000001
	.quad	0x401bd2fb5d031056              # double 6.9560370000000002
	.quad	0x401a2f3493858362              # double 6.5460989999999999
	.quad	0x400d7374bc6a7efa              # double 3.6813750000000001
	.quad	0x3fee96d0917d6b66              # double 0.95591000000000004
	.quad	0x401f748344c37e6f              # double 7.8637819999999996
	.quad	0x40230bf4cb1897a6              # double 9.5233519999999992
	.quad	0x4006f340d4dc65c7              # double 2.868776
	.quad	0x400bd2074ea8da7f              # double 3.4775529999999999
	.quad	0x401f4345069a4df4              # double 7.8156929999999996
	.quad	0x4008763d3e4ef028              # double 3.057734
	.quad	0x4007a2dbe7f2c301              # double 2.9545210000000002
	.quad	0x400321d7dbf487fd              # double 2.3915250000000001
	.quad	0x402120b49e01de27              # double 8.5638780000000008
	.quad	0x4012386ad2dcb146              # double 4.5550949999999997
	.quad	0x401ab2a6b0d95140              # double 6.6744640000000004
	.quad	0x40076b0531982880              # double 2.9272559999999999
	.quad	0x4018614d72799a20              # double 6.0950220000000002
	.quad	0x40063afa7221858c              # double 2.7787980000000001
	.quad	0x40057c4c165907d9              # double 2.685692
	.quad	0x3fe47944241c3efb              # double 0.63980300000000001
	.quad	0x3ff63f0bae89eba7              # double 1.3903920000000001
	.quad	0x40151484944ed6fe              # double 5.2700370000000003
	.quad	0x3fe959c8c9320d99              # double 0.79220999999999997
	.quad	0x401411c475e6362a              # double 5.0173509999999997
	.quad	0x40210e69270b06c4              # double 8.5281459999999995
	.quad	0x401ac5821294573a              # double 6.6928789999999996
	.quad	0x40232cc55432873c              # double 9.5874430000000003
	.quad	0x3ffaba6defc7a398              # double 1.670515
	.quad	0x3ffaafac6045baf5              # double 1.667889
	.quad	0x4020816d8f4f93bc              # double 8.2527889999999999
	.quad	0x40173e5710880d80              # double 5.8108789999999999
	.quad	0x4022c8e7bc3c5bd1              # double 9.3923930000000002
	.quad	0x4013d15ad106ee31              # double 4.9544480000000002
	.quad	0x401160c521dda05a              # double 4.3445020000000003
	.quad	0x40103083dbc23316              # double 4.0473780000000001
	.quad	0x4006c2888b545c79              # double 2.8449870000000002
	.quad	0x40026be0ded288ce              # double 2.3026749999999998
	.quad	0x4012c0ffda4052d6              # double 4.6884759999999996
	.quad	0x3fe236e2eb1c432d              # double 0.56920000000000004
	.quad	0x3fea7911cf355cd9              # double 0.82727899999999999
	.quad	0x401feb45ae5ffa3c              # double 7.9797580000000004
	.quad	0x40219a3f4666ec9e              # double 8.8012639999999998
	.quad	0x40214b2c625e99e9              # double 8.6468229999999995
	.quad	0x3ff8dc725c3dee78              # double 1.55382
	.quad	0x401587ea5f84cad5              # double 5.3827299999999996
	.quad	0x40199fce3150dae4              # double 6.4060600000000001
	.quad	0x401083d9231c64bb              # double 4.1287580000000004
	.quad	0x3ff27609dcf893fb              # double 1.153818
	.quad	0x4013bdbb16c1e365              # double 4.9352840000000002
	.quad	0x3ffda76640a6b93d              # double 1.853369
	.quad	0x400be732df505d10              # double 3.4878900000000002
	.quad	0x3febcffc9795b35b              # double 0.86913899999999999
	.quad	0x4000c31d712a0ec7              # double 2.0952709999999999
	.quad	0x4010b7ca2120e1f8              # double 4.1794820000000001
	.quad	0x40109e3369b9d7fe              # double 4.1544930000000004
	.quad	0x3ff768d64d7f0ed4              # double 1.463095
	.quad	0x4020911cb039ef0f              # double 8.2834219999999998
	.quad	0x3fd85b5fa22706d5              # double 0.380577
	.quad	0x4009f9e0e736049f              # double 3.2470110000000001
	.quad	0x400207b24638c975              # double 2.2537579999999999
	.quad	0x400299157abb8801              # double 2.324748
	.quad	0x4011f28d002e2329              # double 4.486866
	.quad	0x401aa16440f23897              # double 6.6576089999999999
	.quad	0x3ff56c7c957cd467              # double 1.338986
	.quad	0x3ffa392e1ef73c0c              # double 1.63896
	.quad	0x400e8c8605681ecd              # double 3.8186149999999999
	.quad	0x3ff1b35b0bbf50e3              # double 1.1062879999999999
	.quad	0x4019cc14c660a201              # double 6.4492979999999998
	.quad	0x3ffc1aa3f034b0e2              # double 1.7565040000000001
	.quad	0x402241ec2ce46499              # double 9.128755
	.quad	0x40180c7de5082cf5              # double 6.0121989999999998
	.quad	0x3fe42eab7995ee13              # double 0.63069699999999995
	.quad	0x400a3cc100e6afcd              # double 3.2796650000000001
	.quad	0x401573fe9fadafd1              # double 5.3632759999999999
	.quad	0x4001dc193b3a68b2              # double 2.2324700000000002
	.quad	0x4022397b95a29414              # double 9.1122709999999997
	.quad	0x401c6041461b6d44              # double 7.0939990000000002
	.quad	0x4021a5106ee30caa              # double 8.8223909999999997
	.quad	0x401663ee1bd1ed9e              # double 5.597588
	.quad	0x40190e82949a5658              # double 6.26417
	.quad	0x4015524edf612407              # double 5.3303789999999998
	.quad	0x402357518b0d0edc              # double 9.6705439999999995
	.quad	0x3ff5d0bb6ed67770              # double 1.3634599999999999
	.quad	0x40218581adea8976              # double 8.7607549999999996
	.quad	0x401062fc69728a61              # double 4.0966659999999999
	.quad	0x3ffde052502eec7d              # double 1.8672660000000001
	.quad	0x400b2ccf6be37de9              # double 3.3968799999999999
	.quad	0x401decefed63454a              # double 7.4813840000000003
	.quad	0x40121c9320d9945b              # double 4.5279049999999996
	.quad	0x3fcfe5321e603d57              # double 0.24918199999999999
	.quad	0x400f718eb8950764              # double 3.9304480000000002
	.quad	0x401356a4ca4f440b              # double 4.834613
	.quad	0x4009fab0856e696a              # double 3.2474069999999999
	.quad	0x3fe31a6506141637              # double 0.59697199999999995
	.quad	0x4023818ac9f2fdb9              # double 9.753012
	.quad	0x400fa2c55c96030c              # double 3.9544779999999999
	.quad	0x401755d249e44fa0              # double 5.8338099999999997
	.quad	0x4019a7079e59f2bb              # double 6.4131150000000003
	.quad	0x4000ae4fb97bb731              # double 2.0851130000000002
	.quad	0x401cf5536933a040              # double 7.2395759999999996
	.quad	0x400a65fbf83382e4              # double 3.2997969999999999
	.quad	0x40228cf56eac8605              # double 9.2753099999999993
	.quad	0x402075db3397dd01              # double 8.2301880000000001
	.quad	0x3fd3c95bff04577e              # double 0.30916500000000002
	.quad	0x40041a2e7f6f4be8              # double 2.5127839999999999
	.quad	0x40236250d6b228dd              # double 9.6920230000000007
	.quad	0x4011d5710880d802              # double 4.4584390000000003
	.quad	0x3fd7748e4755ffe7              # double 0.36648900000000001
	.quad	0x3ffe713ad5bee3d6              # double 1.902644
	.quad	0x4003ea6b0d9513f9              # double 2.4894620000000001
	.quad	0x400fb7214f0520d1              # double 3.9644189999999999
	.quad	0x3ffd5a9fbe76c8b4              # double 1.834625
	.quad	0x400584f8f8a4c1ec              # double 2.6899280000000001
	.quad	0x401ab44e93e1c9b4              # double 6.6760809999999999
	.quad	0x4004d5a294141e9b              # double 2.604314
	.quad	0x4019385d744f5d35              # double 6.3050439999999996
	.quad	0x3ffcaddbdb5d8948              # double 1.792446
	.quad	0x4023a12c6ac215ba              # double 9.8147920000000006
	.quad	0x3ffeeea52ef911cf              # double 1.933263
	.quad	0x40105a322af57710              # double 4.088082
	.quad	0x4010ac929aa1d756              # double 4.1685280000000002
	.quad	0x40140489d27c3937              # double 5.0044320000000004
	.quad	0x4010969c66d373b0              # double 4.147081
	.quad	0x401cc86e7e62dc6e              # double 7.1957339999999999
	.quad	0x40237ec3fc43b2dd              # double 9.7475889999999996
	.quad	0x4021c22ad3e920c0              # double 8.8792329999999993
	.quad	0x402025f1172ef0ae              # double 8.0741049999999994
	.quad	0x40107c8eef1bac2e              # double 4.1216390000000001
	.quad	0x40108977c88e79ab              # double 4.1342460000000001
	.quad	0x4020f7296f6512a9              # double 8.4827379999999994
	.quad	0x3fe373a365cb35f4              # double 0.60786600000000002
	.quad	0x4019dbff8a8f3a9b              # double 6.464842
	.quad	0x401a537b07075b3e              # double 6.5815239999999999
	.quad	0x40233cebbba55d1c              # double 9.6189859999999995
	.quad	0x3fe8827b6fe2e6eb              # double 0.76592800000000005
	.quad	0x40107971c10d7bea              # double 4.1185980000000004
	.quad	0x401964a44c7b02d6              # double 6.3482830000000003
	.quad	0x40145508f648c719              # double 5.0830419999999998
	.quad	0x400bc77ff151e753              # double 3.4724119999999998
	.quad	0x401c90bd87b56b87              # double 7.1413479999999998
	.quad	0x40169be1a8262457              # double 5.652228
	.quad	0x401f544c37e6f71a              # double 7.8323219999999996
	.quad	0x4004c2f37fbefd00              # double 2.5951909999999998
	.quad	0x4021f72b4528283d              # double 8.9827519999999996
	.quad	0x40008ebd4cfd08d5              # double 2.0696970000000001
	.quad	0x3ffac0357a355044              # double 1.671926
	.quad	0x401307cb70ac3a86              # double 4.757612
	.quad	0x3fe96c7000431bdf              # double 0.79448700000000005
	.quad	0x4023ca91105e1c15              # double 9.8956379999999999
	.quad	0x4010767168f8e7de              # double 4.1156670000000002
	.quad	0x4006cab042528ae7              # double 2.8489689999999999
	.quad	0x4014de703afb7e91              # double 5.217225
	.quad	0x40190a24cc6822ff              # double 6.259906
	.quad	0x40232fd1dcd7060c              # double 9.5933980000000005
	.quad	0x401fc0b84988094e              # double 7.9382029999999997
	.quad	0x40239d0763a19008              # double 9.8066969999999997
	.quad	0x4020bcf8726d04e6              # double 8.3690829999999998
	.quad	0x40169300de4c5111              # double 5.6435579999999996
	.quad	0x4018081cb46bacf7              # double 6.0079219999999998
	.quad	0x400ae49a133c1ce7              # double 3.3616220000000001
	.quad	0x401c6be0589acbc9              # double 7.1053480000000002
	.quad	0x4013544d44567126              # double 4.8323260000000001
	.quad	0x40208397dd00f777              # double 8.2570180000000004
	.quad	0x3fdf5d56f32bdc27              # double 0.49007200000000001
	.quad	0x3fd3054ac29bf163              # double 0.29719800000000002
	.quad	0x401d53a96d4c33b5              # double 7.3317009999999998
	.quad	0x401ee69984a0e411              # double 7.7251950000000002
	.quad	0x4021833f85510d39              # double 8.7563440000000003
	.quad	0x40145f3a9b068124              # double 5.0929970000000004
	.quad	0x402265360d024702              # double 9.1976779999999998
	.quad	0x4020fb0fcf80dc33              # double 8.4903549999999992
	.quad	0x4020bfa5f41aef70              # double 8.3743130000000008
	.quad	0x3fd1ae1cde5d1809              # double 0.276252
	.quad	0x400acc9ea9a3d2d8              # double 3.3499119999999998
	.quad	0x4017df9bdc69f8c2              # double 5.9683679999999999
	.quad	0x40194db9c7368ad7              # double 6.3259040000000004
	.quad	0x40020bcb5fe542e5              # double 2.2557589999999998
	.quad	0x4022578d2e514c23              # double 9.1709990000000001
	.quad	0x401b38ea7ce0fc2f              # double 6.8055820000000002
	.quad	0x4017b0d4dc65c704              # double 5.9226869999999998
	.quad	0x4014fd716d2aa5c6              # double 5.247503
	.quad	0x4021a2c8c5004fb1              # double 8.8179379999999998
	.quad	0x40204a54c5543287              # double 8.1451779999999996
	.quad	0x401ae4295a6c5d20              # double 6.7228139999999996
	.quad	0x40223ea39c51dabe              # double 9.1223419999999997
	.quad	0x401581b152f3c2db              # double 5.3766530000000001
	.quad	0x3fca22036006d0d5              # double 0.20416300000000001
	.quad	0x4022e6ce358298cc              # double 9.4507919999999998
	.quad	0x3fb395e5aff2a173              # double 0.076506000000000005
	.quad	0x4020e1a0ad8a1166              # double 8.4406789999999994
	.quad	0x4018edaa92e62132              # double 6.2320960000000003
	.quad	0x3fe465061416377a              # double 0.63733200000000001
	.quad	0x4021c86013660e52              # double 8.8913580000000003
	.quad	0x401bc352eb5f5f0b              # double 6.9407459999999999
	.quad	0x4011f37b8d3f1844              # double 4.4877760000000002
	.quad	0x40118df37329c348              # double 4.3886240000000001
	.quad	0x40224953dea465a5              # double 9.1432179999999992
	.quad	0x3ff09ef62f9ca5be              # double 1.0388090000000001
	.quad	0x4022cd6f97679032              # double 9.4012419999999999
	.quad	0x3ff105ee568a5050              # double 1.0639479999999999
	.quad	0x400290e0221426fe              # double 2.3207399999999998
	.quad	0x4001dc7de5082cf5              # double 2.2326619999999999
	.quad	0x4011fc4113c68662              # double 4.4963420000000003
	.quad	0x3fe2d1116a8b8f15              # double 0.58802100000000002
	.quad	0x3ffa045aa2e3c537              # double 1.626063
	.quad	0x400e427e0ef99807              # double 3.782467
	.quad	0x401dd4e1a3f4666f              # double 7.4578920000000002
	.quad	0x4022f15e7c8d1959              # double 9.4714240000000007
	.quad	0x401daeeed8904f6e              # double 7.420833
	.quad	0x40215bdec5f394b8              # double 8.6794340000000005
	.quad	0x3fe599b2c40d0aaa              # double 0.67501199999999995
	.quad	0x40197817b95a2941              # double 6.3672779999999998
	.quad	0x400ce82be8bc169c              # double 3.6133649999999999
	.quad	0x401d70d1fa333765              # double 7.3601760000000001
	.quad	0x4018b7a63736cdf2              # double 6.1793449999999996
	.quad	0x4010819dece57109              # double 4.1265790000000004
	.quad	0x401c9a9f7b5aea31              # double 7.1509989999999997
	.quad	0x400bd5ed06fef7c2              # double 3.4794559999999999
	.quad	0x4002f7d1782d3847              # double 2.3710049999999998
	.quad	0x400dc7dc37a3db3c              # double 3.722588
	.quad	0x3fc7bfceb78897ea              # double 0.18554100000000001
	.quad	0x40225b98a65492ff              # double 9.1788989999999995
	.quad	0x4022db1d712a0ec7              # double 9.4279589999999995
	.quad	0x4011a93faf42784b              # double 4.4152820000000004
	.quad	0x4005a317268d3283              # double 2.704634
	.quad	0x4018c44e93e1c9b4              # double 6.1917059999999999
	.quad	0x401c56e1deacc921              # double 7.0848459999999998
	.quad	0x3ff683f2d3c792d1              # double 1.407214
	.quad	0x40055a22706d5065              # double 2.6690109999999998
	.quad	0x400bb0ebaade657c              # double 3.4613870000000002
	.quad	0x3fd8c6088d6d3b6d              # double 0.38708700000000001
	.quad	0x4022fe39f77292c5              # double 9.4965360000000007
	.quad	0x40219995cc857f30              # double 8.7999709999999993
	.quad	0x4011f2699c7bcc29              # double 4.4867309999999998
	.quad	0x3fcddd4c76d117b5              # double 0.233316
	.quad	0x3ffc56c0d6f544bb              # double 1.77118
	.quad	0x4019900192a73711              # double 6.390631
	.quad	0x4011be410b630a91              # double 4.4357949999999997
	.quad	0x4023636bb1290258              # double 9.6941810000000003
	.quad	0x40208307075b3e14              # double 8.2559129999999996
	.quad	0x4010d60ed80a17b1              # double 4.209041
	.quad	0x401b3a18372e6a77              # double 6.8067330000000004
	.quad	0x3fe5c1c1d6cf850e              # double 0.67990200000000001
	.quad	0x4017f485a0be5109              # double 5.988791
	.quad	0x3ff10d2c386d2ed8              # double 1.0657160000000001
	.quad	0x401a8d82ba5a0382              # double 6.6381940000000004
	.quad	0x4015f4a7b4e54f7b              # double 5.4889210000000004
	.quad	0x4005a94ccab3edd9              # double 2.7076660000000001
	.quad	0x401965cbff47735c              # double 6.3494109999999999
	.quad	0x400de6c7eae5bc88              # double 3.7376860000000001
	.quad	0x400695e39713ad5c              # double 2.823188
	.quad	0x400965f41aef6f8f              # double 3.174782
	.quad	0x4004c8df37329c34              # double 2.5980819999999998
	.quad	0x3fd55903a7546d40              # double 0.33355800000000002
	.quad	0x401119db22d0e560              # double 4.2752499999999998
	.quad	0x40077771001d5c31              # double 2.9333209999999998
	.quad	0x4010c4e874c8ffb9              # double 4.1922930000000003
	.quad	0x401a5cd184c27200              # double 6.590643
	.quad	0x401465c810a569b1              # double 5.0993959999999996
	.quad	0x3ffc126527a20579              # double 1.754491
	.quad	0x4010e14983d79075              # double 4.2200069999999998
	.quad	0x4017a7df5cf2495e              # double 5.9139379999999999
	.quad	0x4023f6bedfa43fe6              # double 9.9819250000000004
	.quad	0x401af6b5d462c344              # double 6.7409280000000003
	.quad	0x4023d8168b5cbff4              # double 9.9220469999999991
	.quad	0x4001c21f2990f302              # double 2.219786
	.quad	0x400b50ca1cef2410              # double 3.4144480000000001
	.quad	0x402177b30f8c64fe              # double 8.7337880000000006
	.quad	0x40223f2ecf206424              # double 9.1234040000000007
	.quad	0x401924039abf3387              # double 6.2851699999999999
	.quad	0x4020fdf138bcdff0              # double 8.4959810000000004
	.quad	0x4021b08fa7a85016              # double 8.8448460000000004
	.quad	0x40119bf3bea91d9b              # double 4.4022969999999999
	.quad	0x4000b1a4bdba0a52              # double 2.0867399999999998
	.quad	0x40106d716d2aa5c6              # double 4.106878
	.quad	0x401ab7531db445ed              # double 6.6790279999999997
	.quad	0x401fb7cb2d905c03              # double 7.9294859999999998
	.quad	0x3fe4dff1d81f1066              # double 0.65233699999999994
	.quad	0x3fcb1a8ef77f27fe              # double 0.21174799999999999
	.quad	0x3ff4de12a51e321a              # double 1.304217
	.quad	0x4019e7219220ff54              # double 6.475714
	.quad	0x3fe2714db59578a3              # double 0.57633100000000004
	.quad	0x3ff9820d5629d841              # double 1.5942510000000001
	.quad	0x4011d107faa044af              # double 4.4541320000000004
	.quad	0x4011c0060780fdc1              # double 4.4375229999999997
	.quad	0x40128226c3b927d4              # double 4.6271009999999997
	.quad	0x4013a09c3ce2089e              # double 4.9068459999999998
	.quad	0x401a964fdb09a672              # double 6.6467890000000001
	.quad	0x400c80c8472c0e7c              # double 3.5628820000000001
	.quad	0x4014000abf76a2f5              # double 5.0000410000000004
	.quad	0x40222ad905c03361              # double 9.0836869999999994
	.quad	0x4021eb46bacf7447              # double 8.959524
	.quad	0x3fc44ec636b09635              # double 0.15865399999999999
	.quad	0x40212e466b1e5c0c              # double 8.5903810000000007
	.quad	0x401ce77d0f1f57b4              # double 7.2260629999999999
	.quad	0x3fc3c81908e581cf              # double 0.15454399999999999
	.quad	0x4000deccc46950fc              # double 2.1087889999999998
	.quad	0x400923a9f383f0bb              # double 3.142414
	.quad	0x40228bfd933e35c6              # double 9.2734190000000005
	.quad	0x4022286b15f88fc9              # double 9.0789419999999996
	.quad	0x3fd1248d7e02645e              # double 0.26785599999999998
	.quad	0x401ce7efe0ce0b91              # double 7.2265009999999998
	.quad	0x3ff7b211cb039ef1              # double 1.480974
	.quad	0x40143b95e5aff2a1              # double 5.0581889999999996
	.quad	0x402262cecc814d72              # double 9.1929839999999992
	.quad	0x400cdb82c2bd7f52              # double 3.607183
	.quad	0x3fd01d5c31593e60              # double 0.25179200000000002
	.quad	0x401a18754f3775b8              # double 6.5238849999999999
	.quad	0x4001162413db7f17              # double 2.1358109999999999
	.quad	0x400e118e325d4a5e              # double 3.758572
	.quad	0x40205ac3009b3073              # double 8.1772690000000008
	.quad	0x40239c7c957cd467              # double 9.805638
	.quad	0x3fdfe4b87bdcf030              # double 0.49833499999999997
	.quad	0x401102aa19439de5              # double 4.2526020000000004
	.quad	0x4022aab713272431              # double 9.3334279999999996
	.quad	0x40225300de4c5111              # double 9.1621159999999993
	.quad	0x4017cf290abb44e5              # double 5.952305
	.quad	0x3ffdf264a16a4873              # double 1.871678
	.quad	0x4019236113404ea5              # double 6.2845500000000003
	.quad	0x401f09641f644956              # double 7.7591710000000003
	.quad	0x4018a8ff327aa68f              # double 6.1650359999999997
	.quad	0x3fa028e4fb97bb73              # double 0.031562
	.quad	0x4016932830a0b1bc              # double 5.6437080000000002
	.quad	0x4023376dfc5cdd51              # double 9.6082610000000006
	.quad	0x400a8ee49f51697f              # double 3.3197719999999999
	.quad	0x4022f29b06812381              # double 9.4738389999999998
	.quad	0x3ff735c5b4aa9718              # double 1.450628
	.quad	0x3ff978d3f1843c3a              # double 1.5919989999999999
	.quad	0x401d3bb7f9d6f113              # double 7.308319
	.quad	0x401314549b62c775              # double 4.7698539999999996
	.quad	0x4011f5f45e0b4e12              # double 4.4901900000000001
	.quad	0x4023cbf748a15981              # double 9.8983709999999991
	.quad	0x3fba9b17481b21c4              # double 0.10392899999999999
	.quad	0x401771ed17c5ef63              # double 5.861256
	.quad	0x401adaed99cbee80              # double 6.7137969999999996
	.quad	0x4023c399b2c40d0b              # double 9.8820320000000005
	.quad	0x40157dfc9ff92f2b              # double 5.3730339999999996
	.quad	0x4006b382e44b6e93              # double 2.8376519999999998
	.quad	0x400e4b1ab0856e69              # double 3.7866719999999998
	.quad	0x4011d8a6117720c9              # double 4.4615710000000002
	.quad	0x40237fa22706d506              # double 9.7492839999999994
	.quad	0x3fd6b5aea3161a1e              # double 0.35483900000000002
	.quad	0x401e6914b167ec78              # double 7.6026179999999996
	.quad	0x401be34a44c7b02d              # double 6.9719629999999997
	.quad	0x402074c87980f55e              # double 8.2280920000000002
	.quad	0x4010d353b4b2fa94              # double 4.2063740000000003
	.quad	0x40182f5903a7546d              # double 6.0462379999999998
	.quad	0x402229563a9f383f              # double 9.0807359999999999
	.quad	0x3fe55f28848387df              # double 0.66786599999999996
	.quad	0x401424a8c154c986              # double 5.0358000000000001
	.quad	0x401c460a63305101              # double 7.0683990000000003
	.quad	0x4006d1eafee6fb4c              # double 2.8524989999999999
	.quad	0x4020f4e5710880d8              # double 8.478313
	.quad	0x401ba608d08919f0              # double 6.9121430000000004
	.quad	0x400aeae9680e0653              # double 3.364703
	.quad	0x401c8bc01a36e2eb              # double 7.1364749999999999
	.quad	0x40128ce13f4a98ab              # double 4.6375780000000004
	.quad	0x4013c33daf8df7a5              # double 4.9406650000000001
	.quad	0x401176705c896dd2              # double 4.3656629999999996
	.quad	0x4014c99bb2788db0              # double 5.1968829999999997
	.quad	0x402238611fd5885d              # double 9.1101159999999997
	.quad	0x40174d15ad106ee3              # double 5.825278
	.quad	0x3ffa3f91e646f156              # double 1.64052
	.quad	0x40175641700cd856              # double 5.8342340000000004
	.quad	0x401592d666a98245              # double 5.3933960000000001
	.quad	0x4005425f202107b8              # double 2.6574080000000002
	.quad	0x40208467381d7dbf              # double 8.2585999999999995
	.quad	0x3ff2cc6822ff0889              # double 1.1749039999999999
	.quad	0x401ccb0c4588a04d              # double 7.1982889999999999
	.quad	0x4023afba6698bb4d              # double 9.8432189999999994
	.quad	0x3fff736ef8055fbb              # double 1.9656819999999999
	.quad	0x401819a30984e400              # double 6.0250360000000001
	.quad	0x401d4964e8b7e4de              # double 7.3216739999999998
	.quad	0x401986833c60029f              # double 6.3813599999999999
	.quad	0x40179785f8d2e515              # double 5.8979720000000002
	.quad	0x40120bd1244a6224              # double 4.5115400000000001
	.quad	0x4019d18116ebd4d0              # double 6.4545940000000002
	.quad	0x3ff77c23315d701e              # double 1.4678070000000001
	.quad	0x4022ae19fc2a886a              # double 9.3400420000000004
	.quad	0x4020ddf7a4e7ab75              # double 8.4335299999999993
	.quad	0x4019a6bf8769ec2d              # double 6.4128400000000001
	.quad	0x40198294dd72367e              # double 6.3775209999999998
	.quad	0x400a2bfa0945f9df              # double 3.2714729999999999
	.quad	0x401b615b1422ccb4              # double 6.8450740000000003
	.quad	0x4023b8bd66277c46              # double 9.8608200000000004
	.quad	0x400eed141a6937d2              # double 3.865761
	.quad	0x4005d3cab81f969e              # double 2.7284139999999999
	.quad	0x402059183b60285f              # double 8.1740130000000004
	.quad	0x4005dd34df04ddb5              # double 2.7330109999999999
	.quad	0x401b065a14488c61              # double 6.7562030000000002
	.quad	0x4020e5510d38cda7              # double 8.4478840000000002
	.quad	0x40187a1e3eaf6838              # double 6.119256
	.quad	0x40229a76965f5276              # double 9.3016860000000001
	.quad	0x40105057d1782d38              # double 4.0784599999999998
	.quad	0x4019c07f66e86c66              # double 6.4379860000000004
	.quad	0x3fff21cde5d18091              # double 1.9457530000000001
	.quad	0x4011463baba7b917              # double 4.318587
	.quad	0x401ece40420f6f09              # double 7.7014170000000001
	.quad	0x400594d0dcfcc5b9              # double 2.6976640000000001
	.quad	0x4022a95f02c4d65e              # double 9.3308029999999995
	.quad	0x3fc6bb341e14bdfd              # double 0.177588
	.quad	0x4023cd6451b93038              # double 9.9011560000000002
	.quad	0x40004048e043a216              # double 2.0313889999999999
	.quad	0x40168cefaa4766c7              # double 5.6376330000000001
	.quad	0x4021669b38d60a63              # double 8.7004029999999997
	.quad	0x3ffb759ddc1e7968              # double 1.716215
	.quad	0x3fdd4e4c942d490e              # double 0.45790399999999998
	.quad	0x4023c5377e1b8ed2              # double 9.8851890000000004
	.quad	0x3ff0b43526527a20              # double 1.0439959999999999
	.quad	0x40146a686e7e62dc              # double 5.1039139999999996
	.quad	0x401412f8bdec5f39              # double 5.0185269999999997
	.quad	0x4023402e87d2c7b9              # double 9.6253550000000007
	.quad	0x3ff8a837f7be121f              # double 1.541069
	.quad	0x400a9ca4b124d09a              # double 3.3264860000000001
	.quad	0x3ff1818b502ababf              # double 1.0941270000000001
	.quad	0x40036229a5ebb774              # double 2.4229310000000002
	.quad	0x401e089fc6da4485              # double 7.5084220000000003
	.quad	0x4010122b7baecd08              # double 4.0177440000000004
	.quad	0x4018deed45e9185d              # double 6.2177020000000001
	.quad	0x40200489b0ee49f5              # double 8.0088629999999998
	.quad	0x3fe93b70ef566491              # double 0.78850600000000004
	.quad	0x3fd9878b7a1c25d0              # double 0.39889799999999997
	.quad	0x3ff0f09203a322af              # double 1.0587329999999999
	.quad	0x400924e7ab756430              # double 3.1430199999999999
	.quad	0x401b505c896dd26b              # double 6.8284779999999996
	.quad	0x402016ae3a3a8e71              # double 8.0442979999999995
	.quad	0x3fe567903211cb04              # double 0.66889200000000004
	.quad	0x4013d0db2702a348              # double 4.9539609999999996
	.quad	0x3ff0f9713ad5bee4              # double 1.060899
	.quad	0x3ffec99bf5946c33              # double 1.924221
	.quad	0x40035b29a1b9f98b              # double 2.4195129999999998
	.quad	0x400cf2189bd8383b              # double 3.6182110000000001
	.quad	0x4013a65f9591cd1c              # double 4.9124739999999996
	.quad	0x40229e8f08461f9f              # double 9.309685
	.quad	0x40020005c4651f3f              # double 2.2500110000000002
	.quad	0x3ffcb950b955f783              # double 1.7952429999999999
	.quad	0x3fb14ad362e90364              # double 0.067547999999999997
	.quad	0x4020caa79bbadc0a              # double 8.3958100000000009
	.quad	0x4011c5332acfb763              # double 4.4425780000000001
	.quad	0x40024a0fd3b29a1c              # double 2.2861630000000002
	.quad	0x401248305d95dd4c              # double 4.5704969999999996
	.quad	0x4020aea4a8c154ca              # double 8.3411000000000008
	.quad	0x3fe44182ecaeea64              # double 0.63299700000000003
	.quad	0x4006b8fbca1059ea              # double 2.8403239999999998
	.quad	0x401c8e12a51e321a              # double 7.1387429999999998
	.quad	0x3fddb14ec204f2ae              # double 0.463947
	.quad	0x3fcba7b0b3919264              # double 0.216055
	.quad	0x3fc9480a5accd530              # double 0.19751099999999999
	.quad	0x4011c89eba6aca79              # double 4.4459179999999998
	.quad	0x402016338b47c73f              # double 8.0433620000000001
	.quad	0x3fde97353b4b2fa9              # double 0.47797899999999999
	.quad	0x40192f1a9fbe76c9              # double 6.2960000000000003
	.quad	0x400fb9a49c2c1b11              # double 3.965646
	.quad	0x4000eb524399b2c4              # double 2.114903
	.quad	0x3ffe6a2d2fe3f35a              # double 1.900922
	.quad	0x4023842efd438d1e              # double 9.7581710000000008
	.quad	0x4010e26809d49518              # double 4.2210999999999999
	.quad	0x3ff229a1b9f98b72              # double 1.1351640000000001
	.quad	0x401bb9a5657fb69a              # double 6.9312950000000004
	.quad	0x3fde1832fcac8e69              # double 0.47022700000000001
	.quad	0x40108aefb2aae297              # double 4.1356799999999998
	.quad	0x4020c24ebdd334c6              # double 8.3795070000000003
	.quad	0x3fff2117720c8cd6              # double 1.9455789999999999
	.quad	0x400094fe79ee02a7              # double 2.0727509999999998
	.quad	0x3ff47878b7a1c25d              # double 1.279412
	.quad	0x40184fba450acc0c              # double 6.0778590000000001
	.quad	0x3ff99a038194c016              # double 1.600101
	.quad	0x4010b5c182ecaeea              # double 4.1774959999999997
	.quad	0x4017e02b841248d8              # double 5.9689160000000001
	.quad	0x400f89f83be6601c              # double 3.9423680000000001
	.quad	0x3feb9ee675147f13              # double 0.863147
	.quad	0x401e7d7c2ca148bb              # double 7.6225440000000004
	.quad	0x3ff5abce8533b107              # double 1.3544449999999999
	.quad	0x3fbc5faebc408d8f              # double 0.110835
	.quad	0x3fba9142b302f72b              # double 0.103779
	.quad	0x40176bd273d5bab2              # double 5.8552949999999999
	.quad	0x4020135a20ddc619              # double 8.0377969999999994
	.quad	0x4021c5b24e9c4546              # double 8.8861260000000009
	.quad	0x3fe099a62ed35222              # double 0.51875599999999999
	.quad	0x4022ad4a3c64345d              # double 9.338457
	.quad	0x400f06ba493c89f4              # double 3.878285
	.quad	0x3fe605af6c69b5a6              # double 0.68819399999999997
	.quad	0x401a3b2cc70867ae              # double 6.5577880000000004
	.quad	0x40203d466f5019f4              # double 8.1196780000000003
	.quad	0x4018700b45ae5ffa              # double 6.1094179999999998
	.quad	0x40089df761cbccf3              # double 3.0771320000000002
	.quad	0x4011e50092ccf6be              # double 4.4736349999999998
	.quad	0x4021e2c8a3726070              # double 8.9429370000000006
	.quad	0x400dc6c7eae5bc88              # double 3.7220610000000001
	.quad	0x4023723443d46b27              # double 9.7230550000000004
	.quad	0x4016ad8409e55c10              # double 5.6694490000000002
	.quad	0x400166db50f40e5a              # double 2.1752229999999999
	.quad	0x4014b2ab25b317f0              # double 5.1744810000000001
	.quad	0x40133e6e221c8a7a              # double 4.8109669999999998
	.quad	0x40211dc981beb181              # double 8.5581779999999998
	.quad	0x402351df1172ef0b              # double 9.6599050000000001
	.quad	0x40031d92b7fe08af              # double 2.38944
	.quad	0x3fcf73fb7a5f41af              # double 0.245727
	.quad	0x3fa0cfbfc6540cc8              # double 0.032835000000000003
	.quad	0x400b7b677f6b1a2a              # double 3.4352559999999999
	.quad	0x3ff657353b4b2fa9              # double 1.3962909999999999
	.quad	0x400998e7ddca4b12              # double 3.1996609999999999
	.quad	0x401381ce28ed5f14              # double 4.8767630000000004
	.quad	0x40000efa1e3eaf68              # double 2.0073129999999999
	.quad	0x402169f83be6601c              # double 8.7069720000000003
	.quad	0x4022ec5ef62f9ca6              # double 9.4616620000000005
	.quad	0x3ff0ce93e1c9b414              # double 1.0504340000000001
	.quad	0x400d99fc2a8869c6              # double 3.7001879999999998
	.quad	0x40008d3e920c069e              # double 2.0689669999999998
	.quad	0x402330724b76f6d7              # double 9.5946219999999993
	.quad	0x401d00ad8a11665a              # double 7.2506620000000002
	.quad	0x3ff37b18dac258d6              # double 1.2175530000000001
	.quad	0x4015a4906034f3fe              # double 5.4107070000000004
	.quad	0x401cf24894c447c3              # double 7.236605
	.quad	0x401a161522a6f3f5              # double 6.5215649999999998
	.quad	0x400b7220ff540896              # double 3.4307270000000001
	.quad	0x40217aac1094a2ba              # double 8.7395940000000003
	.quad	0x4023abce4217d285              # double 9.8355580000000006
	.quad	0x400749dadfb506dd              # double 2.9110619999999998
	.quad	0x401a5317acc4ef89              # double 6.5811450000000002
	.quad	0x3ff34c532a497fa6              # double 1.206134
	.quad	0x3ff23785729b280f              # double 1.138555
	.quad	0x40027bbcf4e874c9              # double 2.310419
	.quad	0x40110669057d1783              # double 4.2562600000000002
	.quad	0x401469da16616b55              # double 5.1033710000000001
	.quad	0x401d0ea140570825              # double 7.2642870000000004
	.quad	0x401d92be48a58b3f              # double 7.3933039999999997
	.quad	0x401b68e5c4eb56fc              # double 6.8524390000000004
	.quad	0x40191ef1fddebd90              # double 6.2802199999999999
	.quad	0x3fb41908e581cf78              # double 0.078506999999999993
	.quad	0x40172dbc23315d70              # double 5.7946629999999999
	.quad	0x400ee55b035bd513              # double 3.86199
	.quad	0x400946a65cf67b1c              # double 3.159497
	.quad	0x402321717df19d67              # double 9.5653190000000005
	.quad	0x3ffd0200c0f01fb8              # double 1.812989
	.quad	0x3ffb2e4b018611fd              # double 1.6988019999999999
	.quad	0x3fc4b44a1f080304              # double 0.16175200000000001
	.quad	0x4015f8a979e16d6e              # double 5.4928340000000002
	.quad	0x3fe02f965b20b806              # double 0.50580899999999995
	.quad	0x4022dae9ab29e4d6              # double 9.4275640000000003
	.quad	0x40227e67f90d9d77              # double 9.2468869999999992
	.quad	0x3ffcbb60285ec3db              # double 1.7957460000000001
	.quad	0x4023ec3d25247cb7              # double 9.9614039999999999
	.quad	0x401fea4e379b77c0              # double 7.9788139999999999
	.quad	0x4007bf44d4456712              # double 2.9683929999999998
	.quad	0x401eff95d4e8fb01              # double 7.7495950000000002
	.quad	0x40228795b35b0bbf              # double 9.2648139999999994
	.quad	0x400210a88effe2a4              # double 2.2581340000000001
	.quad	0x40173f53c579f234              # double 5.8118429999999996
	.quad	0x3ffc3a7eb6bf444e              # double 1.764281
	.quad	0x4007aa7ded6ba8c6              # double 2.9582480000000002
	.quad	0x4015e15097c80842              # double 5.4700340000000001
	.quad	0x40167884c6a3bde0              # double 5.6176940000000002
	.quad	0x4013247064ece9a3              # double 4.7855850000000002
	.quad	0x400ce9bc77143394              # double 3.6141290000000001
	.quad	0x400e2e39b456b442              # double 3.7725710000000001
	.quad	0x40225fcc7d1bb491              # double 9.1871069999999992
	.quad	0x40209b167ec7863c              # double 8.3029060000000001
	.quad	0x4022f81fb82c2bd8              # double 9.484617
	.quad	0x3ff7d2923e5b8562              # double 1.488909
	.quad	0x40076dde7a743a64              # double 2.9286469999999998
	.quad	0x3fe3545c78a6dacb              # double 0.60404800000000003
	.quad	0x400c6c1a8ac5c140              # double 3.5527850000000001
	.quad	0x3fe3d818c5c9a34d              # double 0.62012900000000004
	.quad	0x4011e09d0635a427              # double 4.4693490000000002
	.quad	0x4021fee47dc37a3e              # double 8.9978370000000005
	.quad	0x3fc90e6f2e8c0486              # double 0.19575300000000001
	.quad	0x4016109a24031487              # double 5.5162129999999996
	.quad	0x401f5e453d20f2bf              # double 7.8420610000000001
	.quad	0x4020486961c36977              # double 8.1414290000000005
	.quad	0x4019e67e846a5d6c              # double 6.4750920000000001
	.quad	0x4010d4f227d028a2              # double 4.2079550000000001
	.quad	0x4009a0852b4d8ba4              # double 3.203379
	.quad	0x401ab32db1e9f278              # double 6.6749790000000004
	.quad	0x4004f704ff43419e              # double 2.6206149999999999
	.quad	0x400809fcf3dc054f              # double 3.004877
	.quad	0x40205f965b20b806              # double 8.1866939999999992
	.quad	0x402259e3864cb5bb              # double 9.1755639999999996
	.quad	0x3f9b9a9da597d49d              # double 0.026956999999999998
	.quad	0x400aaf41f212d773              # double 3.335575
	.quad	0x3fe98787485e3da3              # double 0.797794
	.quad	0x40072fa2f05a708f              # double 2.8982600000000001
	.quad	0x4011b95feda66128              # double 4.4310299999999998
	.quad	0x3fc9a5a89b951c5c              # double 0.20036799999999999
	.quad	0x401db9567dbb16c2              # double 7.4309940000000001
	.quad	0x40140b20b8066c2b              # double 5.0108670000000002
	.quad	0x4023fab1704ff434              # double 9.9896349999999998
	.quad	0x401859157abb8801              # double 6.0869960000000001
	.quad	0x4006702ababead4f              # double 2.8047689999999998
	.quad	0x3fdd4b7f5a5332ad              # double 0.457733
	.quad	0x400ac3e39f77292c              # double 3.3456489999999999
	.quad	0x4020afc6fbd273d6              # double 8.3433150000000005
	.quad	0x40227d7d1782d384              # double 9.2450949999999991
	.quad	0x4019568405b39e28              # double 6.3344880000000003
	.quad	0x401d308aac96cc60              # double 7.2974040000000002
	.quad	0x3ffdea9c560c7c0f              # double 1.8697779999999999
	.quad	0x4010d89fc6da4485              # double 4.2115470000000004
	.quad	0x4014167f4dbdf8f4              # double 5.0219699999999996
	.quad	0x4019a1ef73c0c1fd              # double 6.4081400000000004
	.quad	0x401838c8259e1f3a              # double 6.0554509999999997
	.quad	0x3fe8524399b2c40d              # double 0.760042
	.quad	0x3ff546b484d76ab6              # double 1.3297620000000001
	.quad	0x401372c16df3f962              # double 4.8620660000000004
	.quad	0x401baefe4ffc9796              # double 6.9208920000000003
	.quad	0x4003e59e1f3a57eb              # double 2.4871180000000002
	.quad	0x40227607e5a78f26              # double 9.2305290000000007
	.quad	0x40121f75536933a0              # double 4.5307209999999998
	.quad	0x4020e0913a4f8727              # double 8.4386080000000003
	.quad	0x400ab224aada33be              # double 3.3369840000000002
	.quad	0x3fe7b4aa9717df1a              # double 0.74080400000000002
	.quad	0x401679a8cdea033e              # double 5.6188079999999996
	.quad	0x400d559d55e6bc62              # double 3.666804
	.quad	0x4021108f42fe8251              # double 8.5323429999999991
	.quad	0x40215260b2c83ec9              # double 8.6608940000000008
	.quad	0x401962df505d0fa6              # double 6.3465550000000004
	.quad	0x401b18c47a17f413              # double 6.7741870000000004
	.quad	0x4014fe3d1cc100e7              # double 5.2482800000000003
	.quad	0x40107bbfd71b0468              # double 4.1208489999999998
	.quad	0x3ff2bc968943e100              # double 1.1710419999999999
	.quad	0x4020c18f81e8a2ec              # double 8.3780479999999997
	.quad	0x3ff139378ee28672              # double 1.0764689999999999
	.quad	0x4009c5881a1554fc              # double 3.2214510000000001
	.quad	0x4023b34ce3de614a              # double 9.8501960000000004
	.quad	0x40137de7a743a648              # double 4.872954
	.quad	0x401fd165d3996fa8              # double 7.9544899999999998
	.quad	0x400acae18ac9f2fe              # double 3.3490630000000001
	.quad	0x40230fa072d1aeb4              # double 9.5305210000000002
	.quad	0x400cb2096787ce96              # double 3.586932
	.quad	0x401616638433d6c7              # double 5.5218639999999999
	.quad	0x4016f406c00da1a9              # double 5.7383069999999998
	.quad	0x402332bb6672fba0              # double 9.5990859999999998
	.quad	0x40211dd13d74d595              # double 8.5582370000000001
	.quad	0x40231d38476f2a5a              # double 9.5570699999999995
	.quad	0x40083fda4052d667              # double 3.0311780000000002
	.quad	0x400e8684cf0739b0              # double 3.8156829999999999
	.quad	0x3ffcde15ca6ca03c              # double 1.8042199999999999
	.quad	0x401e92fd32c625ea              # double 7.6435440000000003
	.quad	0x40226d1b0ccbc05d              # double 9.2130969999999994
	.quad	0x401b9b9c304ccee6              # double 6.9019630000000003
	.quad	0x4015d77d955714ba              # double 5.4604400000000002
	.quad	0x4002817763e4abe7              # double 2.3132160000000002
	.quad	0x3ffb6774eebf65dc              # double 1.712758
	.quad	0x4022338ed1bf7ad5              # double 9.1006990000000005
	.quad	0x40139bb1f255f352              # double 4.9020460000000003
	.quad	0x40187f5fd47bedb7              # double 6.1243889999999999
	.quad	0x3fd81565c2d27807              # double 0.37630599999999997
	.quad	0x400f2b7a1c25d074              # double 3.8962289999999999
	.quad	0x40190e0d23d4f15e              # double 6.2637219999999996
	.quad	0x3ff4ad7c6fbd273d              # double 1.2923549999999999
	.quad	0x400300bed740c415              # double 2.3753639999999998
	.quad	0x4013c6b93ccd0fe9              # double 4.9440660000000003
	.quad	0x40232dce39b456b4              # double 9.5894639999999995
	.quad	0x401ca1b2e59af9ec              # double 7.1579090000000001
	.quad	0x401bb719b4dcebff              # double 6.9288090000000002
	.quad	0x3ffb02c5e2cdc012              # double 1.688177
	.quad	0x3ff83ceb78897e99              # double 1.5148729999999999
	.quad	0x40179df04ddb5526              # double 5.9042370000000002
	.quad	0x400b1ccf28c79f66              # double 3.3890669999999998
	.quad	0x4015975ee99a62ed              # double 5.3978229999999998
	.quad	0x40108049235f8099              # double 4.1252789999999999
	.quad	0x401c252e72da1230              # double 7.0363100000000003
	.quad	0x401327a28bb0a2cb              # double 4.7887060000000004
	.quad	0x401805f28848387e              # double 6.005808
	.quad	0x401079d2391d5800              # double 4.1189660000000003
	.quad	0x3ffda1c79b34a44c              # double 1.8519969999999999
	.quad	0x3ffcb41bfbdf090f              # double 1.7939719999999999
	.quad	0x4021a7edc7ef177a              # double 8.8279859999999992
	.quad	0x40096f8f8a4c1ebd              # double 3.1794730000000002
	.quad	0x401fc5a63f9a49c3              # double 7.9430170000000002
	.quad	0x3ffe004a72ead927              # double 1.8750709999999999
	.quad	0x40228efe0ce0b913              # double 9.2792820000000003
	.quad	0x4012b0214ad362e9              # double 4.672002
	.quad	0x4018b00c521dda06              # double 6.1719220000000004
	.quad	0x40230adb402d16b9              # double 9.5212039999999991
	.quad	0x4020f363d3e4ef03              # double 8.4753710000000009
	.quad	0x3fe8fe9531550ca2              # double 0.78107700000000002
	.quad	0x400a9aad601ffb48              # double 3.325526
	.quad	0x40096393ee5eedcc              # double 3.1736219999999999
	.quad	0x402287340d4dc65c              # double 9.2640689999999992
	.quad	0x400526d698fe6927              # double 2.643964
	.quad	0x4017f1958969a0ae              # double 5.9859220000000004
	.quad	0x3ff8f033a4723ab0              # double 1.558643
	.quad	0x3fec0685553ef6b6              # double 0.87579600000000002
	.quad	0x401f1387df5cf249              # double 7.7690729999999996
	.quad	0x400fa28f5c28f5c3              # double 3.9543750000000002
	.quad	0x4022b7ec13b9f128              # double 9.359223
	.quad	0x40141ac57e23f24e              # double 5.0261440000000004
	.quad	0x4017ea3b14a90471              # double 5.9787410000000003
	.quad	0x3fdae45c358afc48              # double 0.42018800000000001
	.quad	0x40138bdd76683c29              # double 4.8865869999999996
	.quad	0x401c9b9346994185              # double 7.151929
	.quad	0x400452bb23571d1d              # double 2.5403959999999999
	.quad	0x40023f212d773190              # double 2.2808250000000001
	.quad	0x40108969a0ad8a11              # double 4.1341919999999996
	.quad	0x4006643bb40b34e7              # double 2.7989419999999998
	.quad	0x40076f733a8a3f8a              # double 2.9294190000000002
	.quad	0x401ce12599ed7c70              # double 7.2198700000000002
	.quad	0x402188ed5f138bce              # double 8.767436
	.quad	0x401d0b0ee49f5169              # double 7.2607989999999996
	.quad	0x3ffa8f9d2bf55150              # double 1.6600619999999999
	.quad	0x3ff18488c60cbf2b              # double 1.094857
	.quad	0x4022869c886162f1              # double 9.2629129999999993
	.quad	0x3ff2a56eefa1e3eb              # double 1.165389
	.quad	0x4014ae27e0ef9980              # double 5.1700739999999996
	.quad	0x40157a5a89b951c6              # double 5.3694860000000002
	.quad	0x4019c62f5989df11              # double 6.4435399999999996
	.quad	0x40229d2b90a78290              # double 9.3069729999999993
	.quad	0x3fb6b2f23033a472              # double 0.088667999999999996
	.quad	0x4008ee2c98e53eb4              # double 3.1162960000000002
	.quad	0x401e7db50f40e5a3              # double 7.6227609999999996
	.quad	0x3ff651fb3fa6defc              # double 1.3950149999999999
	.quad	0x401e367cf1c3265b              # double 7.5532110000000001
	.quad	0x401f0304039abf34              # double 7.7529450000000004
	.quad	0x40205f0d1fa33376              # double 8.1856469999999995
	.quad	0x3ff3d577963992c9              # double 1.2396160000000001
	.quad	0x4005f55de58e64b2              # double 2.7448079999999999
	.quad	0x4010ad556084a516              # double 4.1692710000000002
	.quad	0x3ffbce10cf5b1c86              # double 1.7378089999999999
	.quad	0x4019160a63305101              # double 6.2715240000000003
	.quad	0x40141b3edd8b60f2              # double 5.0266070000000003
	.quad	0x401658bd66277c46              # double 5.5866600000000002
	.quad	0x401b79d7342edbb6              # double 6.8689850000000003
	.quad	0x4012cbb3c81908e6              # double 4.6989280000000004
	.quad	0x401aff42fe82517e              # double 6.7492789999999996
	.quad	0x4020180303c07ee1              # double 8.0468980000000006
	.quad	0x3ff37840181e03f7              # double 1.216858
	.quad	0x4022aad72ffd1dcd              # double 9.3336729999999992
	.quad	0x401c2df8f4730404              # double 7.0448950000000004
	.quad	0x401ad887a8d64d7f              # double 6.7114549999999999
	.quad	0x3fd6f62f9ca5bd94              # double 0.35877599999999998
	.quad	0x40109b9bed30f063              # double 4.1519620000000002
	.quad	0x3ffbd25247cb70ac              # double 1.7388479999999999
	.quad	0x40216ab990afe60c              # double 8.7084469999999996
	.quad	0x401f5a0ad8a11666              # double 7.8379320000000003
	.quad	0x401aa7121ab4b72c              # double 6.6631549999999997
	.quad	0x3ff63a4d6e47dc38              # double 1.3892340000000001
	.quad	0x40180f7a4e7ab756              # double 6.0151149999999998
	.quad	0x3ffcc5fe111276fb              # double 1.798338
	.quad	0x3feff722e1ac57e2              # double 0.99891799999999997
	.quad	0x400f3635e74299d9              # double 3.9014700000000002
	.quad	0x4017d9bed30f062d              # double 5.9626419999999998
	.quad	0x401bab8023a6ce36              # double 6.9174810000000004
	.quad	0x40158c09c3ce208a              # double 5.3867560000000001
	.quad	0x4020d5dd8f92af9b              # double 8.4177060000000008
	.quad	0x40103b7bf1e8e608              # double 4.05809
	.quad	0x3fe81049235f8099              # double 0.75198799999999999
	.quad	0x4023066ec9e236c1              # double 9.5125639999999993
	.quad	0x3fe9e3a5c1c6088d              # double 0.80903899999999995
	.quad	0x400fe05ab3aabcd8              # double 3.9845480000000002
	.quad	0x401410ba1f4b1ee2              # double 5.0163349999999998
	.quad	0x401da71f79420b3d              # double 7.4132059999999997
	.quad	0x4001c2ae4b018612              # double 2.220059
	.quad	0x401f4c7f77af6406              # double 7.8247049999999998
	.quad	0x4022a4d056c508b3              # double 9.3219019999999997
	.quad	0x4010cd2b6f19934f              # double 4.200361
	.quad	0x4014d592d98bf7f0              # double 5.2085679999999996
	.quad	0x3fe734df04ddb552              # double 0.72520399999999996
	.quad	0x400c49cb252ce033              # double 3.5360320000000001
	.quad	0x40209ac4d65e4606              # double 8.3022829999999992
	.quad	0x3fef785510d38cda              # double 0.98343899999999995
	.quad	0x401abb5ed8d36b4c              # double 6.6829789999999996
	.quad	0x401d9082cf52b90a              # double 7.3911239999999996
	.quad	0x40052366516db0de              # double 2.6422850000000002
	.quad	0x40131f3f0fe047d4              # double 4.7805140000000002
	.quad	0x402106fcdee34fc6              # double 8.5136479999999999
	.quad	0x40160c99285a921d              # double 5.5123030000000002
	.quad	0x4020e4de7ea5f84d              # double 8.4470100000000006
	.quad	0x40221443d46b26c0              # double 9.0395800000000008
	.quad	0x3ff2ea2f48c2e771              # double 1.1821740000000001
	.quad	0x3ff4abb01c92ddbe              # double 1.2919160000000001
	.quad	0x4018a2cecc814d72              # double 6.1589919999999996
	.quad	0x401e68b5cbff4773              # double 7.6022559999999996
	.quad	0x401dedb2b346130a              # double 7.4821270000000002
	.quad	0x401806f544bb1af4              # double 6.0067950000000003
	.quad	0x40199e6b3fe9fadb              # double 6.404706
	.quad	0x40153919695d91ac              # double 5.3057610000000004
	.quad	0x40141f7b5aea3162              # double 5.0307440000000003
	.quad	0x402293cee9dd7ecc              # double 9.2886880000000004
	.quad	0x400093b0813cab82              # double 2.072114
	.quad	0x40043c04c8bc9cd4              # double 2.5293060000000001
	.quad	0x4018f355475a31a5              # double 6.2376300000000002
	.quad	0x3fc18e4b87bdcf03              # double 0.137155
	.quad	0x402017fbefd00714              # double 8.0468440000000001
	.quad	0x40204ee99a62ed35              # double 8.1541259999999998
	.quad	0x400a69dc725c3dee              # double 3.3016899999999998
	.quad	0x4016f67125dd095b              # double 5.740666
	.quad	0x3fe7ca600b029281              # double 0.74345399999999995
	.quad	0x4018eaf07bfe7e20              # double 6.2294330000000002
	.quad	0x401f463c31df761d              # double 7.8185890000000002
	.quad	0x4016a57de0d66f0d              # double 5.661613
	.quad	0x40170b827fa1a0cf              # double 5.7612399999999999
	.quad	0x4023f80b673c4f3c              # double 9.9844620000000006
	.quad	0x400b633eff195033              # double 3.4234599999999999
	.quad	0x3fae5c91d14e3bcd              # double 0.059299999999999999
	.quad	0x4012ea40d90e23af              # double 4.7287629999999998
	.quad	0x402214ba0e842742              # double 9.0404820000000008
	.quad	0x4001bb48909289db              # double 2.2164470000000001
	.quad	0x401282ff4ba51a00              # double 4.6279269999999997
	.quad	0x3ff54f4f93bc0a07              # double 1.331863
	.quad	0x400add556084a516              # double 3.3580730000000001
	.quad	0x4022d06d71f36263              # double 9.4070850000000003
	.quad	0x4021b3fa4c61d862              # double 8.8515189999999997
	.quad	0x3ff501aef6f8f041              # double 1.3129109999999999
	.quad	0x3ff560e0eb67c287              # double 1.336152
	.quad	0x40052da9003eea21              # double 2.6472950000000002
	.quad	0x3fce655193708aad              # double 0.23746700000000001
	.quad	0x40172ac18f81e8a3              # double 5.7917540000000001
	.quad	0x3fecca3a4b5568e8              # double 0.89968599999999999
	.quad	0x3fe63b4d48882f0e              # double 0.694739
	.quad	0x401555fdcdf69878              # double 5.3339759999999998
	.quad	0x401c2bb2788db057              # double 7.0426729999999997
	.quad	0x4016f3d145d85165              # double 5.7381029999999997
	.quad	0x4014e177ea1c68ec              # double 5.2201839999999997
	.quad	0x4023c37154003255              # double 9.8817240000000001
	.quad	0x40206c6b69db65ed              # double 8.2117570000000004
	.quad	0x400bcbfdb4cc2507              # double 3.4746049999999999
	.quad	0x400a3ad5bee3d5fe              # double 3.2787280000000001
	.quad	0x3ff14941c8216c61              # double 1.0803849999999999
	.quad	0x401b25061416377a              # double 6.7861560000000001
	.quad	0x40088a5df2239e6b              # double 3.0675620000000001
	.quad	0x3ffce8112ba16e7a              # double 1.806657
	.quad	0x3ff33e0157eed45f              # double 1.2026380000000001
	.quad	0x401db6d15ad106ee              # double 7.4285329999999998
	.quad	0x40224e158750c1b9              # double 9.1525079999999992
	.quad	0x3ff2d491f2dc2b0f              # double 1.1768970000000001
	.quad	0x4015bdbad3a604e2              # double 5.4352830000000001
	.quad	0x4020965e2478854d              # double 8.2936870000000003
	.quad	0x4001cea63b688bdb              # double 2.2259030000000002
	.quad	0x40063e5c91d14e3c              # double 2.7804500000000001
	.quad	0x401aebc7f77af640              # double 6.7302549999999997
	.quad	0x4009fe2f7b17ce53              # double 3.2491140000000001
	.quad	0x40209fff36ac6477              # double 8.3124939999999992
	.quad	0x400366b37867f0aa              # double 2.4251469999999999
	.quad	0x3ff4d9e731d2e0e3              # double 1.303199
	.quad	0x3ffff46994185059              # double 1.997171
	.quad	0x400669984a0e410b              # double 2.8015599999999998
	.quad	0x3fd5e368f08461fa              # double 0.342005
	.quad	0x401cfcf70153bd16              # double 7.2470359999999996
	.quad	0x400682ca148ba83f              # double 2.8138619999999999
	.quad	0x400a656bca5375c9              # double 3.2995220000000001
	.quad	0x4021fd6b228dc982              # double 8.9949580000000005
	.quad	0x401e29d40ee06d94              # double 7.5408480000000004
	.quad	0x4001873365881a15              # double 2.1910159999999999
	.quad	0x3fffaa4b9884c6a4              # double 1.9790760000000001
	.quad	0x401734217d2849cb              # double 5.8009089999999999
	.quad	0x402180db0574b407              # double 8.751671
	.quad	0x4015ed04e618ce2d              # double 5.4814639999999999
	.quad	0x401a280e06530058              # double 6.5391159999999999
	.quad	0x40225af0e0a84be4              # double 9.1776189999999999
	.quad	0x40179ed0b30b5aa7              # double 5.9050929999999999
	.quad	0x3ffb74bf8fcd67fd              # double 1.7160029999999999
	.quad	0x4019dade657b84dc              # double 6.4637390000000003
	.quad	0x401d70a67620ee8d              # double 7.3600099999999999
	.quad	0x40208597b30f8c65              # double 8.260923
	.quad	0x3fee1cf7878b7a1c              # double 0.94103599999999998
	.quad	0x40075bcec84f8f8a              # double 2.9198279999999999
	.quad	0x4020e0b49e01de27              # double 8.4388780000000008
	.quad	0x4001dfaa8a82a561              # double 2.2342119999999999
	.quad	0x40175d74d594f26b              # double 5.8412660000000001
	.quad	0x400aad5d80e496ee              # double 3.334651
	.quad	0x3ff40db9c7368ad7              # double 1.2533510000000001
	.quad	0x3fe292ea52ef911d              # double 0.58043400000000001
	.quad	0x3fceed8904f6dfc6              # double 0.24162400000000001
	.quad	0x4001817d2849cb25              # double 2.1882269999999999
	.quad	0x4017c60913a4f872              # double 5.9433939999999996
	.quad	0x401263d188f42fe8              # double 4.5974789999999999
	.quad	0x401ca2c3009b3073              # double 7.1589470000000004
	.quad	0x4017372a7bd48cb5              # double 5.8038730000000003
	.quad	0x400738e29f9ce8d9              # double 2.9027759999999998
	.quad	0x3fe5b645a1cac083              # double 0.67849999999999999
	.quad	0x3fc4aa9f7b5aea31              # double 0.16145699999999999
	.quad	0x4023b75a5332acfb              # double 9.8581109999999991
	.quad	0x40226f6ab5807fed              # double 9.2176109999999998
	.quad	0x40031db9841aac54              # double 2.3895140000000001
	.quad	0x3fe8a6dacabc5155              # double 0.77036800000000005
	.quad	0x401740828c36da88              # double 5.8129980000000003
	.quad	0x400571bf7ad4b274              # double 2.6805409999999998
	.quad	0x401d2fbce4217d28              # double 7.2966189999999997
	.quad	0x4018f36933a0407d              # double 6.2377060000000002
	.quad	0x4014b4ba0e842742              # double 5.1764910000000004
	.quad	0x40215d332acfb763              # double 8.6820310000000003
	.quad	0x40218e5c70435efa              # double 8.7780489999999993
	.quad	0x4011673bc903ea70              # double 4.3508139999999997
	.quad	0x40237576683c297c              # double 9.729419
	.quad	0x4021d35bf6a0dbad              # double 8.9128109999999996
	.quad	0x4008c3c07ee0b0af              # double 3.0955819999999998
	.quad	0x4016729563a9f384              # double 5.6118980000000001
	.quad	0x3ff9afa3fcc9ea9a              # double 1.6053809999999999
	.quad	0x401ae9cf56eac860              # double 6.7283299999999997
	.quad	0x401eafea3df6db94              # double 7.6717919999999999
	.quad	0x400d19c4113c6866              # double 3.637581
	.quad	0x4001ca8198f1d3ed              # double 2.2238799999999999
	.quad	0x401c5b4a2339c0ec              # double 7.0891500000000001
	.quad	0x3fe44230fcf80dc3              # double 0.63307999999999998
	.quad	0x401bdd940789613d              # double 6.9663849999999998
	.quad	0x401f7f0e90bc7b46              # double 7.8740790000000001
	.quad	0x401adb8b69552e30              # double 6.7143990000000002
	.quad	0x40145717df19d66b              # double 5.0850520000000001
	.quad	0x40108fcac8e68e3f              # double 4.140422
	.quad	0x4023108893b7d849              # double 9.5322919999999999
	.quad	0x401304523f67f4dc              # double 4.7542200000000001
	.quad	0x401cd76ff3ade226              # double 7.210388
	.quad	0x4016db8950763a19              # double 5.714391
	.quad	0x40169c6eb0b7c350              # double 5.6527659999999997
	.quad	0x401403eaf6837f7c              # double 5.0038260000000001
	.quad	0x4016253b8e4b87be              # double 5.5363600000000002
	.quad	0x3fe0dde15ca6ca04              # double 0.52708500000000003
	.quad	0x4023f86f8ad2567a              # double 9.9852260000000008
	.quad	0x3fec02363b256ffc              # double 0.87526999999999999
	.quad	0x3fc2f837b4a2339c              # double 0.1482
	.quad	0x4004478d92fb19e7              # double 2.5349379999999999
	.quad	0x4022576ddaceee0f              # double 9.1707599999999996
	.quad	0x400ceb178b370047              # double 3.6147909999999999
	.quad	0x4020519a415f45e1              # double 8.1593800000000005
	.quad	0x3ffce3f141205bc0              # double 1.80565
	.quad	0x400dc8cf7caa758a              # double 3.723052
	.quad	0x40109eea63b688be              # double 4.1551910000000003
	.quad	0x40083604189374bc              # double 3.0263749999999998
	.quad	0x401a7fa5093964a6              # double 6.6246530000000003
	.quad	0x4016bcba732df506              # double 5.6843050000000002
	.quad	0x40201c727dcbddba              # double 8.0555610000000009
	.quad	0x3ff0a7c17a89331a              # double 1.040956
	.quad	0x401974b76f6d7625              # double 6.3639809999999999
	.quad	0x401d14e7685985ad              # double 7.2704139999999997
	.quad	0x40096b7a1c25d074              # double 3.1774789999999999
	.quad	0x401856b50b0f27bb              # double 6.0846749999999998
	.quad	0x4001e64c2f837b4a              # double 2.2374499999999999
	.quad	0x3fa4a7f8012dfd69              # double 0.040343999999999998
	.quad	0x40006923e5b8561d              # double 2.0513379999999999
	.quad	0x3feb9d0203e63e8e              # double 0.86291600000000002
	.quad	0x401c7beb9e492bc3              # double 7.121016
	.quad	0x3fe03fb7a5f41aef              # double 0.50777799999999995
	.quad	0x3fcb2cd7cf5f4e44              # double 0.21230599999999999
	.quad	0x401b3e71cda2b5a2              # double 6.810981
	.quad	0x400c37a3db3bfb59              # double 3.5271680000000001
	.quad	0x4023c71b47842310              # double 9.8888800000000003
	.quad	0x4022eb30f8c64fdb              # double 9.4593579999999999
	.quad	0x401a238c5436b8fa              # double 6.5347150000000003
	.quad	0x4003bac1d29dc726              # double 2.4661900000000001
	.quad	0x401a84766c6de764              # double 6.6293579999999999
	.quad	0x401c3fe586013661              # double 7.0623990000000001
	.quad	0x4004ba6efc371da3              # double 2.5910319999999998
	.quad	0x4023b0f4b61fe21e              # double 9.8456170000000007
	.quad	0x400f6c0379314446              # double 3.9277410000000001
	.quad	0x401afe9f6a93f291              # double 6.7486550000000003
	.quad	0x4002b6a6a012599f              # double 2.3391850000000001
	.quad	0x400c8c521dda059a              # double 3.5685159999999998
	.quad	0x3ff61f8c21e1d218              # double 1.3827020000000001
	.quad	0x401345b5b70691ea              # double 4.8180759999999996
	.quad	0x401d9e536501e258              # double 7.4046149999999997
	.quad	0x4008da0dfdef8488              # double 3.1064720000000001
	.quad	0x4020b922962cfd8f              # double 8.3615919999999999
	.quad	0x4010d2bdc26dce3a              # double 4.2058020000000003
	.quad	0x4003a5492ff4ba52              # double 2.4557060000000002
	.quad	0x4014d9c27e953155              # double 5.212656
	.quad	0x401d9494d50ebaae              # double 7.3950990000000001
	.quad	0x4020187724fa8b4c              # double 8.047784
	.quad	0x40001dee78183f92              # double 2.014615
	.quad	0x400b8eaa6d267408              # double 3.444661
	.quad	0x4007ee3d5fdcdf6a              # double 2.9913280000000002
	.quad	0x4015340d90e23af3              # double 5.3008329999999999
	.quad	0x4012be4bcad9ad86              # double 4.6858360000000001
	.quad	0x400fe535c9e6687f              # double 3.9869189999999999
	.quad	0x401658e3ac0c62e5              # double 5.5868060000000002
	.quad	0x3fe74ef88b977857              # double 0.72838999999999998
	.quad	0x4016a47a9e2bcf92              # double 5.6606240000000003
	.quad	0x3fe8304ccee5abc1              # double 0.75589600000000001
	.quad	0x40206daa92e62132              # double 8.2141920000000006
	.quad	0x400da929aa1d755c              # double 3.7075990000000001
	.quad	0x40113d96a6a0125a              # double 4.3101450000000003
	.quad	0x400a703d145d8516              # double 3.3048039999999999
	.quad	0x400a139192641b33              # double 3.2595550000000002
	.quad	0x401c006e5cd4ed2d              # double 7.0004210000000002
	.quad	0x3fc826e5471715c6              # double 0.18868699999999999
	.quad	0x3fc158fb43d89ce5              # double 0.13552800000000001
	.quad	0x402244af922962d0              # double 9.1341520000000003
	.quad	0x40182623d0bfa094              # double 6.0372459999999997
	.quad	0x3ff546ed245b291c              # double 1.3298160000000001
	.quad	0x40129408d8ec95c0              # double 4.6445650000000001
	.quad	0x4005728283d35eb7              # double 2.6809129999999999
	.quad	0x40145f9b13165d3a              # double 5.0933650000000004
	.quad	0x4014051eb851eb85              # double 5.0049999999999999
	.quad	0x4008e9a8049667b6              # double 3.11409
	.quad	0x401612f61ed5ae1d              # double 5.5185170000000001
	.quad	0x401bd3369b9d7fd8              # double 6.9562629999999999
	.quad	0x40058271fff79c84              # double 2.6886939999999999
	.quad	0x3ffb8c2c5e2cdc01              # double 1.721722
	.quad	0x401d146b26bf876a              # double 7.2699400000000001
	.quad	0x40205ba1d323fee3              # double 8.1789690000000004
	.quad	0x4012e6e696a26e54              # double 4.7254889999999996
	.quad	0x3ff11ca29845dc83              # double 1.069491
	.quad	0x4014a3ff25e56cd7              # double 5.1601530000000002
	.quad	0x40176a05143bf727              # double 5.8535349999999999
	.quad	0x401eb4b5dcc63f14              # double 7.6764749999999999
	.quad	0x4022f98915bdd767              # double 9.4873740000000008
	.quad	0x3fcc5b749adc8fb8              # double 0.22154099999999999
	.quad	0x3feefa69be09bb6b              # double 0.96806800000000003
	.quad	0x40146bee807bbb62              # double 5.1054019999999998
	.quad	0x401ab41cc532a498              # double 6.675891
	.quad	0x401c78f47304039b              # double 7.1181200000000002
	.quad	0x4016e3ebbfd71b04              # double 5.7225789999999996
	.quad	0x400a035a426bb55b              # double 3.2516370000000001
	.quad	0x40167d48882f0e0b              # double 5.6223470000000004
	.quad	0x3ff6d5bbbe878fac              # double 1.427181
	.quad	0x4017ed18d25edd05              # double 5.9815399999999999
	.quad	0x401db2749f0e4da1              # double 7.4242730000000003
	.quad	0x400d92f901083dbc              # double 3.6967639999999999
	.quad	0x400066cb10342aaa              # double 2.050192
	.quad	0x400ffd5d3dc8b86b              # double 3.998713
	.quad	0x3fd0721d53cddd6e              # double 0.256965
	.quad	0x4013d8a50507a6bd              # double 4.9615669999999996
	.quad	0x3fabd9ec7000431c              # double 0.054397000000000001
	.quad	0x4016b489d27c3937              # double 5.6763070000000004
	.quad	0x3ff89bc664d3bf2f              # double 1.5380309999999999
	.quad	0x4022479357603926              # double 9.1397960000000005
	.quad	0x4012040cc78e9f6b              # double 4.5039550000000004
	.quad	0x4022e854ef459d99              # double 9.4537729999999999
	.quad	0x401cc97edc7ef178              # double 7.1967730000000003
	.quad	0x40070e0e30446b6a              # double 2.8818630000000001
	.quad	0x402106a3bddfca00              # double 8.5129680000000008
	.quad	0x4023c8bae89eba6b              # double 9.8920510000000003
	.quad	0x400d34eca686e7e6              # double 3.6508419999999999
	.quad	0x3ffbd0d38cda6e76              # double 1.738483
	.quad	0x4018c85f06f69446              # double 6.1956749999999996
	.quad	0x3ff59bf162ae4b02              # double 1.3505720000000001
	.quad	0x401cd61c36976bc2              # double 7.2090920000000001
	.quad	0x401c8676ea422899              # double 7.1313129999999996
	.quad	0x4017433764f11b61              # double 5.8156410000000003
	.quad	0x4020987c4199fe43              # double 8.2978229999999993
	.quad	0x4017169a91105e1c              # double 5.7720739999999999
	.quad	0x4015f3a2163fdd66              # double 5.4879230000000003
	.quad	0x400bd4f9c1f85d74              # double 3.4789919999999999
	.quad	0x401210aed99cbee8              # double 4.516292
	.quad	0x40237f1a9fbe76c9              # double 9.7482500000000005
	.quad	0x40059b6805a2d730              # double 2.700882
	.quad	0x401391960fa15db3              # double 4.8921739999999998
	.quad	0x400e6dc65c70435f              # double 3.803601
	.quad	0x40176ec918e325d5              # double 5.8581890000000003
	.quad	0x3ff9699b6f5caf2d              # double 1.5882829999999999
	.quad	0x4022de03b3e9a6f8              # double 9.4336219999999997
	.quad	0x40009368ad688377              # double 2.071977
	.quad	0x401dc65d7cb2d906              # double 7.4437160000000002
	.quad	0x4023c1fb82c2bd7f              # double 9.8788719999999994
	.quad	0x3ffceeb80ecfa69c              # double 1.808281
	.quad	0x401f726dce39b457              # double 7.8617470000000002
	.quad	0x4022584406c00da2              # double 9.1723940000000006
	.quad	0x40234b2ce89656ef              # double 9.646827
	.quad	0x3ff5ff1737542a24              # double 1.3747780000000001
	.quad	0x4022171fbc5de9c0              # double 9.0451639999999997
	.quad	0x401cf611ba3ca750              # double 7.2403019999999998
	.quad	0x40085e99e94ab1d5              # double 3.046192
	.quad	0x401306cbd987c632              # double 4.7566369999999996
	.quad	0x400b60f66a550870              # double 3.422345
	.quad	0x4003d17f84449dbf              # double 2.4772940000000001
	.quad	0x3ff26b9c304ccee6              # double 1.1512720000000001
	.quad	0x4022bdadfb506dd7              # double 9.3704680000000006
	.quad	0x402107e02645e4e7              # double 8.5153820000000007
	.quad	0x3fc6270f3882278d              # double 0.173067
	.quad	0x3fe74e89656eefa2              # double 0.72833700000000001
	.quad	0x400737d84901d191              # double 2.9022679999999998
	.quad	0x4010c72a7bd48cb5              # double 4.1944980000000003
	.quad	0x401b5dae81882adc              # double 6.8414859999999997
	.quad	0x40137c9c90c4dec2              # double 4.8716910000000002
	.quad	0x3fdf9d27c3936827              # double 0.49396699999999999
	.quad	0x401f648d3ae685db              # double 7.8481949999999995
	.quad	0x401db03c8e25c811              # double 7.4221060000000003
	.quad	0x40132f7f498c3b0c              # double 4.7963839999999998
	.quad	0x4022a0e8c8abd5dc              # double 9.3142759999999995
	.quad	0x40198d916872b021              # double 6.3882500000000002
	.quad	0x400bb6cbd987c632              # double 3.4642559999999998
	.quad	0x401dbd8e432441ff              # double 7.4351130000000003
	.quad	0x3febde37585be1a8              # double 0.87087599999999998
	.quad	0x401d838ac18f81e9              # double 7.3784590000000003
	.quad	0x4017c5e2cdc011d3              # double 5.9432479999999996
	.quad	0x40122a78af3e468d              # double 4.5414760000000003
	.quad	0x40019ca31e7d9989              # double 2.2014830000000001
	.quad	0x4004cd4cb9ecf638              # double 2.600244
	.quad	0x40111ed2cbea4ebe              # double 4.2801010000000002
	.quad	0x402184d940789614              # double 8.7594700000000003
	.quad	0x400c363e4abe6a33              # double 3.5264859999999998
	.quad	0x400652ff4ba51a00              # double 2.7905259999999998
	.quad	0x3fe418f3eccc4695              # double 0.62804599999999999
	.quad	0x40080157689ca18c              # double 3.0006550000000001
	.quad	0x40136bb55ac03ff7              # double 4.8551840000000004
	.quad	0x400d2deb95e5aff3              # double 3.6474220000000002
	.quad	0x4019d52157689ca2              # double 6.4581350000000004
	.quad	0x3ffa43d9a95421c0              # double 1.6415649999999999
	.quad	0x4020728869c66d37              # double 8.2236969999999996
	.quad	0x4021212231832fcb              # double 8.5647140000000004
	.quad	0x4018006317268d33              # double 6.0003780000000004
	.quad	0x40179b95a294141f              # double 5.9019380000000004
	.quad	0x40213cc74b838c11              # double 8.6187079999999998
	.quad	0x4019a777079e59f3              # double 6.4135400000000002
	.quad	0x401dd845dc832336              # double 7.4612040000000004
	.quad	0x40220d67ba237cdd              # double 9.0261820000000004
	.quad	0x4017e69c23b7952d              # double 5.9752049999999999
	.quad	0x40228add15f02c4d              # double 9.2712179999999993
	.quad	0x401b4b4d48882f0e              # double 6.823537
	.quad	0x400eb6b11c6d1e11              # double 3.8392050000000002
	.quad	0x40109aec0724b76f              # double 4.1512909999999996
	.quad	0x4020a168f8e7ddca              # double 8.3152539999999995
	.quad	0x402007398e970718              # double 8.0141109999999998
	.quad	0x3fe75466f5019f3c              # double 0.72905299999999995
	.quad	0x4021d9cbccf28c7a              # double 8.9253830000000001
	.quad	0x3fcb4db59578a2a9              # double 0.213309
	.quad	0x4001cc386d2ed784              # double 2.2247170000000001
	.quad	0x4023b2089e34330d              # double 9.8477219999999991
	.quad	0x4005ed3f9e7b80aa              # double 2.7408440000000001
	.quad	0x4003c0010c6f7a0b              # double 2.4687519999999998
	.quad	0x401bd5c91d14e3bd              # double 6.9587750000000002
	.quad	0x400d40bb2bba98ee              # double 3.6566070000000002
	.quad	0x40222ad44dca8e2e              # double 9.0836509999999997
	.quad	0x4020b6d20296b335              # double 8.3570709999999995
	.quad	0x4008587f88765ba7              # double 3.043212
	.quad	0x402308c868b9fdbd              # double 9.5171539999999996
	.quad	0x3ff2fd63022dd7aa              # double 1.1868620000000001
	.quad	0x40196451b93037d6              # double 6.3479679999999998
	.quad	0x40021efd00713f07              # double 2.2651309999999998
	.quad	0x401ac54b48d3ae68              # double 6.6926699999999997
	.quad	0x40230e9e5e247885              # double 9.5285519999999994
	.quad	0x400abcf0b6b6e0d2              # double 3.3422559999999999
	.quad	0x4022e69e3c968944              # double 9.4504260000000002
	.quad	0x401aeef06b37867f              # double 6.733339
	.quad	0x4010820642396074              # double 4.1269770000000001
	.quad	0x3fec5caafbc1acde              # double 0.88631199999999999
	.quad	0x4022e8cbf2b239a4              # double 9.4546810000000007
	.quad	0x3ffb4189374bc6a8              # double 1.7035
	.quad	0x4009a107314ca926              # double 3.203627
	.quad	0x4003d3f4a98aa865              # double 2.478494
	.quad	0x401817735c182ecb              # double 6.0229010000000001
	.quad	0x4011457eaa2a0a96              # double 4.3178660000000004
	.quad	0x4019fa48b6523704              # double 6.4944179999999996
	.quad	0x401757913e81450f              # double 5.835515
	.quad	0x4021c64c2f837b4a              # double 8.8872999999999998
	.quad	0x3fddcdc443914f48              # double 0.46568399999999999
	.quad	0x3feb3968d759ee89              # double 0.85075800000000001
	.quad	0x400ae92923e5b856              # double 3.3638479999999999
	.quad	0x400ac4fb97bb7308              # double 3.3461829999999999
	.quad	0x4012ffbbd7b2031d              # double 4.7497400000000001
	.quad	0x4012bf5a1016ce79              # double 4.6868670000000003
	.quad	0x3ff5e3e9ea140571              # double 1.3681430000000001
	.quad	0x4016af00ef1348b2              # double 5.6709019999999999
	.quad	0x401c030164840e17              # double 7.0029349999999999
	.quad	0x4016b75c0767d34e              # double 5.6790620000000001
	.quad	0x40235abb44e50c5f              # double 9.6772100000000005
	.quad	0x401500995aaf78ff              # double 5.2505850000000001
	.quad	0x402350bc7b45f17c              # double 9.6576880000000002
	.quad	0x4019339192641b33              # double 6.3003600000000004
	.quad	0x40044d5ae1cde5d2              # double 2.5377710000000002
	.quad	0x3ffa86fdeb52c9d1              # double 1.6579569999999999
	.quad	0x4011dd4e8fb00bcc              # double 4.4661200000000001
	.quad	0x402352b1d4f9c1f8              # double 9.6615129999999993
	.quad	0x401df2c3c9eecbfb              # double 7.4870749999999999
	.quad	0x401e1e6a76965f52              # double 7.5297029999999996
	.quad	0x3ffbc79a2834d270              # double 1.7362310000000001
	.quad	0x40192549f94855da              # double 6.2864149999999999
	.quad	0x40099436b8f9b131              # double 3.1973699999999998
	.quad	0x400ee230fcf80dc3              # double 3.8604449999999999
	.quad	0x3fffa54b48d3ae68              # double 1.9778549999999999
	.quad	0x401aa117f84449dc              # double 6.6573180000000001
	.quad	0x4015fe086bdf4c2b              # double 5.4980789999999997
	.quad	0x401cb8548a9bcfd5              # double 7.1800100000000002
	.quad	0x4013f9c23b7952d2              # double 4.9939049999999998
	.quad	0x40162b8e4b87bdcf              # double 5.542535
	.quad	0x4008d55ef1fddebe              # double 3.1041850000000002
	.quad	0x4017ad7d7c2ca149              # double 5.9194240000000002
	.quad	0x4021c27829068987              # double 8.879823
	.quad	0x40103683c297bfa5              # double 4.0532370000000002
	.quad	0x401f2e931876188b              # double 7.7954829999999999
	.quad	0x40006c3547e06962              # double 2.0528360000000001
	.quad	0x400f57a5f41aef70              # double 3.9177970000000002
	.quad	0x3fe2f3519bd4067d              # double 0.59220200000000001
	.quad	0x4006c8259e1f3a58              # double 2.847728
	.quad	0x401f65753a3ec02f              # double 7.8490799999999998
	.quad	0x400d1b402d16b980              # double 3.638306
	.quad	0x4009104ab606b7aa              # double 3.1329549999999999
	.quad	0x40153c6b484d76ab              # double 5.3090029999999997
	.quad	0x4013b851654d61b3              # double 4.9299980000000003
	.quad	0x401ec254e6e221c9              # double 7.6897770000000003
	.quad	0x40117e0b912dba4d              # double 4.3730909999999996
	.quad	0x401e5d2a62aa1944              # double 7.5909820000000003
	.quad	0x401da86f47b677f7              # double 7.4144870000000003
	.quad	0x40072a5269595fee              # double 2.8956650000000002
	.quad	0x4020aa322af57710              # double 8.332414
	.quad	0x40158054ef459d99              # double 5.375324
	.quad	0x4019d6dca07f66e8              # double 6.4598259999999996
	.quad	0x3ff60f765fd8adac              # double 1.3787750000000001
	.quad	0x4001f31d2e0e3044              # double 2.2437079999999998
	.quad	0x3fe4bd2fa0d77b7c              # double 0.64809399999999995
	.quad	0x3fca89c1b54195cd              # double 0.20732900000000001
	.quad	0x40233e466b1e5c0c              # double 9.6216310000000007
	.quad	0x4020bfa0d77b7c78              # double 8.3742739999999998
	.quad	0x40141cc5fbf83383              # double 5.0280990000000001
	.quad	0x3fae9984a0e410b6              # double 0.059764999999999999
	.quad	0x402186ac215b9a5b              # double 8.7630320000000008
	.quad	0x40096769ec2ce465              # double 3.1754950000000002
	.quad	0x3ff961932d6ece14              # double 1.586322
	.quad	0x3fd942784a9478c8              # double 0.39468199999999998
	.quad	0x3ff26bda0dfdef85              # double 1.1513310000000001
	.quad	0x4006b5c8d9f9053a              # double 2.838762
	.quad	0x3fefb8887229e908              # double 0.99127600000000004
	.quad	0x3ff42ff7dfa00e28              # double 1.261711
	.quad	0x4023662131a8ef78              # double 9.699472
	.quad	0x3fd24046412cf0fa              # double 0.28517300000000001
	.quad	0x40216041ede1198b              # double 8.6880030000000001
	.quad	0x4022e22c2374794f              # double 9.4417430000000006
	.quad	0x3ff4914f483cafb4              # double 1.2854760000000001
	.quad	0x401defdbd2fa0d78              # double 7.4842370000000002
	.quad	0x3ff7535fc3b4f616              # double 1.4578549999999999
	.quad	0x4012126aa8eb4635              # double 4.5179850000000004
	.quad	0x3ff7ef166e008e9b              # double 1.495871
	.quad	0x401813cab81f969e              # double 6.0193279999999998
	.quad	0x40048533b1077469              # double 2.5650400000000002
	.quad	0x40200de310dbf056              # double 8.0271229999999996
	.quad	0x4017ef3ade225fa6              # double 5.9836229999999997
	.quad	0x402241d7dbf487fd              # double 9.1286000000000005
	.quad	0x401aa632c1f42bb6              # double 6.6623029999999996
	.quad	0x401f7c200c0f01fc              # double 7.8712160000000004
	.quad	0x40182abe27179bfe              # double 6.041741
	.quad	0x400ba5119ce075f7              # double 3.4556
	.quad	0x4021342fe82517e7              # double 8.6019279999999991
	.quad	0x4020a8cfbfc6540d              # double 8.3297100000000004
	.quad	0x3fe83775b8130165              # double 0.75677000000000005
	.quad	0x40212101f31f46ed              # double 8.5644679999999997
	.quad	0x3fe7163fdd65a145              # double 0.72146600000000005
	.quad	0x400d530c67168f8e              # double 3.6655509999999998
	.quad	0x4020215831f03d14              # double 8.0651259999999993
	.quad	0x3fd4f7a919695d92              # double 0.32761600000000002
	.quad	0x40206182ecaeea64              # double 8.1904520000000005
	.quad	0x401a279357603926              # double 6.5386480000000002
	.quad	0x402056fd21ff2e49              # double 8.1699000000000002
	.quad	0x401cab9cf9a06a6e              # double 7.1675909999999998
	.quad	0x402201212513b5bf              # double 9.0022059999999993
	.quad	0x4023ffbeb9e492bc              # double 9.9995019999999996
	.quad	0x3fe9605ccc89b0ee              # double 0.79301299999999997
	.quad	0x4020370281ba7fc3              # double 8.1074409999999997
	.quad	0x4021b87e5a78f25a              # double 8.8603389999999997
	.quad	0x40134af709b738e7              # double 4.8232080000000002
	.quad	0x3fe4f56eac860568              # double 0.65495999999999999
	.quad	0x40203d1633482be9              # double 8.1193100000000005
	.quad	0x402128a84be40421              # double 8.5794090000000001
	.quad	0x4021cf911cf355ce              # double 8.9054040000000008
	.quad	0x40125adab9f559b4              # double 4.5887250000000002
	.quad	0x4001d075b3e1437c              # double 2.2267869999999998
	.quad	0x3fe471a9fbe76c8b              # double 0.63887499999999997
	.quad	0x4003ccdc011d3672              # double 2.4750290000000001
	.quad	0x40225edf1e0828c3              # double 9.1852959999999992
	.quad	0x401380d77b7c7821              # double 4.8758220000000003
	.quad	0x4020c69af5ba2be0              # double 8.3879009999999994
	.quad	0x40234b35b0bbf50e              # double 9.6468939999999996
	.quad	0x40117815e39713ad              # double 4.3672709999999997
	.quad	0x4001848626f60e0f              # double 2.1897090000000001
	.quad	0x4015f13165d39970              # double 5.4855400000000003
	.quad	0x400293b7521144cc              # double 2.3221270000000001
	.quad	0x4012f6412cf0f9d3              # double 4.7404830000000002
	.quad	0x40001bb517a46174              # double 2.0135290000000001
	.quad	0x4010ecdfefbf401c              # double 4.2313229999999997
	.quad	0x401972089e34330d              # double 6.3613609999999996
	.quad	0x40199bdcf0307f24              # double 6.4022100000000002
	.quad	0x400c853b0813cab8              # double 3.5650539999999999
	.quad	0x401a88fbca1059ea              # double 6.6337729999999997
	.quad	0x40161c560c7c0f45              # double 5.5276719999999999
	.quad	0x3ffaaf0cfe154435              # double 1.667737
	.quad	0x400995f56a7ac81d              # double 3.1982219999999999
	.quad	0x4013cfc0d2c386d3              # double 4.9528840000000001
	.quad	0x402169131ec0b567              # double 8.7052239999999994
	.quad	0x3fff898a222d5172              # double 1.971079
	.quad	0x4019c9146e4c0df6              # double 6.4463670000000004
	.quad	0x401e024f6598e10d              # double 7.502256
	.quad	0x4018e792d1287c20              # double 6.226146
	.quad	0x3fdf1e29b6b2af14              # double 0.48621599999999998
	.quad	0x4012d4628027d88c              # double 4.7074069999999999
	.quad	0x401b811409a24031              # double 6.8760529999999997
	.quad	0x401fc1886df82b1f              # double 7.9389969999999996
	.quad	0x4008baca36199781              # double 3.0912060000000001
	.quad	0x4022911f926c7eae              # double 9.2834439999999994
	.quad	0x4012602a3486f04a              # double 4.5939110000000003
	.quad	0x3ff562b9d3cbc48f              # double 1.336603
	.quad	0x400d523810e88590              # double 3.665146
	.quad	0x401175bab21815a0              # double 4.3649699999999996
	.quad	0x4023416fc9bc7714              # double 9.6278059999999996
	.quad	0x40188f8c21e1d218              # double 6.1401830000000004
	.quad	0x401f8a5119ce075f              # double 7.8850749999999996
	.quad	0x4006fbb517a46174              # double 2.8729040000000001
	.quad	0x3fa78db48909289e              # double 0.046003000000000002
	.quad	0x402356d698fe6927              # double 9.6696059999999999
	.quad	0x402036df3f961805              # double 8.1071720000000003
	.quad	0x400e9d74d594f26b              # double 3.826883
	.quad	0x4011d202107b7846              # double 4.4550859999999997
	.quad	0x401581f75104d552              # double 5.3769200000000001
	.quad	0x401d349a9973d9ec              # double 7.3013709999999996
	.quad	0x40166e4473cd5736              # double 5.6076829999999998
	.quad	0x4020ef4c09c3ce21              # double 8.4673770000000008
	.quad	0x401501e603d57796              # double 5.2518539999999998
	.quad	0x401ccf633ce63a5c              # double 7.2025269999999999
	.quad	0x3fb99bb2788db057              # double 0.100032
	.quad	0x4020c0385c67dfe3              # double 8.3754299999999997
	.quad	0x4012d307af20ea5b              # double 4.7060839999999997
	.quad	0x3ff966adb402d16c              # double 1.5875680000000001
	.quad	0x400a61511dffc548              # double 3.2975180000000002
	.quad	0x3fe1b193f6c2699c              # double 0.55292699999999995
	.quad	0x3fdbe115592d98bf              # double 0.43561299999999997
	.quad	0x402289314445aa2e              # double 9.2679539999999996
	.quad	0x3ff7ccdea033e78e              # double 1.487517
	.quad	0x40009dfdac68a937              # double 2.0771440000000001
	.quad	0x4021b48387df5cf2              # double 8.8525659999999995
	.quad	0x400ef86b15f88fc9              # double 3.8712979999999999
	.quad	0x4023fa11a975afb0              # double 9.9884160000000008
	.quad	0x4014ccb1465e8922              # double 5.1998949999999997
	.quad	0x3ff501871e6cd291              # double 1.312873
	.quad	0x4022281f75104d55              # double 9.0783649999999998
	.quad	0x4009938476f2a5a4              # double 3.1970299999999998
	.quad	0x4003b526527a2058              # double 2.4634520000000002
	.quad	0x401430f88333fc87              # double 5.0478230000000002
	.quad	0x401c1f2ecf206424              # double 7.0304520000000004
	.quad	0x4012e5232d2bb235              # double 4.7237669999999996
	.quad	0x4022eba08398a655              # double 9.4602090000000007
	.quad	0x40060d3d859c8c93              # double 2.7564649999999999
	.quad	0x3f93d96638433d6c              # double 0.019383999999999998
	.quad	0x3fe42923e5b8561d              # double 0.63002199999999997
	.quad	0x400eaf7fcfc3f812              # double 3.835693
	.quad	0x40121ba775fb2ee0              # double 4.5270060000000001
	.quad	0x4018187379746024              # double 6.0238779999999998
	.quad	0x3ff34e7ab7564303              # double 1.2066600000000001
	.quad	0x40127f5126634118              # double 4.624333
	.quad	0x400ced4b2745bf27              # double 3.615866
	.quad	0x40091d7fd82773e2              # double 3.1394039999999999
	.quad	0x4013054de7ea5f85              # double 4.7551800000000002
	.quad	0x400db1a650614163              # double 3.7117429999999998
	.quad	0x4007af21f6cacd18              # double 2.9605139999999999
	.quad	0x400a42e9899bf594              # double 3.2826719999999998
	.quad	0x3fcf79a6b50b0f28              # double 0.24590000000000001
	.quad	0x402235bdf8f47304              # double 9.1049649999999999
	.quad	0x4022b84b7f5a5333              # double 9.3599510000000005
	.quad	0x401087991bc55864              # double 4.1324199999999998
	.quad	0x3fd9e2ac322291fb              # double 0.40445999999999999
	.quad	0x40125a311e85fd05              # double 4.5880780000000003
	.quad	0x40141ddc6195464e              # double 5.0291610000000002
	.quad	0x4012656473471f79              # double 4.5990159999999998
	.quad	0x401b3023e9ea1405              # double 6.7970119999999996
	.quad	0x4000bb456b441bb9              # double 2.0914410000000001
	.quad	0x401fa7fcb923a29c              # double 7.9140499999999996
	.quad	0x402312ee41919ac8              # double 9.5369740000000007
	.quad	0x401ba8cd20afa2f0              # double 6.9148449999999997
	.quad	0x401faf405f6ba062              # double 7.921144
	.quad	0x40035530ced4e4c9              # double 2.4165969999999999
	.quad	0x40129129888f861a              # double 4.6417599999999997
	.quad	0x3fe8d6451b93037d              # double 0.77615599999999996
	.quad	0x3f9107faa044ae86              # double 0.016632000000000001
	.quad	0x4017d184c271fff8              # double 5.9546080000000003
	.quad	0x402163fb15b573eb              # double 8.6952750000000005
	.quad	0x400056a6a012599f              # double 2.0423100000000001
	.quad	0x3ff638140dd3fe19              # double 1.3886909999999999
	.quad	0x4020ed2a411c2a02              # double 8.4632129999999997
	.quad	0x4021245f394b7b29              # double 8.5710390000000007
	.quad	0x40038ec52a411c2a              # double 2.444712
	.quad	0x401d544d013a92a3              # double 7.332325
	.quad	0x4014dc1df3300de5              # double 5.2149580000000002
	.quad	0x401f4b0856e696a2              # double 7.8232739999999996
	.quad	0x4013e109d0635a42              # double 4.9697639999999996
	.quad	0x3ff002d6a9c560c8              # double 1.0006930000000001
	.quad	0x40165c044284dfce              # double 5.5898599999999998
	.quad	0x402009a650614163              # double 8.0188469999999992
	.quad	0x3ff5b985271bcdbc              # double 1.357793
	.quad	0x40147762d83c6c98              # double 5.1165880000000001
	.quad	0x40037ccfaeff5c6c              # double 2.435943
	.quad	0x4023244ed6fda837              # double 9.5709140000000001
	.quad	0x4012c1a543f1c758              # double 4.6891069999999999
	.quad	0x402118fe8ab4fa48              # double 8.5488169999999997
	.quad	0x40015913e81450f0              # double 2.1684950000000001
	.quad	0x400eeb5350092ccf              # double 3.8649049999999998
	.quad	0x3ff8ccb7d41743e9              # double 1.5499799999999999
	.quad	0x4012a03eea209aaa              # double 4.6564899999999998
	.quad	0x3ffb83621fafc8b0              # double 1.719576
	.quad	0x40168f86e3b46fdf              # double 5.6401630000000003
	.quad	0x4007714e3bcd35a8              # double 2.9303249999999998
	.quad	0x401dd4794ea07703              # double 7.4574939999999996
	.quad	0x4017d8e8ea39c51e              # double 5.9618260000000003
	.quad	0x402228769ec2ce46              # double 9.0790299999999995
	.quad	0x401eec5154866a12              # double 7.7307790000000001
	.quad	0x4018b6299524bfd3              # double 6.1778930000000001
	.quad	0x4011394d0dcfcc5c              # double 4.3059580000000004
	.quad	0x401e264ba94bbe44              # double 7.5373979999999996
	.quad	0x401ee15df6555c53              # double 7.720085
	.quad	0x40093a8c586876e2              # double 3.1535880000000001
	.quad	0x4015061cffeb074a              # double 5.2559699999999996
	.quad	0x401308323358f2e0              # double 4.7580039999999997
	.quad	0x4006135a858793de              # double 2.7594500000000002
	.quad	0x401aaf7b5aea3162              # double 6.6713690000000003
	.quad	0x40070e78183f91e6              # double 2.8820649999999999
	.quad	0x4013bab6d00b45ae              # double 4.9323379999999997
	.quad	0x3fb2b1b36bd2b6f2              # double 0.073024000000000006
	.quad	0x4010ba9d627bf61b              # double 4.1822410000000003
	.quad	0x401c588f861a60d4              # double 7.0864849999999997
	.quad	0x401b8d82ba5a0382              # double 6.8881940000000004
	.quad	0x4009416df3f96180              # double 3.1569479999999999
	.quad	0x4006c2dcf4623d0c              # double 2.845148
	.quad	0x401e16c7eae5bc88              # double 7.5222470000000001
	.quad	0x401c6b71fbc5de9c              # double 7.104927
	.quad	0x3f92862f5989df11              # double 0.018089999999999998
	.quad	0x40096e28ed5f138c              # double 3.1787890000000001
	.quad	0x3fdf13a0c6b484d7              # double 0.48557299999999998
	.quad	0x3fe61733226c3b92              # double 0.69033199999999995
	.quad	0x3fee372a38b8ae32              # double 0.94423400000000002
	.quad	0x4011da1f8e3ac0c6              # double 4.4630109999999998
	.quad	0x3fdff50a02b84125              # double 0.49933100000000002
	.quad	0x4012740d90e23af3              # double 4.6133329999999999
	.quad	0x401e777ccc037931              # double 7.6166869999999997
	.quad	0x400dfba98eda22f7              # double 3.7478820000000002
	.quad	0x4023b98266772d5e              # double 9.862323
	.quad	0x3feec690de093533              # double 0.96173900000000001
	.quad	0x3fe64e4649906cca              # double 0.69705499999999998
	.quad	0x40164f901083dbc2              # double 5.5776979999999998
	.quad	0x4007e19220ff5409              # double 2.9851420000000002
	.quad	0x4015312018a43bb4              # double 5.297974
	.quad	0x3fe80e086bdf4c2b              # double 0.75171299999999996
	.quad	0x3ffce7e414e7ee91              # double 1.8066139999999999
	.quad	0x402010e453d20f2c              # double 8.0329920000000001
	.quad	0x4016350763a19008              # double 5.5517859999999999
	.quad	0x3ffb2cc814d7279a              # double 1.6984330000000001
	.quad	0x400c0f88b9778573              # double 3.5075850000000002
	.quad	0x3ff43abc947064ed              # double 1.26434
	.quad	0x40160add15f02c4d              # double 5.5106089999999996
	.quad	0x402194b966be7afa              # double 8.7904769999999992
	.quad	0x400e396744b2b778              # double 3.7780290000000001
	.quad	0x40168caa7589efd8              # double 5.6373689999999996
	.quad	0x401df55193708aad              # double 7.4895690000000003
	.quad	0x4007bf1172ef0ae5              # double 2.9682949999999999
	.quad	0x4020021cac083127              # double 8.0041250000000002
	.quad	0x3ff94a1272c94b38              # double 1.580584
	.quad	0x40177c408d8ec95c              # double 5.87134
	.quad	0x40150b6a1e81cb47              # double 5.2611470000000002
	.quad	0x400bfef6b5d462c3              # double 3.4994939999999999
	.quad	0x400af90c0ad03d9b              # double 3.3716050000000002
	.quad	0x40128b7b6bb12902              # double 4.6362129999999997
	.quad	0x401f8015c209246c              # double 7.8750830000000001
	.quad	0x4013aa159817b95a              # double 4.9160979999999999
	.quad	0x4021d7fdc5931ca8              # double 8.9218580000000003
	.quad	0x4019e93469941850              # double 6.4777389999999997
	.quad	0x400d863a5c1c6089              # double 3.6905410000000001
	.quad	0x4011ceab7995ee13              # double 4.4518259999999996
	.quad	0x401c462f9ca5bd94              # double 7.0685409999999997
	.quad	0x4021a1ed5ae1cde6              # double 8.8162640000000003
	.quad	0x401a50d62bf11f92              # double 6.5789419999999996
	.quad	0x4021217d06bbdbe4              # double 8.5654070000000004
	.quad	0x40231569b17481b2              # double 9.5418219999999998
	.quad	0x4002d65fd8adab9f              # double 2.3546749999999999
	.quad	0x402376b1a2a4db16              # double 9.7318239999999996
	.quad	0x401a0646f1561911              # double 6.5061299999999997
	.quad	0x40188925fe974a34              # double 6.133934
	.quad	0x40055045fe111277              # double 2.664196
	.quad	0x400654b945308bb9              # double 2.791369
	.quad	0x4023700c9539b888              # double 9.7188459999999992
	.quad	0x401c0c56d5cfaace              # double 7.0120500000000003
	.quad	0x3fdb50b524399b2c              # double 0.42680099999999999
	.quad	0x3fdd8b08dd1e53a8              # double 0.46161099999999999
	.quad	0x3fe3013a92a30553              # double 0.59389999999999998
	.quad	0x401045275ee99a63              # double 4.0675330000000001
	.quad	0x400420c9d9d3458d              # double 2.5160100000000001
	.quad	0x40101dd22856605f              # double 4.0291220000000001
	.quad	0x4012485f06f69446              # double 4.5706749999999996
	.quad	0x3fd6a98aa8650e78              # double 0.35409800000000002
	.quad	0x4021d289331a08c0              # double 8.9112030000000004
	.quad	0x4022f1fadafd1138              # double 9.4726169999999996
	.quad	0x40210ff562174c4d              # double 8.5311690000000002
	.quad	0x40121b4a2339c0ec              # double 4.5266500000000001
	.quad	0x40098055757d5a9f              # double 3.1876630000000001
	.quad	0x401fff2c3009b307              # double 7.9991919999999998
	.quad	0x4014d6d7e889c1b5              # double 5.2098079999999998
	.quad	0x3f9ef2c7325918a0              # double 0.030223
	.quad	0x3fc59806f262888b              # double 0.16870199999999999
	.quad	0x4022e9b3aeee9574              # double 9.4564489999999992
	.quad	0x401cd8d5410f94c8              # double 7.2117509999999996
	.quad	0x401af2074ea8da7f              # double 6.7363559999999998
	.quad	0x400836b11c6d1e11              # double 3.0267050000000002
	.quad	0x40168626f60e0eb6              # double 5.6310079999999996
	.quad	0x4020531f8a0902de              # double 8.16235
	.quad	0x40207b634dad31fd              # double 8.2409920000000003
	.quad	0x4020c4a276b7ed42              # double 8.3840520000000005
	.quad	0x4021bb0142f61ed6              # double 8.8652440000000006
	.quad	0x3ff7de2478854cdb              # double 1.4917339999999999
	.quad	0x4002fae81882adc5              # double 2.3725130000000001
	.quad	0x400fcbbc2b94d940              # double 3.9744799999999998
	.quad	0x3fff4dbcec84f8f9              # double 1.9564790000000001
	.quad	0x401955f676ea4229              # double 6.3339480000000004
	.quad	0x40165048e043a216              # double 5.5784029999999998
	.quad	0x3fde860999dcb578              # double 0.47693099999999999
	.quad	0x401ae23571d1d474              # double 6.7209070000000004
	.quad	0x40147941c8216c61              # double 5.1184149999999997
	.quad	0x3ff71717df19d66b              # double 1.443138
	.quad	0x401a625a250f8402              # double 6.5960470000000004
	.quad	0x401f8cde5d18090b              # double 7.8875669999999997
	.quad	0x402167c9de050375              # double 8.702712
	.quad	0x401c812fd32c625f              # double 7.1261590000000004
	.quad	0x4007f6de33269df9              # double 2.9955409999999998
	.quad	0x3ff97b16c1e364bf              # double 1.592551
	.quad	0x402340383ad9f0a2              # double 9.6254290000000005
	.quad	0x3fcbf2a172abef07              # double 0.21834200000000001
	.quad	0x401f9d05f2884838              # double 7.9033429999999995
	.quad	0x40122c73abc94706              # double 4.5434099999999997
	.quad	0x3fee7d36f7e3d1cc              # double 0.95278499999999999
	.quad	0x400af87ad080b674              # double 3.3713280000000001
	.quad	0x4015e7a67a52ac75              # double 5.4762209999999998
	.quad	0x4014233e35c5b4ab              # double 5.0344170000000004
	.quad	0x400076295208e150              # double 2.057696
	.quad	0x401e64c5974e65bf              # double 7.5984100000000003
	.quad	0x4017b765ba6efc37              # double 5.9290989999999999
	.quad	0x401435ecc3e3193f              # double 5.0526609999999996
	.quad	0x401c468be2f7b17d              # double 7.0688930000000001
	.quad	0x3ffdb27ed84d338f              # double 1.8560779999999999
	.quad	0x3ffc407fed20296b              # double 1.765747
	.quad	0x401d65ad106ee30d              # double 7.3492930000000003
	.quad	0x4023f4a83b1d0c80              # double 9.9778459999999995
	.quad	0x3ff640a4a05dd8f9              # double 1.390782
	.quad	0x402273ce8533b107              # double 9.2261849999999992
	.quad	0x4022d9908e581cf8              # double 9.4249310000000008
	.quad	0x40109ec99f1ae2da              # double 4.1550659999999997
	.quad	0x4016df6124074645              # double 5.7181439999999997
	.quad	0x3ff19baa1511dffc              # double 1.1005039999999999
	.quad	0x3ffdfa4c61d8622c              # double 1.8736079999999999
	.quad	0x3fe8752da98676a7              # double 0.76430399999999998
	.quad	0x4020ec5a8155d5f5              # double 8.4616279999999993
	.quad	0x3fe1acd5b6805a2d              # double 0.55234799999999995
	.quad	0x401c09c66d373b00              # double 7.0095460000000003
	.quad	0x4016e37b07075b3e              # double 5.7221489999999999
	.quad	0x401a8338f7985272              # double 6.6281470000000002
	.quad	0x40150bc7f77af640              # double 5.2615049999999997
	.quad	0x4021c421e1d2178f              # double 8.8830709999999993
	.quad	0x402372e4b0186120              # double 9.7244010000000003
	.quad	0x4011be657b84db9c              # double 4.4359339999999996
	.quad	0x400c1cb70ac3a861              # double 3.5140210000000001
	.quad	0x401414e4430b178b              # double 5.0204019999999998
	.quad	0x4022180064a9cdc4              # double 9.0468779999999995
	.quad	0x400e1bddfc9ff92f              # double 3.7636069999999999
	.quad	0x4009ae6b8305d95e              # double 3.2101660000000001
	.quad	0x40199a16616b54e3              # double 6.4004760000000003
	.quad	0x402233e07a28bb0a              # double 9.1013219999999997
	.quad	0x40234af5771001d6              # double 9.6464040000000004
	.quad	0x4020d192428d434a              # double 8.409319
	.quad	0x401198c08b75ea68              # double 4.3991720000000001
	.quad	0x401acb135979181a              # double 6.6983160000000002
	.quad	0x402360cc575c0768              # double 9.6890590000000003
	.quad	0x3fc7cbb3c81908e6              # double 0.18590400000000001
	.quad	0x401c38c0053e2d62              # double 7.0554199999999998
	.quad	0x401b76e5cd4ed2cc              # double 6.8661110000000001
	.quad	0x40192955f78359bc              # double 6.2903669999999998
	.quad	0x401f8868fd199bb2              # double 7.8832129999999996
	.quad	0x401b86f21f6cacd2              # double 6.8817830000000004
	.quad	0x4004b4330d73860a              # double 2.5879880000000002
	.quad	0x4022ec7192ea52f0              # double 9.4618040000000008
	.quad	0x3fe3bb3c81908e58              # double 0.61660599999999999
	.quad	0x4016012ba16e7a31              # double 5.5011429999999999
	.quad	0x4014c06317268d33              # double 5.1878780000000004
	.quad	0x401c055b89939219              # double 7.0052320000000003
	.quad	0x400c94b2fa93af75              # double 3.5726070000000001
	.quad	0x40211708893b7d85              # double 8.5449870000000008
	.quad	0x40097b7e0ac7da1f              # double 3.1852990000000001
	.quad	0x401b483c297bfa4c              # double 6.8205419999999997
	.quad	0x3ff09d80e496edee              # double 1.0384530000000001
	.quad	0x401f4d2ae8e1d649              # double 7.8253589999999997
	.quad	0x3ff8527d45a5fc7e              # double 1.5201389999999999
	.quad	0x400e950dae3e6c4c              # double 3.8227799999999998
	.quad	0x3ff373bd9cae2110              # double 1.215757
	.quad	0x4002322749f0e4da              # double 2.274489
	.quad	0x3fe61cac083126e9              # double 0.69099999999999995
	.quad	0x3ff1a51a005c4652              # double 1.102808
	.quad	0x400ad1fcd24e160e              # double 3.3525330000000002
	.quad	0x402366b56fb8f57f              # double 9.7006029999999991
	.quad	0x401cf769a91105e2              # double 7.2416140000000002
	.quad	0x4006c2435696e58a              # double 2.8448549999999999
	.quad	0x40162b74ddf86e3b              # double 5.5424379999999998
	.quad	0x4014cacabc515486              # double 5.1980389999999996
	.quad	0x401467a072d1aeb4              # double 5.1011980000000001
	.quad	0x40109cba30121683              # double 4.153054
	.quad	0x40156ccc89b0ee4a              # double 5.356249
	.quad	0x401c2339c0ebedfa              # double 7.0343999999999998
	.quad	0x40169652bd3c3611              # double 5.6467999999999998
	.quad	0x400ab62b6ae7d567              # double 3.3389500000000001
	.quad	0x4014fa42f1ed17c6              # double 5.2443960000000001
	.quad	0x40083a775fb2edfe              # double 3.0285479999999998
	.quad	0x4022b39da16616b5              # double 9.3508119999999995
	.quad	0x40020959e6256367              # double 2.2545660000000001
	.quad	0x3fd3a2834d26fa40              # double 0.30679400000000001
	.quad	0x401874766c6de764              # double 6.1137329999999999
	.quad	0x40235ebb341e14be              # double 9.685022
	.quad	0x40227b1a4bdba0a5              # double 9.2404349999999997
	.quad	0x3ff22f2c7325918a              # double 1.136517
	.quad	0x4018e1550ca1cef2              # double 6.2200509999999998
	.quad	0x3feaa3d70a3d70a4              # double 0.83250000000000001
	.quad	0x4015d864020817fc              # double 5.4613189999999996
	.quad	0x402292ead9274e23              # double 9.2869480000000006
	.quad	0x4020749c90c4dec2              # double 8.2277570000000004
	.quad	0x4011a24180d3cff6              # double 4.4084529999999997
	.quad	0x401d518c9fb6134d              # double 7.3296380000000001
	.quad	0x401c21c3265add9c              # double 7.0329709999999999
	.quad	0x4021bf8a0902de01              # double 8.8741000000000003
	.quad	0x4007a09917939a7c              # double 2.953417
	.quad	0x40157f7985271bce              # double 5.3744870000000002
	.quad	0x402054182ecaeea6              # double 8.1642469999999996
	.quad	0x40134ac5c13fd0d0              # double 4.8230199999999996
	.quad	0x400725fd8adab9f5              # double 2.8935499999999998
	.quad	0x400a8a808c8259e2              # double 3.317628
	.quad	0x3ff022f7b17ce52e              # double 1.008537
	.quad	0x401797a786c22681              # double 5.8981000000000003
	.quad	0x3ffb1bfceb78897f              # double 1.6943330000000001
	.quad	0x4007cdb0dd82fd76              # double 2.9754350000000001
	.quad	0x4020bbd2fa0d77b8              # double 8.3668440000000004
	.quad	0x40144b08dd1e53a8              # double 5.0732759999999999
	.quad	0x400bc51a005c4652              # double 3.471241
	.quad	0x401bc2a5a469d734              # double 6.9400849999999998
	.quad	0x4017bb445ed4a1ad              # double 5.9328779999999997
	.quad	0x40217c70435efa61              # double 8.7430439999999994
	.quad	0x400c02a5614df8b1              # double 3.5012919999999998
	.quad	0x40037e093532e7b4              # double 2.4365410000000001
	.quad	0x4020c121682f9442              # double 8.3772079999999995
	.quad	0x4021a1bf162ae4b0              # double 8.8159109999999998
	.quad	0x4005f6006d0d4995              # double 2.7451180000000002
	.quad	0x402229fd9ba1b196              # double 9.0820129999999999
	.quad	0x4005dd6d7e889c1b              # double 2.7331189999999999
	.quad	0x401324a276b7ed42              # double 4.7857760000000003
	.quad	0x3fb89d6adf71eaff              # double 0.096152000000000001
	.quad	0x400feae9ee45c359              # double 3.9897040000000001
	.quad	0x401c01a261bf37b9              # double 7.0015960000000002
	.quad	0x400de49ba5e353f8              # double 3.7366250000000001
	.quad	0x3ffe9fbe76c8b439              # double 1.9139999999999999
	.quad	0x401f5a9f383f0baf              # double 7.8384980000000004
	.quad	0x4023c2c322291fb4              # double 9.880395
	.quad	0x4019f7fdc5931ca8              # double 6.4921790000000001
	.quad	0x400d8b9a176ddacf              # double 3.693165
	.quad	0x400dbf23465625a7              # double 3.7183290000000002
	.quad	0x3ff80bd556084a51              # double 1.5028889999999999
	.quad	0x4022c282c6ef3d3a              # double 9.3799039999999998
	.quad	0x4023f788333fc86d              # double 9.9834610000000001
	.quad	0x4021547c5260f5e4              # double 8.6650109999999997
	.quad	0x4023b74cf4a558ea              # double 9.8580089999999991
	.quad	0x3ff008e4755ffe6d              # double 1.0021709999999999
	.quad	0x4012d1a11233df2b              # double 4.7047160000000003
	.quad	0x3ff9d32617c1bda5              # double 1.61405
	.quad	0x3ff6ea8b8f14db59              # double 1.4322619999999999
	.quad	0x4021755454152b0a              # double 8.7291589999999992
	.quad	0x3fccd530489d27c4              # double 0.22525600000000001
	.quad	0x3fc5a38fbca1059f              # double 0.16905400000000001
	.quad	0x40214ba908a265f1              # double 8.6477740000000001
	.quad	0x40234e82f944241c              # double 9.6533429999999995
	.quad	0x40211ceaf251c194              # double 8.5564800000000005
	.quad	0x4014cbe5109070fc              # double 5.1991160000000001
	.quad	0x401ff2374794ea07              # double 7.9865389999999996
	.quad	0x401f86ef8055fbb5              # double 7.8817729999999999
	.quad	0x400295cf2495e17e              # double 2.3231489999999999
	.quad	0x3ff0f39085f4a127              # double 1.059464
	.quad	0x40159533f42352eb              # double 5.3957059999999997
	.quad	0x3ff75eacc92146a2              # double 1.4606140000000001
	.quad	0x4015082e87d2c7b9              # double 5.2579900000000004
	.quad	0x40121ff92f2b66b6              # double 4.5312239999999999
	.quad	0x4020431e9f277814              # double 8.1310929999999999
	.quad	0x4014068a0d349be9              # double 5.006386
	.quad	0x4015695c853c1483              # double 5.3528919999999998
	.quad	0x401fac1acde19fc3              # double 7.9180710000000003
	.quad	0x4020d27cbf6e3f79              # double 8.4111080000000005
	.quad	0x400715515054ac2a              # double 2.8854090000000001
	.quad	0x3fffcfe69270b06c              # double 1.9882569999999999
	.quad	0x4020caa2e3c536d6              # double 8.3957739999999994
	.quad	0x4021f3e89a88ace2              # double 8.9763839999999995
	.quad	0x4005763c31df761d              # double 2.6827320000000001
	.quad	0x3ff9402e2328f9f4              # double 1.5781689999999999
	.quad	0x3fe5c3d89ce4a7b5              # double 0.68015700000000001
	.quad	0x4014f435ac8a3726              # double 5.238486
	.quad	0x3fe6aff8ec0f8833              # double 0.70898099999999997
	.quad	0x401429c304ccee5b              # double 5.0407830000000002
	.quad	0x4017e7ded6ba8c58              # double 5.9764359999999996
	.quad	0x4009225204af9229              # double 3.1417579999999998
	.quad	0x4015449a9973d9ec              # double 5.3169959999999996
	.quad	0x40089886594af4f1              # double 3.0744750000000001
	.quad	0x4012449be8ff327b              # double 4.5670010000000003
	.quad	0x4002a13f4a98aa86              # double 2.3287339999999999
	.quad	0x4021a8f9096bb98c              # double 8.8300249999999991
	.quad	0x4020e5d249e44fa0              # double 8.4488699999999994
	.quad	0x3ff586e8f29d40ee              # double 1.345437
	.quad	0x3ff9936d655e28aa              # double 1.5984929999999999
	.quad	0x4020c392c061847f              # double 8.3819789999999994
	.quad	0x4016da9478c868ba              # double 5.713457
	.quad	0x401126e5471715c6              # double 4.2879839999999998
	.quad	0x401c91d606317269              # double 7.1424180000000002
	.quad	0x4013818548a9bcfd              # double 4.8764849999999997
	.quad	0x40161656eefa1e3f              # double 5.5218160000000003
	.quad	0x4021a75f0b28522f              # double 8.8268970000000007
	.quad	0x401dfd59d55e6bc6              # double 7.4974129999999999
	.quad	0x401f51aeb3dd11be              # double 7.8297679999999996
	.quad	0x40144d6bebe1650a              # double 5.0756069999999998
	.quad	0x401afc8a7a41e57e              # double 6.7466220000000003
	.quad	0x4007a8b5cbff4773              # double 2.9573779999999998
	.quad	0x401cdaee2003ab86              # double 7.2137989999999999
	.quad	0x40217877ab324852              # double 8.7352880000000006
	.quad	0x4009946bacf74470              # double 3.1974710000000002
	.quad	0x4001fd8383ad9f0a              # double 2.248786
	.quad	0x40185890d5a5b963              # double 6.0864900000000004
	.quad	0x4004b3f077ccc038              # double 2.5878610000000002
	.quad	0x40219d54b8bef8cf              # double 8.8072870000000005
	.quad	0x3ffe7c05d52c16df              # double 1.9052789999999999
	.quad	0x4023ce55c0fcb4f2              # double 9.9029980000000002
	.quad	0x3f9f75104d551d69              # double 0.030720000000000001
	.quad	0x3fe1752da98676a7              # double 0.54555399999999998
	.quad	0x4022013a2df9378f              # double 9.0023970000000002
	.quad	0x40031744f5d35654              # double 2.3863620000000001
	.quad	0x4001c5fd8adab9f5              # double 2.2216749999999998
	.quad	0x3fe95bd72bcb5fe5              # double 0.79246099999999997
	.quad	0x40079daa4fca42af              # double 2.9519850000000001
	.quad	0x401fab20fb224aae              # double 7.9171180000000003
	.quad	0x3ffeae78183f91e6              # double 1.9175949999999999
	.quad	0x4011a0d9945b6c37              # double 4.4070799999999997
	.quad	0x4012470110a137f4              # double 4.5693400000000004
	.quad	0x40164752da98676a              # double 5.5696519999999996
	.quad	0x401c734699418506              # double 7.1125740000000004
	.quad	0x4001ad2ed783dff4              # double 2.209562
	.quad	0x400683065f9591cd              # double 2.813977
	.quad	0x4018180bed740c41              # double 6.0234829999999997
	.quad	0x4019714df8b15726              # double 6.3606490000000004
	.quad	0x3fd5424e59296702              # double 0.33217200000000002
	.quad	0x402291b52007dd44              # double 9.2845849999999998
	.quad	0x3ffc352007dd4413              # double 1.7629699999999999
	.quad	0x4020883bc4d22c88              # double 8.2660809999999998
	.quad	0x40202fa69be09bb7              # double 8.0930680000000006
	.quad	0x40129a87e38eb032              # double 4.6509090000000004
	.quad	0x401ed8cf398e9707              # double 7.7117279999999999
	.quad	0x402010c67168f8e8              # double 8.0327640000000002
	.quad	0x4011c3bf2f555821              # double 4.4411589999999999
	.quad	0x4007bc08fa7a8501              # double 2.9668139999999998
	.quad	0x3ffe4964628027d9              # double 1.8929180000000001
	.quad	0x4007d320d9945b6c              # double 2.9780899999999999
	.quad	0x3fe3e7d1351159c5              # double 0.62204800000000005
	.quad	0x3ffcfe6a337a80d0              # double 1.8121130000000001
	.quad	0x4001cf8487b99d45              # double 2.2263269999999999
	.quad	0x4023ff47b677f6b2              # double 9.9985940000000006
	.quad	0x40206f6295208e15              # double 8.217549
	.quad	0x4021d129ed3953df              # double 8.9085230000000006
	.quad	0x40210f28848387df              # double 8.5296059999999994
	.quad	0x4010337ef5a964e9              # double 4.0502890000000003
	.quad	0x4020587a4a48f96e              # double 8.1728079999999999
	.quad	0x4014f4d013a92a30              # double 5.2390749999999997
	.quad	0x400efdb5525cc426              # double 3.8738809999999999
	.quad	0x401041f6cacd184c              # double 4.0644179999999999
	.quad	0x3feea8da7f3cf701              # double 0.95811199999999996
	.quad	0x3fe9c562e09fe868              # double 0.80534499999999998
	.quad	0x3ff8d08d4bad7d7c              # double 1.550916
	.quad	0x402022f1cb89d6ae              # double 8.0682510000000001
	.quad	0x40141387160956c1              # double 5.0190700000000001
	.quad	0x4022c6a39c51dabe              # double 9.3879669999999997
	.quad	0x400b94ec204f2ae0              # double 3.4477159999999998
	.quad	0x4020d4f0307f23cd              # double 8.4158950000000008
	.quad	0x40131c03bc4d22c9              # double 4.7773580000000004
	.quad	0x4020badafd113837              # double 8.3649520000000006
	.quad	0x4010c025bfad2999              # double 4.1876439999999997
	.quad	0x401b2bc4d22c881e              # double 6.7927429999999998
	.quad	0x401195f80991793a              # double 4.3964540000000003
	.quad	0x3feee13b18dac259              # double 0.96499400000000001
	.quad	0x401761ff7164c72a              # double 5.845701
	.quad	0x4022759ea57214f0              # double 9.2297259999999994
	.quad	0x4023de088d6d3b6d              # double 9.9336590000000004
	.quad	0x4015566fd651b0cd              # double 5.3344110000000002
	.quad	0x401edd0d0678c005              # double 7.7158699999999997
	.quad	0x4022c06f8ad2567a              # double 9.3758510000000008
	.quad	0x4017de34fc610f0f              # double 5.9669990000000004
	.quad	0x3fbc65b63d3e4ef0              # double 0.110927
	.quad	0x40127975afaf8594              # double 4.6186129999999999
	.quad	0x3ff3b15b573eab36              # double 1.2307999999999999
	.quad	0x401c10df9bdc69f9              # double 7.0164780000000002
	.quad	0x401c815011904b3c              # double 7.1262819999999998
	.quad	0x4018a78140dd3fe2              # double 6.1635790000000004
	.quad	0x3ffc9935fc3b4f61              # double 1.7874049999999999
	.quad	0x3ff6a30121682f94              # double 1.4147959999999999
	.quad	0x3fe95e8709741d08              # double 0.79278899999999997
	.quad	0x400643ffef39085f              # double 2.7832029999999999
	.quad	0x401ea059a73b42cc              # double 7.6565919999999998
	.quad	0x400863b81b64e054              # double 3.0486909999999998
	.quad	0x4022c1b7e0ac7da2              # double 9.3783560000000001
	.quad	0x401caf5dfeb8d823              # double 7.1712569999999998
	.quad	0x401e31fe21d96e9c              # double 7.5488210000000002
	.quad	0x3fd1c9539b888723              # double 0.27791300000000002
	.quad	0x401569e8815e3971              # double 5.3534259999999998
	.quad	0x3fc4e429e0a41a26              # double 0.163213
	.quad	0x401772f01754b05b              # double 5.8622439999999996
	.quad	0x40228a5aab474107              # double 9.2702229999999997
	.quad	0x3fee7f21b3aeee95              # double 0.95301899999999995
	.quad	0x401bd4e7ab756430              # double 6.9579149999999998
	.quad	0x400adc5260f5e41d              # double 3.3575789999999999
	.quad	0x40210784ec636b09              # double 8.5146859999999993
	.quad	0x400d20f98fa37692              # double 3.6411009999999999
	.quad	0x3fdf81d3aa369fcf              # double 0.49229899999999999
	.quad	0x40100eba27ae9ab3              # double 4.0143820000000003
	.quad	0x400a49118c197e56              # double 3.2856779999999999
	.quad	0x3ff628ef77f27fe5              # double 1.3849940000000001
	.quad	0x40229cf440af1cb9              # double 9.3065510000000007
	.quad	0x3feb0ea39c51dabe              # double 0.84553699999999998
	.quad	0x4020606c00da1a93              # double 8.1883239999999997
	.quad	0x40200d5e4a383276              # double 8.0261099999999992
	.quad	0x401b26f9fcb0c027              # double 6.7880630000000002
	.quad	0x400b4a2d2fe3f35a              # double 3.411219
	.quad	0x40175f69878316a0              # double 5.8431759999999997
	.quad	0x4019be1975f2cb64              # double 6.4356439999999999
	.quad	0x400074d0dcfcc5b9              # double 2.0570390000000001
	.quad	0x4020d8fba8826aa9              # double 8.4237950000000001
	.quad	0x4016993682730c67              # double 5.6496219999999999
	.quad	0x401a376f6d762520              # double 6.5541359999999997
	.quad	0x40203557ff9b5632              # double 8.1041869999999996
	.quad	0x40201447a17f4129              # double 8.0396090000000004
	.quad	0x401edd27c3936827              # double 7.7159719999999998
	.quad	0x3fd96394face67d7              # double 0.39670299999999997
	.quad	0x4010376427c7c526              # double 4.0540929999999999
	.quad	0x40138651f3e89a89              # double 4.8811720000000003
	.quad	0x3fe538e086bdf4c3              # double 0.66319300000000003
	.quad	0x401395c24c404a73              # double 4.8962490000000001
	.quad	0x400f4fbb0e5e6794              # double 3.9139309999999998
	.quad	0x4012f1aeb3dd11be              # double 4.7360179999999996
	.quad	0x40035b1209edbf8c              # double 2.4194680000000002
	.quad	0x400b9b8e4b87bdcf              # double 3.450955
	.quad	0x401b097e996312f5              # double 6.7592720000000002
	.quad	0x401523458cd20afa              # double 5.2844449999999998
	.quad	0x401ec09fa54c5543              # double 7.6881089999999998
	.quad	0x40208539756c93a7              # double 8.2602039999999999
	.quad	0x400796ededaec4a4              # double 2.948696
	.quad	0x401f1e9424e59296              # double 7.7798619999999996
	.quad	0x400739af9ebe9c88              # double 2.9031669999999998
	.quad	0x3ff413e920c069e8              # double 1.254861
	.quad	0x4006a5af6c69b5a6              # double 2.8309009999999999
	.quad	0x3fe27add15f02c4d              # double 0.57749799999999996
	.quad	0x400256bdb1a6d699              # double 2.292354
	.quad	0x40091a8f7db6e504              # double 3.137969
	.quad	0x401b62923e5b8562              # double 6.8462610000000002
	.quad	0x4008e2c0a4a05dd9              # double 3.110719
	.quad	0x400a51593e5fb720              # double 3.2897210000000001
	.quad	0x401395b35b0bbf51              # double 4.8961920000000001
	.quad	0x400a3f36ac647779              # double 3.2808660000000001
	.quad	0x3ffa810624dd2f1b              # double 1.6565000000000001
	.quad	0x40204687d2c7b891              # double 8.1377550000000003
	.quad	0x40182925fe974a34              # double 6.040184
	.quad	0x401d84f93bc0a06f              # double 7.3798570000000003
	.quad	0x3ffa19e518f3eccc              # double 1.6313219999999999
	.quad	0x4018476d5497310a              # double 6.0697530000000004
	.quad	0x40072fc69728a611              # double 2.8983279999999998
	.quad	0x3fa638a7e73a365d              # double 0.043401000000000002
	.quad	0x400286e32e3821af              # double 2.3158629999999998
	.quad	0x401f40f40e5a35d6              # double 7.8134309999999996
	.quad	0x3fbd65c2d2780779              # double 0.11483400000000001
	.quad	0x4010161b2a27f1b7              # double 4.0215880000000004
	.quad	0x4022fe91ea78af3e              # double 9.4972069999999995
	.quad	0x402246f75d9a0f0a              # double 9.1386059999999993
	.quad	0x4020aafc8b0079a3              # double 8.3339580000000009
	.quad	0x4017658969a0ad8a              # double 5.8491569999999999
	.quad	0x3fffc01f75104d55              # double 1.984405
	.quad	0x40178cbc8c0ce91d              # double 5.8874380000000004
	.quad	0x3fe9239a38fbca10              # double 0.78559599999999996
	.quad	0x40220f8897e99631              # double 9.0303389999999997
	.quad	0x4015e1e4b44a1f08              # double 5.470599
	.quad	0x401599e94ab1d4fa              # double 5.4003040000000002
	.quad	0x3ff20cea28fe260b              # double 1.128153
	.quad	0x401aa17ebaf10236              # double 6.6577099999999998
	.quad	0x401c4b2314013ec4              # double 7.0733759999999997
	.quad	0x3ff5bd8adab9f55a              # double 1.3587750000000001
	.quad	0x4012384ad794a6ec              # double 4.5549730000000004
	.quad	0x40167384ba0e8427              # double 5.6128109999999998
	.quad	0x3ffee99fa11a975b              # double 1.932037
	.quad	0x3fb79cd8127b2cc7              # double 0.092237
	.quad	0x3ff3baf31b152f3c              # double 1.233142
	.quad	0x401d15072085b185              # double 7.2705349999999997
	.quad	0x401c7837b4a2339c              # double 7.1173999999999999
	.quad	0x4018ab0e5e679464              # double 6.1670470000000002
	.quad	0x4023e73365881a15              # double 9.9515639999999994
	.quad	0x40083a4c61d8622c              # double 3.0284659999999999
	.quad	0x401f13c81908e582              # double 7.7693180000000002
	.quad	0x402056f587d6f976              # double 8.1698419999999992
	.quad	0x4002c64e48626f61              # double 2.3468290000000001
	.quad	0x401aed955714b9cb              # double 6.7320149999999996
	.quad	0x3ffb99231c64ba95              # double 1.7248870000000001
	.quad	0x4020ec46d82ba5a0              # double 8.4614779999999996
	.quad	0x3fcf01322f2734f8              # double 0.24222399999999999
	.quad	0x4020a176ddaceee1              # double 8.3153600000000001
	.quad	0x400c8412cf0f9d2c              # double 3.564489
	.quad	0x3fc0b11409a24031              # double 0.13040399999999999
	.quad	0x3ffb4475e6362a5e              # double 1.7042139999999999
	.quad	0x401b88ec95bff045              # double 6.8837149999999996
	.quad	0x400393d96638433d              # double 2.4471919999999998
	.quad	0x3fbd0c2c5e2cdc01              # double 0.113467
	.quad	0x40149a98244e93e2              # double 5.1509710000000002
	.quad	0x4017004039abf338              # double 5.7502449999999996
	.quad	0x4013ba82e87d2c7c              # double 4.9321400000000004
	.quad	0x4017c2a172abef07              # double 5.9400690000000003
	.quad	0x400f59513f8db489              # double 3.918612
	.quad	0x4010dafc04c8bc9d              # double 4.2138520000000002
	.quad	0x40204ac9d16fc9bc              # double 8.1460709999999991
	.quad	0x401e395cc857f306              # double 7.5560179999999999
	.quad	0x4013ea1db877ab32              # double 4.9786289999999997
	.quad	0x402232ac53b0813d              # double 9.0989710000000006
	.quad	0x4017e0168b5cbff4              # double 5.9688359999999996
	.quad	0x401130ee49f51698              # double 4.297784
	.quad	0x400e3e175d13d74d              # double 3.7803179999999998
	.quad	0x40230f4256bca537              # double 9.5298029999999993
	.quad	0x3ffdd72bcb5fe543              # double 1.865032
	.quad	0x4020fa617c1bda51              # double 8.4890249999999998
	.quad	0x3ff0b3edd8b60f1b              # double 1.043928
	.quad	0x4015b2a305532618              # double 5.4244500000000002
	.quad	0x400d2c8605681ecd              # double 3.6467399999999999
	.quad	0x40073efd86a8fc0d              # double 2.9057569999999999
	.quad	0x401149fbe76c8b44              # double 4.3222500000000004
	.quad	0x3fc63f9a49c2c1b1              # double 0.173816
	.quad	0x3ff60b9dc2f405f7              # double 1.3778360000000001
	.quad	0x4011d1c219eb6391              # double 4.4548420000000002
	.quad	0x40107be22e5de15d              # double 4.1209800000000003
	.quad	0x3ff0b1d712a0ec74              # double 1.043418
	.quad	0x401017863beec398              # double 4.0229730000000004
	.quad	0x4013b9cae21101b0              # double 4.931438
	.quad	0x40217fca85caafbc              # double 8.7495919999999998
	.quad	0x4016a331a08bfc22              # double 5.6593689999999999
	.quad	0x4012c53bd1676641              # double 4.6926110000000003
	.quad	0x4013e78cc9a77e5f              # double 4.9761230000000003
	.quad	0x40224b2d6ece13f5              # double 9.1468310000000006
	.quad	0x401565a5b9628cbd              # double 5.3492649999999999
	.quad	0x4004f815a07b352b              # double 2.6211350000000002
	.quad	0x401aac6088d6d3b7              # double 6.6683370000000002
	.quad	0x400430d62bf11f92              # double 2.5238459999999998
	.quad	0x3ffc16d2aa5c5f7c              # double 1.7555719999999999
	.quad	0x401a08986fcdee35              # double 6.508394
	.quad	0x40120ea4ebdd334c              # double 4.5143009999999997
	.quad	0x4011a18fc504816f              # double 4.407775
	.quad	0x401dd0dbad3a604e              # double 7.4539629999999999
	.quad	0x401f2ac96cc5fbf8              # double 7.7917839999999998
	.quad	0x401299a77e5eaab0              # double 4.6500529999999998
	.quad	0x3f89b8887229e908              # double 0.012559000000000001
	.quad	0x40058a497fa5d28d              # double 2.692523
	.quad	0x4012569ad42c3c9f              # double 4.5845750000000001
	.quad	0x401c870110a137f4              # double 7.1318400000000004
	.quad	0x401a99b6b2af1455              # double 6.6501109999999999
	.quad	0x40138e48e8a71de7              # double 4.8889500000000004
	.quad	0x401b6008205ff1d8              # double 6.8437809999999999
	.quad	0x40193c77dd872f34              # double 6.3090510000000002
	.quad	0x401d3d9018e75793              # double 7.3101200000000004
	.quad	0x40126cd962068555              # double 4.6062979999999998
	.quad	0x40202f4623d0bfa1              # double 8.0923320000000007
	.quad	0x40120d5dc4007571              # double 4.5130530000000002
	.quad	0x3ff5bc914b167ec8              # double 1.3585370000000001
	.quad	0x401e80aaeafab53d              # double 7.6256519999999996
	.quad	0x3fe46e75ff609dd0              # double 0.63848400000000005
	.quad	0x40162eed02cd39da              # double 5.5458259999999999
	.quad	0x4017f2d905c03361              # double 5.9871559999999997
	.quad	0x4016d0bd87b56b87              # double 5.7038479999999998
	.quad	0x3fe5d8fd5cb790fb              # double 0.68273799999999996
	.quad	0x4019abf37b8d3f18              # double 6.4179209999999998
	.quad	0x3ffdbc73eee52589              # double 1.858509
	.quad	0x400b5b634dad31fd              # double 3.4196230000000001
	.quad	0x40201666ec9e236c              # double 8.0437539999999998
	.quad	0x40096639d5e4a383              # double 3.1749149999999999
	.quad	0x400c2ac7da1ec4e7              # double 3.5208889999999999
	.quad	0x40109cda2b5a20de              # double 4.1531760000000002
	.quad	0x401e76c6de76427c              # double 7.6159929999999996
	.quad	0x4017d7f562174c4d              # double 5.9608970000000001
	.quad	0x3fd9579f23465626              # double 0.39597300000000002
	.quad	0x3ffa10a782906898              # double 1.6290659999999999
	.quad	0x401f5e56473471f8              # double 7.8421260000000003
	.quad	0x4001b7e996312f4d              # double 2.214801
	.quad	0x3ff480639d5e4a38              # double 1.281345
	.quad	0x4018140d4dc65c70              # double 6.0195819999999998
	.quad	0x400ab87df5cf2496              # double 3.3400840000000001
	.quad	0x3fd0fe9b7bf1e8e6              # double 0.26554
	.quad	0x40110d61b2a27f1b              # double 4.2630679999999996
	.quad	0x40227b64bec679cc              # double 9.2410029999999991
	.quad	0x40212721b3aeee95              # double 8.5764289999999992
	.quad	0x401c3c925785f8d3              # double 7.0591520000000001
	.quad	0x40232f4906034f40              # double 9.5923540000000002
	.quad	0x3ff24cfe154434e3              # double 1.143797
	.quad	0x3ff3f79fa97e132b              # double 1.2479549999999999
	.quad	0x3ff0428e4fb97bb7              # double 1.016249
	.quad	0x4012df761cbccf29              # double 4.7182240000000002
	.quad	0x401e70daa0cae643              # double 7.6102090000000002
	.quad	0x40108433d6c72192              # double 4.1291039999999999
	.quad	0x4007c254a3c64346              # double 2.9698880000000001
	.size	.L__constant_3000xf64, 24000

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	41                              # 0x29
	.quad	41                              # 0x29
	.quad	81                              # 0x51
	.quad	81                              # 0x51
	.quad	120                             # 0x78
	.quad	120                             # 0x78
	.quad	161                             # 0xa1
	.quad	161                             # 0xa1
	.quad	196                             # 0xc4
	.quad	196                             # 0xc4
	.quad	232                             # 0xe8
	.quad	232                             # 0xe8
	.quad	277                             # 0x115
	.quad	277                             # 0x115
	.quad	315                             # 0x13b
	.quad	315                             # 0x13b
	.quad	355                             # 0x163
	.quad	355                             # 0x163
	.quad	391                             # 0x187
	.quad	391                             # 0x187
	.quad	428                             # 0x1ac
	.quad	428                             # 0x1ac
	.quad	473                             # 0x1d9
	.quad	473                             # 0x1d9
	.quad	518                             # 0x206
	.quad	518                             # 0x206
	.quad	565                             # 0x235
	.quad	565                             # 0x235
	.quad	603                             # 0x25b
	.quad	603                             # 0x25b
	.quad	644                             # 0x284
	.quad	644                             # 0x284
	.quad	682                             # 0x2aa
	.quad	682                             # 0x2aa
	.quad	721                             # 0x2d1
	.quad	721                             # 0x2d1
	.quad	760                             # 0x2f8
	.quad	760                             # 0x2f8
	.quad	803                             # 0x323
	.quad	803                             # 0x323
	.quad	845                             # 0x34d
	.quad	845                             # 0x34d
	.quad	879                             # 0x36f
	.quad	879                             # 0x36f
	.quad	914                             # 0x392
	.quad	914                             # 0x392
	.quad	953                             # 0x3b9
	.quad	953                             # 0x3b9
	.quad	994                             # 0x3e2
	.quad	994                             # 0x3e2
	.quad	1039                            # 0x40f
	.quad	1039                            # 0x40f
	.quad	1080                            # 0x438
	.quad	1080                            # 0x438
	.quad	1118                            # 0x45e
	.quad	1118                            # 0x45e
	.quad	1159                            # 0x487
	.quad	1159                            # 0x487
	.quad	1194                            # 0x4aa
	.quad	1194                            # 0x4aa
	.quad	1234                            # 0x4d2
	.quad	1234                            # 0x4d2
	.quad	1274                            # 0x4fa
	.quad	1274                            # 0x4fa
	.quad	1312                            # 0x520
	.quad	1312                            # 0x520
	.quad	1353                            # 0x549
	.quad	1353                            # 0x549
	.quad	1394                            # 0x572
	.quad	1394                            # 0x572
	.quad	1433                            # 0x599
	.quad	1433                            # 0x599
	.quad	1470                            # 0x5be
	.quad	1470                            # 0x5be
	.quad	1515                            # 0x5eb
	.quad	1515                            # 0x5eb
	.quad	1553                            # 0x611
	.quad	1553                            # 0x611
	.quad	1590                            # 0x636
	.quad	1590                            # 0x636
	.quad	1632                            # 0x660
	.quad	1632                            # 0x660
	.quad	1671                            # 0x687
	.quad	1671                            # 0x687
	.quad	1712                            # 0x6b0
	.quad	1712                            # 0x6b0
	.quad	1757                            # 0x6dd
	.quad	1757                            # 0x6dd
	.quad	1796                            # 0x704
	.quad	1796                            # 0x704
	.quad	1835                            # 0x72b
	.quad	1835                            # 0x72b
	.quad	1877                            # 0x755
	.quad	1877                            # 0x755
	.quad	1918                            # 0x77e
	.quad	1918                            # 0x77e
	.quad	1959                            # 0x7a7
	.quad	1959                            # 0x7a7
	.quad	1999                            # 0x7cf
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
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
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
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
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
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
	.quad	78                              # 0x4e
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
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
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
	.quad	42                              # 0x2a
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
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
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
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
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
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
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
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
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
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
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
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	40                              # 0x28
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
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
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
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
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
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
	.quad	6                               # 0x6
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
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
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
	.quad	76                              # 0x4c
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
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
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
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
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
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
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
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
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
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
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
	.quad	8                               # 0x8
	.quad	10                              # 0xa
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
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
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
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
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
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
	.quad	16                              # 0x10
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	32                              # 0x20
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.size	.L__constant_1999xindex, 15992

	.type	.L__constant_1999xf64,@object   # @__constant_1999xf64
	.p2align	6, 0x0
.L__constant_1999xf64:
	.quad	0x401131240746455f              # double 4.2979890000000003
	.quad	0x40202bea2d2fe3f3              # double 8.0857709999999994
	.quad	0x4022a3519bd4067d              # double 9.3189820000000001
	.quad	0x3fc5c5d63886594b              # double 0.1701
	.quad	0x3fb83ff69014b59a              # double 0.094726000000000004
	.quad	0x4017b804534bd76f              # double 5.9297040000000001
	.quad	0x400b0b0a6fc58ab9              # double 3.3803909999999999
	.quad	0x40057d1244a6223e              # double 2.68607
	.quad	0x401cf583a53b8e4c              # double 7.2397600000000004
	.quad	0x40089f10ecb74de0              # double 3.0776690000000002
	.quad	0x401ec37e6f71a7e3              # double 7.6909119999999999
	.quad	0x3ff14e7ab7564303              # double 1.0816600000000001
	.quad	0x40128e60807357e6              # double 4.6390399999999996
	.quad	0x4003745cfede97d0              # double 2.4318179999999998
	.quad	0x4021740357a35504              # double 8.7265879999999995
	.quad	0x3ffe39dc2f405f6c              # double 1.8891260000000001
	.quad	0x40219536501e2585              # double 8.7914300000000001
	.quad	0x3ffe45cee17a02fb              # double 1.8920429999999999
	.quad	0x401c572756861e93              # double 7.0851110000000004
	.quad	0x401bc0df15a4acf3              # double 6.9383509999999999
	.quad	0x4014ccbee807bbb6              # double 5.1999469999999999
	.quad	0x3ff509203a322af5              # double 1.3147279999999999
	.quad	0x4013abfd71b04684              # double 4.9179589999999997
	.quad	0x3ff9b8e5c4eb56fc              # double 1.6076410000000001
	.quad	0x400ea85fd04a2fcf              # double 3.832214
	.quad	0x4003dbd512ec6bcf              # double 2.4823400000000002
	.quad	0x40202207b352a844              # double 8.0664650000000008
	.quad	0x400fa5e2cdc011d3              # double 3.9559989999999998
	.quad	0x3ffbcfce746cb967              # double 1.7382340000000001
	.quad	0x40073b80a9de8b3b              # double 2.9040539999999999
	.quad	0x401b542c7fbacb43              # double 6.8322010000000004
	.quad	0x401658ee28672757              # double 5.5868460000000004
	.quad	0x4014121294573a79              # double 5.0176489999999996
	.quad	0x40186127f5e84f09              # double 6.0948789999999997
	.quad	0x4019d66dbd72bcb6              # double 6.459403
	.quad	0x4020b5cb9a9da598              # double 8.3550690000000003
	.quad	0x40192304ccee5abc              # double 6.284198
	.quad	0x40002e685db76b3c              # double 2.0226600000000001
	.quad	0x401ee39042d8c2a4              # double 7.7222299999999997
	.quad	0x4021592ccf6be37e              # double 8.6741700000000002
	.quad	0x4002c8c0485a0be5              # double 2.348023
	.quad	0x3ff1b1465e892253              # double 1.10578
	.quad	0x400a10468448cf7d              # double 3.2579470000000001
	.quad	0x3ffff94317acc4f0              # double 1.9983550000000001
	.quad	0x4015a7ba237cdcca              # double 5.4137959999999996
	.quad	0x4016ef8ec0f88334              # double 5.733943
	.quad	0x3ff66eed8904f6e0              # double 1.4020820000000001
	.quad	0x40037ebf22c01e69              # double 2.4368880000000002
	.quad	0x3fddf3cb3e5753a4              # double 0.468005
	.quad	0x40195f07bfe7e1fc              # double 6.342803
	.quad	0x40231cbad7d7c2ca              # double 9.5561129999999999
	.quad	0x3ffdfc947064ecea              # double 1.8741650000000001
	.quad	0x402033d48cb4aec9              # double 8.1012310000000003
	.quad	0x401a9b549f94855e              # double 6.6516900000000003
	.quad	0x400b51a1986b9c30              # double 3.4148589999999999
	.quad	0x400673a2595bbbe8              # double 2.8064619999999998
	.quad	0x3fcc642396073de2              # double 0.221806
	.quad	0x40211aa433508f65              # double 8.5520340000000008
	.quad	0x401ef333b96af039              # double 7.7375020000000001
	.quad	0x401fe79e59f2ba9d              # double 7.9761899999999998
	.quad	0x40015f20a73f748a              # double 2.171449
	.quad	0x401ef7082491afc0              # double 7.7412419999999997
	.quad	0x401ab875d56f32be              # double 6.6801370000000002
	.quad	0x402066f7a0b5ed8d              # double 8.2011079999999996
	.quad	0x400289331a08bfc2              # double 2.3169919999999999
	.quad	0x400a073a365cb35f              # double 3.2535289999999999
	.quad	0x4018511ba3ca7504              # double 6.0792070000000002
	.quad	0x4018ae2eb1c432ca              # double 6.1700999999999997
	.quad	0x401ee5e8d5410f95              # double 7.7245210000000001
	.quad	0x40213ad2135daad6              # double 8.614884
	.quad	0x3fecd0c1b97353b5              # double 0.90048300000000003
	.quad	0x400ef3d96638433d              # double 3.8690669999999998
	.quad	0x40148cdea033e78e              # double 5.1375679999999999
	.quad	0x40101f3387160957              # double 4.0304700000000002
	.quad	0x40141661f18c9fb6              # double 5.0218579999999999
	.quad	0x402024bbe4473cd5              # double 8.0717459999999992
	.quad	0x400d0ad362e90364              # double 3.6302859999999999
	.quad	0x401e4bd4cfd08d4c              # double 7.5740540000000003
	.quad	0x401721116a8b8f15              # double 5.7822930000000001
	.quad	0x3ff7cb19a415f45e              # double 1.487085
	.quad	0x40065a9f383f0baf              # double 2.7942490000000002
	.quad	0x402098c0ce91c8eb              # double 8.2983460000000004
	.quad	0x40033cc532a497fa              # double 2.4046729999999998
	.quad	0x402025436b8f9b13              # double 8.0727799999999998
	.quad	0x40177f2dc2b0ea18              # double 5.8741979999999998
	.quad	0x401cbfbd273d5bab              # double 7.1872449999999999
	.quad	0x40205169c23b7953              # double 8.1590100000000003
	.quad	0x4002871cda2b5a21              # double 2.3159730000000001
	.quad	0x40159bfe7e1fc090              # double 5.4023380000000003
	.quad	0x400a99c62a1b5c7d              # double 3.3250850000000001
	.quad	0x40188712e40852b5              # double 6.1319080000000001
	.quad	0x402096bf8769ec2d              # double 8.2944300000000002
	.quad	0x400fa61bf37b8d3f              # double 3.956108
	.quad	0x400985bd944aa540              # double 3.1903030000000001
	.quad	0x3fe5d0dae3e6c4c6              # double 0.68174500000000005
	.quad	0x401585eedcc20d56              # double 5.3807939999999999
	.quad	0x3f8b0d51f81a5871              # double 0.013209
	.quad	0x3ff0b3d3a1d323ff              # double 1.043903
	.quad	0x4008e2bf9830e3ce              # double 3.1107170000000002
	.quad	0x3ff31b8dc55000c9              # double 1.1942269999999999
	.quad	0x402070fd3b29a1ba              # double 8.220682
	.quad	0x401cec0fcb4f1e4b              # double 7.2305289999999998
	.quad	0x40174cfe58601366              # double 5.825189
	.quad	0x4018762f166e008f              # double 6.1154140000000003
	.quad	0x4018ae136e71cda3              # double 6.1699960000000003
	.quad	0x40125bdc26dce39b              # double 4.5897069999999998
	.quad	0x3fff5f83be6601bd              # double 1.9608190000000001
	.quad	0x40142c5eb313be23              # double 5.0433300000000001
	.quad	0x40193fd2a62aa194              # double 6.3123269999999998
	.quad	0x401441044f1a1987              # double 5.0634930000000002
	.quad	0x401228e15011904b              # double 4.5399219999999998
	.quad	0x4004305f28848388              # double 2.5236190000000001
	.quad	0x401a386d2ed783e0              # double 6.555104
	.quad	0x401b66084a515cea              # double 6.8496410000000001
	.quad	0x401ea2014727dcbe              # double 7.6582080000000001
	.quad	0x401d5154434e336a              # double 7.3294230000000002
	.quad	0x3fb74c09c3ce208a              # double 0.091004000000000001
	.quad	0x4017e6dc5d638866              # double 5.9754500000000004
	.quad	0x400f2fbd273d5bab              # double 3.8983099999999999
	.quad	0x401035df6555c52e              # double 4.0526099999999996
	.quad	0x401e0b7457c0b136              # double 7.5111860000000004
	.quad	0x4007fd6a593a2df9              # double 2.9987379999999999
	.quad	0x4019d51ac9afe1da              # double 6.4581099999999996
	.quad	0x40079f090f733a8a              # double 2.9526539999999999
	.quad	0x40207f090f733a8a              # double 8.2481159999999996
	.quad	0x400f1743632c1f43              # double 3.8863590000000001
	.quad	0x4020102d38476f2a              # double 8.0315949999999994
	.quad	0x40119e25c810a56a              # double 4.4044410000000003
	.quad	0x4011932ce89656ef              # double 4.393726
	.quad	0x3f932873bc903ea7              # double 0.018709
	.quad	0x40072e4c942d490e              # double 2.8976069999999998
	.quad	0x3fd54e379b77c02b              # double 0.332899
	.quad	0x3fe6fbacb4289119              # double 0.71822200000000003
	.quad	0x400aebf7f06705c9              # double 3.3652190000000002
	.quad	0x4017aecfa69be09c              # double 5.9207140000000003
	.quad	0x401c3c70867ad8e4              # double 7.0590229999999998
	.quad	0x4022853005814941              # double 9.2601320000000005
	.quad	0x40221cf206423960              # double 9.0565339999999992
	.quad	0x40065c0a06e9ff0d              # double 2.7949410000000001
	.quad	0x4011f696e58a32f4              # double 4.4908099999999997
	.quad	0x3ff901abd1aa821f              # double 1.562908
	.quad	0x3ffd431ad2135dab              # double 1.828883
	.quad	0x400cacc9a77e5eab              # double 3.5843690000000001
	.quad	0x40211fe34b945309              # double 8.5622810000000005
	.quad	0x400fc7e9d94d0dd0              # double 3.9726140000000001
	.quad	0x4012ad4f15e7c8d2              # double 4.6692470000000004
	.quad	0x402397485e3da2f9              # double 9.7954740000000004
	.quad	0x4010e909289dadfb              # double 4.2275739999999997
	.quad	0x4020a6fdeb52c9d1              # double 8.3261559999999992
	.quad	0x401a3c9e6687f456              # double 6.5591980000000003
	.quad	0x3fe4e6ddf00abf77              # double 0.65318200000000004
	.quad	0x40068f37fbefd007              # double 2.819931
	.quad	0x402140e8a71de69b              # double 8.6267750000000003
	.quad	0x4010c8112ba16e7a              # double 4.1953779999999998
	.quad	0x4013da9ef5232d2c              # double 4.9634970000000003
	.quad	0x3ff96fef7c243dcd              # double 1.589828
	.quad	0x4000bf5b5fa22707              # double 2.0934360000000001
	.quad	0x4017cf77292c4934              # double 5.9526029999999999
	.quad	0x402146df61240746              # double 8.6384229999999995
	.quad	0x401b6dd2ae8e1d65              # double 6.8572490000000004
	.quad	0x401e3a04d12018a4              # double 7.5566589999999998
	.quad	0x401900121682f944              # double 6.2500689999999999
	.quad	0x3fb2c58eeae9ee46              # double 0.073327000000000003
	.quad	0x4022e8a159817b96              # double 9.4543560000000006
	.quad	0x402058c5436b8f9b              # double 8.1733799999999999
	.quad	0x400dd20afa2f05a7              # double 3.72756
	.quad	0x400adfa658c4bd34              # double 3.3592040000000001
	.quad	0x4012cc0df58c08b7              # double 4.6992719999999997
	.quad	0x401aeb2a6b0d9514              # double 6.729654
	.quad	0x400562be0589acbd              # double 2.6732140000000002
	.quad	0x40239c1b10fd7e46              # double 9.8048940000000009
	.quad	0x4020ed82fd75e204              # double 8.4638899999999992
	.quad	0x40020358afc47e4a              # double 2.2516340000000001
	.quad	0x400db8a2a90cd424              # double 3.7151540000000001
	.quad	0x3ff976512a94ff00              # double 1.591386
	.quad	0x4006f186db50f40e              # double 2.8679329999999998
	.quad	0x401ac1244a6223e2              # double 6.6886150000000004
	.quad	0x40027aacd9e83e42              # double 2.3098999999999998
	.quad	0x4012434e7685985b              # double 4.5657290000000001
	.quad	0x3ffb4780fdc1615f              # double 1.7049570000000001
	.quad	0x401e682f51266341              # double 7.6017429999999999
	.quad	0x4021721d96e9bbf1              # double 8.7228820000000002
	.quad	0x401506efc371da38              # double 5.2567740000000001
	.quad	0x40076e8fb00bcbe6              # double 2.9289849999999999
	.quad	0x3ff8379fa97e132b              # double 1.5135799999999999
	.quad	0x4019c36c15d2d01c              # double 6.440842
	.quad	0x401f90ce0b912dba              # double 7.8914109999999997
	.quad	0x3ffbd88f42fe8251              # double 1.7403709999999999
	.quad	0x4001df67f4dbdf8f              # double 2.2340849999999999
	.quad	0x401f825072085b18              # double 7.8772599999999997
	.quad	0x4001da34ca0c282c              # double 2.2315459999999998
	.quad	0x4008586ec17ebaf1              # double 3.04318
	.quad	0x4023b7eaa2a0a958              # double 9.8592119999999994
	.quad	0x4008eba732df505d              # double 3.115065
	.quad	0x4011cf7b17ce52df              # double 4.4526180000000002
	.quad	0x401a59420b3d4ae4              # double 6.5871659999999999
	.quad	0x3feb5cc857f3061c              # double 0.85507599999999994
	.quad	0x3fd1e22e5de15ca7              # double 0.27943000000000001
	.quad	0x400a94d594f26aec              # double 3.322673
	.quad	0x4018223b7952d235              # double 6.0334300000000001
	.quad	0x4021dc5c9a34ca0c              # double 8.9303939999999997
	.quad	0x3fc9d9fd36f7e3d2              # double 0.20196500000000001
	.quad	0x400ba8e4fb97bb73              # double 3.457468
	.quad	0x3fe7fa0f9096bb99              # double 0.74927500000000002
	.quad	0x40178b61fe21d96f              # double 5.8861160000000003
	.quad	0x401dce8fb00bcbe6              # double 7.4517199999999999
	.quad	0x400e3f0fe047d3d4              # double 3.7807919999999999
	.quad	0x401cada5daf07bfe              # double 7.1695779999999996
	.quad	0x40014fb5d031055c              # double 2.1639210000000002
	.quad	0x40221878fabda0e0              # double 9.0477980000000002
	.quad	0x4011ddf15a4acf31              # double 4.4667409999999999
	.quad	0x4005eb8066c2acb8              # double 2.7399909999999998
	.quad	0x4023a70739b024f6              # double 9.8262269999999994
	.quad	0x401ea34d6a161e4f              # double 7.6594749999999995
	.quad	0x4014bcaab8a5ce5b              # double 5.1842449999999998
	.quad	0x400e8c5197a24895              # double 3.8185150000000001
	.quad	0x401729b994e1a3f4              # double 5.7907469999999996
	.quad	0x401a58b0d0edc3bd              # double 6.5866119999999997
	.quad	0x3fe703fd50225743              # double 0.71923700000000002
	.quad	0x40030ec0f88333fd              # double 2.3822040000000002
	.quad	0x400b3f83382e44b7              # double 3.406012
	.quad	0x400692a9d627bf62              # double 2.8216130000000001
	.quad	0x3fb9620685553ef7              # double 0.099152000000000004
	.quad	0x400e6a88effe2a3d              # double 3.802019
	.quad	0x401ec7d6733ebbfd              # double 7.6951539999999996
	.quad	0x4011e27913e81451              # double 4.4711650000000001
	.quad	0x400c0e81882adc4d              # double 3.5070830000000002
	.quad	0x3feb6685db76b3bc              # double 0.85626500000000005
	.quad	0x3fe70583621fafc9              # double 0.71942300000000003
	.quad	0x4022c81e68a0d34a              # double 9.3908570000000005
	.quad	0x4013c0bf1a5ca298              # double 4.9382289999999998
	.quad	0x4012d42784a9478d              # double 4.7071820000000004
	.quad	0x4020691105e1c151              # double 8.2052080000000007
	.quad	0x4014d3d7d3910c2c              # double 5.2068779999999997
	.quad	0x4010221c475e6363              # double 4.0333110000000003
	.quad	0x3fe504ba0e842742              # double 0.65682700000000005
	.quad	0x401835061416377a              # double 6.0517810000000001
	.quad	0x4016f5942917507f              # double 5.7398230000000003
	.quad	0x401d690afe60c38f              # double 7.3525809999999998
	.quad	0x3fde2ee84ad794a7              # double 0.471613
	.quad	0x4020840724b76f6d              # double 8.2578669999999992
	.quad	0x400af5ca6ca03c4b              # double 3.370015
	.quad	0x3ff339cb6848beb6              # double 1.2016100000000001
	.quad	0x4013cb6e0d23d4f1              # double 4.9486619999999997
	.quad	0x4022523e18698351              # double 9.1606299999999994
	.quad	0x4020ca6698bb4d49              # double 8.3953140000000008
	.quad	0x40198bd512ec6bcf              # double 6.3865550000000004
	.quad	0x4022c0bd44998d04              # double 9.3764439999999993
	.quad	0x4023aff62b6ae7d5              # double 9.8436749999999992
	.quad	0x401a498aa8650e78              # double 6.5718180000000004
	.quad	0x3ff8dadc8fb86f48              # double 1.5534330000000001
	.quad	0x401b50d77b7c7821              # double 6.8289470000000003
	.quad	0x4001f569f4906035              # double 2.244831
	.quad	0x40234e4dc22ab25b              # double 9.6529369999999996
	.quad	0x400127b24638c975              # double 2.1443829999999999
	.quad	0x4013783e425aee63              # double 4.8674249999999999
	.quad	0x4012c304ccee5abc              # double 4.690448
	.quad	0x402181f1f14983d8              # double 8.7537990000000008
	.quad	0x3fe0ccfd08d4bad8              # double 0.52502300000000002
	.quad	0x400b726aec0724b7              # double 3.4308679999999998
	.quad	0x3fc56aceaaf35e31              # double 0.167322
	.quad	0x3ffe087442c7fbad              # double 1.8770640000000001
	.quad	0x400dcfe3f359ff50              # double 3.7265090000000001
	.quad	0x3fecd8d5842b734b              # double 0.90146899999999996
	.quad	0x40234be5d9e40c84              # double 9.6482379999999992
	.quad	0x3fff0feef5ec80c7              # double 1.9413899999999999
	.quad	0x40073dc9c4da9004              # double 2.90517
	.quad	0x4023eead2dcb1466              # double 9.9661650000000002
	.quad	0x40115583e8576cce              # double 4.3335109999999997
	.quad	0x4012f9731098d478              # double 4.7436030000000002
	.quad	0x40096c61522a6f3f              # double 3.1779199999999999
	.quad	0x3fe5e00b02928177              # double 0.68359899999999996
	.quad	0x3fa5bc23315d701e              # double 0.042451000000000003
	.quad	0x401a21a21ea35936              # double 6.532845
	.quad	0x4001342352eb5f5f              # double 2.150458
	.quad	0x401057c6fbd273d6              # double 4.0857200000000002
	.quad	0x40233352eb5f5f0b              # double 9.6002419999999997
	.quad	0x401c2a1b1960fa16              # double 7.0411190000000001
	.quad	0x4009ed4ed2cbea4f              # double 3.2408730000000001
	.quad	0x400676fda836eb4f              # double 2.8081010000000002
	.quad	0x4018b157689ca18c              # double 6.1731850000000001
	.quad	0x4003041fea8112ba              # double 2.377014
	.quad	0x40085fa2ad3e920c              # double 3.046697
	.quad	0x400fcbf444e0daa1              # double 3.9745870000000001
	.quad	0x4020096ca46e08f2              # double 8.0184069999999998
	.quad	0x4023ed18f3eccc47              # double 9.9630810000000007
	.quad	0x4006418372e6a769              # double 2.7819889999999998
	.quad	0x4004a2d83c6c97d9              # double 2.5795140000000001
	.quad	0x401c1c929aa1d756              # double 7.0279030000000002
	.quad	0x401dd710880d801b              # double 7.4600239999999998
	.quad	0x401fc8af81626b2f              # double 7.9459819999999998
	.quad	0x40222fa072d1aeb4              # double 9.0930210000000002
	.quad	0x401235553ef6b5d4              # double 4.5520829999999997
	.quad	0x401fdd18090b417d              # double 7.9659120000000003
	.quad	0x4008ea0c282c6ef4              # double 3.1142810000000001
	.quad	0x3fe12abef06b3786              # double 0.53646799999999994
	.quad	0x3fde80b673c4f3ba              # double 0.47660599999999997
	.quad	0x401ff34ca0c282c7              # double 7.987597
	.quad	0x4010d04534bd76ee              # double 4.2033889999999996
	.quad	0x400019841aac53b1              # double 2.0124590000000002
	.quad	0x3ffe63f034b0e1b5              # double 1.8993990000000001
	.quad	0x4021724c404a72eb              # double 8.7232380000000003
	.quad	0x3ff462a2c2374795              # double 1.274081
	.quad	0x401002be0589acbd              # double 4.0026780000000004
	.quad	0x4012c13404ea4a8c              # double 4.6886749999999999
	.quad	0x40138f2e05ccc89b              # double 4.8898239999999999
	.quad	0x40154c1b54195cc8              # double 5.3243229999999997
	.quad	0x401841b1d92b7fe1              # double 6.0641550000000004
	.quad	0x401f36134ce3de61              # double 7.8028079999999997
	.quad	0x4023486e19b90eaa              # double 9.6414650000000002
	.quad	0x40102e6a337a80d0              # double 4.0453270000000003
	.quad	0x3feb6698bb4d4888              # double 0.85627399999999998
	.quad	0x3fd7402d16b97fe9              # double 0.363292
	.quad	0x401805e353f7ced9              # double 6.0057499999999999
	.quad	0x4014f54b05b7cfe6              # double 5.2395440000000004
	.quad	0x400130c1b97353b5              # double 2.1488070000000001
	.quad	0x4020ca3161a1db87              # double 8.3949079999999991
	.quad	0x4001f79d0a67620f              # double 2.245905
	.quad	0x401fe9cb6848beb6              # double 7.9783150000000003
	.quad	0x4015f69728a61177              # double 5.4908109999999999
	.quad	0x4007fe14bdfd2631              # double 2.999063
	.quad	0x40209535c9e6687f              # double 8.2914259999999995
	.quad	0x4015e1c10d7be985              # double 5.4704629999999996
	.quad	0x4021077ced916873              # double 8.5146250000000006
	.quad	0x3fffb4d1633482bf              # double 1.9816450000000001
	.quad	0x3ff398969a0ad8a1              # double 1.224753
	.quad	0x3ff88f25a250f840              # double 1.534948
	.quad	0x401195e13b18dac2              # double 4.3963669999999997
	.quad	0x4021963b688bda94              # double 8.7934219999999996
	.quad	0x4018ca51e321a2e8              # double 6.197578
	.quad	0x4018705faebc408e              # double 6.1097400000000004
	.quad	0x4001fb84db9c7369              # double 2.2478120000000001
	.quad	0x3fd337867f0aa21a              # double 0.30026399999999998
	.quad	0x401e0c0ebedfa440              # double 7.5117750000000001
	.quad	0x4021544ae85b9e8c              # double 8.6646339999999995
	.quad	0x40199cc63f141206              # double 6.4031000000000002
	.quad	0x401b6ed20296b335              # double 6.8582229999999997
	.quad	0x40149e1e2de87097              # double 5.1544119999999998
	.quad	0x400e10b0f27bb2ff              # double 3.7581500000000001
	.quad	0x4020a8d6909aed57              # double 8.3297620000000006
	.quad	0x40192ec679cc74b8              # double 6.2956789999999998
	.quad	0x3ffea18bd66277c4              # double 1.9144399999999999
	.quad	0x40231fe5a78f25a2              # double 9.5622989999999994
	.quad	0x401ea3cf70153bd1              # double 7.6599709999999996
	.quad	0x4006989bd8383ada              # double 2.824516
	.quad	0x401ee621b7e0ac7e              # double 7.7247380000000003
	.quad	0x40161c9a77e5eaab              # double 5.527933
	.quad	0x4022133f42352eb6              # double 9.0375920000000001
	.quad	0x3fea1a7e30878748              # double 0.81573399999999996
	.quad	0x400c4954a7f8012e              # double 3.535806
	.quad	0x4016c19b0ab2e169              # double 5.6890679999999998
	.quad	0x3fe6461f9f01b867              # double 0.69606000000000001
	.quad	0x40154cd573647bab              # double 5.3250330000000003
	.quad	0x4017118ce2d1f1d0              # double 5.7671390000000002
	.quad	0x4009b4623d0bfa09              # double 3.2130779999999999
	.quad	0x401e0d67ba237cdd              # double 7.5130910000000001
	.quad	0x402141c1d6cf850e              # double 8.6284320000000001
	.quad	0x4013c458cd20afa3              # double 4.9417450000000001
	.quad	0x400977995ee136e7              # double 3.1833979999999999
	.quad	0x3fca51f3e89a88ad              # double 0.205626
	.quad	0x40220ded6ba8c587              # double 9.0272020000000008
	.quad	0x40190e7ff583a53c              # double 6.2641600000000004
	.quad	0x4021901cd5f99c39              # double 8.7814700000000006
	.quad	0x4006b587d6f97679              # double 2.838638
	.quad	0x400408c5004fb118              # double 2.5042819999999999
	.quad	0x3ffb4303c07ee0b1              # double 1.7038610000000001
	.quad	0x401f9db37c99ae92              # double 7.9040049999999997
	.quad	0x401efc4c5974e65c              # double 7.7463850000000001
	.quad	0x3fd7453d20f2becf              # double 0.36360100000000001
	.quad	0x4012b6e2eb1c432d              # double 4.6786000000000003
	.quad	0x40206c94d50ebaae              # double 8.2120730000000002
	.quad	0x4022930446b69db6              # double 9.2871419999999993
	.quad	0x40162071c53f39d2              # double 5.5316840000000003
	.quad	0x3ffe19f1ae2da555              # double 1.8813340000000001
	.quad	0x4012b91d57ff9b56              # double 4.6807759999999998
	.quad	0x40125af20ea5b531              # double 4.5888140000000002
	.quad	0x40091ec02f2f9874              # double 3.140015
	.quad	0x40165efc371da37f              # double 5.592759
	.quad	0x401c71fc8f32378b              # double 7.1113150000000003
	.quad	0x4019172324c83665              # double 6.2725949999999999
	.quad	0x401f796b3354c122              # double 7.8685729999999996
	.quad	0x4011f77292c49342              # double 4.4916479999999996
	.quad	0x3ffa79ee02a77a2d              # double 1.654768
	.quad	0x401969c1b54195cd              # double 6.3532780000000004
	.quad	0x4021cba29c779a6b              # double 8.8977249999999994
	.quad	0x401af7b634dad320              # double 6.7419060000000002
	.quad	0x402149ce8d972cd8              # double 8.6441540000000003
	.quad	0x40141541d8e86402              # double 5.020759
	.quad	0x4023972b884406c0              # double 9.7952539999999999
	.quad	0x4000be28aa433509              # double 2.092851
	.quad	0x402148438088509c              # double 8.64114
	.quad	0x4022239f127f5e85              # double 9.0695730000000001
	.quad	0x40058804102ff8ec              # double 2.691414
	.quad	0x4007814b599aa609              # double 2.938132
	.quad	0x40220dd76683c298              # double 9.0270340000000004
	.quad	0x401ba8bf7f06705d              # double 6.9147930000000004
	.quad	0x3ff42459103c8e26              # double 1.258874
	.quad	0x400cd6c2efd438d2              # double 3.6048640000000001
	.quad	0x401ab93b7d84901d              # double 6.6808909999999999
	.quad	0x40222538476f2a5a              # double 9.0726949999999995
	.quad	0x3ff3ebc408d8ec96              # double 1.2450600000000001
	.quad	0x3fcc4295a6c5d207              # double 0.22078200000000001
	.quad	0x40211cf93bc0a06f              # double 8.5565890000000007
	.quad	0x401d6ce24bba12b6              # double 7.3563320000000001
	.quad	0x3fff328848387df6              # double 1.949837
	.quad	0x401c2028e4fb97bb              # double 7.0314059999999996
	.quad	0x4022d7f92f2b66b6              # double 9.4218229999999998
	.quad	0x402028767d34df05              # double 8.0790290000000002
	.quad	0x4018260e51d25aab              # double 6.0371639999999998
	.quad	0x3fc8ccee5abc0e39              # double 0.19375400000000001
	.quad	0x4005bc810a569b17              # double 2.7170429999999999
	.quad	0x4023ce596c82e01a              # double 9.9030260000000006
	.quad	0x3feaf0aa21a719b5              # double 0.84187800000000002
	.quad	0x402141bf9c62a1b6              # double 8.6284150000000004
	.quad	0x40067294573a7979              # double 2.8059470000000002
	.quad	0x3ff7e6e221c8a7a4              # double 1.493868
	.quad	0x4018a387df5cf249              # double 6.1596979999999997
	.quad	0x4001a205ff1d81f1              # double 2.204113
	.quad	0x4020e00f776c4828              # double 8.4376180000000005
	.quad	0x3ffd1cc20d5629d8              # double 1.8195209999999999
	.quad	0x400dd54003254e6e              # double 3.7291259999999999
	.quad	0x401007efe0ce0b91              # double 4.0077509999999998
	.quad	0x401af57928e0c9da              # double 6.7397200000000002
	.quad	0x401b43f4a98aa865              # double 6.8163629999999999
	.quad	0x401174b72c5197a2              # double 4.3639799999999997
	.quad	0x4012c9da9c99285b              # double 4.6971230000000004
	.quad	0x40137b52c9d16fca              # double 4.8704330000000002
	.quad	0x40239f4ea8da7f3d              # double 9.811147
	.quad	0x3ff9b074a771c971              # double 1.60558
	.quad	0x4012404f2ae07e5a              # double 4.5628019999999996
	.quad	0x4014ede2ac322292              # double 5.23231
	.quad	0x4009052157689ca2              # double 3.1275050000000002
	.quad	0x4015106b37867f0b              # double 5.2660340000000003
	.quad	0x4014740fecdd0d8d              # double 5.1133420000000003
	.quad	0x4011d5e28aa43351              # double 4.4588720000000004
	.quad	0x4011a73c925785f9              # double 4.4133170000000002
	.quad	0x4011720817fc7608              # double 4.3613590000000002
	.quad	0x3ff7b5653c9abb02              # double 1.481786
	.quad	0x402101f5dfeb8d82              # double 8.5038289999999996
	.quad	0x401ba1dde37585be              # double 6.9080729999999999
	.quad	0x401e0f8fcd67fd3f              # double 7.5151969999999996
	.quad	0x401e428a1dfb938a              # double 7.5649800000000003
	.quad	0x4005e75360d02470              # double 2.7379519999999999
	.quad	0x40131e3ef284167b              # double 4.7795370000000004
	.quad	0x400d84db9c7368ad              # double 3.6898719999999998
	.quad	0x3fe68a6fc58ab92c              # double 0.704399
	.quad	0x40193d96638433d7              # double 6.3101440000000002
	.quad	0x3ffc1eaab042528b              # double 1.757487
	.quad	0x40116b4289118c19              # double 4.3547459999999996
	.quad	0x400acd16b97fe8ee              # double 3.3501409999999998
	.quad	0x40219474b838c112              # double 8.7899530000000006
	.quad	0x4022135b2d4d4025              # double 9.0378050000000005
	.quad	0x3fe92a1f8e3ac0c6              # double 0.78639199999999998
	.quad	0x401c6872b020c49c              # double 7.1020000000000003
	.quad	0x401545100a393ee6              # double 5.3174440000000001
	.quad	0x401aeb59578a2a91              # double 6.7298330000000002
	.quad	0x40235e0a84be4042              # double 9.6836739999999999
	.quad	0x40054845996744b3              # double 2.6602890000000001
	.quad	0x401d008919ef954f              # double 7.2505230000000003
	.quad	0x3fe11c6b05319829              # double 0.53471900000000006
	.quad	0x40176fbce4217d28              # double 5.8591189999999997
	.quad	0x401ff99f1ae2da55              # double 7.9937709999999997
	.quad	0x40232c47c30d306a              # double 9.5864849999999997
	.quad	0x401be0ed3d859c8d              # double 6.9696550000000004
	.quad	0x400639439de481f5              # double 2.7779609999999999
	.quad	0x3fe0ab4b72c5197a              # double 0.52090999999999998
	.quad	0x40206b7e2c55c960              # double 8.2099469999999997
	.quad	0x401df7f62b6ae7d5              # double 7.4921499999999996
	.quad	0x4020052135daad60              # double 8.0100189999999998
	.quad	0x40215928e0c9d9d3              # double 8.6741399999999995
	.quad	0x3fd70c2c5e2cdc01              # double 0.36011799999999999
	.quad	0x3f7e353f7ced9168              # double 0.0073749999999999996
	.quad	0x401b89b13165d399              # double 6.8844649999999996
	.quad	0x4016c26fa3fcc9eb              # double 5.6898790000000004
	.quad	0x400a2a29845dc832              # double 3.2705869999999999
	.quad	0x401f6f583a53b8e5              # double 7.8587350000000002
	.quad	0x4012c7b07075b3e1              # double 4.6950089999999998
	.quad	0x400bb14ec204f2ae              # double 3.461576
	.quad	0x3ff8aa3f034b0e1b              # double 1.5415639999999999
	.quad	0x4020d45e4e69f05f              # double 8.4147820000000007
	.quad	0x3ff8125460aa64c3              # double 1.504475
	.quad	0x4022921be2b4959e              # double 9.2853689999999993
	.quad	0x40230f264a16a487              # double 9.5295889999999996
	.quad	0x400805a0be510907              # double 3.002748
	.quad	0x40235621d96e9bbf              # double 9.6682269999999999
	.quad	0x3fd61b1960fa15db              # double 0.34540399999999999
	.quad	0x401263c148344c38              # double 4.5974170000000001
	.quad	0x4010e1d96e9bbf0e              # double 4.2205560000000002
	.quad	0x401865375c8d9f90              # double 6.0988439999999997
	.quad	0x4016aef8055fbb51              # double 5.6708679999999996
	.quad	0x401eff2c3009b307              # double 7.7491919999999998
	.quad	0x400da5197a24894c              # double 3.7056149999999999
	.quad	0x400161f212d77319              # double 2.172825
	.quad	0x3fcf36d655e28aa4              # double 0.24386099999999999
	.quad	0x4007821d96e9bbf1              # double 2.9385330000000001
	.quad	0x3ff6527e5215768a              # double 1.39514
	.quad	0x401a2180d3cff64d              # double 6.532718
	.quad	0x401fccae642bf983              # double 7.9498839999999999
	.quad	0x40117dc768dfbd6a              # double 4.3728309999999997
	.quad	0x4020ef5dbb9cf9a0              # double 8.4675119999999993
	.quad	0x4019aa7f8012dfd7              # double 6.4165020000000004
	.quad	0x402161129888f862              # double 8.6895950000000006
	.quad	0x3ff39b30728e92d5              # double 1.2253879999999999
	.quad	0x40039e18efbb0e5e              # double 2.4521959999999998
	.quad	0x4004fbeb18116ebd              # double 2.6230069999999999
	.quad	0x3ffabd1aa821f299              # double 1.671168
	.quad	0x401262630ec31162              # double 4.5960809999999999
	.quad	0x4023059641f64495              # double 9.5109119999999993
	.quad	0x401e3730c67168f9              # double 7.553897
	.quad	0x40121f1a5ca29846              # double 4.5303740000000001
	.quad	0x4009cd9c6b053198              # double 3.2253959999999999
	.quad	0x402201cb039ef0f1              # double 9.0035019999999992
	.quad	0x4017e1ec4e7253da              # double 5.9706279999999996
	.quad	0x40220a07b352a844              # double 9.0195900000000008
	.quad	0x400717a4e7ab7564              # double 2.8865449999999999
	.quad	0x4001e3cafb3b7521              # double 2.236227
	.quad	0x4018cac083126e98              # double 6.1980000000000004
	.quad	0x4014dec5f394b7b3              # double 5.2175520000000004
	.quad	0x4021812f4cf4a559              # double 8.7523140000000001
	.quad	0x401190c804102ff9              # double 4.3913880000000001
	.quad	0x3fca98b2e9ccb7d4              # double 0.207785
	.quad	0x40104834d26fa3fd              # double 4.0705140000000002
	.quad	0x40070ef2c7325919              # double 2.8822990000000002
	.quad	0x3ff08245f5ad96a7              # double 1.0318050000000001
	.quad	0x4019bf9fcb0c026d              # double 6.4371330000000002
	.quad	0x4019e5375c8d9f90              # double 6.4738439999999997
	.quad	0x4020bc65a57646ae              # double 8.3679629999999996
	.quad	0x401a2e18efbb0e5e              # double 6.5450169999999996
	.quad	0x4006e58dde7a743a              # double 2.8620869999999998
	.quad	0x400d5f02c4d65e46              # double 3.671392
	.quad	0x40182021d10b1fef              # double 6.0313790000000003
	.quad	0x3fa098915bdd7668              # double 0.032413999999999998
	.quad	0x401170795f676ea4              # double 4.3598379999999999
	.quad	0x40215da9003eea21              # double 8.6829300000000007
	.quad	0x3fd4a28bb0a2ca9b              # double 0.32242100000000001
	.quad	0x401b9f284167a95d              # double 6.9054270000000004
	.quad	0x3ff170b39192641b              # double 1.090015
	.quad	0x401a14bba12b5e53              # double 6.5202470000000003
	.quad	0x40164d905c033615              # double 5.5757459999999996
	.quad	0x4023d50bfa0945fa              # double 9.9161070000000002
	.quad	0x4007c46412cf0f9d              # double 2.9708939999999999
	.quad	0x40237fc6da448494              # double 9.7495639999999994
	.quad	0x401b42f72b452828              # double 6.8153959999999998
	.quad	0x401e15eb7457c0b1              # double 7.5214059999999998
	.quad	0x40150df2ecf20642              # double 5.2636219999999998
	.quad	0x400f80d887ebf22c              # double 3.937913
	.quad	0x400579a5a89b951c              # double 2.6843979999999998
	.quad	0x401fd44241c3efae              # double 7.9572839999999996
	.quad	0x401be6d2aa5c5f7c              # double 6.9754129999999996
	.quad	0x4004d65881a15550              # double 2.6046610000000001
	.quad	0x402064db9c7368ad              # double 8.1969879999999993
	.quad	0x402013f39d1b2e5a              # double 8.0389680000000006
	.quad	0x4016349cb252ce03              # double 5.5513789999999998
	.quad	0x4018793faf42784b              # double 6.1184070000000004
	.quad	0x4020863fbbd7b203              # double 8.2622049999999998
	.quad	0x4014b62ed352220c              # double 5.1779130000000002
	.quad	0x3ff4c35371971c11              # double 1.297687
	.quad	0x40194956c0d6f545              # double 6.3216200000000002
	.quad	0x4016730ced4e4c94              # double 5.6123539999999998
	.quad	0x401e76473471f794              # double 7.6155059999999999
	.quad	0x3ff79666a98244e9              # double 1.4742189999999999
	.quad	0x3ff95c7cd898b2ea              # double 1.58508
	.quad	0x40207e0d66f0cfe1              # double 8.2461959999999994
	.quad	0x3feb814727dcbddc              # double 0.85953100000000004
	.quad	0x401c53a2595bbbe8              # double 7.0816739999999996
	.quad	0x40001e83e425aee6              # double 2.0148999999999999
	.quad	0x4021b58fd5cb7910              # double 8.8546130000000005
	.quad	0x3fd8100a393ee5ef              # double 0.37597900000000001
	.quad	0x401256c8711d798e              # double 4.5847490000000004
	.quad	0x3fec83d35eb7457c              # double 0.89109199999999999
	.quad	0x4021e7aeddce7cd0              # double 8.9525059999999996
	.quad	0x40206dcb790fb656              # double 8.2144429999999993
	.quad	0x401fdad5bee3d5fe              # double 7.9637060000000002
	.quad	0x3fe000e065300581              # double 0.50010699999999997
	.quad	0x3fa4ccab3edd8b61              # double 0.040624
	.quad	0x4003fdbdb5d89481              # double 2.4988969999999999
	.quad	0x4023a5c0767d34df              # double 9.8237339999999999
	.quad	0x4001d34df04ddb55              # double 2.2281759999999999
	.quad	0x401306cf41f212d7              # double 4.7566499999999996
	.quad	0x401a3fb3b7521145              # double 6.5622090000000002
	.quad	0x4000a86f8ad2567a              # double 2.0822440000000002
	.quad	0x400a82bc72e275ab              # double 3.3138359999999998
	.quad	0x3ff3eb042528ae75              # double 1.244877
	.quad	0x401ae15c63ae2542              # double 6.7200790000000001
	.quad	0x400dd37a80cf9e38              # double 3.7282609999999998
	.quad	0x400e3cd24e160d88              # double 3.7796979999999998
	.quad	0x40236a6cc1ca3a4b              # double 9.7078609999999994
	.quad	0x401125aea3161a1e              # double 4.2867990000000002
	.quad	0x401119656eefa1e4              # double 4.2748010000000001
	.quad	0x400878897e996313              # double 3.058856
	.quad	0x40158f2e05ccc89b              # double 5.3898239999999999
	.quad	0x40216a94141e9af6              # double 8.7081610000000005
	.quad	0x400b7c99285a921d              # double 3.4358390000000001
	.quad	0x401100fe47991bc5              # double 4.2509699999999997
	.quad	0x401346bb98c7e282              # double 4.8190749999999998
	.quad	0x401cc82a12f90108              # double 7.1954729999999998
	.quad	0x40048a960b6f9fcb              # double 2.567669
	.quad	0x400a90d49949e881              # double 3.3207179999999998
	.quad	0x401bae586013660e              # double 6.9202589999999997
	.quad	0x401d5d4e4c942d49              # double 7.341119
	.quad	0x40208ce48626f60e              # double 8.2751809999999999
	.quad	0x40072cf41f212d77              # double 2.8969499999999999
	.quad	0x40156a450acc0bdd              # double 5.3537790000000003
	.quad	0x401edf86a098915c              # double 7.7182870000000001
	.quad	0x4022d2a66dbd72bd              # double 9.4114260000000005
	.quad	0x401be0ded288ce70              # double 6.9695999999999998
	.quad	0x401282170931012a              # double 4.6270410000000002
	.quad	0x401fbb7b28954a80              # double 7.9330870000000004
	.quad	0x3ff2ce68e3ef2841              # double 1.1753929999999999
	.quad	0x4021b7d8cf398e97              # double 8.859076
	.quad	0x4023d1a9fbe76c8b              # double 9.9094999999999995
	.quad	0x40201beb5b2d4d40              # double 8.0545299999999997
	.quad	0x401114677b395c42              # double 4.2699259999999999
	.quad	0x400b837de939eadd              # double 3.4392049999999998
	.quad	0x401b75e6ff7dfa01              # double 6.8651390000000001
	.quad	0x402136922d948dc1              # double 8.6065839999999998
	.quad	0x3fda1437c5692b3d              # double 0.40748400000000001
	.quad	0x4021d63fbbd7b203              # double 8.9184549999999998
	.quad	0x400a6b97785729b3              # double 3.3025350000000002
	.quad	0x4009c84f09528f19              # double 3.222807
	.quad	0x4015b4a2b9d3cbc5              # double 5.4264020000000004
	.quad	0x3ff4f94d94078961              # double 1.3108649999999999
	.quad	0x3ffaa5e679463cfb              # double 1.665503
	.quad	0x4018a178705425f2              # double 6.157686
	.quad	0x4003f3226c3b927d              # double 2.4937179999999999
	.quad	0x40212264e48626f6              # double 8.5671759999999999
	.quad	0x40147e468cac4b4d              # double 5.123316
	.quad	0x3ffdac2acb85a4f0              # double 1.854533
	.quad	0x4023f7c3b4f61672              # double 9.9839149999999997
	.quad	0x4012a09e98dcdb38              # double 4.6568550000000002
	.quad	0x4014e7204295a6c6              # double 5.2257090000000002
	.quad	0x4020b05ad538ac19              # double 8.3444430000000001
	.quad	0x4014c8eb463497b7              # double 5.1962099999999998
	.quad	0x4019bb4f61672325              # double 6.4329200000000002
	.quad	0x40007413122b7baf              # double 2.0566770000000001
	.quad	0x3fe4a070b8cfbfc6              # double 0.64458499999999996
	.quad	0x4006da3a8e71476b              # double 2.856557
	.quad	0x401c7d466f5019f4              # double 7.1223390000000002
	.quad	0x401409e30014f8b6              # double 5.0096550000000004
	.quad	0x402191f666234a88              # double 8.7850830000000002
	.quad	0x401f843c3a42f1ed              # double 7.8791359999999999
	.quad	0x3fad4de7ea5f84cb              # double 0.057235000000000001
	.quad	0x4019bd41fa765343              # double 6.4348219999999996
	.quad	0x4016a1b75a74c09c              # double 5.6579259999999998
	.quad	0x40202f04790b8499              # double 8.0918310000000009
	.quad	0x4021d5b3e1437c57              # double 8.9173880000000008
	.quad	0x4011d9af5ba2be06              # double 4.4625830000000004
	.quad	0x402228eeae9ee45c              # double 9.0799459999999996
	.quad	0x401e62120e1f7d74              # double 7.5957720000000002
	.quad	0x401f84fb97bb7308              # double 7.8798659999999998
	.quad	0x401872c8c5004fb1              # double 6.1120939999999999
	.quad	0x3ff43a58f7121ab5              # double 1.2642450000000001
	.quad	0x3ffa3cb4f1e4b44a              # double 1.639821
	.quad	0x401ccdd6e04c0592              # double 7.2010149999999999
	.quad	0x40078b0fadf2ecf2              # double 2.942901
	.quad	0x401ce3a9f383f0bb              # double 7.2223280000000001
	.quad	0x40199c664d3bf2f5              # double 6.4027339999999997
	.quad	0x4023fc955b4677b4              # double 9.9933270000000007
	.quad	0x4021e9a32b12d341              # double 8.9563229999999994
	.quad	0x4023fbbdbe3c1052              # double 9.9916820000000008
	.quad	0x3fd5e18266772d5e              # double 0.341889
	.quad	0x400491bc55864452              # double 2.5711599999999999
	.quad	0x4023fa3b9ae0c176              # double 9.9887359999999994
	.quad	0x4022e3910c2c5e2d              # double 9.4444660000000002
	.quad	0x4015309d0635a427              # double 5.2974740000000002
	.quad	0x3fb9feb8d8234224              # double 0.10154299999999999
	.quad	0x40074faa4766c6de              # double 2.9138989999999998
	.quad	0x3fa81f969e3c9689              # double 0.047115999999999998
	.quad	0x3ffc2f1bac2df0d4              # double 1.761501
	.quad	0x3fc13f4a98aa8651              # double 0.134744
	.quad	0x40132348b220791c              # double 4.7844569999999997
	.quad	0x3ff64ea39c51dabe              # double 1.394199
	.quad	0x401cc3bea91d9b1b              # double 7.1911569999999996
	.quad	0x40212206e9ff0cbb              # double 8.566459
	.quad	0x400b992428d434a0              # double 3.449776
	.quad	0x401c8b9d3cbc48f1              # double 7.136342
	.quad	0x4010397e132b55ef              # double 4.0561449999999999
	.quad	0x400f7b79d909f1f1              # double 3.9352909999999999
	.quad	0x40166ae642bf9831              # double 5.6043940000000001
	.quad	0x3f88ac9f2fdb8fde              # double 0.012048
	.quad	0x401797fcb923a29c              # double 5.8984249999999996
	.quad	0x4015f012dfd694cd              # double 5.4844470000000003
	.quad	0x4020c6134ce3de61              # double 8.3868659999999995
	.quad	0x401f64202d9cf13d              # double 7.847779
	.quad	0x4009fc58ab92c062              # double 3.2482160000000002
	.quad	0x401543a3ec02f2fa              # double 5.3160550000000004
	.quad	0x400a612f901083dc              # double 3.2974540000000001
	.quad	0x402379b866e43aa8              # double 9.7377350000000006
	.quad	0x4018e7a072d1aeb4              # double 6.2261980000000001
	.quad	0x4021e0913a4f8727              # double 8.9386080000000003
	.quad	0x401af7db6e503fb3              # double 6.7420479999999996
	.quad	0x400065532617c1be              # double 2.0494750000000002
	.quad	0x3fd734e7685985ad              # double 0.36260399999999998
	.quad	0x4022d235f8099179              # double 9.4105679999999995
	.quad	0x4008979c842fa509              # double 3.0740289999999999
	.quad	0x400f0fdb8fde2ef5              # double 3.8827430000000001
	.quad	0x400bf5f02c4d65e4              # double 3.4950869999999998
	.quad	0x40208a8c9b845565              # double 8.2706040000000005
	.quad	0x40043c51dabe2718              # double 2.5294530000000002
	.quad	0x3fe9302d59d55e6c              # double 0.78713100000000002
	.quad	0x4015dababead4f59              # double 5.463603
	.quad	0x401dff0cbaf965b2              # double 7.499072
	.quad	0x3fb94163779e9d0f              # double 0.098654000000000006
	.quad	0x4006eefb2aae2974              # double 2.8666900000000002
	.quad	0x3ff1a478854cdb7b              # double 1.102654
	.quad	0x4019f33f85510d39              # double 6.4875470000000002
	.quad	0x401f0a1be2b4959e              # double 7.7598719999999997
	.quad	0x40109711947cfa27              # double 4.1475280000000003
	.quad	0x3fe636fe2e6ea854              # double 0.69421299999999997
	.quad	0x400110af5fd47bee              # double 2.1331470000000001
	.quad	0x40203a01cd5f99c4              # double 8.1132950000000008
	.quad	0x402253b1af3a14cf              # double 9.1634650000000004
	.quad	0x401658dda48b6523              # double 5.5867829999999996
	.quad	0x401331932d6ece14              # double 4.798413
	.quad	0x400d3d4f9c1f85d7              # double 3.6549369999999999
	.quad	0x4023b555e6bc621b              # double 9.8541709999999991
	.quad	0x40218af2d7f950b9              # double 8.7713839999999994
	.quad	0x3ff62d8b1dd5d3dd              # double 1.3861190000000001
	.quad	0x400d4bc83a96d4c3              # double 3.6620029999999999
	.quad	0x4003b45953586ca9              # double 2.4630610000000002
	.quad	0x40004a1be2b4959e              # double 2.0361859999999998
	.quad	0x3ff29a22f6a50d6b              # double 1.162631
	.quad	0x40078a087ca643cc              # double 2.942399
	.quad	0x400548b545c78a6e              # double 2.6605020000000001
	.quad	0x4015439d1b2e59b0              # double 5.3160290000000003
	.quad	0x400e9d8383ad9f0a              # double 3.826911
	.quad	0x3feacc87980f55de              # double 0.83746699999999996
	.quad	0x3ff580f88333fc87              # double 1.343987
	.quad	0x401f4ffda4052d66              # double 7.8281159999999996
	.quad	0x401e8c68ec52a412              # double 7.6371190000000002
	.quad	0x40183ababead4f59              # double 6.057353
	.quad	0x4022ffa11a975afb              # double 9.499276
	.quad	0x4020da16a4873366              # double 8.4259540000000008
	.quad	0x401585fdcdf69878              # double 5.3808509999999998
	.quad	0x4004b4eebf65dbfd              # double 2.588346
	.quad	0x401ec7c8d195896a              # double 7.6951020000000003
	.quad	0x402102e2541d8e86              # double 8.5056329999999996
	.quad	0x401e3e1f3a57eaa3              # double 7.5606660000000003
	.quad	0x401221f70de8f6cf              # double 4.533169
	.quad	0x4001dc1a47a9e2bd              # double 2.232472
	.quad	0x4014bf52b90a7829              # double 5.186839
	.quad	0x401132bd7f51efb7              # double 4.2995510000000001
	.quad	0x401cacae21101b00              # double 7.1686329999999998
	.quad	0x3ff675360d024702              # double 1.403616
	.quad	0x4015d98d045fe111              # double 5.4624519999999999
	.quad	0x4011acc037931444              # double 4.4187019999999997
	.quad	0x40068c58eeae9ee4              # double 2.8185289999999998
	.quad	0x3fdebc72e275ab7e              # double 0.48025200000000001
	.quad	0x3ffc601eeed8904f              # double 1.7734669999999999
	.quad	0x401f0a80cf9e3865              # double 7.7602570000000001
	.quad	0x401f9123c42a66dc              # double 7.8917380000000001
	.quad	0x40206a12513b5bf7              # double 8.2071710000000007
	.quad	0x3ff589f2fdb8fde3              # double 1.346179
	.quad	0x4021c7f27fe4bcae              # double 8.8905220000000007
	.quad	0x4023b487db2b3461              # double 9.8525989999999996
	.quad	0x40208a378ab0c88a              # double 8.2699549999999995
	.quad	0x40057b2cc70867ae              # double 2.6851440000000002
	.quad	0x401120be0ded288d              # double 4.2819750000000001
	.quad	0x401607b28954a7f8              # double 5.507517
	.quad	0x4023d9b4784230fd              # double 9.925205
	.quad	0x4023f471d6063172              # double 9.9774309999999993
	.quad	0x4003cdbd72bcb5fe              # double 2.4754589999999999
	.quad	0x401e3ff865d7cb2e              # double 7.5624710000000004
	.quad	0x40158de6ddf00abf              # double 5.3885759999999996
	.quad	0x401a658ab92c0618              # double 6.5991619999999998
	.quad	0x401b7d45e9185cee              # double 6.8723369999999999
	.quad	0x401c478feef5ec81              # double 7.0698850000000002
	.quad	0x4017564a59c065b6              # double 5.8342679999999998
	.quad	0x401a26d04e618ce3              # double 6.5379040000000002
	.quad	0x40228fabfb9bed31              # double 9.2806090000000001
	.quad	0x401d94eb13dfb0d5              # double 7.3954279999999999
	.quad	0x3fff9dda059a73b4              # double 1.976038
	.quad	0x4021cc76295208e1              # double 8.8993389999999994
	.quad	0x4011cdc768dfbd6a              # double 4.4509559999999997
	.quad	0x40186c2df0d41312              # double 6.1056439999999998
	.quad	0x401b630014f8b589              # double 6.8466800000000001
	.quad	0x40123f266ba493c9              # double 4.5616700000000003
	.quad	0x4015203a7546d3fa              # double 5.2814730000000001
	.quad	0x40056d056c508b33              # double 2.6782330000000001
	.quad	0x4000e8af81626b2f              # double 2.1136159999999999
	.quad	0x40238034d26fa3fd              # double 9.7504030000000003
	.quad	0x40172328b6d86ec1              # double 5.7843349999999996
	.quad	0x4022639bed30f063              # double 9.1945490000000003
	.quad	0x401cf409a2403148              # double 7.2383179999999996
	.quad	0x400608101f31f46f              # double 2.7539370000000001
	.quad	0x3fc57e0ac7da1ec5              # double 0.167909
	.quad	0x400d6f2d7f950b95              # double 3.6792859999999998
	.quad	0x401c6fd36f7e3d1d              # double 7.1092050000000002
	.quad	0x3ff74d4aa10e0221              # double 1.4563699999999999
	.quad	0x4022f92c49342678              # double 9.4866659999999995
	.quad	0x3feefc49fd7a13c2              # double 0.96829699999999996
	.quad	0x401220c34c1a8ac6              # double 4.5319950000000002
	.quad	0x401fefecdd0d8cb0              # double 7.9843019999999996
	.quad	0x40080c13b9f127f6              # double 3.005897
	.quad	0x4016f2ab68cef673              # double 5.7369820000000002
	.quad	0x4007c69595feda66              # double 2.971965
	.quad	0x401248b827fa1a0d              # double 4.5710150000000001
	.quad	0x4015bedd052934ad              # double 5.4363900000000003
	.quad	0x3ff59650a45d41fa              # double 1.3491979999999999
	.quad	0x40161b762d83c6c9              # double 5.5268179999999996
	.quad	0x4023ef04790b8499              # double 9.9668310000000008
	.quad	0x401213e4ef0281ba              # double 4.5194279999999996
	.quad	0x400dc51eb851eb85              # double 3.7212499999999999
	.quad	0x4021e3ebe1650a46              # double 8.9451590000000003
	.quad	0x4011760c7c0f4517              # double 4.3652819999999997
	.quad	0x4017393532e7b3d9              # double 5.8058670000000001
	.quad	0x4014be779207d4e1              # double 5.1860030000000004
	.quad	0x400438dc55000c95              # double 2.5277639999999999
	.quad	0x401b07967caea748              # double 6.7574100000000001
	.quad	0x40161e32a0663c75              # double 5.52949
	.quad	0x3ff7536a400fba88              # double 1.457865
	.quad	0x4022399a415f45e1              # double 9.1125050000000005
	.quad	0x3ffe55b78cc9a77e              # double 1.8959269999999999
	.quad	0x40225a437824d4cc              # double 9.1762960000000006
	.quad	0x401d6bc59b8023a7              # double 7.3552460000000002
	.quad	0x3ff92dddf43c7d5f              # double 1.573698
	.quad	0x40232ec6583e8577              # double 9.5913570000000003
	.quad	0x401cae96c3fc43b3              # double 7.1704970000000001
	.quad	0x40103264a16a4873              # double 4.0492119999999998
	.quad	0x40169b890d5a5b96              # double 5.6518899999999999
	.quad	0x3fcb57f737da61e1              # double 0.21362200000000001
	.quad	0x401982d0e5604189              # double 6.3777499999999998
	.quad	0x3fb30dc768dfbd6a              # double 0.074428999999999995
	.quad	0x400f313d74d594f2              # double 3.8990429999999998
	.quad	0x3fac73cd573647bb              # double 0.055571000000000002
	.quad	0x40156a0c6b484d77              # double 5.3535630000000003
	.quad	0x400f2275ab7dc7ac              # double 3.891826
	.quad	0x4012f9ef954eb13e              # double 4.744078
	.quad	0x401b459578a2a90d              # double 6.8179530000000002
	.quad	0x4019cc8d9f9053a0              # double 6.4497590000000002
	.quad	0x401df57470eb24a7              # double 7.4897020000000003
	.quad	0x400116598e10cf5b              # double 2.135913
	.quad	0x4012b9307af20ea6              # double 4.6808490000000003
	.quad	0x40106c33f85510d4              # double 4.1056670000000004
	.quad	0x402100f12c27a637              # double 8.5018399999999996
	.quad	0x4013f8ba40d90e24              # double 4.9928980000000003
	.quad	0x401e95058dde7a74              # double 7.6455289999999998
	.quad	0x4021b46bce8533b1              # double 8.8523849999999999
	.quad	0x3ff7b939a7c17a89              # double 1.482721
	.quad	0x4020e6555c52e72e              # double 8.4498700000000007
	.quad	0x4016c398e9707182              # double 5.6910129999999999
	.quad	0x400449906cca2db6              # double 2.53592
	.quad	0x4021a3415b1422cd              # double 8.8188580000000005
	.quad	0x40210651f3e89a89              # double 8.5123440000000006
	.quad	0x40199c59fb1e18f0              # double 6.4026870000000002
	.quad	0x401387aa25d8d79d              # double 4.882485
	.quad	0x3ff157d49d7ba66a              # double 1.0839430000000001
	.quad	0x401e1e34b945308c              # double 7.5294980000000002
	.quad	0x401d04d3bf2f5558              # double 7.2547139999999999
	.quad	0x3ff394801f75104d              # double 1.2237549999999999
	.quad	0x401415ff609dcf89              # double 5.0214819999999998
	.quad	0x3ff139df548ecd8e              # double 1.0766290000000001
	.quad	0x401106f0068db8bb              # double 4.2567750000000002
	.quad	0x401ac1b823c85c25              # double 6.6891790000000002
	.quad	0x4002de004b7f5a53              # double 2.3583989999999999
	.quad	0x4002ec625e99e94b              # double 2.3654220000000001
	.quad	0x40151e8bc169c23b              # double 5.2798299999999996
	.quad	0x401f26c0d6f544bb              # double 7.7878449999999999
	.quad	0x3ff84c8de2ac3223              # double 1.5186900000000001
	.quad	0x4006078d92fb19e7              # double 2.7536879999999999
	.quad	0x400739e492bc2fc7              # double 2.9032680000000002
	.quad	0x40231dd4845132f8              # double 9.5582619999999991
	.quad	0x4019cb35f3d7d391              # double 6.448448
	.quad	0x4014e2b9d3cbc48f              # double 5.2214119999999999
	.quad	0x400bf307af20ea5b              # double 3.4936669999999999
	.quad	0x40237ac5e2cdc012              # double 9.7397910000000003
	.quad	0x4017dbb8800eae19              # double 5.9645710000000003
	.quad	0x401a85fc3b4f6167              # double 6.6308449999999999
	.quad	0x401770a45d41fa76              # double 5.8600019999999997
	.quad	0x3fedb2074ea8da7f              # double 0.92798199999999997
	.quad	0x40139daceee0f3cb              # double 4.9039799999999998
	.quad	0x3fe23b4d48882f0e              # double 0.569739
	.quad	0x401de92d98bf7f06              # double 7.4777129999999996
	.quad	0x3fbfbaa9b499d020              # double 0.123942
	.quad	0x4006e749f0e4da0a              # double 2.8629340000000001
	.quad	0x400f0d477bbf93ff              # double 3.8814839999999999
	.quad	0x4013fa311e85fd05              # double 4.9943280000000003
	.quad	0x40030c9752977c89              # double 2.381148
	.quad	0x3ff18471b4784231              # double 1.094835
	.quad	0x4023520e6299524c              # double 9.660266
	.quad	0x4012ed27c3936827              # double 4.7315969999999998
	.quad	0x4019a0ebaade657c              # double 6.4071490000000004
	.quad	0x401f222962cfd8f1              # double 7.7833610000000001
	.quad	0x3fd6c49fd7a13c25              # double 0.35575099999999998
	.quad	0x3ff6a6a76965f527              # double 1.4156869999999999
	.quad	0x401e7c083126e979              # double 7.6211250000000001
	.quad	0x3ff353c89f40a287              # double 1.2079549999999999
	.quad	0x4023cc4ef88b9778              # double 9.8990399999999993
	.quad	0x4016a5ae1cde5d18              # double 5.661797
	.quad	0x400006887a8d64d8              # double 2.00319
	.quad	0x3fd7e96c3fc43b2e              # double 0.37362200000000001
	.quad	0x40201c4b2b777d0f              # double 8.0552609999999998
	.quad	0x400dd778dd616f87              # double 3.7302110000000002
	.quad	0x3fadd851654d61b3              # double 0.058291000000000003
	.quad	0x3fc92dfd694ccab4              # double 0.196716
	.quad	0x40179f5232d2bb23              # double 5.9055869999999997
	.quad	0x3fc7a89b951c5c57              # double 0.184833
	.quad	0x3fdcbaecd07852f8              # double 0.448909
	.quad	0x4021cc5308bb9064              # double 8.8990709999999992
	.quad	0x40185fa2ad3e920c              # double 6.093394
	.quad	0x401d7f14db59578a              # double 7.3741029999999999
	.quad	0x401cd250b524399b              # double 7.2053859999999998
	.quad	0x3ff51014b599aa61              # double 1.3164260000000001
	.quad	0x4010a0c9539b8887              # double 4.1570179999999999
	.quad	0x40158423d9231c65              # double 5.3790430000000002
	.quad	0x40129d651b0ccbc0              # double 4.6537059999999997
	.quad	0x402318fe260b2c84              # double 9.5488140000000001
	.quad	0x4003a80cf9e3864d              # double 2.4570560000000001
	.quad	0x40217213e3e29308              # double 8.7228080000000006
	.quad	0x400064bd33d29564              # double 2.0491890000000001
	.quad	0x401b55171e29b6b3              # double 6.8330960000000003
	.quad	0x400d695d0b73d189              # double 3.676447
	.quad	0x400ac96030c23fab              # double 3.348328
	.quad	0x400caed245b291b8              # double 3.5853619999999999
	.quad	0x401f94f3343fa2ad              # double 7.8954589999999997
	.quad	0x401d3a919695d91b              # double 7.3071960000000002
	.quad	0x401fe48b65237048              # double 7.9731880000000003
	.quad	0x40001fb2edfe75bc              # double 2.0154779999999999
	.quad	0x3ff078854cdb7ae5              # double 1.0294239999999999
	.quad	0x401ba1e3a7daa4fd              # double 6.9080950000000003
	.quad	0x3ff2c47f562174c5              # double 1.172973
	.quad	0x40189bd273d5bab2              # double 6.1521699999999999
	.quad	0x4011e99ed7c6fbd2              # double 4.4781449999999996
	.quad	0x3ffd2d57bc7f77af              # double 1.8235699999999999
	.quad	0x401b800cd855970b              # double 6.8750489999999997
	.quad	0x4013f7a13c254a3c              # double 4.9918259999999997
	.quad	0x40225b25f633ce64              # double 9.1780240000000006
	.quad	0x4021d4a2db61bb06              # double 8.915305
	.quad	0x4023e767903211cb              # double 9.9519619999999999
	.quad	0x3fd5f19934efcbd5              # double 0.34287099999999998
	.quad	0x401df96a6a01259a              # double 7.4935700000000001
	.quad	0x4010734267839cd8              # double 4.1125579999999999
	.quad	0x3fe03430f49491f3              # double 0.50637100000000002
	.quad	0x401880d1fa333765              # double 6.1258010000000001
	.quad	0x4020dafd75e2046c              # double 8.4277149999999991
	.quad	0x40233ccb9ecf6380              # double 9.618741
	.quad	0x400fec2acb85a4f0              # double 3.990316
	.quad	0x401e90624dd2f1aa              # double 7.641
	.quad	0x4010912c27a63737              # double 4.1417700000000002
	.quad	0x3ffd99be4cd74928              # double 1.8500350000000001
	.quad	0x401ade53a81dc0db              # double 6.7171159999999999
	.quad	0x400b9e3864cb5bb4              # double 3.4522560000000002
	.quad	0x4022070e90bc7b46              # double 9.0137830000000001
	.quad	0x401c07c0b1359792              # double 7.0075710000000004
	.quad	0x4016ac02f2f98740              # double 5.66798
	.quad	0x40021d883ba3443d              # double 2.2644199999999999
	.quad	0x401afbd1676640a7              # double 6.7459160000000002
	.quad	0x3fef67bc3c5bd0e1              # double 0.98141299999999997
	.quad	0x4004dfc115df6556              # double 2.6092550000000001
	.quad	0x401f4d234eb9a177              # double 7.8253300000000001
	.quad	0x3fd1e779207d4e09              # double 0.27975299999999997
	.quad	0x401409c12f09d8c7              # double 5.0095260000000001
	.quad	0x402162363b256ffc              # double 8.6918199999999998
	.quad	0x4015dafc8b0079a3              # double 5.4638540000000004
	.quad	0x3fea540cc78e9f6b              # double 0.82276000000000005
	.quad	0x401b391f70de8f6d              # double 6.8057840000000001
	.quad	0x4023a934267839ce              # double 9.8304760000000009
	.quad	0x400d8053e2d6238e              # double 3.6876600000000002
	.quad	0x4006549f0e4da09d              # double 2.7913190000000001
	.quad	0x4015c3e8dda48b65              # double 5.4413179999999999
	.quad	0x401b92b3461309c8              # double 6.893262
	.quad	0x3ffb58409e55c0fd              # double 1.7090460000000001
	.quad	0x4010debbfd71b047              # double 4.2175140000000004
	.quad	0x401f58051c9f72f7              # double 7.8359569999999996
	.quad	0x40126af20ea5b531              # double 4.6044390000000002
	.quad	0x40218df9bdc69f8c              # double 8.7772959999999997
	.quad	0x400281e603d57796              # double 2.3134269999999999
	.quad	0x40170d06bbdbe3c1              # double 5.762721
	.quad	0x4010932df505d0fa              # double 4.1437299999999997
	.quad	0x3fe423ad18d25edd              # double 0.629355
	.quad	0x4023aa4180d3cff6              # double 9.8325309999999995
	.quad	0x4023245a8155d5f5              # double 9.5710029999999992
	.quad	0x401bdca57a786c22              # double 6.9654749999999996
	.quad	0x4020aea550870111              # double 8.3411050000000007
	.quad	0x40211b29c347e8cd              # double 8.5530530000000002
	.quad	0x401868b71b8aa002              # double 6.1022610000000004
	.quad	0x3fd68beb5b2d4d40              # double 0.35228999999999999
	.quad	0x401253df6db940ff              # double 4.5819070000000002
	.quad	0x401bf2089e34330d              # double 6.9863609999999996
	.quad	0x400836abde3fbbd8              # double 3.0266950000000001
	.quad	0x4017085d744f5d35              # double 5.7581689999999996
	.quad	0x400f0624dd2f1aa0              # double 3.8780000000000001
	.quad	0x400f5ebaf102363b              # double 3.9212549999999999
	.quad	0x40135cca70d1fa33              # double 4.8406159999999998
	.quad	0x400f276e1deacc92              # double 3.894253
	.quad	0x4001fb5286b59147              # double 2.247716
	.quad	0x40132b9d7fd82774              # double 4.7925930000000001
	.quad	0x400d0f038e29f9cf              # double 3.6323310000000002
	.quad	0x400a01c475e6362a              # double 3.2508629999999998
	.quad	0x4021922c881e4713              # double 8.7854960000000002
	.quad	0x3ff283c18b502abb              # double 1.1571670000000001
	.quad	0x3ff0ae935b91f70e              # double 1.042621
	.quad	0x3ff48b0e1b4bb5e1              # double 1.283949
	.quad	0x401335f45e0b4e12              # double 4.8026900000000001
	.quad	0x402035adfb506dd7              # double 8.1048430000000007
	.quad	0x402043d987c6327f              # double 8.1325190000000003
	.quad	0x402351b584b1ab08              # double 9.6595879999999993
	.quad	0x3ffaa15336deb95e              # double 1.6643859999999999
	.quad	0x401dcf398e970718              # double 7.4523679999999998
	.quad	0x4001480b673c4f3c              # double 2.1601780000000002
	.quad	0x3ff55cde5d18090b              # double 1.3351729999999999
	.quad	0x4021163d3e4ef028              # double 8.5434359999999998
	.quad	0x401d0aed99cbee80              # double 7.2606719999999996
	.quad	0x401fde5753a3ec03              # double 7.96713
	.quad	0x40016cfe9b7bf1e9              # double 2.17822
	.quad	0x4011fdbcec84f8f9              # double 4.4977910000000003
	.quad	0x3fffdba7fc32ebe6              # double 1.9911270000000001
	.quad	0x4020f60008637bd0              # double 8.4804689999999994
	.quad	0x401bebce8533b107              # double 6.9802799999999996
	.quad	0x4003707faa044ae8              # double 2.4299309999999998
	.quad	0x3ff147b677f6b1a3              # double 1.0800080000000001
	.quad	0x40202b0489d27c39              # double 8.0840189999999996
	.quad	0x3ffc76d97b30f8c6              # double 1.7790159999999999
	.quad	0x40203ffcdab191de              # double 8.1249760000000002
	.quad	0x3fbcd4ed2cbea4ec              # double 0.112624
	.quad	0x3ff1a01de2691644              # double 1.101591
	.quad	0x40126c88e79aae6d              # double 4.6059910000000004
	.quad	0x402167b506dd69d3              # double 8.702553
	.quad	0x4018694ccab3edd9              # double 6.1028320000000003
	.quad	0x4016693682730c67              # double 5.6027469999999999
	.quad	0x3fe0bd4f15e7c8d2              # double 0.52310900000000005
	.quad	0x3fd2baf102363b25              # double 0.29265999999999998
	.quad	0x401495821294573a              # double 5.1460039999999996
	.quad	0x40060da661283904              # double 2.7566649999999999
	.quad	0x40213dd7ecbb7f9d              # double 8.6207879999999992
	.quad	0x4022057dbf487fcc              # double 9.0107250000000007
	.quad	0x3ffb705b7cfe5860              # double 1.714931
	.quad	0x4015eec204f2ae08              # double 5.4831620000000001
	.quad	0x40228c2699c7bcc3              # double 9.2737320000000008
	.quad	0x401df9b8887229e9              # double 7.4938679999999999
	.quad	0x402034968943e100              # double 8.1027109999999993
	.quad	0x4022850763a19008              # double 9.2598219999999997
	.quad	0x401bcdcebfec13ba              # double 6.9509840000000001
	.quad	0x40238ead4f5903a7              # double 9.7786659999999994
	.quad	0x4000bddfc9ff92f3              # double 2.0927120000000001
	.quad	0x4021b46f15619115              # double 8.8524100000000008
	.quad	0x3fd0d8cb07d0aeda              # double 0.26323200000000002
	.quad	0x400f3e28aa433509              # double 3.905351
	.quad	0x4010b2cc70867ad9              # double 4.1746080000000001
	.quad	0x401c6accd530489d              # double 7.1042969999999999
	.quad	0x401d4290eed02cd4              # double 7.3150060000000003
	.quad	0x4001eca9ac365450              # double 2.240558
	.quad	0x40108347a5b0ff11              # double 4.1282030000000001
	.quad	0x4015c0331e3a7daa              # double 5.4376949999999997
	.quad	0x40162507e9d94d0e              # double 5.5361630000000002
	.quad	0x40113cd78c436fc1              # double 4.3094159999999997
	.quad	0x3ffcc9ecb31c219f              # double 1.7992980000000001
	.quad	0x40233d28ae74f2f1              # double 9.6194509999999997
	.quad	0x4015264ece9a2c67              # double 5.2874100000000004
	.quad	0x3fefe6687f455a7d              # double 0.99687599999999998
	.quad	0x401ed0b9dc2f405f              # double 7.7038339999999996
	.quad	0x40114623d0bfa094              # double 4.3184959999999997
	.quad	0x3fdefbe76c8b4396              # double 0.48412500000000003
	.quad	0x40210851654d61b3              # double 8.5162460000000006
	.quad	0x400d8308787485e4              # double 3.6889810000000001
	.quad	0x40200a3ca7503b82              # double 8.0199940000000005
	.quad	0x4013a25529fe004b              # double 4.9085279999999996
	.quad	0x3fdc9bbadc0980b2              # double 0.44700499999999999
	.quad	0x3ffd82e9899bf594              # double 1.8444609999999999
	.quad	0x4020129c347e8cce              # double 8.0363480000000003
	.quad	0x3ff2963cb8173322              # double 1.1616789999999999
	.quad	0x400ef6c7a7c9de05              # double 3.870498
	.quad	0x401409e774eebf66              # double 5.0096720000000001
	.quad	0x401c0821294573a8              # double 7.0079390000000004
	.quad	0x3ffb8b9dc2f405f7              # double 1.7215860000000001
	.quad	0x402213dfd2630ec3              # double 9.0388169999999999
	.quad	0x4018d41461b6d43d              # double 6.207109
	.quad	0x3ffaa6e115592d99              # double 1.6657420000000001
	.quad	0x400a240d90e23af3              # double 3.267604
	.quad	0x401a06256366d7a5              # double 6.5060019999999996
	.quad	0x4014b6e32e3821af              # double 5.1786009999999996
	.quad	0x4015889c5e6ff7e0              # double 5.3834090000000003
	.quad	0x40110ba94bbe4474              # double 4.2613880000000002
	.quad	0x40223584f4c6e6da              # double 9.1045300000000005
	.quad	0x401433ce2089e343              # double 5.0505909999999998
	.quad	0x3ffbbaa044ae85ba              # double 1.733063
	.quad	0x4023e3bc6eb0b7c3              # double 9.9447969999999994
	.quad	0x401b9a0ba1f4b1ee              # double 6.9004349999999999
	.quad	0x4009135daad60200              # double 3.1344560000000001
	.quad	0x40119a3ec02f2f98              # double 4.4006299999999996
	.quad	0x401b84d4024b33db              # double 6.879715
	.quad	0x400ed07af20ea5b5              # double 3.8517969999999999
	.quad	0x401d839eadd590c1              # double 7.3785350000000003
	.quad	0x3ff3f6b3bb83cf2d              # double 1.24773
	.quad	0x4018e6c8711d798e              # double 6.2253740000000004
	.quad	0x3ff948d6d3b6cbda              # double 1.5802830000000001
	.quad	0x401f1bfad2999568              # double 7.7773240000000001
	.quad	0x4007f3de1e2de871              # double 2.9940760000000002
	.quad	0x40125dbbe0157eed              # double 4.5915369999999998
	.quad	0x40108e2cdc011d36              # double 4.1388429999999996
	.quad	0x3ff60b945308bb90              # double 1.3778269999999999
	.quad	0x401457d1351159c5              # double 5.0857590000000004
	.quad	0x4020768900c521de              # double 8.2315140000000007
	.quad	0x40239bf42352eb5f              # double 9.8045969999999993
	.quad	0x3ffa300de4c51117              # double 1.6367320000000001
	.quad	0x4023ee2de8709742              # double 9.9651940000000003
	.quad	0x402095d334c5da6a              # double 8.2926269999999995
	.quad	0x40126e542e557de1              # double 4.6077430000000001
	.quad	0x40207742bb6672fc              # double 8.2329310000000006
	.quad	0x3ff75cde5d18090b              # double 1.4601729999999999
	.quad	0x3ff5014a4d2b2bfe              # double 1.3128150000000001
	.quad	0x4021dbd35eb7457c              # double 8.9293469999999999
	.quad	0x4023a26d698fe692              # double 9.8172409999999992
	.quad	0x40226cf1a1986b9c              # double 9.2127809999999996
	.quad	0x3faf6683c297bfa5              # double 0.061329000000000002
	.quad	0x4023e35aa715831f              # double 9.9440509999999999
	.quad	0x3fc7308bb906466b              # double 0.181169
	.quad	0x4019b315d701d9f5              # double 6.4248880000000002
	.quad	0x3ff94afd5454152b              # double 1.580808
	.quad	0x4022aa52263d816b              # double 9.3326580000000003
	.quad	0x40193083126e978d              # double 6.2973749999999997
	.quad	0x401b21acde19fc2b              # double 6.7828860000000004
	.quad	0x4015a77e1b8ed1bf              # double 5.4135669999999996
	.quad	0x401e022bbecaab8a              # double 7.5021199999999997
	.quad	0x4016267f0aa21a72              # double 5.5375940000000003
	.quad	0x401ca7e56473471f              # double 7.1639609999999996
	.quad	0x4013258d1526d8b2              # double 4.7866710000000001
	.quad	0x401d92ec6bce8534              # double 7.3934800000000003
	.quad	0x4007a6fd651b0ccc              # double 2.9565380000000001
	.quad	0x3fcfe3f359ff4fd7              # double 0.249144
	.quad	0x40076f8a4c1ebc84              # double 2.9294630000000002
	.quad	0x401b21dc50ce4ead              # double 6.783067
	.quad	0x401fa9ecf6380022              # double 7.9159430000000004
	.quad	0x4012bba55d1c3ac9              # double 4.6832479999999999
	.quad	0x4023473f748a1598              # double 9.6391559999999998
	.quad	0x40204023e9ea1405              # double 8.1252739999999992
	.quad	0x402270eed02cd39e              # double 9.2205720000000007
	.quad	0x4019194b380cb6c8              # double 6.2747010000000003
	.quad	0x40207a6c3b927d46              # double 8.2391070000000006
	.quad	0x40225da426bb55ac              # double 9.1828929999999999
	.quad	0x4023d455432873bd              # double 9.9147130000000007
	.quad	0x4022537c99ae924f              # double 9.1630599999999998
	.quad	0x40195cd3e0bd449a              # double 6.3406520000000004
	.quad	0x3ff29be6e6538690              # double 1.163062
	.quad	0x400103c105186db5              # double 2.126833
	.quad	0x4023b492ddbdb5d9              # double 9.8526830000000007
	.quad	0x40218cd22c881e47              # double 8.7750409999999999
	.quad	0x40198a055757d5aa              # double 6.3847860000000001
	.quad	0x401718e5c4eb56fc              # double 5.7743140000000004
	.quad	0x40106a6ce358298d              # double 4.1039310000000002
	.quad	0x400a0188b11409a2              # double 3.2507489999999999
	.quad	0x4013f467be553ac5              # double 4.988677
	.quad	0x40239cbe40420f6f              # double 9.8061389999999999
	.quad	0x400a645b291b823d              # double 3.2990020000000002
	.quad	0x40135cb70ac3a861              # double 4.8405420000000001
	.quad	0x3ffef64adff822bc              # double 1.93513
	.quad	0x401052c16df3f962              # double 4.0808160000000004
	.quad	0x4010e9f2ba9d1f60              # double 4.2284649999999999
	.quad	0x401d34d551d68c69              # double 7.3015949999999998
	.quad	0x3fe81294573a7979              # double 0.75226800000000005
	.quad	0x402150769ec2ce46              # double 8.6571549999999995
	.quad	0x401dbf28c79f6662              # double 7.4366789999999998
	.quad	0x400f35f3519bd406              # double 3.9013429999999998
	.quad	0x401ad28672756862              # double 6.7055910000000001
	.quad	0x400f1542a23bff8b              # double 3.8853810000000002
	.quad	0x401a6f78bbd38045              # double 6.6088589999999998
	.quad	0x4018cc343b70ef56              # double 6.1994179999999997
	.quad	0x401b06ba493c89f4              # double 6.75657
	.quad	0x400fdcc6c54bcf0b              # double 3.9828009999999998
	.quad	0x4020ff8a0902de01              # double 8.4991000000000003
	.quad	0x401b2b6177ea1c69              # double 6.7923640000000001
	.quad	0x40176fcd67fd3f5b              # double 5.8591819999999997
	.quad	0x4015af33ca31e7da              # double 5.4210960000000004
	.quad	0x401551f601797cc4              # double 5.3300400000000003
	.quad	0x4021e37fbefd0071              # double 8.9443339999999996
	.quad	0x3faa363b256ffc11              # double 0.051194999999999997
	.quad	0x3ff9a1c58255b036              # double 1.6019950000000001
	.quad	0x400e3004fb1183b6              # double 3.773447
	.quad	0x3ffa53d5347a5b10              # double 1.645467
	.quad	0x3ffa783f0bae89ec              # double 1.6543570000000001
	.quad	0x40158baa9b499d02              # double 5.386393
	.quad	0x401c570d62bf11f9              # double 7.0850119999999999
	.quad	0x40012af5771001d6              # double 2.1459760000000001
	.quad	0x400d2e95faa8a82a              # double 3.6477469999999999
	.quad	0x400b6e6c093d9664              # double 3.4289170000000002
	.quad	0x3fb4a4f440af1cb9              # double 0.080642000000000005
	.quad	0x402186aad1d041cc              # double 8.7630219999999994
	.quad	0x401bce820e629952              # double 6.9516679999999997
	.quad	0x40205396af038e2a              # double 8.163259
	.quad	0x401b23bd9cae2110              # double 6.7849029999999999
	.quad	0x3fe2fc914b167ec8              # double 0.59333100000000005
	.quad	0x4017b09f623076c0              # double 5.9224829999999997
	.quad	0x401397fa1a0cf180              # double 4.898415
	.quad	0x4017487c6327ed85              # double 5.8207870000000002
	.quad	0x4016da7c5ac471b4              # double 5.7133649999999996
	.quad	0x4022e7be121ee675              # double 9.4526219999999998
	.quad	0x401ac8eb8950763a              # double 6.6962109999999999
	.quad	0x40221ba29c779a6b              # double 9.0539749999999994
	.quad	0x4012108a265f0f5a              # double 4.5161519999999999
	.quad	0x3fedc443914f483d              # double 0.93020800000000003
	.quad	0x4020dc3f811f4f51              # double 8.4301720000000007
	.quad	0x401a886cebbba55d              # double 6.6332279999999999
	.quad	0x40015a7f3cf70154              # double 2.1691880000000001
	.quad	0x40202f03d145d851              # double 8.0918259999999993
	.quad	0x3ffac199fe43675e              # double 1.672266
	.quad	0x3fd863779e9d0e99              # double 0.38107099999999999
	.quad	0x401cdb5e95b78cca              # double 7.2142280000000003
	.quad	0x4006e800eae18aca              # double 2.863283
	.quad	0x4020bb88a8b08dd2              # double 8.3662770000000002
	.quad	0x4020ff3c0c1fc8f3              # double 8.4985049999999998
	.quad	0x4022b7969e3c9689              # double 9.3585709999999995
	.quad	0x40112d6e04c05921              # double 4.294365
	.quad	0x401ddbc44bf4cb19              # double 7.4646160000000004
	.quad	0x401cc8383ad9f0a2              # double 7.1955270000000002
	.quad	0x4002ca8eb463497b              # double 2.3489049999999998
	.quad	0x401079b413986339              # double 4.1188510000000003
	.quad	0x402054df8b157258              # double 8.1657679999999999
	.quad	0x40054f9e3864cb5c              # double 2.6638760000000001
	.quad	0x401b4acb85a4f00f              # double 6.8230420000000001
	.quad	0x40201c58ab92c062              # double 8.0553640000000009
	.quad	0x4022a9f57b41bfbe              # double 9.3319510000000001
	.quad	0x40104a13c254a3c6              # double 4.0723409999999998
	.quad	0x401f1d5f99c38b05              # double 7.7786850000000002
	.quad	0x4020e357603925bb              # double 8.4440259999999991
	.quad	0x3fc6c9d9d3458cd2              # double 0.178035
	.quad	0x3fef944ed6fda837              # double 0.986854
	.quad	0x400c0ce5710880d8              # double 3.506297
	.quad	0x400a1ed7c6fbd274              # double 3.2650600000000001
	.quad	0x401506687f455a7d              # double 5.2562579999999999
	.quad	0x4006bb6aa4b9884c              # double 2.8415119999999998
	.quad	0x4020136d22424a27              # double 8.0379419999999993
	.quad	0x3f8af6c69b5a63fa              # double 0.013166000000000001
	.quad	0x4014643c7d5ed070              # double 5.0978870000000001
	.quad	0x3ff9a21a719b4dcf              # double 1.6020760000000001
	.quad	0x401bec2b0ea18373              # double 6.9806330000000001
	.quad	0x401c9aa7ded6ba8c              # double 7.1510309999999997
	.quad	0x400be9fd7a13c255              # double 3.4892530000000002
	.quad	0x400b52c83ec892ab              # double 3.4154209999999998
	.quad	0x40101df9378ee286              # double 4.0292709999999996
	.quad	0x4009e62888b545c8              # double 3.2373820000000002
	.quad	0x3ff8de8f6cefed63              # double 1.5543359999999999
	.quad	0x400e2cc3e3193f6c              # double 3.7718579999999999
	.quad	0x402070ae74f2f124              # double 8.2200810000000004
	.quad	0x40216651d25aab47              # double 8.6998429999999995
	.quad	0x4023f90214ad362f              # double 9.9863440000000007
	.quad	0x4011fd035371971c              # double 4.4970829999999999
	.quad	0x4012605dd8f92afa              # double 4.5941080000000003
	.quad	0x4008a845996744b3              # double 3.0821640000000001
	.quad	0x4016451f3e89a88b              # double 5.5675020000000002
	.quad	0x4020e9cd8127b2cc              # double 8.4566459999999992
	.quad	0x3fd98d1d8a548238              # double 0.39923799999999998
	.quad	0x40109ee0b0af5fd4              # double 4.1551539999999996
	.quad	0x4023f943bf727137              # double 9.9868450000000006
	.quad	0x400b8550870110a1              # double 3.4400949999999999
	.quad	0x40177ed740c4156e              # double 5.8738679999999999
	.quad	0x4020828b8f14db59              # double 8.2549709999999994
	.quad	0x401a9d698fe69271              # double 6.6537230000000003
	.quad	0x3feeba109d0635a4              # double 0.96021299999999998
	.quad	0x40191714fce746cc              # double 6.2725410000000004
	.quad	0x4019d29a5ebb773a              # double 6.455667
	.quad	0x40019161a1db877b              # double 2.1959870000000001
	.quad	0x4021d940789613d3              # double 8.9243199999999998
	.quad	0x4008738cda6e75ff              # double 3.0564209999999998
	.quad	0x40028213a0c6b485              # double 2.3135140000000001
	.quad	0x3ffec53e2d6238da              # double 1.9231549999999999
	.quad	0x4021774cf4a558ea              # double 8.7330089999999991
	.quad	0x4016b22962cfd8f1              # double 5.6739860000000002
	.quad	0x40220519bd4067cf              # double 9.0099619999999998
	.quad	0x40237f7c243dccea              # double 9.7489939999999997
	.quad	0x3ff5a2ab25b317f0              # double 1.352214
	.quad	0x402393cf0b6b6e0d              # double 9.7886889999999997
	.quad	0x40205c82be8bc16a              # double 8.1806850000000004
	.quad	0x401a69841aac53b1              # double 6.6030430000000004
	.quad	0x3ff795c31593e5fb              # double 1.4740629999999999
	.quad	0x401f9e8101f31f47              # double 7.904789
	.quad	0x4001ca4e379b77c0              # double 2.2237819999999999
	.quad	0x40224d7214f0520d              # double 9.1512609999999999
	.quad	0x4010819ef954eb14              # double 4.1265830000000001
	.quad	0x40143d0c80410300              # double 5.0596180000000004
	.quad	0x4023e9719f7f8ca8              # double 9.9559449999999998
	.quad	0x4020c98aeb80ecfa              # double 8.3936379999999993
	.quad	0x401b302ff8ec0f88              # double 6.7970579999999998
	.quad	0x4016a76709fa54c5              # double 5.6634789999999997
	.quad	0x401d9efb2aae2974              # double 7.4052550000000004
	.quad	0x401959068986fcdf              # double 6.3369390000000001
	.quad	0x400c0ffda4052d66              # double 3.5078079999999998
	.quad	0x400623be6601bc99              # double 2.7674530000000002
	.quad	0x3ff9d454152b0a70              # double 1.6143380000000001
	.quad	0x4016c92c061847f5              # double 5.6964569999999997
	.quad	0x400659999999999a              # double 2.7937500000000002
	.quad	0x40227d6ece13f4aa              # double 9.2449860000000008
	.quad	0x4019a3d3e4ef0282              # double 6.4099880000000002
	.quad	0x40230efd21ff2e49              # double 9.5292750000000001
	.quad	0x4014057d9dba908a              # double 5.0053619999999999
	.quad	0x4016d70329802c0a              # double 5.7099729999999997
	.quad	0x4011b48f96e15875              # double 4.426329
	.quad	0x402387d805e5f30e              # double 9.7653199999999991
	.quad	0x4007e5985ad538ac              # double 2.987107
	.quad	0x4022a847d3d4280b              # double 9.3286730000000002
	.quad	0x401a8f0a5efe9318              # double 6.6396879999999996
	.quad	0x3ffbddc93ea2d2fe              # double 1.7416469999999999
	.quad	0x401bee90364388ec              # double 6.9829720000000002
	.quad	0x400f1260f5e41d4b              # double 3.8839739999999998
	.quad	0x40139e4473cd5736              # double 4.9045579999999998
	.quad	0x401a355e6bc621b8              # double 6.5521180000000001
	.quad	0x40223beab367a0f9              # double 9.1170249999999999
	.quad	0x3fa0624dd2f1a9fc              # double 0.032000000000000001
	.quad	0x40221cf9e3864cb6              # double 9.0565940000000005
	.quad	0x402101bf5946c333              # double 8.5034130000000001
	.quad	0x401fe7f38c5436b9              # double 7.976515
	.quad	0x4022a7991bc55864              # double 9.3273399999999995
	.quad	0x4023428c586876e2              # double 9.6299770000000002
	.quad	0x402207ff151e7536              # double 9.0156179999999999
	.quad	0x4003736b4c7f3494              # double 2.4313570000000002
	.quad	0x400b3963992c8c50              # double 3.403022
	.quad	0x40196fb2aae29739              # double 6.3590799999999996
	.quad	0x400b7701d9f4d37c              # double 3.433109
	.quad	0x401b9cd184c27200              # double 6.903143
	.quad	0x40177163fdd65a14              # double 5.8607329999999997
	.quad	0x401ef098d477bbf9              # double 7.7349579999999997
	.quad	0x400f61426fe718a8              # double 3.9224899999999998
	.quad	0x401f37de939eadd6              # double 7.8045600000000004
	.quad	0x401a3a7f8012dfd7              # double 6.5571270000000004
	.quad	0x4021c56f112fd32c              # double 8.8856129999999993
	.quad	0x4023c88effe2a3cf              # double 9.8917160000000006
	.quad	0x3f8820a30db6a1e8              # double 0.011781
	.quad	0x40225d8d5842b735              # double 9.1827190000000005
	.quad	0x40235b5eb7457c0b              # double 9.6784569999999998
	.quad	0x3ff58a5269595fee              # double 1.3462700000000001
	.quad	0x3fdc091c087442c8              # double 0.438056
	.quad	0x40056ed3d859c8c9              # double 2.6791149999999999
	.quad	0x4021aae44b6e935c              # double 8.8337730000000007
	.quad	0x3fd228848387df5d              # double 0.283723
	.quad	0x40211951e75360d0              # double 8.5494529999999997
	.quad	0x3ffdb504c48adeec              # double 1.8566940000000001
	.quad	0x4021886e3b46fdeb              # double 8.7664659999999994
	.quad	0x401b821815a07b35              # double 6.8770449999999999
	.quad	0x4018cf3387160957              # double 6.2023450000000002
	.quad	0x3ff8443e5321e604              # double 1.516661
	.quad	0x40151138fffbce42              # double 5.2668189999999999
	.quad	0x40146ff2a172abef              # double 5.109324
	.quad	0x4005466559f6ec5b              # double 2.659373
	.quad	0x40075f63c31df762              # double 2.9215770000000001
	.quad	0x401f1a7589efd86b              # double 7.7758390000000003
	.quad	0x400ef67d34df04de              # double 3.8703560000000001
	.quad	0x4011ca5b0ff10ecb              # double 4.4476129999999996
	.quad	0x40175cf9a06a6e33              # double 5.8407960000000001
	.quad	0x4001f9d909f1f14a              # double 2.2469960000000002
	.quad	0x4021068f6cefed63              # double 8.5128129999999995
	.quad	0x4023f250b524399b              # double 9.9732719999999996
	.quad	0x4010a64e054690de              # double 4.162407
	.quad	0x3ff1fdea465a5764              # double 1.1244909999999999
	.quad	0x3ff6bd6733ebbfd7              # double 1.421241
	.quad	0x3ffc6ecbfb15b574              # double 1.77705
	.quad	0x40146f041461b6d4              # double 5.1084139999999998
	.quad	0x4003316872b020c5              # double 2.3991250000000002
	.quad	0x4021fcaf2d7f950c              # double 8.9935240000000007
	.quad	0x4021a8420f6f08cc              # double 8.8286289999999993
	.quad	0x4018ac70c996b767              # double 6.168399
	.quad	0x4005b77c02afdda9              # double 2.7145920000000001
	.quad	0x40022a0fd3b29a1c              # double 2.2705380000000002
	.quad	0x400bb53cddd6e04c              # double 3.463495
	.quad	0x40161b7952d234ec              # double 5.5268300000000004
	.quad	0x3ff70c6b484d76ab              # double 1.4405319999999999
	.quad	0x3fffe222d5171e2a              # double 1.9927090000000001
	.quad	0x4015d8aa00192a73              # double 5.4615859999999996
	.quad	0x401c2cf312b1b36c              # double 7.0438960000000002
	.quad	0x400e617a89331a09              # double 3.7975970000000001
	.quad	0x3fdfa26e5471715c              # double 0.49428899999999998
	.quad	0x4002f0c9107faa04              # double 2.3675709999999999
	.quad	0x40214e295208e150              # double 8.6526589999999999
	.quad	0x3fe07625204af923              # double 0.51442200000000005
	.quad	0x4017764fdb09a672              # double 5.8655390000000001
	.quad	0x401243da72a7bd49              # double 4.5662630000000002
	.quad	0x40235e3992c8c500              # double 9.6840329999999994
	.quad	0x401d978705425f20              # double 7.3979759999999999
	.quad	0x4002a52f7f498c3b              # double 2.330657
	.quad	0x4010a5e2478854ce              # double 4.1619960000000003
	.quad	0x4018b08b32ce8965              # double 6.1724059999999996
	.quad	0x4017fa250f840182              # double 5.9942820000000001
	.quad	0x4002940bbb1f255f              # double 2.3222879999999999
	.quad	0x3ffcba92a3055326              # double 1.79555
	.quad	0x4021e013879c4114              # double 8.9376490000000003
	.quad	0x4009d8ff75968512              # double 3.2309559999999999
	.quad	0x40199b00ffda4053              # double 6.4013710000000001
	.quad	0x401719a9973d9ec7              # double 5.775061
	.quad	0x400ad1159c497742              # double 3.3520919999999998
	.quad	0x4011d2d490e66cb1              # double 4.455889
	.quad	0x4009fa51a005c465              # double 3.2472259999999999
	.quad	0x401341f53825e13b              # double 4.8144119999999999
	.quad	0x40083d9ec7000432              # double 3.0300880000000001
	.quad	0x401ee141a6937d20              # double 7.7199770000000001
	.quad	0x401c6e62131a8ef7              # double 7.1077959999999996
	.quad	0x4020db7e0ac7da1f              # double 8.4286960000000004
	.quad	0x3ffcb6d43d03968d              # double 1.7946359999999999
	.quad	0x4011f6412cf0f9d3              # double 4.4904830000000002
	.quad	0x401ba0e1f7d73c92              # double 6.9071119999999997
	.quad	0x401e080d3cff64d0              # double 7.5078630000000004
	.quad	0x4021503e20ccff22              # double 8.6567240000000005
	.quad	0x3ff26fee6fb4c3c2              # double 1.1523270000000001
	.quad	0x3ff4269ad42c3c9f              # double 1.259425
	.quad	0x4022188ce703afb8              # double 9.0479500000000002
	.quad	0x40122634117f8445              # double 4.5373080000000003
	.quad	0x401c111ba3ca7504              # double 7.0167070000000002
	.quad	0x400acb0531982880              # double 3.3491309999999999
	.quad	0x402260d9b5e95b79              # double 9.1891610000000004
	.quad	0x4011e1d323fee2ca              # double 4.4705320000000004
	.quad	0x40141dba908a265f              # double 5.0290319999999999
	.quad	0x3fe51795b35b0bbf              # double 0.65912899999999996
	.quad	0x40013fc115df6556              # double 2.1561300000000001
	.quad	0x400d81b97353b4b3              # double 3.688342
	.quad	0x401962730c671690              # double 6.3461420000000004
	.quad	0x400d0d1526d8b1dd              # double 3.6313879999999998
	.quad	0x3ff3d25aab474107              # double 1.238856
	.quad	0x401619c842fa5094              # double 5.5251780000000004
	.quad	0x401a0c6da4484945              # double 6.5121370000000001
	.quad	0x400196b8f9b13166              # double 2.1985950000000001
	.quad	0x3fef1fd5885d3133              # double 0.97263599999999994
	.quad	0x3fef188094e5d5b2              # double 0.97174099999999997
	.quad	0x40177654d61b2a28              # double 5.865558
	.quad	0x3ffb6b2f23033a47              # double 1.713668
	.quad	0x401b4950fc71d606              # double 6.8215979999999998
	.quad	0x401ca8d6d3b6cbda              # double 7.1648820000000004
	.quad	0x402130cbf2b239a4              # double 8.5953060000000007
	.quad	0x40020883fd502257              # double 2.2541579999999999
	.quad	0x4013ddc4007570c5              # double 4.9665679999999996
	.quad	0x401bc0d5629d840a              # double 6.9383140000000001
	.quad	0x4017f2877ee4e26d              # double 5.9868449999999998
	.quad	0x3ff01d55e6bc621b              # double 1.0071619999999999
	.quad	0x3ff225a250f84018              # double 1.134188
	.quad	0x3fcc64b2314013ec              # double 0.22182299999999999
	.quad	0x4023a1a437824d4d              # double 9.8157060000000004
	.quad	0x401f9fc3b4f61672              # double 7.9060199999999998
	.quad	0x3fa056c508b32ce9              # double 0.031912000000000003
	.quad	0x4001e8aac96cc5fc              # double 2.238607
	.quad	0x4004b79af1886df8              # double 2.5896509999999999
	.quad	0x40138d8904f6dfc6              # double 4.8882180000000002
	.quad	0x401645c209246bf0              # double 5.5681229999999999
	.quad	0x3fa3161a1db877ab              # double 0.037277999999999999
	.quad	0x401daa7264a16a48              # double 7.4164519999999996
	.quad	0x400ab3b18dac258d              # double 3.3377409999999998
	.quad	0x40000ca686e7e62e              # double 2.0061770000000001
	.quad	0x4021a004b7f5a533              # double 8.8125359999999997
	.quad	0x400fa26e5471715c              # double 3.9543119999999998
	.quad	0x400acf3dc054ef46              # double 3.3511920000000002
	.quad	0x401aa1cef240fa9c              # double 6.6580159999999999
	.quad	0x4014f383ad9f0a1c              # double 5.2378070000000001
	.quad	0x4022f040bfe3b03e              # double 9.4692439999999998
	.quad	0x40077b6aa4b9884c              # double 2.9352619999999998
	.quad	0x401e1eb78897e996              # double 7.5299969999999998
	.quad	0x401830f01fb82c2c              # double 6.0477910000000001
	.quad	0x401a2b55ef1fddec              # double 6.5423200000000001
	.quad	0x401f2528f190d174              # double 7.786289
	.quad	0x4010a55b89939219              # double 4.1614820000000003
	.quad	0x3ff901ede1198aec              # double 1.5629710000000001
	.quad	0x401b51522a6f3f53              # double 6.829415
	.quad	0x4019c9496249a134              # double 6.4465690000000002
	.quad	0x40227b68cef672b9              # double 9.2410340000000009
	.quad	0x3fe5231c64ba94bc              # double 0.66053600000000001
	.quad	0x402275c7ef177a70              # double 9.2300409999999999
	.quad	0x4015c220bc382a13              # double 5.439578
	.quad	0x4021537a5f41aef7              # double 8.663043
	.quad	0x40076cdd93c46d83              # double 2.9281570000000001
	.quad	0x401407da1ec4e725              # double 5.0076679999999998
	.quad	0x400ba3e7d135115a              # double 3.4550320000000001
	.quad	0x401695629d8409e5              # double 5.6458839999999997
	.quad	0x4022a123a29c779a              # double 9.3147249999999993
	.quad	0x40158fb7a5f41aef              # double 5.3903489999999996
	.quad	0x3fe1a37cdcca70d2              # double 0.551207
	.quad	0x3fcfc77143393ab4              # double 0.24827399999999999
	.quad	0x400e16c3760bf5d8              # double 3.7611150000000002
	.quad	0x401c24c51116a8b9              # double 7.0359080000000001
	.quad	0x402137d00713f078              # double 8.6090090000000004
	.quad	0x3fe5267e846a5d6c              # double 0.66094900000000001
	.quad	0x3f829bae46cfc82a              # double 0.0090860000000000003
	.quad	0x401dca176ddaceee              # double 7.4473549999999999
	.quad	0x402359813879c411              # double 9.6748139999999995
	.quad	0x4023609f1f14983d              # double 9.6887139999999991
	.quad	0x4020164bec679cc7              # double 8.0435479999999995
	.quad	0x40203fef39085f4a              # double 8.1248719999999999
	.quad	0x3fe594855da27286              # double 0.67437999999999998
	.quad	0x400d880c73abc947              # double 3.69143
	.quad	0x401ef16b54e2b064              # double 7.7357610000000001
	.quad	0x402203a8826aa8eb              # double 9.0071449999999995
	.quad	0x3fbca7d6733ebbfd              # double 0.11193599999999999
	.quad	0x4016af666234a87e              # double 5.6712889999999998
	.quad	0x40168e9ccb7d4174              # double 5.6392699999999998
	.quad	0x400eb23c42a66dbd              # double 3.8370289999999998
	.quad	0x401a55e41d4b6a62              # double 6.5838780000000003
	.quad	0x402221276fb09204              # double 9.0647540000000006
	.quad	0x401a0b630a91537a              # double 6.51112
	.quad	0x40197996744b2b77              # double 6.3687379999999996
	.quad	0x4022fc97fa5d28d0              # double 9.493347
	.quad	0x401a484f09528f19              # double 6.570614
	.quad	0x3ffc1eeed8904f6e              # double 1.757552
	.quad	0x4012e17b0f6ad70e              # double 4.7201959999999996
	.quad	0x40159f2fdb8fde2f              # double 5.405456
	.quad	0x4021e4e2b063e07a              # double 8.9470419999999997
	.quad	0x400c7b44e50c5eb3              # double 3.56019
	.quad	0x401ef0ef99806f26              # double 7.7352889999999999
	.quad	0x40215bffcdab191e              # double 8.6796860000000002
	.quad	0x3fee95c63ae2541e              # double 0.95578300000000005
	.quad	0x4020e1afe1da7b0b              # double 8.4407949999999996
	.quad	0x401b5c297bfa4c62              # double 6.8400020000000001
	.quad	0x4016b10129cbab65              # double 5.6728560000000003
	.quad	0x4012bc60cbf2b23a              # double 4.6839630000000003
	.quad	0x400683dab5c39bcc              # double 2.8143820000000002
	.quad	0x3fde327674d16335              # double 0.47183000000000003
	.quad	0x3fa69a2c669057d1              # double 0.044144999999999997
	.quad	0x40161706d5065732              # double 5.5224869999999999
	.quad	0x4009b244a6223e18              # double 3.2120449999999998
	.quad	0x3fff8b220791c4b9              # double 1.971468
	.quad	0x401f0fb2aae29739              # double 7.7653299999999996
	.quad	0x4021cd91cd1c7de5              # double 8.9015029999999999
	.quad	0x40065ef5a964e8b8              # double 2.796367
	.quad	0x4017ed8ec95bff04              # double 5.9819899999999997
	.quad	0x3ff10c404a72ead9              # double 1.065491
	.quad	0x401820bdcad14a0a              # double 6.0319739999999999
	.quad	0x401fd9a49c2c1b11              # double 7.962542
	.quad	0x401e5b63d3e4ef03              # double 7.5892480000000004
	.quad	0x401c20dd3fe1975f              # double 7.0320939999999998
	.quad	0x401d3fe111276fb1              # double 7.3123820000000004
	.quad	0x3fef85a4f00ef135              # double 0.98506400000000005
	.quad	0x4023a12cadddf43c              # double 9.8147939999999991
	.quad	0x4017c72c0e7bc3c6              # double 5.9445040000000002
	.quad	0x3ff820817fc7607c              # double 1.5079359999999999
	.quad	0x40129a3b14a90471              # double 4.6506160000000003
	.quad	0x401d9c105186db51              # double 7.402406
	.quad	0x40063e2bcf91a32b              # double 2.780357
	.quad	0x3fe4ffa5d28d002e              # double 0.65620699999999998
	.quad	0x4021c68a71de69ad              # double 8.8877749999999995
	.quad	0x4008e2af5771001d              # double 3.1106859999999998
	.quad	0x3ffa9676640a6b94              # double 1.661734
	.quad	0x4008c06d938151a4              # double 3.0939589999999999
	.quad	0x40225df548ecd8dc              # double 9.1835120000000003
	.quad	0x400b09e1b089a027              # double 3.3798249999999999
	.quad	0x40175cf4e874c900              # double 5.8407780000000002
	.quad	0x400e83476295208e              # double 3.814101
	.quad	0x3ff06106ab14ec20              # double 1.0236879999999999
	.quad	0x40069a7d24180d3d              # double 2.825434
	.quad	0x4014a71865519371              # double 5.1631790000000004
	.quad	0x4014575b81301648              # double 5.0853099999999998
	.quad	0x3fff4e410b630a91              # double 1.9566049999999999
	.quad	0x3ffa289fc6da4485              # double 1.6349180000000001
	.quad	0x40203c2480e8c8ac              # double 8.1174660000000002
	.quad	0x3fb129131ec0b567              # double 0.067032999999999995
	.quad	0x4004bc8d9f9053a0              # double 2.5920670000000001
	.quad	0x40163bcf0b6b6e0d              # double 5.5584069999999999
	.quad	0x400de4934267839d              # double 3.7366090000000001
	.quad	0x401025f99c38b04b              # double 4.0370850000000003
	.quad	0x4014f0c6f7a0b5ee              # double 5.2351340000000004
	.quad	0x4021c8e29f9ce8d9              # double 8.8923539999999992
	.quad	0x4014a87db2b34613              # double 5.164542
	.quad	0x4023159146e4c0df              # double 9.5421239999999993
	.quad	0x3ffd85b4aa9717df              # double 1.845143
	.quad	0x4010b47a17f4128c              # double 4.176247
	.quad	0x40222631f8a0902e              # double 9.0746000000000002
	.quad	0x4019d266fd651b0d              # double 6.4554710000000002
	.quad	0x3fd82749f0e4da0a              # double 0.37739800000000001
	.quad	0x40200e861e92923e              # double 8.0283669999999994
	.quad	0x3ff0a45a1cac0831              # double 1.040125
	.quad	0x4006abedfa43fe5d              # double 2.8339500000000002
	.quad	0x3ff7b4e22a2c2374              # double 1.4816609999999999
	.quad	0x400140b912dba4d7              # double 2.156603
	.quad	0x4016b5d41fa76534              # double 5.6775669999999998
	.quad	0x3ff93687b139c94f              # double 1.5758129999999999
	.quad	0x4023870435efa616              # double 9.7637040000000006
	.quad	0x4003f1ca7d6733ec              # double 2.4930620000000001
	.quad	0x4009929802c0a4a0              # double 3.1965789999999998
	.quad	0x401bdb26394face6              # double 6.9640129999999996
	.quad	0x40146d5171e29b6b              # double 5.1067559999999999
	.quad	0x401170fb224aada3              # double 4.3603329999999998
	.quad	0x3ff08d338f798527              # double 1.034473
	.quad	0x3feac5154866a11f              # double 0.83655800000000002
	.quad	0x401c3b80a9de8b3b              # double 7.0581079999999998
	.quad	0x40059803cd141a69              # double 2.6992259999999999
	.quad	0x4001eef240fa9c13              # double 2.241673
	.quad	0x401ed1e3a7daa4fd              # double 7.7049700000000003
	.quad	0x3fc5a52ac753e708              # double 0.169103
	.quad	0x4008d4af4f0d844d              # double 3.10385
	.quad	0x401d409a671ef30a              # double 7.3130889999999997
	.quad	0x4002a73de1e2de87              # double 2.331661
	.quad	0x400a40c73abc9470              # double 3.2816299999999998
	.quad	0x4019e44f5d35653d              # double 6.4729590000000004
	.quad	0x4023df36cdf266ba              # double 9.9359649999999995
	.quad	0x400a99ca5bd944aa              # double 3.3250929999999999
	.quad	0x402271ab6d00b45b              # double 9.2220110000000002
	.quad	0x4016c251c193b3a7              # double 5.6897650000000004
	.quad	0x401422e7f6f4be83              # double 5.0340879999999997
	.quad	0x40134cac4b4d056c              # double 4.8248759999999997
	.quad	0x3fe322f48c2e770c              # double 0.59801700000000002
	.quad	0x4011cc33f85510d4              # double 4.4494170000000004
	.quad	0x40097b530ced4e4d              # double 3.1852170000000002
	.quad	0x40220157abb8800f              # double 9.0026220000000006
	.quad	0x4020e36c7a7c9de0              # double 8.4441869999999994
	.quad	0x3ffb4cc9a77e5eab              # double 1.7062470000000001
	.quad	0x402061bf162ae4b0              # double 8.1909109999999998
	.quad	0x400669d5a187a4a5              # double 2.8016770000000002
	.quad	0x4001812dfd694ccb              # double 2.1880760000000001
	.quad	0x4020b34a44c7b02d              # double 8.3501759999999994
	.quad	0x4014c233df2a9d62              # double 5.1896509999999996
	.quad	0x400dc197e5647347              # double 3.7195279999999999
	.quad	0x4023ecf1800a7c5b              # double 9.9627800000000004
	.quad	0x3fe4bfad2999567e              # double 0.64839800000000003
	.quad	0x3fff437d63022dd8              # double 1.9539770000000001
	.quad	0x401d3f609dcf8940              # double 7.3118920000000003
	.quad	0x401f1d21bc126a66              # double 7.7784490000000002
	.quad	0x3fe1211ec918e326              # double 0.53529300000000002
	.quad	0x400983de6149c6f3              # double 3.1893889999999998
	.quad	0x4022a40df58c08b7              # double 9.3204189999999993
	.quad	0x400cfcbccf28c79f              # double 3.6234069999999998
	.quad	0x3ff6f649d388a8b1              # double 1.4351290000000001
	.quad	0x401cf41e9af5ba2c              # double 7.2383980000000001
	.quad	0x401c4dae81882adc              # double 7.0758609999999997
	.quad	0x40223f75fb2edfe7              # double 9.1239469999999994
	.quad	0x3ffeb2e7b3d8e001              # double 1.9186780000000001
	.quad	0x401b4fa48301a7a0              # double 6.8277760000000001
	.quad	0x40113246bf01322f              # double 4.2990979999999999
	.quad	0x3ffdb152f3c2dadc              # double 1.8557920000000001
	.quad	0x3fd3bf444e0daa0d              # double 0.30854900000000002
	.quad	0x3fed3aa1511dffc5              # double 0.91340699999999997
	.quad	0x400b456ffc115df6              # double 3.4089049999999999
	.quad	0x401202424a276b7f              # double 4.5022060000000002
	.quad	0x401b29b3d07c84b6              # double 6.7907250000000001
	.quad	0x401186a7ac81d3aa              # double 4.3814989999999998
	.quad	0x401970d66f0cfe15              # double 6.3601929999999998
	.quad	0x40207d054ac29bf1              # double 8.2441809999999993
	.quad	0x4006c6df82b1f688              # double 2.8471060000000001
	.quad	0x400ee1a1554fbdad              # double 3.8601709999999998
	.quad	0x4020321ee675147f              # double 8.0978919999999999
	.quad	0x4013c6b37867f0aa              # double 4.9440439999999999
	.quad	0x4020549e44fa0514              # double 8.1652699999999995
	.quad	0x4001ba31a4bdba0a              # double 2.2159149999999999
	.quad	0x400ad6aad1d041cc              # double 3.3548179999999999
	.quad	0x40175057082491b0              # double 5.8284570000000002
	.quad	0x3ff7edc3bd599243              # double 1.4955480000000001
	.quad	0x4006933fc86cebbc              # double 2.8218990000000002
	.quad	0x40048c1fc8f32379              # double 2.5684200000000001
	.quad	0x401524384ba0e842              # double 5.2853709999999996
	.quad	0x402378e8858ff759              # double 9.7361489999999992
	.quad	0x40116f7a4e7ab756              # double 4.3588649999999998
	.quad	0x4014fd38cda6e760              # double 5.247287
	.quad	0x402212c83ec892ab              # double 9.0366839999999993
	.quad	0x4017de93e1c9b414              # double 5.9673610000000004
	.quad	0x3ff778ac18f81e8a              # double 1.466961
	.quad	0x4020e6c764adff82              # double 8.4507399999999997
	.quad	0x401a66555c52e72e              # double 6.5999350000000003
	.quad	0x4021e5ba0a526959              # double 8.9486849999999993
	.quad	0x40230d5de58e64b2              # double 9.5261069999999997
	.quad	0x3ffc0c2f837b4a23              # double 1.7529749999999999
	.quad	0x3ffd12934acaff6d              # double 1.817035
	.quad	0x401eebf0dc768dfc              # double 7.7304110000000001
	.quad	0x3fe11c5a3e39f773              # double 0.53471100000000005
	.quad	0x4015bdcbddb9841b              # double 5.4353480000000003
	.quad	0x3ff529ad42c3c9ef              # double 1.322675
	.quad	0x3fecce93e1c9b414              # double 0.90021700000000004
	.quad	0x4020f8b029281776              # double 8.4857189999999996
	.quad	0x401d3c16df3f9618              # double 7.3086809999999999
	.quad	0x40021b7ae5796bfd              # double 2.2634180000000002
	.quad	0x3ff511cc100e6afd              # double 1.316845
	.quad	0x400df1bcdbbe0158              # double 3.743036
	.quad	0x40165f10a99b6f5d              # double 5.5928370000000003
	.quad	0x4011f98e53eb399f              # double 4.4937069999999997
	.quad	0x402231cc96462802              # double 9.0972639999999991
	.quad	0x3fff55410f94c87a              # double 1.9583140000000001
	.quad	0x3fed2459103c8e26              # double 0.91068700000000002
	.quad	0x400d5041cc532a49              # double 3.6641879999999998
	.quad	0x4016694c87980f56              # double 5.6028310000000001
	.quad	0x3fecd145d851654d              # double 0.90054599999999996
	.quad	0x40105d0635a426bb              # double 4.0908439999999997
	.quad	0x3ff5e68b19a415f4              # double 1.3687849999999999
	.quad	0x4022b3320535c9e6              # double 9.3499909999999993
	.quad	0x3fe6b9d1b2e59afa              # double 0.71018300000000001
	.quad	0x400022bbecaab8a6              # double 2.0169600000000001
	.quad	0x3fe98642396073de              # double 0.79763899999999999
	.quad	0x401fb73ffac1d29e              # double 7.9289550000000002
	.quad	0x3ff67bb40b34e768              # double 1.4052009999999999
	.quad	0x400b9eb18116ebd5              # double 3.4524870000000001
	.quad	0x401a742784a9478d              # double 6.6134320000000004
	.quad	0x401a2e2eb1c432ca              # double 6.5450999999999997
	.quad	0x401dba9ac36544fe              # double 7.4322309999999998
	.quad	0x401d336c15d2d01c              # double 7.300217
	.quad	0x4011ef2f9873ffac              # double 4.4835799999999999
	.quad	0x4013efb8b26394fb              # double 4.9841030000000002
	.quad	0x4023734acaff6d33              # double 9.7251799999999999
	.quad	0x40223ea39c51dabe              # double 9.1223419999999997
	.quad	0x3fc11dde37585be2              # double 0.13372400000000001
	.quad	0x400f2f49491f2dc3              # double 3.8980890000000001
	.quad	0x40162b56b8737974              # double 5.5423229999999997
	.quad	0x4022a7d1569f4906              # double 9.327769
	.quad	0x401cd100e6afcce2              # double 7.2041050000000002
	.quad	0x401cb51e321a2e7f              # double 7.1768729999999996
	.quad	0x400d364adff822bc              # double 3.65151
	.quad	0x401bd1d4b6a619db              # double 6.9549130000000003
	.quad	0x4022e840bfe3b03e              # double 9.4536189999999998
	.quad	0x401627a3db3bfb59              # double 5.5387110000000002
	.quad	0x4001d7d9dba908a2              # double 2.2303959999999998
	.quad	0x400940b34e768598              # double 3.1565919999999998
	.quad	0x3fe8d530489d27c4              # double 0.77602400000000004
	.quad	0x3feef28848387df6              # double 0.96710600000000002
	.quad	0x400832d234eb9a17              # double 3.0248149999999998
	.quad	0x401ecb44a1f08030              # double 7.6985039999999998
	.quad	0x4003e53d20f2becf              # double 2.4869330000000001
	.quad	0x4016df75d9a0f0a6              # double 5.7182230000000001
	.quad	0x40215a28dc981beb              # double 8.6760929999999998
	.quad	0x3fda8ce2d1f1cfbc              # double 0.41484900000000002
	.quad	0x3ff6833a4723ab00              # double 1.407038
	.quad	0x3ff25d99029ae4f3              # double 1.147851
	.quad	0x4022318b71b8aa00              # double 9.0967669999999998
	.quad	0x401144e48626f60e              # double 4.3172779999999999
	.quad	0x401c8d9c27e95315              # double 7.1382909999999997
	.quad	0x3ffc24a16a487336              # double 1.7589429999999999
	.quad	0x4020f131ec0b5675              # double 8.4710839999999994
	.quad	0x3ff97d5bab21815a              # double 1.593105
	.quad	0x40144382a12f9011              # double 5.0659280000000004
	.quad	0x3ff0a95b78cc9a78              # double 1.041347
	.quad	0x4021b21db877ab32              # double 8.8478829999999995
	.quad	0x4005fbae46cfc82a              # double 2.7478910000000001
	.quad	0x4021d46455eaee20              # double 8.914828
	.quad	0x40211a584f4c6e6e              # double 8.5514550000000007
	.quad	0x401b703a322af577              # double 6.8595969999999999
	.quad	0x402076b484d76ab6              # double 8.2318460000000009
	.quad	0x4023b279dd3bafd9              # double 9.8485859999999991
	.quad	0x4020f0cc144028e5              # double 8.470307
	.quad	0x40010baa582dbe7f              # double 2.1306959999999999
	.quad	0x4020dd07852f7f4a              # double 8.4316980000000008
	.quad	0x3ffae70196d8f4f9              # double 1.6813979999999999
	.quad	0x4022f0ed5f138bce              # double 9.470561
	.quad	0x3fed1611ba3ca750              # double 0.90894399999999997
	.quad	0x401eae84ad794a6f              # double 7.6704280000000002
	.quad	0x40009f26f1dc50ce              # double 2.0777109999999999
	.quad	0x4021052da98676a7              # double 8.5101139999999997
	.quad	0x40044f049a9973da              # double 2.538583
	.quad	0x40125eaf251c193b              # double 4.5924649999999998
	.quad	0x3ffec92253111f0c              # double 1.924105
	.quad	0x4007611ba3ca7504              # double 2.9224160000000001
	.quad	0x3fc52fba01eeed89              # double 0.165519
	.quad	0x4022e5653c9abb02              # double 9.4480380000000004
	.quad	0x401453beec39799e              # double 5.0817829999999997
	.quad	0x3fdf5d35653c9abb              # double 0.490064
	.quad	0x401ba43aa79bbadc              # double 6.91038
	.quad	0x4015603f2d3c792d              # double 5.3439909999999999
	.quad	0x4021f7bc1acde1a0              # double 8.9838570000000004
	.quad	0x40108d3e4ef0281c              # double 4.1379330000000003
	.quad	0x4014b28e4fb97bb7              # double 5.1743709999999998
	.quad	0x4021ee3ed0f62739              # double 8.9653229999999997
	.quad	0x3ff1f63b256ffc11              # double 1.1226149999999999
	.quad	0x401301e18efbb0e6              # double 4.7518370000000001
	.quad	0x3ffa8168b5cbff47              # double 1.6565939999999999
	.quad	0x40204093faf42785              # double 8.1261290000000006
	.quad	0x4011b962cfd8f0c7              # double 4.4310409999999996
	.quad	0x401c59335d249e45              # double 7.08711
	.quad	0x401da53b0813cab8              # double 7.4113579999999998
	.quad	0x400cbf0a1be2b496              # double 3.5932810000000002
	.quad	0x401e412dfd694ccb              # double 7.5636520000000002
	.quad	0x4019feb463497b74              # double 6.4987349999999999
	.quad	0x401724e6e221c8a8              # double 5.7860370000000003
	.quad	0x401f64acf312b1b3              # double 7.8483159999999996
	.quad	0x3ff15426fe718a87              # double 1.083045
	.quad	0x3ff1b2ca57a786c2              # double 1.10615
	.quad	0x4017dd82773e24ff              # double 5.9663180000000002
	.quad	0x4017cae5ffa3b9ae              # double 5.948143
	.quad	0x401d7ecd4aa10e02              # double 7.3738299999999999
	.quad	0x3fd1ced916872b02              # double 0.27825
	.quad	0x4020bc195cc857f3              # double 8.367381
	.quad	0x4005b5c52e72da12              # double 2.7137549999999999
	.quad	0x3ff6dbed30f062d4              # double 1.428693
	.quad	0x402343c903ea704c              # double 9.6323930000000004
	.quad	0x3ff85c0ebedfa440              # double 1.522475
	.quad	0x4007e5b6c3760bf6              # double 2.9871650000000001
	.quad	0x4014a422467be554              # double 5.1602870000000003
	.quad	0x40103ae7d566cf42              # double 4.057525
	.quad	0x3fe6c32ca57a786c              # double 0.71132499999999999
	.quad	0x4010718655193709              # double 4.1108640000000003
	.quad	0x400f49fa54c55433              # double 3.9111220000000002
	.quad	0x4022abbb40b34e77              # double 9.3354130000000008
	.quad	0x400b33708aac96cc              # double 3.4001169999999998
	.quad	0x401badf8f4730404              # double 6.9198950000000004
	.quad	0x40146c95bff04578              # double 5.1060400000000001
	.quad	0x4014e5109070fbec              # double 5.2236960000000003
	.quad	0x400c3c70c996b767              # double 3.529512
	.quad	0x400e840852b4d8ba              # double 3.8144689999999999
	.quad	0x4014c6dacabc5155              # double 5.1941940000000004
	.quad	0x4010a2b66b6177ea              # double 4.1588989999999999
	.quad	0x4010529bae46cfc8              # double 4.0806719999999999
	.quad	0x401d44ce8101f31f              # double 7.3171939999999998
	.quad	0x401dae1da7b0b392              # double 7.4200350000000004
	.quad	0x40216a32b12d3416              # double 8.7074180000000005
	.quad	0x401e559641f64495              # double 7.5835809999999996
	.quad	0x401ad1bf7ad4b274              # double 6.7048319999999997
	.quad	0x4007cc322291fb40              # double 2.9747050000000002
	.quad	0x3ff5c94f69ca9ef5              # double 1.361648
	.quad	0x40206fad080b673c              # double 8.2181169999999994
	.quad	0x4005cf74cd31769b              # double 2.7262970000000002
	.quad	0x3fb0df15a4acf313              # double 0.065904000000000004
	.quad	0x40109c985f06f694              # double 4.1529249999999998
	.quad	0x3fe8cea077036c9c              # double 0.77522299999999999
	.quad	0x401b6e28aa433509              # double 6.857577
	.quad	0x4017cae3608d0892              # double 5.9481330000000003
	.quad	0x3ff51ca3a4b5568f              # double 1.3194920000000001
	.quad	0x4023eddf43c7d5ed              # double 9.9645939999999999
	.quad	0x402095334c5da6a4              # double 8.2914069999999995
	.quad	0x400a0c197e564734              # double 3.2559079999999998
	.quad	0x40192b10ba6266fd              # double 6.2920559999999996
	.quad	0x40223201040bfe3b              # double 9.097664
	.quad	0x3ff9c97fa5d28d00              # double 1.611694
	.quad	0x401b067b1c0010c7              # double 6.756329
	.quad	0x401ff1351159c497              # double 7.9855539999999995
	.quad	0x4010ce26916440f2              # double 4.2013189999999998
	.quad	0x401b57f0aa21a71a              # double 6.8358790000000003
	.quad	0x401e485b9e8c47a1              # double 7.5706619999999995
	.quad	0x401ebcc74b838c11              # double 7.6843539999999999
	.quad	0x4011f43d46b26bf8              # double 4.4885149999999996
	.quad	0x3fe4ebaf102363b2              # double 0.65376999999999996
	.quad	0x400d5d859c8c9321              # double 3.6706650000000001
	.quad	0x4011c90752da9867              # double 4.4463169999999996
	.quad	0x4022006594af4f0e              # double 9.0007750000000009
	.quad	0x3ff1ce91c8eabffd              # double 1.112932
	.quad	0x3fedcd24e160d888              # double 0.93129200000000001
	.quad	0x401fe0da1a93293d              # double 7.9695819999999999
	.quad	0x40112cae642bf983              # double 4.293634
	.quad	0x401f7177ea1c68ec              # double 7.8608089999999997
	.quad	0x401b40cc78e9f6a9              # double 6.8132799999999998
	.quad	0x3ff1233269df97ab              # double 1.0710930000000001
	.quad	0x400016e7a311e860              # double 2.0111840000000001
	.quad	0x3ff6114f483cafb4              # double 1.3792260000000001
	.quad	0x40210d536933a040              # double 8.5260269999999991
	.quad	0x3ff9c4e831ad2136              # double 1.610573
	.quad	0x3ffebc9363f572de              # double 1.9210389999999999
	.quad	0x4017984e831ad213              # double 5.8987369999999997
	.quad	0x40178ea747d805e6              # double 5.88931
	.quad	0x4003eec7c957cd46              # double 2.4915919999999998
	.quad	0x3fec1edbf8b9baa1              # double 0.87876699999999996
	.quad	0x3fd75b91f70de8f7              # double 0.36496400000000001
	.quad	0x4010eeb13dfb0d52              # double 4.233098
	.quad	0x4011da8bd230b9dc              # double 4.4634239999999998
	.quad	0x402351dc50ce4ead              # double 9.6598839999999999
	.quad	0x4022040c62e4d1a6              # double 9.0079069999999994
	.quad	0x40199831f03d145e              # double 6.3986280000000004
	.quad	0x3ffd132e7b3d8e00              # double 1.817183
	.quad	0x4005339b8887229f              # double 2.6501990000000002
	.quad	0x40148edb7281fd9c              # double 5.1395090000000003
	.quad	0x401776cb5350092d              # double 5.8660100000000002
	.quad	0x40148375c8d9f905              # double 5.1283789999999998
	.quad	0x3ffa53ab430f4949              # double 1.645427
	.quad	0x40080b8f9b13165d              # double 3.0056449999999999
	.quad	0x4022f7a376922d95              # double 9.4836690000000007
	.quad	0x40009187e7c06e1a              # double 2.0710600000000001
	.quad	0x3fe47c158fb43d8a              # double 0.64014700000000002
	.quad	0x401bc6a4ca4f440b              # double 6.943988
	.quad	0x40018422036006d1              # double 2.1895180000000001
	.quad	0x401d495d0b73d189              # double 7.321644
	.quad	0x4006bd50a88effe3              # double 2.8424390000000002
	.quad	0x400952ea52ef911d              # double 3.165486
	.quad	0x401e54cad57bc7f7              # double 7.5828049999999995
	.quad	0x402264bf6e3f78bc              # double 9.1967730000000003
	.quad	0x4023e8c5004fb118              # double 9.9546279999999995
	.quad	0x4013848cf7caa759              # double 4.8794440000000003
	.quad	0x3fe0158750c1b973              # double 0.50262799999999996
	.quad	0x4010e45803cd141a              # double 4.2229919999999996
	.quad	0x4016b2a9d627bf62              # double 5.6744760000000003
	.quad	0x401ca02fb5d03105              # double 7.1564319999999997
	.quad	0x40091f5b5fa22707              # double 3.1403110000000001
	.quad	0x400db266ba493c8a              # double 3.71211
	.quad	0x400a8b3354c12275              # double 3.3179690000000002
	.quad	0x4013716d6dc1a47b              # double 4.8607690000000003
	.quad	0x3ffb4d4fdf3b645a              # double 1.706375
	.quad	0x400a13953dea465a              # double 3.2595619999999998
	.quad	0x4014a14f8b588e37              # double 5.1575300000000004
	.quad	0x40173efc371da37f              # double 5.811509
	.quad	0x3ff36821f2990f30              # double 1.212923
	.quad	0x4012eb88ca3e7d13              # double 4.7300139999999997
	.quad	0x402014d3e0bd449a              # double 8.0406790000000008
	.quad	0x3ffa6450acc0bdcb              # double 1.649491
	.quad	0x3ff5ea8869c66d37              # double 1.3697589999999999
	.quad	0x3ffc3841248d7e02              # double 1.7637339999999999
	.quad	0x400da02ea960b6fa              # double 3.703214
	.quad	0x4021add5d3dc8b87              # double 8.8395220000000005
	.quad	0x4019a70153bd1676              # double 6.4130909999999997
	.quad	0x400592e275ab7dc8              # double 2.6967210000000001
	.quad	0x4006f0813cab81f9              # double 2.8674339999999998
	.quad	0x4016cd31769a9110              # double 5.7003839999999997
	.quad	0x400696e04c059210              # double 2.8236699999999999
	.quad	0x40012bd2b6f19935              # double 2.146398
	.quad	0x3fe64806290eed03              # double 0.69629200000000002
	.quad	0x4011384dfce3150e              # double 4.3049850000000003
	.quad	0x402011b25f633ce6              # double 8.0345639999999996
	.quad	0x40059893faf42785              # double 2.6995010000000002
	.quad	0x40085d084e831ad2              # double 3.045426
	.quad	0x40125d3671ac14c6              # double 4.5910279999999997
	.quad	0x4018e6e7e62dc6e3              # double 6.2254940000000003
	.quad	0x4021866e653868fd              # double 8.7625609999999998
	.quad	0x4023e8cd855970b5              # double 9.9546930000000006
	.quad	0x401530bf1a5ca298              # double 5.2976039999999998
	.quad	0x3fa3e4cd74927914              # double 0.038855000000000001
	.quad	0x4020dd3953dea466              # double 8.4320780000000006
	.quad	0x40185c46d82ba5a0              # double 6.0901139999999998
	.quad	0x40218a2b7baecd08              # double 8.7698630000000009
	.quad	0x40200a7b4e54f7a9              # double 8.0204719999999998
	.quad	0x402169843c3a42f2              # double 8.7060870000000001
	.quad	0x400763c297bfa4c6              # double 2.9237109999999999
	.quad	0x400e214b599aa609              # double 3.766257
	.quad	0x3fef083ba3443d47              # double 0.96975500000000003
	.quad	0x3ff3ba22706d5065              # double 1.2329429999999999
	.quad	0x402211bdc69f8c22              # double 9.0346510000000002
	.quad	0x402180244e93e1ca              # double 8.7502770000000005
	.quad	0x400ff253da72a7bd              # double 3.9933239999999999
	.quad	0x401cdc2f405f6ba0              # double 7.2150239999999997
	.quad	0x3ff2311b60ae9681              # double 1.136989
	.quad	0x4011332ce89656ef              # double 4.299976
	.quad	0x4018f72799a1fd15              # double 6.2413619999999996
	.quad	0x3ff9c79e59f2ba9d              # double 1.611235
	.quad	0x40020014f8b588e3              # double 2.2500399999999998
	.quad	0x4023865c2d278078              # double 9.7624220000000008
	.quad	0x402044258d5842b7              # double 8.1330989999999996
	.quad	0x401c053f7ced9168              # double 7.0051249999999996
	.quad	0x401cedc443914f48              # double 7.2321939999999998
	.quad	0x4023e289b951c5c5              # double 9.9424569999999992
	.quad	0x400903ef284167a9              # double 3.1269209999999998
	.quad	0x3fe7fdd872f33ca3              # double 0.74973699999999999
	.quad	0x401a34bdba0a5269              # double 6.5515049999999997
	.quad	0x4015588ca3e7d135              # double 5.3364739999999999
	.quad	0x400f6c753e707e17              # double 3.9279579999999998
	.quad	0x4003d47c73eee526              # double 2.4787530000000002
	.quad	0x401ebe5d9e40c847              # double 7.6859039999999998
	.quad	0x4020a73365881a15              # double 8.3265639999999994
	.quad	0x400fc35ce1826677              # double 3.9703919999999999
	.quad	0x3fefad6451b93038              # double 0.98991600000000001
	.quad	0x4016d2a0ec743201              # double 5.705692
	.quad	0x401dc204f2ae07e6              # double 7.4394720000000003
	.quad	0x401a01ea78af3e47              # double 6.5018710000000004
	.quad	0x4017586d2ed783e0              # double 5.836354
	.quad	0x40209905c0336156              # double 8.2988719999999994
	.quad	0x3ff6cef88b977857              # double 1.42553
	.quad	0x400257d1782d3847              # double 2.2928799999999998
	.quad	0x40221a036006d0d5              # double 9.0508070000000007
	.quad	0x400055c74751ce29              # double 2.041884
	.quad	0x4012b7c200c0f020              # double 4.6794510000000002
	.quad	0x4018634267839cd8              # double 6.0969329999999999
	.quad	0x4016fe5d18090b41              # double 5.7484019999999996
	.quad	0x401d44ea4a8c154d              # double 7.3173000000000004
	.quad	0x402033167ec7863c              # double 8.0997810000000001
	.quad	0x4011c6fb8f57f738              # double 4.4443190000000001
	.quad	0x3fd8a960b6f9fcb1              # double 0.38533800000000001
	.quad	0x40086eb56fb8f57f              # double 3.0540569999999998
	.quad	0x40015a5a038194c0              # double 2.169117
	.quad	0x3fe8441dd1a21ea3              # double 0.75831499999999996
	.quad	0x401764a6a875d56f              # double 5.8482919999999998
	.quad	0x4011ec99ae924f22              # double 4.4810549999999996
	.quad	0x4007611ec918e326              # double 2.9224220000000001
	.quad	0x40195077ccc03793              # double 6.3285819999999999
	.quad	0x4022c77c6759ab6d              # double 9.3896209999999999
	.quad	0x400f79aa60913a50              # double 3.9344070000000002
	.quad	0x401cc46b69db65ed              # double 7.1918160000000002
	.quad	0x400f73636f3b213e              # double 3.9313419999999999
	.quad	0x40194e3ac0c62e4d              # double 6.3263959999999999
	.quad	0x4013413165d39970              # double 4.8136650000000003
	.quad	0x4011fe1cde5d1809              # double 4.498157
	.quad	0x4002f193f6c2699c              # double 2.3679579999999998
	.quad	0x3fe655b6805a2d73              # double 0.697963
	.quad	0x401158dda48b6523              # double 4.3367829999999996
	.quad	0x40177988d2a1f8e4              # double 5.8686860000000003
	.quad	0x401e6dddb1209edc              # double 7.607291
	.quad	0x4020cdddd2ae8e1d              # double 8.4020829999999993
	.quad	0x4020c3ccd0fe8ab5              # double 8.382422
	.quad	0x3ff4d39eadd590c1              # double 1.3016650000000001
	.quad	0x4013440420f6f08d              # double 4.8164220000000002
	.quad	0x400f9f401c4fc1df              # double 3.9527589999999999
	.quad	0x4015f22c01e68a0d              # double 5.4864959999999998
	.quad	0x4021ce29d8409e56              # double 8.9026630000000004
	.quad	0x401b2e5471715c64              # double 6.7952440000000003
	.quad	0x4010eca5bd944aa5              # double 4.2311009999999998
	.quad	0x402050383ad9f0a2              # double 8.1566790000000005
	.quad	0x3fc67c8d1958969a              # double 0.175676
	.quad	0x40140a16a4873366              # double 5.0098520000000004
	.quad	0x400baeabffcdab19              # double 3.4602889999999999
	.quad	0x4020790a7829068a              # double 8.2364080000000008
	.quad	0x401ac4bb1af3a14d              # double 6.6921200000000001
	.quad	0x401efc5154866a12              # double 7.7464040000000001
	.quad	0x4023b564b662fdfc              # double 9.8542839999999998
	.quad	0x400107e28240b780              # double 2.1288499999999999
	.quad	0x401db6822ff08894              # double 7.4282310000000003
	.quad	0x3fddfd8f0c77dd87              # double 0.46860099999999999
	.quad	0x3fe3ebca5375c8da              # double 0.622533
	.quad	0x3fe399a1fd1569f5              # double 0.61250400000000005
	.quad	0x400c1eed45e9185d              # double 3.515101
	.quad	0x40228e0dcb9a9da6              # double 9.2774490000000007
	.quad	0x402269c62a1b5c7d              # double 9.2065900000000003
	.quad	0x40152fb97bb73083              # double 5.2966059999999997
	.quad	0x40107dc768dfbd6a              # double 4.1228309999999997
	.quad	0x401f7c892ab68cef              # double 7.8716169999999996
	.quad	0x4001b4b2745bf26f              # double 2.2132309999999999
	.quad	0x401c3a09cc319c5a              # double 7.0566779999999998
	.quad	0x401d469df97aaac1              # double 7.318962
	.quad	0x400d73775b813016              # double 3.6813799999999999
	.quad	0x40190175d13d74d6              # double 6.2514260000000004
	.quad	0x4005cb26bf8769ec              # double 2.7241949999999999
	.quad	0x3ff4a5aff2a172ac              # double 1.290451
	.quad	0x3ffa0fca42aed139              # double 1.6288549999999999
	.quad	0x4014c8fb86f47b67              # double 5.1962719999999996
	.quad	0x4021bdbd2fa0d77b              # double 8.8705839999999991
	.quad	0x40231806af46aa08              # double 9.5469259999999991
	.quad	0x40173f66a5508701              # double 5.8119149999999999
	.quad	0x3fce7160956c0d6f              # double 0.23783499999999999
	.quad	0x4006e39e6ab9b23e              # double 2.8611420000000001
	.quad	0x40190578e5c4eb57              # double 6.255344
	.quad	0x40213859641f6449              # double 8.6100569999999994
	.quad	0x40227edd26b723ee              # double 9.2477809999999998
	.quad	0x402161c864883fd5              # double 8.690982
	.size	.L__constant_1999xf64, 15992

	.section	".note.GNU-stack","",@progbits
