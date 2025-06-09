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
	.quad	0x413ecc558bf6d331              # double 2018389.5467350001
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
	.quad	1999                            # 0x7cf
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	1999                            # 0x7cf
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
	lui	a7, %hi(.L__constant_1999xindex)
	addi	a7, a7, %lo(.L__constant_1999xindex)
	lui	t0, %hi(.L__constant_1999xf64)
	addi	t0, t0, %lo(.L__constant_1999xf64)
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
	lui	a7, %hi(.L__constant_1999xindex_0)
	addi	a7, a7, %lo(.L__constant_1999xindex_0)
	lui	t0, %hi(.L__constant_1999xf64_0)
	addi	t0, t0, %lo(.L__constant_1999xf64_0)
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
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_1999xindex_0,@object # @__constant_1999xindex_0
	.p2align	6, 0x0
.L__constant_1999xindex_0:
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
	.size	.L__constant_1999xindex_0, 15992

	.type	.L__constant_1999xf64_0,@object # @__constant_1999xf64_0
	.p2align	6, 0x0
.L__constant_1999xf64_0:
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
	.size	.L__constant_1999xf64_0, 15992

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	37                              # 0x25
	.quad	37                              # 0x25
	.quad	67                              # 0x43
	.quad	67                              # 0x43
	.quad	102                             # 0x66
	.quad	102                             # 0x66
	.quad	138                             # 0x8a
	.quad	138                             # 0x8a
	.quad	180                             # 0xb4
	.quad	180                             # 0xb4
	.quad	223                             # 0xdf
	.quad	223                             # 0xdf
	.quad	259                             # 0x103
	.quad	259                             # 0x103
	.quad	294                             # 0x126
	.quad	294                             # 0x126
	.quad	335                             # 0x14f
	.quad	335                             # 0x14f
	.quad	375                             # 0x177
	.quad	375                             # 0x177
	.quad	420                             # 0x1a4
	.quad	420                             # 0x1a4
	.quad	463                             # 0x1cf
	.quad	463                             # 0x1cf
	.quad	502                             # 0x1f6
	.quad	502                             # 0x1f6
	.quad	542                             # 0x21e
	.quad	542                             # 0x21e
	.quad	586                             # 0x24a
	.quad	586                             # 0x24a
	.quad	623                             # 0x26f
	.quad	623                             # 0x26f
	.quad	657                             # 0x291
	.quad	657                             # 0x291
	.quad	695                             # 0x2b7
	.quad	695                             # 0x2b7
	.quad	734                             # 0x2de
	.quad	734                             # 0x2de
	.quad	773                             # 0x305
	.quad	773                             # 0x305
	.quad	810                             # 0x32a
	.quad	810                             # 0x32a
	.quad	850                             # 0x352
	.quad	850                             # 0x352
	.quad	891                             # 0x37b
	.quad	891                             # 0x37b
	.quad	933                             # 0x3a5
	.quad	933                             # 0x3a5
	.quad	977                             # 0x3d1
	.quad	977                             # 0x3d1
	.quad	1020                            # 0x3fc
	.quad	1020                            # 0x3fc
	.quad	1060                            # 0x424
	.quad	1060                            # 0x424
	.quad	1101                            # 0x44d
	.quad	1101                            # 0x44d
	.quad	1141                            # 0x475
	.quad	1141                            # 0x475
	.quad	1184                            # 0x4a0
	.quad	1184                            # 0x4a0
	.quad	1227                            # 0x4cb
	.quad	1227                            # 0x4cb
	.quad	1267                            # 0x4f3
	.quad	1267                            # 0x4f3
	.quad	1309                            # 0x51d
	.quad	1309                            # 0x51d
	.quad	1350                            # 0x546
	.quad	1350                            # 0x546
	.quad	1389                            # 0x56d
	.quad	1389                            # 0x56d
	.quad	1429                            # 0x595
	.quad	1429                            # 0x595
	.quad	1471                            # 0x5bf
	.quad	1471                            # 0x5bf
	.quad	1502                            # 0x5de
	.quad	1502                            # 0x5de
	.quad	1541                            # 0x605
	.quad	1541                            # 0x605
	.quad	1580                            # 0x62c
	.quad	1580                            # 0x62c
	.quad	1619                            # 0x653
	.quad	1619                            # 0x653
	.quad	1662                            # 0x67e
	.quad	1662                            # 0x67e
	.quad	1699                            # 0x6a3
	.quad	1699                            # 0x6a3
	.quad	1742                            # 0x6ce
	.quad	1742                            # 0x6ce
	.quad	1784                            # 0x6f8
	.quad	1784                            # 0x6f8
	.quad	1825                            # 0x721
	.quad	1825                            # 0x721
	.quad	1869                            # 0x74d
	.quad	1869                            # 0x74d
	.quad	1914                            # 0x77a
	.quad	1914                            # 0x77a
	.quad	1955                            # 0x7a3
	.quad	1955                            # 0x7a3
	.quad	1999                            # 0x7cf
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
	.quad	0                               # 0x0
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
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	6                               # 0x6
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
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
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
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
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
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
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
	.quad	70                              # 0x46
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
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
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
	.quad	96                              # 0x60
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
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
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
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
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
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
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
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
	.quad	76                              # 0x4c
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
	.quad	6                               # 0x6
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
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
	.quad	14                              # 0xe
	.quad	16                              # 0x10
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
	.quad	46                              # 0x2e
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
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
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
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
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
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
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
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
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
	.quad	26                              # 0x1a
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
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
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
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	48                              # 0x30
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
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
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
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
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.size	.L__constant_1999xindex, 15992

	.type	.L__constant_1999xf64,@object   # @__constant_1999xf64
	.p2align	6, 0x0
