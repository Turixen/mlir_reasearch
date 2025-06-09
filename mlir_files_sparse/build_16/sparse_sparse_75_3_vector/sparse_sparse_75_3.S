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
	.quad	0x413374701fd79075              # double 1274992.124383
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
	.quad	2500                            # 0x9c4
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	2500                            # 0x9c4
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
	lui	a7, %hi(.L__constant_2500xindex)
	addi	a7, a7, %lo(.L__constant_2500xindex)
	lui	t0, %hi(.L__constant_2500xf64)
	addi	t0, t0, %lo(.L__constant_2500xf64)
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
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	120                             # 0x78
	.quad	139                             # 0x8b
	.quad	149                             # 0x95
	.quad	191                             # 0xbf
	.quad	207                             # 0xcf
	.quad	221                             # 0xdd
	.quad	266                             # 0x10a
	.quad	277                             # 0x115
	.quad	295                             # 0x127
	.quad	337                             # 0x151
	.quad	351                             # 0x15f
	.quad	364                             # 0x16c
	.quad	409                             # 0x199
	.quad	428                             # 0x1ac
	.quad	442                             # 0x1ba
	.quad	483                             # 0x1e3
	.quad	503                             # 0x1f7
	.quad	518                             # 0x206
	.quad	564                             # 0x234
	.quad	574                             # 0x23e
	.quad	591                             # 0x24f
	.quad	633                             # 0x279
	.quad	650                             # 0x28a
	.quad	664                             # 0x298
	.quad	705                             # 0x2c1
	.quad	722                             # 0x2d2
	.quad	735                             # 0x2df
	.quad	776                             # 0x308
	.quad	792                             # 0x318
	.quad	812                             # 0x32c
	.quad	861                             # 0x35d
	.quad	874                             # 0x36a
	.quad	890                             # 0x37a
	.quad	937                             # 0x3a9
	.quad	953                             # 0x3b9
	.quad	965                             # 0x3c5
	.quad	1012                            # 0x3f4
	.quad	1032                            # 0x408
	.quad	1053                            # 0x41d
	.quad	1094                            # 0x446
	.quad	1110                            # 0x456
	.quad	1124                            # 0x464
	.quad	1165                            # 0x48d
	.quad	1173                            # 0x495
	.quad	1189                            # 0x4a5
	.quad	1230                            # 0x4ce
	.quad	1246                            # 0x4de
	.quad	1259                            # 0x4eb
	.quad	1305                            # 0x519
	.quad	1320                            # 0x528
	.quad	1336                            # 0x538
	.quad	1379                            # 0x563
	.quad	1395                            # 0x573
	.quad	1407                            # 0x57f
	.quad	1453                            # 0x5ad
	.quad	1465                            # 0x5b9
	.quad	1477                            # 0x5c5
	.quad	1518                            # 0x5ee
	.quad	1530                            # 0x5fa
	.quad	1551                            # 0x60f
	.quad	1590                            # 0x636
	.quad	1607                            # 0x647
	.quad	1623                            # 0x657
	.quad	1666                            # 0x682
	.quad	1680                            # 0x690
	.quad	1692                            # 0x69c
	.quad	1739                            # 0x6cb
	.quad	1752                            # 0x6d8
	.quad	1763                            # 0x6e3
	.quad	1813                            # 0x715
	.quad	1829                            # 0x725
	.quad	1841                            # 0x731
	.quad	1883                            # 0x75b
	.quad	1897                            # 0x769
	.quad	1911                            # 0x777
	.quad	1954                            # 0x7a2
	.quad	1965                            # 0x7ad
	.quad	1982                            # 0x7be
	.quad	2023                            # 0x7e7
	.quad	2043                            # 0x7fb
	.quad	2060                            # 0x80c
	.quad	2107                            # 0x83b
	.quad	2127                            # 0x84f
	.quad	2146                            # 0x862
	.quad	2191                            # 0x88f
	.quad	2208                            # 0x8a0
	.quad	2224                            # 0x8b0
	.quad	2269                            # 0x8dd
	.quad	2283                            # 0x8eb
	.quad	2294                            # 0x8f6
	.quad	2338                            # 0x922
	.quad	2365                            # 0x93d
	.quad	2385                            # 0x951
	.quad	2429                            # 0x97d
	.quad	2442                            # 0x98a
	.quad	2457                            # 0x999
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
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
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
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
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
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
	.quad	74                              # 0x4a
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
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
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
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
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
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	59                              # 0x3b
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
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
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
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
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	1                               # 0x1
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
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
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
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
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	44                              # 0x2c
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
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
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
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
	.quad	37                              # 0x25
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
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	53                              # 0x35
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	96                              # 0x60
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
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
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
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
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
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
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
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
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
	.quad	54                              # 0x36
	.quad	57                              # 0x39
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
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
	.quad	67                              # 0x43
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
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
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	75                              # 0x4b
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	28                              # 0x1c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	0                               # 0x0
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
	.quad	29                              # 0x1d
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
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	41                              # 0x29
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	44                              # 0x2c
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	78                              # 0x4e
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
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
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	63                              # 0x3f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
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
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	86                              # 0x56
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
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	38                              # 0x26
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	0                               # 0x0
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
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	31                              # 0x1f
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
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
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	34                              # 0x22
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
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	32                              # 0x20
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
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
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	70                              # 0x46
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
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
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	66                              # 0x42
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
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
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.size	.L__constant_2500xindex, 20000

	.type	.L__constant_2500xf64,@object   # @__constant_2500xf64
	.p2align	6, 0x0