.L__constant_1999xf64:
	.quad	0x3fd3ec918e325d4a              # double 0.31131399999999998
	.quad	0x40137a35d67ba238              # double 4.8693460000000002
	.quad	0x40092bb7739f340d              # double 3.1463459999999999
	.quad	0x40076756861e9292              # double 2.9254579999999999
	.quad	0x402342c9081c2e34              # double 9.6304400000000001
	.quad	0x401c2c886162f167              # double 7.0434890000000001
	.quad	0x40055ab3aabcd78c              # double 2.6692879999999999
	.quad	0x4017432c1f42bb66              # double 5.8155979999999996
	.quad	0x401d39068986fcdf              # double 7.3056890000000001
	.quad	0x401f7327674d1633              # double 7.8624549999999997
	.quad	0x4022c839042d8c2a              # double 9.3910599999999995
	.quad	0x40017c43b2dd377e              # double 2.185676
	.quad	0x3ff2da49c2c1b110              # double 1.178293
	.quad	0x401e011622813448              # double 7.5010609999999999
	.quad	0x4002fb3e9a6f826f              # double 2.3726780000000001
	.quad	0x3feb60f7fcfc3f81              # double 0.85558699999999999
	.quad	0x401ac5c0b9991362              # double 6.6931180000000001
	.quad	0x3ffcd23810e88590              # double 1.801323
	.quad	0x3fea2bde3fbbd7b2              # double 0.817855
	.quad	0x4019718655193709              # double 6.3608640000000003
	.quad	0x402145a469d7342f              # double 8.6360200000000003
	.quad	0x40211b03e20ccff2              # double 8.5527639999999998
	.quad	0x4019ef90d9d7774b              # double 6.4839510000000002
	.quad	0x40141a7008a697af              # double 5.0258180000000001
	.quad	0x401e8a558ea7ce10              # double 7.6350920000000002
	.quad	0x40040a4f440af1cc              # double 2.5050340000000002
	.quad	0x4014008398a65493              # double 5.000502
	.quad	0x40203b05100a393f              # double 8.1152730000000002
	.quad	0x401356262cba732e              # double 4.83413
	.quad	0x4018c5e310dbf056              # double 6.1932489999999998
	.quad	0x400f701eabbcb1cd              # double 3.9297460000000002
	.quad	0x40230db4aa9717df              # double 9.5267689999999998
	.quad	0x3fea328d8665e02f              # double 0.81867100000000004
	.quad	0x4022f0157eed45e9              # double 9.4689139999999998
	.quad	0x4007e79d4d834092              # double 2.9880930000000001
	.quad	0x402380370cdc8755              # double 9.75042
	.quad	0x40159b7a1c25d074              # double 5.4018329999999999
	.quad	0x401708305d95dd4c              # double 5.7579969999999996
	.quad	0x3fd78661ae70c133              # double 0.36757699999999999
	.quad	0x401e790a7829068a              # double 7.6182040000000004
	.quad	0x40212539b888722a              # double 8.5727060000000002
	.quad	0x401e55464dc22ab2              # double 7.5832759999999997
	.quad	0x4010bd0aed99cbef              # double 4.1846120000000004
	.quad	0x3fdb9f98b71b8aa0              # double 0.431616
	.quad	0x400fbd4306e5cd4f              # double 3.9674130000000001
	.quad	0x401bf7136a400fbb              # double 6.9912850000000004
	.quad	0x40211aaac1094a2c              # double 8.5520840000000006
	.quad	0x40226a708ede54b5              # double 9.2078900000000008
	.quad	0x3fe47e62dc6e2a80              # double 0.640428
	.quad	0x3fdbb545c78a6dad              # double 0.43293900000000002
	.quad	0x401684b1ab0856e7              # double 5.6295840000000004
	.quad	0x40205cc07aaef2c7              # double 8.1811559999999997
	.quad	0x40237e94ab1d4f9c              # double 9.7472279999999997
	.quad	0x4013fa8cdea033e8              # double 4.9946780000000004
	.quad	0x400f993c46d82ba6              # double 3.9498220000000002
	.quad	0x401df31162281345              # double 7.4873710000000004
	.quad	0x4020863beec3979a              # double 8.2621760000000002
	.quad	0x4010cd045fe11127              # double 4.2002119999999996
	.quad	0x400bfc01a36e2eb2              # double 3.4980500000000001
	.quad	0x4011eee17a02fb5d              # double 4.483282
	.quad	0x401b04f5903a7547              # double 6.7548430000000002
	.quad	0x4022db9d3cbc48f1              # double 9.4289339999999999
	.quad	0x401f9dcd7060bb2c              # double 7.9041040000000002
	.quad	0x40114cbc05d52c17              # double 4.3249360000000001
	.quad	0x4011a8661ae70c13              # double 4.4144519999999998
	.quad	0x401c7c6d1e108c3f              # double 7.1215099999999998
	.quad	0x4018ba7503b81b65              # double 6.1820870000000001
	.quad	0x401ceab430f49492              # double 7.229203
	.quad	0x3fd4d1b2e59af9ec              # double 0.325299
	.quad	0x40212b252ce032db              # double 8.5842679999999998
	.quad	0x401bb7e0ef99806f              # double 6.9295689999999999
	.quad	0x4010e60e94ee392e              # double 4.2246649999999999
	.quad	0x4003073365881a15              # double 2.3785159999999999
	.quad	0x4019a8bda9435ac9              # double 6.4147860000000003
	.quad	0x3ff069131ec0b567              # double 1.0256529999999999
	.quad	0x40064e74f2f123c4              # double 2.7883089999999999
	.quad	0x4022c7603925bb7b              # double 9.3894059999999992
	.quad	0x4020aab8c75c4a84              # double 8.3334410000000005
	.quad	0x4003bc829cfdd228              # double 2.4670459999999999
	.quad	0x400903c536d655e3              # double 3.1268410000000002
	.quad	0x4022f7a48301a7a0              # double 9.4836770000000001
	.quad	0x40205d2e94680171              # double 8.1819959999999998
	.quad	0x4021cd6eac860568              # double 8.9012349999999998
	.quad	0x4014a9f383f0bae9              # double 5.1659680000000003
	.quad	0x4003d2e2fbe33acd              # double 2.4779719999999998
	.quad	0x3ff5a86e7e62dc6e              # double 1.353621
	.quad	0x400d7c2a02320968              # double 3.6856270000000002
	.quad	0x4019b7fc7607c41a              # double 6.4296740000000003
	.quad	0x400282aa9f7b5aea              # double 2.3138019999999999
	.quad	0x4022c73e0370cdc8              # double 9.3891449999999991
	.quad	0x40045817b95a2941              # double 2.5430139999999999
	.quad	0x4016d96fa82e87d3              # double 5.7123400000000002
	.quad	0x4019cfadf2ecf206              # double 6.4528119999999998
	.quad	0x40123705425f2021              # double 4.553731
	.quad	0x400f0bed740c4157              # double 3.8808240000000001
	.quad	0x3fdf1da7b0b39192              # double 0.48618499999999998
	.quad	0x3fe464020817fc76              # double 0.637208
	.quad	0x4021c7ac81d3aa37              # double 8.8899880000000007
	.quad	0x3fee4cb7d41743e9              # double 0.94686499999999996
	.quad	0x40115aa433508f65              # double 4.3385170000000004
	.quad	0x4006f34e7685985b              # double 2.8688020000000001
	.quad	0x400cc84f8f8a4c1f              # double 3.5978080000000001
	.quad	0x4020c9ccd9620685              # double 8.3941409999999994
	.quad	0x400dabd76ee73e68              # double 3.708907
	.quad	0x40034bd5dc400757              # double 2.412029
	.quad	0x401dfd3b29a1b9fa              # double 7.4972960000000004
	.quad	0x401cce7a311e85fd              # double 7.201638
	.quad	0x400e35cb790fb656              # double 3.7762669999999998
	.quad	0x4022af58e219652c              # double 9.3424750000000003
	.quad	0x40009af859429175              # double 2.075669
	.quad	0x3fe183ab862b27cc              # double 0.547323
	.quad	0x40214afcce1c5825              # double 8.6464599999999994
	.quad	0x400cdbca1059ea57              # double 3.6073189999999999
	.quad	0x3ff61a16616b54e3              # double 1.3813690000000001
	.quad	0x4014b1e0c5a8155d              # double 5.1737089999999997
	.quad	0x3ff6dca7d6733ebc              # double 1.428871
	.quad	0x3ff98282c6ef3d3a              # double 1.594363
	.quad	0x4020ca62456f75da              # double 8.3952810000000007
	.quad	0x4004595dd4c76d11              # double 2.5436359999999998
	.quad	0x40001564b662fdfc              # double 2.010446
	.quad	0x400112b1b36bd2b7              # double 2.134128
	.quad	0x401c19f23465625a              # double 7.0253379999999996
	.quad	0x402044b252ce032e              # double 8.1341730000000005
	.quad	0x401151d6494d50ec              # double 4.3299190000000003
	.quad	0x40237fe974a3400c              # double 9.7498280000000008
	.quad	0x3fd6f1ae2da554b9              # double 0.35850100000000001
	.quad	0x3fc0508b32ce8965              # double 0.12745799999999999
	.quad	0x401472b94d940789              # double 5.1120349999999997
	.quad	0x402026429e0a41a2              # double 8.0747269999999993
	.quad	0x4021a692b3cc4ac7              # double 8.8253380000000003
	.quad	0x4016e87d2c7b890d              # double 5.7270399999999997
	.quad	0x4018d4057082491b              # double 6.207052
	.quad	0x402179b56323bbc7              # double 8.7377120000000001
	.quad	0x4011cf93bc0a06ea              # double 4.452712
	.quad	0x3fef71476af89c5e              # double 0.98257799999999995
	.quad	0x3ff71bc01a36e2eb              # double 1.444275
	.quad	0x401523632c1f42bb              # double 5.2845579999999996
	.quad	0x4012723033a4723b              # double 4.6115120000000003
	.quad	0x40067b84db9c7369              # double 2.8103120000000001
	.quad	0x401f73b46fdeb52d              # double 7.8629930000000003
	.quad	0x400d4555c52e72da              # double 3.658855
	.quad	0x400e4670e2c12ad8              # double 3.784395
	.quad	0x4014d5f4e4430b18              # double 5.2089420000000004
	.quad	0x3ffb3ac4f7ec3548              # double 1.701848
	.quad	0x40085926c7eae5bd              # double 3.0435310000000002
	.quad	0x400e8ac215b9a5a9              # double 3.8177530000000002
	.quad	0x4013e62ed352220c              # double 4.9747880000000002
	.quad	0x400b949d7ba6698c              # double 3.4475660000000001
	.quad	0x4023f40b13597918              # double 9.9766469999999998
	.quad	0x3fd723a29c779a6b              # double 0.36154999999999998
	.quad	0x3fe66b52c9d16fca              # double 0.70060100000000003
	.quad	0x401656b9c304ccee              # double 5.5846929999999997
	.quad	0x3fe1fa00e27e0efa              # double 0.56176800000000005
	.quad	0x401e5e0f7fcfc3f8              # double 7.5918559999999999
	.quad	0x40118470a808c826              # double 4.3793360000000003
	.quad	0x40100a8826aa8eb4              # double 4.0102849999999997
	.quad	0x400e90364388ebcc              # double 3.8204159999999998
	.quad	0x3ff779ef0f16f438              # double 1.4672689999999999
	.quad	0x401b88b0d0edc3bd              # double 6.8834869999999997
	.quad	0x3fed3ff69014b59a              # double 0.91405800000000004
	.quad	0x3ff9f225b749adc9              # double 1.621618
	.quad	0x400700c4156e264e              # double 2.8753739999999999
	.quad	0x3fd136d22424a277              # double 0.26897100000000002
	.quad	0x401f784db9c7368b              # double 7.8674840000000001
	.quad	0x4016159ee88df373              # double 5.5211139999999999
	.quad	0x40204798b71b8aa0              # double 8.139837
	.quad	0x400318dde7a743a6              # double 2.3871419999999999
	.quad	0x400982fe82517e78              # double 3.1889620000000001
	.quad	0x400b33868fd199bb              # double 3.4001589999999999
	.quad	0x401ad9107faa044b              # double 6.7119770000000001
	.quad	0x4014696787ce95fb              # double 5.1029340000000003
	.quad	0x401c3fb6134ce3de              # double 7.0622179999999997
	.quad	0x3ffafac81d3aa36a              # double 1.686226
	.quad	0x402145a9a8049668              # double 8.6360600000000005
	.quad	0x400b2f5ec80c73ac              # double 3.3981300000000001
	.quad	0x4015b0303c07ee0b              # double 5.422059
	.quad	0x4018731bde82d7b6              # double 6.1124109999999998
	.quad	0x401bfd8904f6dfc6              # double 6.9975930000000002
	.quad	0x4021f7c5692b3cc5              # double 8.9839280000000006
	.quad	0x3ffbe3a5c1c6088d              # double 1.7430779999999999
	.quad	0x40101126634117f8              # double 4.0167479999999998
	.quad	0x400bfb506dd69d30              # double 3.4977119999999999
	.quad	0x3fe4aa5e785b5b70              # double 0.64579699999999995
	.quad	0x401d97a99fa11a97              # double 7.3981079999999997
	.quad	0x40035e61cffeb075              # double 2.4210850000000002
	.quad	0x400ccfb00bcbe61d              # double 3.60141
	.quad	0x4010f4bdba0a5269              # double 4.2390049999999997
	.quad	0x3fc61b1960fa15db              # double 0.17270199999999999
	.quad	0x401e64c87980f55e              # double 7.5984210000000001
	.quad	0x4022366d9be4cd75              # double 9.1063050000000008
	.quad	0x3fcc57afea3df6dc              # double 0.22142600000000001
	.quad	0x3ffc56f86a098916              # double 1.7712330000000001
	.quad	0x401a35cbbc2b94d9              # double 6.5525349999999998
	.quad	0x4018780baa582dbe              # double 6.1172319999999996
	.quad	0x400f67ac81d3aa37              # double 3.9256220000000002
	.quad	0x401fd513f8db4891              # double 7.9580840000000003
	.quad	0x4023f653c9abb01d              # double 9.9811080000000007
	.quad	0x400b31bc55864452              # double 3.3992849999999999
	.quad	0x3fc395f676ea4229              # double 0.15301400000000001
	.quad	0x40194433d6c72192              # double 6.3166039999999999
	.quad	0x401d25aaf78feef6              # double 7.2867850000000001
	.quad	0x40126bfe3b03e20d              # double 4.6054620000000002
	.quad	0x402308ee6b8305d9              # double 9.5174439999999993
	.quad	0x4015bdd3fe1975f3              # double 5.4353790000000002
	.quad	0x400800913a4f8727              # double 3.0002770000000001
	.quad	0x401c339713ad5bee              # double 7.0503809999999998
	.quad	0x400fdbecaab8a5ce              # double 3.9823849999999998
	.quad	0x40033fae3608d089              # double 2.406094
	.quad	0x3fe91ae2da554b8c              # double 0.784532
	.quad	0x3ff5cafc47e49b20              # double 1.3620570000000001
	.quad	0x40130b9b23dd54da              # double 4.7613339999999997
	.quad	0x401d318bd66277c4              # double 7.2983849999999997
	.quad	0x400da3ac929aa1d7              # double 3.7049189999999999
	.quad	0x40049585be1a8262              # double 2.5730089999999999
	.quad	0x400381dfb9389b52              # double 2.438415
	.quad	0x400bc534373f316e              # double 3.4712909999999999
	.quad	0x401744e4430b178b              # double 5.8172769999999998
	.quad	0x3fd686f049a9973e              # double 0.35198600000000002
	.quad	0x40143b2b3461309c              # double 5.0577819999999996
	.quad	0x401fd2f0e0a84be4              # double 7.955997
	.quad	0x3fed9e7d9988d2a2              # double 0.925597
	.quad	0x400590ee49f51698              # double 2.695767
	.quad	0x4016acf5b1c86488              # double 5.6689059999999998
	.quad	0x400f4053e2d6238e              # double 3.9064100000000002
	.quad	0x40215e65bea0ba1f              # double 8.6843699999999995
	.quad	0x40208ff7164c729f              # double 8.2811819999999994
	.quad	0x401c97b634dad320              # double 7.1481560000000002
	.quad	0x3fff711a543f1c76              # double 1.9651130000000001
	.quad	0x3ffaea854477ff15              # double 1.682256
	.quad	0x3ff9b7b17ce52ded              # double 1.6073470000000001
	.quad	0x402158aefb2aae29              # double 8.6732099999999992
	.quad	0x401e422c881e4713              # double 7.564623
	.quad	0x4022935696e58a33              # double 9.2877700000000001
	.quad	0x400881bb05faebc4              # double 3.063345
	.quad	0x401269a9da597d4a              # double 4.6031870000000001
	.quad	0x401e9e85b9e8c47a              # double 7.6548069999999999
	.quad	0x4023d9cf7878b7a2              # double 9.9254110000000004
	.quad	0x400e23211cb039ef              # double 3.767153
	.quad	0x3fdef23465625a68              # double 0.48353299999999999
	.quad	0x40090b441bb8c32b              # double 3.1305010000000002
	.quad	0x4019c685db76b3bc              # double 6.4438700000000004
	.quad	0x401f10114d2f5dbc              # double 7.7656910000000003
	.quad	0x40166a05dd8f92b0              # double 5.6035380000000004
	.quad	0x4021d2b020c49ba6              # double 8.9115000000000002
	.quad	0x400d795aaf78feef              # double 3.6842549999999998
	.quad	0x401735ce5b4245f6              # double 5.8025450000000003
	.quad	0x401ae68d759ee88e              # double 6.725149
	.quad	0x401ca7b6bb129025              # double 7.1637829999999996
	.quad	0x401e7c3116228134              # double 7.6212809999999998
	.quad	0x401f653cddd6e04c              # double 7.848865
	.quad	0x40239e9e3c968944              # double 9.8098010000000002
	.quad	0x4018088f861a60d4              # double 6.0083599999999997
	.quad	0x4014652ce032db1f              # double 5.0988040000000003
	.quad	0x4017bc1b54195cc8              # double 5.9336979999999997
	.quad	0x401ac61b2a27f1b7              # double 6.6934630000000004
	.quad	0x401ff00de4c51117              # double 7.9844280000000003
	.quad	0x4015cf74cd31769b              # double 5.4525940000000004
	.quad	0x40124bbecaab8a5d              # double 4.5739700000000001
	.quad	0x401cefac1d29dc72              # double 7.2340549999999997
	.quad	0x400ae2656abde3fc              # double 3.3605450000000001
	.quad	0x401789d883ba3444              # double 5.8846150000000002
	.quad	0x40200d4fbdad7519              # double 8.0259990000000005
	.quad	0x3ff972702a3486f0              # double 1.5904389999999999
	.quad	0x3fea817763e4abe7              # double 0.82830400000000004
	.quad	0x4002324bfd2e9468              # double 2.274559
	.quad	0x3fc11bef49cf56eb              # double 0.13366500000000001
	.quad	0x4023b74e22a2c237              # double 9.8580179999999995
	.quad	0x4009804189374bc7              # double 3.1876250000000002
	.quad	0x40109b4e9813879c              # double 4.1516669999999998
	.quad	0x40215f05857afea4              # double 8.6855890000000002
	.quad	0x40216dc8fb86f47b              # double 8.7144239999999993
	.quad	0x401592dd7a99fa12              # double 5.3934230000000003
	.quad	0x400c18ae31d712a1              # double 3.512051
	.quad	0x40077740c4156e26              # double 2.9332289999999999
	.quad	0x4020f6006d0d4995              # double 8.4804720000000007
	.quad	0x4022d2b0856e696a              # double 9.4115029999999997
	.quad	0x3ffbf295e9e1b08a              # double 1.7467250000000001
	.quad	0x40154d1c3ac929aa              # double 5.3253029999999999
	.quad	0x401f410fd7e45804              # double 7.8135370000000002
	.quad	0x4012322ab25b317f              # double 4.548991
	.quad	0x3fd430be0ded288d              # double 0.31547500000000001
	.quad	0x40186262456f75da              # double 6.0960780000000003
	.quad	0x40189b56b8737974              # double 6.1516979999999997
	.quad	0x401adfdda8bd230c              # double 6.7186190000000003
	.quad	0x402257294dd72368              # double 9.1702370000000001
	.quad	0x40147d805e5f30e8              # double 5.12256
	.quad	0x401169d2bf551505              # double 4.3533429999999997
	.quad	0x401a3fdcdf698783              # double 6.5623659999999999
	.quad	0x401cc98f1d3ed528              # double 7.1968350000000001
	.quad	0x4000fa6ce358298d              # double 2.1222780000000001
	.quad	0x4000261a60d4562e              # double 2.018605
	.quad	0x401b4b827fa1a0cf              # double 6.8237399999999999
	.quad	0x401ba7c5ef62f9ca              # double 6.9138409999999997
	.quad	0x40220bc05d52c16e              # double 9.0229520000000001
	.quad	0x40055b089a027525              # double 2.6694499999999999
	.quad	0x400e1024f6598e11              # double 3.7578830000000001
	.quad	0x401308c08b75ea68              # double 4.7585470000000001
	.quad	0x40176ddb1209edc0              # double 5.8572810000000004
	.quad	0x4016c2d87f88765c              # double 5.6902790000000003
	.quad	0x3ff9dffa3b9ae0c1              # double 1.6171819999999999
	.quad	0x401d61f6cacd184c              # double 7.3456679999999999
	.quad	0x400b7562174c4ce0              # double 3.4323160000000001
	.quad	0x401beb54e2b063e0              # double 6.9798159999999996
	.quad	0x3ff9141e9af5ba2c              # double 1.567412
	.quad	0x401afb6523704791              # double 6.7455030000000002
	.quad	0x401a29fdbd2fa0d7              # double 6.5410069999999996
	.quad	0x401faecc3e3193f7              # double 7.9207010000000002
	.quad	0x3ffa9b1fab96f21f              # double 1.6628719999999999
	.quad	0x401ad91c8eabffce              # double 6.7120230000000003
	.quad	0x401d895f676ea423              # double 7.3841530000000004
	.quad	0x401a84102ff8ec10              # double 6.6289680000000004
	.quad	0x400dc488c60cbf2b              # double 3.7209639999999999
	.quad	0x4020af8df7a4e7ab              # double 8.3428799999999992
	.quad	0x4007d3ab430f4949              # double 2.9783539999999999
	.quad	0x402263736cdf266c              # double 9.1942400000000006
	.quad	0x4019129f16b11c6d              # double 6.2681849999999999
	.quad	0x3ff98fb224aada34              # double 1.5975820000000001
	.quad	0x401886fc58ab92c0              # double 6.1318219999999997
	.quad	0x4017337f38c5436c              # double 5.8002900000000004
	.quad	0x3ffd4980b242070c              # double 1.8304450000000001
	.quad	0x3ffdcd9c6b053198              # double 1.862698
	.quad	0x4003dd46b26bf877              # double 2.4830450000000002
	.quad	0x40131c8d9f9053a0              # double 4.7778840000000002
	.quad	0x402103ae03b3e9a7              # double 8.5071870000000001
	.quad	0x4013c78ee2867275              # double 4.9448809999999996
	.quad	0x401b7a1511dffc54              # double 6.8692209999999996
	.quad	0x401152ec6bce8534              # double 4.3309800000000003
	.quad	0x4003a0f0a5efe932              # double 2.4535840000000002
	.quad	0x4015fba55d1c3ac9              # double 5.4957479999999999
	.quad	0x4021f4a01abd1aa8              # double 8.9777839999999998
	.quad	0x3ff738c0053e2d62              # double 1.451355
	.quad	0x4023ffcb923a29c7              # double 9.9995999999999991
	.quad	0x40213ba71151611c              # double 8.6165090000000006
	.quad	0x3fd6813cab81f96a              # double 0.35163800000000001
	.quad	0x4019d81ba7fc32ec              # double 6.4610430000000001
	.quad	0x401c355b4677b396              # double 7.0521060000000002
	.quad	0x40196996312f4cf5              # double 6.3531120000000003
	.quad	0x400a95fc3b4f6167              # double 3.3232349999999999
	.quad	0x3fc6b6ae7d566cf4              # double 0.17745
	.quad	0x4015a8fb00bcbe62              # double 5.4150200000000002
	.quad	0x3ffb7bf727136a40              # double 1.717765
	.quad	0x4002f3882278d0cc              # double 2.3689119999999999
	.quad	0x4002c0064a9cdc44              # double 2.3437619999999999
	.quad	0x400476451b93037d              # double 2.5577489999999998
	.quad	0x4020bfddebd9018e              # double 8.3747399999999992
	.quad	0x4016a7f77af64064              # double 5.6640300000000003
	.quad	0x40228ec2480e8c8b              # double 9.2788260000000005
	.quad	0x40134e22a2c23748              # double 4.8263040000000004
	.quad	0x401f104c05921038              # double 7.7659149999999996
	.quad	0x401acaf1455219a8              # double 6.6981859999999998
	.quad	0x400081d8e8640208              # double 2.063402
	.quad	0x400764873365881a              # double 2.924086
	.quad	0x4020ae145953586d              # double 8.3399990000000006
	.quad	0x400c0da122fad6cb              # double 3.5066549999999999
	.quad	0x401ac9ecf6380022              # double 6.6971930000000004
	.quad	0x401b5a24cc6822ff              # double 6.838031
	.quad	0x4022e4dd0d8cb07d              # double 9.4469989999999999
	.quad	0x4012a442c7fbacb4              # double 4.6604109999999999
	.quad	0x4018aece5710880e              # double 6.1707090000000004
	.quad	0x40151d9018e75793              # double 5.2788700000000004
	.quad	0x40183233df2a9d62              # double 6.0490259999999996
	.quad	0x4013ec6c54bcf0b7              # double 4.9808820000000003
	.quad	0x4000a3efae7924af              # double 2.080047
	.quad	0x401ce06705c896dd              # double 7.2191429999999999
	.quad	0x3fa55410f94c8798              # double 0.041657
	.quad	0x401120a17b0f6ad7              # double 4.2818659999999999
	.quad	0x401b07a20578e5c5              # double 6.7574540000000001
	.quad	0x400945c4651f3e8a              # double 3.1590660000000002
	.quad	0x40172060780fdc16              # double 5.7816179999999999
	.quad	0x4018ff9e3864cb5c              # double 6.2496270000000003
	.quad	0x40239c6bce8533b1              # double 9.8055099999999999
	.quad	0x400efd2f1a9fbe77              # double 3.8736250000000001
	.quad	0x400be9a88ace24bc              # double 3.4890910000000002
	.quad	0x40070f41f212d773              # double 2.88245
	.quad	0x4015eda33bd9cae2              # double 5.4820679999999999
	.quad	0x40234577318fc505              # double 9.6356750000000008
	.quad	0x40029892684cf074              # double 2.3244980000000002
	.quad	0x400dbf6fd21ff2e5              # double 3.7184750000000002
	.quad	0x402065af294dd723              # double 8.1986019999999993
	.quad	0x4002fc243dccea29              # double 2.373116
	.quad	0x4023814f483cafb4              # double 9.7525580000000005
	.quad	0x4013d194c0160525              # double 4.954669
	.quad	0x40104d755bccaf71              # double 4.0756430000000003
	.quad	0x402090f2becedd48              # double 8.2831019999999995
	.quad	0x40019cd035371972              # double 2.2015690000000001
	.quad	0x3ff26b702602c908              # double 1.15123
	.quad	0x3fd99ae4f3343fa3              # double 0.40007900000000002
	.quad	0x401465d31337eb29              # double 5.0994380000000001
	.quad	0x401c48fa376922d9              # double 7.0712669999999997
	.quad	0x401cf38de6ddf00b              # double 7.2378460000000002
	.quad	0x402062d688377186              # double 8.1930429999999994
	.quad	0x3ffa60029f16b11c              # double 1.6484399999999999
	.quad	0x4021bee86c6583e8              # double 8.8728669999999994
	.quad	0x3fe2b03e20ccff22              # double 0.58401400000000003
	.quad	0x4023855757d5a9eb              # double 9.7604319999999997
	.quad	0x400d81da7b0b3919              # double 3.6884049999999999
	.quad	0x401f9094a2b9d3cc              # double 7.8911920000000002
	.quad	0x4020ae19da9c9928              # double 8.3400409999999994
	.quad	0x3fffd27913e81451              # double 1.988885
	.quad	0x3fe9ee30caa326e1              # double 0.81032599999999999
	.quad	0x401b0a8c154c985f              # double 6.7603
	.quad	0x4021c95d91ab8e8f              # double 8.8932920000000006
	.quad	0x40224c27631b584b              # double 9.1487379999999998
	.quad	0x4001e1f212d77319              # double 2.235325
	.quad	0x4011a6277c45cbbc              # double 4.4122599999999998
	.quad	0x4015930f49491f2e              # double 5.3936130000000002
	.quad	0x40223ee7c49fd7a1              # double 9.1228619999999996
	.quad	0x401ec74cd31769a9              # double 7.6946289999999999
	.quad	0x40023782d38476f3              # double 2.2771050000000002
	.quad	0x4023c14141e9af5c              # double 9.8774510000000006
	.quad	0x4017939abf338716              # double 5.894145
	.quad	0x40198db61bb05faf              # double 6.3883900000000002
	.quad	0x40230536f7e3d1cc              # double 9.5101849999999998
	.quad	0x400abca42aed1394              # double 3.3421099999999999
	.quad	0x4006eedd48451330              # double 2.8666330000000002
	.quad	0x3ffcaf86a098915c              # double 1.792853
	.quad	0x4017117a02fb5d03              # double 5.7670669999999999
	.quad	0x3fb371b8aa00192a              # double 0.075953999999999994
	.quad	0x400fb9ab6d00b45b              # double 3.965659
	.quad	0x40012fda836eb4ea              # double 2.1483660000000002
	.quad	0x3ff91e33269df97b              # double 1.5698730000000001
	.quad	0x3fe50a58b3f63c32              # double 0.65751300000000001
	.quad	0x3fd4df4c2b51bd62              # double 0.326129
	.quad	0x401953a0c6b484d7              # double 6.3316679999999996
	.quad	0x40201be1650a45d4              # double 8.0544539999999997
	.quad	0x402322f01754b05b              # double 9.5682379999999991
	.quad	0x40231c549b62c775              # double 9.5553329999999991
	.quad	0x3fd5c408d8ec95c0              # double 0.34009
	.quad	0x40208ab841248d7e              # double 8.270937
	.quad	0x401b1be2b4959e62              # double 6.7772319999999997
	.quad	0x40206bbf50e34763              # double 8.2104440000000007
	.quad	0x401af0c804102ff9              # double 6.7351380000000001
	.quad	0x40180d801b435265              # double 6.0131839999999999
	.quad	0x3fef61d4306e5cd5              # double 0.980692
	.quad	0x3fd2bff47735c183              # double 0.292966
	.quad	0x4019da9003eea20a              # double 6.4634400000000003
	.quad	0x401acdc768dfbd6a              # double 6.7009559999999997
	.quad	0x3feb70b8cfbfc654              # double 0.85750999999999999
	.quad	0x4010e21187e7c06e              # double 4.2207699999999999
	.quad	0x3ff4d0f6273929ed              # double 1.301016
	.quad	0x4002f851eb851eb8              # double 2.3712499999999999
	.quad	0x4021f4054ef459da              # double 8.9766030000000008
	.quad	0x3ffb0536d655e28b              # double 1.6887730000000001
	.quad	0x3ffe69b5a63f9a4a              # double 1.9008080000000001
	.quad	0x3ffc8ac3a860dcba              # double 1.7838780000000001
	.quad	0x401e3cf5b1c86488              # double 7.5595309999999997
	.quad	0x400f37f0ed3d859d              # double 3.9023150000000002
	.quad	0x4017c1040bfe3b04              # double 5.9384920000000001
	.quad	0x400b71ab8e8ea39c              # double 3.4305029999999999
	.quad	0x3fede4f3343fa2ad              # double 0.93419799999999997
	.quad	0x400ebad6451b9303              # double 3.8412289999999998
	.quad	0x40163341e14bdfd2              # double 5.5500559999999997
	.quad	0x4022a00c73abc947              # double 9.312595
	.quad	0x401c777ab324851b              # double 7.1166790000000004
	.quad	0x3ff7cef0281ba7fc              # double 1.488022
	.quad	0x401b8ed06fef7c24              # double 6.8894669999999998
	.quad	0x3ff0eeaa6d267408              # double 1.058268
	.quad	0x3ffbf122b7baecd0              # double 1.7463709999999999
	.quad	0x400b3d790752da98              # double 3.4050159999999998
	.quad	0x4014aa7829068987              # double 5.166474
	.quad	0x400c3a0168b5cbff              # double 3.5283229999999999
	.quad	0x400b799e518f3ecd              # double 3.4343840000000001
	.quad	0x4013180fdc1615ec              # double 4.773498
	.quad	0x4020bb8950763a19              # double 8.366282
	.quad	0x3ffe2bfca85caafc              # double 1.8857390000000001
	.quad	0x40213606748e4756              # double 8.605518
	.quad	0x4004cb1cc9646280              # double 2.5991759999999999
	.quad	0x40051f583a53b8e5              # double 2.6403050000000001
	.quad	0x3fd6a81dc0db2703              # double 0.35401100000000002
	.quad	0x40228acc70867ad9              # double 9.2710910000000002
	.quad	0x40150aa79bbadc0a              # double 5.2604050000000004
	.quad	0x40210af05a708ede              # double 8.5213649999999994
	.quad	0x4003386b15f88fc9              # double 2.4025479999999999
	.quad	0x401f2c17a89331a1              # double 7.7930590000000004
	.quad	0x4013fabead4f5904              # double 4.9948680000000003
	.quad	0x40013101b003686a              # double 2.1489289999999999
	.quad	0x4003ca90470a808d              # double 2.4739080000000002
	.quad	0x4023d00474d9c6b0              # double 9.9062839999999994
	.quad	0x3fc48d4bad7d7c2d              # double 0.16056200000000001
	.quad	0x401171a8262456f7              # double 4.3609929999999997
	.quad	0x3ff04a3d70a3d70a              # double 1.0181249999999999
	.quad	0x4016ad21bc126a66              # double 5.6690740000000002
	.quad	0x40141e9fadafd114              # double 5.0299060000000004
	.quad	0x40133d2849cb252d              # double 4.8097240000000001
	.quad	0x4014c59a30984e40              # double 5.192971
	.quad	0x3fc1fbd6a593a2e0              # double 0.14049800000000001
	.quad	0x4020e00474d9c6b0              # double 8.4375339999999994
	.quad	0x4019f9f6a93f290b              # double 6.4941050000000002
	.quad	0x3ff0827e9531550d              # double 1.0318590000000001
	.quad	0x401ba540895d0b74              # double 6.9113790000000002
	.quad	0x3feb21144cbe1eb4              # double 0.84778799999999998
	.quad	0x4018a1ff7164c72a              # double 6.158201
	.quad	0x3ffe9b30728e92d5              # double 1.9128879999999999
	.quad	0x400c3312b1b36bd3              # double 3.5249380000000001
	.quad	0x400b5bca9691a75d              # double 3.4198200000000001
	.quad	0x40196baf102363b2              # double 6.3551599999999997
	.quad	0x4022483dff3f0fe0              # double 9.1410979999999995
	.quad	0x401e62170931012a              # double 7.5957910000000002
	.quad	0x4022619a847b2464              # double 9.1906320000000008
	.quad	0x4014a2502eec7c95              # double 5.1585089999999996
	.quad	0x4003a1ac57e23f25              # double 2.4539420000000001
	.quad	0x401152806af46aa1              # double 4.3305680000000004
	.quad	0x3ff040474d9c6b05              # double 1.015693
	.quad	0x401aacc39ffd60e9              # double 6.6687149999999997
	.quad	0x3ff7ee978d4fdf3b              # double 1.4957499999999999
	.quad	0x402358b75ea67e84              # double 9.6732739999999992
	.quad	0x401acaffb04ee7c5              # double 6.6982410000000003
	.quad	0x401ebaa1511dffc5              # double 7.6822559999999997
	.quad	0x401f1502eec7c958              # double 7.7705190000000001
	.quad	0x3fe2a43fe5c91d15              # double 0.58255000000000001
	.quad	0x3ff114280ae10492              # double 1.067421
	.quad	0x40188acaff6d3309              # double 6.1355399999999998
	.quad	0x3fed2593a2df9379              # double 0.91083700000000001
	.quad	0x4005a8155d5f56a8              # double 2.7070720000000001
	.quad	0x3ffd2fd86a8fc0d3              # double 1.8241810000000001
	.quad	0x3fefa45b291b823d              # double 0.98881300000000005
	.quad	0x400d6c532a497fa6              # double 3.6778930000000001
	.quad	0x400410c77dd872f3              # double 2.5081929999999999
	.quad	0x3ff9925edd052935              # double 1.5982350000000001
	.quad	0x401daba5e353f7cf              # double 7.4176250000000001
	.quad	0x402372615a8deb10              # double 9.7233990000000006
	.quad	0x3fe4d06bbdbe3c10              # double 0.65044199999999996
	.quad	0x4013cb780346dc5d              # double 4.9486999999999997
	.quad	0x401710eb24a6a876              # double 5.7665220000000001
	.quad	0x401a3e9bbf0dc769              # double 6.5611410000000001
	.quad	0x4021a30574b40703              # double 8.8184009999999997
	.quad	0x401d8a80cf9e3865              # double 7.3852570000000002
	.quad	0x401cff4adbc664d4              # double 7.2493090000000002
	.quad	0x40113d916872b021              # double 4.3101250000000002
	.quad	0x401629a06a6e32e4              # double 5.5406510000000004
	.quad	0x401bf36f7e3d1cc1              # double 6.98773
	.quad	0x4022649e6687f456              # double 9.1965210000000006
	.quad	0x3ff7248626f60e0f              # double 1.4464170000000001
	.quad	0x40234622a2c23748              # double 9.6369830000000007
	.quad	0x40191f83382e44b7              # double 6.2807740000000001
	.quad	0x4023b364bec679cc              # double 9.8503779999999991
	.quad	0x4018131e7d9988d3              # double 6.0186710000000003
	.quad	0x40154f2b66b6177f              # double 5.3273140000000003
	.quad	0x401d2204af922963              # double 7.2832210000000002
	.quad	0x400072c94b380cb7              # double 2.0560480000000001
	.quad	0x3ff311600f34506a              # double 1.1917420000000001
	.quad	0x401d0a072d1aeb3e              # double 7.2597930000000002
	.quad	0x40200909289dadfb              # double 8.0176479999999994
	.quad	0x3fe7e6ba493c89f4              # double 0.746915
	.quad	0x40204c5a5fc7e6b4              # double 8.149127
	.quad	0x402063042528ae75              # double 8.1933910000000001
	.quad	0x401a85ae5ffa3b9b              # double 6.6305480000000001
	.quad	0x4020e957abb8800f              # double 8.4557470000000006
	.quad	0x3ff4789d6adf71eb              # double 1.279447
	.quad	0x4001c1d96e9bbf0e              # double 2.2196530000000001
	.quad	0x3fd8fe260b2c83ed              # double 0.39051200000000003
	.quad	0x40238f141205bc02              # double 9.7794500000000006
	.quad	0x4022a3f9a49c2c1b              # double 9.3202639999999999
	.quad	0x40195a8da7f3cf70              # double 6.3384309999999999
	.quad	0x401a5b3636f3b214              # double 6.5890740000000001
	.quad	0x3fcd8f14db59578a              # double 0.230929
	.quad	0x4015dc5a3e39f773              # double 5.4651880000000004
	.quad	0x3ffd860242d05f29              # double 1.8452170000000001
	.quad	0x401bbf9f87f023ea              # double 6.9371320000000001
	.quad	0x3fff1974e65bea0c              # double 1.9437150000000001
	.quad	0x400a8221c8a7a41e              # double 3.3135409999999998
	.quad	0x402198fc9363f573              # double 8.7988020000000002
	.quad	0x40007465e8922531              # double 2.056835
	.quad	0x401a8353b4b2fa94              # double 6.6282490000000003
	.quad	0x4001c106ab14ec20              # double 2.2192509999999999
	.quad	0x4021e8d9945b6c37              # double 8.9547849999999993
	.quad	0x40200308feac42ea              # double 8.0059280000000008
	.quad	0x4022436e71cda2b6              # double 9.1317020000000007
	.quad	0x401fbad4b2745bf2              # double 7.9324519999999996
	.quad	0x4017ab1ee2435697              # double 5.9171100000000001
	.quad	0x40173b089a027525              # double 5.8076499999999998
	.quad	0x402007901083dbc2              # double 8.0147709999999996
	.quad	0x40104877ab324852              # double 4.0707690000000003
	.quad	0x402345a682b62846              # double 9.6360360000000007
	.quad	0x40086c7863beec39              # double 3.0529639999999998
	.quad	0x4021c953dea465a5              # double 8.8932179999999992
	.quad	0x3ff7b4794ea07703              # double 1.4815609999999999
	.quad	0x3ff83137b07075b4              # double 1.512016
	.quad	0x4015a14488c60cbf              # double 5.4074879999999999
	.quad	0x4023787e7c06e19c              # double 9.7353400000000007
	.quad	0x3feb6c918e325d4a              # double 0.85700299999999996
	.quad	0x3ff459a62ed35222              # double 1.271887
	.quad	0x401979efd86a8fc1              # double 6.3690790000000002
	.quad	0x4019cc3f811f4f51              # double 6.4494610000000003
	.quad	0x3fe3107b784662bb              # double 0.59576200000000001
	.quad	0x401ed1ba3ca7503c              # double 7.7048120000000004
	.quad	0x402324f61672324d              # double 9.5721900000000008
	.quad	0x4009b4256bca5376              # double 3.2129620000000001
	.quad	0x400f346d3f9e7b81              # double 3.9005990000000001
	.quad	0x40222985cee17a03              # double 9.081099
	.quad	0x401b47414a4d2b2c              # double 6.819585
	.quad	0x4013a528283d35eb              # double 4.9112859999999996
	.quad	0x4004cebf65dbfceb              # double 2.6009509999999998
	.quad	0x4011e63b688bda94              # double 4.4748359999999998
	.quad	0x400f361dc93ea2d3              # double 3.901424
	.quad	0x401094aba3875925              # double 4.1451859999999998
	.quad	0x401dcdf1e0828c37              # double 7.4511180000000001
	.quad	0x4016e4289118c198              # double 5.7228110000000001
	.quad	0x4023fc8c5004fb12              # double 9.9932580000000009
	.quad	0x401c559d12cadddf              # double 7.0836069999999998
	.quad	0x4001d0678c0053e3              # double 2.2267600000000001
	.quad	0x40100052934acaff              # double 4.0003149999999996
	.quad	0x4021024031487768              # double 8.5043959999999998
	.quad	0x401216809d495183              # double 4.5219750000000003
	.quad	0x40152a8cdea033e8              # double 5.2915530000000004
	.quad	0x40153e8815e39714              # double 5.3110660000000003
	.quad	0x3ff6e5cc426351df              # double 1.431103
	.quad	0x400f027c7c5260f6              # double 3.876214
	.quad	0x4013e612839042d9              # double 4.9746800000000002
	.quad	0x401f01e8e6080735              # double 7.7518649999999995
	.quad	0x401618c8eef1bac3              # double 5.5242040000000001
	.quad	0x40236a027525460b              # double 9.7070500000000006
	.quad	0x40220c7219220ff5              # double 9.0243079999999996
	.quad	0x40207365ecc3e319              # double 8.2253869999999996
	.quad	0x401475f676ea4229              # double 5.1151980000000004
	.quad	0x40163eb0fadf2ecf              # double 5.5612219999999999
	.quad	0x3ffb5e5aff2a172b              # double 1.7105360000000001
	.quad	0x40221393ab430f49              # double 9.0382359999999995
	.quad	0x3fe875579af1886e              # double 0.764324
	.quad	0x3ff9cc4cdfaca362              # double 1.6123780000000001
	.quad	0x4012e3a190082060              # double 4.722296
	.quad	0x402313499d0203e6              # double 9.5376709999999996
	.quad	0x401d2e321a2e7f6f              # double 7.2951129999999997
	.quad	0x3fd00468448cf7cb              # double 0.25026900000000002
	.quad	0x40237b302f72b453              # double 9.7406020000000008
	.quad	0x4020c9129888f862              # double 8.3927200000000006
	.quad	0x40235b7585be1a82              # double 9.6786309999999993
	.quad	0x40194348b220791c              # double 6.3157069999999997
	.quad	0x40219e6ba493c89f              # double 8.8094149999999996
	.quad	0x401ec3e1437c5693              # double 7.6912890000000002
	.quad	0x40236aca36199781              # double 9.7085740000000004
	.quad	0x4023d08c1db0142f              # double 9.9073189999999993
	.quad	0x4022fa5093964a5a              # double 9.4888960000000004
	.quad	0x3fd66bacf7446f9c              # double 0.35032200000000002
	.quad	0x3fd3ae9ee45c358b              # double 0.307533
	.quad	0x4022da6ce358298d              # double 9.4266120000000004
	.quad	0x4022cc6950fc71d6              # double 9.399241
	.quad	0x401a9d37c1376d55              # double 6.6535330000000004
	.quad	0x3ff3aa9b499d0204              # double 1.229152
	.quad	0x40010c36544fe36d              # double 2.1309629999999999
	.quad	0x401920bbb1f255f3              # double 6.2819659999999997
	.quad	0x401188d3f1843c3a              # double 4.3836209999999998
	.quad	0x40121c6e6d9be4cd              # double 4.5277649999999996
	.quad	0x401065c6c11a1123              # double 4.0993909999999998
	.quad	0x400b08a159817b96              # double 3.3792140000000002
	.quad	0x400f5e5aff2a172b              # double 3.9210720000000001
	.quad	0x3ff14d8ba40d90e2              # double 1.0814319999999999
	.quad	0x3fd55ba6efc371da              # double 0.33371899999999999
	.quad	0x4012be1deacc9214              # double 4.6856609999999996
	.quad	0x400a23fb3743632c              # double 3.2675689999999999
	.quad	0x40101f705857afea              # double 4.0307019999999998
	.quad	0x4013b971c10d7bea              # double 4.9310980000000004
	.quad	0x400543c9eecbfb16              # double 2.6581000000000001
	.quad	0x400c29878316a055              # double 3.5202779999999998
	.quad	0x4020f68a2ec28b2a              # double 8.4815229999999993
	.quad	0x401df64cf8d716d3              # double 7.4905280000000002
	.quad	0x40228bc148344c38              # double 9.2729590000000001
	.quad	0x3fe7b5c7cd898b2f              # double 0.74094000000000004
	.quad	0x40224d173fb7a5f4              # double 9.1505679999999998
	.quad	0x400114f5903a7547              # double 2.1352340000000001
	.quad	0x4011339cd8127b2d              # double 4.3004030000000002
	.quad	0x4011c202107b7846              # double 4.4394609999999997
	.quad	0x4016c04f2ae07e5a              # double 5.6878019999999996
	.quad	0x401f66a1e81cb46c              # double 7.8502270000000003
	.quad	0x401c6eb3dd11be6e              # double 7.1081079999999996
	.quad	0x4000eaa53fc00970              # double 2.114573
	.quad	0x3fd464cb5bb384fd              # double 0.31865199999999999
	.quad	0x40229163baba7b91              # double 9.2839639999999992
	.quad	0x4022d22d948dc11e              # double 9.4105039999999995
	.quad	0x3ff0c5d52c16df40              # double 1.0482990000000001
	.quad	0x400e354fbdad7519              # double 3.7760310000000001
	.quad	0x3fda36bd2b6f1993              # double 0.40959099999999998
	.quad	0x401828fa7a85015c              # double 6.0400179999999999
	.quad	0x400565bb7b6bb129              # double 2.674674
	.quad	0x4021b6d06fef7c24              # double 8.8570589999999995
	.quad	0x40212bbadc0980b2              # double 8.5854099999999995
	.quad	0x401db2a66dbd72bd              # double 7.4244630000000003
	.quad	0x4019569878316a05              # double 6.3345659999999997
	.quad	0x402192e7f6f4be83              # double 8.7869259999999993
	.quad	0x40214f9e59f2ba9d              # double 8.6555049999999998
	.quad	0x400a5a06a6e32e38              # double 3.2939579999999999
	.quad	0x40131a9b8cb8e087              # double 4.7759840000000002
	.quad	0x3ffb9c22ab25b318              # double 1.725619
	.quad	0x401cfc05d52c16df              # double 7.2461159999999998
	.quad	0x401e684988094e5d              # double 7.6018429999999996
	.quad	0x401855870da5daf0              # double 6.0835229999999996
	.quad	0x40170a7546d3f9e8              # double 5.7602130000000002
	.quad	0x4022450bfa0945fa              # double 9.1348570000000002
	.quad	0x4022086ee30caa32              # double 9.0164709999999992
	.quad	0x40053a543f1c7582              # double 2.6534810000000002
	.quad	0x3fdf3a4f8726d04e              # double 0.48793399999999998
	.quad	0x3fe4a8f9f44d4456              # double 0.64562699999999995
	.quad	0x40044edfe75bc44c              # double 2.538513
	.quad	0x4022d69f6a93f291              # double 9.4191850000000005
	.quad	0x4010d71c53f39d1b              # double 4.2100689999999998
	.quad	0x4004d9042d8c2a45              # double 2.6059649999999999
	.quad	0x40156c9f2fdb8fde              # double 5.3560759999999998
	.quad	0x3fd161c36976bc1f              # double 0.271592
	.quad	0x401e5bc33f85510d              # double 7.5896119999999998
	.quad	0x401afd5cfaacd9e8              # double 6.7474249999999998
	.quad	0x40124b2d905c0336              # double 4.5734159999999999
	.quad	0x3fbfcc6c54bcf0b7              # double 0.124213
	.quad	0x3ff948bfc2224edf              # double 1.5802609999999999
	.quad	0x3fed08bb906466b2              # double 0.90731600000000001
	.quad	0x40228ceb13dfb0d5              # double 9.2752309999999998
	.quad	0x40117c4eb56fb8f5              # double 4.3713939999999996
	.quad	0x400e5d577963992d              # double 3.7955770000000002
	.quad	0x401d6c8d5c74751d              # double 7.3560080000000001
	.quad	0x4020de86a4ca4f44              # double 8.4346209999999999
	.quad	0x40232cb3e5753a3f              # double 9.5873100000000004
	.quad	0x401a08882f0e0a85              # double 6.5083320000000002
	.quad	0x401e7399b2c40d0b              # double 7.6128910000000002
	.quad	0x400e45c2d2780779              # double 3.7840630000000002
	.quad	0x4001d9f90539fba4              # double 2.2314319999999999
	.quad	0x401d5f75104d551d              # double 7.3432199999999996
	.quad	0x3ff024c942d490e6              # double 1.0089809999999999
	.quad	0x40098f37fbefd007              # double 3.194931
	.quad	0x401179845dc83233              # double 4.3686689999999997
	.quad	0x40085031055b8994              # double 3.0391560000000002
	.quad	0x4022ee0029f16b12              # double 9.4648450000000004
	.quad	0x40142060fe47991c              # double 5.0316200000000002
	.quad	0x40220a500d5e8d54              # double 9.0201419999999998
	.quad	0x401b1f312b1b36bd              # double 6.7804609999999998
	.quad	0x4021fe9424e59296              # double 8.9972239999999992
	.quad	0x401ea9f127f5e84f              # double 7.6659589999999999
	.quad	0x3fe679e16d6dc1a4              # double 0.70237799999999995
	.quad	0x3fcec2938de6ddf0              # double 0.240313
	.quad	0x40196b86f47b677f              # double 6.3550069999999996
	.quad	0x3ff575cf2495e17e              # double 1.341262
	.quad	0x40225eaf6837f7be              # double 9.1849319999999999
	.quad	0x4016328b2a6b0d95              # double 5.5493589999999999
	.quad	0x401b8228997c3d68              # double 6.8771079999999998
	.quad	0x401ddf08893b7d85              # double 7.4678060000000004
	.quad	0x4022b8ff10ecb74e              # double 9.3613210000000002
	.quad	0x3ffd5feda6612839              # double 1.83592
	.quad	0x4023f80e6afcce1c              # double 9.9844849999999993
	.quad	0x40199a7ef9db22d1              # double 6.4008750000000001
	.quad	0x4011a12fd32c625f              # double 4.4074090000000004
	.quad	0x4021b79e3864cb5c              # double 8.8586290000000005
	.quad	0x4021875c28f5c28f              # double 8.7643749999999994
	.quad	0x4013974080f98fa3              # double 4.8977069999999996
	.quad	0x402356afcce1c582              # double 9.6693099999999994
	.quad	0x401c0a0ec7432010              # double 7.0098219999999998
	.quad	0x40162aa433508f65              # double 5.5416420000000004
	.quad	0x401234b2b777d0f2              # double 4.551463
	.quad	0x4012c73b42cc2d6b              # double 4.6945620000000003
	.quad	0x3febb9f98b71b8aa              # double 0.866452
	.quad	0x4021f1333b96af04              # double 8.9710940000000007
	.quad	0x401fd8e5c4eb56fc              # double 7.9618140000000004
	.quad	0x3ffa7be9856a37ac              # double 1.6552519999999999
	.quad	0x401a52ba16e7a312              # double 6.5807880000000001
	.quad	0x400076c58eeae9ee              # double 2.0579939999999999
	.quad	0x4000a4039abf3387              # double 2.080085
	.quad	0x401ec7bf1e8e6080              # double 7.6950649999999996
	.quad	0x4012ecf0739b024f              # double 4.7313859999999996
	.quad	0x401ed2c7fbacb429              # double 7.7058410000000003
	.quad	0x4011a189374bc6a8              # double 4.4077500000000001
	.quad	0x400b5673c4f3ba77              # double 3.4172129999999998
	.quad	0x40051af4adbc664d              # double 2.6381619999999999
	.quad	0x401d29af5ba2be06              # double 7.2907080000000004
	.quad	0x4014fad70e6f2e8c              # double 5.244961
	.quad	0x401b0899392189be              # double 6.7583970000000004
	.quad	0x4010196e58a32f45              # double 4.0248350000000004
	.quad	0x4023c809d495182b              # double 9.8907000000000007
	.quad	0x401ac7d6b65a9a80              # double 6.6951549999999997
	.quad	0x3ff43cd35a858794              # double 1.26485
	.quad	0x4017019f3c70c997              # double 5.7515840000000003
	.quad	0x40142373f316e371              # double 5.0346219999999997
	.quad	0x401e3b48d3ae685e              # double 7.5578950000000003
	.quad	0x4020ac6fdeb52c9d              # double 8.3367909999999998
	.quad	0x4013f0c0ad03d9a9              # double 4.9851099999999997
	.quad	0x4021a1e4f765fd8b              # double 8.8162000000000003
	.quad	0x4016f783dff3f0fe              # double 5.741714
	.quad	0x3ffe431bde82d7b6              # double 1.891384
	.quad	0x401a1dece5710881              # double 6.5292240000000001
	.quad	0x3fe319806f262889              # double 0.59686300000000003
	.quad	0x40005caa7589efd8              # double 2.0452469999999998
	.quad	0x3fe4e0c176577532              # double 0.65243600000000002
	.quad	0x400e5f76a2f48c2e              # double 3.7966129999999998
	.quad	0x3ff778e6d15ad107              # double 1.467017
	.quad	0x4019cb26394face6              # double 6.4483879999999996
	.quad	0x4012b721d53cddd7              # double 4.6788400000000001
	.quad	0x3fe4351deefe4ffd              # double 0.63148400000000005
	.quad	0x4013ef36ac647779              # double 4.9836070000000001
	.quad	0x40139a005c4651f4              # double 4.9003920000000001
	.quad	0x4014802fb5d03105              # double 5.1251819999999997
	.quad	0x3ffc7e86833c6003              # double 1.7808900000000001
	.quad	0x3ff33227d028a1e0              # double 1.1997450000000001
	.quad	0x401741ff7164c72a              # double 5.814451
	.quad	0x40221caab8a5ce5b              # double 9.0559899999999995
	.quad	0x401195b89939218a              # double 4.3962120000000002
	.quad	0x4000f5e6bc621b7e              # double 2.120069
	.quad	0x402333b85e80bed7              # double 9.6010159999999995
	.quad	0x4022a399f5dfeb8e              # double 9.3195340000000009
	.quad	0x40065b03e20ccff2              # double 2.794441
	.quad	0x401cdaaef2c73259              # double 7.2135579999999999
	.quad	0x401ad96bb98c7e28              # double 6.7123249999999999
	.quad	0x401bc25785f8d2e5              # double 6.9397869999999999
	.quad	0x4005ab790fb65669              # double 2.7087270000000001
	.quad	0x401aeb7e90ff9724              # double 6.7299749999999996
	.quad	0x401f35dcc63f1412              # double 7.8026
	.quad	0x40027b9b66f9335d              # double 2.3103549999999999
	.quad	0x3fd134a44c7b02d6              # double 0.26883800000000002
	.quad	0x4023b231c64ba94c              # double 9.8480360000000004
	.quad	0x3fdbaad601ffb481              # double 0.43230200000000002
	.quad	0x3ff6b530ced4e4c9              # double 1.4192359999999999
	.quad	0x4018fe8640208180              # double 6.2485590000000002
	.quad	0x4023fc2cc2d6a9c5              # double 9.9925289999999993
	.quad	0x4019af4c2b51bd62              # double 6.421189
	.quad	0x40022b380cb6c7a8              # double 2.2711030000000001
	.quad	0x400556262cba732e              # double 2.667065
	.quad	0x4006de58e64b2314              # double 2.858568
	.quad	0x40029cd573647bab              # double 2.3265790000000002
	.quad	0x401d5e18ac9f2fdc              # double 7.3418910000000004
	.quad	0x4015215c209246bf              # double 5.282578
	.quad	0x400a5615ebfa8f7e              # double 3.2920340000000001
	.quad	0x3fcc281344806291              # double 0.219973
	.quad	0x401381d92b7fe08b              # double 4.8768050000000001
	.quad	0x3fe6a94dd72367e4              # double 0.70816699999999999
	.quad	0x40153bce4217d285              # double 5.3084040000000003
	.quad	0x400a1e41d4b6a61a              # double 3.2647740000000001
	.quad	0x401da8a0902de00d              # double 7.4146749999999999
	.quad	0x4016bd4c33b53932              # double 5.6848609999999997
	.quad	0x402222bc2fc69729              # double 9.0678420000000006
	.quad	0x4015c422036006d1              # double 5.4415360000000002
	.quad	0x40012298cc144029              # double 2.141893
	.quad	0x40009dcdf6987831              # double 2.0770529999999998
	.quad	0x4021a32031ceaf25              # double 8.8186049999999998
	.quad	0x401765cf2495e17e              # double 5.8494229999999998
	.quad	0x3fd79d3cbc48f10b              # double 0.36897200000000002
	.quad	0x401a4393682730c6              # double 6.5659919999999996
	.quad	0x400ca23af31b152f              # double 3.5792139999999999
	.quad	0x401a3203e63e8dda              # double 6.5488429999999997
	.quad	0x400bb9ad85dfa872              # double 3.4656630000000002
	.quad	0x40217b27243137b0              # double 8.7405329999999992
	.quad	0x400ecc8abd5dc400              # double 3.8498739999999998
	.quad	0x40013538ac18f81f              # double 2.1509870000000002
	.quad	0x40090e5b4245f5ae              # double 3.1320100000000002
	.quad	0x4008429f9ce8d973              # double 3.0325310000000001
	.quad	0x4016f443d46b26c0              # double 5.7385400000000004
	.quad	0x402315e529bae46d              # double 9.542764
	.quad	0x40008cf850df15a5              # double 2.0688330000000001
	.quad	0x4016c4bfd2e94680              # double 5.6921379999999999
	.quad	0x4018f32873bc903f              # double 6.2374590000000003
	.quad	0x400f2b12d3415b14              # double 3.8960319999999999
	.quad	0x3f722fad6cb53501              # double 0.0044400000000000004
	.quad	0x3fee3d577963992d              # double 0.94498800000000005
	.quad	0x3ff7c1d6cf850df1              # double 1.4848239999999999
	.quad	0x401952f61ed5ae1d              # double 6.3310170000000001
	.quad	0x400c1a3a08398a65              # double 3.5128059999999999
	.quad	0x4012f7f737da61e1              # double 4.7421540000000002
	.quad	0x401d8c8c9320d994              # double 7.3872549999999997
	.quad	0x40086d0247021d11              # double 3.0532270000000001
	.quad	0x4016ab9b66f9335d              # double 5.6675849999999999
	.quad	0x4022cd99aa60913a              # double 9.4015629999999994
	.quad	0x40072d0247021d11              # double 2.8969770000000001
	.quad	0x3feb1e8a2ec28b2a              # double 0.84747799999999995
	.quad	0x400dce4649906cca              # double 3.7257199999999999
	.quad	0x3ffe0a98aa8650e7              # double 1.8775869999999999
	.quad	0x40150aeff5c6c11a              # double 5.2606809999999999
	.quad	0x4016f6f1dc50ce4f              # double 5.7411570000000003
	.quad	0x40094f29d40ee06e              # double 3.1636540000000002
	.quad	0x401a8bff04577d95              # double 6.6367149999999997
	.quad	0x40159b4e9813879c              # double 5.4016669999999998
	.quad	0x400a32c9d16fc9bc              # double 3.2747989999999998
	.quad	0x401d8f1950331e3a              # double 7.3897449999999996
	.quad	0x401676573215fcc2              # double 5.6155670000000004
	.quad	0x3fe0c4d22c881e47              # double 0.52402599999999999
	.quad	0x4023ffc17a89331a              # double 9.9995229999999999
	.quad	0x40080a0232096788              # double 3.0048870000000001
	.quad	0x3ff6fcd78c436fc1              # double 1.4367289999999999
	.quad	0x40116301eabbcb1d              # double 4.3466870000000002
	.quad	0x400b5f85d744f5d3              # double 3.4216419999999999
	.quad	0x401d63fe9fadafd1              # double 7.3476509999999999
	.quad	0x40215d83a53b8e4c              # double 8.6826450000000008
	.quad	0x402185b8fde2ef4e              # double 8.761177
	.quad	0x4018011e42e12620              # double 6.0010919999999999
	.quad	0x401420d66f0cfe15              # double 5.0320679999999998
	.quad	0x40033c7607c419a0              # double 2.404522
	.quad	0x3ff64ae642bf9831              # double 1.393286
	.quad	0x402302cf0f9d2bf5              # double 9.5054859999999994
	.quad	0x40230ace4649906d              # double 9.5211050000000003
	.quad	0x4014f82cf52b90a8              # double 5.2423590000000004
	.quad	0x40191f440af1cb8a              # double 6.2805330000000001
	.quad	0x402360a8b08dd1e5              # double 9.6887869999999995
	.quad	0x4021d4de7ea5f84d              # double 8.9157600000000006
	.quad	0x401779d6adf71eb0              # double 5.8689830000000001
	.quad	0x401cd2977c88e79b              # double 7.2056560000000003
	.quad	0x4023e0ec0f883340              # double 9.9393010000000003
	.quad	0x40214b395c422036              # double 8.646922
	.quad	0x3fee2bfb9bed30f0              # double 0.94286899999999996
	.quad	0x401194c059210386              # double 4.3952650000000002
	.quad	0x3ffb5a5332acfb76              # double 1.709552
	.quad	0x3fbb267c6b8b6955              # double 0.106056
	.quad	0x402155245b291b82              # double 8.6662929999999996
	.quad	0x4000fd7342edbb5a              # double 2.1237550000000001
	.quad	0x4010307f23cc8de3              # double 4.0473600000000003
	.quad	0x3fda46ae3a3a8e71              # double 0.41056399999999998
	.quad	0x40128991bc558644              # double 4.6343449999999997
	.quad	0x401232839042d8c3              # double 4.5493300000000003
	.quad	0x3fc8c99f1ae2da55              # double 0.19365299999999999
	.quad	0x40136154434e336a              # double 4.8450480000000002
	.quad	0x4015385ec3dab5c4              # double 5.3050490000000003
	.quad	0x401d2a11233df2aa              # double 7.2910810000000001
	.quad	0x3fffc3c4b09e98dd              # double 1.985295
	.quad	0x3f922d5171e29b6b              # double 0.017750999999999999
	.quad	0x4010624851a86940              # double 4.0959789999999998
	.quad	0x40161801f75104d5              # double 5.5234449999999997
	.quad	0x4021971e29b6b2af              # double 8.7951519999999999
	.quad	0x3fc40c0f01fb82c3              # double 0.15661800000000001
	.quad	0x40148fb3fa6defc8              # double 5.1403350000000003
	.quad	0x4010874213a0c6b5              # double 4.1320880000000004
	.quad	0x4018f36976bc1f00              # double 6.2377070000000003
	.quad	0x4023bf3882278d0d              # double 9.8734780000000004
	.quad	0x401c8d031055b899              # double 7.1377069999999998
	.quad	0x401e75393250b524              # double 7.6144759999999998
	.quad	0x401e13686a4ca4f4              # double 7.5189529999999998
	.quad	0x4005f13e81450efe              # double 2.7427950000000001
	.quad	0x4023186d2ed783e0              # double 9.5477080000000001
	.quad	0x3fd6ff79c842fa51              # double 0.35934300000000002
	.quad	0x3fe51dabe27179c0              # double 0.65987200000000001
	.quad	0x401f4392189bd838              # double 7.8159869999999997
	.quad	0x401f7042528ae74f              # double 7.8596279999999998
	.quad	0x4019789e34330d74              # double 6.3677910000000004
	.quad	0x3fefedc1a47a9e2c              # double 0.99777300000000002
	.quad	0x4020f17dd00f776c              # double 8.4716629999999994
	.quad	0x3ff9d9f1ae2da555              # double 1.6157090000000001
	.quad	0x40103b3d4ae429e1              # double 4.0578510000000003
	.quad	0x3ff97d987c6327ee              # double 1.5931630000000001
	.quad	0x401c498a222d5172              # double 7.0718160000000001
	.quad	0x4010320afa2f05a7              # double 4.04887
	.quad	0x3fe143b2dd377e1c              # double 0.53951400000000005
	.quad	0x40179e2a80064a9d              # double 5.9044590000000001
	.quad	0x4005e068db8bac71              # double 2.734575
	.quad	0x4022f68d972cd7cf              # double 9.4815489999999993
	.quad	0x4005f25a250f8402              # double 2.7433360000000002
	.quad	0x401af7af20ea5b53              # double 6.741879
	.quad	0x4022b943bf727137              # double 9.3618450000000006
	.quad	0x3fe77251c193b3a7              # double 0.73270500000000005
	.quad	0x4004a4944ed6fda8              # double 2.5803609999999999
	.quad	0x401eea43fe5c91d1              # double 7.7287749999999997
	.quad	0x401b18f3a9b06812              # double 6.7743669999999998
	.quad	0x3fde3269df97aaac              # double 0.471827
	.quad	0x400f5ea67e846a5d              # double 3.9212159999999998
	.quad	0x4013864388ebcc6c              # double 4.8811169999999997
	.quad	0x401248b86b15f890              # double 4.5710160000000002
	.quad	0x3ff26a7ce0fc2eba              # double 1.150998
	.quad	0x4000729e4d5d80e5              # double 2.0559660000000002
	.quad	0x4023bbda5119ce07              # double 9.8668999999999993
	.quad	0x3fe69c9b41398634              # double 0.70661700000000005
	.quad	0x4002f2788db0574b              # double 2.3683939999999999
	.quad	0x40047d0f1f57b41c              # double 2.561064
	.quad	0x4021467b80a9de8b              # double 8.6376609999999996
	.quad	0x401579795b35b0bc              # double 5.368627
	.quad	0x3feed73c925785f9              # double 0.96377400000000001
	.quad	0x400d79d3cbc48f11              # double 3.6844860000000001
	.quad	0x3ffed420b3d4ae43              # double 1.9267890000000001
	.quad	0x400de4388ebcc6c5              # double 3.7364359999999999
	.quad	0x400cb790752da986              # double 3.5896309999999998
	.quad	0x3ff6a675147f1306              # double 1.4156390000000001
	.quad	0x4012acc74b838c11              # double 4.6687289999999999
	.quad	0x3ffa301b866e43aa              # double 1.6367449999999999
	.quad	0x40184383ad9f0a1c              # double 6.0659320000000001
	.quad	0x401fac0f45176146              # double 7.9180270000000004
	.quad	0x4021992c6ac215ba              # double 8.7991670000000006
	.quad	0x401f12bcb5fe542e              # double 7.7682979999999997
	.quad	0x4022d8c5eb313be2              # double 9.4233849999999997
	.quad	0x3ff398def416bdb2              # double 1.2248220000000001
	.quad	0x400b6df15a4acf31              # double 3.4286829999999999
	.quad	0x3fc427ae9ab29e4d              # double 0.15746099999999999
	.quad	0x4015a96851223183              # double 5.4154369999999998
	.quad	0x4008fa5b9628cbd1              # double 3.1222449999999999
	.quad	0x4020cb12f4cf4a56              # double 8.3966290000000008
	.quad	0x40204c408d8ec95c              # double 8.14893
	.quad	0x401c42f37fbefd00              # double 7.0653819999999996
	.quad	0x400b9a038194c016              # double 3.450202
	.quad	0x401e259f6ec5b079              # double 7.5367410000000001
	.quad	0x401785daad601ffb              # double 5.8807169999999998
	.quad	0x3fff13bd1676640a              # double 1.9423189999999999
	.quad	0x3ff3accf6be37de9              # double 1.2296899999999999
	.quad	0x40236f41aef6f8f0              # double 9.7172979999999995
	.quad	0x401b7801b4352652              # double 6.8671939999999996
	.quad	0x3fd6d4cfd08d4bad              # double 0.35673899999999997
	.quad	0x4008696ededaec4a              # double 3.0514809999999999
	.quad	0x401ccca46e08f217              # double 7.199846
	.quad	0x40141f61ed5ae1ce              # double 5.0306470000000001
	.quad	0x401e7ba55d1c3ac9              # double 7.6207479999999998
	.quad	0x40145daf4adbc665              # double 5.0914890000000002
	.quad	0x4006113f077ccc03              # double 2.7584209999999998
	.quad	0x401d152b0a6fc58b              # double 7.2706720000000002
	.quad	0x400930a782906898              # double 3.1487569999999998
	.quad	0x4022aa92a3055326              # double 9.3331499999999998
	.quad	0x402187dc37a3db3c              # double 8.765352
	.quad	0x3ffba162f166e009              # double 1.726901
	.quad	0x3ffe47000431bde8              # double 1.892334
	.quad	0x401c8488c60cbf2b              # double 7.1294279999999999
	.quad	0x40022b7dc7abfb9c              # double 2.271236
	.quad	0x3fd06e0d23d4f15e              # double 0.25671699999999997
	.quad	0x3fdd5846e8f29d41              # double 0.458513
	.quad	0x40115f08893b7d85              # double 4.3428060000000004
	.quad	0x401019310129cbab              # double 4.0246009999999997
	.quad	0x400f7fe7e1fc08fa              # double 3.9374539999999998
	.quad	0x401b8c9fb6134ce4              # double 6.8873280000000001
	.quad	0x3ff25af7d30ad46f              # double 1.1472089999999999
	.quad	0x40197c95bff04578              # double 6.3716650000000001
	.quad	0x40168113404ea4a9              # double 5.6260500000000002
	.quad	0x401f505c03361566              # double 7.8284760000000002
	.quad	0x4015603b81b64e05              # double 5.3439769999999998
	.quad	0x401fe1dabe27179c              # double 7.970561
	.quad	0x4014dba6efc371da              # double 5.2145039999999998
	.quad	0x4023a1ef5232d2bb              # double 9.8162789999999997
	.quad	0x402223e1437c5693              # double 9.0700780000000005
	.quad	0x400df1dd5d3dc8b8              # double 3.7430979999999998
	.quad	0x401645dd8f92af9b              # double 5.5682280000000004
	.quad	0x401fe93e1c9b413a              # double 7.9777760000000004
	.quad	0x4017b251c193b3a7              # double 5.9241400000000004
	.quad	0x3fdead2135daad60              # double 0.47931699999999999
	.quad	0x401082ba16e7a312              # double 4.1276630000000001
	.quad	0x401bdcb35f3d7d39              # double 6.9655279999999999
	.quad	0x4010a7d0f1f57b42              # double 4.1638830000000002
	.quad	0x400c3256ffc115df              # double 3.5245799999999998
	.quad	0x40127b3354c12275              # double 4.6203130000000003
	.quad	0x4017344bf4cb1898              # double 5.8010710000000003
	.quad	0x40213b52eb5f5f0b              # double 8.6158669999999997
	.quad	0x401902ec28b2a6b1              # double 6.2528540000000001
	.quad	0x40008c0379314446              # double 2.0683660000000001
	.quad	0x402372fb5d031056              # double 9.7245740000000005
	.quad	0x400657c0b1359792              # double 2.7928480000000002
	.quad	0x400380bd44998d04              # double 2.4378609999999998
	.quad	0x3ff8aedbb59ddc1e              # double 1.5426899999999999
	.quad	0x3ff412817763e4ac              # double 1.254518
	.quad	0x40186b2a27f1b691              # double 6.1046529999999999
	.quad	0x40136ac14c660a20              # double 4.8542529999999999
	.quad	0x3ff09ccfaeff5c6c              # double 1.038284
	.quad	0x400e34317acc4ef9              # double 3.7754850000000002
	.quad	0x3feb6acc92146a1a              # double 0.85678699999999997
	.quad	0x40214dee99a62ed3              # double 8.6522109999999994
	.quad	0x4023d5e9e1b089a0              # double 9.9177999999999997
	.quad	0x40239ae429e0a41a              # double 9.8025219999999997
	.quad	0x401aab9a176ddacf              # double 6.6675800000000001
	.quad	0x3ff99a6f826edaa9              # double 1.600204
	.quad	0x40199e05ccc89b0f              # double 6.4043190000000001
	.quad	0x4007724f227d028a              # double 2.9308149999999999
	.quad	0x401089b456b441bc              # double 4.1344770000000004
	.quad	0x4003824aada33bda              # double 2.4386190000000001
	.quad	0x402217e6b3fe9fae              # double 9.0466820000000006
	.quad	0x4021668af81626b3              # double 8.7002790000000001
	.quad	0x40218fe23f24d8fd              # double 8.7810229999999994
	.quad	0x402088614163779f              # double 8.2663670000000007
	.quad	0x402260116ebd4cfd              # double 9.1876329999999999
	.quad	0x400566e978d4fdf4              # double 2.6752500000000001
	.quad	0x40012120e1f7d73d              # double 2.1411760000000002
	.quad	0x40160cb46bacf744              # double 5.5124069999999996
	.quad	0x4013f876188b1141              # double 4.9926380000000004
	.quad	0x401be6e371540032              # double 6.9754769999999997
	.quad	0x40136a9b499d0204              # double 4.8541080000000001
	.quad	0x401cc7f27fe4bcae              # double 7.1952610000000004
	.quad	0x40229c45ed4a1ad6              # double 9.3052209999999995
	.quad	0x400431b9b66f9336              # double 2.5242800000000001
	.quad	0x4022b8cc35ce1826              # double 9.3609329999999993
	.quad	0x401fb0f9d2bf5515              # double 7.9228279999999999
	.quad	0x402108effe2a3cea              # double 8.5174559999999992
	.quad	0x401b51b823c85c25              # double 6.8298040000000002
	.quad	0x40189c7325918a01              # double 6.1527830000000003
	.quad	0x3ff68a372606fac6              # double 1.408744
	.quad	0x401bc71d60631727              # double 6.9444480000000004
	.quad	0x400750880d801b43              # double 2.9143219999999999
	.quad	0x4011d9bfdf7e8039              # double 4.4626460000000003
	.quad	0x3ff9f4eb9a176ddb              # double 1.622295
	.quad	0x3fd95af6c69b5a64              # double 0.396177
	.quad	0x3ffbbe553ac4f7ec              # double 1.733968
	.quad	0x4006c74213a0c6b5              # double 2.8472940000000002
	.quad	0x4020d4d07852f7f5              # double 8.4156530000000007
	.quad	0x401b4548a9bcfd4c              # double 6.8176600000000001
	.quad	0x401f202e6644d877              # double 7.7814269999999998
	.quad	0x4010d18266772d5e              # double 4.204599
	.quad	0x4010140aaeafab54              # double 4.0195720000000001
	.quad	0x40028e9ab29e4d5e              # double 2.3196310000000002
	.quad	0x4022869984a0e411              # double 9.2628900000000005
	.quad	0x4012d5ca6ca03c4b              # double 4.70878
	.quad	0x401a9d701d9f4d38              # double 6.6537480000000002
	.quad	0x401fdc2938de6ddf              # double 7.9650009999999999
	.quad	0x401e4c70435efa61              # double 7.5746469999999996
	.quad	0x3ffb724c8366516e              # double 1.7154050000000001
	.quad	0x3fd76e4c0df58c09              # double 0.36610700000000002
	.quad	0x3fb0e1c58255b036              # double 0.065945000000000004
	.quad	0x40224978d4fdf3b6              # double 9.1434999999999995
	.quad	0x401a6d2b6f19934f              # double 6.606611
	.quad	0x40003641f644955b              # double 2.0264929999999999
	.quad	0x40144bb3c81908e6              # double 5.0739280000000004
	.quad	0x400a0cf6be37de94              # double 3.2563300000000002
	.quad	0x4007130728e92d56              # double 2.8842910000000002
	.quad	0x401b848a159817b9              # double 6.8794329999999997
	.quad	0x400e02a5614df8b1              # double 3.7512919999999998
	.quad	0x400c95e5aff2a173              # double 3.5731920000000001
	.quad	0x3fdc454de7ea5f85              # double 0.44173000000000001
	.quad	0x3fb97204295a6c5d              # double 0.099395999999999998
	.quad	0x4022938c32a8c9b8              # double 9.2881789999999995
	.quad	0x4008c8a697aeddce              # double 3.0979739999999998
	.quad	0x400890121682f944              # double 3.0703469999999999
	.quad	0x400342d6238da3c2              # double 2.407635
	.quad	0x4004f9a49c2c1b11              # double 2.621896
	.quad	0x40005dbb9cf9a06a              # double 2.0457679999999998
	.quad	0x3f8023e9ea140571              # double 0.0078810000000000008
	.quad	0x401c332acfb762d8              # double 7.0499679999999998
	.quad	0x402315aa4fca42af              # double 9.5423150000000003
	.quad	0x4000ded288ce703b              # double 2.1088
	.quad	0x4019145069a4df48              # double 6.269838
	.quad	0x40185935b91f70df              # double 6.0871190000000004
	.quad	0x4000d58298cc1440              # double 2.1042529999999999
	.quad	0x4000efd21ff2e48f              # double 2.1171000000000002
	.quad	0x401494f54d1e96c4              # double 5.145467
	.quad	0x3fe64e8533b10774              # double 0.69708499999999995
	.quad	0x40181618ce2d1f1d              # double 6.021579
	.quad	0x3f78c2a454de7ea6              # double 0.006045
	.quad	0x3ff44bad7d7c2ca1              # double 1.2684759999999999
	.quad	0x400a9620685553ef              # double 3.3233039999999998
	.quad	0x401ae10d7be9856a              # double 6.7197779999999998
	.quad	0x401d69235f809918              # double 7.3526740000000003
	.quad	0x4021af9767903212              # double 8.8429520000000004
	.quad	0x401d244523f67f4e              # double 7.2854200000000002
	.quad	0x4013521f2990f302              # double 4.8301970000000001
	.quad	0x40149a7829068987              # double 5.150849
	.quad	0x401c4ff4fd6d7e89              # double 7.0780830000000003
	.quad	0x4006be98dcdb37ca              # double 2.8430650000000002
	.quad	0x3ff354df8b157258              # double 1.208221
	.quad	0x401db4b5dcc63f14              # double 7.4264749999999999
	.quad	0x4020c02e6644d877              # double 8.3753539999999997
	.quad	0x40172821f2990f30              # double 5.7891919999999999
	.quad	0x401d9a1c25d07421              # double 7.4004979999999998
	.quad	0x3fd7f46ed245b292              # double 0.37429400000000002
	.quad	0x4020577fae3608d1              # double 8.1708960000000008
	.quad	0x40122d25247cb70b              # double 4.5440870000000002
	.quad	0x401543c85c24c405              # double 5.3161940000000003
	.quad	0x40173eae9ee45c36              # double 5.8112130000000004
	.quad	0x4006bc768dfbd6a6              # double 2.8420230000000002
	.quad	0x402113a51a005c46              # double 8.5383689999999994
	.quad	0x3fe1a515ce9e5e24              # double 0.55140199999999995
	.quad	0x3ffa1e9d0e991ff7              # double 1.632474
	.quad	0x4010d189374bc6a8              # double 4.2046250000000001
	.quad	0x400e14cec41dd1a2              # double 3.7601599999999999
	.quad	0x401674c016052503              # double 5.6140140000000001
	.quad	0x40095f6fd21ff2e5              # double 3.1716000000000002
	.quad	0x40032c83ec892ab7              # double 2.3967360000000002
	.quad	0x401a1b0c88a47ed0              # double 6.5264150000000001
	.quad	0x400d070867ad8e43              # double 3.6284339999999999
	.quad	0x40192205bc01a36e              # double 6.2832249999999998
	.quad	0x3ffd064883fd5022              # double 1.8140339999999999
	.quad	0x401596473471f794              # double 5.3967559999999999
	.quad	0x4017e5be1a826245              # double 5.9743579999999996
	.quad	0x3ff68d1e96c3fc44              # double 1.4094530000000001
	.quad	0x401c96e04c059210              # double 7.1473399999999998
	.quad	0x400817fcfc3f811f              # double 3.0117129999999999
	.quad	0x4020c9dc725c3dee              # double 8.3942599999999992
	.quad	0x4000ea1b5c7cd899              # double 2.1143100000000001
	.quad	0x40207d5000c9539c              # double 8.2447510000000008
	.quad	0x4013c8b3f63c31df              # double 4.9459989999999996
	.quad	0x402317a24894c448              # double 9.5461600000000004
	.quad	0x4019caf5fd47bedb              # double 6.4482039999999996
	.quad	0x4016227dcbddb984              # double 5.5336829999999999
	.quad	0x3ffe3e0370cdc875              # double 1.8901399999999999
	.quad	0x400bcad0c3d25248              # double 3.4740310000000001
	.quad	0x4019439042d8c2a4              # double 6.3159799999999997
	.quad	0x3ff165657fb69985              # double 1.0872550000000001
	.quad	0x3ff37342edbb59de              # double 1.2156400000000001
	.quad	0x400a7bcf4e874c90              # double 3.310454
	.quad	0x401d128954a7f801              # double 7.2681019999999998
	.quad	0x401066e8af81626b              # double 4.1004969999999998
	.quad	0x4022a08a265f0f5a              # double 9.3135539999999999
	.quad	0x401777e132b55ef2              # double 5.86707
	.quad	0x4018330c23fab10c              # double 6.0498510000000003
	.quad	0x40239fc58ab92c06              # double 9.8120539999999998
	.quad	0x4021f14f26aec072              # double 8.9713069999999995
	.quad	0x4009f635610adcd3              # double 3.2452190000000001
	.quad	0x401863882278d0cc              # double 6.0971989999999998
	.quad	0x4019686876e1dead              # double 6.3519610000000002
	.quad	0x400b52ca57a786c2              # double 3.4154249999999999
	.quad	0x4018bbd72bcb5fe5              # double 6.1834379999999998
	.quad	0x4002fb44e50c5eb3              # double 2.37269
	.quad	0x40065b93037d6302              # double 2.7947139999999999
	.quad	0x4004eaa087ca643d              # double 2.6145640000000001
	.quad	0x4015ad9ad85dfa87              # double 5.4195359999999999
	.quad	0x4020fd3f5b5fa227              # double 8.494624
	.quad	0x4006328d002e2329              # double 2.774683
	.quad	0x40009881a1554fbe              # double 2.0744660000000001
	.quad	0x401daffe6d58c8ef              # double 7.421869
	.quad	0x4021004c48adeebb              # double 8.5005819999999996
	.quad	0x402152699c7bcc29              # double 8.6609619999999996
	.quad	0x40225f36cdf266ba              # double 9.1859649999999995
	.quad	0x4012c02e6644d877              # double 4.6876769999999999
	.quad	0x4000d56191148fda              # double 2.10419
	.quad	0x4002358c8eef1bac              # double 2.2761469999999999
	.quad	0x40146393682730c6              # double 5.0972419999999996
	.quad	0x4007521ee675147f              # double 2.915098
	.quad	0x4023b44ae85b9e8c              # double 9.8521339999999995
	.quad	0x400e6612839042d9              # double 3.7998400000000001
	.quad	0x4021839eadd590c1              # double 8.7570700000000006
	.quad	0x3feaa9f7b5aea316              # double 0.83324799999999999
	.quad	0x4021fa82a5614df9              # double 8.9892780000000005
	.quad	0x3ffe3ffbce4217d3              # double 1.8906210000000001
	.quad	0x4022574107314ca9              # double 9.1704179999999997
	.quad	0x400241ab4b72c519              # double 2.2820649999999998
	.quad	0x400ace9bbf0dc769              # double 3.3508830000000001
	.quad	0x4022d8ff97247454              # double 9.4238250000000007
	.quad	0x401f229563a9f384              # double 7.7837730000000001
	.quad	0x401d731a4bdba0a5              # double 7.3624049999999999
	.quad	0x3fe3b8f14db59579              # double 0.61632600000000004
	.quad	0x40076f61672324c8              # double 2.9293849999999999
	.quad	0x40101cf4a558ea7d              # double 4.0282770000000001
	.quad	0x3fd3605ee568a505              # double 0.302757
	.quad	0x401d4ee8d10f51ad              # double 7.3270600000000004
	.quad	0x40177769a91105e2              # double 5.8666140000000002
	.quad	0x401768897e996313              # double 5.852087
	.quad	0x402110b26394face              # double 8.5326109999999993
	.quad	0x401c7209aaa3ad19              # double 7.1113650000000002
	.quad	0x4014a9d27c393682              # double 5.1658419999999996
	.quad	0x400d753825e13b19              # double 3.6822360000000001
	.quad	0x4007062888b545c8              # double 2.8780070000000002
	.quad	0x402081769a91105e              # double 8.2528579999999998
	.quad	0x401a5d5dc4007571              # double 6.5911780000000002
	.quad	0x40185899392189be              # double 6.0865220000000004
	.quad	0x401149c4545846e9              # double 4.322038
	.quad	0x4004446173b85e81              # double 2.5333890000000001
	.quad	0x40130800a7c5ac47              # double 4.7578149999999999
	.quad	0x40220978f68be2f8              # double 9.0185010000000005
	.quad	0x40205d601ffb480a              # double 8.1823739999999994
	.quad	0x400ed83f91e646f1              # double 3.8555899999999999
	.quad	0x400d386b9c304ccf              # double 3.652549
	.quad	0x401a0aa582dbe7f3              # double 6.5103970000000002
	.quad	0x3ffb324a6a875d57              # double 1.699778
	.quad	0x401044b167ec7864              # double 4.0670830000000002
	.quad	0x4021408dd1e53a82              # double 8.6260820000000002
	.quad	0x40207cb5568e820e              # double 8.2435709999999993
	.quad	0x40115ee73e681a9c              # double 4.3426790000000004
	.quad	0x40221452c59fb1e2              # double 9.0396940000000008
	.quad	0x401837913e81450f              # double 6.054265
	.quad	0x402374aa53fc0097              # double 9.727862
	.quad	0x401e198b2e9ccb7d              # double 7.5249449999999997
	.quad	0x400a0e1693c03bc5              # double 3.2568790000000001
	.quad	0x40141fc0096feb4a              # double 5.0310059999999996
	.quad	0x400e05c0b9991362              # double 3.7528090000000001
	.quad	0x401865ac8a372607              # double 6.099291
	.quad	0x3fe249949e8815e4              # double 0.57148200000000005
	.quad	0x40188f34d6a161e5              # double 6.13985
	.quad	0x40212205dd8f92b0              # double 8.5664510000000007
	.quad	0x40131a860dcb9a9e              # double 4.7759020000000003
	.quad	0x40149cab3edd8b61              # double 5.152997
	.quad	0x4021d8348f53c57a              # double 8.9222760000000001
	.quad	0x3ff7f43e963dc487              # double 1.4971300000000001
	.quad	0x3ffe4e219652bd3c              # double 1.894075
	.quad	0x40229922d948dc12              # double 9.2990940000000002
	.quad	0x400ac10f94c87981              # double 3.344268
	.quad	0x3fa7b19e731d2e0e              # double 0.046276999999999999
	.quad	0x401cdc34c1a8ac5c              # double 7.2150449999999999
	.quad	0x400320c73abc9470              # double 2.3910049999999998
	.quad	0x40081b0d51f81a58              # double 3.0132089999999998
	.quad	0x4011403361565c2d              # double 4.3126959999999999
	.quad	0x40078bbb1f255f35              # double 2.943228
	.quad	0x40225fbf61aa3f03              # double 9.1870069999999995
	.quad	0x401974da4ce8101f              # double 6.3641139999999998
	.quad	0x3fe11285a921ccd9              # double 0.53351099999999996
	.quad	0x401a6ac215b9a5a9              # double 6.6042560000000003
	.quad	0x3fc8bf65dbfceb79              # double 0.19334100000000001
	.quad	0x401f59c9d5a187a5              # double 7.8376840000000003
	.quad	0x3fd62788db0574b4              # double 0.346163
	.quad	0x4009bd96e9bbf0dc              # double 3.2175729999999998
	.quad	0x4004ff9c62a1b5c8              # double 2.6248100000000001
	.quad	0x3fadd7a99fa11a97              # double 0.058285999999999998
	.quad	0x3fed70e90bc7b45f              # double 0.92003299999999999
	.quad	0x40138bbb1f255f35              # double 4.8864559999999999
	.quad	0x40057130df9bdc6a              # double 2.680269
	.quad	0x3fe1458eeae9ee46              # double 0.53974100000000003
	.quad	0x402207c5479d4d83              # double 9.0151769999999996
	.quad	0x40204a10be9424e6              # double 8.1446590000000008
	.quad	0x3fc3420b3d4ae42a              # double 0.150453
	.quad	0x3fefe35e74299d88              # double 0.99650499999999997
	.quad	0x40213d095af294dd              # double 8.6192119999999992
	.quad	0x4020db02f72b4528              # double 8.4277569999999997
	.quad	0x4020b6640a6b93cd              # double 8.3562320000000003
	.quad	0x40107c016052502f              # double 4.1210990000000001
	.quad	0x3ff391c2a0232096              # double 1.2230859999999999
	.quad	0x401e11ecd4aa10e0              # double 7.5175049999999999
	.quad	0x400059192641b329              # double 2.0435050000000001
	.quad	0x40185b139c94f69d              # double 6.0889420000000003
	.quad	0x3ffe92135daad602              # double 1.910663
	.quad	0x4013f5e80bed740c              # double 4.9901429999999998
	.quad	0x40227ca4d2b2bfdb              # double 9.2434449999999995
	.quad	0x401243a365cb35f4              # double 4.5660530000000001
	.quad	0x400fe5ec3dab5c3a              # double 3.9872670000000001
	.quad	0x3ff3ac6045baf534              # double 1.229584
	.quad	0x4001d15e7c8d1959              # double 2.2272310000000002
	.quad	0x401d1922d948dc12              # double 7.2745470000000001
	.quad	0x401a32c450268901              # double 6.5495770000000002
	.quad	0x4023bdcf0307f23d              # double 9.8707200000000003
	.quad	0x401204f26aec0725              # double 4.5048310000000003
	.quad	0x40172ac1d29dc726              # double 5.7917550000000002
	.quad	0x400027d24180d3d0              # double 2.019444
	.quad	0x401c1ec80c73abc9              # double 7.0300599999999998
	.quad	0x40205a96f6512a95              # double 8.176933
	.quad	0x4022409784ec636b              # double 9.1261559999999999
	.quad	0x40019eaa2a0a9585              # double 2.2024729999999999
	.quad	0x3fe3fa0b5ed8d36b              # double 0.62427299999999997
	.quad	0x400ff36bd2b6f199              # double 3.9938579999999999
	.quad	0x4016807af20ea5b5              # double 5.6254689999999998
	.quad	0x4019247c73eee526              # double 6.2856310000000004
	.quad	0x4004fb7bf1e8e608              # double 2.622795
	.quad	0x40214448cf7caa76              # double 8.6333680000000008
	.quad	0x3ffc906dd69d3027              # double 1.785261
	.quad	0x4022441355475a32              # double 9.1329600000000006
	.quad	0x3fedb5f3d7d3910c              # double 0.92846099999999998
	.quad	0x40176be878fabda1              # double 5.8553790000000001
	.quad	0x400b99157abb8801              # double 3.449748
	.quad	0x400118e29f9ce8d9              # double 2.1371509999999998
	.quad	0x3fd2dec1c1d6cf85              # double 0.294846
	.quad	0x4019b368f08461fa              # double 6.4252050000000001
	.quad	0x400a18f3eccc4695              # double 3.262184
	.quad	0x40093230b9dc2f40              # double 3.1495069999999998
	.quad	0x401d24c48adeebb3              # double 7.2859059999999998
	.quad	0x4020ce362a5e785b              # double 8.4027569999999994
	.quad	0x3ff0cbe0ded288ce              # double 1.0497749999999999
	.quad	0x401a61aa821f2991              # double 6.595377
	.quad	0x401e187d2c7b890d              # double 7.5239149999999996
	.quad	0x401cada836eb4e98              # double 7.1695869999999999
	.quad	0x401508194c016052              # double 5.2579089999999997
	.quad	0x400ec9118c197e56              # double 3.8481779999999999
	.quad	0x4019638088509bfa              # double 6.3471700000000002
	.quad	0x4017f931876188b1              # double 5.9933529999999999
	.quad	0x4004969f4906034f              # double 2.5735459999999999
	.quad	0x4008226b2f23033a              # double 3.0168059999999999
	.quad	0x4018f019f3c70c99              # double 6.2344739999999996
	.quad	0x401b448cf7caa759              # double 6.8169440000000003
	.quad	0x4003695c853c1483              # double 2.4264459999999999
	.quad	0x400165942917507f              # double 2.1745990000000002
	.quad	0x3fe17c69728a6117              # double 0.54643699999999995
	.quad	0x3ff3ac0f88333fc8              # double 1.2295069999999999
	.quad	0x400317396d0917d7              # double 2.3863400000000001
	.quad	0x3ffb9f090f733a8a              # double 1.7263269999999999
	.quad	0x4023af1e0828c36e              # double 9.8420260000000006
	.quad	0x40045fbbd7b2031d              # double 2.546745
	.quad	0x3fc5bf61aa3f034b              # double 0.169903
	.quad	0x4021b314ec204f2b              # double 8.8497690000000002
	.quad	0x400ebec2480e8c8b              # double 3.8431440000000001
	.quad	0x4013e69878316a05              # double 4.9751909999999997
	.quad	0x4012fe1c15097c81              # double 4.7481540000000004
	.quad	0x40133cb641700cd8              # double 4.8092889999999997
	.quad	0x3ffa6c636b096356              # double 1.651462
	.quad	0x401e910a99b6f5cb              # double 7.641642
	.quad	0x40198a14cec41dd2              # double 6.3848450000000003
	.quad	0x402095601ffb480a              # double 8.2917489999999994
	.quad	0x401e4709741d084f              # double 7.5693720000000004
	.quad	0x401eaba775fb2ee0              # double 7.6676310000000001
	.quad	0x401090b84988094e              # double 4.1413279999999997
	.quad	0x401c34c1ebc83a97              # double 7.0515210000000002
	.quad	0x40057eb7cbb3c819              # double 2.686874
	.quad	0x4014659e1f3a57eb              # double 5.0992360000000003
	.quad	0x4018e9d3cbc48f11              # double 6.2283470000000003
	.quad	0x400f1bc0a06e9ff1              # double 3.8885510000000001
	.quad	0x401b40d130df9bdc              # double 6.8132979999999996
	.quad	0x400baaa2a0a95853              # double 3.4583179999999998
	.quad	0x40182a098915bdd7              # double 6.0410519999999996
	.quad	0x400e68c1db0142f6              # double 3.8011509999999999
	.quad	0x401cde0114d2f5dc              # double 7.2168010000000002
	.quad	0x4018d62d83c6c97e              # double 6.2091580000000004
	.quad	0x401ab7c73eee5259              # double 6.6794710000000004
	.quad	0x40225cac29bf162b              # double 9.1810010000000002
	.quad	0x401ce1d0c8041030              # double 7.220523
	.quad	0x3ff57a5d28d002e2              # double 1.342374
	.quad	0x3ff3235610adcd2d              # double 1.1961269999999999
	.quad	0x401b62699c7bcc29              # double 6.8461059999999998
	.quad	0x401b8f47304039ac              # double 6.88992
	.quad	0x401ea7a13c254a3c              # double 7.6637009999999997
	.quad	0x401414b2314013ec              # double 5.0202109999999998
	.quad	0x400fb5ebfa8f7db7              # double 3.963829
	.quad	0x400b0209aaa3ad19              # double 3.3759950000000001
	.quad	0x401729c12f09d8c7              # double 5.7907760000000001
	.quad	0x3ff35a7b0b391926              # double 1.2095899999999999
	.quad	0x40070d3953dea466              # double 2.8814570000000002
	.quad	0x4011f8a2ec28b2a7              # double 4.4928090000000003
	.quad	0x4006a33e78e1932d              # double 2.8297089999999998
	.quad	0x400c40f1b25f633d              # double 3.531711
	.quad	0x4018fe3193f6c26a              # double 6.2482360000000003
	.quad	0x4012a04ea4a8c155              # double 4.6565500000000002
	.quad	0x401cd02c4d65e460              # double 7.2032939999999996
	.quad	0x4018254046412cf1              # double 6.036378
	.quad	0x401eb65ecc3e3194              # double 7.678096
	.quad	0x400c7928e0c9d9d3              # double 3.5591599999999999
	.quad	0x3fe327e0ef99806f              # double 0.59861799999999998
	.quad	0x4014dafe60c38f36              # double 5.2138609999999996
	.quad	0x400de31a4bdba0a5              # double 3.7358899999999999
	.quad	0x40233f49f0e4da0a              # double 9.6236110000000004
	.quad	0x401b658eeae9ee46              # double 6.8491780000000002
	.quad	0x4011ce353f7ced91              # double 4.4513749999999996
	.quad	0x401d08dac258d584              # double 7.2586469999999998
	.quad	0x4020ee1b4bb5e0f8              # double 8.465052
	.quad	0x40200dcdb37c99af              # double 8.0269600000000008
	.quad	0x40156b1f255f351a              # double 5.3546110000000002
	.quad	0x40030d6f544bb1af              # double 2.3815599999999999
	.quad	0x402341f969e3c969              # double 9.6288560000000007
	.quad	0x4023481dc0db2703              # double 9.6408520000000006
	.quad	0x40108db37c99ae92              # double 4.1383799999999997
	.quad	0x3ffff04ddb5525cc              # double 1.9961679999999999
	.quad	0x401182749f0e4da1              # double 4.3773980000000003
	.quad	0x40210170d62bf120              # double 8.5028140000000008
	.quad	0x40043dad7518b0d1              # double 2.530116
	.quad	0x3ff53352a8438088              # double 1.3250299999999999
	.quad	0x401fdf1f14983d79              # double 7.9678919999999999
	.quad	0x400c68f5c28f5c29              # double 3.55125
	.quad	0x4011d99029ae4f33              # double 4.4624639999999998
	.quad	0x402216c13b9f127f              # double 9.0444429999999993
	.quad	0x40134a6a44417870              # double 4.8226709999999997
	.quad	0x3fd8a7a41e57d9dc              # double 0.38523200000000002
	.quad	0x401b2cb4f1e4b44a              # double 6.7936589999999999
	.quad	0x4003fbb59ddc1e79              # double 2.4979049999999998
	.quad	0x400fee8d972cd7cf              # double 3.9914809999999998
	.quad	0x4020d78f25a250f8              # double 8.4210139999999996
	.quad	0x4010d5475a31a4be              # double 4.2082800000000002
	.quad	0x401e5999567dbb17              # double 7.5874990000000002
	.quad	0x4020a62bf11f926c              # double 8.3245539999999991
	.quad	0x4020ff1561911490              # double 8.4982100000000003
	.quad	0x400f9102bc72e276              # double 3.9458060000000001
	.quad	0x40232f5fd47bedb7              # double 9.5925279999999997
	.quad	0x400b397fe8ee6b83              # double 3.403076
	.quad	0x401becc037931444              # double 6.9812019999999997
	.quad	0x402086ec7c957cd4              # double 8.2635229999999992
	.quad	0x4004db69984a0e41              # double 2.607135
	.quad	0x4012541ede1198af              # double 4.5821490000000002
	.quad	0x40127979e16d6dc2              # double 4.6186290000000003
	.quad	0x401bb22ee41919ac              # double 6.9240069999999996
	.quad	0x40157003ab862b28              # double 5.3593890000000002
	.quad	0x3ffd036b8f9b1316              # double 1.8133349999999999
	.quad	0x40098d2674080f99              # double 3.193921
	.quad	0x40206b5c182ecaef              # double 8.2096870000000006
	.quad	0x4020d68fb00bcbe6              # double 8.4190649999999998
	.quad	0x40116dfb0d51f81a              # double 4.3574029999999997
	.quad	0x400f23d145d85165              # double 3.8924889999999999
	.quad	0x40221a9c779a6b51              # double 9.0519750000000005
	.quad	0x4020a1bb6aa4b988              # double 8.3158829999999995
	.quad	0x3ffdbe39f77292c5              # double 1.8589420000000001
	.quad	0x4022e519dece5711              # double 9.4474630000000008
	.quad	0x3fe1b9085f4a1273              # double 0.55383700000000002
	.quad	0x4022312b5e529bae              # double 9.0960339999999995
	.quad	0x400902e557de0d67              # double 3.126414
	.quad	0x40217512018a43bb              # double 8.7286529999999996
	.quad	0x40167705857afea4              # double 5.6162320000000001
	.quad	0x4023d16638433d6c              # double 9.9089829999999992
	.quad	0x401b3a2a0a958538              # double 6.8068010000000001
	.quad	0x4000efabda0dfdf0              # double 2.1170270000000002
	.quad	0x4022c06290eed02d              # double 9.3757520000000003
	.quad	0x3ff481d9f4d37c13              # double 1.2817019999999999
	.quad	0x401b1095f2452c5a              # double 6.766197
	.quad	0x3ff93b16c1e364bf              # double 1.576926
	.quad	0x4020d9f7d73c9258              # double 8.4257190000000008
	.quad	0x3fa08a04d12018a4              # double 0.032302999999999998
	.quad	0x401a102f72b45283              # double 6.5158060000000004
	.quad	0x3fe39acbc8c0ce92              # double 0.61264600000000002
	.quad	0x4020196a055757d6              # double 8.0496370000000006
	.quad	0x4020c46e2a80064b              # double 8.3836530000000007
	.quad	0x40000195cc857f30              # double 2.0007739999999998
	.quad	0x3fd51272c94b380d              # double 0.32925100000000002
	.quad	0x402101eecbfb15b5              # double 8.5037749999999992
	.quad	0x4018e180d3cff64d              # double 6.220218
	.quad	0x401fbfcf3dc054ef              # double 7.9373139999999997
	.quad	0x40224edcc20d562a              # double 9.1540280000000003
	.quad	0x4017d0ed80a17b0f              # double 5.9540309999999996
	.quad	0x40164e9185cee17a              # double 5.576727
	.quad	0x402089c1b54195cd              # double 8.2690560000000009
	.quad	0x40153411c2a02321              # double 5.3008490000000004
	.quad	0x401c715fcc1871e7              # double 7.1107170000000002
	.quad	0x4022838bac710cb3              # double 9.2569250000000007
	.quad	0x3fe138fde2ef4e01              # double 0.53820699999999999
	.quad	0x401d6b384fd2a62b              # double 7.3547070000000003
	.quad	0x3fffb2db1e9f2778              # double 1.981166
	.quad	0x3fa8fa7a85015c21              # double 0.048786000000000003
	.quad	0x40073cad9ad85dfb              # double 2.9046280000000002
	.quad	0x4022981450efdc9c              # double 9.2970299999999994
	.quad	0x402092b4d8ba40d9              # double 8.2865359999999999
	.quad	0x40023eea209aaa3b              # double 2.2807200000000001
	.quad	0x4018a43bf727136a              # double 6.1603849999999998
	.quad	0x40102c903ea704bc              # double 4.0435189999999999
	.quad	0x401e30e5e679463d              # double 7.547752
	.quad	0x40149c9107faa045              # double 5.1528970000000003
	.quad	0x4013a468448cf7cb              # double 4.9105540000000003
	.quad	0x4000fc126a65cf68              # double 2.1230820000000001
	.quad	0x4012729cfdd22856              # double 4.6119269999999997
	.quad	0x401fcbdba0a52696              # double 7.9490800000000004
	.quad	0x401b52b12d3415b1              # double 6.8307539999999998
	.quad	0x4011188d2a1f8e3b              # double 4.2739760000000002
	.quad	0x400f140fecdd0d8d              # double 3.8847960000000001
	.quad	0x401524b945308bb9              # double 5.285863
	.quad	0x40166322f2734f83              # double 5.596813
	.quad	0x4022b9094a2b9d3d              # double 9.3613990000000004
	.quad	0x3ff69a22f6a50d6b              # double 1.412631
	.quad	0x4000073de1e2de87              # double 2.003536
	.quad	0x40214a339c0ebee0              # double 8.6449250000000006
	.quad	0x4011a550ca1cef24              # double 4.4114409999999999
	.quad	0x40082612839042d9              # double 3.0185900000000001
	.quad	0x4022c29cfdd22856              # double 9.3801039999999993
	.quad	0x3ff06b1704ff4342              # double 1.0261450000000001
	.quad	0x4005cbe48a58b3f6              # double 2.7245569999999999
	.quad	0x401cea37ef5a964f              # double 7.2287290000000004
	.quad	0x4016f822ff08893b              # double 5.7423209999999996
	.quad	0x40211aa8650e7792              # double 8.5520659999999999
	.quad	0x40200feb6bf444e1              # double 8.0310930000000003
	.quad	0x3fe37abb8800eae2              # double 0.60873200000000005
	.quad	0x401d161bf37b8d3f              # double 7.2715909999999999
	.quad	0x40160bd230b9dc2f              # double 5.5115439999999998
	.quad	0x4020604039abf338              # double 8.1879899999999992
	.quad	0x3ff042517e77d524              # double 1.0161910000000001
	.quad	0x4018f4c37e6f71a8              # double 6.2390270000000001
	.quad	0x401bac2e770bd018              # double 6.9181460000000001
	.quad	0x400451afc04c8bca              # double 2.5398860000000001
	.quad	0x40159524399b2c41              # double 5.3956460000000002
	.quad	0x4010201c4fc1df33              # double 4.031358
	.quad	0x401690bd017dae82              # double 5.6413460000000004
	.quad	0x40210de0d66f0cfe              # double 8.5271059999999999
	.quad	0x400c53e1c9b41398              # double 3.5409579999999998
	.quad	0x4015e64adff822bc              # double 5.4748950000000001
	.quad	0x3ffde8997c3d6840              # double 1.8692869999999999
	.quad	0x3f9100a393ee5eee              # double 0.016604000000000001
	.quad	0x3fc12bba98eda22f              # double 0.13414699999999999
	.quad	0x400bfcc7d1bb4917              # double 3.4984280000000001
	.quad	0x3ff51c3dee781840              # double 1.3193950000000001
	.quad	0x40049886df82b1f7              # double 2.5744760000000002
	.quad	0x40152384fd2a62aa              # double 5.2846869999999999
	.quad	0x3fe3885d31337eb3              # double 0.61039600000000005
	.quad	0x400e2ad9274e22a3              # double 3.7709220000000001
	.quad	0x4015c9d2bf551505              # double 5.4470929999999997
	.quad	0x401af19ce075f6fd              # double 6.7359499999999999
	.quad	0x401620dd82fd75e2              # double 5.532095
	.quad	0x402059094a2b9d3d              # double 8.1738990000000005
	.quad	0x400ce6e08f217093              # double 3.612733
	.quad	0x4021f72ecf206424              # double 8.9827790000000007
	.quad	0x400db42aa9f7b5af              # double 3.7129720000000002
	.quad	0x3fb998aeb80ecfa7              # double 0.099986000000000005
	.quad	0x401aebc44bf4cb19              # double 6.7302410000000004
	.quad	0x3ff68a3b57c4e2f3              # double 1.4087479999999999
	.quad	0x3fe52aa9f7b5aea3              # double 0.66145799999999999
	.quad	0x4014aa925fe974a3              # double 5.1665739999999998
	.quad	0x4018bcf893faf428              # double 6.1845420000000004
	.quad	0x4020c9c9b4139863              # double 8.3941169999999996
	.quad	0x3ffba98244e93e1d              # double 1.7288840000000001
	.quad	0x4000a588a04d1202              # double 2.0808270000000002
	.quad	0x40163b5f1bef49cf              # double 5.5579799999999997
	.quad	0x400ef4373f316e37              # double 3.869246
	.quad	0x40193afd5454152b              # double 6.307607
	.quad	0x401ce0ef1348b220              # double 7.2196619999999996
	.quad	0x401e232ca57a786c              # double 7.5343499999999999
	.quad	0x3fca3a9f383f0baf              # double 0.20491400000000001
	.quad	0x4002a749f0e4da0a              # double 2.3316840000000001
	.quad	0x3fbf0142f61ed5ae              # double 0.121113
	.quad	0x40237c5996744b2b              # double 9.7428709999999991
	.quad	0x40182ec5f394b7b3              # double 6.0456770000000004
	.quad	0x400d7f06705c896e              # double 3.6870240000000001
	.quad	0x3fedc6887a8d64d8              # double 0.93048500000000001
	.quad	0x3ffaeb228dc981bf              # double 1.6824060000000001
	.quad	0x401f876e1deacc92              # double 7.8822559999999999
	.quad	0x401690d0247021d1              # double 5.641419
	.quad	0x40215b23571d1d47              # double 8.6780039999999996
	.quad	0x3ff36429e0a41a26              # double 1.211954
	.quad	0x401200b178b37004              # double 4.5006769999999996
	.quad	0x4019f524bfd2e947              # double 6.4893980000000004
	.quad	0x401099131ec0b567              # double 4.1494869999999997
	.quad	0x4022e32d4d4024b3              # double 9.4437049999999995
	.quad	0x3ff6c41248d7e026              # double 1.4228689999999999
	.quad	0x401cff633ce63a5c              # double 7.2494019999999999
	.quad	0x40003bd9cae21102              # double 2.0292240000000001
	.quad	0x4022db81b64e0547              # double 9.4287240000000007
	.quad	0x3ff6868661ae70c1              # double 1.407843
	.quad	0x40060235b4edb2f6              # double 2.7510789999999998
	.quad	0x400f961804d98394              # double 3.9482879999999998
	.quad	0x401b1bc01a36e2eb              # double 6.7770999999999999
	.quad	0x400883f3e0370cdd              # double 3.0644300000000002
	.quad	0x402327b4e54f7a92              # double 9.5775520000000007
	.quad	0x400038cb8e086bdf              # double 2.0277319999999999
	.quad	0x3ff0d9ac79702e66              # double 1.0531429999999999
	.quad	0x40014f56eac86057              # double 2.1637400000000002
	.quad	0x3ff7d650a45d41fa              # double 1.4898229999999999
	.quad	0x3fdbab21815a07b3              # double 0.43231999999999998
	.quad	0x3ff3f0e5e679463d              # double 1.246313
	.quad	0x401f0beb9e492bc3              # double 7.761641
	.quad	0x40004f9ca5bd944b              # double 2.0388730000000002
	.quad	0x4013cd041cc532a5              # double 4.9502110000000004
	.quad	0x3fe9b12f4cf4a559              # double 0.80287900000000001
	.quad	0x40182cabc5154867              # double 6.0436240000000003
	.quad	0x401f0d0dcfcc5b8e              # double 7.7627480000000002
	.quad	0x4011ffec99f1ae2e              # double 4.4999260000000003
	.quad	0x40219af661f18ca0              # double 8.8026610000000005
	.quad	0x4007db2a27f1b691              # double 2.9820139999999999
	.quad	0x40204109aed56b01              # double 8.127027
	.quad	0x401d9f284167a95d              # double 7.4054270000000004
	.quad	0x4021f6fe93187619              # double 8.9824110000000008
	.quad	0x40094955b4677b39              # double 3.1608079999999998
	.quad	0x402308a137f38c54              # double 9.5168549999999996
	.quad	0x401cefd2630ec311              # double 7.2342009999999997
	.quad	0x40208fb7414a4d2b              # double 8.2806949999999997
	.quad	0x3ff7aeaa6d267408              # double 1.480143
	.quad	0x4011bdea033e78e2              # double 4.4354630000000004
	.quad	0x4022cfa15db3397e              # double 9.4055280000000003
	.quad	0x4022a864883fd502              # double 9.3288919999999997
	.quad	0x4018ead7d7c2ca15              # double 6.2293390000000004
	.quad	0x401ac132f87ad081              # double 6.6886710000000003
	.quad	0x3fe06e503fb37436              # double 0.51346599999999998
	.quad	0x4004bef5232d2bb2              # double 2.5932409999999999
	.quad	0x3fdc22a6f3f52fc2              # double 0.43961499999999998
	.quad	0x3fed98c3b0c4588a              # double 0.924898
	.quad	0x401850f5e41d4b6a              # double 6.0790629999999997
	.quad	0x4022ceb56fb8f57f              # double 9.4037279999999991
	.quad	0x400a737110e453d2              # double 3.306368
	.quad	0x3ffee84167a95c85              # double 1.9317029999999999
	.quad	0x40031aec4a4095f2              # double 2.3881459999999999
	.quad	0x400902c3c9eecbfb              # double 3.12635
	.quad	0x400b385510d38cda              # double 3.4025059999999998
	.quad	0x4016021ab4b72c52              # double 5.5020550000000004
	.quad	0x401e327cbf6e3f79              # double 7.5493040000000002
	.quad	0x400404c8bc9cd3e1              # double 2.5023360000000001
	.quad	0x4018eff43419e300              # double 6.2343299999999999
	.quad	0x4011febbfd71b047              # double 4.4987640000000004
	.quad	0x3feb713ad5bee3d6              # double 0.857572
	.quad	0x400dd322f2734f83              # double 3.728094
	.quad	0x40042eb8950763a2              # double 2.5228130000000002
	.quad	0x4019f49adc8fb86f              # double 6.4888719999999998
	.quad	0x3ffe6b7fe08aefb3              # double 1.9012450000000001
	.quad	0x40113549731098d4              # double 4.3020379999999996
	.quad	0x401b8c16df3f9618              # double 6.886806
	.quad	0x4015c968d759ee89              # double 5.4466890000000001
	.quad	0x4015764a16a48733              # double 5.3655169999999996
	.quad	0x3fe1d9c27e953155              # double 0.55783199999999999
	.quad	0x3feac801f75104d5              # double 0.83691499999999996
	.quad	0x401cf3111f0c34c2              # double 7.2373700000000003
	.quad	0x4019fd7f950b955f              # double 6.4975569999999996
	.quad	0x401e6aeff5c6c11a              # double 7.6044309999999999
	.quad	0x40161e0828c36da8              # double 5.5293279999999996
	.quad	0x3ff382278d0cc35d              # double 1.219276
	.quad	0x401c4bbe878fabda              # double 7.073969
	.quad	0x401f8471715c63ae              # double 7.8793389999999999
	.quad	0x3ff99dcc63f14120              # double 1.6010249999999999
	.quad	0x400ca3265add9c28              # double 3.579663
	.quad	0x4008c1ecd4aa10e0              # double 3.0946899999999999
	.quad	0x4010b57f737da61e              # double 4.177244
	.quad	0x3ff526a875d56f33              # double 1.3219380000000001
	.quad	0x40234c3760bf5d79              # double 9.6488600000000008
	.quad	0x4020e74ea8da7f3d              # double 8.4517720000000001
	.quad	0x4018e3022dd7a9a0              # double 6.2216880000000003
	.quad	0x3ffbffe1975f2cb6              # double 1.7499709999999999
	.quad	0x3feea6937d1fe64f              # double 0.95783399999999996
	.quad	0x401986640a6b93cd              # double 6.3812410000000002
	.quad	0x4012a01c4fc1df33              # double 4.656358
	.quad	0x3ff6055eaee2003b              # double 1.3763110000000001
	.quad	0x4000d03b81b64e05              # double 2.1016759999999999
	.quad	0x4010db463497b741              # double 4.2141349999999997
	.quad	0x3fffa775fb2edfe7              # double 1.9783839999999999
	.quad	0x40119bea91d9b1b8              # double 4.4022620000000003
	.quad	0x401951986b9c304d              # double 6.3296830000000002
	.quad	0x402054ec84f8f8a5              # double 8.1658670000000004
	.quad	0x3fcbb584b1ab0857              # double 0.216477
	.quad	0x40184d5885d31338              # double 6.0755330000000001
	.quad	0x4022536ac647778e              # double 9.1629240000000003
	.quad	0x401926cebbba55d2              # double 6.2878980000000002
	.quad	0x401dd478c868b9fe              # double 7.4574920000000002
	.quad	0x401f2dba4d6e47dc              # double 7.7946559999999998
	.quad	0x40057b90ea9e6eeb              # double 2.6853349999999998
	.quad	0x401141bf37b8d3f2              # double 4.3142060000000004
	.quad	0x3ff5accf6be37de9              # double 1.3546899999999999
	.quad	0x4019bc521dda059a              # double 6.4339069999999996
	.quad	0x4014dda7f3cf7015              # double 5.2164609999999998
	.quad	0x4007f0539fba450b              # double 2.9923470000000001
	.quad	0x401e0ad03d9a9542              # double 7.5105599999999999
	.quad	0x4022b3ee807bbb62              # double 9.3514289999999995
	.quad	0x40219d9cf13cee9e              # double 8.8078380000000003
	.quad	0x3fd0553ac4f7ec35              # double 0.25520199999999998
	.quad	0x3fd7d72799a1fd15              # double 0.37250699999999998
	.quad	0x40227c5d206c8712              # double 9.2428980000000003
	.quad	0x402045e8b3b32053              # double 8.1365409999999994
	.quad	0x4016cba6266fd652              # double 5.6988760000000003
	.quad	0x40220dba2be0589b              # double 9.0268110000000004
	.quad	0x401d673797460243              # double 7.3507980000000002
	.quad	0x3ff64ef0281ba7fc              # double 1.394272
	.quad	0x40192635e74299d9              # double 6.2873150000000004
	.quad	0x401edc47e49b1fac              # double 7.7151180000000004
	.quad	0x3ff783547e06961c              # double 1.469563
	.quad	0x3ffb3b762d83c6c9              # double 1.7020169999999999
	.quad	0x40093164c729f59d              # double 3.1491180000000001
	.quad	0x3ff1fba3443d46b2              # double 1.1239349999999999
	.quad	0x401dd96f21f6cacd              # double 7.4623379999999999
	.quad	0x4015c97bfa4c61d8              # double 5.4467619999999997
	.quad	0x4021d54e6e221c8a              # double 8.9166139999999992
	.quad	0x3ff3c0c308feac43              # double 1.234561
	.quad	0x4019bad5bee3d5fe              # double 6.4324560000000002
	.quad	0x400e8dc8fb86f47b              # double 3.8192309999999998
	.quad	0x4007af72b4528284              # double 2.9606680000000001
	.quad	0x402288e0008637bd              # double 9.267334
	.quad	0x3fe153d640e9d51b              # double 0.54148399999999997
	.quad	0x401b228ae74f2f12              # double 6.7837329999999998
	.quad	0x40095eb4202d9cf1              # double 3.1712419999999999
	.quad	0x3fe61cac083126e9              # double 0.69099999999999995
	.quad	0x401926451b93037d              # double 6.2873729999999997
	.quad	0x3fe11314445aa2e4              # double 0.53357900000000003
	.quad	0x4017edf5cf2495e1              # double 5.9823829999999996
	.quad	0x4015bcbab649d389              # double 5.4343060000000003
	.quad	0x4021bbf50e347629              # double 8.8671039999999994
	.quad	0x4014a27c7c5260f6              # double 5.1586780000000001
	.quad	0x3fcbc4c165907d91              # double 0.216942
	.quad	0x3ff1123d4f15e7c9              # double 1.066953
	.quad	0x40008237cdcca70d              # double 2.0635829999999999
	.quad	0x400a862888b545c8              # double 3.3155070000000002
	.quad	0x40056ac96cc5fbf8              # double 2.6771419999999999
	.quad	0x400a9aba7b9170d6              # double 3.3255509999999999
	.quad	0x40213aba38759253              # double 8.6147019999999994
	.quad	0x400d8931876188b1              # double 3.691989
	.quad	0x401fa1276fb09204              # double 7.9073770000000003
	.quad	0x4012921fafc8b008              # double 4.6426990000000004
	.quad	0x4004d5ce18266773              # double 2.6043970000000001
	.quad	0x401949307af20ea6              # double 6.3214740000000003
	.quad	0x401c73f42352eb5f              # double 7.1132359999999997
	.quad	0x40204dc8fb86f47b              # double 8.1519239999999993
	.quad	0x40215a771c970f7c              # double 8.6766900000000006
	.quad	0x401d4db402d16b98              # double 7.325882
	.quad	0x4018c3b7952d234f              # double 6.1911300000000002
	.quad	0x40210f20ea5b530d              # double 8.5295480000000001
	.quad	0x401c7219652bd3c3              # double 7.1114249999999997
	.quad	0x402234d63cb81733              # double 9.1031969999999998
	.quad	0x3fffb2734f82f512              # double 1.9810669999999999
	.quad	0x4019efcac8e68e3f              # double 6.484172
	.quad	0x402311f383f0bae9              # double 9.5350610000000006
	.quad	0x401367f4dbdf8f47              # double 4.8515199999999998
	.quad	0x40100f8f8a4c1ebd              # double 4.0151960000000004
	.quad	0x401bb424e5929670              # double 6.9259219999999999
	.quad	0x40202ebe1650a45d              # double 8.0912939999999995
	.quad	0x4011ee0fc2eba27b              # double 4.4824820000000001
	.quad	0x402121c304ccee5b              # double 8.5659410000000005
	.quad	0x4004a2b3892ee84b              # double 2.5794440000000001
	.quad	0x4004c113c68661ae              # double 2.5942759999999998
	.quad	0x401546872b020c4a              # double 5.3188750000000002
	.quad	0x3ffc733daf8df7a5              # double 1.778135
	.quad	0x40027c6195464dc2              # double 2.3107329999999999
	.quad	0x400437c5692b3cc5              # double 2.5272320000000001
	.quad	0x401fee81882adc4d              # double 7.9829160000000003
	.quad	0x4022f2a305532618              # double 9.4739000000000004
	.quad	0x4020d5f3519bd406              # double 8.4178719999999991
	.quad	0x4011d361565c2d28              # double 4.4564260000000004
	.quad	0x40091feb074a771d              # double 3.1405850000000002
	.quad	0x3feed2007dd44135              # double 0.96313499999999996
	.quad	0x4016c92d55a3a084              # double 5.6964620000000004
	.quad	0x401f895464dc22ab              # double 7.8841109999999998
	.quad	0x40200596a6a0125a              # double 8.0109150000000007
	.quad	0x4005bd2d87f88766              # double 2.7173720000000001
	.quad	0x3fd36af89c5e6ff8              # double 0.30340400000000001
	.quad	0x400573f20a73f749              # double 2.6816140000000002
	.quad	0x3fe9e34549b62c77              # double 0.80899299999999996
	.quad	0x401a6800a7c5ac47              # double 6.6015649999999999
	.quad	0x4017de3b46fdeb53              # double 5.9670230000000002
	.quad	0x402021f79420b3d5              # double 8.0663420000000006
	.quad	0x4014868c692f6e83              # double 5.1313950000000004
	.quad	0x3ffd692e62131a8f              # double 1.838179
	.quad	0x401ea27d45a5fc7e              # double 7.6586809999999996
	.quad	0x401d04fa05143bf7              # double 7.2548599999999999
	.quad	0x40174c63ae2541d9              # double 5.8245990000000001
	.quad	0x4022ce2fdfc19c17              # double 9.4027089999999997
	.quad	0x401b649f0e4da09d              # double 6.8482630000000002
	.quad	0x3fc063a5c1c6088d              # double 0.12804099999999999
	.quad	0x4011c7585be1a826              # double 4.4446729999999999
	.quad	0x3fe5b024f6598e11              # double 0.67775200000000002
	.quad	0x3fe2ae924f227d03              # double 0.58381000000000005
	.quad	0x4012d2253111f0c3              # double 4.7052199999999997
	.quad	0x400862517e77d524              # double 3.0480070000000001
	.quad	0x40130a6eb91b3f21              # double 4.7601880000000003
	.quad	0x4023cd6fda836eb5              # double 9.9012440000000001
	.quad	0x401e4f4666ec9e23              # double 7.5774169999999996
	.quad	0x4017b6e115592d99              # double 5.9285930000000002
	.quad	0x4006b88ca3e7d135              # double 2.840112
	.quad	0x4020ffde939eadd6              # double 8.4997450000000008
	.quad	0x4019b84662bae03b              # double 6.4299559999999998
	.quad	0x40118945f9df548f              # double 4.3840560000000002
	.quad	0x3ff068ab4fa48302              # double 1.0255540000000001
	.quad	0x3ff41a5daf07bfe8              # double 1.256437
	.quad	0x3ff97779e9d0e992              # double 1.591669
	.quad	0x401a0df19d66adb4              # double 6.513617
	.quad	0x3ffe0e054690de09              # double 1.878423
	.quad	0x40145bf1a5ca2984              # double 5.0897889999999997
	.quad	0x401642efd438d1d9              # double 5.5653680000000003
	.quad	0x40175d96e9bbf0dc              # double 5.8413959999999996
	.quad	0x401480296b3354c1              # double 5.1251579999999999
	.quad	0x401135d462c343b7              # double 4.3025679999999999
	.quad	0x3ff77c382a12f901              # double 1.467827
	.quad	0x4021bf6c4827b6fe              # double 8.8738729999999997
	.quad	0x4015852d234eb9a1              # double 5.3800549999999996
	.quad	0x401291f75104d552              # double 4.6425450000000001
	.quad	0x3ffed62174c4cdfb              # double 1.927278
	.quad	0x3ff76c7eae5bc87e              # double 1.4639880000000001
	.quad	0x401490318b934699              # double 5.1408139999999998
	.quad	0x40206cfe79ee02a7              # double 8.2128789999999992
	.quad	0x4005a61cffeb074a              # double 2.7061099999999998
	.quad	0x4012285f4a1272c9              # double 4.5394259999999997
	.quad	0x3fe116659d12cade              # double 0.53398400000000001
	.quad	0x4017d3f316e37154              # double 5.956982
	.quad	0x4021391148fd9fd3              # double 8.6114599999999992
	.quad	0x40168cebfec13b9f              # double 5.6376189999999999
	.quad	0x402297a26a22b389              # double 9.2961609999999997
	.quad	0x400bfb951c5c5719              # double 3.497843
	.quad	0x402098e581cf7879              # double 8.2986260000000005
	.quad	0x401b944dca8e2e2c              # double 6.8948280000000004
	.quad	0x401dc8b827fa1a0d              # double 7.4460150000000001
	.quad	0x3f631a8ef77f27fe              # double 0.0023319999999999999
	.quad	0x4011c58750c1b973              # double 4.4428989999999997
	.quad	0x40024c1a8ac5c140              # double 2.2871600000000001
	.quad	0x402396789e774eec              # double 9.793889
	.quad	0x3fc06e75ff609dd0              # double 0.12837100000000001
	.quad	0x40217150331e3a7e              # double 8.7213150000000006
	.quad	0x4021dbd987c6327f              # double 8.9293940000000003
	.quad	0x3fff6a305532617c              # double 1.963425
	.quad	0x40156c03361565c3              # double 5.3554810000000002
	.quad	0x40107d6a161e4f76              # double 4.1224749999999997
	.quad	0x40158182235b4edb              # double 5.3764729999999998
	.quad	0x40064e4ead0c3d25              # double 2.7882359999999999
	.quad	0x4021fbc33f85510d              # double 8.9917239999999996
	.quad	0x4017c59f2ba9d1f6              # double 5.94299
	.quad	0x40205f02a3486f05              # double 8.1855670000000007
	.quad	0x400255525cc42635              # double 2.2916609999999999
	.quad	0x40160face67d77fb              # double 5.5153080000000001
	.quad	0x3fe96a26e5471716              # double 0.79420800000000003
	.quad	0x3ff320ccff21b3af              # double 1.195508
	.quad	0x4010eb18dac258d6              # double 4.2295870000000004
	.quad	0x4014e4e3369b9d80              # double 5.2235230000000001
	.quad	0x3ffb21693c03bc4d              # double 1.695657
	.quad	0x4021603ea704bc27              # double 8.6879779999999993
	.quad	0x4012f825e13b18db              # double 4.7423320000000002
	.quad	0x3fee500f776c4828              # double 0.94727300000000003
	.quad	0x40059a6f826edaa9              # double 2.7004079999999999
	.quad	0x4003b529fe004b7f              # double 2.4634589999999998
	.quad	0x4014614a0a0f4d7b              # double 5.0950090000000001
	.quad	0x402280b04ab606b8              # double 9.2513450000000005
	.quad	0x4017656366d7a56e              # double 5.8490120000000001
	.quad	0x401c8a76534373f3              # double 7.1352169999999999
	.quad	0x3ff383211cb039ef              # double 1.219514
	.quad	0x3ffd1cbccf28c79f              # double 1.8195159999999999
	.quad	0x401e7e6afcce1c58              # double 7.6234549999999998
	.quad	0x400a457c914b167f              # double 3.2839290000000001
	.quad	0x401f7672b884406c              # double 7.865672
	.quad	0x401806fef7c243dd              # double 6.0068320000000002
	.quad	0x4001f10a99b6f5cb              # double 2.242696
	.quad	0x40123813879c4114              # double 4.5547620000000002
	.quad	0x400d6dd26b723ee2              # double 3.6786240000000001
	.quad	0x40237040181e03f7              # double 9.7192389999999999
	.quad	0x4004e69ced0b30b6              # double 2.6126040000000001
	.quad	0x3ffb7154003254e7              # double 1.715168
	.quad	0x3ffe8a5df2239e6b              # double 1.9087810000000001
	.quad	0x401a297f1f9acffa              # double 6.5405239999999996
	.quad	0x3fc030db6a1e81cb              # double 0.12649099999999999
	.quad	0x400dda1b9f98b71c              # double 3.7314980000000002
	.quad	0x4015a5daad601ffb              # double 5.4119669999999998
	.quad	0x4019a4b7b28954a8              # double 6.410857
	.quad	0x3ffb94163779e9d1              # double 1.723654
	.quad	0x3fef3422467be554              # double 0.97511400000000003
	.quad	0x3ffe2fb6dca07f67              # double 1.886649
	.quad	0x40207efd86a8fc0d              # double 8.2480279999999997
	.quad	0x40213b17481b21c4              # double 8.6154119999999991
	.quad	0x4022b79096bb98c8              # double 9.3585250000000002
	.quad	0x402373dfd2630ec3              # double 9.7263169999999998
	.quad	0x3fd9158750c1b973              # double 0.39193899999999998
	.quad	0x401d4d9620685554              # double 7.3257680000000001
	.quad	0x40223c34e3369b9d              # double 9.1175909999999991
	.quad	0x401e15c1c6088d6d              # double 7.5212469999999997
	.quad	0x40100bdfd2630ec3              # double 4.0115959999999999
	.quad	0x4020c51f3e89a88b              # double 8.3850040000000003
	.quad	0x4020f704ddb5525d              # double 8.4824590000000004
	.quad	0x40215adf9378ee28              # double 8.6774869999999993
	.quad	0x402336d1394317ad              # double 9.6070650000000004
	.quad	0x40216681cb46bacf              # double 8.7002089999999992
	.quad	0x4009830d306a2b17              # double 3.18899
	.quad	0x4010fc5bd0e12e84              # double 4.2464440000000003
	.quad	0x400cb5aa715831f0              # double 3.5887039999999999
	.quad	0x401879aae6c8f755              # double 6.1188159999999998
	.quad	0x4019de260b2c83ed              # double 6.4669420000000004
	.quad	0x400b88ebcc6c54bd              # double 3.441856
	.quad	0x40001baba7b9170d              # double 2.0135109999999998
	.quad	0x3fe30bbb1f255f35              # double 0.59518199999999999
	.quad	0x40142d074213a0c7              # double 5.0439730000000003
	.quad	0x4002d16b11c6d1e1              # double 2.352255
	.quad	0x4011629888f861a6              # double 4.346285
	.quad	0x4010661f9f01b867              # double 4.0997300000000001
	.quad	0x400775410f94c87a              # double 2.9322530000000002
	.quad	0x40120ccd530489d2              # double 4.5125019999999996
	.quad	0x4020ec37c5692b3d              # double 8.4613630000000004
	.quad	0x3fdb6234a87e38eb              # double 0.427869
	.quad	0x4016b97bfa4c61d8              # double 5.6811369999999997
	.quad	0x40195efc371da37f              # double 6.342759
	.quad	0x400309dadfb506dd              # double 2.3798119999999998
	.quad	0x4013cdab5c39bcba              # double 4.9508489999999998
	.quad	0x4001da7008a697af              # double 2.2316590000000001
	.quad	0x40025506dd69d302              # double 2.2915169999999998
	.quad	0x400c09c12f09d8c7              # double 3.5047630000000001
	.quad	0x4013ffbd273d5bab              # double 4.9997449999999999
	.quad	0x4023b525edd05293              # double 9.8538049999999994
	.quad	0x4020193c46d82ba6              # double 8.0492880000000007
	.quad	0x40025728a6117721              # double 2.2925580000000001
	.quad	0x3fec4636b0963561              # double 0.883571
	.quad	0x4015f3ade225fa66              # double 5.4879680000000004
	.quad	0x400032f7f498c3b1              # double 2.0248870000000001
	.quad	0x402064144028e4fc              # double 8.1954670000000007
	.quad	0x3ffd47735c182ecb              # double 1.829944
	.quad	0x40184554fbdad752              # double 6.0677070000000004
	.quad	0x401c7a4e7ab75643              # double 7.11944
	.quad	0x4020980a7c5ac472              # double 8.2969550000000005
	.quad	0x4014d238da3c2118              # double 5.2052949999999996
	.quad	0x401c468ad6883772              # double 7.0688890000000004
	.quad	0x4015919e731d2e0e              # double 5.3922059999999998
	.quad	0x401ed34b51372a39              # double 7.7063420000000002
	.quad	0x40122e0370cdc875              # double 4.5449349999999997
	.quad	0x40223659af9ebe9d              # double 9.1061530000000008
	.quad	0x400f4777079e59f3              # double 3.9098950000000001
	.quad	0x401877e9d94d0dd0              # double 6.1171030000000002
	.quad	0x3fdd31593e5fb720              # double 0.45613700000000001
	.quad	0x3fe9ab6f19934efd              # double 0.80217700000000003
	.quad	0x4013718f3eccc469              # double 4.8608979999999997
	.quad	0x3fe4d78811b1d92b              # double 0.65130999999999994
	.quad	0x401a5af6837f7be1              # double 6.5888309999999999
	.quad	0x4009658ab92c0618              # double 3.1745809999999999
	.quad	0x401e72a5a469d734              # double 7.6119599999999998
	.quad	0x3ff16e1693c03bc5              # double 1.089377
	.quad	0x40225c4f7ec3547e              # double 9.180294
	.quad	0x401e27e49b1fab97              # double 7.538958
	.quad	0x4023e64a16a48733              # double 9.9497839999999992
	.quad	0x400101ac57e23f25              # double 2.1258170000000001
	.quad	0x3fcc06e9ff0cbaf9              # double 0.21896099999999999
	.quad	0x400b186d2ed783e0              # double 3.386927
	.quad	0x4010ee9e1b089a02              # double 4.2330249999999996
	.quad	0x401299adc8fb86f4              # double 4.6500769999999996
	.quad	0x4002ef7b9e060fe4              # double 2.3669349999999998
	.quad	0x4004a3fee2c98e54              # double 2.580076
	.quad	0x401e2682730c6717              # double 7.5376070000000003
	.quad	0x401ba06e9ff0cbb0              # double 6.9066720000000004
	.quad	0x3fe594141e9af5ba              # double 0.67432599999999998
	.quad	0x400f708a265f0f5a              # double 3.929951
	.quad	0x4016909fe86833c6              # double 5.641235
	.quad	0x401edce8d972cd7d              # double 7.715732
	.quad	0x401d6a32f4491299              # double 7.3537100000000004
	.quad	0x401808bb0a2ca9ac              # double 6.0085259999999998
	.quad	0x4015541461b6d43d              # double 5.332109
	.quad	0x4021d8ef99806f26              # double 8.9237029999999997
	.quad	0x401e4bbf0dc768e0              # double 7.5739710000000002
	.quad	0x40223bdc054ef45a              # double 9.1169130000000003
	.quad	0x4018cbe8ff327aa7              # double 6.1991310000000004
	.quad	0x4013cf0dc768dfbd              # double 4.9522009999999996
	.quad	0x402278e1f7d73c92              # double 9.2360989999999994
	.quad	0x40085162ae4b0186              # double 3.039739
	.quad	0x40156462c343b70f              # double 5.348033
	.quad	0x402361424e592967              # double 9.6899589999999999
	.quad	0x401557dd872f33ca              # double 5.3358059999999998
	.quad	0x3fe76050374ff866              # double 0.73050700000000002
	.quad	0x3ff1ae7e62dc6e2b              # double 1.1051010000000001
	.quad	0x40222250f840181e              # double 9.067024
	.quad	0x3fed36c9c0a8d21c              # double 0.91293800000000002
	.quad	0x40232fdf5cf2495e              # double 9.5935009999999998
	.quad	0x4021cb7281fd9ba2              # double 8.8973580000000005
	.quad	0x40239f6a2f48c2e7              # double 9.8113569999999992
	.quad	0x40201eac42e9899c              # double 8.059908
	.quad	0x4003049a133c1ce7              # double 2.3772470000000001
	.quad	0x401b5dcf893faf42              # double 6.8416119999999996
	.quad	0x40185e297396d091              # double 6.0919549999999996
	.quad	0x4017e39c0ebedfa4              # double 5.9722749999999998
	.quad	0x4010cf60e0eb67c3              # double 4.2025180000000004
	.quad	0x3fd69a5a89b951c6              # double 0.35317100000000001
	.quad	0x401e7663c74fb54a              # double 7.615615
	.quad	0x40231c2e12620254              # double 9.5550390000000007
	.quad	0x4020f0956c0d6f54              # double 8.4698899999999994
	.quad	0x4011892ccf6be37e              # double 4.3839600000000001
	.quad	0x401c3fe79ee02a78              # double 7.0624070000000003
	.quad	0x4021ee76427c7c52              # double 8.9657459999999993
	.quad	0x3fa2862f5989df11              # double 0.036179999999999997
	.quad	0x4010a370cdc8754f              # double 4.1596099999999998
	.quad	0x401a33b03e20ccff              # double 6.5504769999999999
	.quad	0x400b146994185059              # double 3.3849670000000001
	.quad	0x401b7ec0b567557a              # double 6.8737820000000003
	.quad	0x4019af99806f2629              # double 6.4214840000000004
	.quad	0x401e7a0902de00d2              # double 7.6191750000000003
	.quad	0x400660724b76f6d7              # double 2.7970929999999998
	.quad	0x40099c0229a5ebb7              # double 3.2011759999999998
	.quad	0x3fe9f8d2e514c22f              # double 0.81162400000000001
	.quad	0x4021e141e9af5ba3              # double 8.9399560000000005
	.quad	0x40150be8ff327aa7              # double 5.2616310000000004
	.quad	0x3ff086e4c0df58c1              # double 1.0329330000000001
	.quad	0x40225ee2c98e53eb              # double 9.1853239999999996
	.quad	0x40048e74f2f123c4              # double 2.5695589999999999
	.quad	0x4010be09784ec637              # double 4.1855830000000003
	.quad	0x40171bca5375c8da              # double 5.777139
	.quad	0x4017c459d99029ae              # double 5.9417489999999997
	.quad	0x40140db9c7368ad7              # double 5.0134040000000004
	.quad	0x40198fbfc6540cc8              # double 6.3903800000000004
	.quad	0x40154c521dda059a              # double 5.3245319999999996
	.quad	0x3fea2eab7995ee13              # double 0.81819699999999995
	.quad	0x401856a3bddfca00              # double 6.0846090000000004
	.quad	0x4004f2702a3486f0              # double 2.6183779999999999
	.quad	0x400b8af6837f7be1              # double 3.4428529999999999
	.quad	0x400e797460242d06              # double 3.809304
	.quad	0x4010dedaa92e6213              # double 4.2176309999999999
	.quad	0x400dc36199780baa              # double 3.7204009999999998
	.quad	0x3ff096a8b8f14db6              # double 1.0367820000000001
	.quad	0x4021811dffc5479d              # double 8.7521819999999995
	.quad	0x401f787ce95faa8b              # double 7.8676640000000004
	.size	.L__constant_1999xf64, 15992

	.section	".note.GNU-stack","",@progbits