.L__constant_2500xf64:
	.quad	0x3fd2dd334c5da6a4              # double 0.29475099999999999
	.quad	0x3fee9871e6cd2913              # double 0.95610899999999999
	.quad	0x4021e0a86d71f362              # double 8.9387849999999993
	.quad	0x40051f2452c59fb2              # double 2.6402060000000001
	.quad	0x4004d18b93469942              # double 2.6023170000000002
	.quad	0x4010c82b62845996              # double 4.1954779999999996
	.quad	0x402231db22d0e560              # double 9.0973749999999995
	.quad	0x401030713f077ccc              # double 4.047307
	.quad	0x400dfff583a53b8e              # double 3.7499799999999999
	.quad	0x4015ae5929670197              # double 5.4202620000000001
	.quad	0x401e3b0af5fd47bf              # double 7.5576590000000001
	.quad	0x3fd6879c4113c686              # double 0.35202699999999998
	.quad	0x400c5f6d330941c8              # double 3.5465949999999999
	.quad	0x401068012dfd694d              # double 4.1015670000000002
	.quad	0x400c0fd32c625e9a              # double 3.507727
	.quad	0x40218cb923a29c78              # double 8.7748500000000007
	.quad	0x4011191f70de8f6d              # double 4.2745340000000001
	.quad	0x4011c9b0ab2e1694              # double 4.4469630000000002
	.quad	0x3fe0ac471b478423              # double 0.52102999999999999
	.quad	0x4019b9c99285a922              # double 6.4314330000000002
	.quad	0x3ff643b3e9a6f827              # double 1.391529
	.quad	0x4012fec02f2f9874              # double 4.74878
	.quad	0x4018e6605ee568a5              # double 6.224977
	.quad	0x4016fc25072085b2              # double 5.7462350000000004
	.quad	0x401a8b7f1737542a              # double 6.6362269999999999
	.quad	0x40017a74c09c3ce2              # double 2.184793
	.quad	0x402099f8c21e1d21              # double 8.3007259999999992
	.quad	0x4015d6ef3d3a1d32              # double 5.4598969999999998
	.quad	0x400a8ae4b0186120              # double 3.3178190000000001
	.quad	0x40108ec17ebaf102              # double 4.1394099999999998
	.quad	0x40090fdd22856606              # double 3.132746
	.quad	0x40231a8e0c9d9d34              # double 9.5518649999999993
	.quad	0x401ee11904b3c3e7              # double 7.7198219999999997
	.quad	0x400300a84be40421              # double 2.375321
	.quad	0x3ffc9bad3a604e1e              # double 1.7880069999999999
	.quad	0x4018cbb0a2ca9ac3              # double 6.1989159999999996
	.quad	0x40202b1db445ed4a              # double 8.0842109999999998
	.quad	0x4020f7deb52c9d17              # double 8.484121
	.quad	0x4003ab662fdfc19c              # double 2.458691
	.quad	0x40066087442c7fbb              # double 2.7971330000000001
	.quad	0x401c2b267c6b8b69              # double 7.0421389999999997
	.quad	0x3ff10bac710cb296              # double 1.06535
	.quad	0x401ab79420b3d4ae              # double 6.6792759999999998
	.quad	0x3fda42b302f72b45              # double 0.41032099999999999
	.quad	0x3ffe44b90214ad36              # double 1.891778
	.quad	0x40201ce9e5e24788              # double 8.0564719999999994
	.quad	0x40238f8012dfd695              # double 9.7802740000000003
	.quad	0x40145baf965b20b8              # double 5.089537
	.quad	0x402024b46bacf744              # double 8.0716889999999992
	.quad	0x4011d14fce746cb9              # double 4.4544059999999996
	.quad	0x40230f20ea5b530d              # double 9.5295480000000001
	.quad	0x40213f0f7b9e0610              # double 8.6231650000000002
	.quad	0x400e08366516db0e              # double 3.7540100000000001
	.quad	0x401fef06705c896e              # double 7.9834230000000002
	.quad	0x40097d2f1a9fbe77              # double 3.1861250000000001
	.quad	0x3ff6dbd61f5be5da              # double 1.428671
	.quad	0x40177ee675147f13              # double 5.873926
	.quad	0x3ff7c1dc0db2702a              # double 1.484829
	.quad	0x4023aa89118c197e              # double 9.8330769999999994
	.quad	0x402008fffbce4218              # double 8.0175780000000003
	.quad	0x4022616fc9bc7714              # double 9.1903059999999996
	.quad	0x400f45436b8f9b13              # double 3.90882
	.quad	0x3ff5eb7baecd0785              # double 1.369991
	.quad	0x401fc73d9ec70004              # double 7.9445709999999998
	.quad	0x401e6844d013a92a              # double 7.6018249999999998
	.quad	0x402245379fa97e13              # double 9.1351899999999997
	.quad	0x4020523358f2e05d              # double 8.1605480000000004
	.quad	0x400d6efd438d1d8a              # double 3.6791939999999999
	.quad	0x40193dcb5781c715              # double 6.310346
	.quad	0x3fefe8b19a415f46              # double 0.99715500000000001
	.quad	0x401d607e9d94d0dd              # double 7.344233
	.quad	0x4022515a294141ea              # double 9.1588910000000006
	.quad	0x401c303ea704bc27              # double 7.0471139999999997
	.quad	0x401c000218def417              # double 7.0000080000000002
	.quad	0x401c543d46b26bf8              # double 7.0822649999999996
	.quad	0x3fea9afc04c8bc9d              # double 0.83141900000000002
	.quad	0x4007fd5b24e9c454              # double 2.9987089999999998
	.quad	0x40050461f9f01b86              # double 2.6271399999999998
	.quad	0x40141aceaaf35e31              # double 5.026179
	.quad	0x400a2db0574b4070              # double 3.2723089999999999
	.quad	0x401627fc7607c41a              # double 5.5390490000000003
	.quad	0x40203314013ec461              # double 8.0997620000000001
	.quad	0x3fd27fd82773e250              # double 0.289053
	.quad	0x40078790b8498809              # double 2.9411939999999999
	.quad	0x3ff7e80ae1049236              # double 1.494151
	.quad	0x40047dc6195464dc              # double 2.5614129999999999
	.quad	0x40135bc621b7e0ac              # double 4.8396229999999996
	.quad	0x4007337a80cf9e38              # double 2.9001359999999998
	.quad	0x401299f40a2877ee              # double 4.6503449999999997
	.quad	0x400085a250f84018              # double 2.0652509999999999
	.quad	0x4016cd5629d8409e              # double 5.7005239999999997
	.quad	0x400e796f21f6cacd              # double 3.809294
	.quad	0x402109adc8fb86f4              # double 8.5189039999999991
	.quad	0x401c77cf5f4e4431              # double 7.1170020000000003
	.quad	0x3fe5e36f3b213e3e              # double 0.68401299999999998
	.quad	0x3ff6fe78e1932d6f              # double 1.437127
	.quad	0x40093572de43ed96              # double 3.1510980000000002
	.quad	0x400a3e414e7ee914              # double 3.2803979999999999
	.quad	0x4011987724fa8b4c              # double 4.398892
	.quad	0x40219e9dd7ecbb80              # double 8.8097980000000007
	.quad	0x402165cdb37c99af              # double 8.6988350000000008
	.quad	0x40118d4d4024b33e              # double 4.3879900000000003
	.quad	0x400ee5953586ca8a              # double 3.862101
	.quad	0x4017fc165907d912              # double 5.9961789999999997
	.quad	0x4007eb7cbb3c8191              # double 2.9899840000000002
	.quad	0x3fd4f722e1ac57e2              # double 0.32758399999999999
	.quad	0x401de191dde37586              # double 7.4702830000000002
	.quad	0x3fe776fd21ff2e49              # double 0.73327500000000001
	.quad	0x4023550507a6bd6f              # double 9.6660540000000008
	.quad	0x4000cae9680e0653              # double 2.099078
	.quad	0x401be093964a59c0              # double 6.9693129999999996
	.quad	0x3ff52605ee568a50              # double 1.3217829999999999
	.quad	0x401f5f86e3b46fdf              # double 7.8432880000000002
	.quad	0x4021e5fe75bc44bf              # double 8.9492069999999995
	.quad	0x401ac07e5a78f25a              # double 6.6879819999999999
	.quad	0x3fdbd06bbdbe3c10              # double 0.43459599999999998
	.quad	0x401d45f45e0b4e12              # double 7.3183150000000001
	.quad	0x401d66145953586d              # double 7.3496870000000003
	.quad	0x40187dd69d30270f              # double 6.1228889999999998
	.quad	0x401f56bb1290257d              # double 7.8346980000000003
	.quad	0x400e291e215336df              # double 3.7700770000000001
	.quad	0x3fe96f99806f2629              # double 0.79487300000000005
	.quad	0x401226b228dc981c              # double 4.5377890000000001
	.quad	0x4016bd3f9e7b80aa              # double 5.6848130000000001
	.quad	0x400aa44284dfce31              # double 3.3302049999999999
	.quad	0x401ce55d1c3ac92a              # double 7.2239880000000003
	.quad	0x401011a719b4dcec              # double 4.017239
	.quad	0x402212fab53d640f              # double 9.0370690000000007
	.quad	0x3fe6aa23bff8a8f4              # double 0.70826900000000004
	.quad	0x3fe98ca3e7d13511              # double 0.79841799999999996
	.quad	0x401795970b49e01e              # double 5.8960840000000001
	.quad	0x4012f47991bc5586              # double 4.7387449999999998
	.quad	0x3ffa9d441355475a              # double 1.663395
	.quad	0x402240a63305100a              # double 9.1262679999999996
	.quad	0x400f9852f7f498c4              # double 3.9493770000000001
	.quad	0x400697c3d68405b4              # double 2.8241040000000002
	.quad	0x4023f80f776c4828              # double 9.9844930000000005
	.quad	0x401dc570c564f97f              # double 7.4428130000000001
	.quad	0x400eaf483cafb3b7              # double 3.8355869999999999
	.quad	0x401ff839042d8c2a              # double 7.9924049999999998
	.quad	0x401a20ed80a17b0f              # double 6.5321559999999996
	.quad	0x40221ee371540032              # double 9.0603289999999994
	.quad	0x4013d3e89a88ace2              # double 4.9569419999999997
	.quad	0x4021d6c0d6f544bb              # double 8.9194399999999998
	.quad	0x3ffaf2d3c792d128              # double 1.6842839999999999
	.quad	0x4023d31055b89939              # double 9.9122339999999997
	.quad	0x3ff60764adff822c              # double 1.3768050000000001
	.quad	0x401f313fd0d0678c              # double 7.798095
	.quad	0x4019b685985ad539              # double 6.4282440000000003
	.quad	0x4008b60d887ebf23              # double 3.0888930000000001
	.quad	0x400e00f55de58e65              # double 3.7504680000000001
	.quad	0x40168d987c6327ee              # double 5.6382770000000004
	.quad	0x40172157eed45e92              # double 5.7825620000000004
	.quad	0x4022be801711947d              # double 9.372071
	.quad	0x3fca75a31a4bdba1              # double 0.20671500000000001
	.quad	0x401a46049ecb31c2              # double 6.5683769999999999
	.quad	0x401cc4c9c90c4dec              # double 7.1921759999999999
	.quad	0x401662eb5f5f0b28              # double 5.5966009999999997
	.quad	0x401ac0225742dcf4              # double 6.6876309999999997
	.quad	0x3fe905c24c404a73              # double 0.78195300000000001
	.quad	0x3ff6492ab68cef67              # double 1.392863
	.quad	0x4006ae63a5c1c609              # double 2.8351510000000002
	.quad	0x40232dfdac68a937              # double 9.5898260000000004
	.quad	0x4017e6c0d6f544bb              # double 5.9753449999999999
	.quad	0x4020720ea5b530cf              # double 8.2227680000000003
	.quad	0x4007d0f062d40aaf              # double 2.9770210000000001
	.quad	0x401b3525892684cf              # double 6.801901
	.quad	0x4018a44f5d35653d              # double 6.1604590000000004
	.quad	0x40198068986fcdee              # double 6.3753989999999998
	.quad	0x4023904c48adeebb              # double 9.7818319999999996
	.quad	0x401bb1719f7f8ca8              # double 6.9232849999999999
	.quad	0x4000b708aac96cc6              # double 2.089372
	.quad	0x400c6f837b4a233a              # double 3.5544500000000001
	.quad	0x400b4ec743201041              # double 3.4134660000000001
	.quad	0x400c843b2dd377e2              # double 3.5645660000000001
	.quad	0x4019a1dd1a21ea36              # double 6.4080700000000004
	.quad	0x401a793d5347a5b1              # double 6.618398
	.quad	0x401fb5d851654d62              # double 7.9275830000000003
	.quad	0x3fc4f2a5a469d734              # double 0.16365499999999999
	.quad	0x40235c77dd872f34              # double 9.6806020000000003
	.quad	0x401fcd490e66cb10              # double 7.9504739999999998
	.quad	0x401e0af78feef5ed              # double 7.5107100000000004
	.quad	0x4022f0d5a5b9628d              # double 9.4703800000000004
	.quad	0x3fe3e4ffc9795b36              # double 0.62170400000000003
	.quad	0x4013ee5d9e40c847              # double 4.9827789999999998
	.quad	0x3ff2ddc93ea2d2fe              # double 1.1791469999999999
	.quad	0x3fe63aafff36ac64              # double 0.69466399999999995
	.quad	0x4023aa52ef911cf3              # double 9.8326639999999994
	.quad	0x40138628027d88c2              # double 4.8810120000000001
	.quad	0x401b59628cbd1245              # double 6.8372900000000003
	.quad	0x401be32a0663c750              # double 6.9718400000000003
	.quad	0x3fe56dc5d6388659              # double 0.66964999999999997
	.quad	0x400aa40e1719f7f9              # double 3.3301050000000001
	.quad	0x400b5b79d909f1f1              # double 3.4196659999999999
	.quad	0x3fe3e525892684cf              # double 0.621722
	.quad	0x40178988094e5d5b              # double 5.8843079999999999
	.quad	0x3fea0e9707182236              # double 0.81428100000000003
	.quad	0x3fb939a7c17a8933              # double 0.098535999999999999
	.quad	0x4011e99f1ae2da55              # double 4.4781459999999997
	.quad	0x40220ae09fe86834              # double 9.0212450000000004
	.quad	0x3fea1b0ee49f5169              # double 0.81580299999999994
	.quad	0x40175a176ddaceee              # double 5.8379799999999999
	.quad	0x4015c5c0b9991362              # double 5.4431180000000001
	.quad	0x4020a06d2ed783e0              # double 8.3133330000000001
	.quad	0x401cf706d5065732              # double 7.2412369999999999
	.quad	0x401b13968d759ee9              # double 6.7691290000000004
	.quad	0x400f611a11233df3              # double 3.9224130000000001
	.quad	0x4001b0c23fab10ba              # double 2.2113079999999998
	.quad	0x402128ffda4052d6              # double 8.5800769999999993
	.quad	0x4009218266772d5e              # double 3.141362
	.quad	0x400e0672756861e9              # double 3.7531479999999999
	.quad	0x401e1fae7924af0c              # double 7.530939
	.quad	0x40107769ec2ce465              # double 4.1166150000000004
	.quad	0x4017a6dd26b723ee              # double 5.9129529999999999
	.quad	0x401a25bd944aa540              # double 6.5368560000000002
	.quad	0x402187136a400fbb              # double 8.7638200000000008
	.quad	0x4008117acc4ef88c              # double 3.0085350000000002
	.quad	0x401e55657fb69985              # double 7.5833950000000003
	.quad	0x400575f45e0b4e12              # double 2.6825950000000001
	.quad	0x40228183d790752e              # double 9.2529590000000006
	.quad	0x40222b6da87a072d              # double 9.0848209999999998
	.quad	0x40222ac9d16fc9bc              # double 9.0835709999999991
	.quad	0x4023e479d4d83409              # double 9.9462419999999998
	.quad	0x40000afb3b752114              # double 2.0053619999999999
	.quad	0x3fe830ab2e1693c0              # double 0.75594099999999997
	.quad	0x4022afb7414a4d2b              # double 9.3431949999999997
	.quad	0x40068514c22ee419              # double 2.814981
	.quad	0x4020a88e9b38d60a              # double 8.3292129999999993
	.quad	0x3ffd03f811f4f50a              # double 1.813469
	.quad	0x402264a07f66e86c              # double 9.1965369999999992
	.quad	0x4012000fba8826ab              # double 4.5000600000000004
	.quad	0x401cdb324851a869              # double 7.2140589999999998
	.quad	0x3ffbb61bb05faebc              # double 1.7319599999999999
	.quad	0x400996544fe36d22              # double 3.1984029999999999
	.quad	0x4013a8066c2acb86              # double 4.9140870000000003
	.quad	0x4001d591cd1c7de5              # double 2.229282
	.quad	0x40119508f648c719              # double 4.3955419999999998
	.quad	0x3fd858b3f63c31df              # double 0.38041399999999997
	.quad	0x401041b2e59af9ec              # double 4.0641590000000001
	.quad	0x401ad2a3486f049b              # double 6.7057010000000004
	.quad	0x40032fb2aae29739              # double 2.3982899999999998
	.quad	0x400b261522a6f3f5              # double 3.3935949999999999
	.quad	0x3fedfa54c5543287              # double 0.93680799999999997
	.quad	0x402258f5a1016ce8              # double 9.1737490000000008
	.quad	0x40209230db6a1e82              # double 8.2855290000000004
	.quad	0x401ff9578a2a90cd              # double 7.9934979999999997
	.quad	0x3fdfe72da122fad7              # double 0.49848500000000001
	.quad	0x4021b131a8ef77f2              # double 8.8460819999999991
	.quad	0x4013015a07b352a8              # double 4.7513199999999998
	.quad	0x4021aab2e1693c04              # double 8.8333960000000004
	.quad	0x4023adc03361565c              # double 9.8393569999999996
	.quad	0x401f521a2e7f6f4c              # double 7.8301780000000001
	.quad	0x4009d3d4ae429e0a              # double 3.2284329999999999
	.quad	0x4012e1f46ed245b3              # double 4.7206590000000004
	.quad	0x3ff719cf13cee9dd              # double 1.4438009999999999
	.quad	0x4023f84d76ab5808              # double 9.984966
	.quad	0x401c678e9f6a93f3              # double 7.1011300000000004
	.quad	0x40220ea63b688bdb              # double 9.0286120000000007
	.quad	0x401aa3d20f2becee              # double 6.6599810000000002
	.quad	0x4014c37c5692b3cc              # double 5.1909039999999997
	.quad	0x4002a5a8155d5f57              # double 2.3308870000000002
	.quad	0x3fbadb7281fd9ba2              # double 0.104911
	.quad	0x401a87f950b955f8              # double 6.6327870000000004
	.quad	0x40161bb384fd2a63              # double 5.5270520000000003
	.quad	0x4000ae6299524bfd              # double 2.0851489999999999
	.quad	0x3ffc3f52fc2656ac              # double 1.76546
	.quad	0x3ff9e605ee568a50              # double 1.6186579999999999
	.quad	0x4022c15ad106ee31              # double 9.3776460000000003
	.quad	0x4009f450efdc9c4e              # double 3.2442950000000002
	.quad	0x400c6e49f51697f2              # double 3.553852
	.quad	0x400852a172abef07              # double 3.0403470000000001
	.quad	0x3fb2c4934267839d              # double 0.073312000000000002
	.quad	0x3fefeaf251c193b4              # double 0.99743000000000003
	.quad	0x3ff33d6f97679032              # double 1.202499
	.quad	0x4022c7cd67fd3f5b              # double 9.3902389999999993
	.quad	0x401de4cdb7ae5797              # double 7.4734410000000002
	.quad	0x3fe6f97cc39ffd61              # double 0.71795500000000001
	.quad	0x3ff149fb6134ce3e              # double 1.080562
	.quad	0x40147f8012dfd695              # double 5.1245120000000002
	.quad	0x401da9463cfb3312              # double 7.4153070000000003
	.quad	0x4023ab5f5f0b2852              # double 9.8347119999999997
	.quad	0x4020518e53eb399f              # double 8.1592889999999993
	.quad	0x3feac934267839ce              # double 0.83706100000000006
	.quad	0x401f62391d57ff9b              # double 7.8459209999999997
	.quad	0x40135fd5cb790fb6              # double 4.8435889999999997
	.quad	0x401586861e92923e              # double 5.3813709999999997
	.quad	0x400182f5989df117              # double 2.1889449999999999
	.quad	0x4023c8aaeafab53d              # double 9.8919289999999993
	.quad	0x401420a4e379b77c              # double 5.031879
	.quad	0x4022979357603926              # double 9.2960460000000005
	.quad	0x4021c58f7121ab4b              # double 8.8858599999999992
	.quad	0x3ff429131ec0b567              # double 1.2600279999999999
	.quad	0x40117cc9a77e5eab              # double 4.3718630000000003
	.quad	0x401a042e557de0d6              # double 6.5040829999999996
	.quad	0x4007889c1b54195d              # double 2.9417040000000001
	.quad	0x3fec3c664d3bf2f5              # double 0.88237299999999996
	.quad	0x4023777af640639d              # double 9.7333599999999993
	.quad	0x3ff914bcf0b6b6e1              # double 1.567563
	.quad	0x40118297396d0918              # double 4.3775300000000001
	.quad	0x4004184662bae03b              # double 2.5118529999999999
	.quad	0x4023274e22a2c237              # double 9.5767679999999995
	.quad	0x401b6c8366516db1              # double 6.8559700000000001
	.quad	0x3ff07f7be121ee67              # double 1.0311239999999999
	.quad	0x400b7ee675147f13              # double 3.436963
	.quad	0x401865cd4ed2cbea              # double 6.0994159999999997
	.quad	0x40219ca2b9d3cbc5              # double 8.8059290000000008
	.quad	0x401d612f4cf4a559              # double 7.3449070000000001
	.quad	0x40238cd1e96c3fc4              # double 9.7750389999999995
	.quad	0x4020e67e1fc08fa8              # double 8.4501810000000006
	.quad	0x4006eb430f49491f              # double 2.8648739999999999
	.quad	0x400611efb6dca07f              # double 2.7587579999999998
	.quad	0x3ff727008a697aee              # double 1.447022
	.quad	0x4005677036c9c0a9              # double 2.6755070000000001
	.quad	0x3ff8e04189374bc7              # double 1.5547500000000001
	.quad	0x3ff8a14f0520d131              # double 1.539382
	.quad	0x401ef159817b95a3              # double 7.7356930000000003
	.quad	0x3ffd747304039abf              # double 1.84093
	.quad	0x40204e44955b4678              # double 8.1528670000000005
	.quad	0x40054213a0c6b485              # double 2.6572640000000001
	.quad	0x3fffd1a650614163              # double 1.9886839999999999
	.quad	0x40201def8487b99d              # double 8.0584679999999995
	.quad	0x3ff1deb851eb851f              # double 1.1168750000000001
	.quad	0x3fec5c5d63886595              # double 0.88627500000000003
	.quad	0x3ffd5a500d5e8d54              # double 1.834549
	.quad	0x3fe3d434a01abd1b              # double 0.61965400000000004
	.quad	0x40174fa82e87d2c8              # double 5.8277900000000002
	.quad	0x401ae767903211cb              # double 6.725981
	.quad	0x40025f266ba493c9              # double 2.2964600000000002
	.quad	0x4011a88a8b08dd1e              # double 4.4145909999999997
	.quad	0x401b2f1c3265adda              # double 6.7960060000000002
	.quad	0x401407368ad68837              # double 5.0070439999999996
	.quad	0x40201c5cfede97d0              # double 8.0553969999999993
	.quad	0x3ff963b46fdeb52d              # double 1.5868420000000001
	.quad	0x4000a01797cc3a00              # double 2.0781700000000001
	.quad	0x4021d12ccf6be37e              # double 8.9085450000000002
	.quad	0x40117c9b41398634              # double 4.3716860000000004
	.quad	0x401950068db8bac7              # double 6.3281499999999999
	.quad	0x40138c15d2d01c0d              # double 4.8868020000000003
	.quad	0x3fc18d8a979e16d7              # double 0.137132
	.quad	0x3ff56a593a2df938              # double 1.3384640000000001
	.quad	0x401af149c6f36ef8              # double 6.735633
	.quad	0x401b466f0cfe1544              # double 6.8187829999999998
	.quad	0x4018cba6efc371da              # double 6.1988789999999998
	.quad	0x40135c4156e264e5              # double 4.8400930000000004
	.quad	0x402036d15ad106ee              # double 8.1070659999999997
	.quad	0x401407ee4e26d480              # double 5.0077449999999999
	.quad	0x4020e32031ceaf25              # double 8.4436049999999998
	.quad	0x401c042f61ed5ae2              # double 7.0040870000000002
	.quad	0x4015e72085b18549              # double 5.4757100000000003
	.quad	0x40165b66b6177ea2              # double 5.5892590000000002
	.quad	0x3ff352a51e321a2e              # double 1.2076769999999999
	.quad	0x40188f1348b22079              # double 6.1397219999999999
	.quad	0x4016552f7f498c3b              # double 5.583189
	.quad	0x3fcfe679463cfb33              # double 0.249221
	.quad	0x4001b1ada76d97b3              # double 2.211757
	.quad	0x4001925edd052935              # double 2.1964700000000001
	.quad	0x3ff097afea3df6dc              # double 1.0370330000000001
	.quad	0x40214aa8a82a5615              # double 8.6458180000000002
	.quad	0x400f208398a65493              # double 3.890876
	.quad	0x3fe898676a7264a1              # double 0.76860399999999995
	.quad	0x400b46f156191149              # double 3.40964
	.quad	0x3f6dd7ecbb7f9d6f              # double 0.003643
	.quad	0x3ff5ea8fc0d2c387              # double 1.369766
	.quad	0x4023d3076c050bd8              # double 9.9121659999999991
	.quad	0x400f3e0e736049ed              # double 3.9053010000000001
	.quad	0x3fffd82cb20fb225              # double 1.9902770000000001
	.quad	0x402129dde37585be              # double 8.5817709999999998
	.quad	0x40227a426bb55ac0              # double 9.2387879999999995
	.quad	0x401c4583a53b8e4c              # double 7.0678850000000004
	.quad	0x4008e90f733a8a40              # double 3.1137990000000002
	.quad	0x40215cc5fbf83383              # double 8.6811980000000002
	.quad	0x401da3f705857aff              # double 7.4101220000000003
	.quad	0x3fd9d74d594f26af              # double 0.40376600000000001
	.quad	0x401d5b2788db0575              # double 7.3390180000000003
	.quad	0x3ff85c725c3dee78              # double 1.52257
	.quad	0x4019e0fd7e45803d              # double 6.4697170000000002
	.quad	0x3fd1942917507e9e              # double 0.27466800000000002
	.quad	0x4008c1bb05faebc4              # double 3.094595
	.quad	0x401d475d9a0f0a5f              # double 7.319693
	.quad	0x401d97bbf93ff25e              # double 7.3981779999999997
	.quad	0x40129cce5f7403de              # double 4.6531310000000001
	.quad	0x400a5cb5fe542e55              # double 3.2952689999999998
	.quad	0x401b2055757d5a9f              # double 6.7815760000000003
	.quad	0x4015ea53b8e4b87c              # double 5.4788350000000001
	.quad	0x401594395810624e              # double 5.3947500000000002
	.quad	0x4015d4955b4677b4              # double 5.4576010000000004
	.quad	0x40146461309c7ffe              # double 5.0980270000000001
	.quad	0x401a61040bfe3b04              # double 6.5947420000000001
	.quad	0x3ffc306f69446738              # double 1.761825
	.quad	0x401e2df00abf76a3              # double 7.544861
	.quad	0x4020b4e7685985ad              # double 8.3533279999999994
	.quad	0x4023a8767d34df05              # double 9.8290290000000002
	.quad	0x401b50b49e01de27              # double 6.8288140000000004
	.quad	0x3ff8792c061847f5              # double 1.5295829999999999
	.quad	0x4020ad35eb7457c1              # double 8.3383020000000005
	.quad	0x4018bfb3311a543f              # double 6.1872069999999999
	.quad	0x400963161a1db878              # double 3.1733820000000001
	.quad	0x40015c46d82ba5a0              # double 2.1700569999999999
	.quad	0x3fe2db530ced4e4d              # double 0.58927300000000005
	.quad	0x3ffde328f9f44d44              # double 1.8679589999999999
	.quad	0x400f2e8fb00bcbe6              # double 3.8977349999999999
	.quad	0x40086b4528283d36              # double 3.052378
	.quad	0x40205369fcf3dc05              # double 8.1629179999999995
	.quad	0x3fdcaa1511dffc54              # double 0.44788099999999997
	.quad	0x400a3bef49cf56eb              # double 3.2792650000000001
	.quad	0x400bdb456b441bb9              # double 3.4820660000000001
	.quad	0x3fd858750c1b9735              # double 0.38039899999999999
	.quad	0x40059db65ecc3e32              # double 2.7020080000000002
	.quad	0x401ed878316a0557              # double 7.7113959999999996
	.quad	0x4015286f8ad2567a              # double 5.2894880000000004
	.quad	0x402246eb4e981388              # double 9.1385140000000006
	.quad	0x401106fc158fb43e              # double 4.2568210000000004
	.quad	0x400d5c0ca600b029              # double 3.6699459999999999
	.quad	0x400b4d5bee3d5fdd              # double 3.4127730000000001
	.quad	0x4008ffb3fa6defc8              # double 3.1248550000000002
	.quad	0x401768e92d55a3a1              # double 5.8524520000000004
	.quad	0x401f170d1fa33376              # double 7.7725109999999997
	.quad	0x401e1dff3f0fe048              # double 7.5292940000000001
	.quad	0x401b8a77a2cecc81              # double 6.8852219999999997
	.quad	0x3fb8b955f78359bc              # double 0.096577999999999997
	.quad	0x3f8b1e9f2778140e              # double 0.013242
	.quad	0x3fa4cad57bc7f77b              # double 0.04061
	.quad	0x401a641b75a74c0a              # double 6.5977610000000002
	.quad	0x4022302a9930be0e              # double 9.0940750000000001
	.quad	0x400bd73eab367a10              # double 3.4801000000000002
	.quad	0x3fdc5df2239e6aba              # double 0.44323400000000002
	.quad	0x4012a0cf1800a7c6              # double 4.6570400000000003
	.quad	0x4018b35371971c11              # double 6.1751230000000001
	.quad	0x4014a486f049a997              # double 5.1606709999999998
	.quad	0x401d6ae3e6c4c597              # double 7.3543849999999997
	.quad	0x401156787ce95fab              # double 4.3344440000000004
	.quad	0x401ff129888f861a              # double 7.9855099999999997
	.quad	0x401504db9c7368ad              # double 5.2547439999999996
	.quad	0x401597457c0b1359              # double 5.3977259999999996
	.quad	0x3fe2dcb35f3d7d39              # double 0.58944099999999999
	.quad	0x40012e219652bd3c              # double 2.1475249999999999
	.quad	0x3fd862cba732df50              # double 0.38102999999999998
	.quad	0x4013cd6ba8c58687              # double 4.9506059999999996
	.quad	0x40160ff3f0fe047d              # double 5.5155789999999998
	.quad	0x4020deb91b3f20a7              # double 8.4350059999999996
	.quad	0x3ff9ea9a3d2d87f9              # double 1.6197760000000001
	.quad	0x3fd5fb82c2bd7f52              # double 0.343476
	.quad	0x401ac12599ed7c70              # double 6.6886200000000002
	.quad	0x401ef5bff04577d9              # double 7.7399899999999997
	.quad	0x4022cfac1d29dc72              # double 9.4056099999999994
	.quad	0x401c8bd4cfd08d4c              # double 7.1365540000000003
	.quad	0x3fdbc64fdb09a672              # double 0.433979
	.quad	0x40192bccaf709b74              # double 6.2927730000000004
	.quad	0x4014da658c4bd33d              # double 5.2132779999999999
	.quad	0x40188ca31e7d9989              # double 6.1373410000000002
	.quad	0x4001bbf26f1dc50d              # double 2.216771
	.quad	0x40126f2778140dd4              # double 4.608549
	.quad	0x4016756c93a71151              # double 5.6146719999999997
	.quad	0x4005b3269df97aab              # double 2.7124760000000001
	.quad	0x4010d95bbbe878fb              # double 4.2122640000000002
	.quad	0x4023f04cad57bc7f              # double 9.9693349999999991
	.quad	0x40232e52157689ca              # double 9.5904699999999998
	.quad	0x400fcbf8fcd67fd4              # double 3.974596
	.quad	0x4020087a4a48f96e              # double 8.0165579999999999
	.quad	0x401f023358f2e05d              # double 7.7521490000000001
	.quad	0x400892c40d0aaa7e              # double 3.071663
	.quad	0x3ff306290eed02cd              # double 1.1890039999999999
	.quad	0x40120c2480e8c8ac              # double 4.5118580000000001
	.quad	0x3fea5daceee0f3cb              # double 0.82393499999999997
	.quad	0x401944c0df58c08b              # double 6.3171419999999996
	.quad	0x4006646a5d6bebe1              # double 2.7990309999999998
	.quad	0x3ff19ff0cbaf965b              # double 1.101548
	.quad	0x401325d0fa58f712              # double 4.7869299999999999
	.quad	0x3fe2ea033e78e193              # double 0.59106599999999998
	.quad	0x4011043bf727136a              # double 4.2541349999999998
	.quad	0x4020e746cb966be8              # double 8.4517120000000006
	.quad	0x40049ee2435696e6              # double 2.5775800000000002
	.quad	0x4020803968d759ef              # double 8.2504380000000008
	.quad	0x4020ab415b1422cd              # double 8.3344830000000005
	.quad	0x400ad4d7add15f03              # double 3.3539270000000001
	.quad	0x400f603d57796399              # double 3.9219919999999999
	.quad	0x40109d6f112fd32c              # double 4.1537439999999997
	.quad	0x4010062174c4cdfb              # double 4.0059870000000002
	.quad	0x3ff5eb8a5ce5b424              # double 1.3700049999999999
	.quad	0x4005313a4f8726d0              # double 2.6490369999999999
	.quad	0x40055e0ce0b912dc              # double 2.6709230000000002
	.quad	0x40225461309c7ffe              # double 9.1648040000000002
	.quad	0x40206f8bbd380453              # double 8.2178629999999995
	.quad	0x40213587f88765ba              # double 8.6045529999999992
	.quad	0x40225bc1acde19fc              # double 9.1792119999999997
	.quad	0x4023fb4a2339c0ec              # double 9.9908000000000001
	.quad	0x401d2bef8ceb356e              # double 7.2929060000000003
	.quad	0x3ffc7ce3150dae3e              # double 1.7804899999999999
	.quad	0x3fbbe9a6f826edab              # double 0.10903400000000001
	.quad	0x40207263d816aceb              # double 8.2234180000000006
	.quad	0x401403393ab430f5              # double 5.0031480000000004
	.quad	0x40217c9f0e4da09d              # double 8.7434010000000004
	.quad	0x4017d4c122749f0e              # double 5.9577679999999997
	.quad	0x400512c3009b3073              # double 2.6341610000000002
	.quad	0x4008e4388ebcc6c5              # double 3.1114359999999999
	.quad	0x401f2bbcb1cc9646              # double 7.7927119999999999
	.quad	0x4021364fdb09a672              # double 8.6060780000000001
	.quad	0x401e4e9c886162f1              # double 7.5767689999999996
	.quad	0x4000ec636b096356              # double 2.115424
	.quad	0x400173bb83cf2cf9              # double 2.1815099999999998
	.quad	0x4020dad3c792d128              # double 8.4273969999999991
	.quad	0x400d2dd82fd75e20              # double 3.6473849999999999
	.quad	0x40231c6a1a500d5f              # double 9.5554970000000007
	.quad	0x4001857b84db9c73              # double 2.1901769999999998
	.quad	0x3ff45f91600f3450              # double 1.2733319999999999
	.quad	0x3ff30151a437824d              # double 1.1878219999999999
	.quad	0x40112db22d0e5604              # double 4.2946249999999999
	.quad	0x402001774256bca5              # double 8.0028629999999996
	.quad	0x4016d9d2bf551505              # double 5.7127179999999997
	.quad	0x401def8ad2567989              # double 7.4839279999999996
	.quad	0x4000813122b7baed              # double 2.0630820000000001
	.quad	0x400dc1059ea57215              # double 3.719249
	.quad	0x401fd9a6f826edab              # double 7.9625510000000003
	.quad	0x400496e7a311e860              # double 2.5736840000000001
	.quad	0x3ff82cbd987c6328              # double 1.510923
	.quad	0x401e811ada76d97b              # double 7.6260789999999998
	.quad	0x4015c70c1333b96b              # double 5.4443820000000001
	.quad	0x3ff497635e74299e              # double 1.2869600000000001
	.quad	0x4013b30270f38822              # double 4.9248139999999996
	.quad	0x401b3ebd09e12a52              # double 6.8112680000000001
	.quad	0x4006b668c2613900              # double 2.839067
	.quad	0x400655afaf859429              # double 2.791839
	.quad	0x40209985058dde7a              # double 8.2998429999999992
	.quad	0x400fe1eff9f87f02              # double 3.9853209999999999
	.quad	0x4016fd7cb2d905c0              # double 5.7475459999999998
	.quad	0x3fd022ea0fd3b29a              # double 0.25213099999999999
	.quad	0x400f8aab042528ae              # double 3.9427089999999998
	.quad	0x4013b13cee9dd7ed              # double 4.9230840000000002
	.quad	0x402164ae85b9e8c4              # double 8.6966439999999991
	.quad	0x4014cd388a8b08dd              # double 5.2004109999999999
	.quad	0x401acbd33d29563b              # double 6.6990480000000003
	.quad	0x4018e11b60ae9681              # double 6.2198310000000001
	.quad	0x3feafb82c2bd7f52              # double 0.84320200000000001
	.quad	0x3ffb590d173fb7a6              # double 1.709241
	.quad	0x3ff034fe79ee02a7              # double 1.0129379999999999
	.quad	0x3ff541f644955b46              # double 1.3286039999999999
	.quad	0x401f6f52fc2656ac              # double 7.8587150000000001
	.quad	0x3ff3599bb2788db0              # double 1.2093769999999999
	.quad	0x401fd7afa7221859              # double 7.9606310000000002
	.quad	0x401afcc78e9f6a94              # double 6.746855
	.quad	0x3ff395d1c3ac929b              # double 1.2240770000000001
	.quad	0x4022a04ff43419e3              # double 9.31311
	.quad	0x4013c36c58eeae9f              # double 4.9408430000000001
	.quad	0x40132d22c881e471              # double 4.7940779999999998
	.quad	0x40209823e9ea1405              # double 8.2971489999999992
	.quad	0x4023c57646ae3a3b              # double 9.8856680000000007
	.quad	0x4020442f837b4a23              # double 8.1331749999999996
	.quad	0x40239f574f722e1b              # double 9.8112130000000004
	.quad	0x40157fc86cebbba5              # double 5.3747879999999997
	.quad	0x4023f74ddf86e3b4              # double 9.9830159999999992
	.quad	0x400fa877681669cf              # double 3.9572590000000001
	.quad	0x4021808bb906466b              # double 8.7510659999999998
	.quad	0x400d2b8b69552e30              # double 3.6462620000000001
	.quad	0x3ff7dde9c0229a5f              # double 1.4916780000000001
	.quad	0x4020b52849cb252d              # double 8.3538230000000002
	.quad	0x400595e41d4b6a62              # double 2.6981890000000002
	.quad	0x3ff6036113404ea5              # double 1.3758250000000001
	.quad	0x4019547fdc5931ca              # double 6.3325189999999996
	.quad	0x4021551e75360d02              # double 8.6662479999999995
	.quad	0x3fd8a411c2a02321              # double 0.38501400000000002
	.quad	0x401539e9d0e991ff              # double 5.3065559999999996
	.quad	0x3ff192da98676a72              # double 1.0983529999999999
	.quad	0x3ff4443e5321e604              # double 1.266661
	.quad	0x401d9932d6ece13f              # double 7.3996079999999997
	.quad	0x401bd12c6ac215ba              # double 6.9542710000000003
	.quad	0x400180a17b0f6ad7              # double 2.187808
	.quad	0x4015db26394face6              # double 5.4640129999999996
	.quad	0x40113b69db65ecc4              # double 4.3080210000000001
	.quad	0x3ffd887b99d451fc              # double 1.8458209999999999
	.quad	0x400419be4cd74928              # double 2.5125700000000002
	.quad	0x400de24dd2f1a9fc              # double 3.7355
	.quad	0x401fc19f7f8ca81a              # double 7.9390850000000004
	.quad	0x4022e83d790752db              # double 9.4535940000000007
	.quad	0x4016c43d89ce4a7b              # double 5.6916409999999997
	.quad	0x40167d1676640a6c              # double 5.6221560000000004
	.quad	0x401dd6a012599ed8              # double 7.4595950000000001
	.quad	0x4009b0468448cf7d              # double 3.2110720000000001
	.quad	0x3fe7fbb73083558a              # double 0.74947699999999995
	.quad	0x4023baa9d627bf62              # double 9.8645770000000006
	.quad	0x4014f247cb70ac3b              # double 5.2366020000000004
	.quad	0x4022471ef30a4e38              # double 9.1389080000000006
	.quad	0x40025ca29845dc83              # double 2.2952319999999999
	.quad	0x401724e1a3f4666f              # double 5.7860170000000002
	.quad	0x4016afde7210be94              # double 5.6717469999999999
	.quad	0x401d5c5fbf83382e              # double 7.3402089999999998
	.quad	0x3ffb42ce4649906d              # double 1.70381
	.quad	0x4021781eabbcb1cd              # double 8.7346090000000007
	.quad	0x4021e0d25edd0529              # double 8.9391049999999996
	.quad	0x3ff0db4245f5ad97              # double 1.0535300000000001
	.quad	0x401056e9bbf0dc77              # double 4.0848760000000004
	.quad	0x400f007bbb62413e              # double 3.8752360000000001
	.quad	0x3fb508f648c7192f              # double 0.082168000000000005
	.quad	0x400687ef9db22d0e              # double 2.8163749999999999
	.quad	0x3fd7ea9a3d2d87f9              # double 0.37369400000000003
	.quad	0x4018b2a5a469d734              # double 6.1744599999999998
	.quad	0x401e8f9a8cdea034              # double 7.6402380000000001
	.quad	0x3ff74ccff21b3aef              # double 1.456253
	.quad	0x40031173fb7a5f42              # double 2.3835220000000001
	.quad	0x400cb3ab430f4949              # double 3.5877289999999999
	.quad	0x3ff325321e603d57              # double 1.1965809999999999
	.quad	0x402336fef7c243dd              # double 9.6074140000000003
	.quad	0x3febc069e7fb267c              # double 0.86723799999999995
	.quad	0x40171b790fb65669              # double 5.7768290000000002
	.quad	0x4005a3c42a66dbd7              # double 2.7049639999999999
	.quad	0x4003108dd1e53a82              # double 2.3830830000000001
	.quad	0x40131d2e94680171              # double 4.7784979999999999
	.quad	0x401b26d0917d6b66              # double 6.7879050000000003
	.quad	0x401a5bacb4289119              # double 6.5895260000000002
	.quad	0x401433fe1975f2cb              # double 5.0507739999999997
	.quad	0x401a2e5b8561d430              # double 6.5452709999999996
	.quad	0x3ff0adafd113836b              # double 1.0424040000000001
	.quad	0x3fe878af3e468cac              # double 0.76473199999999996
	.quad	0x4017810385c67dfe              # double 5.8759899999999998
	.quad	0x402197b8f57f737e              # double 8.7963330000000006
	.quad	0x40013cdf69878317              # double 2.1547230000000002
	.quad	0x3fe979a8cdea033e              # double 0.79610099999999995
	.quad	0x4020dbf1e8e60807              # double 8.4295799999999996
	.quad	0x400fddb9841aac54              # double 3.9832640000000001
	.quad	0x40130d7cb2d905c0              # double 4.7631709999999998
	.quad	0x4019a240746455eb              # double 6.4084490000000001
	.quad	0x402303254e6e221d              # double 9.5061440000000008
	.quad	0x3fea6d549731098d              # double 0.82584599999999997
	.quad	0x3fb0b04ab606b7aa              # double 0.065189999999999998
	.quad	0x401bfa4ebdd334c6              # double 6.9944410000000001
	.quad	0x4014f0fa58f7121b              # double 5.2353300000000003
	.quad	0x40092f35e310dbf0              # double 3.1480519999999999
	.quad	0x4019bdac68a936c6              # double 6.4352280000000004
	.quad	0x40189715831f03d1              # double 6.1475429999999998
	.quad	0x3ff477baecd07853              # double 1.279231
	.quad	0x401ac57f3061c79b              # double 6.6928679999999998
	.quad	0x400a4dd616f86a0a              # double 3.2880060000000002
	.quad	0x40136eaab042528b              # double 4.8580730000000001
	.quad	0x400ffbc77143393b              # double 3.9979390000000001
	.quad	0x4021deb399f5dfec              # double 8.9349640000000007
	.quad	0x4009f4ef459d9903              # double 3.2445970000000002
	.quad	0x4022435525cc4263              # double 9.1315089999999994
	.quad	0x4021db0d7386099a              # double 8.9278370000000002
	.quad	0x3fec6c80c73abc94              # double 0.88824499999999995
	.quad	0x4018b71da37ef5a9              # double 6.1788239999999996
	.quad	0x400b10a350d2806b              # double 3.383124
	.quad	0x3ff5b380cb6c7a7d              # double 1.3563240000000001
	.quad	0x4020eced4e4c942d              # double 8.4627479999999995
	.quad	0x401d4ea3df6db941              # double 7.326797
	.quad	0x3fefc5fbf83382e4              # double 0.99291799999999996
	.quad	0x40220721f6cacd18              # double 9.0139309999999995
	.quad	0x3fe644b2b777d0f2              # double 0.695886
	.quad	0x402305b39e279dd4              # double 9.5111360000000004
	.quad	0x401a437542a23c00              # double 6.5658770000000004
	.quad	0x40206eb0d9513f8e              # double 8.2161930000000005
	.quad	0x40204c5154866a12              # double 8.1490580000000001
	.quad	0x40187865d7cb2d90              # double 6.1175759999999997
	.quad	0x401a315a07b352a8              # double 6.5481949999999998
	.quad	0x40108d1e96c3fc44              # double 4.1378120000000003
	.quad	0x401ce456b441bb8c              # double 7.2229869999999998
	.quad	0x4020d7cf80dc3372              # double 8.4215049999999998
	.quad	0x402016b2074ea8da              # double 8.0443269999999991
	.quad	0x40160867f0aa21a7              # double 5.5082089999999999
	.quad	0x4005e48f96e15875              # double 2.736602
	.quad	0x401a021e1d2178f7              # double 6.5020680000000004
	.quad	0x402190d32830a0b2              # double 8.7828610000000005
	.quad	0x3fe9e9185cee17a0              # double 0.80970399999999997
	.quad	0x3ff3c9613d31b9b6              # double 1.2366649999999999
	.quad	0x4005b2e1693c03bc              # double 2.7123439999999999
	.quad	0x4016996e158750c2              # double 5.6498340000000002
	.quad	0x4003342f61ed5ae2              # double 2.4004810000000001
	.quad	0x4010fd75e2046c76              # double 4.2475199999999997
	.quad	0x4022910b1feeb2d1              # double 9.2832880000000007
	.quad	0x401e36ea854477ff              # double 7.5536289999999999
	.quad	0x4019bf623076c051              # double 6.4368980000000002
	.quad	0x401694d4cb9ecf64              # double 5.6453430000000004
	.quad	0x40113bea4ebdd335              # double 4.3085110000000002
	.quad	0x3fe4026cc1ca3a4b              # double 0.62529599999999996
	.quad	0x3ff65d1b2e59af9f              # double 1.3977310000000001
	.quad	0x3ff822856605ee57              # double 1.5084280000000001
	.quad	0x40222869e7fb267c              # double 9.0789329999999992
	.quad	0x4000c28672756862              # double 2.094983
	.quad	0x4008fbbe0157eed4              # double 3.1229209999999998
	.quad	0x3fee3608d08919f0              # double 0.94409600000000005
	.quad	0x3fb8c942d490e66d              # double 0.096821000000000004
	.quad	0x400abb38d60a6330              # double 3.3414169999999999
	.quad	0x40150f4e0114d2f6              # double 5.2649460000000001
	.quad	0x401eaf6555c52e73              # double 7.6712850000000001
	.quad	0x3fd770d1fa333765              # double 0.366261
	.quad	0x401700bb6ed67770              # double 5.7507149999999996
	.quad	0x4018644cbe1eb420              # double 6.0979489999999998
	.quad	0x401102b020c49ba6              # double 4.2526250000000001
	.quad	0x40184f37fbefd007              # double 6.0773619999999999
	.quad	0x40187f8b9baa1512              # double 6.1245560000000001
	.quad	0x3ff629eb2074ea8e              # double 1.3852340000000001
	.quad	0x4010f4052d666a98              # double 4.2383009999999999
	.quad	0x4013626aa8eb4635              # double 4.8461100000000004
	.quad	0x4013c1758e219653              # double 4.9389250000000002
	.quad	0x3feba6f1dc50ce4f              # double 0.86412900000000004
	.quad	0x40234215336deb96              # double 9.6290680000000002
	.quad	0x4023d4a515ce9e5e              # double 9.9153219999999997
	.quad	0x3ffb159e6256366d              # double 1.6927779999999999
	.quad	0x402248c564f97edc              # double 9.1421309999999991
	.quad	0x401771633482be8c              # double 5.8607300000000002
	.quad	0x3fdf23aafff36ac6              # double 0.48655199999999998
	.quad	0x400fdd2178f68be3              # double 3.982974
	.quad	0x400f7b97bb730835              # double 3.9353479999999998
	.quad	0x3fe7454de7ea5f85              # double 0.72721000000000002
	.quad	0x4021fb9f127f5e85              # double 8.9914480000000001
	.quad	0x3ff6015e39713ad6              # double 1.3753340000000001
	.quad	0x40226e4c942d490e              # double 9.2154279999999993
	.quad	0x40234cffa7eb6bf4              # double 9.6503879999999995
	.quad	0x4017113a0c6b484d              # double 5.7668229999999996
	.quad	0x4014275d9a0f0a5f              # double 5.038443
	.quad	0x4022995df6555c53              # double 9.2995450000000002
	.quad	0x40064dd1e53a81dc              # double 2.787998
	.quad	0x3fc707d0aed99cbf              # double 0.179926
	.quad	0x40115cc1871e6cd3              # double 4.3405820000000004
	.quad	0x3fe0fd32c625e99f              # double 0.53090800000000005
	.quad	0x402278aefb2aae29              # double 9.2357099999999992
	.quad	0x40103f00ef1348b2              # double 4.0615269999999999
	.quad	0x40155c558644523f              # double 5.3401699999999996
	.quad	0x4021af31d2e0e304              # double 8.8421769999999995
	.quad	0x401c88387df5cf25              # double 7.1330280000000004
	.quad	0x401a070329802c0a              # double 6.5068479999999997
	.quad	0x401211c10d7be985              # double 4.5173379999999996
	.quad	0x401f8528283d35eb              # double 7.8800359999999995
	.quad	0x3fe91a2a4db163bb              # double 0.78444400000000003
	.quad	0x3ff7a98bb4d48883              # double 1.478893
	.quad	0x3ff27f1f9acffa7f              # double 1.1560360000000001
	.quad	0x3ffa75d13d74d595              # double 1.653764
	.quad	0x401d65b70691ea79              # double 7.3493310000000003
	.quad	0x401d56b09635610b              # double 7.3346580000000001
	.quad	0x40115a294141e9af              # double 4.3380479999999997
	.quad	0x4020041c8216c615              # double 8.0080299999999998
	.quad	0x3fd78f36694898f6              # double 0.368116
	.quad	0x3ff6da62ed352221              # double 1.4283170000000001
	.quad	0x4003213b18dac259              # double 2.3912260000000001
	.quad	0x4022445fbf83382e              # double 9.1335429999999995
	.quad	0x402103e596c82e02              # double 8.5076110000000007
	.quad	0x3ffb4a0c282c6ef4              # double 1.705578
	.quad	0x401fe79b34a44c7b              # double 7.9761779999999999
	.quad	0x4020283a53b8e4b8              # double 8.0785699999999991
	.quad	0x402192ce89656ef0              # double 8.7867320000000007
	.quad	0x4002f64bec679cc7              # double 2.3702619999999999
	.quad	0x40122fb43d89ce4a              # double 4.5465859999999996
	.quad	0x40239434a01abd1b              # double 9.7894640000000006
	.quad	0x40181967caea747e              # double 6.0248100000000004
	.quad	0x4023b5edf1e0828c              # double 9.8553309999999996
	.quad	0x400310b49e01de27              # double 2.3831570000000002
	.quad	0x400ab59ff4fd6d7f              # double 3.3386840000000002
	.quad	0x3fca737110e453d2              # double 0.206648
	.quad	0x400915885d31337f              # double 3.1355140000000001
	.quad	0x401816e115592d99              # double 6.0223430000000002
	.quad	0x4011e32378ab0c89              # double 4.4718150000000003
	.quad	0x40205200c0f01fb8              # double 8.1601619999999997
	.quad	0x40239bb83cf2cf96              # double 9.8041400000000003
	.quad	0x40011d22856605ee              # double 2.1392259999999998
	.quad	0x400d8f944241c3f0              # double 3.6951070000000001
	.quad	0x401b0c2f837b4a23              # double 6.7618999999999998
	.quad	0x401b75eb7457c0b1              # double 6.8651559999999998
	.quad	0x3ffd1a2c669057d1              # double 1.8188899999999999
	.quad	0x40235eee73e681aa              # double 9.6854130000000005
	.quad	0x40223a7221858bc6              # double 9.1141520000000007
	.quad	0x401767d49d7ba66a              # double 5.8513970000000004
	.quad	0x40106bcba3012168              # double 4.1052689999999998
	.quad	0x400df6f32bdc26dd              # double 3.745581
	.quad	0x4011a1eafee6fb4c              # double 4.4081229999999998
	.quad	0x3ff7cd551d68c693              # double 1.48763
	.quad	0x4023c73775b81301              # double 9.8890949999999993
	.quad	0x40208316e3715400              # double 8.2560339999999997
	.quad	0x401df6605ee568a5              # double 7.4906019999999999
	.quad	0x4016991361dc93ea              # double 5.6494879999999998
	.quad	0x4017bb6dca07f66f              # double 5.9330360000000004
	.quad	0x3fe3531db445ed4a              # double 0.60389599999999999
	.quad	0x40142c34c1a8ac5c              # double 5.0431699999999999
	.quad	0x4012fb7ae5796bfd              # double 4.7455860000000003
	.quad	0x3ff7649c2c1b10fd              # double 1.4620629999999999
	.quad	0x3fd1fb0d51f81a58              # double 0.28094799999999998
	.quad	0x40229407ee0b0af6              # double 9.289123
	.quad	0x4011abf3bea91d9b              # double 4.4179219999999999
	.quad	0x40141e67d77fae36              # double 5.029693
	.quad	0x400996ebd4cfd08d              # double 3.1986919999999999
	.quad	0x4016c695d91ab8e9              # double 5.6939310000000001
	.quad	0x4012c652bd3c3611              # double 4.6936749999999998
	.quad	0x40115c5718eb8950              # double 4.3401759999999996
	.quad	0x4007b620ee8d10f5              # double 2.96393
	.quad	0x401e6c536d655e29              # double 7.6057870000000002
	.quad	0x401e3985f06f6944              # double 7.5561749999999996
	.quad	0x3ffb04e0daa0cae6              # double 1.6886909999999999
	.quad	0x3fc3455a7d24180d              # double 0.15055399999999999
	.quad	0x4007439abf338716              # double 2.90801
	.quad	0x4015bc4d22c881e4              # double 5.4338879999999996
	.quad	0x4002b50fc71d6063              # double 2.338409
	.quad	0x3fd13947496aad1d              # double 0.269121
	.quad	0x401722189bd8383b              # double 5.7832970000000001
	.quad	0x4023fadd377e1b8f              # double 9.9899690000000003
	.quad	0x401e90225742dcf4              # double 7.6407559999999997
	.quad	0x3fcf564b662fdfc2              # double 0.24482100000000001
	.quad	0x401da1bd1ed9dfdb              # double 7.4079480000000002
	.quad	0x40145bbf50e34763              # double 5.0895970000000004
	.quad	0x40192fc6da448494              # double 6.2966569999999997
	.quad	0x3fffdf04ddb5525d              # double 1.9919480000000001
	.quad	0x3ffbee5796bfca86              # double 1.745689
	.quad	0x4021a15faa8a82a5              # double 8.8151829999999993
	.quad	0x4012ddc0db2702a3              # double 4.7165559999999997
	.quad	0x40153606748e4756              # double 5.302759
	.quad	0x40056bdf4c2b51bd              # double 2.6776719999999998
	.quad	0x401dabd230b9dc2f              # double 7.4177939999999998
	.quad	0x401d187e7c06e19c              # double 7.2739200000000004
	.quad	0x4000b41e9af5ba2c              # double 2.0879490000000001
	.quad	0x400743ac929aa1d7              # double 2.9080439999999999
	.quad	0x4011dd2d01c0ca60              # double 4.465992
	.quad	0x401dc5f7403dddb1              # double 7.4433259999999999
	.quad	0x4020b512cadddf44              # double 8.3536590000000003
	.quad	0x401172bf11f926c8              # double 4.3620570000000001
	.quad	0x3ff5605143bf7271              # double 1.336015
	.quad	0x401fcb499d0203e6              # double 7.9485229999999998
	.quad	0x401b9ffc115df655              # double 6.9062349999999997
	.quad	0x402109c49774256c              # double 8.5190780000000003
	.quad	0x40199b4b2fa93af7              # double 6.4016539999999997
	.quad	0x401aaedaa92e6213              # double 6.6707559999999999
	.quad	0x40124e7210be9425              # double 4.5766070000000001
	.quad	0x4015ee4da09cc31a              # double 5.4827180000000002
	.quad	0x402053315d701d9f              # double 8.1624859999999995
	.quad	0x4020309acbc8c0cf              # double 8.0949310000000008
	.quad	0x4010f224edf61240              # double 4.2364689999999996
	.quad	0x3ff4a90cd423d923              # double 1.291272
	.quad	0x401a1d441355475a              # double 6.5285799999999998
	.quad	0x400c807d4e09784f              # double 3.5627390000000001
	.quad	0x40154566cf41f213              # double 5.3177750000000001
	.quad	0x400f51fb3fa6defc              # double 3.9150299999999998
	.quad	0x4023c28aa433508f              # double 9.8799639999999993
	.quad	0x40114cc74b838c11              # double 4.3249789999999999
	.quad	0x401244b0e1b4bb5e              # double 4.5670809999999999
	.quad	0x401aa89b951c5c57              # double 6.6646559999999999
	.quad	0x4012c51b93037d63              # double 4.692488
	.quad	0x4017b0d130df9bdc              # double 5.9226729999999996
	.quad	0x400d0f16f4384ba1              # double 3.632368
	.quad	0x400166ce358298cc              # double 2.175198
	.quad	0x4005a30ec3116228              # double 2.704618
	.quad	0x402131327243137b              # double 8.596088
	.quad	0x4008603a322af577              # double 3.046986
	.quad	0x401d49d7774aba38              # double 7.3221109999999995
	.quad	0x40005ad080b673c5              # double 2.044343
	.quad	0x400bae93e1c9b414              # double 3.4602430000000002
	.quad	0x401f1d03968d759f              # double 7.778334
	.quad	0x3ff11143bf727137              # double 1.0667150000000001
	.quad	0x40143a78f25a2510              # double 5.0571020000000004
	.quad	0x3ff8cbee807bbb62              # double 1.5497879999999999
	.quad	0x3ff5887980f55de6              # double 1.3458190000000001
	.quad	0x401131d3ed527e52              # double 4.2986599999999999
	.quad	0x4002aaf709b738e7              # double 2.3334790000000001
	.quad	0x402228f733a8a3f9              # double 9.0800110000000007
	.quad	0x3fc86705c896dd27              # double 0.19064400000000001
	.quad	0x40004388ebcc6c55              # double 2.0329760000000001
	.quad	0x401ca28d434a01ac              # double 7.1587420000000002
	.quad	0x4007d688bda9435b              # double 2.9797530000000001
	.quad	0x4009dd4067cf1c32              # double 3.2330329999999998
	.quad	0x401fbe0f7fcfc3f8              # double 7.9356059999999999
	.quad	0x40024582dbe7f2c3              # double 2.283941
	.quad	0x4021932f44912989              # double 8.7874700000000008
	.quad	0x40106cee5abc0e39              # double 4.1063780000000003
	.quad	0x40226195cc857f30              # double 9.1905959999999993
	.quad	0x4023555e28aa4335              # double 9.6667339999999999
	.quad	0x401005f138bcdff0              # double 4.0058030000000002
	.quad	0x4020420c8cd63cb8              # double 8.1290019999999998
	.quad	0x3fdff8ec0f883340              # double 0.49956800000000001
	.quad	0x3fe705271bcdbbe0              # double 0.71937899999999999
	.quad	0x4003b4c87980f55e              # double 2.463273
	.quad	0x4011d7082491afc0              # double 4.4599919999999997
	.quad	0x40213f1b47842310              # double 8.6232550000000003
	.quad	0x4009289656eefa1e              # double 3.1448179999999999
	.quad	0x4023af64adff822c              # double 9.8425650000000004
	.quad	0x401c27d77fae3609              # double 7.0389080000000002
	.quad	0x400044463065f959              # double 2.033337
	.quad	0x401d4d9a95421c04              # double 7.3257849999999998
	.quad	0x400b6dddf43c7d5f              # double 3.4286460000000001
	.quad	0x400f83f5f91600f3              # double 3.9394339999999999
	.quad	0x4021865321e603d5              # double 8.7623529999999992
	.quad	0x40200b1db445ed4a              # double 8.0217109999999998
	.quad	0x3ff1892ff4ba51a0              # double 1.095993
	.quad	0x3fe059fb1e18efbb              # double 0.51098399999999999
	.quad	0x3ff5eb69db65ecc4              # double 1.369974
	.quad	0x40212fbe121ee675              # double 8.5932469999999999
	.quad	0x3fe2fbacb4289119              # double 0.59322200000000003
	.quad	0x40156ef49cf56ead              # double 5.3583550000000004
	.quad	0x4022627d028a1dfc              # double 9.1923600000000007
	.quad	0x400504fa8b4bf8fd              # double 2.6274310000000001
	.quad	0x401de2bf5515054b              # double 7.4714330000000002
	.quad	0x4010c1897a67a52b              # double 4.1890010000000002
	.quad	0x3fddd3458cd20afa              # double 0.46601999999999999
	.quad	0x4020cacc4ef88b97              # double 8.3960899999999992
	.quad	0x3ffe433c60029f17              # double 1.8914150000000001
	.quad	0x4021aeb7457c0b13              # double 8.8412419999999994
	.quad	0x401de1b75a74c09c              # double 7.4704259999999998
	.quad	0x4022d06d938151a4              # double 9.4070859999999996
	.quad	0x3ffa3e4cd7492791              # double 1.6402099999999999
	.quad	0x3ff27d73c9257860              # double 1.1556280000000001
	.quad	0x4022fd1ac9afe1da              # double 9.4943449999999991
	.quad	0x3fd4d18d25edd053              # double 0.32529000000000002
	.quad	0x400976af038e29fa              # double 3.1829510000000001
	.quad	0x40237f4eebf65dc0              # double 9.7486490000000003
	.quad	0x400d03bd5992428d              # double 3.6268259999999999
	.quad	0x4006ac40d0aaa7df              # double 2.8341080000000001
	.quad	0x402291a8cdea033e              # double 9.2844909999999992
	.quad	0x40094d8d36b4c7f3              # double 3.1628669999999999
	.quad	0x400601c36976bc1f              # double 2.750861
	.quad	0x401a3ecbb7f9d6f1              # double 6.5613239999999999
	.quad	0x3feb1e4d5d80e497              # double 0.84744900000000001
	.quad	0x3fb7708aac96cc60              # double 0.091561000000000003
	.quad	0x4008f470eb24a6a8              # double 3.1193559999999998
	.quad	0x3fff2846a5d6bebe              # double 1.947333
	.quad	0x3ffd4d8dbcec84f9              # double 1.831434
	.quad	0x40161032db1e9f27              # double 5.5158189999999996
	.quad	0x3fdd2a9930be0ded              # double 0.45572499999999999
	.quad	0x400791fc4c165908              # double 2.9462820000000001
	.quad	0x40108dbc664d3bf3              # double 4.138414
	.quad	0x400acf86a098915c              # double 3.3513310000000001
	.quad	0x3fe31a847b24638d              # double 0.59698700000000005
	.quad	0x3fd9784ec636b096              # double 0.39796799999999999
	.quad	0x4016bf077ccc0379              # double 5.6865519999999998
	.quad	0x40143940fecdd0d9              # double 5.0559120000000002
	.quad	0x40128d4024b33db0              # double 4.6379400000000004
	.quad	0x3fecfdfc19c17226              # double 0.90600400000000003
	.quad	0x40127b2edfe75bc4              # double 4.6202959999999997
	.quad	0x40229e9142b302f7              # double 9.3097019999999997
	.quad	0x401456e7e62dc6e3              # double 5.0848690000000003
	.quad	0x40231c4ae85b9e8c              # double 9.5552589999999995
	.quad	0x4009da57646ae3a4              # double 3.2316120000000002
	.quad	0x400e109c7ffde721              # double 3.758111
	.quad	0x4016cb24a6a875d5              # double 5.6983819999999996
	.quad	0x4009a348f53c579f              # double 3.2047289999999999
	.quad	0x401b91116a8b8f15              # double 6.8916680000000001
	.quad	0x40176242d05f2885              # double 5.8459580000000004
	.quad	0x3feafb9170d62bf1              # double 0.84320899999999999
	.quad	0x401d4c083126e979              # double 7.3242500000000001
	.quad	0x3fee33461309c800              # double 0.94375900000000001
	.quad	0x400923e20ccff21b              # double 3.1425209999999999
	.quad	0x40149845996744b3              # double 5.1487030000000003
	.quad	0x3ff4092ff4ba51a0              # double 1.252243
	.quad	0x401113f0bae89eba              # double 4.2694729999999996
	.quad	0x400d3cb2d905c033              # double 3.6546379999999998
	.quad	0x400476b4c7f34938              # double 2.5579619999999998
	.quad	0x4020152c386d2ed8              # double 8.0413530000000009
	.quad	0x40083e80bed740c4              # double 3.030519
	.quad	0x401f67164c729f5a              # double 7.8506710000000002
	.quad	0x401d3785f8d2e515              # double 7.3042220000000002
	.quad	0x3ff26f76e6106ab1              # double 1.1522129999999999
	.quad	0x4002d91b3f20a73f              # double 2.3560089999999998
	.quad	0x4006468123810e88              # double 2.7844259999999998
	.quad	0x3ffe8e7bc3c5bd0e              # double 1.909786
	.quad	0x3ff0a6a11ec918e3              # double 1.040681
	.quad	0x4015c43a2163fdd6              # double 5.4416279999999997
	.quad	0x40156acfb762d83c              # double 5.3543079999999996
	.quad	0x402258650e779208              # double 9.1726460000000002
	.quad	0x40115dd69d30270f              # double 4.3416389999999998
	.quad	0x4004ba9fbe76c8b4              # double 2.5911249999999999
	.quad	0x401a16b69db65ecc              # double 6.5221809999999998
	.quad	0x400ad573647baa9b              # double 3.3542239999999999
	.quad	0x3fda9e518f3eccc4              # double 0.41591299999999998
	.quad	0x40011ce4a7b4e54f              # double 2.1391079999999998
	.quad	0x401731b1d92b7fe1              # double 5.7985300000000004
	.quad	0x400872170931012a              # double 3.0557080000000001
	.quad	0x3ff678cfbfc6540d              # double 1.404495
	.quad	0x40059aafff36ac64              # double 2.7005309999999998
	.quad	0x3fc5d3c36113404f              # double 0.17052500000000001
	.quad	0x401ef84167a95c85              # double 7.7424369999999997
	.quad	0x3fee570e6f2e8c05              # double 0.94812700000000005
	.quad	0x400058f2e05ccc8a              # double 2.0434320000000001
	.quad	0x40239083558a7610              # double 9.7822519999999997
	.quad	0x4019a83ec892ab69              # double 6.4143020000000002
	.quad	0x4001306c43f5f916              # double 2.148644
	.quad	0x40042e9f6a93f291              # double 2.5227650000000001
	.quad	0x4014c5aee631f8a1              # double 5.1930500000000004
	.quad	0x402394c78e9f6a94              # double 9.790585
	.quad	0x4022c5daf07bfe7e              # double 9.3864359999999998
	.quad	0x400f8b302f72b453              # double 3.9429630000000002
	.quad	0x401eb5f9df548ece              # double 7.6777110000000004
	.quad	0x4021efc8d195896a              # double 8.9683290000000007
	.quad	0x401b696c82e019b1              # double 6.8529530000000003
	.quad	0x3fb23cd9a52263d8              # double 0.071240999999999999
	.quad	0x40175ef177a7008a              # double 5.8427179999999996
	.quad	0x4012fd7342edbb5a              # double 4.7475100000000001
	.quad	0x3ffeb1a2a4db163c              # double 1.9183680000000001
	.quad	0x3fdf0d3cff64cf8d              # double 0.48518299999999998
	.quad	0x3fe073fb7a5f41af              # double 0.514158
	.quad	0x40053001d5c31594              # double 2.648441
	.quad	0x4000236c9c0a8d22              # double 2.0172970000000001
	.quad	0x4016939799e518f4              # double 5.6441330000000001
	.quad	0x4020dbeb5b2d4d40              # double 8.4295299999999997
	.quad	0x40209e0a84be4042              # double 8.3086739999999999
	.quad	0x4019832fcac8e68e              # double 6.3781119999999998
	.quad	0x401fe1e108c3f3e0              # double 7.9705849999999998
	.quad	0x4009e0828c36da88              # double 3.2346240000000002
	.quad	0x4006f53a3ec02f30              # double 2.8697400000000002
	.quad	0x3fd4ddb5525cc426              # double 0.32603199999999999
	.quad	0x3fe8a038194c0160              # double 0.76955799999999996
	.quad	0x4023f18b2e9ccb7d              # double 9.9717649999999995
	.quad	0x4021a0897e996313              # double 8.8135490000000001
	.quad	0x4021d6115592d98c              # double 8.918101
	.quad	0x3feade785b5b7069              # double 0.83965699999999999
	.quad	0x40088798958d9b5f              # double 3.0662090000000002
	.quad	0x400c504039abf338              # double 3.5391849999999998
	.quad	0x4004aabb44e50c5f              # double 2.5833650000000001
	.quad	0x4022ac7000431bdf              # double 9.3367920000000009
	.quad	0x3ff6d4a2b9d3cbc5              # double 1.4269130000000001
	.quad	0x4011db738e6d15ad              # double 4.4643079999999999
	.quad	0x4017bdc65c70435f              # double 5.935327
	.quad	0x40174b4528283d36              # double 5.8235060000000001
	.quad	0x4008e81e4712e408              # double 3.1133389999999999
	.quad	0x400436e696a26e54              # double 2.5268069999999998
	.quad	0x402282b1704ff434              # double 9.2552599999999998
	.quad	0x4014f317268d3283              # double 5.237393
	.quad	0x4000e682b6284599              # double 2.1125539999999998
	.quad	0x4006b157abb8800f              # double 2.8365930000000001
	.quad	0x4022e586ec17ebaf              # double 9.4482949999999998
	.quad	0x4019e87f88765ba7              # double 6.4770490000000001
	.quad	0x4017b943e1006078              # double 5.9309229999999999
	.quad	0x40237674f2f123c4              # double 9.7313609999999997
	.quad	0x400db46dc5d63886              # double 3.7130999999999998
	.quad	0x40145654d61b2a28              # double 5.084308
	.quad	0x4009e7008a697aee              # double 3.2377940000000001
	.quad	0x40220576683c297c              # double 9.010669
	.quad	0x402014d39da16617              # double 8.0406770000000005
	.quad	0x40186bca5375c8da              # double 6.105264
	.quad	0x4011276ddaceee0f              # double 4.2885049999999998
	.quad	0x40009c7de5082cf5              # double 2.0764119999999999
	.quad	0x400d8cd29131ec0b              # double 3.6937609999999999
	.quad	0x402241e5e2478855              # double 9.1287070000000003
	.quad	0x3ff428f7db6e5040              # double 1.2600020000000001
	.quad	0x401b4c3b0c4588a0              # double 6.8244439999999997
	.quad	0x40232cc5fbf83383              # double 9.5874480000000001
	.quad	0x40133eea63b688be              # double 4.8114410000000003
	.quad	0x4012ba159817b95a              # double 4.6817229999999999
	.quad	0x40099abd1aa821f3              # double 3.2005560000000002
	.quad	0x400ed69b17481b22              # double 3.8547880000000001
	.quad	0x40003c9de0503750              # double 2.029598
	.quad	0x4020f19008205ff2              # double 8.4718020000000003
	.quad	0x40047156191148fe              # double 2.5553400000000002
	.quad	0x3fdf800218def417              # double 0.49218800000000001
	.quad	0x40129528f190d174              # double 4.645664
	.quad	0x3ff3445aa2e3c537              # double 1.204188
	.quad	0x4022293ea2d2fe3f              # double 9.0805559999999996
	.quad	0x400647525460aa65              # double 2.7848250000000001
	.quad	0x40195ca5375c8da0              # double 6.3404740000000004
	.quad	0x40211b82c2bd7f52              # double 8.5537320000000001
	.quad	0x401c237a80cf9e38              # double 7.0346469999999997
	.quad	0x40160798958d9b5f              # double 5.5074180000000004
	.quad	0x3fed3e76c8b43958              # double 0.91387499999999999
	.quad	0x4008bb3b7521144d              # double 3.0914220000000001
	.quad	0x400ed8811b1d92b8              # double 3.855715
	.quad	0x40207fc1df3300de              # double 8.2495259999999995
	.quad	0x401d994e5d5b24ea              # double 7.3997130000000002
	.quad	0x4023456a593a2df9              # double 9.6355769999999996
	.quad	0x4013272ead9274e2              # double 4.7882639999999999
	.quad	0x40076bf8fcd67fd4              # double 2.927721
	.quad	0x40154c4b09e98dce              # double 5.3245050000000003
	.quad	0x401d2a46e08f2171              # double 7.2912860000000004
	.quad	0x3ffabae3608d0892              # double 1.6706270000000001
	.quad	0x401ca343fa2ad3e9              # double 7.1594389999999999
	.quad	0x402388f53c579f23              # double 9.7674959999999995
	.quad	0x401559de8b3b3205              # double 5.3377629999999998
	.quad	0x4020c2e7f6f4be83              # double 8.3806759999999993
	.quad	0x4010f8fabda0dfdf              # double 4.243144
	.quad	0x401baf86e3b46fdf              # double 6.9214130000000003
	.quad	0x40142c30d306a2b1              # double 5.0431549999999996
	.quad	0x400f5e6c4c5974e6              # double 3.9211049999999998
	.quad	0x3fecc73cd573647c              # double 0.89932100000000003
	.quad	0x401c750d6b228dca              # double 7.1143090000000004
	.quad	0x3fc94091c087442c              # double 0.19728299999999999
	.quad	0x40137e09bb6aa4ba              # double 4.8730840000000004
	.quad	0x3fe96a704bc27632              # double 0.79424300000000003
	.quad	0x40185f6c69b5a640              # double 6.0931870000000004
	.quad	0x402288d349be8ff3              # double 9.2672369999999997
	.quad	0x401e57381d7dbf48              # double 7.5851749999999995
	.quad	0x40130e1a3f4666ed              # double 4.7637720000000003
	.quad	0x401658c32a8c9b84              # double 5.5866819999999997
	.quad	0x401869081c2e33f0              # double 6.1025700000000001
	.quad	0x400920b5ed8d36b5              # double 3.1409720000000001
	.quad	0x4012a0739b024f66              # double 4.6566910000000004
	.quad	0x3fe891b60ae9680e              # double 0.767787
	.quad	0x4017219b0ab2e169              # double 5.7828179999999998
	.quad	0x40114f6f8f041462              # double 4.3275740000000003
	.quad	0x4018a8672756861f              # double 6.1644560000000004
	.quad	0x401f795af294dd72              # double 7.8685109999999998
	.quad	0x40105a66559f6ec6              # double 4.0882810000000003
	.quad	0x4014e0e38a7e73a3              # double 5.2196179999999996
	.quad	0x400361a79fec99f2              # double 2.4226830000000001
	.quad	0x4023b327674d1633              # double 9.8499099999999994
	.quad	0x401d07a1c25d0742              # double 7.2574529999999999
	.quad	0x401ee98e10cf5b1d              # double 7.7280810000000004
	.quad	0x40046f32378ab0c9              # double 2.5542950000000002
	.quad	0x4014ffb762d83c6d              # double 5.2497230000000004
	.quad	0x40048f4be835dedf              # double 2.5699689999999999
	.quad	0x3ffec76c050bd87b              # double 1.9236869999999999
	.quad	0x40221ffe4bcad9ae              # double 9.0624870000000008
	.quad	0x401cbeca686e7e63              # double 7.1863190000000001
	.quad	0x4018330e3cd9a522              # double 6.0498589999999997
	.quad	0x4016657abb8800eb              # double 5.5991010000000001
	.quad	0x40108c0b5675579b              # double 4.1367620000000001
	.quad	0x401ff775fb2edfe7              # double 7.9916609999999996
	.quad	0x4022f4636b096356              # double 9.4773209999999999
	.quad	0x40129d7d7c2ca149              # double 4.6537990000000002
	.quad	0x4019fefe4ffc9796              # double 6.4990170000000003
	.quad	0x4019a6e264e48627              # double 6.412973
	.quad	0x401af314ca925fe9              # double 6.7373839999999996
	.quad	0x401e4aacd9e83e42              # double 7.5729249999999997
	.quad	0x40233a1ee675147f              # double 9.6135169999999998
	.quad	0x400798c5436b8f9b              # double 2.949595
	.quad	0x400ff4c76d117b53              # double 3.9945210000000002
	.quad	0x4016e7a02fb5d031              # double 5.726197
	.quad	0x3ff4bb8b26394fad              # double 1.295787
	.quad	0x401fb20817fc7608              # double 7.9238590000000002
	.quad	0x4021b515ce9e5e24              # double 8.8536819999999991
	.quad	0x40224eb15f88fc93              # double 9.1536969999999993
	.quad	0x401d344e50c5eb31              # double 7.3010799999999998
	.quad	0x40173bb1290257c9              # double 5.8082929999999999
	.quad	0x40153112ba16e7a3              # double 5.2979229999999999
	.quad	0x4022de634117f844              # double 9.4343509999999994
	.quad	0x40176f5cf2495e18              # double 5.8587530000000001
	.quad	0x4023f0d51f81a587              # double 9.9703759999999999
	.quad	0x4002c06fac6045bb              # double 2.343963
	.quad	0x401202c6ac215b9a              # double 4.5027109999999997
	.quad	0x401f36e5cd4ed2cc              # double 7.8036110000000001
	.quad	0x3ffc4c4ef88b9778              # double 1.7686299999999999
	.quad	0x400934528283d35f              # double 3.1505480000000001
	.quad	0x4021b63fdd65a145              # double 8.8559560000000008
	.quad	0x4014df3bea91d9b2              # double 5.2180020000000003
	.quad	0x4015b5d894812be5              # double 5.4275840000000004
	.quad	0x401b783e8576cce6              # double 6.867426
	.quad	0x4020ca69595feda6              # double 8.3953349999999993
	.quad	0x40129ff25e56cd6c              # double 4.6561979999999998
	.quad	0x401ebcfd4bf0995b              # double 7.6845600000000002
	.quad	0x4014967f4dbdf8f4              # double 5.1469699999999996
	.quad	0x40121dcd7060bb2c              # double 4.5291040000000002
	.quad	0x401506fd21ff2e49              # double 5.2568250000000001
	.quad	0x401d451dabe2717a              # double 7.3174960000000002
	.quad	0x4011790539fba451              # double 4.3681840000000003
	.quad	0x3fe049c6f36ef805              # double 0.50900599999999996
	.quad	0x401c9028a1dfb939              # double 7.1407800000000003
	.quad	0x400d08576cce5f74              # double 3.629073
	.quad	0x4014341461b6d43d              # double 5.050859
	.quad	0x40153548ecd8dbcf              # double 5.3020360000000002
	.quad	0x4022cdcbff47735c              # double 9.4019469999999998
	.quad	0x401a8e01de269164              # double 6.6386789999999998
	.quad	0x4010b7c957cd466f              # double 4.1794789999999997
	.quad	0x40040da7f3cf7015              # double 2.5066679999999999
	.quad	0x3f962cfd8f0c77de              # double 0.021656000000000002
	.quad	0x3ffd3961804d9839              # double 1.8265089999999999
	.quad	0x40118a743a647fdc              # double 4.3852089999999997
	.quad	0x4022023b3636f3b2              # double 9.0043579999999999
	.quad	0x3fe774b61fe21d97              # double 0.73299700000000001
	.quad	0x40134dbb16c1e365              # double 4.8259090000000002
	.quad	0x40034d4fdf3b645a              # double 2.41275
	.quad	0x401af90c0ad03d9b              # double 6.7432100000000004
	.quad	0x4017371c53f39d1b              # double 5.8038189999999998
	.quad	0x40182e2d1f1cfbb9              # double 6.0450939999999997
	.quad	0x401d50507a6bd6e9              # double 7.3284320000000003
	.quad	0x40105b5e0f7fcfc4              # double 4.089226
	.quad	0x4012e02ea960b6fa              # double 4.718928
	.quad	0x401e55347a5b0ff1              # double 7.5832079999999999
	.quad	0x3ff63829068986fd              # double 1.388711
	.quad	0x4015169e3c968944              # double 5.2720880000000001
	.quad	0x3ff784113c68661b              # double 1.469743
	.quad	0x401bef572de43ed9              # double 6.9837309999999997
	.quad	0x40145467381d7dbf              # double 5.0824249999999997
	.quad	0x40106aceaaf35e31              # double 4.104304
	.quad	0x4006ea82a5614df9              # double 2.8645070000000001
	.quad	0x400d4be6a337a80d              # double 3.662061
	.quad	0x4000f28522ea0fd4              # double 2.1184180000000001
	.quad	0x401d5a80cf9e3865              # double 7.3383820000000002
	.quad	0x3ff7ba2f05a708ee              # double 1.482955
	.quad	0x3ff44a2db61bb060              # double 1.2681100000000001
	.quad	0x3fd866adb402d16c              # double 0.38126700000000002
	.quad	0x401e760ae9680e06              # double 7.6152759999999997
	.quad	0x40056f6598e10cf6              # double 2.6793930000000001
	.quad	0x3fc72f7f498c3b0c              # double 0.18113699999999999
	.quad	0x3ff3d6bca5375c8e              # double 1.2399260000000001
	.quad	0x401f9bac710cb296              # double 7.9020250000000001
	.quad	0x3fa4866a11ec918e              # double 0.040087999999999999
	.quad	0x3fdd7c286f8ad256              # double 0.46070299999999997
	.quad	0x402191b7bf1e8e61              # double 8.7846050000000009
	.quad	0x40187ce8101f31f4              # double 6.1219789999999996
	.quad	0x40235293d102bc73              # double 9.6612840000000002
	.quad	0x4015155d5f56a7ad              # double 5.2708640000000004
	.quad	0x4014f0d9513f8db5              # double 5.2352040000000004
	.quad	0x40210b87bdcf0308              # double 8.5225200000000001
	.quad	0x4023c65881a15550              # double 9.8873940000000005
	.quad	0x3fd8c460ed80a17b              # double 0.386986
	.quad	0x401f9659d12cadde              # double 7.896827
	.quad	0x3fff9d9a0f0a5eff              # double 1.9759770000000001
	.quad	0x40071311a543f1c7              # double 2.8843109999999998
	.quad	0x3fe5e97f1f9acffa              # double 0.68475299999999995
	.quad	0x401afb3a2595bbbf              # double 6.7453390000000004
	.quad	0x4016ff227d028a1e              # double 5.749155
	.quad	0x4011ccc39ffd60e9              # double 4.4499649999999997
	.quad	0x4020486fcdee34fc              # double 8.1414779999999993
	.quad	0x400ae8bc9cd3e0bd              # double 3.3636409999999999
	.quad	0x401c6083558a7610              # double 7.0942509999999999
	.quad	0x4002678c868b9fdc              # double 2.3005610000000001
	.quad	0x401fb7e56473471f              # double 7.9295859999999995
	.quad	0x401e6f661f18c9fb              # double 7.6087879999999996
	.quad	0x4015108398a65493              # double 5.266127
	.quad	0x401ec3d96638433d              # double 7.6912589999999996
	.quad	0x402098b4bf8fcd68              # double 8.298254
	.quad	0x40156bfca85caafc              # double 5.3554560000000002
	.quad	0x4010a2d2bb23571d              # double 4.1590069999999999
	.quad	0x4020f7826edaa92e              # double 8.4834169999999993
	.quad	0x4019abd1aa821f2a              # double 6.4177920000000004
	.quad	0x401febab649d388b              # double 7.9801460000000004
	.quad	0x4022a22014727dcc              # double 9.3166510000000002
	.quad	0x40111cfd4bf0995b              # double 4.2783100000000003
	.quad	0x4022e53c9abb01c9              # double 9.4477279999999996
	.quad	0x4011483e425aee63              # double 4.3205499999999999
	.quad	0x401c340d90e23af3              # double 7.0508329999999999
	.quad	0x3fffe84be40420f7              # double 1.994213
	.quad	0x4009d0739b024f66              # double 3.2267830000000002
	.quad	0x401cc9c0ebedfa44              # double 7.197025
	.quad	0x3fe3c15097c80842              # double 0.61734800000000001
	.quad	0x3fed14488c60cbf3              # double 0.90872600000000003
	.quad	0x3ff8bff583a53b8e              # double 1.5468649999999999
	.quad	0x401c1f6a50d6b229              # double 7.0306790000000001
	.quad	0x4018abac710cb296              # double 6.1676500000000001
	.quad	0x4005ce115592d98c              # double 2.725619
	.quad	0x4020e99008205ff2              # double 8.4561770000000003
	.quad	0x4006d30ced4e4c94              # double 2.8530519999999999
	.quad	0x400148344c37e6f7              # double 2.160256
	.quad	0x401c01c15097c808              # double 7.0017139999999998
	.quad	0x40186e30caa326e1              # double 6.1076079999999999
	.quad	0x4013c7f27fe4bcae              # double 4.9452610000000004
	.quad	0x4022b39389b52008              # double 9.3507350000000002
	.quad	0x400a45cf67b1c001              # double 3.284087
	.quad	0x4013bdd7ecbb7f9d              # double 4.9353939999999996
	.quad	0x3ffbe53868fd199c              # double 1.7434620000000001
	.quad	0x40046e60807357e6              # double 2.5538949999999998
	.quad	0x401b1a3c64345cff              # double 6.7756210000000001
	.quad	0x40234163779e9d0f              # double 9.6277120000000007
	.quad	0x401a33986338b47c              # double 6.5503859999999996
	.quad	0x3ffca6516db0dd83              # double 1.790605
	.quad	0x3fefdc5718eb8950              # double 0.99564699999999995
	.quad	0x40205ed22424a277              # double 8.1851970000000005
	.quad	0x3fed4e8101f31f47              # double 0.91583300000000001
	.quad	0x4009c0902de00d1b              # double 3.2190249999999998
	.quad	0x4005accab3edd8b6              # double 2.709371
	.quad	0x4019df38c5436b90              # double 6.4679900000000004
	.quad	0x4023d6115592d98c              # double 9.918101
	.quad	0x401f6f49491f2dc3              # double 7.8586780000000002
	.quad	0x400034b7b28954a8              # double 2.025741
	.quad	0x400bb5bab21815a0              # double 3.4637349999999998
	.quad	0x400370520d130dfa              # double 2.4298440000000001
	.quad	0x402221c560c7c0f4              # double 9.0659589999999994
	.quad	0x40235480c73abc94              # double 9.6650449999999992
	.quad	0x401f1d8ba40d90e2              # double 7.7788529999999998
	.quad	0x4019f43b2dd377e2              # double 6.4885070000000002
	.quad	0x40235ab990afe60c              # double 9.6771969999999996
	.quad	0x40233e47baa9b49a              # double 9.6216410000000003
	.quad	0x4020258e432441ff              # double 8.0733510000000006
	.quad	0x4018f5393250b524              # double 6.2394759999999998
	.quad	0x402069455219a848              # double 8.2056070000000005
	.quad	0x3fe995fcc1871e6d              # double 0.79955900000000002
	.quad	0x40141e525892684d              # double 5.0296110000000001
	.quad	0x4004b40895d0b73d              # double 2.587907
	.quad	0x401264aa9717df1a              # double 4.5983070000000001
	.quad	0x401c7f4ba51a005c              # double 7.1243119999999998
	.quad	0x401fa0129cbab64a              # double 7.9063210000000002
	.quad	0x4013d0945f9df549              # double 4.9536910000000001
	.quad	0x401da1c6088d6d3b              # double 7.4079819999999996
	.quad	0x400f4eae18ac9f30              # double 3.9134180000000001
	.quad	0x4014c7fd82773e25              # double 5.195303
	.quad	0x402052de657b84dc              # double 8.1618530000000006
	.quad	0x3fe77c3f811f4f51              # double 0.73391700000000004
	.quad	0x4017b4a276b7ed42              # double 5.9264010000000003
	.quad	0x401e80292817763e              # double 7.6251569999999997
	.quad	0x40144425f202107b              # double 5.0665509999999996
	.quad	0x401a098b2e9ccb7d              # double 6.5093199999999998
	.quad	0x4022a0de6ddf00ac              # double 9.314197
	.quad	0x40209e05ccc89b0f              # double 8.3086380000000002
	.quad	0x401c71c75818c5ca              # double 7.1111120000000003
	.quad	0x401a04d1633482bf              # double 6.5047050000000004
	.quad	0x3ff12c61522a6f3f              # double 1.0733349999999999
	.quad	0x40236f533f42352f              # double 9.7174320000000005
	.quad	0x40203fdf19d66adb              # double 8.1247489999999996
	.quad	0x40117a47a9e2bcf9              # double 4.3694139999999999
	.quad	0x40160616b54e2b06              # double 5.5059459999999998
	.quad	0x40233ac929aa1d75              # double 9.6148159999999993
	.quad	0x3ffbfa0a52695960              # double 1.748545
	.quad	0x4020cc3c9eecbfb1              # double 8.3988999999999994
	.quad	0x3fda03c4b09e98dd              # double 0.40648000000000001
	.quad	0x3ff02584f4c6e6da              # double 1.0091600000000001
	.quad	0x3ff7bae46cfc829d              # double 1.483128
	.quad	0x401a70e30446b69e              # double 6.6102410000000003
	.quad	0x401c73cc07aaef2c              # double 7.1130829999999996
	.quad	0x3fd310dbf0563ed1              # double 0.297904
	.quad	0x4010a8c7e28240b8              # double 4.1648250000000004
	.quad	0x4005dfeb074a771d              # double 2.7343350000000002
	.quad	0x401124080f98fa37              # double 4.2851869999999996
	.quad	0x3feca6b0d9513f8e              # double 0.89534800000000003
	.quad	0x40102860999dcb58              # double 4.0394310000000004
	.quad	0x4023474107314ca9              # double 9.6391679999999997
	.quad	0x400a7d11be6e6538              # double 3.3110689999999998
	.quad	0x3fddc47a17f4128c              # double 0.465117
	.quad	0x3ffcbb256ffc115e              # double 1.79569
	.quad	0x40215c6ef3d3a1d3              # double 8.6805339999999998
	.quad	0x3febf739f340d4dc              # double 0.87392899999999995
	.quad	0x3fd27e28240b7803              # double 0.28894999999999998
	.quad	0x3ff1e48301a79fed              # double 1.1182890000000001
	.quad	0x400ba5718eb89507              # double 3.4557829999999998
	.quad	0x4019693b7d84901d              # double 6.3527659999999999
	.quad	0x401f5b56b8737974              # double 7.8391979999999997
	.quad	0x3ff1186338b47c74              # double 1.068454
	.quad	0x401a492b3cc4ac6d              # double 6.5714540000000001
	.quad	0x400075a9eb2074eb              # double 2.0574530000000002
	.quad	0x40200e4f54d1e96c              # double 8.0279489999999995
	.quad	0x4012a99780baa583              # double 4.6656170000000001
	.quad	0x3ff7e737110e453d              # double 1.493949
	.quad	0x401f6d0917d6b65b              # double 7.8564800000000003
	.quad	0x40209f07e175d13d              # double 8.3106069999999992
	.quad	0x401707ca2120e1f8              # double 5.7576070000000001
	.quad	0x3fec09ca18bd6627              # double 0.87619499999999995
	.quad	0x3feb8f57f737da62              # double 0.86124800000000001
	.quad	0x3fff76049ecb31c2              # double 1.966313
	.quad	0x40222ce4ead0c3d2              # double 9.0876839999999994
	.quad	0x3ff4b37110e453d2              # double 1.293809
	.quad	0x4019b53dea465a57              # double 6.4269939999999997
	.quad	0x40131871a3b14a90              # double 4.7738709999999998
	.quad	0x40060c985f06f694              # double 2.7561499999999999
	.quad	0x4022bc9d388a8b09              # double 9.3683870000000002
	.quad	0x40182192a737110e              # double 6.0327859999999998
	.quad	0x4018ac73eee52589              # double 6.1684109999999999
	.quad	0x4023753dea465a57              # double 9.7289879999999993
	.quad	0x401e55cdd50a88f0              # double 7.583793
	.quad	0x4018c3af74cd3177              # double 6.1910990000000004
	.quad	0x400d70d9d7774aba              # double 3.6801029999999999
	.quad	0x3ff6d8d5842b734b              # double 1.4279379999999999
	.quad	0x400c228c36da87a0              # double 3.5168689999999998
	.quad	0x401870a4a05dd8f9              # double 6.1100029999999999
	.quad	0x3fe250e991ff7165              # double 0.57237700000000002
	.quad	0x4018bbcd35a85879              # double 6.1833999999999998
	.quad	0x4000fff583a53b8e              # double 2.1249799999999999
	.quad	0x402251615ebfa8f8              # double 9.1589460000000002
	.quad	0x3ffe8185058dde7a              # double 1.9066209999999999
	.quad	0x40222013879c4114              # double 9.0626490000000003
	.quad	0x3ff3dd206c8711d8              # double 1.2414860000000001
	.quad	0x400e0e41919ac797              # double 3.756961
	.quad	0x3fd9e158750c1b97              # double 0.40437899999999999
	.quad	0x3fff452c59fb1e19              # double 1.954388
	.quad	0x40184ab649d388a9              # double 6.0729610000000003
	.quad	0x40229961c36976bc              # double 9.2995739999999997
	.quad	0x4022c9e3864cb5bb              # double 9.3943139999999996
	.quad	0x40140f0025bfad2a              # double 5.0146490000000004
	.quad	0x400709a671ef30a5              # double 2.879712
	.quad	0x402158f29d40ee07              # double 8.6737260000000003
	.quad	0x40220f62f9ca5bd9              # double 9.0300519999999995
	.quad	0x3ff7e512a94ff002              # double 1.4934259999999999
	.quad	0x4022fb5b70691ea8              # double 9.4909320000000008
	.quad	0x400efb4dcebfec14              # double 3.8727070000000001
	.quad	0x401a47f0aa21a71a              # double 6.5702540000000003
	.quad	0x4008ac99f1ae2da5              # double 3.0842779999999999
	.quad	0x3fc6743201040bfe              # double 0.17542099999999999
	.quad	0x4016d425aee631f9              # double 5.7071750000000003
	.quad	0x4023b10d38cda6e7              # double 9.8458039999999993
	.quad	0x4022e9fdbd2fa0d7              # double 9.4570139999999991
	.quad	0x4012d91f2dc2b0ea              # double 4.7120329999999999
	.quad	0x400d0dfefbf401c5              # double 3.631834
	.quad	0x400698bdec5f394b              # double 2.8245809999999998
	.quad	0x401d405f6ba0620b              # double 7.3128640000000003
	.quad	0x4019ecf4e874c900              # double 6.4814030000000002
	.quad	0x3fd2a919695d91ac              # double 0.29157100000000002
	.quad	0x401c927aa68f4b62              # double 7.143046
	.quad	0x400d3f7d73c92578              # double 3.6560009999999998
	.quad	0x3fda027d88c1db01              # double 0.40640199999999999
	.quad	0x4008ff20a73f748a              # double 3.124574
	.quad	0x4000c9131ec0b567              # double 2.0981809999999999
	.quad	0x400ecdae3e6c4c59              # double 3.8504299999999998
	.quad	0x400e015a07b352a8              # double 3.7506599999999999
	.quad	0x401cdcd63cb81733              # double 7.2156609999999999
	.quad	0x4011fbe4cd749279              # double 4.4959899999999999
	.quad	0x40014b69db65ecc4              # double 2.1618230000000001
	.quad	0x4020849491f2dc2b              # double 8.2589459999999999
	.quad	0x3fe3c59d99029ae5              # double 0.61787300000000001
	.quad	0x401364007570c565              # double 4.847658
	.quad	0x3ff02f5558212945              # double 1.0115559999999999
	.quad	0x4018c40c8472c0e8              # double 6.1914540000000002
	.quad	0x402157077ccc0379              # double 8.6699789999999997
	.quad	0x401561f70de8f6cf              # double 5.345669
	.quad	0x401ea33d6c721922              # double 7.6594139999999999
	.quad	0x40152673c4f3ba77              # double 5.2875509999999997
	.quad	0x400b5d67ba237cdd              # double 3.4206080000000001
	.quad	0x401aee481f53825e              # double 6.7326969999999999
	.quad	0x4016bf50a02b8412              # double 5.6868309999999997
	.quad	0x402128055fbb517a              # double 8.5781659999999995
	.quad	0x401008b1572580c3              # double 4.008489
	.quad	0x402293191dde3758              # double 9.2873009999999993
	.quad	0x3ff48881e4712e41              # double 1.2833270000000001
	.quad	0x40065d07c84b5dcc              # double 2.7954249999999998
	.quad	0x401387c5692b3cc5              # double 4.8825890000000003
	.quad	0x3ff98d801b435265              # double 1.597046
	.quad	0x401caaa10e022142              # double 7.1666299999999996
	.quad	0x3ff0bdeb52c9d170              # double 1.046367
	.quad	0x40186d8383ad9f0a              # double 6.1069469999999999
	.quad	0x400cd6922d948dc1              # double 3.6047709999999999
	.quad	0x4022e2b1b36bd2b7              # double 9.442762
	.quad	0x401da73c925785f9              # double 7.4133170000000002
	.quad	0x4019b6612839042e              # double 6.4281050000000004
	.quad	0x401e30eae18ac9f3              # double 7.547771
	.quad	0x4021e3be6601bc99              # double 8.9448120000000007
	.quad	0x401d681f53825e14              # double 7.3516820000000003
	.quad	0x4010a9695d91ab8f              # double 4.1654410000000004
	.quad	0x400f81c044284dfd              # double 3.9383550000000001
	.quad	0x400a5d577963992d              # double 3.2955770000000002
	.quad	0x4012b3e0370cdc87              # double 4.6756599999999997
	.quad	0x4021e0956c0d6f54              # double 8.9386399999999994
	.quad	0x4023c0a936c58eeb              # double 9.8762910000000001
	.quad	0x400fc3465625a683              # double 3.9703490000000001
	.quad	0x4009005bc01a36e3              # double 3.125175
	.quad	0x3ff440357a355044              # double 1.265676
	.quad	0x401f6b10ba6266fd              # double 7.8545559999999996
	.quad	0x4022bd9ea57214f0              # double 9.3703509999999994
	.quad	0x401d6ad8e4324420              # double 7.3543430000000001
	.quad	0x40225e72756861e9              # double 9.1844669999999997
	.quad	0x400341abd1aa821f              # double 2.4070659999999999
	.quad	0x4022ee91ea78af3e              # double 9.4659569999999995
	.quad	0x400fc81a1554fbdb              # double 3.9727060000000001
	.quad	0x40139faacd9e83e4              # double 4.9059249999999999
	.quad	0x4011ecd74927913f              # double 4.4812900000000004
	.quad	0x3ffa2f81626b2f23              # double 1.636598
	.quad	0x4014063cfb3311a5              # double 5.0060919999999998
	.quad	0x4011139f77292c49              # double 4.2691629999999998
	.quad	0x400e8255b035bd51              # double 3.8136399999999999
	.quad	0x4021b2a9b499d020              # double 8.8489509999999996
	.quad	0x3ff187a6bd6e8af8              # double 1.095618
	.quad	0x40192d98bf7f0670              # double 6.2945279999999997
	.quad	0x40223808637bd05b              # double 9.1094390000000001
	.quad	0x4021fff4fd6d7e89              # double 8.9999160000000007
	.quad	0x4021e10f51ac9afe              # double 8.9395699999999998
	.quad	0x401e822ff08893b8              # double 7.6271360000000001
	.quad	0x3feb3cc6c54bcf0b              # double 0.85116899999999995
	.quad	0x4015a6dbd72bcb60              # double 5.4129480000000001
	.quad	0x4017a1efb6dca07f              # double 5.9081409999999996
	.quad	0x3fe7f0153bd16766              # double 0.74805699999999997
	.quad	0x401d033333333333              # double 7.2531249999999998
	.quad	0x400f03925bb7b6bb              # double 3.876744
	.quad	0x4017aa3443d46b27              # double 5.9162150000000002
	.quad	0x400e64db163baba8              # double 3.7992460000000001
	.quad	0x402171b34a44c7b0              # double 8.7220709999999997
	.quad	0x3fff826cc1ca3a4b              # double 1.9693419999999999
	.quad	0x401522b777d0f1f5              # double 5.2839029999999996
	.quad	0x40025b2a27f1b691              # double 2.2945139999999999
	.quad	0x401092ccf6be37df              # double 4.1433600000000004
	.quad	0x4010d1dabe27179c              # double 4.204936
	.quad	0x3fe7738c5436b8fa              # double 0.73285500000000003
	.quad	0x3ff82ac96cc5fbf8              # double 1.510446
	.quad	0x40093ab10ba62670              # double 3.1536580000000001
	.quad	0x40170b0f6ad70e6f              # double 5.7608009999999998
	.quad	0x401dc095f2452c5a              # double 7.438072
	.quad	0x400f6f965b20b806              # double 3.9294859999999998
	.quad	0x401a63ca31e7d999              # double 6.5974510000000004
	.quad	0x400097f8ca8198f2              # double 2.0742050000000001
	.quad	0x40073e492bc2fc69              # double 2.9054129999999998
	.quad	0x4014af3c70c996b7              # double 5.1711289999999996
	.quad	0x3ff74c26138fffbd              # double 1.456091
	.quad	0x4008297e132b55ef              # double 3.0202599999999999
	.quad	0x3ffe409f623076c0              # double 1.8907769999999999
	.quad	0x400fed330941c821              # double 3.9908199999999998
	.quad	0x401cfac471b47842              # double 7.2448899999999998
	.quad	0x3ff4495d0b73d189              # double 1.267911
	.quad	0x3fe20ccbc05d52c1              # double 0.56406199999999995
	.quad	0x400e288effe2a3cf              # double 3.7698040000000002
	.quad	0x400f1784ec636b09              # double 3.8864839999999998
	.quad	0x402297a786c22681              # double 9.2962000000000007
	.quad	0x40035b7cfe586013              # double 2.4196719999999998
	.quad	0x3ffd88beb5b2d4d4              # double 1.845885
	.quad	0x402188e560418937              # double 8.7673749999999995
	.quad	0x4006ba322af57710              # double 2.840916
	.quad	0x3fde595bbbe878fb              # double 0.47420400000000001
	.quad	0x400de4a0e410b631              # double 3.7366350000000002
	.quad	0x402188cbd1244a62              # double 8.7671799999999998
	.quad	0x3fed013cab81f96a              # double 0.90640100000000001
	.quad	0x4007bc64ba94bbe4              # double 2.9669889999999999
	.quad	0x401ffc6088d6d3b7              # double 7.9964620000000001
	.quad	0x40159af294dd7236              # double 5.4013159999999996
	.quad	0x3ff45d3bafd976ff              # double 1.2727619999999999
	.quad	0x4016f43c3a42f1ed              # double 5.7385109999999999
	.quad	0x3fe4c0e5a35d67ba              # double 0.64854699999999998
	.quad	0x4015efab96f21f6d              # double 5.4840530000000003
	.quad	0x3fe42f6837f7be12              # double 0.63078699999999999
	.quad	0x40053e4e69f05ea2              # double 2.6554229999999999
	.quad	0x3fe918288051c9f7              # double 0.78419899999999998
	.quad	0x401244940bbb1f25              # double 4.5669709999999997
	.quad	0x401b9b91f70de8f7              # double 6.9019240000000002
	.quad	0x4013b6eb91b3f20a              # double 4.9286329999999996
	.quad	0x4020b7add15f02c5              # double 8.3587480000000003
	.quad	0x400380ce0b912dba              # double 2.4378929999999999
	.quad	0x40065eb8d8234224              # double 2.7962509999999998
	.quad	0x4016508a265f0f5a              # double 5.5786519999999999
	.quad	0x402065bc44bf4cb2              # double 8.1987020000000008
	.quad	0x400e215d2d01c0ca              # double 3.7662909999999998
	.quad	0x3ff341f644955b46              # double 1.2036039999999999
	.quad	0x4023093165d39970              # double 9.5179550000000006
	.quad	0x4011ed6fda836eb5              # double 4.4818720000000001
	.quad	0x40133a5f41aef6f9              # double 4.8070040000000001
	.quad	0x3ffa85a0be510907              # double 1.657624
	.quad	0x3fcea0cae642bf98              # double 0.23928199999999999
	.quad	0x4020693250b5243a              # double 8.2054620000000007
	.quad	0x401c028522ea0fd4              # double 7.0024610000000003
	.quad	0x4021db2b12d3415b              # double 8.9280629999999999
	.quad	0x4016b621fafc8b00              # double 5.6778639999999996
	.quad	0x4006bd8f0c77dd87              # double 2.8425579999999999
	.quad	0x402201d14e3bcd36              # double 9.0035500000000006
	.quad	0x400097c3504c48ae              # double 2.074103
	.quad	0x401881c8eabffcdb              # double 6.1267430000000003
	.quad	0x400a6007570c5650              # double 3.2968890000000002
	.quad	0x4000fbfe7e1fc090              # double 2.1230440000000002
	.quad	0x40222789c5e6ff7e              # double 9.077223
	.quad	0x40150f748a159818              # double 5.2650930000000002
	.quad	0x4011652c16df3f96              # double 4.3488009999999999
	.quad	0x4020715e17e34b94              # double 8.2214209999999994
	.quad	0x4007a04295a6c5d2              # double 2.953252
	.quad	0x400e8996b76709fa              # double 3.8171819999999999
	.quad	0x40129816aceaaf36              # double 4.6485240000000001
	.quad	0x3ff665cb35f3d7d4              # double 1.3998520000000001
	.quad	0x4004e15fcc1871e7              # double 2.6100460000000001
	.quad	0x4014133721d53cde              # double 5.0187650000000001
	.quad	0x401e4d74927913e8              # double 7.5756399999999999
	.quad	0x40106e7ddca4b125              # double 4.1079020000000002
	.quad	0x401999a2834d26fa              # double 6.4000339999999998
	.quad	0x401f9817fc7607c4              # double 7.8985289999999999
	.quad	0x3fc95cd0bb6ed677              # double 0.19814499999999999
	.quad	0x40173af42784a948              # double 5.8075720000000004
	.quad	0x401a4dda8bd230ba              # double 6.5760290000000001
	.quad	0x401449e731d2e0e3              # double 5.072171
	.quad	0x4020e4b966be7afa              # double 8.4467269999999992
	.quad	0x4020b3584b1ab085              # double 8.3502829999999992
	.quad	0x4006353586ca89fc              # double 2.7759809999999998
	.quad	0x3fe7c04c8bc9cd3e              # double 0.74222399999999999
	.quad	0x40154b4fe79ee02a              # double 5.3235469999999996
	.quad	0x3fed49adc8fb86f4              # double 0.91524399999999994
	.quad	0x40145c942d490e67              # double 5.0904090000000002
	.quad	0x401e464e054690de              # double 7.568657
	.quad	0x4014005dd8f92afa              # double 5.0003580000000003
	.quad	0x401fa3892ee84ad8              # double 7.9097030000000003
	.quad	0x40214fb890d5a5b9              # double 8.6557049999999993
	.quad	0x401d08c2a454de7f              # double 7.2585550000000003
	.quad	0x3fcfef62f9ca5bd9              # double 0.24949299999999999
	.quad	0x4018108787485e3e              # double 6.0161420000000003
	.quad	0x401a8539fba450ad              # double 6.6301040000000002
	.quad	0x401f222a2c237479              # double 7.7833639999999997
	.quad	0x4006edb59578a2a9              # double 2.866069
	.quad	0x40155e35c5b4aa97              # double 5.3420019999999999
	.quad	0x4021d352eb5f5f0b              # double 8.9127419999999997
	.quad	0x400fc6cf41f212d7              # double 3.9720749999999998
	.quad	0x3fff95992428d435              # double 1.9740230000000001
	.quad	0x40215c9fb6134ce4              # double 8.6809060000000002
	.quad	0x3fff4a7a41e57d9e              # double 1.9556830000000001
	.quad	0x40111ef459d9902a              # double 4.2802290000000003
	.quad	0x3ff6398e97071822              # double 1.389052
	.quad	0x400fd4b9cb6848bf              # double 3.9788700000000001
	.quad	0x400f8fbeb9e492bc              # double 3.9451879999999999
	.quad	0x3ff2895f2452c5a0              # double 1.1585380000000001
	.quad	0x3facf398e9707182              # double 0.056545999999999999
	.quad	0x4020c76124074645              # double 8.3894129999999993
	.quad	0x4016b0b28522ea10              # double 5.6725560000000002
	.quad	0x4012af3fd933e35c              # double 4.6711419999999997
	.quad	0x40134a22b3892ee8              # double 4.8223979999999997
	.quad	0x4014abaf965b20b8              # double 5.167662
	.quad	0x40060eb67c286f8b              # double 2.7571840000000001
	.quad	0x4013a33acd5b6806              # double 4.9094040000000003
	.quad	0x3ffc8ffc9795b35b              # double 1.785153
	.quad	0x402330a915379fa9              # double 9.5950399999999991
	.quad	0x40176bc3c5bd0e13              # double 5.8552390000000001
	.quad	0x40151c0ce91c8eac              # double 5.277393
	.quad	0x401b93dab5c39bcc              # double 6.8943890000000003
	.quad	0x4022286a098915be              # double 9.0789340000000003
	.quad	0x3ff8974a3400b88d              # double 1.5369360000000001
	.quad	0x3fe2cbee807bbb62              # double 0.58739399999999997
	.quad	0x3fc53d96638433d7              # double 0.16594200000000001
	.quad	0x40223922962cfd8f              # double 9.1115919999999999
	.quad	0x401cc04e1e71044f              # double 7.1877979999999999
	.quad	0x4019f4e7685985ad              # double 6.4891639999999997
	.quad	0x4011628672756862              # double 4.3462160000000001
	.quad	0x40196397dd00f777              # double 6.3472590000000002
	.quad	0x40139f91e646f156              # double 4.9058299999999999
	.quad	0x4019b82773e24fec              # double 6.4298380000000002
	.quad	0x4020eebdb1a6d699              # double 8.466291
	.quad	0x400f76c0d6f544bb              # double 3.932985
	.quad	0x401d19dcf893faf4              # double 7.2752569999999999
	.quad	0x3fff36523704790c              # double 1.9507620000000001
	.quad	0x40130ec56d5cfaad              # double 4.7644250000000001
	.quad	0x40124634dad31fcd              # double 4.5685609999999999
	.quad	0x40227bcd35a85879              # double 9.2417999999999996
	.quad	0x4014cca3a4b5568f              # double 5.1998430000000004
	.quad	0x400106f156191149              # double 2.12839
	.quad	0x4023b3777d0f1f58              # double 9.8505210000000005
	.quad	0x401d6e6e221c8a7a              # double 7.3578419999999998
	.quad	0x401c9e2c98e53eb4              # double 7.1544670000000004
	.quad	0x4004453f39d1b2e6              # double 2.5338120000000002
	.quad	0x400f10ab2e1693c0              # double 3.8831389999999999
	.quad	0x4013632db1e9f278              # double 4.8468540000000004
	.quad	0x401684295a6c5d20              # double 5.6290639999999996
	.quad	0x4021d0e3ac0c62e5              # double 8.9079870000000003
	.quad	0x40161d35a858793e              # double 5.5285250000000001
	.quad	0x3ff94ee9dd7ecbb8              # double 1.581766
	.quad	0x4018f38b04ab606b              # double 6.2378349999999996
	.quad	0x40194cd962068555              # double 6.3250479999999998
	.quad	0x4017b8b08dd1e53b              # double 5.9303610000000004
	.quad	0x3fe91c1f85d744f6              # double 0.78468300000000002
	.quad	0x400484f97edc7ef1              # double 2.5649289999999998
	.quad	0x401f8e703afb7e91              # double 7.8891
	.quad	0x40177ec636b09635              # double 5.8738029999999997
	.quad	0x4013f87ebf22c01e              # double 4.9926709999999996
	.quad	0x40224253fc0096ff              # double 9.1295470000000005
	.quad	0x4010d37ef5a964e9              # double 4.2065390000000003
	.quad	0x40170005814940bc              # double 5.7500210000000003
	.quad	0x40230ee7c49fd7a1              # double 9.5291119999999995
	.quad	0x4006988094e5d5b2              # double 2.8244639999999999
	.quad	0x40210d7928e0c9da              # double 8.5263150000000003
	.quad	0x40226f18c9fb6135              # double 9.2169860000000003
	.quad	0x401aee6ff7dfa00e              # double 6.7328489999999999
	.quad	0x40222b8476f2a5a4              # double 9.0849949999999992
	.quad	0x4012225785f8d2e5              # double 4.5335369999999999
	.quad	0x4022ec36976bc1f0              # double 9.461354
	.quad	0x4015ba643cc07aaf              # double 5.432023
	.quad	0x4023cb4a66559f6f              # double 9.8970520000000004
	.quad	0x401e497bfa4c61d8              # double 7.5717619999999996
	.quad	0x3fd17746887a8d65              # double 0.27290500000000001
	.quad	0x401c32ba5a038195              # double 7.0495390000000002
	.quad	0x401aada554b8bef9              # double 6.6695760000000002
	.quad	0x401c11487768166a              # double 7.0168780000000002
	.quad	0x3ff7882278d0cc36              # double 1.470736
	.quad	0x40055939a7c17a89              # double 2.6685669999999999
	.quad	0x400614b2745bf26f              # double 2.7601059999999999
	.quad	0x401bc63b256ffc11              # double 6.9435849999999997
	.quad	0x3ff4adc5d6388659              # double 1.2924249999999999
	.quad	0x401c80181e03f706              # double 7.1250920000000004
	.quad	0x40134ae7924af0bf              # double 4.8231489999999999
	.quad	0x4005ab3b320535ca              # double 2.708609
	.quad	0x3ff5d5714b9cb685              # double 1.3646100000000001
	.quad	0x402202784a9478c8              # double 9.0048239999999993
	.quad	0x4010ffb69984a0e4              # double 4.2497199999999999
	.quad	0x40234d3b0813cab8              # double 9.6508409999999997
	.quad	0x3ffa618ac9f2fdb9              # double 1.648814
	.quad	0x3ff7a033e78e1933              # double 1.476612
	.quad	0x3fb24a48f96e1587              # double 0.071445999999999996
	.quad	0x3ff04a17b0f6ad71              # double 1.018089
	.quad	0x402024ead0c3d252              # double 8.0721039999999995
	.quad	0x40232d3c579f2346              # double 9.5883509999999994
	.quad	0x401b466d373affb0              # double 6.8187759999999997
	.quad	0x3fd044178705425f              # double 0.25415599999999999
	.quad	0x40187ed352220bc4              # double 6.1238530000000004
	.quad	0x40121e8e60807358              # double 4.5298400000000001
	.quad	0x402007e02645e4e7              # double 8.0153820000000007
	.quad	0x402225206c8711d8              # double 9.0725130000000007
	.quad	0x3ffa0c1ebc83a96d              # double 1.6279589999999999
	.quad	0x40185bcdbbe0157f              # double 6.0896520000000001
	.quad	0x40211a48f96e1587              # double 8.5513379999999994
	.quad	0x401ab84cf0739b02              # double 6.6799809999999997
	.quad	0x401a08dfbd6a593a              # double 6.5086659999999998
	.quad	0x3fbc00da1a93293d              # double 0.109388
	.quad	0x4021e77ee4e26d48              # double 8.95214
	.quad	0x400a643fe5c91d15              # double 3.29895
	.quad	0x401e288a04d12019              # double 7.5395890000000003
	.quad	0x400ccdf9bdc69f8c              # double 3.6005739999999999
	.quad	0x400c96e58a32f449              # double 3.57368
	.quad	0x4006b143bf727137              # double 2.8365550000000002
	.quad	0x3fdf3b85e80bed74              # double 0.488008
	.quad	0x40221ff0aa21a71a              # double 9.0623830000000005
	.quad	0x3fa9f2990f301eac              # double 0.050679000000000002
	.quad	0x4008fc21187e7c07              # double 3.1231100000000001
	.quad	0x40199c10d7be9857              # double 6.4024080000000003
	.quad	0x40089bcf4e874c90              # double 3.076079
	.quad	0x400eb8982cb20fb2              # double 3.8401339999999999
	.quad	0x401e8566cf41f213              # double 7.6302750000000001
	.quad	0x4020419392189bd8              # double 8.1280789999999996
	.quad	0x40135fb97bb73083              # double 4.8434809999999997
	.quad	0x401249a3d2d87f88              # double 4.5719139999999996
	.quad	0x3ffa39aae6c8f755              # double 1.639079
	.quad	0x4022d82bc72e275b              # double 9.4222090000000005
	.quad	0x401651b003686a4d              # double 5.5797730000000003
	.quad	0x400878e4b87bdcf0              # double 3.0590299999999999
	.quad	0x4017a5b3e1437c57              # double 5.9118190000000004
	.quad	0x40094daa0cae642c              # double 3.162922
	.quad	0x402341bbf0dc768e              # double 9.628387
	.quad	0x4023be2fdfc19c17              # double 9.8714589999999997
	.quad	0x401240aaa7ded6bb              # double 4.5631510000000004
	.quad	0x401ae6638433d6c7              # double 6.7249889999999999
	.quad	0x4017ad184c271fff              # double 5.9190379999999996
	.quad	0x4001591d57ff9b56              # double 2.1685129999999999
	.quad	0x40185d9f90539fba              # double 6.0914289999999998
	.quad	0x401dd25892684cf0              # double 7.4554159999999996
	.quad	0x3ffe6dc5d6388659              # double 1.9017999999999999
	.quad	0x3ff3ceb8950763a2              # double 1.2379690000000001
	.quad	0x3ff37396d0917d6b              # double 1.2157199999999999
	.quad	0x4010eab3edd8b60f              # double 4.2292019999999999
	.quad	0x401a6c3c5bd0e12f              # double 6.6056990000000004
	.quad	0x40197820a30db6a2              # double 6.3673120000000001
	.quad	0x4013afc8f32378ab              # double 4.921665
	.quad	0x4016cf91e646f156              # double 5.7027049999999999
	.quad	0x3fd7866a11ec918e              # double 0.36757899999999999
	.quad	0x401400d9d7774aba              # double 5.0008309999999998
	.quad	0x4004831df761cbcd              # double 2.564022
	.quad	0x400cf1feeb2d0a24              # double 3.6181619999999999
	.quad	0x4019ff9d6f112fd3              # double 6.4996239999999998
	.quad	0x401b58a7e73a365d              # double 6.8365780000000003
	.quad	0x401db76102795704              # double 7.429081
	.quad	0x401ffabcd78c4370              # double 7.9948610000000002
	.quad	0x4013feea63b688be              # double 4.9989410000000003
	.quad	0x4017e8765ba6efc3              # double 5.9770139999999996
	.quad	0x3febb0a2ca9ac365              # double 0.86531199999999997
	.quad	0x4023e07ca643cc08              # double 9.9384510000000005
	.quad	0x3ffefc6327ed84d3              # double 1.936618
	.quad	0x401e9320535c9e67              # double 7.6436780000000004
	.quad	0x401d2d8adab9f55a              # double 7.2944750000000003
	.quad	0x40136afb3b752114              # double 4.8544739999999997
	.quad	0x401b301f31f46ed2              # double 6.7969939999999998
	.quad	0x4022d7bd273d5bab              # double 9.4213649999999997
	.quad	0x3ffb76e3f78bbd38              # double 1.716526
	.quad	0x401008262456f75e              # double 4.0079580000000004
	.quad	0x400d3be878fabda1              # double 3.6542520000000001
	.quad	0x4022ae43cc07aaef              # double 9.3403609999999997
	.quad	0x402206a550870111              # double 9.0129800000000007
	.quad	0x401d9ce39b456b44              # double 7.4032119999999999
	.quad	0x400931001d5c3159              # double 3.1489259999999999
	.quad	0x3ff7d4fbdad7518b              # double 1.489498
	.quad	0x4003addb5525cc42              # double 2.4598909999999998
	.quad	0x401e5cc1871e6cd3              # double 7.5905820000000003
	.quad	0x400419c9d5a187a5              # double 2.5125920000000002
	.quad	0x4022a88aefb2aae3              # double 9.3291850000000007
	.quad	0x400956d549731099              # double 3.1673990000000001
	.quad	0x3fe3d12018a43bb4              # double 0.619278
	.quad	0x401fa98958d9b5e9              # double 7.9155629999999996
	.quad	0x3f6c17225b749add              # double 0.0034290000000000002
	.quad	0x401b47b5f1bef49d              # double 6.82003
	.quad	0x401df29e0a41a262              # double 7.4869310000000002
	.quad	0x401ed4d3bf2f5558              # double 7.7078389999999998
	.quad	0x4018107075b3e143              # double 6.0160539999999996
	.quad	0x3ff67d523b3636f4              # double 1.4055960000000001
	.quad	0x40033e5d18090b41              # double 2.4054509999999998
	.quad	0x401ae262888b545c              # double 6.7210789999999996
	.quad	0x4017f8fd199bb279              # double 5.9931530000000004
	.quad	0x40147bc77143393b              # double 5.1208780000000003
	.quad	0x4012d5d5b24e9c45              # double 4.7088229999999998
	.quad	0x4022f91a11233df3              # double 9.4865270000000005
	.quad	0x40204b69984a0e41              # double 8.1472899999999999
	.quad	0x401b329dc725c3df              # double 6.7994300000000001
	.quad	0x40051504c48adeec              # double 2.6352630000000001
	.quad	0x3ffc63fcc9ea9a3d              # double 1.774411
	.quad	0x3fffff67f4dbdf8f              # double 1.9998549999999999
	.quad	0x401916bbdbe3c105              # double 6.2722009999999999
	.quad	0x4008cb05b7cfe586              # double 3.099132
	.quad	0x40134e991ff7164c              # double 4.8267559999999996
	.quad	0x4018b9c560c7c0f4              # double 6.1814169999999997
	.quad	0x3feca3ec02f2f987              # double 0.89500999999999997
	.quad	0x400d091c8eabffce              # double 3.6294490000000001
	.quad	0x40076cc92146a1a5              # double 2.928118
	.quad	0x4020352a411c2a02              # double 8.1038379999999997
	.quad	0x40219a33df2a9d62              # double 8.8011769999999991
	.quad	0x401683d1cc100e6b              # double 5.62873
	.quad	0x3ff83fae3608d089              # double 1.515547
	.quad	0x3ffc888c60cbf2b2              # double 1.783337
	.quad	0x4023f3da0dfdef85              # double 9.9762730000000008
	.quad	0x40037c0a8d21bc12              # double 2.4355669999999998
	.quad	0x4010e64a9cdc4439              # double 4.2248939999999999
	.quad	0x401c4eb24a6a875d              # double 7.0768519999999997
	.quad	0x4017c0a0f4d7add1              # double 5.9381139999999997
	.quad	0x4008369878316a05              # double 3.0266579999999998
	.quad	0x400a77d1782d3847              # double 3.3085049999999998
	.quad	0x401beae4b0186120              # double 6.9793880000000001
	.quad	0x40166daa92e62132              # double 5.6070960000000003
	.quad	0x4011cab606b7aa26              # double 4.4479600000000001
	.quad	0x401338c9fb6134ce              # double 4.8054579999999998
	.quad	0x3fd0639d5e4a3832              # double 0.25607999999999997
	.quad	0x3ff31ee88df3732a              # double 1.1950460000000001
	.quad	0x400c487229e90796              # double 3.535374
	.quad	0x3fef03ba3443d46b              # double 0.96920499999999998
	.quad	0x3fe0f7ee4e26d480              # double 0.53026499999999999
	.quad	0x401962c6ac215b9a              # double 6.3464609999999997
	.quad	0x4023e919695d91ac              # double 9.9552720000000007
	.quad	0x401b9f0bf1a5ca2a              # double 6.9053190000000004
	.quad	0x4009df141205bc02              # double 3.2339250000000002
	.quad	0x402029845dc83233              # double 8.0810879999999994
	.quad	0x401512107b784663              # double 5.2676410000000002
	.quad	0x3fd77cc39ffd60e9              # double 0.36698999999999998
	.quad	0x401799eba6aca793              # double 5.9003129999999997
	.quad	0x401d45aee631f8a1              # double 7.3180500000000004
	.quad	0x3fd1e2ef4e0114d3              # double 0.279476
	.quad	0x3fd8a9bcfd4bf099              # double 0.38535999999999998
	.quad	0x402086bb55ac03ff              # double 8.2631479999999993
	.quad	0x4010764302b40f67              # double 4.1154900000000003
	.quad	0x40017821af7d30ad              # double 2.1836579999999999
	.quad	0x40217c484944ed70              # double 8.7427390000000003
	.quad	0x4021da94bbe4473d              # double 8.9269160000000003
	.quad	0x401c656a7ac81d3b              # double 7.0990390000000003
	.quad	0x4006081882adc4ca              # double 2.7539530000000001
	.quad	0x400ae86f8ad2567a              # double 3.3634940000000002
	.quad	0x4009e44ae85b9e8c              # double 3.2364709999999999
	.quad	0x3fe892dba4d6e47e              # double 0.76792700000000003
	.quad	0x40226ec743201041              # double 9.2163640000000004
	.quad	0x4004447e49b1fab9              # double 2.5334439999999998
	.quad	0x4011dec95bff0457              # double 4.4675649999999996
	.quad	0x40038fb65668c261              # double 2.4451719999999999
	.quad	0x401aaeb9e492bc30              # double 6.6706310000000002
	.quad	0x40235e04e1e71045              # double 9.683631
	.quad	0x3fbc268900c521de              # double 0.10996300000000001
	.quad	0x40034787485e3da3              # double 2.409926
	.quad	0x40127632c1f42bb6              # double 4.6154279999999996
	.quad	0x3ff08c3d25247cb7              # double 1.034238
	.quad	0x401a51b584b1ab08              # double 6.5797939999999997
	.quad	0x401c4a89b951c5c5              # double 7.0727909999999996
	.quad	0x400f366a55087011              # double 3.90157
	.quad	0x4009f7e90ff97247              # double 3.2460499999999999
	.quad	0x401bc7c6b8b69553              # double 6.9450940000000001
	.quad	0x4010b0a02b841249              # double 4.1724860000000001
	.quad	0x400820d4562e09ff              # double 3.0160300000000002
	.quad	0x401dbfaa4766c6de              # double 7.4371729999999996
	.quad	0x40216153dea465a5              # double 8.6900929999999992
	.quad	0x401b14f2ae07e5a8              # double 6.7704570000000004
	.quad	0x400b1baf533f4235              # double 3.3885179999999999
	.quad	0x4013fa6bd6e8af81              # double 4.9945519999999997
	.quad	0x4021855885d31338              # double 8.7604410000000001
	.quad	0x400a05abc0e38a7e              # double 3.2527689999999998
	.quad	0x400349b52007dd44              # double 2.41099
	.quad	0x4012c1572580c309              # double 4.688809
	.quad	0x4013e1dbca9691a7              # double 4.9705649999999997
	.quad	0x400e659c065b63d4              # double 3.799614
	.quad	0x400d912018a43bb4              # double 3.695862
	.quad	0x40216b8e29f9ce8e              # double 8.7100690000000007
	.quad	0x40051ac36544fe37              # double 2.6380680000000001
	.quad	0x4018276ab5807fed              # double 6.0384929999999999
	.quad	0x401c64638c975297              # double 7.0980359999999996
	.quad	0x401229e5e2478855              # double 4.5409160000000002
	.quad	0x4020fd1cc100e6b0              # double 8.4943600000000004
	.quad	0x4012fffc115df655              # double 4.7499849999999997
	.quad	0x401b589a88ace24c              # double 6.8365270000000002
	.quad	0x4003b9103c8e25c8              # double 2.465363
	.quad	0x40104f9378ee2867              # double 4.0777109999999999
	.quad	0x40061a604e1e7104              # double 2.7628789999999999
	.quad	0x3fbfa7fc32ebe597              # double 0.123657
	.quad	0x4019982d38476f2a              # double 6.3986099999999997
	.quad	0x4023ab2b3461309c              # double 9.8343139999999991
	.quad	0x401150c1333b96af              # double 4.328862
	.quad	0x3fee1016ce789e77              # double 0.93946399999999997
	.quad	0x400f6d6b228dc982              # double 3.9284270000000001
	.quad	0x4014035a426bb55b              # double 5.0032740000000002
	.quad	0x401234883fd50225              # double 4.5513009999999996
	.quad	0x40130adf2ecf2064              # double 4.7606169999999999
	.quad	0x4021b7fac1d29dc7              # double 8.8593349999999997
	.quad	0x3ff9fe6b3fe9fadb              # double 1.624614
	.quad	0x4021d6fc371da37f              # double 8.9198930000000001
	.quad	0x401d85a187a4a490              # double 7.3804990000000004
	.quad	0x400443a190082060              # double 2.533023
	.quad	0x40106714fce746cc              # double 4.1006660000000004
	.quad	0x4003033acd5b6806              # double 2.3765770000000002
	.quad	0x4023fcbfd2e94680              # double 9.9936509999999998
	.quad	0x4016f3c03bc4d22d              # double 5.7380380000000004
	.quad	0x3f7b56323bbc6eb1              # double 0.0066740000000000002
	.quad	0x401e566a55087011              # double 7.5843899999999999
	.quad	0x40227f394b7b2895              # double 9.2484839999999995
	.quad	0x3ffbc0cc78e9f6a9              # double 1.7345699999999999
	.quad	0x3ffd5209edbf8b9c              # double 1.8325290000000001
	.quad	0x400d4d3415b1422d              # double 3.6626970000000001
	.quad	0x4022401344806291              # double 9.1251470000000001
	.quad	0x3fe6d816aceaaf36              # double 0.71387800000000001
	.quad	0x40170aa715831f04              # double 5.7604030000000002
	.quad	0x4022c7efe0ce0b91              # double 9.3905019999999996
	.quad	0x401e6b5d462c343b              # double 7.6048479999999996
	.quad	0x40051fdf7e8038a0              # double 2.6405630000000002
	.quad	0x4018f89eba6aca79              # double 6.2427929999999998
	.quad	0x4019554bcf0b6b6e              # double 6.333297
	.quad	0x3ff6db280f12c27a              # double 1.4285049999999999
	.quad	0x4004303a7546d3fa              # double 2.523549
	.quad	0x400380431bde82d8              # double 2.4376280000000001
	.quad	0x402017d651b0ccbc              # double 8.0465569999999999
	.quad	0x4017705d52c16df4              # double 5.859731
	.quad	0x401e8705857afea4              # double 7.6318570000000001
	.quad	0x40084a0a958537e3              # double 3.0361530000000001
	.quad	0x401894b1ee243569              # double 6.1452099999999996
	.quad	0x3fe52224edf61240              # double 0.66041799999999995
	.quad	0x4010f8b69552e2fc              # double 4.2428840000000001
	.quad	0x401d771c10d7be98              # double 7.3663179999999996
	.quad	0x3ffc5332acfb762e              # double 1.7703120000000001
	.quad	0x40084db50f40e5a3              # double 3.0379429999999998
	.quad	0x40132cc1871e6cd3              # double 4.7937070000000004
	.quad	0x4019a87f455a7d24              # double 6.4145479999999999
	.quad	0x401d064ba94bbe44              # double 7.2561479999999996
	.quad	0x4012763ed0f62739              # double 4.6154739999999999
	.quad	0x400874538ef34d6a              # double 3.0568
	.quad	0x401a4f7446f9b995              # double 6.5775920000000001
	.quad	0x3fe56b54e2b063e0              # double 0.66935199999999995
	.quad	0x400631ec918e325d              # double 2.7743769999999999
	.quad	0x401aa143bf727137              # double 6.6574850000000003
	.quad	0x400142aa19439de5              # double 2.1575510000000002
	.quad	0x4019210d38cda6e7              # double 6.2822769999999997
	.quad	0x400748f10a99b6f6              # double 2.9106160000000001
	.quad	0x4012e9767903211d              # double 4.7279910000000003
	.quad	0x401200f301eabbcb              # double 4.5009269999999999
	.quad	0x4005e1dda059a73b              # double 2.7352859999999999
	.quad	0x401748c5c9a34ca1              # double 5.8210670000000002
	.quad	0x4005062e4d1a6506              # double 2.628018
	.quad	0x401d59abf3387161              # double 7.3375700000000004
	.quad	0x40232470435efa61              # double 9.5711689999999993
	.quad	0x401601ba7fc32ebe              # double 5.5016879999999997
	.quad	0x40037c610f0e90bc              # double 2.4357319999999998
	.quad	0x401e18cac4b4d057              # double 7.5242110000000002
	.quad	0x4010abc408d8ec96              # double 4.1677400000000002
	.quad	0x40013d9ec7000432              # double 2.1550880000000001
	.quad	0x400670f062d40aaf              # double 2.8051460000000001
	.quad	0x40016fd976ff3ade              # double 2.1796139999999999
	.quad	0x4011022036006d0d              # double 4.2520759999999997
	.quad	0x3f6ebe9c886162f1              # double 0.0037529999999999998
	.quad	0x40101fb2aae29739              # double 4.0309549999999996
	.quad	0x4000708dd1e53a82              # double 2.0549580000000001
	.quad	0x401441f81a5870da              # double 5.0644229999999997
	.quad	0x401cd7fa1a0cf180              # double 7.210915
	.quad	0x400db91c4b90214b              # double 3.7153860000000001
	.quad	0x40221659af9ebe9d              # double 9.0436530000000008
	.quad	0x401400913a4f8727              # double 5.0005540000000002
	.quad	0x4020cd4d61b2a27f              # double 8.4009809999999998
	.quad	0x3ff9e85553ef6b5d              # double 1.6192219999999999
	.quad	0x3fe29ad85dfa871a              # double 0.58140199999999997
	.quad	0x4020e3a301216830              # double 8.4446030000000007
	.quad	0x3ffa3affb04ee7c5              # double 1.6394040000000001
	.quad	0x3fe17212d77318fc              # double 0.54517499999999997
	.quad	0x401cd4c22ee4191a              # double 7.2077720000000003
	.quad	0x3fec425072085b18              # double 0.88309499999999996
	.quad	0x401b659a30984e40              # double 6.849221
	.quad	0x402160fa9c12f09e              # double 8.6894120000000008
	.quad	0x4005ef8726d04e62              # double 2.7419570000000002
	.quad	0x40185b0bbf50e347              # double 6.0889119999999997
	.quad	0x4011cdf69878316a              # double 4.451136
	.quad	0x400c49eecbfb15b5              # double 3.5360999999999998
	.quad	0x401d8b9170d62bf1              # double 7.3862969999999999
	.quad	0x4004a40bfe3b03e2              # double 2.580101
	.quad	0x400ddcdbbe0157ef              # double 3.7328410000000001
	.quad	0x401c44284dfce315              # double 7.06656
	.quad	0x3ff9b0c026cc1ca4              # double 1.6056520000000001
	.quad	0x400bba597d49d7ba              # double 3.4659909999999998
	.quad	0x3ff64c87980f55de              # double 1.3936839999999999
	.quad	0x4012dbaf533f4235              # double 4.7145359999999998
	.quad	0x401a756e264e4862              # double 6.6146779999999996
	.quad	0x4022ceae9ee45c36              # double 9.4036760000000008
	.quad	0x401b3e8d10f51aca              # double 6.8110850000000003
	.quad	0x40212b58afc47e4a              # double 8.5846610000000005
	.quad	0x40167068123810e9              # double 5.6097720000000004
	.quad	0x4009c086bdf4c2b5              # double 3.219007
	.quad	0x3fd6c3547e06961c              # double 0.35567199999999999
	.quad	0x3ffa99e1f3a57eaa              # double 1.662569
	.quad	0x3ffc8cd74927913f              # double 1.7843850000000001
	.quad	0x3fff3e6c4c5974e6              # double 1.9527399999999999
	.quad	0x4022129131ec0b56              # double 9.0362639999999992
	.quad	0x400fa883fd502257              # double 3.9572829999999999
	.quad	0x40117e6f71a7e308              # double 4.3734719999999996
	.quad	0x401d62f2734f82f5              # double 7.3466279999999999
	.quad	0x40172e3b46fdeb53              # double 5.7951480000000002
	.quad	0x3ff0089e34330d74              # double 1.0021040000000001
	.quad	0x4003e427c7c5260f              # double 2.4864039999999998
	.quad	0x401c335610adcd2d              # double 7.0501329999999998
	.quad	0x401fd9a0f0a5efe9              # double 7.9625279999999998
	.quad	0x401d6afbc1acde1a              # double 7.354476
	.quad	0x401f68982cb20fb2              # double 7.8521429999999999
	.quad	0x401b034373f316e3              # double 6.7531869999999996
	.quad	0x3fe4645803cd141a              # double 0.63724899999999995
	.quad	0x3fabf5946c332f01              # double 0.054607999999999997
	.quad	0x3fc5fc115df6555c              # double 0.17175499999999999
	.quad	0x3fd5a411c2a02321              # double 0.33813900000000002
	.quad	0x4019ba73b42cc2d7              # double 6.4320820000000003
	.quad	0x40233fb5aea3161a              # double 9.6244329999999998
	.quad	0x40161515ce9e5e24              # double 5.5205909999999996
	.quad	0x400e845baf533f42              # double 3.8146279999999999
	.quad	0x3fe667c06e19b90f              # double 0.70016500000000004
	.quad	0x4015e4f8b588e369              # double 5.4736050000000001
	.quad	0x401d36e5cd4ed2cc              # double 7.3036110000000001
	.quad	0x3ff94829cfdd2285              # double 1.5801179999999999
	.quad	0x4005cf15e7c8d196              # double 2.7261160000000002
	.quad	0x3fed4d8127b2cc71              # double 0.91571100000000005
	.quad	0x400f9e34330d7386              # double 3.952248
	.quad	0x400a3636f3b213e4              # double 3.2764720000000001
	.quad	0x3ff3c095f2452c5a              # double 1.234518
	.quad	0x40214003cd141a69              # double 8.6250289999999996
	.quad	0x3ff12d19dece5711              # double 1.0735110000000001
	.quad	0x4010a919695d91ac              # double 4.1651360000000004
	.quad	0x4021d1f03d145d85              # double 8.9100359999999998
	.quad	0x401a1be0589acbc9              # double 6.5272230000000002
	.quad	0x3fe2ecc3e3193f6c              # double 0.59140199999999998
	.quad	0x401e7c5b8dc55001              # double 7.6214430000000001
	.quad	0x400c5a0b5ed8d36b              # double 3.5439669999999999
	.quad	0x3fed2b9f559b3d08              # double 0.91157500000000002
	.quad	0x40236c86f049a997              # double 9.7119669999999995
	.quad	0x400d2358298cc144              # double 3.642258
	.quad	0x402267dd65a14489              # double 9.2028610000000004
	.quad	0x40222504c48adeec              # double 9.0723020000000005
	.quad	0x40121dfe75bc44bf              # double 4.5292909999999997
	.quad	0x40218aa087ca643d              # double 8.7707560000000004
	.quad	0x40224f383f0bae8a              # double 9.1547260000000001
	.quad	0x3fe6a65cf67b1c00              # double 0.70780799999999999
	.quad	0x401c1c2e770bd018              # double 7.0275210000000001
	.quad	0x402319d25aab4741              # double 9.5504329999999999
	.quad	0x401b8292817763e5              # double 6.8775120000000003
	.quad	0x4023026612839043              # double 9.5046850000000002
	.quad	0x40220a2dd7a99fa1              # double 9.0198809999999998
	.quad	0x401883f8982cb210              # double 6.1288780000000003
	.quad	0x400edf90d9d7774b              # double 3.8591630000000001
	.quad	0x400f0244e93e1c9b              # double 3.8761079999999999
	.quad	0x40168c8a372606fb              # double 5.6372460000000002
	.quad	0x40225c067cf1c326              # double 9.1797369999999994
	.quad	0x40107444e0daa0cb              # double 4.1135440000000001
	.quad	0x4018e0f451761459              # double 6.2196819999999997
	.quad	0x402093acb4289119              # double 8.2884270000000004
	.quad	0x3ff77901083dbc23              # double 1.467042
	.quad	0x3fe5a3465625a683              # double 0.67618100000000003
	.quad	0x4020c0f7fcfc3f81              # double 8.3768919999999998
	.quad	0x3fe85fcc1871e6cd              # double 0.76169399999999998
	.quad	0x401c297353b4b2fb              # double 7.0404790000000004
	.quad	0x3ff4cbcad9ad85e0              # double 1.2997540000000001
	.quad	0x401d8f64cf8d716d              # double 7.3900329999999999
	.quad	0x3ff888b0079a2835              # double 1.533371
	.quad	0x402386da22f6a50d              # double 9.7633829999999992
	.quad	0x40229572799a1fd1              # double 9.2918889999999994
	.quad	0x3fd8fdc1615ebfa9              # double 0.390488
	.quad	0x4021810f94c87981              # double 8.7520720000000001
	.quad	0x4015c7d2849cb253              # double 5.4451390000000002
	.quad	0x401f85e39713ad5c              # double 7.8807510000000001
	.quad	0x401b6764adff822c              # double 6.8509700000000002
	.quad	0x401b15f56a7ac81d              # double 6.7714439999999998
	.quad	0x40162bbf93ff25e5              # double 5.5427229999999996
	.quad	0x4016e78705425f20              # double 5.7261009999999999
	.quad	0x40211e8986fcdee3              # double 8.5596429999999994
	.quad	0x3ff0737da61e0c5b              # double 1.0281960000000001
	.quad	0x3fe2092ccf6be37e              # double 0.56362000000000001
	.quad	0x3ff8b9de481f5382              # double 1.5453779999999999
	.quad	0x401126c050bd87b5              # double 4.2878429999999996
	.quad	0x400ecfd08d4bad7d              # double 3.8514719999999998
	.quad	0x40120e542e557de1              # double 4.5139930000000001
	.quad	0x3ff989de05037500              # double 1.5961590000000001
	.quad	0x3ffd2c96cc5fbf83              # double 1.823386
	.quad	0x4014bbead4f5903a              # double 5.1835129999999996
	.quad	0x4023837c99ae924f              # double 9.7568099999999997
	.quad	0x4022eb2c40d0aaa8              # double 9.4593220000000002
	.quad	0x401c0a27f1b69121              # double 7.0099179999999999
	.quad	0x40085e718a86d71f              # double 3.0461149999999999
	.quad	0x4022190e02214270              # double 9.0489350000000002
	.quad	0x401e49a49c2c1b11              # double 7.571917
	.quad	0x4023a75b1c864884              # double 9.826867
	.quad	0x401154d013a92a30              # double 4.3328249999999997
	.quad	0x3ffb76049ecb31c2              # double 1.716313
	.quad	0x4008825b749adc90              # double 3.0636510000000001
	.quad	0x4018addbdb5d8948              # double 6.1697839999999999
	.quad	0x3fef7863beec397a              # double 0.98344600000000004
	.quad	0x3fe0673e681a9b8d              # double 0.51260300000000003
	.quad	0x3fd8275ee99a62ed              # double 0.37740299999999999
	.quad	0x3fc6444178705426              # double 0.173958
	.quad	0x401412873bc903ea              # double 5.0180939999999996
	.quad	0x401599c12f09d8c7              # double 5.4001510000000001
	.quad	0x401aa33333333333              # double 6.6593749999999998
	.quad	0x4017b57afea3df6e              # double 5.9272270000000002
	.quad	0x401cbdb6a1e81cb4              # double 7.1852669999999996
	.quad	0x401710a17b0f6ad7              # double 5.7662409999999999
	.quad	0x40227f56861e9292              # double 9.2487069999999996
	.quad	0x401e1dd872f33ca3              # double 7.5291459999999998
	.quad	0x401d0df15a4acf31              # double 7.2636159999999999
	.quad	0x40202eb074a771c9              # double 8.0911899999999992
	.quad	0x401ce2d9cf13ceea              # double 7.2215340000000001
	.quad	0x4010e20791c4b902              # double 4.2207319999999999
	.quad	0x401348b6d86ec17f              # double 4.8210100000000002
	.quad	0x40219f531db445ed              # double 8.8111809999999995
	.quad	0x4020ca5bd944aa54              # double 8.395232
	.quad	0x3fd57d8cf398e970              # double 0.33578799999999998
	.quad	0x401885831f03d146              # double 6.1303830000000001
	.quad	0x402008374ff865d8              # double 8.0160470000000004
	.quad	0x4019111276fb0920              # double 6.2666719999999998
	.quad	0x40101ac2df0d4131              # double 4.0261339999999999
	.quad	0x401e946d82ba5a04              # double 7.6449490000000004
	.quad	0x40172985f06f6944              # double 5.7905499999999996
	.quad	0x4021d4a25529fe00              # double 8.9153009999999994
	.quad	0x400a566c6de76428              # double 3.2921990000000001
	.quad	0x400b945c78a6dacb              # double 3.4474420000000001
	.quad	0x4020d467168f8e7e              # double 8.4148490000000002
	.quad	0x4007f291b823c85c              # double 2.9934419999999999
	.quad	0x3fd33f52fc2656ac              # double 0.30074000000000001
	.quad	0x4022f2d87f88765c              # double 9.4743080000000006
	.quad	0x3feed204af922963              # double 0.96313700000000002
	.quad	0x400c542dcf4623d1              # double 3.5411030000000001
	.quad	0x400be57d9dba908a              # double 3.4870559999999999
	.quad	0x40117958d9b5e95b              # double 4.3685029999999996
	.quad	0x400b1418d6909aed              # double 3.3848129999999998
	.quad	0x3fc78288051c9f73              # double 0.183671
	.quad	0x40065e3a7daa4fca              # double 2.7960099999999999
	.quad	0x3fddcc8de2ac3223              # double 0.46561000000000002
	.quad	0x402071a437824d4d              # double 8.2219560000000005
	.quad	0x3ff5d323fee2c98e              # double 1.3640479999999999
	.quad	0x4003a47d3d4280ae              # double 2.455317
	.quad	0x400530329802c0a5              # double 2.6485340000000002
	.quad	0x400ff1287c200c0f              # double 3.992753
	.quad	0x4016c5171e29b6b3              # double 5.6924710000000003
	.quad	0x4005a52263d816ad              # double 2.705632
	.quad	0x401d3ebc408d8ec9              # double 7.3112649999999997
	.quad	0x40189e52deca2553              # double 6.1546130000000003
	.quad	0x40146c39799e518f              # double 5.1056879999999998
	.quad	0x4023059fb1e18efc              # double 9.5109840000000005
	.quad	0x4020a586876e1deb              # double 8.3232920000000004
	.quad	0x3fbf6c15d2d01c0d              # double 0.122743
	.quad	0x4019346f9b994e1a              # double 6.3012069999999998
	.quad	0x40147d82ba5a0382              # double 5.1225690000000004
	.quad	0x3fefc280ae104923              # double 0.99249299999999995
	.quad	0x4007c44178705426              # double 2.970828
	.quad	0x401e5cd035371972              # double 7.5906380000000002
	.quad	0x4011ec8fb86f47b6              # double 4.4810169999999996
	.quad	0x40138e0c17657753              # double 4.8887179999999999
	.quad	0x401df4cf0739b025              # double 7.489071
	.quad	0x400db193708aac97              # double 3.7117070000000001
	.quad	0x401855347a5b0ff1              # double 6.0832079999999999
	.quad	0x3fc75f138bcdfefc              # double 0.182589
	.quad	0x401c8c64fdb09a67              # double 7.1371039999999999
	.quad	0x3fe2434a01abd1ab              # double 0.57071400000000005
	.quad	0x40042a0a0f4d7add              # double 2.520527
	.quad	0x4022397891e21533              # double 9.1122479999999992
	.quad	0x4000268a0d349be9              # double 2.018818
	.quad	0x4012f91ab8e8ea3a              # double 4.7432660000000002
	.quad	0x40139e61cffeb075              # double 4.9046700000000003
	.quad	0x40213983f91e646f              # double 8.6123349999999999
	.quad	0x402216573215fcc2              # double 9.0436340000000008
	.quad	0x4023cd208e150119              # double 9.9006389999999999
	.quad	0x401eaa9b06812381              # double 7.6666069999999999
	.quad	0x4019491f70de8f6d              # double 6.3214090000000001
	.quad	0x3ff43dbc23315d70              # double 1.265072
	.quad	0x40117b2031ceaf25              # double 4.3702399999999999
	.quad	0x401f7004b7f5a533              # double 7.8593929999999998
	.quad	0x3ff97dc5931ca7d6              # double 1.5932059999999999
	.quad	0x402101b30728e92d              # double 8.5033189999999994
	.quad	0x401f668f4b61fe22              # double 7.8501560000000001
	.quad	0x401fe3c536d655e3              # double 7.9724320000000004
	.quad	0x4020012428d434a0              # double 8.0022289999999998
	.quad	0x402356933a0407cc              # double 9.6690919999999991
	.quad	0x3fe671c970f7b9e0              # double 0.70138999999999996
	.quad	0x3fff3d21ff2e48e9              # double 1.9524250000000001
	.quad	0x4013fef1bac2df0d              # double 4.9989689999999998
	.quad	0x4011b52220bc382a              # double 4.4268879999999999
	.quad	0x40103f61aa3f034b              # double 4.061896
	.quad	0x4014f448cf7caa76              # double 5.2385590000000004
	.quad	0x402065e310dbf056              # double 8.1989979999999996
	.quad	0x402151db0142f61f              # double 8.6598740000000003
	.quad	0x4014b018e757928e              # double 5.17197
	.quad	0x401c7f2990f301eb              # double 7.1241820000000002
	.quad	0x3fd7662bae03b3ea              # double 0.36561100000000002
	.quad	0x40206f8e1932d6ed              # double 8.2178810000000002
	.quad	0x401db1e7967caea7              # double 7.4237349999999998
	.quad	0x400f0c204f2ae07e              # double 3.8809209999999998
	.quad	0x3fe09ca5bd944aa5              # double 0.51912199999999997
	.quad	0x4018916a055757d6              # double 6.1420060000000003
	.quad	0x400828051c9f72f7              # double 3.0195409999999998
	.quad	0x402021949e8815e4              # double 8.0655870000000007
	.quad	0x40002b1ee2435697              # double 2.021055
	.quad	0x4015b3586ca89fc7              # double 5.4251420000000001
	.quad	0x4011fb37867f0aa2              # double 4.4953289999999999
	.quad	0x4000e9f2778140dd              # double 2.1142319999999999
	.quad	0x4005dc90c4dec1c2              # double 2.7326980000000001
	.quad	0x40079e6e653868fd              # double 2.952359
	.quad	0x401b7d3ae685db77              # double 6.8722950000000003
	.quad	0x3fe50ee8d10f51ad              # double 0.65807000000000004
	.quad	0x40206b63b256ffc1              # double 8.2097449999999998
	.quad	0x4021999b2c40d0ab              # double 8.8000120000000006
	.quad	0x4015a8ab92c06184              # double 5.4147169999999996
	.quad	0x40071897a67a52ac              # double 2.8870079999999998
	.quad	0x401966748e475600              # double 6.3500540000000001
	.quad	0x4011578f68be2f7b              # double 4.3355079999999999
	.quad	0x40147fac6045baf5              # double 5.1246809999999998
	.quad	0x3fe7fa5b0ff10ecb              # double 0.74931099999999995
	.quad	0x401aced0b30b5aa7              # double 6.7019679999999999
	.quad	0x3fe6fabb8800eae2              # double 0.71810700000000005
	.quad	0x4014e6ddaceee0f4              # double 5.2254550000000002
	.quad	0x400f95ae1cde5d18              # double 3.948086
	.quad	0x3fec76e1deacc921              # double 0.88951199999999997
	.quad	0x401dac0b5675579b              # double 7.4180120000000001
	.quad	0x400f10489d27c393              # double 3.8829509999999998
	.quad	0x4018e383f0bae89f              # double 6.2221830000000002
	.quad	0x3fdce09784ec636b              # double 0.451208
	.quad	0x4022cc47e49b1fac              # double 9.3989860000000007
	.quad	0x40168bed30f062d4              # double 5.636647
	.quad	0x4020048a159817b9              # double 8.0088659999999994
	.quad	0x4000d6a7ac81d3aa              # double 2.1048119999999999
	.quad	0x402133af965b20b8              # double 8.600949
	.quad	0x400fbbc01a36e2eb              # double 3.966675
	.quad	0x40219fbacb428912              # double 8.8119720000000008
	.quad	0x3ff62f01754b05b8              # double 1.386476
	.quad	0x4001db41bfbdf091              # double 2.232059
	.quad	0x400d331a08bfc222              # double 3.6499519999999999
	.quad	0x3fd0615ebfa8f7db              # double 0.25594299999999998
	.quad	0x3fbf0270f3882279              # double 0.121131
	.quad	0x3ffd1d3ed527e521              # double 1.8196399999999999
	.quad	0x3ff11ed17c5ef630              # double 1.0700240000000001
	.quad	0x40062d72799a1fd1              # double 2.7721909999999998
	.quad	0x4010cfda4052d667              # double 4.2029810000000003
	.quad	0x402032e62131a8ef              # double 8.0994119999999992
	.quad	0x40170348b220791c              # double 5.7532069999999997
	.quad	0x401bbae31d712a0f              # double 6.9325070000000002
	.quad	0x4020c6c4e7253da7              # double 8.3882209999999997
	.quad	0x40210b2bdc26dce4              # double 8.5218190000000006
	.quad	0x402211cae21101b0              # double 9.034751
	.quad	0x401c7adf2ecf2064              # double 7.1199919999999999
	.quad	0x3fe73b4d48882f0e              # double 0.725989
	.quad	0x4001ca2ca9ac3654              # double 2.2237179999999999
	.quad	0x401abd477bbf93ff              # double 6.6848429999999999
	.quad	0x401a17a20578e5c5              # double 6.5230790000000001
	.quad	0x4019307d0aed99cc              # double 6.2973520000000001
	.quad	0x400a27f8012dfd69              # double 3.2695159999999999
	.quad	0x40195bc05d52c16e              # double 6.339601
	.quad	0x400e2940357a3550              # double 3.7701419999999999
	.quad	0x4021cb621fafc8b0              # double 8.8972329999999999
	.quad	0x402238d38cda6e76              # double 9.110989
	.quad	0x3fea26266fd651b1              # double 0.81715700000000002
	.quad	0x3fafa15db3397dd0              # double 0.061778
	.quad	0x4011ab80ecfa69be              # double 4.417484
	.quad	0x40143252ce032db2              # double 5.0491440000000001
	.quad	0x400d8a3486f049aa              # double 3.6924830000000002
	.quad	0x40144ca7d6733ebc              # double 5.074859
	.quad	0x3fe4daab47410731              # double 0.65169299999999997
	.quad	0x40228a67a52ac754              # double 9.2703220000000001
	.quad	0x4016f97edc7ef178              # double 5.7436480000000003
	.quad	0x401a4c0b5675579b              # double 6.5742620000000001
	.quad	0x3feadba0a5269596              # double 0.83931
	.quad	0x3ffaebb01c92ddbe              # double 1.6825410000000001
	.quad	0x3ff52d1287c200c1              # double 1.323504
	.quad	0x401d7eb313be22e6              # double 7.3737300000000001
	.quad	0x4022e12f901083dc              # double 9.4398160000000004
	.quad	0x3fe944028e4fb97c              # double 0.78955200000000003
	.quad	0x4022bbc18b502abb              # double 9.3667110000000004
	.quad	0x40236f5104d551d7              # double 9.7174150000000008
	.quad	0x40228b43d89ce4a8              # double 9.2720020000000005
	.quad	0x4015f26c7eae5bc8              # double 5.4867419999999996
	.quad	0x401db9ac79702e66              # double 7.4313219999999998
	.quad	0x402220678c0053e3              # double 9.0632900000000003
	.quad	0x4015fa843808850a              # double 5.4946450000000002
	.quad	0x3ff3534ce3de614a              # double 1.207837
	.quad	0x401971f1cfbb9496              # double 6.3612739999999999
	.quad	0x401efd3c36113405              # double 7.7473
	.quad	0x401273471f79420b              # double 4.6125759999999998
	.quad	0x401a079d4d834092              # double 6.5074360000000002
	.quad	0x400867aaef2c7326              # double 3.0506190000000002
	.quad	0x402007ec3547e069              # double 8.0154739999999993
	.quad	0x4000ba93af74cd31              # double 2.0911019999999998
	.quad	0x4003ae91c8eabffd              # double 2.4602390000000001
	.quad	0x401d2130164840e1              # double 7.2824099999999996
	.quad	0x3fe926634117f844              # double 0.78593599999999996
	.quad	0x40055bbf93ff25e5              # double 2.6697989999999998
	.quad	0x401202a6b0d95140              # double 4.5025890000000004
	.quad	0x4008a59103c8e25d              # double 3.0808430000000002
	.quad	0x400dc3c8e25c810a              # double 3.7205979999999998
	.quad	0x40036ecbfb15b574              # double 2.4291
	.quad	0x3fd8968512231833              # double 0.384187
	.quad	0x3fde4cdb7ae5796c              # double 0.473441
	.quad	0x4013a5ccc89b0ee5              # double 4.9119140000000003
	.quad	0x4010a42b302f72b4              # double 4.1603209999999997
	.quad	0x40165f9096bb98c8              # double 5.5933250000000001
	.quad	0x3fac46950fc71d60              # double 0.055225999999999997
	.quad	0x40013f31f46ed246              # double 2.1558570000000001
	.quad	0x3ffb780dc33721d5              # double 1.7168099999999999
	.quad	0x3fe719bf5946c333              # double 0.72189300000000001
	.quad	0x402053d4cfd08d4c              # double 8.1637330000000005
	.quad	0x3ffae25b749adc90              # double 1.6802630000000001
	.quad	0x402244a7d6733ebc              # double 9.134093
	.quad	0x400bd950331e3a7e              # double 3.4811100000000001
	.quad	0x401167d77fae3609              # double 4.3514080000000002
	.quad	0x40040a137f38c543              # double 2.5049199999999998
	.quad	0x4013a5cb35f3d7d4              # double 4.9119080000000004
	.quad	0x4002cb2e9ccb7d41              # double 2.3492099999999998
	.quad	0x4010878c436fc159              # double 4.132371
	.quad	0x4020210ff9724745              # double 8.0645749999999996
	.quad	0x3fff8178705425f2              # double 1.969109
	.quad	0x40020afb3b752114              # double 2.2553619999999999
	.quad	0x3ff12312f4cf4a56              # double 1.0710630000000001
	.quad	0x40143f45e0b4e11e              # double 5.0617900000000002
	.quad	0x402174b1ee243569              # double 8.7279199999999992
	.quad	0x4010c72f33ca31e8              # double 4.1945160000000001
	.quad	0x4016c3acd5b6805a              # double 5.6910889999999998
	.quad	0x40154964a59c065b              # double 5.3216729999999997
	.quad	0x401dc95d91ab8e8f              # double 7.4466460000000003
	.quad	0x4020354003254e6e              # double 8.1040039999999998
	.quad	0x3fb4f16f4384ba0f              # double 0.081809000000000007
	.quad	0x401201b9b66f9336              # double 4.5016850000000002
	.quad	0x4022501b21c475e6              # double 9.1564569999999996
	.quad	0x402255f4c2b51bd6              # double 9.1678829999999998
	.quad	0x40111a27ae9ab29e              # double 4.2755419999999997
	.quad	0x401917d24180d3d0              # double 6.273263
	.quad	0x4020927b9170d62c              # double 8.2860990000000001
	.quad	0x4021f245f5ad96a7              # double 8.9731900000000007
	.quad	0x4021accfaeff5c6c              # double 8.8375219999999998
	.quad	0x3ff6e908a265f0f6              # double 1.4318930000000001
	.quad	0x40043c2eba27ae9b              # double 2.5293860000000001
	.quad	0x4021c62f7b17ce53              # double 8.8870810000000002
	.quad	0x4023201908e581cf              # double 9.5626909999999991
	.quad	0x4017cb85e80bed74              # double 5.948753
	.quad	0x40206bc27631b585              # double 8.2104680000000005
	.quad	0x400ccad46f587d70              # double 3.5990380000000002
	.quad	0x3fb4e64b2314013f              # double 0.081639000000000003
	.quad	0x401ffdccea28fe26              # double 7.997852
	.quad	0x401060ddc6195465              # double 4.0945960000000001
	.quad	0x402065e9c0229a5f              # double 8.1990490000000005
	.quad	0x3fff99fb1e18efbb              # double 1.975093
	.quad	0x3fcdf0e4da09cc32              # double 0.23391400000000001
	.quad	0x4017a4ebdd334c5e              # double 5.9110560000000003
	.quad	0x401e0e2478854cdb              # double 7.5138109999999995
	.quad	0x40164fc8b0079a28              # double 5.5779139999999998
	.quad	0x40212b87df5cf249              # double 8.5850209999999993
	.quad	0x40006cb1897a67a5              # double 2.0530729999999999
	.quad	0x400303150dae3e6c              # double 2.3765049999999999
	.quad	0x402294d530489d28              # double 9.2906890000000004
	.quad	0x401f8ad5bee3d5fe              # double 7.8855810000000002
	.quad	0x4022069899bf5947              # double 9.0128830000000004
	.quad	0x4022f438f366948a              # double 9.4769970000000008
	.quad	0x3fafd50225742dcf              # double 0.062171999999999998
	.quad	0x401bfc404a72ead9              # double 6.9963389999999999
	.quad	0x4012843ed959a30a              # double 4.6291460000000004
	.quad	0x3fac105186db50f4              # double 0.054812
	.quad	0x4021fa4aada33bda              # double 8.9888510000000004
	.quad	0x3fe5eac8605681ed              # double 0.68491000000000002
	.quad	0x400aa25e13b18dac              # double 3.3292809999999999
	.quad	0x40117e325d4a5df2              # double 4.3732389999999999
	.quad	0x400816b76709fa55              # double 3.0110920000000001
	.quad	0x3ff2af37fbefd007              # double 1.167778
	.quad	0x3ff08f2ae07e5a79              # double 1.034953
	.quad	0x40112d0fe8ab4fa5              # double 4.2940060000000004
	.quad	0x40166723aafff36b              # double 5.6007220000000002
	.quad	0x40163251c193b3a7              # double 5.5491400000000004
	.quad	0x4019b63e8dda48b6              # double 6.4279729999999997
	.quad	0x4022c992a737110e              # double 9.3936969999999995
	.quad	0x4020582730c67169              # double 8.172174
	.quad	0x400bf0435efa615b              # double 3.4923160000000002
	.quad	0x40136fe32a0663c7              # double 4.8592649999999997
	.quad	0x400ed1fcd24e160e              # double 3.8525330000000002
	.quad	0x4021877ad4b2745c              # double 8.764609
	.quad	0x401b49e9d0e991ff              # double 6.8221809999999996
	.quad	0x40227250b524399b              # double 9.2232719999999997
	.quad	0x401784241c3efae8              # double 5.8790440000000004
	.quad	0x401d598288051c9f              # double 7.3374119999999996
	.quad	0x40212f164c729f5a              # double 8.5919670000000004
	.quad	0x402172f5989df117              # double 8.7245299999999997
	.quad	0x3fff7b320535c9e6              # double 1.9675769999999999
	.quad	0x3ff5fd5ed06fef7c              # double 1.374358
	.quad	0x401b3864cb5bb385              # double 6.805072
	.quad	0x402128def416bdb2              # double 8.5798260000000006
	.quad	0x3fe4390c9107faa0              # double 0.63196399999999997
	.quad	0x3ffc129670196d8f              # double 1.7545379999999999
	.quad	0x3ff110d6b228dc98              # double 1.066611
	.quad	0x40194518f3eccc47              # double 6.3174780000000004
	.quad	0x4018f7d523b3636f              # double 6.2420239999999998
	.quad	0x401cc30a0b1bbcf5              # double 7.1904680000000001
	.quad	0x401243ffac1d29dc              # double 4.5664049999999996
	.quad	0x400e9644955b4678              # double 3.8233730000000001
	.quad	0x400eea02b841248d              # double 3.8642629999999998
	.quad	0x401573d5fdcdf698              # double 5.3631209999999996
	.quad	0x40151002e2328f9f              # double 5.2656359999999998
	.quad	0x40227cf97edc7ef1              # double 9.2440909999999992
	.quad	0x3ffef122b7baecd0              # double 1.9338709999999999
	.quad	0x40157b5525cc4263              # double 5.3704419999999997
	.quad	0x3ffcd7d06bbdbe3c              # double 1.802689
	.quad	0x401142aa5c5f7c67              # double 4.3151029999999997
	.quad	0x40136c764adff823              # double 4.8559200000000002
	.quad	0x3ffc8eae18ac9f30              # double 1.784834
	.quad	0x3ff0114b167ec786              # double 1.0042219999999999
	.quad	0x3fb6f049a9973d9f              # double 0.089604000000000003
	.quad	0x4020b907d912556d              # double 8.3613879999999998
	.quad	0x401aee19fc2a886a              # double 6.7325210000000002
	.quad	0x40130c322291fb40              # double 4.7619100000000003
	.quad	0x401f3f77af64063a              # double 7.8119800000000001
	.quad	0x4013e94467381d7e              # double 4.9778000000000002
	.quad	0x40189625a682b628              # double 6.1466279999999998
	.quad	0x401c09513f8db489              # double 7.009099
	.quad	0x4011ae63a5c1c609              # double 4.4203020000000004
	.quad	0x4015fd64d7f0ed3e              # double 5.4974550000000004
	.quad	0x4022f953bd167664              # double 9.4869669999999999
	.quad	0x401f8e4e26d4801f              # double 7.8889699999999995
	.quad	0x3feb3ea91d9b1b7a              # double 0.85139900000000002
	.quad	0x401f44a6a875d56f              # double 7.8170419999999998
	.quad	0x4023c5987c6327ee              # double 9.8859290000000009
	.quad	0x401f6d7a13c254a4              # double 7.8569110000000002
	.quad	0x40178512a94ff002              # double 5.8799539999999997
	.quad	0x401e3a4e379b77c0              # double 7.5569389999999999
	.quad	0x3fe6a311e85fd04a              # double 0.70740599999999998
	.quad	0x40175ede97d06bbe              # double 5.8426460000000002
	.quad	0x40128e3369b9d7fe              # double 4.6388680000000004
	.quad	0x40202e3d816aceab              # double 8.0903130000000001
	.quad	0x401fcd0aaa7ded6c              # double 7.9502360000000003
	.quad	0x4021715feda66128              # double 8.7214349999999996
	.quad	0x40095396d0917d6b              # double 3.1658149999999998
	.quad	0x40218e8db8bac711              # double 8.7784250000000004
	.quad	0x40112d905c033615              # double 4.2944959999999996
	.quad	0x400efe54b48d3ae7              # double 3.8741850000000002
	.quad	0x401aa3fe9fadafd1              # double 6.6601509999999999
	.quad	0x3fd14851a8694035              # double 0.27003899999999997
	.quad	0x40198bd3c3611340              # double 6.3865499999999997
	.quad	0x4022387cc7d1bb49              # double 9.1103269999999998
	.quad	0x4016c93ccd0fe8ab              # double 5.6965209999999997
	.quad	0x400dae34fc610f0f              # double 3.7100620000000002
	.quad	0x401ba64ece9a2c67              # double 6.9124100000000004
	.quad	0x3fdb1ecd4aa10e02              # double 0.42375499999999999
	.quad	0x40116ec56d5cfaad              # double 4.3581750000000001
	.quad	0x4021289d8c6d612c              # double 8.5793269999999992
	.quad	0x4010a028a1dfb939              # double 4.1564050000000003
	.quad	0x40043c77143393ab              # double 2.5295239999999999
	.quad	0x4022d9a3f4666eca              # double 9.4250790000000002
	.quad	0x4020592923e5b856              # double 8.1741419999999998
	.quad	0x4017b1049235f80a              # double 5.9228690000000004
	.quad	0x401208d5c74751ce              # double 4.5086279999999999
	.quad	0x401dba4df47f993d              # double 7.4319379999999997
	.quad	0x4006e7af20ea5b53              # double 2.863127
	.quad	0x4021e6f39085f4a1              # double 8.9510769999999997
	.quad	0x401cc1c7de5082cf              # double 7.1892389999999997
	.quad	0x400f759817b95a29              # double 3.9324189999999999
	.quad	0x40102dc0db2702a3              # double 4.0446809999999997
	.quad	0x4008c845996744b3              # double 3.0977890000000001
	.quad	0x4002f292c4934268              # double 2.3684440000000002
	.quad	0x402096e221c8a7a4              # double 8.2946939999999997
	.quad	0x401e8e8e1d6494d5              # double 7.6392139999999999
	.quad	0x400f4c061847f562              # double 3.912121
	.quad	0x4021c9dc725c3dee              # double 8.8942599999999992
	.quad	0x4008640852b4d8ba              # double 3.0488439999999999
	.quad	0x4006cfeac42e989a              # double 2.8515220000000001
	.quad	0x3ff2f300de4c5111              # double 1.1843269999999999
	.quad	0x40210c610f0e90bc              # double 8.5241779999999991
	.quad	0x401865d894812be5              # double 6.0994590000000004
	.quad	0x3febb26394face68              # double 0.86552600000000002
	.quad	0x4002f6cb5350092d              # double 2.3705050000000001
	.quad	0x3ff42616b54e2b06              # double 1.2592989999999999
	.quad	0x3ffc49731098d478              # double 1.7679320000000001
	.quad	0x4017afe08aefb2ab              # double 5.9217550000000001
	.quad	0x4000a74c8ffb8b26              # double 2.0816889999999999
	.quad	0x4005e525892684cf              # double 2.736888
	.quad	0x401d37db6e503fb3              # double 7.3045479999999996
	.quad	0x40226ec743201041              # double 9.2163640000000004
	.quad	0x4021daf6837f7be1              # double 8.9276619999999998
	.quad	0x3fee6ad9274e22a3              # double 0.95054300000000003
	.quad	0x401404801f75104d              # double 5.0043949999999997
	.quad	0x40187e7210be9425              # double 6.1234820000000001
	.quad	0x3ff8a2036006d0d5              # double 1.5395540000000001
	.quad	0x3fe347e8ccdd93c4              # double 0.60252799999999995
	.quad	0x400d4c2c5e2cdc01              # double 3.6621939999999999
	.quad	0x3fd7d4f5903a7547              # double 0.37237300000000001
	.quad	0x3ff72cf206423960              # double 1.4484729999999999
	.quad	0x40226b1960fa15db              # double 9.2091779999999996
	.quad	0x401d10b6f9fcb0c0              # double 7.2663229999999999
	.quad	0x4021192641b328b7              # double 8.5491200000000003
	.quad	0x3fee319e731d2e0e              # double 0.94355699999999998
	.quad	0x3fca8a50507a6bd7              # double 0.207346
	.quad	0x4022a07b352a8438              # double 9.3134399999999999
	.quad	0x40147e043a2163fe              # double 5.1230630000000001
	.quad	0x400ae75360d02470              # double 3.3629519999999999
	.quad	0x3ff50370cdc8754f              # double 1.31334
	.quad	0x400ecfcb4f1e4b45              # double 3.8514620000000002
	.quad	0x3fee8c08b75ea67f              # double 0.95459400000000005
	.quad	0x4022405f4a1272c9              # double 9.1257269999999995
	.quad	0x40008a2a90cd423e              # double 2.0674640000000002
	.quad	0x4013a63cb8173322              # double 4.9123409999999996
	.quad	0x40066a009f623077              # double 2.8017590000000001
	.quad	0x4004c6d0d49949e9              # double 2.5970780000000002
	.quad	0x401bbe5471715c64              # double 6.9358690000000003
	.quad	0x401f21e42e126202              # double 7.7830969999999997
	.quad	0x40103e453d20f2bf              # double 4.0608110000000002
	.quad	0x401e2b0af5fd47bf              # double 7.5420340000000001
	.quad	0x3fdfb6bb1290257d              # double 0.49552800000000002
	.quad	0x4020e1d3458cd20b              # double 8.441065
	.quad	0x401c3d3bf2f55582              # double 7.0597989999999999
	.quad	0x4016767125dd095b              # double 5.615666
	.quad	0x3fff984f4c6e6d9c              # double 1.974685
	.quad	0x4017217b0f6ad70e              # double 5.7826959999999996
	.quad	0x401ee0caa326e115              # double 7.7195229999999996
	.quad	0x401657f38c5436b9              # double 5.58589
	.quad	0x3fe34e54f7a91969              # double 0.60331199999999996
	.quad	0x3ffef9420b3d4ae4              # double 1.935854
	.quad	0x401f0373f316e371              # double 7.7533719999999997
	.quad	0x400b6dfdef8487ba              # double 3.4287070000000002
	.quad	0x401d376bc1eff9f8              # double 7.3041219999999996
	.quad	0x400d2abf76a2f48c              # double 3.6458729999999999
	.quad	0x3fed7967caea747e              # double 0.92107000000000006
	.quad	0x40224e5e02ea960b              # double 9.1530609999999992
	.quad	0x400529f7b5aea316              # double 2.645492
	.quad	0x4002417b95a29414              # double 2.2819739999999999
	.quad	0x3ff788fb86f47b67              # double 1.4709429999999999
	.quad	0x400cdfde7210be94              # double 3.6093109999999999
	.quad	0x3ff5018a43bb40b3              # double 1.3128759999999999
	.quad	0x4003574f722e1ac5              # double 2.4176319999999998
	.quad	0x400b820ab7132724              # double 3.4384969999999999
	.quad	0x402327177a7008a7              # double 9.5763510000000007
	.quad	0x4005a9e0a41a261c              # double 2.707948
	.quad	0x401dbdfefbf401c5              # double 7.435543
	.quad	0x401ad4ea4a8c154d              # double 6.7079250000000004
	.quad	0x3ff053b4b2fa93af              # double 1.0204359999999999
	.quad	0x401ea5b24e9c4546              # double 7.6618130000000004
	.quad	0x401c1c0d2c386d2f              # double 7.0273940000000001
	.quad	0x400a02edbb59ddc2              # double 3.25143
	.quad	0x3feb1ab0856e696a              # double 0.84700799999999998
	.quad	0x40145f09d8c6d613              # double 5.0928110000000002
	.quad	0x4018dab9b23dd54e              # double 6.2135990000000003
	.quad	0x3ff57cfc3f811f4f              # double 1.3430139999999999
	.quad	0x3fffb991bc558644              # double 1.9828049999999999
	.quad	0x400543a08398a655              # double 2.6580210000000002
	.quad	0x400f332f87ad080b              # double 3.8999929999999998
	.quad	0x401860281ba7fc33              # double 6.0939030000000001
	.quad	0x400c2f284167a95d              # double 3.5230260000000002
	.quad	0x401fb1ea35935fc4              # double 7.9237450000000003
	.quad	0x4013247b677f6b1a              # double 4.7856269999999999
	.quad	0x402088198f1d3ed5              # double 8.2658199999999997
	.quad	0x40110818c5c9a34d              # double 4.2579070000000003
	.quad	0x3ff87f21b3aeee95              # double 1.5310379999999999
	.quad	0x4023c3eff1950332              # double 9.8826900000000002
	.quad	0x3fe09b21c475e636              # double 0.51893699999999998
	.quad	0x3ff37e670e2c12ae              # double 1.2183600000000001
	.size	.L__constant_2500xf64, 20000

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
