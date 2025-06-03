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
	.quad	0x41375d9fb372e6a7              # double 1531295.7009719999
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
	.quad	70                              # 0x46
	.quad	91                              # 0x5b
	.quad	140                             # 0x8c
	.quad	158                             # 0x9e
	.quad	179                             # 0xb3
	.quad	226                             # 0xe2
	.quad	249                             # 0xf9
	.quad	272                             # 0x110
	.quad	318                             # 0x13e
	.quad	341                             # 0x155
	.quad	363                             # 0x16b
	.quad	411                             # 0x19b
	.quad	428                             # 0x1ac
	.quad	453                             # 0x1c5
	.quad	504                             # 0x1f8
	.quad	525                             # 0x20d
	.quad	545                             # 0x221
	.quad	596                             # 0x254
	.quad	620                             # 0x26c
	.quad	642                             # 0x282
	.quad	686                             # 0x2ae
	.quad	706                             # 0x2c2
	.quad	724                             # 0x2d4
	.quad	767                             # 0x2ff
	.quad	798                             # 0x31e
	.quad	819                             # 0x333
	.quad	870                             # 0x366
	.quad	897                             # 0x381
	.quad	918                             # 0x396
	.quad	968                             # 0x3c8
	.quad	984                             # 0x3d8
	.quad	1007                            # 0x3ef
	.quad	1054                            # 0x41e
	.quad	1074                            # 0x432
	.quad	1101                            # 0x44d
	.quad	1150                            # 0x47e
	.quad	1179                            # 0x49b
	.quad	1202                            # 0x4b2
	.quad	1246                            # 0x4de
	.quad	1268                            # 0x4f4
	.quad	1286                            # 0x506
	.quad	1332                            # 0x534
	.quad	1353                            # 0x549
	.quad	1378                            # 0x562
	.quad	1419                            # 0x58b
	.quad	1442                            # 0x5a2
	.quad	1462                            # 0x5b6
	.quad	1515                            # 0x5eb
	.quad	1537                            # 0x601
	.quad	1551                            # 0x60f
	.quad	1597                            # 0x63d
	.quad	1624                            # 0x658
	.quad	1644                            # 0x66c
	.quad	1692                            # 0x69c
	.quad	1712                            # 0x6b0
	.quad	1732                            # 0x6c4
	.quad	1779                            # 0x6f3
	.quad	1798                            # 0x706
	.quad	1818                            # 0x71a
	.quad	1870                            # 0x74e
	.quad	1891                            # 0x763
	.quad	1910                            # 0x776
	.quad	1954                            # 0x7a2
	.quad	1971                            # 0x7b3
	.quad	1995                            # 0x7cb
	.quad	2049                            # 0x801
	.quad	2063                            # 0x80f
	.quad	2080                            # 0x820
	.quad	2129                            # 0x851
	.quad	2145                            # 0x861
	.quad	2174                            # 0x87e
	.quad	2220                            # 0x8ac
	.quad	2245                            # 0x8c5
	.quad	2264                            # 0x8d8
	.quad	2311                            # 0x907
	.quad	2326                            # 0x916
	.quad	2346                            # 0x92a
	.quad	2394                            # 0x95a
	.quad	2417                            # 0x971
	.quad	2443                            # 0x98b
	.quad	2495                            # 0x9bf
	.quad	2512                            # 0x9d0
	.quad	2536                            # 0x9e8
	.quad	2580                            # 0xa14
	.quad	2599                            # 0xa27
	.quad	2617                            # 0xa39
	.quad	2667                            # 0xa6b
	.quad	2680                            # 0xa78
	.quad	2700                            # 0xa8c
	.quad	2747                            # 0xabb
	.quad	2771                            # 0xad3
	.quad	2790                            # 0xae6
	.quad	2840                            # 0xb18
	.quad	2862                            # 0xb2e
	.quad	2877                            # 0xb3d
	.quad	2922                            # 0xb6a
	.quad	2937                            # 0xb79
	.quad	2961                            # 0xb91
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
	.quad	0                               # 0x0
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	33                              # 0x21
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
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
	.quad	25                              # 0x19
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
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	27                              # 0x1b
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
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	40                              # 0x28
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	95                              # 0x5f
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	62                              # 0x3e
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	96                              # 0x60
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
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
	.quad	22                              # 0x16
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
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	62                              # 0x3e
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
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
	.quad	25                              # 0x19
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	89                              # 0x59
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
	.quad	22                              # 0x16
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
	.quad	52                              # 0x34
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
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
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
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
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
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
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
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	81                              # 0x51
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
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
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
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
	.quad	41                              # 0x29
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
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	75                              # 0x4b
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
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
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
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
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
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
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	46                              # 0x2e
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
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
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
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	74                              # 0x4a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
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
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
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
	.quad	73                              # 0x49
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
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	42                              # 0x2a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
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
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
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
	.quad	16                              # 0x10
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
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	37                              # 0x25
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
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
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
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
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
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
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.size	.L__constant_3000xindex, 24000

	.type	.L__constant_3000xf64,@object   # @__constant_3000xf64
	.p2align	6, 0x0
.L__constant_3000xf64:
	.quad	0x4017e0ccbc05d52c              # double 5.9695309999999999
	.quad	0x40162ca643cc07ab              # double 5.5436030000000001
	.quad	0x3ff7c22ab25b317f              # double 1.484904
	.quad	0x401de2c3009b3073              # double 7.4714470000000004
	.quad	0x3ffd883fd5022574              # double 1.845764
	.quad	0x401b8d080b673c4f              # double 6.8877259999999998
	.quad	0x401ebfa82e87d2c8              # double 7.6871650000000002
	.quad	0x40103e71044f1a1a              # double 4.0609780000000004
	.quad	0x401302ecaeea63b7              # double 4.7528560000000004
	.quad	0x4010e464dc22ab26              # double 4.2230410000000003
	.quad	0x4022a1c90c4dec1c              # double 9.3159869999999997
	.quad	0x401420c1fc8f3238              # double 5.0319900000000004
	.quad	0x3ff647b24638c975              # double 1.392504
	.quad	0x4020428ac5c13fd1              # double 8.1299650000000003
	.quad	0x4023815bdd76683c              # double 9.7526539999999997
	.quad	0x401f9e8af81626b3              # double 7.904827
	.quad	0x400a33f7ced91687              # double 3.2753749999999999
	.quad	0x3ff412be48a58b3f              # double 1.2545759999999999
	.quad	0x400542c669057d18              # double 2.6576050000000002
	.quad	0x400209057d1782d4              # double 2.2544050000000002
	.quad	0x401f004816f0068e              # double 7.7502750000000002
	.quad	0x401e10b178b37004              # double 7.5163019999999996
	.quad	0x4021fbd3e4ef0282              # double 8.9918510000000005
	.quad	0x4016805c4651f3e9              # double 5.6253520000000004
	.quad	0x40235c9ea9a3d2d8              # double 9.6808979999999991
	.quad	0x401e037a80cf9e38              # double 7.5033969999999996
	.quad	0x40209f90d9d7774b              # double 8.3116520000000005
	.quad	0x402009f01b866e44              # double 8.0194100000000005
	.quad	0x3ff444b5dcc63f14              # double 1.266775
	.quad	0x4011cd4b2745bf27              # double 4.450482
	.quad	0x3fffb7de939eadd6              # double 1.9823900000000001
	.quad	0x3fd968448cf7caa7              # double 0.39698899999999998
	.quad	0x4014487a072d1aeb              # double 5.0707779999999998
	.quad	0x3fba6612839042d9              # double 0.10312
	.quad	0x400209a1b9f98b72              # double 2.2547030000000001
	.quad	0x3fe10e23af31b153              # double 0.53297600000000001
	.quad	0x3ff3ff21b3aeee95              # double 1.2497879999999999
	.quad	0x3ff7c05814940bbb              # double 1.484459
	.quad	0x40161cdfefbf401c              # double 5.5281979999999997
	.quad	0x3ff7bb29a1b9f98b              # double 1.4831939999999999
	.quad	0x400d24aa53fc0097              # double 3.642903
	.quad	0x3fc151a437824d4d              # double 0.13530400000000001
	.quad	0x400773387160956c              # double 2.93126
	.quad	0x4018463a5c1c6089              # double 6.0685820000000001
	.quad	0x4019841dd1a21ea3              # double 6.3790199999999997
	.quad	0x40072bcf91a32b13              # double 2.8963920000000001
	.quad	0x40103b2b3461309c              # double 4.0577819999999996
	.quad	0x400da14a4d2b2bfe              # double 3.7037550000000001
	.quad	0x401ab34117f8444a              # double 6.6750530000000001
	.quad	0x401b662c343b70ef              # double 6.8497779999999997
	.quad	0x40043e6687f455a8              # double 2.5304690000000001
	.quad	0x4021c1904b3c3e75              # double 8.8780540000000006
	.quad	0x3ff012e83a109d06              # double 1.004616
	.quad	0x4013942396073de2              # double 4.8946670000000001
	.quad	0x40129f4666ec9e23              # double 4.6555419999999996
	.quad	0x40036c5974e65bea              # double 2.427905
	.quad	0x3ff71c5931ca7d67              # double 1.444421
	.quad	0x401ec93250b5243a              # double 7.6964810000000003
	.quad	0x3ffd11f926c7eae6              # double 1.8168880000000001
	.quad	0x40069aa4fca42aed              # double 2.82551
	.quad	0x402105117b5286b6              # double 8.5098990000000008
	.quad	0x400f043dccea28fe              # double 3.8770709999999999
	.quad	0x4018eb4bb5e0f7fd              # double 6.229781
	.quad	0x4008a0b88ca3e7d1              # double 3.0784769999999999
	.quad	0x4020847368ad6883              # double 8.2586929999999992
	.quad	0x4022dee88df3732a              # double 9.4353680000000004
	.quad	0x3fdde2eb1c432ca5              # double 0.46697499999999997
	.quad	0x40232c9a77e5eaab              # double 9.5871159999999999
	.quad	0x4020b3c7d5ed06ff              # double 8.3511340000000001
	.quad	0x3fcbdfe32a0663c7              # double 0.21776999999999999
	.quad	0x401c04f50a02b841              # double 7.0048409999999999
	.quad	0x3fe9a66fd651b0cd              # double 0.80156700000000003
	.quad	0x401ae54f7a919696              # double 6.7239360000000001
	.quad	0x401b8f6555c52e73              # double 6.8900350000000001
	.quad	0x401b73f034b0e1b5              # double 6.8632210000000002
	.quad	0x3fe400ef1348b220              # double 0.62511399999999995
	.quad	0x4003f1b4fe79ee03              # double 2.4930210000000002
	.quad	0x4023dc1919ac7970              # double 9.9298789999999997
	.quad	0x4003e49a133c1ce7              # double 2.4866220000000001
	.quad	0x401f55bbbe878fac              # double 7.8337240000000001
	.quad	0x400c7fd694ccab3f              # double 3.5624210000000001
	.quad	0x4017b5f6fd21ff2e              # double 5.9276999999999997
	.quad	0x3fe588d6d3b6cbda              # double 0.67295400000000005
	.quad	0x3fe4856605ee568a              # double 0.64128399999999997
	.quad	0x3febbd44998d0460              # double 0.86685400000000001
	.quad	0x4019a7c6b8b69553              # double 6.4138440000000001
	.quad	0x4012fb178b370047              # double 4.7452069999999997
	.quad	0x40195d6ba8c58687              # double 6.3412309999999996
	.quad	0x4000021f2990f302              # double 2.001036
	.quad	0x40021ff151e75361              # double 2.2655970000000001
	.quad	0x4011e556d19dece5              # double 4.4739639999999996
	.quad	0x40099ce746cb966c              # double 3.201613
	.quad	0x4023f26937d1fe65              # double 9.973459
	.quad	0x401f2ce28ed5f139              # double 7.7938330000000002
	.quad	0x40220525247cb70b              # double 9.0100490000000004
	.quad	0x401733a29c779a6b              # double 5.8004249999999997
	.quad	0x3fe41d4f9c1f85d7              # double 0.62857799999999997
	.quad	0x4013162174c4cdfb              # double 4.7716120000000002
	.quad	0x402323d25247cb71              # double 9.5699640000000005
	.quad	0x4016a02d16b97fe9              # double 5.6564220000000001
	.quad	0x401369420b3d4ae4              # double 4.8527909999999999
	.quad	0x401b9854477ff152              # double 6.8987590000000001
	.quad	0x40144d8be7296f65              # double 5.0757289999999999
	.quad	0x3fd133c1ce6c093e              # double 0.26878400000000002
	.quad	0x3ff5545d851654d6              # double 1.333097
	.quad	0x3fe81a176ddaceee              # double 0.75318499999999999
	.quad	0x4016a8a8b08dd1e5              # double 5.6647059999999998
	.quad	0x400f5aa1511dffc5              # double 3.9192529999999999
	.quad	0x4003ee392e1ef73c              # double 2.49132
	.quad	0x40217c5b291b823d              # double 8.7428830000000008
	.quad	0x3fd246173b85e80c              # double 0.285528
	.quad	0x40140d577963992d              # double 5.0130290000000004
	.quad	0x401802db61bb05fb              # double 6.0027900000000001
	.quad	0x40095a7221858bc6              # double 3.1691630000000002
	.quad	0x40104ebb7739f341              # double 4.0768870000000001
	.quad	0x40164cb7d41743e9              # double 5.5749199999999997
	.quad	0x400d5cb6848beb5b              # double 3.6702699999999999
	.quad	0x401aacb9ecf63800              # double 6.6686779999999999
	.quad	0x401140f16f4384ba              # double 4.3134209999999999
	.quad	0x400887ad080b673c              # double 3.0662479999999999
	.quad	0x401c4ee02a77a2cf              # double 7.0770270000000002
	.quad	0x400aa077036c9c0b              # double 3.3283520000000002
	.quad	0x3ff275989df1172f              # double 1.15371
	.quad	0x4022e5ee136e71ce              # double 9.4490820000000006
	.quad	0x4005be9d94d0dcfd              # double 2.7180740000000001
	.quad	0x40128d084e831ad2              # double 4.6377269999999999
	.quad	0x4010bc0ebedfa440              # double 4.1836500000000001
	.quad	0x40225618ac9f2fdc              # double 9.1681570000000007
	.quad	0x401d1fa615a8deb1              # double 7.280907
	.quad	0x4015b43ed959a30a              # double 5.4260210000000004
	.quad	0x401f9b0318b9346a              # double 7.9013790000000004
	.quad	0x3fe0256ffc115df6              # double 0.50456999999999996
	.quad	0x4020c0e970718223              # double 8.3767809999999994
	.quad	0x4009a0bcbe61cfff              # double 3.2034850000000001
	.quad	0x40212055757d5a9f              # double 8.5631520000000005
	.quad	0x40222a1d53cddd6e              # double 9.082255
	.quad	0x4001933764f11b61              # double 2.1968830000000001
	.quad	0x400c0d74927913e8              # double 3.50657
	.quad	0x3ff4a1e4f765fd8b              # double 1.289525
	.quad	0x3fc37f62b6ae7d56              # double 0.15232499999999999
	.quad	0x400a602c0a4a05de              # double 3.2969590000000002
	.quad	0x4022e8a7e73a365d              # double 9.4544060000000005
	.quad	0x3ff7fac929aa1d75              # double 1.4987269999999999
	.quad	0x401edea18372e6a7              # double 7.7174129999999996
	.quad	0x402131a6b50b0f28              # double 8.5969750000000005
	.quad	0x3ff2a277c45cbbc3              # double 1.1646650000000001
	.quad	0x401880c996b7670a              # double 6.125769
	.quad	0x3fd54a6a875d56f3              # double 0.33266699999999999
	.quad	0x3ffcc0c0f01fb82c              # double 1.797059
	.quad	0x40118a4c61d8622c              # double 4.3850569999999998
	.quad	0x401ce34267839cd8              # double 7.2219329999999999
	.quad	0x401b4b6d00b45ae6              # double 6.823658
	.quad	0x4022c0f062d40aaf              # double 9.3768340000000005
	.quad	0x4008e9014b599aa6              # double 3.113772
	.quad	0x401b48ee28672757              # double 6.8212210000000004
	.quad	0x401e70e8c8abd5dc              # double 7.6102629999999998
	.quad	0x3ff7408c8259e1f4              # double 1.4532590000000001
	.quad	0x4003a181e03f7058              # double 2.4538609999999998
	.quad	0x4017e749f0e4da0a              # double 5.9758680000000002
	.quad	0x401a79210385c67e              # double 6.61829
	.quad	0x40222b897204295a              # double 9.0850329999999992
	.quad	0x4017be90ff972474              # double 5.9360999999999997
	.quad	0x3ff730281ba7fc33              # double 1.449257
	.quad	0x3fe0a68d32830a0b              # double 0.52033099999999999
	.quad	0x3fe83e5753a3ec03              # double 0.75761000000000001
	.quad	0x3fdbd45a5fc7e6b4              # double 0.434836
	.quad	0x4021008d6d3b6cbe              # double 8.5010790000000007
	.quad	0x4022c862b27cbf6e              # double 9.3913779999999996
	.quad	0x401b72a1f8e3ac0c              # double 6.8619459999999997
	.quad	0x401dc0b8066c2acc              # double 7.4382020000000004
	.quad	0x401881c8a7a41e58              # double 6.1267420000000001
	.quad	0x400a04db9c7368ad              # double 3.2523719999999998
	.quad	0x4018dd441355475a              # double 6.2160799999999998
	.quad	0x401f2df86e3b46fe              # double 7.7948930000000001
	.quad	0x4002e262cba732df              # double 2.3605399999999999
	.quad	0x4017ed50a88effe3              # double 5.9817530000000003
	.quad	0x402327e75bc44bf5              # double 9.5779370000000003
	.quad	0x3ff821c15097c808              # double 1.5082409999999999
	.quad	0x3ff890d6b228dc98              # double 1.535361
	.quad	0x402332224edf6124              # double 9.5979179999999999
	.quad	0x3fed75b1c8648840              # double 0.92061700000000001
	.quad	0x4010e9ea57214f05              # double 4.2284329999999999
	.quad	0x401af52007dd4413              # double 6.7393799999999997
	.quad	0x402017a7a85015c2              # double 8.0462009999999999
	.quad	0x4004e2c1b10fd7e4              # double 2.6107209999999998
	.quad	0x402383b341e14be0              # double 9.7572270000000003
	.quad	0x40131af709b738e7              # double 4.7763330000000002
	.quad	0x3fbb7531db445ed5              # double 0.10725700000000001
	.quad	0x4011aff9f87f023f              # double 4.4218520000000003
	.quad	0x3ffb899392189bd8              # double 1.721088
	.quad	0x4022e891c087442c              # double 9.4542369999999991
	.quad	0x40025a8a3f8982cb              # double 2.2942089999999999
	.quad	0x40151e586013660e              # double 5.2796339999999997
	.quad	0x3ff520d130df9bdc              # double 1.3205119999999999
	.quad	0x40190cecc814d728              # double 6.2626220000000004
	.quad	0x4013a20b3d4ae42a              # double 4.9082460000000001
	.quad	0x3fb0e1c58255b036              # double 0.065945000000000004
	.quad	0x400def2b66b6177f              # double 3.7417820000000002
	.quad	0x402206f7a0b5ed8d              # double 9.0136079999999996
	.quad	0x3fe742f61ed5ae1d              # double 0.72692400000000001
	.quad	0x401a527d45a5fc7e              # double 6.5805559999999996
	.quad	0x40023a52ac753e70              # double 2.2784779999999998
	.quad	0x401730cdc8754f37              # double 5.7976599999999996
	.quad	0x40164f262888b546              # double 5.5772940000000002
	.quad	0x3f9304ccee5abc0e              # double 0.018572999999999999
	.quad	0x400f2d16b97fe8ee              # double 3.8970159999999998
	.quad	0x4012b9f7f8ca8199              # double 4.68161
	.quad	0x401e79e9d0e991ff              # double 7.6190559999999996
	.quad	0x4023f947064ece9a              # double 9.9868699999999997
	.quad	0x4022dc21187e7c07              # double 9.4299400000000002
	.quad	0x4023df57928e0c9e              # double 9.9362150000000007
	.quad	0x401457c84b5dcc64              # double 5.0857250000000001
	.quad	0x401b442aed139431              # double 6.8165699999999996
	.quad	0x401808a222d5171e              # double 6.0084309999999999
	.quad	0x4011d56eac860568              # double 4.4584299999999999
	.quad	0x40119a5119ce075f              # double 4.4006999999999996
	.quad	0x4021b4ffc9795b36              # double 8.8535140000000006
	.quad	0x4019e88f861a60d4              # double 6.4771099999999997
	.quad	0x401e10578e5c4eb5              # double 7.5159589999999996
	.quad	0x400846a76965f527              # double 3.0344989999999998
	.quad	0x40028f062d40aaeb              # double 2.319836
	.quad	0x401214ac29bf162b              # double 4.5201880000000001
	.quad	0x400d2d2e514c22ee              # double 3.6470609999999999
	.quad	0x4019999780baa583              # double 6.3999920000000001
	.quad	0x401cd5e679463cfb              # double 7.2088869999999998
	.quad	0x4023541f212d7732              # double 9.6643000000000008
	.quad	0x3fe46b8f9b13165d              # double 0.63812999999999998
	.quad	0x401bdfbca1059ea5              # double 6.9684929999999996
	.quad	0x4013d7a6bd6e8af8              # double 4.9605969999999999
	.quad	0x3fd48a116659d12d              # double 0.32092700000000002
	.quad	0x4003745e0b4e11dc              # double 2.4318200000000001
	.quad	0x40239286940357a3              # double 9.7861829999999994
	.quad	0x400ec2b628459967              # double 3.8450739999999999
	.quad	0x401b248344c37e6f              # double 6.7856569999999996
	.quad	0x40140a62ed352221              # double 5.0101430000000002
	.quad	0x40034a5e785b5b70              # double 2.4113129999999998
	.quad	0x40232a6223e18698              # double 9.5827799999999996
	.quad	0x4022cfe1da7b0b39              # double 9.4060199999999998
	.quad	0x401da919ef954eb1              # double 7.4151379999999998
	.quad	0x4001f154866a11ed              # double 2.2428370000000002
	.quad	0x4013dda37ef5a965              # double 4.9664440000000001
	.quad	0x401c27e02645e4e7              # double 7.0389410000000003
	.quad	0x3fe705cee17a02fb              # double 0.71945899999999996
	.quad	0x3ff2308ede54b48d              # double 1.1368549999999999
	.quad	0x402324286f8ad256              # double 9.5706209999999992
	.quad	0x3ffb91ada76d97b3              # double 1.723066
	.quad	0x4003413b9f127f5f              # double 2.4068520000000002
	.quad	0x4014de17e34b9453              # double 5.216888
	.quad	0x4007f06ee30caa32              # double 2.9923989999999998
	.quad	0x4020c78f68be2f7b              # double 8.3897659999999998
	.quad	0x4013383a109d0636              # double 4.8049090000000003
	.quad	0x4020e1a62ed35222              # double 8.4407209999999999
	.quad	0x4018da0945f9df55              # double 6.2129260000000004
	.quad	0x400b4d2a1f8e3ac1              # double 3.4126780000000001
	.quad	0x4020b0ded288ce70              # double 8.3454499999999996
	.quad	0x4020b92fd32c625f              # double 8.3616930000000007
	.quad	0x4018b18a43bb40b3              # double 6.1733789999999997
	.quad	0x4020ba91b823c85c              # double 8.3643929999999997
	.quad	0x400d269e7fb267c7              # double 3.6438570000000001
	.quad	0x4023dff7be121ee6              # double 9.9374369999999992
	.quad	0x4023948344c37e6f              # double 9.7900639999999992
	.quad	0x400cef648c7192ea              # double 3.6168909999999999
	.quad	0x400525553ef6b5d4              # double 2.6432289999999998
	.quad	0x4022558d79d0a676              # double 9.1670949999999998
	.quad	0x400ecf345069a4df              # double 3.8511739999999999
	.quad	0x4021973bc903ea70              # double 8.7953779999999995
	.quad	0x401b4c85c24c404a              # double 6.8247289999999996
	.quad	0x401829274e22a2c2              # double 6.0401889999999998
	.quad	0x400fda60d4562e0a              # double 3.98163
	.quad	0x3ff73e5a78f25a25              # double 1.452723
	.quad	0x401985bc44bf4cb2              # double 6.3806010000000004
	.quad	0x402067fc32ebe597              # double 8.2030960000000004
	.quad	0x3ffbc64ba94bbe44              # double 1.7359119999999999
	.quad	0x3fc9bc77143393ab              # double 0.20106399999999999
	.quad	0x401c917939a7c17b              # double 7.1420640000000004
	.quad	0x401fcf35e310dbf0              # double 7.9523539999999997
	.quad	0x401b7838c111ada7              # double 6.8674039999999996
	.quad	0x402045816aceaaf3              # double 8.1357529999999993
	.quad	0x401a42f48c2e770c              # double 6.5653860000000002
	.quad	0x40210cb945308bb9              # double 8.524851
	.quad	0x40027bbadc0980b2              # double 2.3104149999999999
	.quad	0x3fb92ef911cf355d              # double 0.098373000000000002
	.quad	0x400b46c7eae5bc88              # double 3.4095610000000001
	.quad	0x40085a1fd1569f49              # double 3.044006
	.quad	0x402146266fd651b1              # double 8.6370120000000004
	.quad	0x400afa272862f599              # double 3.3721450000000002
	.quad	0x40231bbcd35a8588              # double 9.5541750000000007
	.quad	0x40237b39c0ebedfa              # double 9.7406749999999995
	.quad	0x400ceca686e7e62e              # double 3.6155520000000001
	.quad	0x3ffe6084a515ce9e              # double 1.8985639999999999
	.quad	0x4001a59103c8e25d              # double 2.2058430000000002
	.quad	0x4021cc903ea704bc              # double 8.8995379999999997
	.quad	0x40162d8b1dd5d3dd              # double 5.5444760000000004
	.quad	0x3fdf6b97fe8ee6b8              # double 0.49094199999999999
	.quad	0x4015b819d2391d58              # double 5.429786
	.quad	0x401a174538ef34d7              # double 6.5227250000000003
	.quad	0x3fd4b413986338b4              # double 0.32349099999999997
	.quad	0x3ff11e54b48d3ae7              # double 1.0699050000000001
	.quad	0x4008f24fa8b4bf90              # double 3.1183160000000001
	.quad	0x3fefaba387592535              # double 0.98970199999999997
	.quad	0x40216bd87b56b873              # double 8.7106359999999992
	.quad	0x3ffb63cc8de2ac32              # double 1.711865
	.quad	0x3ffd2cb641700cd8              # double 1.8234159999999999
	.quad	0x400fef7a919695d9              # double 3.991933
	.quad	0x3ffabf62b6ae7d56              # double 1.6717249999999999
	.quad	0x4021b79830e3cd9a              # double 8.8585829999999994
	.quad	0x4010decd8dbcec85              # double 4.217581
	.quad	0x401f5bd3c3611340              # double 7.8396749999999997
	.quad	0x40057f1bef49cf57              # double 2.687065
	.quad	0x40210c2699c7bcc3              # double 8.5237320000000008
	.quad	0x3fe5216a48733659              # double 0.66032900000000005
	.quad	0x40129a60d4562e0a              # double 4.65076
	.quad	0x401e8270f3882279              # double 7.6273840000000001
	.quad	0x401cae6c8f755369              # double 7.1703359999999998
	.quad	0x402027a22706d506              # double 8.0774089999999994
	.quad	0x402232595bbbe879              # double 9.098338
	.quad	0x4006231f03d145d8              # double 2.7671489999999999
	.quad	0x401ea28522ea0fd4              # double 7.6587110000000003
	.quad	0x3fda318b93469942              # double 0.40927400000000003
	.quad	0x40216906034f3fd9              # double 8.7051239999999996
	.quad	0x40017b5393250b52              # double 2.1852179999999999
	.quad	0x3fe08e3476295209              # double 0.51735900000000001
	.quad	0x400615c4a83b1d0d              # double 2.7606290000000002
	.quad	0x401f796d8f4f93bc              # double 7.868582
	.quad	0x4016fe978d4fdf3b              # double 5.7486249999999997
	.quad	0x40215ea619da9c99              # double 8.6848609999999997
	.quad	0x4001befae7924af1              # double 2.2182520000000001
	.quad	0x400e47136a400fbb              # double 3.7847050000000002
	.quad	0x3fd04c016052502f              # double 0.254639
	.quad	0x401c919d66adb403              # double 7.1422020000000002
	.quad	0x4013959c8c9320da              # double 4.8961050000000004
	.quad	0x40069a24894c447c              # double 2.8252649999999999
	.quad	0x4021d6f5ec80c73b              # double 8.9198450000000005
	.quad	0x400500980b242071              # double 2.6252900000000001
	.quad	0x4020f89331a08bfc              # double 8.4854979999999997
	.quad	0x4007097bfa4c61d8              # double 2.8796309999999998
	.quad	0x40216573eab367a1              # double 8.69815
	.quad	0x3fddbadc0980b242              # double 0.46453
	.quad	0x3fefea3bddfc9ff9              # double 0.99734299999999997
	.quad	0x4012000192a73711              # double 4.500006
	.quad	0x40220ad6a9c560c8              # double 9.0211690000000004
	.quad	0x4012ac37e6f71a7e              # double 4.6681819999999998
	.quad	0x4021e7661f18c9fb              # double 8.9519509999999993
	.quad	0x4022bad42c3c9eed              # double 9.3649000000000004
	.quad	0x400950a45d41fa76              # double 3.1643759999999999
	.quad	0x4022af6427c7c526              # double 9.3425609999999999
	.quad	0x3ffac6d1e108c3f4              # double 1.67354
	.quad	0x3ff0c35efa615a8e              # double 1.047698
	.quad	0x4011bc087442c7fc              # double 4.4336260000000003
	.quad	0x402143b96af038e3              # double 8.6322740000000007
	.quad	0x401a5556d19dece5              # double 6.5833389999999996
	.quad	0x3fe84dd50a88effe              # double 0.75950099999999998
	.quad	0x3fed0fe8ab4fa483              # double 0.908192
	.quad	0x400888b2a6b0d951              # double 3.0667469999999999
	.quad	0x400e6a51e321a2e8              # double 3.801914
	.quad	0x400bc0a393ee5eee              # double 3.4690620000000001
	.quad	0x400b569d30270f39              # double 3.4172920000000002
	.quad	0x4021a9c1f85d744f              # double 8.8315579999999994
	.quad	0x3ffb4ed0b30b5aa7              # double 1.706742
	.quad	0x40155c083126e979              # double 5.3398750000000001
	.quad	0x401bdb8ae31d712a              # double 6.9643969999999999
	.quad	0x400734ab1d4f9c20              # double 2.9007170000000002
	.quad	0x401ea8bd230b9dc3              # double 7.664784
	.quad	0x3ff8af07bfe7e1fc              # double 1.542732
	.quad	0x401b293af74cd317              # double 6.7902639999999996
	.quad	0x401d12f901083dbc              # double 7.2685279999999999
	.quad	0x4014c68ad6883772              # double 5.1938890000000004
	.quad	0x4007cfc0d2c386d3              # double 2.976442
	.quad	0x401c12dd7a99fa12              # double 7.0184230000000003
	.quad	0x4022afb07075b3e1              # double 9.3431429999999995
	.quad	0x4020e2e924f227d0              # double 8.4431849999999997
	.quad	0x40235335f3d7d391              # double 9.6625209999999999
	.quad	0x402090ec74320104              # double 8.2830539999999999
	.quad	0x40213331e3a7daa5              # double 8.59999
	.quad	0x400562845996744b              # double 2.6731039999999999
	.quad	0x3ff368e60807357e              # double 1.2131099999999999
	.quad	0x4022b16616b54e2b              # double 9.346482
	.quad	0x400aa787485e3da3              # double 3.331801
	.quad	0x4019b5a2d72ffd1e              # double 6.4273790000000002
	.quad	0x3fef17785729b281              # double 0.971615
	.quad	0x401fbb0292817764              # double 7.9326270000000001
	.quad	0x3fd36338b47c73ef              # double 0.30293100000000001
	.quad	0x4020b2ccf6be37df              # double 8.3492200000000008
	.quad	0x4009999e518f3ecd              # double 3.2000090000000001
	.quad	0x4020635f1bef49cf              # double 8.1940849999999994
	.quad	0x400747304039abf3              # double 2.9097599999999999
	.quad	0x40102f9d6f112fd3              # double 4.0464989999999998
	.quad	0x4018e3ab862b27cc              # double 6.222334
	.quad	0x400c4220bc382a13              # double 3.532289
	.quad	0x40171e03b3e9a6f8              # double 5.7793109999999999
	.quad	0x4015dcc89b0ee49f              # double 5.4656089999999997
	.quad	0x40175977c88e79ab              # double 5.8373710000000001
	.quad	0x401a7fd2e9468017              # double 6.6248279999999999
	.quad	0x401a6e3ac0c62e4d              # double 6.6076459999999999
	.quad	0x4020ace0114d2f5e              # double 8.3376470000000005
	.quad	0x4004da32b12d3416              # double 2.6065420000000001
	.quad	0x4000bfc7607c419a              # double 2.093642
	.quad	0x400da3c297bfa4c6              # double 3.7049609999999999
	.quad	0x4014e7b6bb129025              # double 5.2262829999999996
	.quad	0x3fe1287a072d1aeb              # double 0.53619099999999997
	.quad	0x400699c27e953155              # double 2.825078
	.quad	0x40205ee631f8a090              # double 8.1853499999999997
	.quad	0x402355a597d49d7c              # double 9.6672790000000006
	.quad	0x3feb3bafd976ff3b              # double 0.85103600000000001
	.quad	0x4002fae3e6c4c597              # double 2.3725049999999999
	.quad	0x4020ddcd91eeaa6d              # double 8.4332089999999997
	.quad	0x400dcf944241c3f0              # double 3.7263570000000001
	.quad	0x4015d10ecb74ddf8              # double 5.4541579999999996
	.quad	0x40234594af4f0d84              # double 9.6358999999999994
	.quad	0x4003a75c4a83b1d1              # double 2.4567190000000001
	.quad	0x401b8f290abb44e5              # double 6.889805
	.quad	0x4020937952d234ec              # double 8.2880350000000007
	.quad	0x40212c89b0ee49f5              # double 8.5869879999999998
	.quad	0x3fe1ac083126e979              # double 0.55225000000000002
	.quad	0x401b29fa54c55433              # double 6.7909940000000004
	.quad	0x401638e757928e0d              # double 5.5555700000000003
	.quad	0x3fe4c473cd573648              # double 0.64898100000000003
	.quad	0x4014dbd273d5bab2              # double 5.2146699999999999
	.quad	0x400c3344806290ef              # double 3.5250330000000001
	.quad	0x4022a06290eed02d              # double 9.3132520000000003
	.quad	0x4020030b9dc2f406              # double 8.0059480000000001
	.quad	0x3fec19f3c70c996b              # double 0.87816799999999995
	.quad	0x3ff348ce703afb7f              # double 1.2052750000000001
	.quad	0x3ffab11b60ae9681              # double 1.668239
	.quad	0x3fa1e4f765fd8adb              # double 0.034950000000000002
	.quad	0x4004b45846e8f29d              # double 2.5880589999999999
	.quad	0x40207abb44e50c5f              # double 8.2397100000000005
	.quad	0x401bce0589acbc8c              # double 6.951193
	.quad	0x3fb20999dcb5781c              # double 0.070458999999999994
	.quad	0x402103dbe3c10518              # double 8.5075369999999992
	.quad	0x402203e78e1932d7              # double 9.0076260000000001
	.quad	0x4020ac998d045fe1              # double 8.3371089999999999
	.quad	0x401cc02363b25700              # double 7.1876350000000002
	.quad	0x4011e0713f077ccc              # double 4.469182
	.quad	0x401723ee5eedcc21              # double 5.7850890000000001
	.quad	0x402104801f75104d              # double 8.5087899999999994
	.quad	0x4020a6d9be4cd749              # double 8.3258799999999997
	.quad	0x3fdad81adea89763              # double 0.41943999999999998
	.quad	0x4018e6c93a711516              # double 6.2253769999999999
	.quad	0x4009dd18090b417d              # double 3.2329560000000002
	.quad	0x3fdb226c3b927d46              # double 0.42397600000000002
	.quad	0x3fe8f54f3775b813              # double 0.779945
	.quad	0x3fac33508f648c72              # double 0.055079000000000003
	.quad	0x400c7422467be554              # double 3.5567060000000001
	.quad	0x4007d64c729f59cd              # double 2.979638
	.quad	0x4017d05186db50f4              # double 5.953436
	.quad	0x402254981beb1811              # double 9.1652229999999992
	.quad	0x40227074c8ffb8b2              # double 9.2196409999999993
	.quad	0x401f95a8deb0fadf              # double 7.8961519999999998
	.quad	0x4022cf7985271bce              # double 9.4052240000000005
	.quad	0x40169bbfd71b0468              # double 5.6520989999999998
	.quad	0x40097c99ae924f22              # double 3.1858399999999998
	.quad	0x4015e0d73860999e              # double 5.4695710000000002
	.quad	0x3fddac03ff69014b              # double 0.46362399999999998
	.quad	0x400dee31d712a0ec              # double 3.7413059999999998
	.quad	0x401b7975afaf8594              # double 6.8686129999999999
	.quad	0x4018d9b66f9335d2              # double 6.2126099999999997
	.quad	0x4008e6e221c8a7a4              # double 3.1127359999999999
	.quad	0x40162c122749f0e5              # double 5.5430380000000001
	.quad	0x4019a674d1633483              # double 6.4125550000000002
	.quad	0x4018bc6f36ef8056              # double 6.184018
	.quad	0x3fbaff9f87f023ea              # double 0.105463
	.quad	0x400ee33d6c721922              # double 3.860957
	.quad	0x400db755bccaf70a              # double 3.7145190000000001
	.quad	0x400acd45e9185cee              # double 3.350231
	.quad	0x401323a42f1ed17c              # double 4.7848059999999997
	.quad	0x4023628869c66d37              # double 9.6924469999999995
	.quad	0x40130ab2e1693c04              # double 4.7604480000000002
	.quad	0x4019dc0096feb4a6              # double 6.4648459999999996
	.quad	0x4003d5f0b28522ea              # double 2.479463
	.quad	0x402086f284167a96              # double 8.2635690000000004
	.quad	0x3ffef6501e2584f5              # double 1.935135
	.quad	0x400a7f540895d0b7              # double 3.3121719999999999
	.quad	0x40178367a0f9096c              # double 5.8783250000000002
	.quad	0x400398a761027957              # double 2.449538
	.quad	0x3fc5715c63ae2542              # double 0.167522
	.quad	0x3ff49949e8815e39              # double 1.2874239999999999
	.quad	0x400171f1cfbb9496              # double 2.1806369999999999
	.quad	0x4022b99b4dcebfec              # double 9.3625129999999998
	.quad	0x4003bc8323358f2e              # double 2.467047
	.quad	0x3fec2b5e529bae47              # double 0.88029400000000002
	.quad	0x40151bd4067cf1c3              # double 5.2771759999999999
	.quad	0x40234211ec918e32              # double 9.6290429999999994
	.quad	0x3fda91819d2391d5              # double 0.41513099999999997
	.quad	0x400c85f6ba0620ab              # double 3.5654119999999998
	.quad	0x400496f2a5a469d7              # double 2.5737049999999999
	.quad	0x401f8d5f99c38b05              # double 7.8880600000000002
	.quad	0x400abd30270f3882              # double 3.3423769999999999
	.quad	0x4018853c148344c3              # double 6.1301119999999996
	.quad	0x401e4b790fb65669              # double 7.5737040000000002
	.quad	0x4016e67caea747d8              # double 5.725085
	.quad	0x4017ea7829068987              # double 5.978974
	.quad	0x40145111f0c34c1b              # double 5.0791700000000004
	.quad	0x3fe394bbe4473cd5              # double 0.61190599999999995
	.quad	0x4015b3482be8bc17              # double 5.4250800000000003
	.quad	0x3feb41d8e8640208              # double 0.85178799999999999
	.quad	0x3fd9afff36ac6477              # double 0.40136699999999997
	.quad	0x4015b8a3b57c4e2f              # double 5.4303119999999998
	.quad	0x400541e2584f4c6e              # double 2.6571699999999998
	.quad	0x4021dc8fb86f47b6              # double 8.9307839999999992
	.quad	0x4002452d666a9824              # double 2.2837779999999999
	.quad	0x4001b5ffe6d58c8f              # double 2.213867
	.quad	0x400c918eb8950764              # double 3.5710730000000002
	.quad	0x400ef4d26fa3fcca              # double 3.869542
	.quad	0x400b0e432441fea8              # double 3.381964
	.quad	0x40128e0f7fcfc3f8              # double 4.6387309999999999
	.quad	0x401914fb1183b603              # double 6.2704890000000004
	.quad	0x401dabd87b56b873              # double 7.4178179999999996
	.quad	0x402270d130df9bdc              # double 9.2203459999999992
	.quad	0x401bbd7f0ed3d85a              # double 6.9350550000000002
	.quad	0x4021879fec99f1ae              # double 8.7648919999999997
	.quad	0x401c898915bdd767              # double 7.1343120000000004
	.quad	0x4020cc3aeab7995f              # double 8.3988870000000002
	.quad	0x40111b256ffc115e              # double 4.27651
	.quad	0x40126e46cfc829d0              # double 4.6076920000000001
	.quad	0x3fee1e12a51e321a              # double 0.94117099999999998
	.quad	0x401925100a393ee6              # double 6.2861940000000001
	.quad	0x400122ca148ba83f              # double 2.1419869999999999
	.quad	0x40002589acbc8c0d              # double 2.018329
	.quad	0x401e47f455a7d242              # double 7.5702680000000004
	.quad	0x3fce9c6f36ef8056              # double 0.239149
	.quad	0x4017fe8ea39c51db              # double 5.9985910000000002
	.quad	0x3fe198c7e28240b8              # double 0.54990000000000006
	.quad	0x40116c7de5082cf5              # double 4.3559489999999998
	.quad	0x3ff146c332f01755              # double 1.0797760000000001
	.quad	0x3fee99934efcbd55              # double 0.95624699999999996
	.quad	0x40163ecf63800219              # double 5.5613380000000001
	.quad	0x4009fb70691ea78b              # double 3.247773
	.quad	0x400e94e3369b9d80              # double 3.8226990000000001
	.quad	0x401f929670196d8f              # double 7.8931519999999997
	.quad	0x4012448a58b3f63c              # double 4.5669339999999998
	.quad	0x400c0ce5710880d8              # double 3.506297
	.quad	0x40084c6583e8576d              # double 3.0373030000000001
	.quad	0x401dc780346dc5d6              # double 7.4448249999999998
	.quad	0x4019a9ced0b30b5b              # double 6.4158280000000003
	.quad	0x4020622962cfd8f1              # double 8.1917220000000004
	.quad	0x4010b46801711948              # double 4.1761780000000002
	.quad	0x3fdd63a190082060              # double 0.459206
	.quad	0x4023a78dd616f86a              # double 9.8272539999999999
	.quad	0x3fea103a7546d3fa              # double 0.81448100000000001
	.quad	0x402069461b6d43d0              # double 8.2056129999999996
	.quad	0x400cb4ab1d4f9c20              # double 3.5882170000000002
	.quad	0x400431b2e59af9ec              # double 2.524267
	.quad	0x4020b690ff972474              # double 8.3565749999999994
	.quad	0x4020737aa25d8d7a              # double 8.2255450000000003
	.quad	0x401c23b4f6167232              # double 7.0348699999999997
	.quad	0x3fe12fb5d031055c              # double 0.53707400000000005
	.quad	0x4010f6672fba01ef              # double 4.2406280000000001
	.quad	0x3fe53cc4ac6cdaf5              # double 0.66366800000000004
	.quad	0x400be0cd855970b5              # double 3.4847670000000002
	.quad	0x3ffcad5e071c53f4              # double 1.7923260000000001
	.quad	0x4018c14ec204f2ae              # double 6.188777
	.quad	0x4012d1a11233df2b              # double 4.7047160000000003
	.quad	0x401d7358f2e05ccd              # double 7.3626440000000004
	.quad	0x4020ff54f3775b81              # double 8.4986949999999997
	.quad	0x4021c426351deefe              # double 8.8831039999999994
	.quad	0x40099e2d6238da3c              # double 3.2022349999999999
	.quad	0x3ff853af74cd3177              # double 1.5204310000000001
	.quad	0x3fc969b17481b21c              # double 0.19853799999999999
	.quad	0x400f160b6f9fcb0c              # double 3.885764
	.quad	0x40118a66559f6ec6              # double 4.3851560000000003
	.quad	0x40239113e81450f0              # double 9.7833550000000002
	.quad	0x40174d566cf41f21              # double 5.8255249999999998
	.quad	0x401a161804d98394              # double 6.5215759999999996
	.quad	0x4016fe92d55a3a08              # double 5.7486069999999998
	.quad	0x4013bc58255b035c              # double 4.9339300000000001
	.quad	0x40069e0ac7da1ec5              # double 2.827169
	.quad	0x4019caad1d041cc5              # double 6.4479259999999998
	.quad	0x3fe4f05ea24cc682              # double 0.65434199999999998
	.quad	0x3ff96146a1a500d6              # double 1.586249
	.quad	0x3ff687cb70ac3a86              # double 1.408153
	.quad	0x3ff66d9ad85dfa87              # double 1.401759
	.quad	0x3fe8be9a6f826edb              # double 0.77326700000000004
	.quad	0x4020862f9ca5bd94              # double 8.2620819999999994
	.quad	0x4019a5c8d9f9053a              # double 6.411899
	.quad	0x401af1569f490603              # double 6.7356819999999997
	.quad	0x401698705425f202              # double 5.6488659999999999
	.quad	0x400215989df1172f              # double 2.260545
	.quad	0x3fe68b08dd1e53a8              # double 0.70447199999999999
	.quad	0x401484efcbd55608              # double 5.1298209999999997
	.quad	0x3ffe492ab68cef67              # double 1.892863
	.quad	0x4022cf8811b1d92b              # double 9.4053349999999991
	.quad	0x40234bde3fbbd7b2              # double 9.64818
	.quad	0x400e5892ee84ad79              # double 3.7932489999999999
	.quad	0x3ff59f266ba493c9              # double 1.3513550000000001
	.quad	0x3fe3df04ddb5525d              # double 0.62097400000000003
	.quad	0x400581f2990f301f              # double 2.6884510000000001
	.quad	0x4015119a847b2464              # double 5.2671910000000004
	.quad	0x400571327243137b              # double 2.680272
	.quad	0x400b7e40c8472c0e              # double 3.4366469999999998
	.quad	0x40201d7dbf487fcc              # double 8.0576000000000007
	.quad	0x3fe66675147f1306              # double 0.70000700000000005
	.quad	0x40225f43632c1f43              # double 9.1860610000000005
	.quad	0x40135122fad6cb53              # double 4.8292349999999997
	.quad	0x40155538ac18f81f              # double 5.3332240000000004
	.quad	0x3fd06733ebbfd71b              # double 0.256299
	.quad	0x401eca63b688bda9              # double 7.6976459999999997
	.quad	0x3ff66f6512a94ff0              # double 1.402196
	.quad	0x40078d72799a1fd1              # double 2.9440659999999998
	.quad	0x4000f0be9424e593              # double 2.1175510000000002
	.quad	0x40205efef7c243dd              # double 8.1855390000000003
	.quad	0x4007aef99806f263              # double 2.9604370000000002
	.quad	0x4018e60c7c0f4517              # double 6.2246569999999997
	.quad	0x4021cd10f51ac9b0              # double 8.9005200000000002
	.quad	0x40178aa326e11559              # double 5.8853879999999998
	.quad	0x40138a305532617c              # double 4.8849499999999999
	.quad	0x3ff5b7dd872f33ca              # double 1.357389
	.quad	0x4012d994e1a3f466              # double 4.7124819999999996
	.quad	0x40073a0ad8a11666              # double 2.9033410000000002
	.quad	0x4021600bed740c41              # double 8.6875909999999994
	.quad	0x4015ea21a719b4dd              # double 5.4786440000000001
	.quad	0x4023b96e58a32f45              # double 9.8621700000000007
	.quad	0x4022d20afa2f05a7              # double 9.4102399999999999
	.quad	0x40218044d013a92a              # double 8.7505249999999997
	.quad	0x40159bc947064ecf              # double 5.4021350000000004
	.quad	0x4003450b524399b3              # double 2.4087130000000001
	.quad	0x401d85810624dd2f              # double 7.3803749999999999
	.quad	0x401b490539fba451              # double 6.8213090000000003
	.quad	0x3ffc6eea63b688be              # double 1.7770790000000001
	.quad	0x401473b2dd377e1c              # double 5.1129870000000004
	.quad	0x4015ae02645e4e6a              # double 5.4199310000000001
	.quad	0x4017ae2ac3222920              # double 5.9200850000000003
	.quad	0x3ff5c9ca18bd6627              # double 1.3617649999999999
	.quad	0x400b426b2f23033a              # double 3.4074309999999999
	.quad	0x3fb09310129cbab6              # double 0.064743999999999996
	.quad	0x401974ead0c3d252              # double 6.3641769999999998
	.quad	0x3fcdb9e8c47a17f4              # double 0.232236
	.quad	0x4017cdd095af294e              # double 5.9509910000000001
	.quad	0x3ffc0c3f3e0370ce              # double 1.75299
	.quad	0x40226a9845dc8323              # double 9.2081929999999996
	.quad	0x40129b95a294141f              # double 4.6519380000000004
	.quad	0x4012f83b1d0c8041              # double 4.742413
	.quad	0x400741cbccf28c7a              # double 2.907127
	.quad	0x3fe766bc621b7e0b              # double 0.73129100000000002
	.quad	0x401670d306a2b170              # double 5.6101799999999997
	.quad	0x401120292817763e              # double 4.2814069999999997
	.quad	0x4022b6496ededaec              # double 9.3560289999999994
	.quad	0x4021d1b8887229e9              # double 8.9096109999999999
	.quad	0x40179bda9435ac8a              # double 5.9022009999999998
	.quad	0x40113b1465e89225              # double 4.3076949999999998
	.quad	0x4002f22856605ee5              # double 2.3682409999999998
	.quad	0x401e388509bf9c63              # double 7.5551950000000003
	.quad	0x401a34827b6fe2e7              # double 6.5512790000000001
	.quad	0x3fe104c271fff79d              # double 0.53183100000000005
	.quad	0x401e864ba94bbe44              # double 7.6311479999999996
	.quad	0x4014e47778dd6170              # double 5.2231120000000004
	.quad	0x40024c36da87a073              # double 2.2872140000000001
	.quad	0x3fe7d3671ac14c66              # double 0.744556
	.quad	0x402376f5019f3c71              # double 9.7323380000000003
	.quad	0x401e7ee5abc0e38a              # double 7.6239229999999996
	.quad	0x3fecb07d0aed99cc              # double 0.896544
	.quad	0x401b7d701d9f4d38              # double 6.8724980000000002
	.quad	0x40108b517a46173c              # double 4.1360530000000004
	.quad	0x40013a1016ce789e              # double 2.1533509999999998
	.quad	0x40102ea8da7f3cf7              # double 4.045566
	.quad	0x4009b5675579af19              # double 3.2135760000000002
	.quad	0x401ddbc558644524              # double 7.46462
	.quad	0x40080e158750c1b9              # double 3.0068769999999998
	.quad	0x401cfc981beb1811              # double 7.2466739999999996
	.quad	0x401bbf6d7625204b              # double 6.936941
	.quad	0x401019707182235b              # double 4.0248429999999997
	.quad	0x3fe09817b95a2941              # double 0.51856599999999997
	.quad	0x3fec890b417ca212              # double 0.89172899999999999
	.quad	0x401c0713ad5bee3d              # double 7.0069109999999997
	.quad	0x4015d871a3b14a90              # double 5.4613709999999998
	.quad	0x3fffe1c36976bc1f              # double 1.992618
	.quad	0x3fcb91819d2391d5              # double 0.21537799999999999
	.quad	0x4021b9b089a02752              # double 8.8626749999999994
	.quad	0x40175dbf487fcb92              # double 5.8415499999999998
	.quad	0x401f658c4bd33d29              # double 7.8491679999999997
	.quad	0x3ffa6ffb04ee7c4a              # double 1.652339
	.quad	0x401c1966be7afa72              # double 7.0248059999999999
	.quad	0x40081bd8be7296f6              # double 3.0135969999999999
	.quad	0x401808a6dacabc51              # double 6.0084489999999997
	.quad	0x401eb1697f1f9ad0              # double 7.673254
	.quad	0x40221577531db446              # double 9.0419260000000001
	.quad	0x4020619eb6390c91              # double 8.1906639999999999
	.quad	0x401e80fb65668c26              # double 7.6259589999999999
	.quad	0x40233f1fbc5de9c0              # double 9.6232889999999997
	.quad	0x40202e54b48d3ae7              # double 8.0904900000000008
	.quad	0x4017af6273929ed4              # double 5.9212740000000004
	.quad	0x3fc53fe9fadafd11              # double 0.16601299999999999
	.quad	0x40208f127f5e84f1              # double 8.2794380000000007
	.quad	0x4018e0984e3ffef4              # double 6.2193310000000004
	.quad	0x400022070b8cfbfc              # double 2.0166149999999998
	.quad	0x400d223315d701da              # double 3.641699
	.quad	0x401e41550ca1cef2              # double 7.5638009999999998
	.quad	0x40217914f483cafb              # double 8.7364879999999996
	.quad	0x4010234eb9a176de              # double 4.0344800000000003
	.quad	0x4014933b96af038e              # double 5.1437819999999999
	.quad	0x401cdc358afc47e5              # double 7.2150480000000003
	.quad	0x40172a8bd230b9dc              # double 5.7915489999999998
	.quad	0x40235e3c31df761d              # double 9.6840530000000004
	.quad	0x3ff49bd512ec6bcf              # double 1.2880450000000001
	.quad	0x3ffc061d8622c450              # double 1.751493
	.quad	0x40037c714fce746d              # double 2.4357630000000001
	.quad	0x3feced02cd39da16              # double 0.90393199999999996
	.quad	0x4019938476f2a5a4              # double 6.3940599999999996
	.quad	0x400a8d77b7c7820a              # double 3.3190759999999999
	.quad	0x401576f5019f3c71              # double 5.3661690000000002
	.quad	0x401f14028e4fb97c              # double 7.7695410000000003
	.quad	0x4023e7e586013661              # double 9.9529230000000001
	.quad	0x4005ca9691a75cd1              # double 2.7239200000000001
	.quad	0x401d82e6a76965f5              # double 7.3778329999999999
	.quad	0x40106b43d89ce4a8              # double 4.1047510000000003
	.quad	0x4011a9c94f69ca9f              # double 4.415807
	.quad	0x40105054ef459d99              # double 4.078449
	.quad	0x401bca69be09bb6b              # double 6.9476690000000003
	.quad	0x400d9f7f06705c89              # double 3.7028789999999998
	.quad	0x40046ae297396d09              # double 2.55219
	.quad	0x3ff80343b70ef566              # double 1.5007969999999999
	.quad	0x4012129c779a6b51              # double 4.5181750000000003
	.quad	0x40155edf61240746              # double 5.3426489999999998
	.quad	0x400d8617c1bda512              # double 3.6904750000000002
	.quad	0x4019d59bc33f8551              # double 6.458602
	.quad	0x4001e229a5ebb774              # double 2.2354310000000002
	.quad	0x401ac01de2691644              # double 6.6876139999999999
	.quad	0x400c0491afc04c8c              # double 3.5022310000000001
	.quad	0x40102943e1006078              # double 4.0402979999999999
	.quad	0x4011bf9f87f023ea              # double 4.4371320000000001
	.quad	0x4023373cb3e5753a              # double 9.6078849999999996
	.quad	0x40230957abb8800f              # double 9.5182470000000005
	.quad	0x3ff135ec80c73abd              # double 1.0756650000000001
	.quad	0x401ab3fe5c91d14e              # double 6.6757749999999998
	.quad	0x402236e6106ab14f              # double 9.1072240000000004
	.quad	0x3ff8cef77f27fe4c              # double 1.550529
	.quad	0x401450d38cda6e76              # double 5.078932
	.quad	0x40126b19a415f45e              # double 4.60459
	.quad	0x4014f4d37c1376d5              # double 5.2390879999999997
	.quad	0x40186d3d859c8c93              # double 6.1066799999999999
	.quad	0x40154424e5929670              # double 5.3165469999999999
	.quad	0x40027be76c8b4396              # double 2.3105000000000002
	.quad	0x3ff5687c200c0f02              # double 1.338009
	.quad	0x400dc8eabffcdab2              # double 3.7231040000000002
	.quad	0x401c09e3c968943e              # double 7.0096579999999999
	.quad	0x40176ea35935fc3b              # double 5.8580449999999997
	.quad	0x4011d0aaeafab53d              # double 4.4537769999999997
	.quad	0x402213825e13b18e              # double 9.0381040000000006
	.quad	0x4018da35935fc3b5              # double 6.213095
	.quad	0x40218c1f212d7732              # double 8.7736750000000008
	.quad	0x401c6702e6644d87              # double 7.1005969999999996
	.quad	0x40174980b242070c              # double 5.8217800000000004
	.quad	0x4010c58f7121ab4b              # double 4.1929299999999996
	.quad	0x401e82074ea8da7f              # double 7.6269809999999997
	.quad	0x3ff939e3864cb5bb              # double 1.576633
	.quad	0x400b887e38eb0319              # double 3.4416470000000001
	.quad	0x40104c6de76427c8              # double 4.0746380000000002
	.quad	0x40141478854cdb7b              # double 5.0199910000000001
	.quad	0x40049e6256366d7a              # double 2.5773359999999998
	.quad	0x4021ce99a62ed352              # double 8.9035159999999998
	.quad	0x401c527f1b691212              # double 7.0805629999999997
	.quad	0x40144c5a8155d5f5              # double 5.0745639999999996
	.quad	0x4013459253543aeb              # double 4.8179410000000003
	.quad	0x40190332acfb762e              # double 6.2531230000000004
	.quad	0x4006136deb95e5b0              # double 2.759487
	.quad	0x4022411be6e65387              # double 9.1271660000000008
	.quad	0x3fdc8d3ae685db77              # double 0.44612000000000002
	.quad	0x400d5d798d8a979e              # double 3.670642
	.quad	0x4013ae8a2ec28b2a              # double 4.9204489999999996
	.quad	0x401bb915379fa97e              # double 6.9307449999999999
	.quad	0x3ffefbd3804534bd              # double 1.9364809999999999
	.quad	0x401a2677b395c422              # double 6.537566
	.quad	0x40114112ba16e7a3              # double 4.3135479999999999
	.quad	0x3fd858ab92c06184              # double 0.38041199999999997
	.quad	0x3ff9599fe43675de              # double 1.584381
	.quad	0x400ec9d0635a426c              # double 3.8485420000000001
	.quad	0x400e16b97fe8ee6c              # double 3.7610960000000002
	.quad	0x4006905425f20210              # double 2.8204729999999998
	.quad	0x401ec0f733a8a3f9              # double 7.6884430000000003
	.quad	0x4009fcc74b838c11              # double 3.248427
	.quad	0x4005480f12c27a63              # double 2.6601849999999998
	.quad	0x3ffd875c4a83b1d1              # double 1.845547
	.quad	0x4021fea2b1704ff4              # double 8.9973349999999996
	.quad	0x401815fc7e6b3fea              # double 6.021471
	.quad	0x4022beb6390c9108              # double 9.372484
	.quad	0x401b54dbdf8f4730              # double 6.8328699999999998
	.quad	0x3fffd54b8bef8ceb              # double 1.989574
	.quad	0x401095e02ea960b7              # double 4.146363
	.quad	0x3ffe99d2391d5800              # double 1.9125540000000001
	.quad	0x402107d08d4bad7d              # double 8.5152629999999991
	.quad	0x3ff88dc11e42e126              # double 1.534608
	.quad	0x40009a48301a79ff              # double 2.0753330000000001
	.quad	0x401053afb7e90ff9              # double 4.0817249999999996
	.quad	0x401998e1932d6ece              # double 6.3992979999999999
	.quad	0x40233994c0160525              # double 9.6124629999999999
	.quad	0x4022149e01de2691              # double 9.0402679999999993
	.quad	0x3fd312fd32c625ea              # double 0.29803400000000002
	.quad	0x4011cbe878fabda1              # double 4.4491290000000001
	.quad	0x4015437da61e0c5b              # double 5.3159090000000004
	.quad	0x401c3039abf33871              # double 7.0470949999999997
	.quad	0x40229fb09203a323              # double 9.3118940000000006
	.quad	0x401f5deefe4ffc98              # double 7.8417320000000003
	.quad	0x401badc1a47a9e2c              # double 6.9196840000000002
	.quad	0x402374864883fd50              # double 9.7275869999999998
	.quad	0x401be7bd05af6c6a              # double 6.9763070000000003
	.quad	0x3f817d6b65a9a805              # double 0.0085400000000000007
	.quad	0x40148719f7f8ca82              # double 5.1319350000000004
	.quad	0x4014734d26fa3fcd              # double 5.1125990000000003
	.quad	0x401f15c67dfe32a0              # double 7.7712649999999996
	.quad	0x4011888ebcc6c54c              # double 4.3833570000000002
	.quad	0x4014cd99cbee807c              # double 5.2007820000000002
	.quad	0x400cd8548a9bcfd5              # double 3.6056300000000001
	.quad	0x3fa61b4bb5e0f7fd              # double 0.043177
	.quad	0x4019244ae85b9e8c              # double 6.2854419999999998
	.quad	0x401220a88effe2a4              # double 4.5318930000000002
	.quad	0x40075edaec4a4096              # double 2.921316
	.quad	0x402020a2a90cd424              # double 8.0637410000000002
	.quad	0x3ffca618ce2d1f1d              # double 1.790551
	.quad	0x40102b395c422036              # double 4.042211
	.quad	0x400cc5260f5e41d5              # double 3.5962640000000001
	.quad	0x3ff422541d8e8640              # double 1.258381
	.quad	0x401f4eeaa6d26741              # double 7.8270670000000004
	.quad	0x400a655da272862f              # double 3.2994949999999998
	.quad	0x4004363a9f383f0c              # double 2.5264790000000001
	.quad	0x3fff8b76f6d76252              # double 1.971549
	.quad	0x4021fcca0c282c6f              # double 8.9937290000000001
	.quad	0x4010dc36da87a073              # double 4.2150530000000002
	.quad	0x3fe25aa92e62131b              # double 0.57356700000000005
	.quad	0x400c8a51e321a2e8              # double 3.567539
	.quad	0x4021ba6f1dc50ce5              # double 8.8641290000000001
	.quad	0x40137709741d084f              # double 4.8662470000000004
	.quad	0x400085b291b823c8              # double 2.0652819999999998
	.quad	0x4017adec5f394b7b              # double 5.9198469999999999
	.quad	0x40134c069e7fb268              # double 4.8242440000000002
	.quad	0x3f89d66adb402d17              # double 0.012616
	.quad	0x401ffb0318b9346a              # double 7.9951290000000004
	.quad	0x40153a7008a697af              # double 5.3070680000000001
	.quad	0x4023ae9bbf0dc769              # double 9.8410320000000002
	.quad	0x4020c54845132f88              # double 8.3853170000000006
	.quad	0x401ce984a0e410b6              # double 7.2280449999999998
	.quad	0x400dcfb19e731d2e              # double 3.726413
	.quad	0x40221e7b3d8e0008              # double 9.0595339999999993
	.quad	0x3ff8dbef49cf56eb              # double 1.553695
	.quad	0x4012b6ddaceee0f4              # double 4.6785800000000002
	.quad	0x401acf709b738e6d              # double 6.7025779999999999
	.quad	0x4017d6a6a012599f              # double 5.9596200000000001
	.quad	0x40229d2a411c2a02              # double 9.3069629999999997
	.quad	0x4017bf47b677f6b2              # double 5.9367970000000003
	.quad	0x401b3f2ba9d1f601              # double 6.8116899999999996
	.quad	0x4021d43393ab430f              # double 8.9144559999999995
	.quad	0x400535ddd2ae8e1d              # double 2.6513019999999998
	.quad	0x401beedd8b60f1b2              # double 6.9832669999999997
	.quad	0x400172f1a9fbe76d              # double 2.1811250000000002
	.quad	0x400b328d002e2329              # double 3.399683
	.quad	0x3ff63f62b6ae7d56              # double 1.3904749999999999
	.quad	0x400cd692b3cc4ac7              # double 3.6047720000000001
	.quad	0x3fe4c052d666a982              # double 0.64847699999999997
	.quad	0x3ffbae264e48626f              # double 1.7300169999999999
	.quad	0x400037785729b281              # double 2.027085
	.quad	0x401b8ef8055fbb51              # double 6.8896179999999996
	.quad	0x4002f1e29b6b2af1              # double 2.3681079999999999
	.quad	0x4021e76555c52e73              # double 8.9519450000000003
	.quad	0x40089e9d0e991ff7              # double 3.077448
	.quad	0x401783dd11be6e65              # double 5.8787729999999998
	.quad	0x4012f1d9f4d37c13              # double 4.7361829999999996
	.quad	0x3feffaaef2c73259              # double 0.99935099999999998
	.quad	0x3ff10a5269595fee              # double 1.0650200000000001
	.quad	0x3ffaaed8904f6dfc              # double 1.6676869999999999
	.quad	0x401e4fb7a5f41aef              # double 7.5778489999999996
	.quad	0x3ff79b1c864883fd              # double 1.4753689999999999
	.quad	0x4015222c01e68a0d              # double 5.2833709999999998
	.quad	0x4022c15464dc22ab              # double 9.3775969999999997
	.quad	0x4022a6154434e337              # double 9.3243810000000007
	.quad	0x401f5feb074a771d              # double 7.8436700000000003
	.quad	0x40156e74f2f123c4              # double 5.3578679999999999
	.quad	0x40123f672b884407              # double 4.5619170000000002
	.quad	0x4018337e2c55c960              # double 6.0502859999999998
	.quad	0x401526d2674080fa              # double 5.2879120000000004
	.quad	0x400ef0c77dd872f3              # double 3.8675679999999999
	.quad	0x3fbe49c2c1b10fd8              # double 0.118313
	.quad	0x4011a8754f3775b8              # double 4.4145099999999999
	.quad	0x3fb08094e5d5b24f              # double 0.064462000000000005
	.quad	0x40117c9107faa045              # double 4.3716470000000003
	.quad	0x4015230ad46f587d              # double 5.2842209999999996
	.quad	0x401e96440f238972              # double 7.646744
	.quad	0x3fe9021af7d30ad4              # double 0.78150699999999995
	.quad	0x4013039042d8c2a4              # double 4.7534799999999997
	.quad	0x4021c355ef1fddec              # double 8.8815150000000002
	.quad	0x401ca388a8b08dd2              # double 7.1597010000000001
	.quad	0x4021a544fe36d224              # double 8.8227919999999997
	.quad	0x4020227546d3f9e8              # double 8.0673010000000005
	.quad	0x40212b89f83be660              # double 8.5850369999999998
	.quad	0x3ffd0c6b484d76ab              # double 1.8155319999999999
	.quad	0x40219294573a7979              # double 8.7862880000000008
	.quad	0x400158383ad9f0a2              # double 2.1680760000000001
	.quad	0x401d1c4da9003eea              # double 7.2776399999999999
	.quad	0x401aed983947496b              # double 6.7320260000000003
	.quad	0x401888323358f2e0              # double 6.1330039999999997
	.quad	0x3feb0ee06d938152              # double 0.84556600000000004
	.quad	0x4012f9d883ba3444              # double 4.7439900000000002
	.quad	0x3ff30bba12b5e52a              # double 1.1903630000000001
	.quad	0x4002a4816f0068dc              # double 2.3303250000000002
	.quad	0x401c76833c60029f              # double 7.1157349999999999
	.quad	0x4020070bae89eba7              # double 8.0137610000000006
	.quad	0x401bd6bc621b7e0b              # double 6.9597030000000002
	.quad	0x4014fba7b9170d63              # double 5.2457570000000002
	.quad	0x4018d8de2ac32229              # double 6.2117849999999999
	.quad	0x401f6d42c3c9eecc              # double 7.8567
	.quad	0x3fcb2b4d8ba40d91              # double 0.212259
	.quad	0x4005c5907d912557              # double 2.7214670000000001
	.quad	0x402391392189bd84              # double 9.7836390000000008
	.quad	0x40073ee675147f13              # double 2.905713
	.quad	0x3fef3d33d29563aa              # double 0.97622100000000001
	.quad	0x402111bd4067cf1c              # double 8.5346469999999996
	.quad	0x400a8af5fd47bedb              # double 3.3178519999999998
	.quad	0x4009d19ef954eb14              # double 3.2273540000000001
	.quad	0x401edb7132724313              # double 7.7142989999999995
	.quad	0x40124668c2613900              # double 4.568759
	.quad	0x4014140e5a35d67c              # double 5.0195860000000003
	.quad	0x4011857a786c2268              # double 4.38035
	.quad	0x3ff27cc39ffd60e9              # double 1.1554599999999999
	.quad	0x400a2f96e158750c              # double 3.273237
	.quad	0x402219205bc01a37              # double 9.0490750000000002
	.quad	0x4006c12d77318fc5              # double 2.844325
	.quad	0x4012747bedb72820              # double 4.6137540000000001
	.quad	0x3fc7de0d66f0cfe1              # double 0.18646399999999999
	.quad	0x40136679cc74b839              # double 4.8500740000000002
	.quad	0x3ffba465a57646ae              # double 1.7276359999999999
	.quad	0x401e2c4c9c90c4df              # double 7.5432610000000002
	.quad	0x3ffedad31fcd24e1              # double 1.9284239999999999
	.quad	0x401d16ca03c4b09f              # double 7.2722550000000004
	.quad	0x4017ce321a2e7f6f              # double 5.9513629999999997
	.quad	0x40157ae5796bfca8              # double 5.3700159999999997
	.quad	0x3ff42c7a7c9de050              # double 1.260859
	.quad	0x401c459817b95a29              # double 7.0679629999999998
	.quad	0x40074216c61522a7              # double 2.90727
	.quad	0x4019da8fc0d2c387              # double 6.4634390000000002
	.quad	0x3fe3cad14a0a0f4d              # double 0.61850799999999995
	.quad	0x3ff086173b85e80c              # double 1.032737
	.quad	0x3ff600f776c4827b              # double 1.3752359999999999
	.quad	0x401169fd7a13c255              # double 4.3535060000000003
	.quad	0x402001a8cdea033e              # double 8.0032409999999992
	.quad	0x400522ef4e0114d3              # double 2.642058
	.quad	0x4007fa8deb0fadf3              # double 2.997341
	.quad	0x3ff54382a12f9011              # double 1.3289820000000001
	.quad	0x401023c536d655e3              # double 4.0349320000000004
	.quad	0x401e98409e55c0fd              # double 7.6486840000000002
	.quad	0x400e2540cc78e9f7              # double 3.7681900000000002
	.quad	0x3fefb8f14db59579              # double 0.99132600000000004
	.quad	0x3fe3eae9ee45c359              # double 0.62242600000000003
	.quad	0x3fdfa5b9628cbd12              # double 0.49448999999999999
	.quad	0x3fd70029f16b11c7              # double 0.35938500000000001
	.quad	0x40211b191dde3758              # double 8.5529259999999994
	.quad	0x401970e1b4bb5e0f              # double 6.3602359999999996
	.quad	0x4020ee1b089a0275              # double 8.4650499999999997
	.quad	0x4006ec764adff823              # double 2.8654600000000001
	.quad	0x401fa6e7e62dc6e3              # double 7.9129940000000003
	.quad	0x4023810d38cda6e7              # double 9.7520539999999993
	.quad	0x402279ccfaeff5c7              # double 9.2378920000000004
	.quad	0x40190b6e503fb374              # double 6.2611629999999998
	.quad	0x3fe22072d1aeb3dd              # double 0.56646099999999999
	.quad	0x3ff4fb56b8737974              # double 1.3113619999999999
	.quad	0x401430a3d70a3d71              # double 5.0475000000000003
	.quad	0x3fd3c7820a30db6a              # double 0.30905199999999999
	.quad	0x4021c3311a543f1c              # double 8.8812339999999991
	.quad	0x4015d524399b2c41              # double 5.4581460000000002
	.quad	0x4016de414e7ee914              # double 5.7170459999999999
	.quad	0x401b52eb5f5f0b28              # double 6.8309759999999997
	.quad	0x4021aaef6f8f0414              # double 8.8338579999999993
	.quad	0x400abc1f85d744f6              # double 3.3418570000000001
	.quad	0x401f9ee568a50508              # double 7.9051720000000003
	.quad	0x40239fce52deca25              # double 9.8121209999999994
	.quad	0x4001fa9c12f09d8c              # double 2.2473679999999998
	.quad	0x4007acebbba55d1c              # double 2.9594339999999999
	.quad	0x400d7f8d2e514c23              # double 3.687281
	.quad	0x4013e66f9335d24a              # double 4.9750350000000001
	.quad	0x401c50bed740c415              # double 7.0788529999999996
	.quad	0x401bfd8cb07d0aee              # double 6.9976070000000004
	.quad	0x401d39f77292c493              # double 7.3066079999999998
	.quad	0x3fe15d6bebe1650a              # double 0.54265399999999997
	.quad	0x40101a48b6523704              # double 4.0256679999999996
	.quad	0x4005e37de939eadd              # double 2.7360799999999998
	.quad	0x401768094e5d5b25              # double 5.8515980000000001
	.quad	0x40060d184c271fff              # double 2.7563939999999998
	.quad	0x4011140e1719f7f9              # double 4.2695850000000002
	.quad	0x40173332f01754b0              # double 5.7999989999999997
	.quad	0x401c6272862f598a              # double 7.0961400000000001
	.quad	0x40157925bb7b6bb1              # double 5.3683079999999999
	.quad	0x4023345e0b4e11dc              # double 9.6022800000000003
	.quad	0x40069621fafc8b00              # double 2.8233069999999998
	.quad	0x4020b240fa9c12f1              # double 8.3481520000000007
	.quad	0x402372d256798959              # double 9.7242610000000002
	.quad	0x4004a5a250f84018              # double 2.5808759999999999
	.quad	0x4016a30014f8b589              # double 5.6591800000000001
	.quad	0x402139fba450acc1              # double 8.6132480000000005
	.quad	0x401c1294141e9af6              # double 7.0181430000000002
	.quad	0x3ffde39c51dabe27              # double 1.868069
	.quad	0x401623c1ce6c093e              # double 5.5349190000000004
	.quad	0x3fea2c3009b30729              # double 0.81789400000000001
	.quad	0x40051d61f5be5d9e              # double 2.6393469999999999
	.quad	0x401f8096787ce960              # double 7.8755740000000003
	.quad	0x40105a7e30878748              # double 4.0883719999999997
	.quad	0x40207da1016ce78a              # double 8.2453690000000002
	.quad	0x401138140dd3fe19              # double 4.3047639999999996
	.quad	0x401b3e8427418d69              # double 6.811051
	.quad	0x4003f66c6de76428              # double 2.4953240000000001
	.quad	0x3ff23b40b34e7686              # double 1.1394660000000001
	.quad	0x3fea5a72a7bd48cb              # double 0.82354099999999997
	.quad	0x40238ae147ae147b              # double 9.7712500000000002
	.quad	0x40185ec679cc74b8              # double 6.0925539999999998
	.quad	0x4020bae87d2c7b89              # double 8.3650549999999999
	.quad	0x3ff315bccaf709b7              # double 1.192807
	.quad	0x400fe8a0d349be90              # double 3.988588
	.quad	0x401bdbcbe61cffeb              # double 6.964645
	.quad	0x40230ce032db1e9f              # double 9.5251479999999997
	.quad	0x4008a5eb313be22e              # double 3.0810149999999998
	.quad	0x4023c14bdfd2630f              # double 9.8775320000000004
	.quad	0x400a359d55e6bc62              # double 3.276179
	.quad	0x4008536262cba733              # double 3.0407150000000001
	.quad	0x40037651b0ccbc06              # double 2.4327730000000001
	.quad	0x401bcc579f234656              # double 6.9495529999999999
	.quad	0x3feea67e846a5d6c              # double 0.957824
	.quad	0x4023aa9b6b2af145              # double 9.8332169999999994
	.quad	0x4017db784662bae0              # double 5.9643259999999998
	.quad	0x3fe494877681669d              # double 0.64313100000000001
	.quad	0x3feffd3b29a1b9fa              # double 0.99966200000000005
	.quad	0x401e049dbec2480f              # double 7.5045080000000004
	.quad	0x400e5f2ba9d1f601              # double 3.7964699999999998
	.quad	0x3feb980b242070b9              # double 0.86231000000000002
	.quad	0x4013d4b87bdcf030              # double 4.9577349999999996
	.quad	0x4010cc08fa7a8501              # double 4.1992529999999997
	.quad	0x4020602a5614df8b              # double 8.1878229999999999
	.quad	0x4021d6be7afa7222              # double 8.9194220000000008
	.quad	0x3fe63e1c9b413986              # double 0.69508199999999998
	.quad	0x3ff3dbff04577d95              # double 1.2412099999999999
	.quad	0x3ff9a9435ac8a372              # double 1.6038239999999999
	.quad	0x40191b2788db0575              # double 6.2765180000000003
	.quad	0x4004ee1ac57e23f2              # double 2.6162619999999999
	.quad	0x3fe003361565c2d2              # double 0.50039199999999995
	.quad	0x4018c521dda059a7              # double 6.1925119999999998
	.quad	0x4010a56861e92924              # double 4.1615310000000001
	.quad	0x3faa8e2e2b8c75c5              # double 0.051866000000000002
	.quad	0x401609d8409e55c1              # double 5.509614
	.quad	0x401ee5dc4007570c              # double 7.7244729999999997
	.quad	0x40109cdaf4adbc66              # double 4.1531789999999997
	.quad	0x4011aedb7281fd9c              # double 4.4207590000000003
	.quad	0x400cd531db445ed5              # double 3.6040990000000002
	.quad	0x3fbaecaeea63b689              # double 0.105174
	.quad	0x3fd304b3c3e74afd              # double 0.29716199999999998
	.quad	0x3fe587fcb923a29c              # double 0.67284999999999995
	.quad	0x3ff0e0aa64c2f838              # double 1.0548500000000001
	.quad	0x3ffedb09a671ef31              # double 1.9284760000000001
	.quad	0x401b80e496ededaf              # double 6.8758720000000002
	.quad	0x40179b3aabcd78c4              # double 5.9015909999999998
	.quad	0x402128f3eccc4695              # double 8.5799859999999999
	.quad	0x401d6403dddb120a              # double 7.3476710000000001
	.quad	0x4002c1aef6f8f041              # double 2.3445719999999999
	.quad	0x4018918bd66277c4              # double 6.1421349999999997
	.quad	0x40211a0b3d4ae42a              # double 8.5508670000000002
	.quad	0x402287f1737542a2              # double 9.2655139999999996
	.quad	0x4006241cc532a498              # double 2.767633
	.quad	0x40233dfaca361998              # double 9.6210540000000008
	.quad	0x40222181e03f7058              # double 9.0654439999999994
	.quad	0x400c0f355cd91eeb              # double 3.5074260000000002
	.quad	0x402300b9dc2f405f              # double 9.5014179999999992
	.quad	0x3ff3513c68661ae7              # double 1.207333
	.quad	0x40019b845564b663              # double 2.200936
	.quad	0x40005ea140570825              # double 2.0462060000000002
	.quad	0x4015d9b38d60a633              # double 5.462599
	.quad	0x40025bb9496249a1              # double 2.2947869999999999
	.quad	0x400887f6f4be835e              # double 3.066389
	.quad	0x4012302bc72e275b              # double 4.5470420000000003
	.quad	0x401e16b59146e4c1              # double 7.5221770000000001
	.quad	0x4006d7e77d523b36              # double 2.8554219999999999
	.quad	0x4010d37ac3eb7cbb              # double 4.2065229999999998
	.quad	0x401b17110e453d21              # double 6.772526
	.quad	0x4007835efa615a8e              # double 2.939146
	.quad	0x40230ef8f041461b              # double 9.5292429999999992
	.quad	0x401838e5c4eb56fc              # double 6.0555640000000004
	.quad	0x4023918eb8950764              # double 9.7842920000000006
	.quad	0x3ff0585271bcdbbe              # double 1.021563
	.quad	0x4018edce39b456b4              # double 6.2322319999999998
	.quad	0x4021c00474d9c6b0              # double 8.8750339999999994
	.quad	0x40063291b823c85c              # double 2.7746919999999999
	.quad	0x3fe859f2ba9d1f60              # double 0.76097999999999998
	.quad	0x4003dd9fd36f7e3d              # double 2.483215
	.quad	0x401907b84db9c737              # double 6.2575390000000004
	.quad	0x40233a2403148777              # double 9.6135560000000008
	.quad	0x3ff36eb80ecfa69c              # double 1.214531
	.quad	0x4000610e02214270              # double 2.04739
	.quad	0x401d7b71fbc5de9c              # double 7.370552
	.quad	0x3fe05cf67b1c0011              # double 0.51134800000000002
	.quad	0x401f5463497b7415              # double 7.8324100000000003
	.quad	0x40004fd6d7e889c2              # double 2.0389840000000001
	.quad	0x3fef72990f301eac              # double 0.98273900000000002
	.quad	0x3f8c6da4484944ed              # double 0.013880999999999999
	.quad	0x40222ac81d3aa36a              # double 9.083558
	.quad	0x401a4dd72367e415              # double 6.5760160000000001
	.quad	0x40123cab3edd8b61              # double 4.559247
	.quad	0x40044f0a5efe9318              # double 2.5385939999999998
	.quad	0x401fae5bc87db2b3              # double 7.9202719999999997
	.quad	0x401fbd6adf71eaff              # double 7.934978
	.quad	0x400f632441fea811              # double 3.9234089999999999
	.quad	0x3ff0906ab14ec205              # double 1.035258
	.quad	0x40234aa411c2a023              # double 9.6457829999999997
	.quad	0x40148783dff3f0fe              # double 5.132339
	.quad	0x4004aed2cbea4ebe              # double 2.5853630000000001
	.quad	0x401f2c77574f722e              # double 7.7934239999999999
	.quad	0x400d5674d1633483              # double 3.6672150000000001
	.quad	0x40136451b93037d6              # double 4.8479679999999998
	.quad	0x3fed734f82f51266              # double 0.92032599999999998
	.quad	0x401b3c886162f167              # double 6.8091140000000001
	.quad	0x400dab9e492bc2fc              # double 3.7087979999999998
	.quad	0x401c3b70691ea78b              # double 7.058046
	.quad	0x4016322424a276b8              # double 5.5489660000000001
	.quad	0x3ff41caafbc1acde              # double 1.256999
	.quad	0x4007b6b1a2a4db16              # double 2.9642059999999999
	.quad	0x3ffac5b4aa9717df              # double 1.673268
	.quad	0x4012519c9d5a187a              # double 4.5796989999999997
	.quad	0x40234360285ec3db              # double 9.6315930000000005
	.quad	0x4000e460ed80a17b              # double 2.111513
	.quad	0x402122c81d3aa36a              # double 8.567933
	.quad	0x401cb633ce63a5c2              # double 7.1779320000000002
	.quad	0x401422539756c93a              # double 5.0335219999999996
	.quad	0x3ff5120296b3354c              # double 1.316897
	.quad	0x40167620ee8d10f5              # double 5.6153599999999999
	.quad	0x4001c25a682b6284              # double 2.2198989999999998
	.quad	0x40214179e16d6dc2              # double 8.6278830000000006
	.quad	0x4016b840181e03f7              # double 5.679932
	.quad	0x402078d49949e881              # double 8.2359969999999993
	.quad	0x4021d6b67c286f8b              # double 8.9193610000000003
	.quad	0x40208496249a133c              # double 8.2589579999999997
	.quad	0x4010d383ad9f0a1c              # double 4.2065570000000001
	.quad	0x40171afc04c8bc9d              # double 5.7763520000000002
	.quad	0x40066a1405708249              # double 2.801796
	.quad	0x401212da554b8bf0              # double 4.5184110000000004
	.quad	0x3ff868b8f14db595              # double 1.5255669999999999
	.quad	0x4006b01e2584f4c7              # double 2.835995
	.quad	0x3ff38eabffcdab19              # double 1.222332
	.quad	0x401361b25f633ce6              # double 4.8454069999999998
	.quad	0x3ffce6bb55ac03ff              # double 1.8063309999999999
	.quad	0x401aabca1059ea57              # double 6.6677629999999999
	.quad	0x400589b62c77574f              # double 2.6922419999999998
	.quad	0x400ddfddebd9018e              # double 3.7343099999999998
	.quad	0x401921ba7fc32ebe              # double 6.2829379999999997
	.quad	0x401ce49491f2dc2b              # double 7.2232229999999999
	.quad	0x40228909d0635a42              # double 9.2676529999999993
	.quad	0x4012f69df97aaac1              # double 4.740837
	.quad	0x4014dee807bbb624              # double 5.2176819999999999
	.quad	0x402079c25d074214              # double 8.2378110000000006
	.quad	0x3ff3ac710cb295ea              # double 1.2296
	.quad	0x40202450acc0bdcb              # double 8.0709280000000003
	.quad	0x401c35fa658c4bd3              # double 7.0527129999999998
	.quad	0x400fe50bd87b56b8              # double 3.9868389999999998
	.quad	0x401ba63c31df761d              # double 6.9123390000000002
	.quad	0x40095971c10d7bea              # double 3.1686740000000002
	.quad	0x401d8e236c15d2d0              # double 7.3888069999999999
	.quad	0x4018406573215fcc              # double 6.0628869999999999
	.quad	0x401051d57ff9b563              # double 4.0799159999999999
	.quad	0x402079a77e5eaab0              # double 8.2376059999999995
	.quad	0x40225886df82b1f7              # double 9.1729040000000008
	.quad	0x40087077ccc03793              # double 3.054916
	.quad	0x4000d5bbbe878fac              # double 2.1043620000000001
	.quad	0x401d8cf7878b7a1c              # double 7.3876629999999999
	.quad	0x4001018611fd5886              # double 2.1257440000000001
	.quad	0x3ffa5eb6390c9108              # double 1.648123
	.quad	0x400bca3d70a3d70a              # double 3.4737499999999999
	.quad	0x3ff61c39bcba3012              # double 1.381891
	.quad	0x40058159817b95a3              # double 2.6881590000000002
	.quad	0x4023138c75c4a83b              # double 9.5381809999999997
	.quad	0x40220342aa9f7b5b              # double 9.0063680000000002
	.quad	0x402002cb20fb224b              # double 8.0054560000000006
	.quad	0x4021689331a08bfc              # double 8.7042479999999997
	.quad	0x4012709528f190d1              # double 4.6099439999999996
	.quad	0x4011611cf355cd92              # double 4.3448370000000001
	.quad	0x4022135c9e6687f4              # double 9.0378159999999994
	.quad	0x401191efb6dca07f              # double 4.3925159999999996
	.quad	0x4006ad72ffd1dcd7              # double 2.834692
	.quad	0x402275104d551d69              # double 9.2286400000000004
	.quad	0x40199e225fa658c5              # double 6.4044280000000002
	.quad	0x4011a3b57c4e2f38              # double 4.409872
	.quad	0x4019a642bf9830e4              # double 6.4123640000000002
	.quad	0x3fe256733ebbfd72              # double 0.57305300000000003
	.quad	0x4020a70d1fa33376              # double 8.3262719999999995
	.quad	0x4003826b2f23033a              # double 2.4386809999999999
	.quad	0x3ff34ef77f27fe4c              # double 1.206779
	.quad	0x400c7e3fbbd7b203              # double 3.5616449999999999
	.quad	0x3fedadcd2d44dca9              # double 0.92746600000000001
	.quad	0x401b69780baa582e              # double 6.8529970000000002
	.quad	0x4023e7394b7b2895              # double 9.9516089999999994
	.quad	0x400c6924f227d029              # double 3.5513400000000002
	.quad	0x3ffa6234a87e38eb              # double 1.648976
	.quad	0x40232a0ff540895d              # double 9.5821529999999999
	.quad	0x3fdfe6d15ad106ee              # double 0.49846299999999999
	.quad	0x4021351e53a81dc1              # double 8.6037470000000003
	.quad	0x3fd7d441355475a3              # double 0.37232999999999999
	.quad	0x3ffe03b2dd377e1c              # double 1.8759030000000001
	.quad	0x4021052fc2656abe              # double 8.5101300000000002
	.quad	0x4017121f2990f302              # double 5.7676970000000001
	.quad	0x4020c1858bc59b80              # double 8.3779719999999998
	.quad	0x40202696a26e5471              # double 8.0753679999999992
	.quad	0x4021359ad85dfa87              # double 8.6046969999999998
	.quad	0x4015fb9ae0c17657              # double 5.4957079999999996
	.quad	0x3fe3dd50a88effe3              # double 0.62076600000000004
	.quad	0x4021e7c8f32378ab              # double 8.9527049999999999
	.quad	0x401d73f359ff4fd7              # double 7.3632330000000001
	.quad	0x3ff79ff609dcf894              # double 1.476553
	.quad	0x4001cad9274e22a3              # double 2.2240470000000001
	.quad	0x4003dcad9ad85dfb              # double 2.4827530000000002
	.quad	0x4014f9439de481f5              # double 5.2434219999999998
	.quad	0x4018aa7daa4fca43              # double 6.1664950000000003
	.quad	0x40144d71b0468449              # double 5.0756290000000002
	.quad	0x40139807fed20297              # double 4.8984680000000003
	.quad	0x401727991bc55864              # double 5.7886699999999998
	.quad	0x401dba365cb35f3d              # double 7.4318479999999996
	.quad	0x40188d3ed527e521              # double 6.1379349999999997
	.quad	0x4011c83d35eb7458              # double 4.4455460000000002
	.quad	0x4019c67be553ac4f              # double 6.4438319999999996
	.quad	0x3fd4752977c88e7a              # double 0.31965100000000002
	.quad	0x3ff704998d045fe1              # double 1.438623
	.quad	0x3feee4a9cdc44391              # double 0.96541299999999996
	.quad	0x401f52456f75d9a1              # double 7.830343
	.quad	0x40133bb5e0f7fcfc              # double 4.8083109999999998
	.quad	0x400fded288ce703b              # double 3.9838
	.quad	0x3fd11c9f72f76e61              # double 0.267372
	.quad	0x4013acbaf965b20c              # double 4.9186820000000004
	.quad	0x3fff66dacabc5155              # double 1.9626110000000001
	.quad	0x400b2d3a604e1e71              # double 3.397084
	.quad	0x3ff4cd5a5b9628cc              # double 1.300135
	.quad	0x4016f84449dbec25              # double 5.7424480000000004
	.quad	0x4022f965d3996fa8              # double 9.4871049999999996
	.quad	0x401090ab71327243              # double 4.1412789999999999
	.quad	0x4011337718655193              # double 4.3002589999999996
	.quad	0x40150d3a1d323fee              # double 5.2629169999999998
	.quad	0x402335cbddb9841b              # double 9.6050710000000005
	.quad	0x3fd147a9e2bcf91a              # double 0.26999899999999999
	.quad	0x4019459ff4fd6d7f              # double 6.3179930000000004
	.quad	0x401bd278d0cc35ce              # double 6.9555389999999999
	.quad	0x40227b1b36bd2b6f              # double 9.2404419999999998
	.quad	0x401aa8bcdfefbf40              # double 6.6647829999999999
	.quad	0x40062b484d76ab58              # double 2.771134
	.quad	0x3ff42f3c2dadb835              # double 1.2615320000000001
	.quad	0x4018921b3aeee957              # double 6.1426819999999998
	.quad	0x4002895e17e34b94              # double 2.3170739999999999
	.quad	0x40083d9018e75793              # double 3.0300600000000002
	.quad	0x4006f3c148344c38              # double 2.869021
	.quad	0x40118d1351159c49              # double 4.3877689999999996
	.quad	0x4023f372a38b8ae3              # double 9.9754839999999997
	.quad	0x3ff74b3700474d9c              # double 1.4558629999999999
	.quad	0x4004e1e603d57796              # double 2.6103019999999999
	.quad	0x401945ca6ca03c4b              # double 6.318155
	.quad	0x3ff32f9335d249e4              # double 1.1991149999999999
	.quad	0x4015ba66559f6ec6              # double 5.4320310000000003
	.quad	0x4005ddda8bd230ba              # double 2.7333270000000001
	.quad	0x401f71a8262456f7              # double 7.8609929999999996
	.quad	0x401d601bc98a222d              # double 7.3438559999999997
	.quad	0x4023705ab3aabcd8              # double 9.7194420000000008
	.quad	0x4010e1be6e653869              # double 4.220453
	.quad	0x4021718a43bb40b3              # double 8.7217579999999995
	.quad	0x400454db59578a2b              # double 2.5414340000000002
	.quad	0x402110d5410f94c8              # double 8.5328769999999992
	.quad	0x40183d0e56041893              # double 6.0596249999999996
	.quad	0x4013a9a459103c8e              # double 4.9156659999999999
	.quad	0x401e94f8726d04e6              # double 7.6454789999999999
	.quad	0x400e8120e1f7d73d              # double 3.8130510000000002
	.quad	0x40217f4d9c6b0532              # double 8.7486390000000007
	.quad	0x4014a53825e13b19              # double 5.1613470000000001
	.quad	0x3fe311d798d8a97a              # double 0.59592800000000001
	.quad	0x4018784cf0739b02              # double 6.1174809999999997
	.quad	0x40184b124d099e0e              # double 6.0733119999999996
	.quad	0x4000517720c8cd64              # double 2.0397780000000001
	.quad	0x4002d7060bb2bbaa              # double 2.3549920000000002
	.quad	0x3fee59a0f0a5efe9              # double 0.94844099999999998
	.quad	0x3ff9466e43aa79bc              # double 1.5796950000000001
	.quad	0x401dada5daf07bfe              # double 7.4195779999999996
	.quad	0x40128a05dd8f92b0              # double 4.6347880000000004
	.quad	0x40173a71151611ba              # double 5.8070719999999998
	.quad	0x40206c6cdaf4adbc              # double 8.2117679999999992
	.quad	0x401f5d6f97679032              # double 7.8412459999999999
	.quad	0x4011b5275ee99a63              # double 4.4269080000000001
	.quad	0x402361068986fcdf              # double 9.6895030000000001
	.quad	0x401ce215336deb96              # double 7.2207840000000001
	.quad	0x40179207d4e09785              # double 5.8926080000000001
	.quad	0x401d4625204af923              # double 7.3185010000000004
	.quad	0x401953d20f2becee              # double 6.3318560000000002
	.quad	0x4017b189bd8383ae              # double 5.9233770000000003
	.quad	0x401d07f6b1a2a4db              # double 7.2577769999999999
	.quad	0x4002dcad14a0a0f5              # double 2.3577520000000001
	.quad	0x4012bf227d028a1e              # double 4.686655
	.quad	0x4018cf53c579f234              # double 6.2024679999999996
	.quad	0x400694916ca46e09              # double 2.822543
	.quad	0x400c24c059210386              # double 3.5179450000000001
	.quad	0x4020c507e9d94d0e              # double 8.3848260000000003
	.quad	0x3ffaa85caafbc1ad              # double 1.666104
	.quad	0x4022e17b95a29414              # double 9.4403959999999997
	.quad	0x401e8ba6efc371da              # double 7.6363789999999998
	.quad	0x400e837c5692b3cc              # double 3.8142019999999999
	.quad	0x400f9b320535c9e6              # double 3.9507789999999998
	.quad	0x3fe86963dc486ad3              # double 0.76286500000000002
	.quad	0x4015111a975afaf8              # double 5.2667029999999997
	.quad	0x4017f24d4cb9ecf6              # double 5.9866229999999998
	.quad	0x40164d04a2fcefaa              # double 5.5752129999999998
	.quad	0x4013622af5771002              # double 4.8458670000000001
	.quad	0x4010398a65492ff5              # double 4.0561920000000002
	.quad	0x40203982ecaeea64              # double 8.1123270000000005
	.quad	0x4013bf8e3ac0c62e              # double 4.9370659999999997
	.quad	0x4007ca6d26740810              # double 2.9738410000000002
	.quad	0x4014f7b6fe2e6ea8              # double 5.2419089999999997
	.quad	0x4004308cc575c076              # double 2.5237059999999998
	.quad	0x40209e8ee6b8305e              # double 8.3096840000000007
	.quad	0x401b8c4cdfaca362              # double 6.8870120000000004
	.quad	0x40238f2b884406c0              # double 9.7796289999999999
	.quad	0x4022c8950763a190              # double 9.3917619999999999
	.quad	0x401a5901083dbc23              # double 6.5869179999999998
	.quad	0x400bc220bc382a13              # double 3.469789
	.quad	0x400a1446f9b994e2              # double 3.2599010000000002
	.quad	0x40106e631f8a0903              # double 4.1078000000000001
	.quad	0x4020cd7646ae3a3b              # double 8.4012930000000008
	.quad	0x401aeab53d640e9d              # double 6.7292069999999997
	.quad	0x40115ccfaeff5c6c              # double 4.3406359999999999
	.quad	0x4020b5330941c821              # double 8.3539049999999992
	.quad	0x40113786c226809d              # double 4.3042249999999997
	.quad	0x3fb1a8deb0fadf2f              # double 0.068983000000000003
	.quad	0x40180fe2a3cea6c2              # double 6.0155130000000003
	.quad	0x3fe611a32b12d341              # double 0.68965299999999996
	.quad	0x3fea945f9df548ed              # double 0.83061200000000002
	.quad	0x401d95c13fd0d068              # double 7.3962450000000004
	.quad	0x4018ad90e23af31b              # double 6.1694979999999999
	.quad	0x3ff6dce8d972cd7d              # double 1.428933
	.quad	0x4018801f75104d55              # double 6.1251199999999999
	.quad	0x400ec0d801b43526              # double 3.8441619999999999
	.quad	0x401c89b30728e92d              # double 7.1344719999999997
	.quad	0x4015b9203a322af5              # double 5.4307869999999996
	.quad	0x40011daa4fca42af              # double 2.1394850000000001
	.quad	0x3ff87b9cf9a06a6e              # double 1.530179
	.quad	0x401ef4c48adeebb3              # double 7.7390309999999997
	.quad	0x3ff3475a31a4bdba              # double 1.20492
	.quad	0x3fec550225742dcf              # double 0.88537699999999997
	.quad	0x401db9552e2fbe34              # double 7.4309890000000003
	.quad	0x4012bfbb0e5e6794              # double 4.6872369999999997
	.quad	0x40239bb7739f340d              # double 9.8041339999999994
	.quad	0x4022317b30f8c650              # double 9.0966430000000003
	.quad	0x40058d0a24463066              # double 2.693867
	.quad	0x4004cddf00abf76a              # double 2.6005229999999999
	.quad	0x4022130ad46f587d              # double 9.0371919999999992
	.quad	0x40217f865d7cb2d9              # double 8.749072
	.quad	0x402394b1897a67a5              # double 9.7904169999999997
	.quad	0x4022cd45846e8f2a              # double 9.4009210000000003
	.quad	0x401f7f41aef6f8f0              # double 7.8742739999999998
	.quad	0x4000b32df505d0fa              # double 2.0874899999999998
	.quad	0x40209e7ea5f84cad              # double 8.3095599999999994
	.quad	0x40108a821f2990f3              # double 4.135262
	.quad	0x4015f5109070fbec              # double 5.4893210000000003
	.quad	0x40078595bbbe8790              # double 2.9402270000000001
	.quad	0x400106eb91b3f20a              # double 2.1283789999999998
	.quad	0x4010eb43526527a2              # double 4.229749
	.quad	0x3fffde02ea960b70              # double 1.9917020000000001
	.quad	0x400afa1a0cf1800a              # double 3.3721199999999998
	.quad	0x402011f14983d790              # double 8.0350439999999992
	.quad	0x400df7bbf93ff25e              # double 3.7459639999999998
	.quad	0x40179613d31b9b67              # double 5.89656
	.quad	0x401915393250b524              # double 6.2707259999999998
	.quad	0x401d9704bc27631b              # double 7.3974789999999997
	.quad	0x40217b0fcf80dc33              # double 8.7403549999999992
	.quad	0x402112c8a3726070              # double 8.5366870000000006
	.quad	0x400c0dcb1465e892              # double 3.5067349999999999
	.quad	0x4007c5fe111276fb              # double 2.971676
	.quad	0x4022743d68405b3a              # double 9.2270310000000002
	.quad	0x4013f9ce4a7b4e55              # double 4.993951
	.quad	0x3fc5b4aa9717df1a              # double 0.169576
	.quad	0x3fe40cc575c0767d              # double 0.62655899999999998
	.quad	0x3fd993b7d84901d2              # double 0.39964100000000002
	.quad	0x4022c8ccff21b3af              # double 9.3921890000000001
	.quad	0x4009b37110e453d2              # double 3.212618
	.quad	0x401277525460aa65              # double 4.6165250000000002
	.quad	0x4015b1cd1c7de508              # double 5.4236339999999998
	.quad	0x3fe46defc7a39820              # double 0.63841999999999999
	.quad	0x3fe8a6f826edaa93              # double 0.77038200000000001
	.quad	0x401bc0c1b97353b5              # double 6.9382390000000003
	.quad	0x400a8a821f2990f3              # double 3.317631
	.quad	0x40117d5c74751ce3              # double 4.3724230000000004
	.quad	0x401d9b07075b3e14              # double 7.4013939999999998
	.quad	0x40187bbadc0980b2              # double 6.1208299999999998
	.quad	0x4018398a222d5172              # double 6.0561910000000001
	.quad	0x4019dad57bc7f77b              # double 6.463705
	.quad	0x400e2178f68be2f8              # double 3.7663440000000001
	.quad	0x4015835a858793de              # double 5.3782750000000004
	.quad	0x40171f2f55582129              # double 5.7804539999999998
	.quad	0x400b5c792d1287c2              # double 3.420153
	.quad	0x401789efd86a8fc1              # double 5.8847040000000002
	.quad	0x401b5c9752977c89              # double 6.8404210000000001
	.quad	0x400d6d0e56041893              # double 3.6782499999999998
	.quad	0x4017b1f75104d552              # double 5.9237950000000001
	.quad	0x3fe022f6a50d6b23              # double 0.50426800000000005
	.quad	0x40198b0c026cc1ca              # double 6.3857879999999998
	.quad	0x401d7d20afa2f05a              # double 7.3721949999999996
	.quad	0x3ff01b749adc8fb8              # double 1.0067029999999999
	.quad	0x401fc361dc93ea2d              # double 7.9408029999999998
	.quad	0x3ffbf71001d5c316              # double 1.7478180000000001
	.quad	0x402277bbd7b2031d              # double 9.2338550000000001
	.quad	0x4012642a23bff8a9              # double 4.597817
	.quad	0x401f4b65ecc3e319              # double 7.8236309999999997
	.quad	0x40193c49ba5e353f              # double 6.3088749999999996
	.quad	0x4018834938583622              # double 6.128209
	.quad	0x3ffa1154866a11ed              # double 1.6292310000000001
	.quad	0x4021f2bcb5fe542e              # double 8.9740959999999994
	.quad	0x401bcf29d40ee06e              # double 6.9523080000000004
	.quad	0x401b7e17e34b9453              # double 6.873138
	.quad	0x3fff56312f4cf4a5              # double 1.9585429999999999
	.quad	0x4021d59cae21101b              # double 8.917211
	.quad	0x400beec204f2ae08              # double 3.491581
	.quad	0x3ffdd34373f316e3              # double 1.8640779999999999
	.quad	0x401cf88ce703afb8              # double 7.2427250000000001
	.quad	0x401f8be9856a37ac              # double 7.8866329999999998
	.quad	0x4017a4f2f123c42a              # double 5.9110829999999996
	.quad	0x4020c37b4a2339c1              # double 8.3818000000000001
	.quad	0x40203fd8cf398e97              # double 8.124701
	.quad	0x3fe84c8366516db1              # double 0.75934000000000001
	.quad	0x40009e03f705857b              # double 2.077156
	.quad	0x3ff76eb4e981387a              # double 1.4645280000000001
	.quad	0x400cd80cb6c7a7ca              # double 3.6054930000000001
	.quad	0x400d0fcc5b8dc550              # double 3.632714
	.quad	0x400845375c8d9f90              # double 3.0337969999999999
	.quad	0x40062a7ef9db22d1              # double 2.77075
	.quad	0x4021f44241c3efae              # double 8.9770679999999992
	.quad	0x401ea69835158b82              # double 7.6626899999999996
	.quad	0x401274c122749f0e              # double 4.6140179999999997
	.quad	0x400ce9d7342edbb6              # double 3.6141800000000002
	.quad	0x401fda8c154c985f              # double 7.9634249999999999
	.quad	0x400590060780fdc1              # double 2.6953239999999998
	.quad	0x3fe40a4e379b77c0              # double 0.62625799999999998
	.quad	0x401d77e2c55c9603              # double 7.367076
	.quad	0x3fff936e71cda2b6              # double 1.9734940000000001
	.quad	0x4018347f13059642              # double 6.051266
	.quad	0x4020dc4dca8e2e2c              # double 8.4302810000000008
	.quad	0x3ff5d09f1f14983d              # double 1.3634329999999999
	.quad	0x3fc4b34e7685985b              # double 0.161722
	.quad	0x401a81455219a848              # double 6.6262410000000003
	.quad	0x4022cb5d894812be              # double 9.3971979999999995
	.quad	0x3ff5aaf89c5e6ff8              # double 1.354241
	.quad	0x402340b4e11dbca9              # double 9.6263799999999992
	.quad	0x400e727913e81451              # double 3.805895
	.quad	0x401224ee7c49fd7a              # double 4.5360659999999999
	.quad	0x4019ae5b8561d430              # double 6.4202709999999996
	.quad	0x401cfe24febd09e1              # double 7.2481879999999999
	.quad	0x400777110e453d21              # double 2.933138
	.quad	0x3ff82dadb8348f54              # double 1.5111520000000001
	.quad	0x4022a184c271fff8              # double 9.3154660000000006
	.quad	0x3ff80cdd93c46d83              # double 1.5031410000000001
	.quad	0x3fffe5785f8d2e51              # double 1.9935229999999999
	.quad	0x401ca42fa5093965              # double 7.1603380000000003
	.quad	0x4023c5bfad299956              # double 9.8862279999999991
	.quad	0x400a89c90c4dec1c              # double 3.3172779999999999
	.quad	0x40036be7afa72218              # double 2.4276879999999998
	.quad	0x4015fbf8fcd67fd4              # double 5.496067
	.quad	0x401bef1561911490              # double 6.9834800000000001
	.quad	0x401646a2f48c2e77              # double 5.568981
	.quad	0x3ff2c5a921ccd962              # double 1.173257
	.quad	0x401c201ffb480a5b              # double 7.0313720000000002
	.quad	0x401245f99c38b04b              # double 4.5683350000000003
	.quad	0x401cacbff47735c2              # double 7.1687010000000004
	.quad	0x401c300e6afcce1c              # double 7.0469299999999997
	.quad	0x4011986833c6002a              # double 4.3988350000000001
	.quad	0x4003c4bdba0a5269              # double 2.4710649999999998
	.quad	0x4015602a77a2cecd              # double 5.3439120000000004
	.quad	0x3ffbdd28d002e233              # double 1.7414940000000001
	.quad	0x4003d008a697aede              # double 2.4765790000000001
	.quad	0x40096523704790b8              # double 3.1743839999999999
	.quad	0x4023f8537e2c55c9              # double 9.9850119999999993
	.quad	0x401d20ba6266fd65              # double 7.2819609999999999
	.quad	0x4016196851223183              # double 5.5248119999999998
	.quad	0x401c35625a682b63              # double 7.0521330000000004
	.quad	0x4011292641b328b7              # double 4.2901850000000001
	.quad	0x401eb1098d477bc0              # double 7.6728880000000004
	.quad	0x3fefcaba38759253              # double 0.99349699999999996
	.quad	0x401e982385404641              # double 7.6485729999999998
	.quad	0x400f2c625e99e94b              # double 3.8966720000000001
	.quad	0x40033b71fbc5de9c              # double 2.404026
	.quad	0x40210a0c8cd63cb8              # double 8.5196269999999998
	.quad	0x40184de8709741d1              # double 6.0760820000000004
	.quad	0x4013d43cc07aaef3              # double 4.9572630000000002
	.quad	0x401cafa658c4bd34              # double 7.1715330000000002
	.quad	0x400d71d25aab4741              # double 3.680577
	.quad	0x40228b05100a393f              # double 9.2715230000000002
	.quad	0x400aac6d612c6ac2              # double 3.334193
	.quad	0x4007450d6b228dca              # double 2.9087170000000002
	.quad	0x40172adf71eafee7              # double 5.791868
	.quad	0x40229194e1a3f466              # double 9.2843389999999992
	.quad	0x40207a1f4b1ee243              # double 8.2385199999999994
	.quad	0x400ade23f24d8fd6              # double 3.3584670000000001
	.quad	0x401be4cf4a558ea8              # double 6.9734470000000002
	.quad	0x4022c96cc5fbf834              # double 9.3934080000000008
	.quad	0x3ff2a8aa433508f6              # double 1.1661779999999999
	.quad	0x40134d0e991ff716              # double 4.8252509999999997
	.quad	0x4010626e115592da              # double 4.0961230000000004
	.quad	0x401db8bfc2224edf              # double 7.4304189999999997
	.quad	0x3ffc84f09528f191              # double 1.782456
	.quad	0x3fe94373f316e371              # double 0.78948399999999996
	.quad	0x402239d2e0e30447              # double 9.1129370000000005
	.quad	0x4020619a415f45e1              # double 8.1906300000000005
	.quad	0x400883d9231c64bb              # double 3.0643790000000002
	.quad	0x40188cf355cd91ef              # double 6.1376470000000003
	.quad	0x4017d41355475a32              # double 5.9571050000000003
	.quad	0x4016847a5b0ff10f              # double 5.6293730000000002
	.quad	0x4023fe96c3fc43b3              # double 9.9972440000000002
	.quad	0x40183f090f733a8a              # double 6.0615579999999998
	.quad	0x4011b53d640e9d52              # double 4.4269920000000003
	.quad	0x400e2e9899bf5947              # double 3.7727520000000001
	.quad	0x40227cba0e842742              # double 9.2436070000000008
	.quad	0x4005716b97fe8ee7              # double 2.6803810000000001
	.quad	0x401ea16a055757d6              # double 7.6576310000000003
	.quad	0x4023e0359bc33f85              # double 9.9379089999999994
	.quad	0x401689107faa044b              # double 5.6338520000000001
	.quad	0x401733ffac1d29dc              # double 5.8007799999999996
	.quad	0x400654f3775b8130              # double 2.79148
	.quad	0x4000a2b27cbf6e3f              # double 2.0794419999999998
	.quad	0x4023be7ddca4b125              # double 9.8720540000000003
	.quad	0x4021e45479d4d834              # double 8.9459569999999999
	.quad	0x40217fef7c243dcd              # double 8.7498740000000002
	.quad	0x4008464a16a48733              # double 3.0343209999999998
	.quad	0x3fa48ba83f4eca68              # double 0.040127999999999997
	.quad	0x4011133e78e1932d              # double 4.2687929999999996
	.quad	0x3fe1ed6777079e5a              # double 0.56023000000000001
	.quad	0x3fe1427a63736cdf              # double 0.53936499999999998
	.quad	0x4016ebc98a222d51              # double 5.7302609999999996
	.quad	0x4018890795f676ea              # double 6.1338179999999998
	.quad	0x4021f8c38f366949              # double 8.9858670000000007
	.quad	0x4019529c779a6b51              # double 6.3306750000000003
	.quad	0x400f91159c497742              # double 3.9458419999999998
	.quad	0x3fdb04534bd76ee7              # double 0.42213899999999999
	.quad	0x40109f3e0370cdc8              # double 4.1555099999999996
	.quad	0x4015eaa9717df19d              # double 5.4791619999999996
	.quad	0x401124ef88b97785              # double 4.2860699999999996
	.quad	0x4011b33ce63a5c1c              # double 4.4250369999999997
	.quad	0x4023e0ee49f51698              # double 9.939318
	.quad	0x402234cdfaca361a              # double 9.1031340000000007
	.quad	0x3feed3ed527e5215              # double 0.96336999999999994
	.quad	0x4011be28aa433509              # double 4.435702
	.quad	0x3ff97d1bb4916ca4              # double 1.5930439999999999
	.quad	0x401cc6d7e889c1b5              # double 7.1941829999999998
	.quad	0x3fcb43b70ef56649              # double 0.213004
	.quad	0x400dc85e3da2f8be              # double 3.722836
	.quad	0x4016d5a6c5d206c8              # double 5.7086439999999996
	.quad	0x401cad5e8d5410f9              # double 7.1693059999999997
	.quad	0x4013839085f4a127              # double 4.8784809999999998
	.quad	0x4018ee4e26d4801f              # double 6.2327199999999996
	.quad	0x3fead117b5286b59              # double 0.83802399999999999
	.quad	0x401da6e9bbf0dc77              # double 7.4130010000000004
	.quad	0x40046f062d40aaeb              # double 2.554211
	.quad	0x40179856a37ac3eb              # double 5.8987679999999996
	.quad	0x3fefbcd141a6937d              # double 0.99179899999999998
	.quad	0x4012fd834091c087              # double 4.7475709999999998
	.quad	0x3ff56f9db22d0e56              # double 1.33975
	.quad	0x40193c49fd7a13c2              # double 6.3088759999999997
	.quad	0x3ff21129888f861a              # double 1.1291899999999999
	.quad	0x3ffb7702602c9082              # double 1.7165550000000001
	.quad	0x4007641248d7e026              # double 2.9238629999999999
	.quad	0x4017ca26e5471716              # double 5.9474140000000002
	.quad	0x401e972ead9274e2              # double 7.6476389999999999
	.quad	0x4023948323358f2e              # double 9.790063
	.quad	0x3fd894317acc4ef9              # double 0.38404500000000003
	.quad	0x3ffdfa7546d3f9e8              # double 1.8736470000000001
	.quad	0x400c7c36976bc1f0              # double 3.560651
	.quad	0x4012b2f2734f82f5              # double 4.6747529999999999
	.quad	0x400a91fb3fa6defc              # double 3.3212799999999998
	.quad	0x401a91055b899392              # double 6.6416219999999999
	.quad	0x40226405f6ba0621              # double 9.1953580000000006
	.quad	0x40133818c5c9a34d              # double 4.8047820000000003
	.quad	0x400a999cbee807bc              # double 3.3250060000000001
	.quad	0x400d9507e9d94d0e              # double 3.6977690000000001
	.quad	0x400ea01bc98a222d              # double 3.8281779999999999
	.quad	0x40110bdc26dce39b              # double 4.2615819999999998
	.quad	0x4021a3a6efc371da              # double 8.8196329999999996
	.quad	0x4004470b06c43f60              # double 2.5346890000000002
	.quad	0x4014a40c4156e265              # double 5.1602030000000001
	.quad	0x40122c6327ed84d3              # double 4.5433469999999998
	.quad	0x3fcae957470eb24a              # double 0.21024599999999999
	.quad	0x3fd030db6a1e81cb              # double 0.25298199999999998
	.quad	0x40232c91d14e3bcd              # double 9.5870499999999996
	.quad	0x40019924af0bf1a6              # double 2.1997770000000001
	.quad	0x40230b415b1422cd              # double 9.5219830000000005
	.quad	0x400f0e5604189375              # double 3.8820000000000001
	.quad	0x402246c54bcf0b6b              # double 9.1382239999999992
	.quad	0x4001048cf7caa759              # double 2.1272220000000002
	.quad	0x4009c0589acbc8c1              # double 3.2189190000000001
	.quad	0x4006ea5d6bebe165              # double 2.864436
	.quad	0x4015cd495182a993              # double 5.450475
	.quad	0x3ff6b3d07c84b5dd              # double 1.4189000000000001
	.quad	0x40208d350092ccf7              # double 8.2757950000000005
	.quad	0x400843cd141a6938              # double 3.0331060000000001
	.quad	0x401094bb1af3a14d              # double 4.1452450000000001
	.quad	0x401477ee0b0af5fd              # double 5.1171189999999998
	.quad	0x401d5e6e653868fd              # double 7.3422179999999999
	.quad	0x401638793dd97f63              # double 5.5551500000000003
	.quad	0x40152aebc408d8ed              # double 5.2919150000000004
	.quad	0x402259633482be8c              # double 9.1745850000000004
	.quad	0x4004e4fdb09a671f              # double 2.611812
	.quad	0x4023b18e10cf5b1d              # double 9.8467870000000008
	.quad	0x4021fa74c09c3ce2              # double 8.9891719999999999
	.quad	0x40080b4f1e4b44a2              # double 3.005522
	.quad	0x4012e8c08b75ea68              # double 4.7272970000000001
	.quad	0x400854a5df2239e7              # double 3.0413320000000001
	.quad	0x401c92b884406c01              # double 7.1432820000000001
	.quad	0x401a5d805e5f30e8              # double 6.59131
	.quad	0x400e17a0b5ed8d37              # double 3.7615370000000001
	.quad	0x40182150dae3e6c5              # double 6.0325350000000002
	.quad	0x4022f17c5ef62f9d              # double 9.4716520000000006
	.quad	0x3fc862a1b5c7cd8a              # double 0.19051000000000001
	.quad	0x402355dc1e7967cb              # double 9.6676950000000001
	.quad	0x400c8eb56fb8f57f              # double 3.5696819999999998
	.quad	0x3ffe3ab53d640e9d              # double 1.8893329999999999
	.quad	0x4022c02fd75e2047              # double 9.3753650000000003
	.quad	0x401569563a9f383f              # double 5.352868
	.quad	0x40207cc7b02d59d5              # double 8.2437109999999993
	.quad	0x3ff174959e625636              # double 1.0909629999999999
	.quad	0x4012ca7ded6ba8c6              # double 4.6977460000000004
	.quad	0x40226b8da3c21188              # double 9.2100650000000001
	.quad	0x400e06759ab6d00b              # double 3.7531539999999999
	.quad	0x40204e338b47c73f              # double 8.1527370000000001
	.quad	0x4021978705425f20              # double 8.7959519999999998
	.quad	0x40205164840e171a              # double 8.1589700000000001
	.quad	0x40229481d3aa36a0              # double 9.2900530000000003
	.quad	0x40093b2cc70867ae              # double 3.1538940000000002
	.quad	0x400a310880d801b4              # double 3.2739419999999999
	.quad	0x40161d83c6c97d8d              # double 5.528823
	.quad	0x40124da1ec4e7254              # double 4.5758130000000001
	.quad	0x3fe9fa0d77b7c782              # double 0.811774
	.quad	0x40226b0f27bb2fec              # double 9.2090999999999993
	.quad	0x4020ca8134480629              # double 8.3955169999999999
	.quad	0x400f74e7685985ad              # double 3.9320819999999999
	.quad	0x40185b7f5a5332ad              # double 6.089353
	.quad	0x4019e995ee136e72              # double 6.4781110000000002
	.quad	0x40165605681ecd4b              # double 5.5840050000000003
	.quad	0x401b87eed45e9186              # double 6.8827470000000002
	.quad	0x40152564302b40f6              # double 5.2865149999999996
	.quad	0x4016f2d59d55e6bc              # double 5.7371429999999997
	.quad	0x4009cac083126e98              # double 3.2240000000000002
	.quad	0x40221ce5d5b24e9c              # double 9.0564409999999995
	.quad	0x400a72c5197a2489              # double 3.3060399999999999
	.quad	0x4019c4face67d780              # double 6.4423630000000003
	.quad	0x401f65ddd2ae8e1d              # double 7.8494789999999996
	.quad	0x40208a0c069e7fb2              # double 8.2696229999999993
	.quad	0x400306bb55ac03ff              # double 2.3782869999999998
	.quad	0x401fa3d816aceaaf              # double 7.9100039999999998
	.quad	0x4009558b827fa1a1              # double 3.1667700000000001
	.quad	0x40170ead0c3d2524              # double 5.7643319999999996
	.quad	0x40123f0b28522ea1              # double 4.561566
	.quad	0x4001d374bc6a7efa              # double 2.2282500000000001
	.quad	0x4021144bd33d2956              # double 8.5396409999999996
	.quad	0x40199a116659d12d              # double 6.4004570000000003
	.quad	0x40230e4020817fc7              # double 9.5278329999999993
	.quad	0x3fde51697f1f9ad0              # double 0.473719
	.quad	0x4002606c00da1a93              # double 2.2970809999999999
	.quad	0x401d8e91c8eabffd              # double 7.3892280000000001
	.quad	0x40114f5ad96a6a01              # double 4.3274949999999999
	.quad	0x4022935158b827fa              # double 9.2877299999999998
	.quad	0x401e31ea78af3e47              # double 7.5487460000000004
	.quad	0x4002b5989df1172f              # double 2.33867
	.quad	0x4008c19439de481f              # double 3.0945209999999999
	.quad	0x4004d784662bae04              # double 2.6052330000000001
	.quad	0x3ff289d6adf71eb0              # double 1.158652
	.quad	0x4017d06ee30caa32              # double 5.9535479999999996
	.quad	0x401c045996744b2b              # double 7.0042479999999996
	.quad	0x40229532c625e99f              # double 9.2914030000000007
	.quad	0x4022f254e6e221c9              # double 9.4733040000000006
	.quad	0x401b4b252ce032db              # double 6.8233839999999999
	.quad	0x4000f7689ca18bd6              # double 2.1208049999999998
	.quad	0x401bdbfc2224edf6              # double 6.9648289999999999
	.quad	0x401c6eabffcdab19              # double 7.1080779999999999
	.quad	0x4022000d3cff64d0              # double 9.0001010000000008
	.quad	0x402266412cf0f9d3              # double 9.1997160000000004
	.quad	0x400c10e5e679463d              # double 3.508251
	.quad	0x40216528283d35eb              # double 8.6975719999999992
	.quad	0x401b48094e5d5b25              # double 6.8203480000000001
	.quad	0x4009ccf0739b024f              # double 3.2250679999999998
	.quad	0x400128c8abd5dc40              # double 2.144914
	.quad	0x4017ee4f765fd8ae              # double 5.9827250000000003
	.quad	0x402156bcc6c54bcf              # double 8.6694089999999999
	.quad	0x4007290c4dec1c1d              # double 2.8950429999999998
	.quad	0x401710a41a261bf3              # double 5.7662509999999996
	.quad	0x3ff15753a3ec02f3              # double 1.08382
	.quad	0x400613fc86cebbba              # double 2.7597589999999999
	.quad	0x401a07c1376d5497              # double 6.5075729999999998
	.quad	0x3fb2aa4b9884c6a4              # double 0.072911000000000004
	.quad	0x3ff34303c07ee0b1              # double 1.2038610000000001
	.quad	0x3fd5c3a860dcb9aa              # double 0.34006700000000001
	.quad	0x40095fb480a5accd              # double 3.1717309999999999
	.quad	0x40177cd8127b2cc7              # double 5.871918
	.quad	0x401432339c0ebee0              # double 5.0490250000000003
	.quad	0x400927e1fc08fa7b              # double 3.1444740000000002
	.quad	0x4022db23358f2e06              # double 9.4280030000000004
	.quad	0x4008e3fa2ad3e921              # double 3.1113170000000001
	.quad	0x4019ba5b9628cbd1              # double 6.4319899999999999
	.quad	0x4013a40b34e7685a              # double 4.9101990000000004
	.quad	0x3ff96b8950763a19              # double 1.588754
	.quad	0x40233f5019f3c70d              # double 9.6236580000000007
	.quad	0x40101a1cef240faa              # double 4.0255010000000002
	.quad	0x4019f9378ee28672              # double 6.4933759999999996
	.quad	0x40105b32ce89656f              # double 4.0890610000000001
	.quad	0x401fd955b4677b39              # double 7.9622409999999996
	.quad	0x3fd419934efcbd55              # double 0.31406099999999998
	.quad	0x400aa36a832b990b              # double 3.329793
	.quad	0x4014c9363f572de4              # double 5.1964959999999998
	.quad	0x4007950092ccf6be              # double 2.9477549999999999
	.quad	0x4020c9d798d8a97a              # double 8.3942230000000002
	.quad	0x4020eb77e1b8ed1c              # double 8.459899
	.quad	0x3ffc742784a9478d              # double 1.7783580000000001
	.quad	0x4013307075b3e143              # double 4.7973039999999996
	.quad	0x400d0b10ba6266fd              # double 3.6304029999999998
	.quad	0x40094daa0cae642c              # double 3.162922
	.quad	0x3f8ec5f394b7b289              # double 0.015025999999999999
	.quad	0x3feec156e264e486              # double 0.96110099999999998
	.quad	0x3fd61bef49cf56eb              # double 0.34545500000000001
	.quad	0x4000e6573215fcc2              # double 2.1124710000000002
	.quad	0x401f4707182235b5              # double 7.819363
	.quad	0x40217edce39b456b              # double 8.7477789999999995
	.quad	0x40232d55a3a08399              # double 9.5885440000000006
	.quad	0x3ffcf318fc504817              # double 1.80935
	.quad	0x3fe8ba9b06812381              # double 0.77277899999999999
	.quad	0x40184e6106ab14ec              # double 6.0765419999999999
	.quad	0x400e97a80cf9e386              # double 3.8240509999999999
	.quad	0x4017563800218def              # double 5.8341979999999998
	.quad	0x40094f1e4b44a1f1              # double 3.1636320000000002
	.quad	0x401b567cf1c3265b              # double 6.8344610000000001
	.quad	0x4018e6b6e0d23d4f              # double 6.2253069999999999
	.quad	0x3fdb06c43f5f9160              # double 0.422288
	.quad	0x3fcc86833c60029f              # double 0.222855
	.quad	0x4016928cbd1244a6              # double 5.6431149999999999
	.quad	0x40017ad6451b9303              # double 2.1849789999999998
	.quad	0x40105432873bc904              # double 4.0822240000000001
	.quad	0x3ffb66ce358298cc              # double 1.712599
	.quad	0x4015229d40ee06d9              # double 5.2838029999999998
	.quad	0x4022c122b7baecd0              # double 9.3772179999999992
	.quad	0x400deb606b7aa25e              # double 3.7399300000000002
	.quad	0x401706cacd184c27              # double 5.7566329999999999
	.quad	0x40147c422036006d              # double 5.121346
	.quad	0x401b7fc5cdd50a89              # double 6.8747780000000001
	.quad	0x40223f8d2e514c23              # double 9.1241240000000001
	.quad	0x400fb7eb28d8665e              # double 3.964804
	.quad	0x4001a1f969e3c969              # double 2.2040890000000002
	.quad	0x3fe393af74cd3177              # double 0.61177800000000004
	.quad	0x400a940357a35504              # double 3.3222719999999999
	.quad	0x40204dd2ae8e1d65              # double 8.1519980000000007
	.quad	0x401ea269595feda6              # double 7.6586049999999997
	.quad	0x4014c1b2e59af9ec              # double 5.1891590000000001
	.quad	0x401963c46d82ba5a              # double 6.347429
	.quad	0x3ff651a86940357a              # double 1.394936
	.quad	0x401586644d877250              # double 5.3812420000000003
	.quad	0x3fe0d32c625e99e9              # double 0.52577799999999997
	.quad	0x400b4e0daa0cae64              # double 3.4131119999999999
	.quad	0x40154c100e6afcce              # double 5.3242799999999999
	.quad	0x3fed402afdda8bd2              # double 0.91408299999999998
	.quad	0x401102584f4c6e6e              # double 4.2522900000000003
	.quad	0x401b3f53c579f234              # double 6.8118429999999996
	.quad	0x40196a20ddc61954              # double 6.3536409999999997
	.quad	0x401615e95b78cc9a              # double 5.5213979999999996
	.quad	0x402209435ac8a372              # double 9.0180919999999993
	.quad	0x40186ba493c89f41              # double 6.1051200000000003
	.quad	0x4021ca7221858bc6              # double 8.8954020000000007
	.quad	0x401982d234eb9a17              # double 6.3777549999999996
	.quad	0x40201a8ae74f2f12              # double 8.0518409999999996
	.quad	0x3fffd7e77d523b36              # double 1.990211
	.quad	0x401778fde2ef4e01              # double 5.8681559999999999
	.quad	0x402382a023209678              # double 9.7551279999999991
	.quad	0x4009e014f8b588e3              # double 3.2344149999999998
	.quad	0x40229a67620ee8d1              # double 9.3015699999999999
	.quad	0x400db3f63c31df76              # double 3.712872
	.quad	0x400b511276fb0920              # double 3.4145859999999999
	.quad	0x3ff350fe8ab4fa48              # double 1.207274
	.quad	0x4007b3e9a6f826ee              # double 2.9628480000000001
	.quad	0x401aca50507a6bd7              # double 6.6975720000000001
	.quad	0x401460780fdc1616              # double 5.0942080000000001
	.quad	0x3ffb56d6dc1a47aa              # double 1.708701
	.quad	0x3ff0c7820a30db6a              # double 1.048708
	.quad	0x4022a0df58c08b76              # double 9.3142040000000001
	.quad	0x4017b947064ece9a              # double 5.9309349999999998
	.quad	0x400134024b33daf9              # double 2.1503950000000001
	.quad	0x3fd5d96638433d6c              # double 0.34139399999999998
	.quad	0x3fdfa4c61d8622c4              # double 0.49443199999999998
	.quad	0x40174da597d49d7c              # double 5.8258270000000003
	.quad	0x4020a0229a5ebb77              # double 8.3127639999999996
	.quad	0x4019baf8df7a4e7b              # double 6.4325900000000003
	.quad	0x402391207d4e0978              # double 9.7834509999999994
	.quad	0x3fccde3b8a19c9d6              # double 0.22553200000000001
	.quad	0x3ff7bc7820a30db7              # double 1.4835130000000001
	.quad	0x4020ea09246bf013              # double 8.4571009999999998
	.quad	0x401ef42fe82517e7              # double 7.7384639999999995
	.quad	0x3fd7108c3f3e0371              # double 0.36038500000000001
	.quad	0x3ffd4eb356da0169              # double 1.8317140000000001
	.quad	0x40187fadafd11383              # double 6.1246859999999996
	.quad	0x4016c2845996744b              # double 5.6899579999999998
	.quad	0x401bfdc33721d53d              # double 6.9978150000000001
	.quad	0x40132f7c243dccea              # double 4.7963719999999999
	.quad	0x401f266e008e9b39              # double 7.7875290000000001
	.quad	0x401782a9930be0df              # double 5.8776000000000002
	.quad	0x3ff4724b76f6d762              # double 1.2779039999999999
	.quad	0x400cdcdcca70d1fa              # double 3.6078429999999999
	.quad	0x4009f05100a393ee              # double 3.2423419999999998
	.quad	0x400dbc36113404ea              # double 3.7168999999999999
	.quad	0x40015e3c968943e1              # double 2.171014
	.quad	0x401f772bcb5fe543              # double 7.866378
	.quad	0x401dc617c1bda512              # double 7.4434500000000003
	.quad	0x401dddcbddb9841b              # double 7.4665980000000003
	.quad	0x400ebb1fab96f21f              # double 3.8413689999999998
	.quad	0x4019758793dd97f6              # double 6.3647749999999998
	.quad	0x4022416a48733659              # double 9.1277640000000009
	.quad	0x40130a0dbad3a605              # double 4.7598180000000001
	.quad	0x40214aa21a719b4e              # double 8.6457680000000003
	.quad	0x3ffe7320535c9e67              # double 1.9031070000000001
	.quad	0x401a5806af46aa08              # double 6.5859629999999996
	.quad	0x3fe2a8a1dfb9389b              # double 0.58308499999999996
	.quad	0x4009e6e8f29d40ee              # double 3.237749
	.quad	0x40020209246bf013              # double 2.2509939999999999
	.quad	0x401d61a719b4dcec              # double 7.345364
	.quad	0x400e84fa05143bf7              # double 3.8149299999999999
	.quad	0x4016f3b8e4b87bdd              # double 5.7380100000000001
	.quad	0x3ffcfa0407cc7d1c              # double 1.8110390000000001
	.quad	0x40239d9ff4fd6d7f              # double 9.8078610000000008
	.quad	0x4022c60e30446b6a              # double 9.3868270000000003
	.quad	0x3fe10f1f57b41bfc              # double 0.53309600000000001
	.quad	0x40219bf4666ec9e2              # double 8.8045989999999996
	.quad	0x4011ba6eb91b3f21              # double 4.4320630000000003
	.quad	0x3fe76e4e26d4801f              # double 0.73221499999999995
	.quad	0x4014a136a400fba9              # double 5.1574350000000004
	.quad	0x4005ec016052502f              # double 2.740237
	.quad	0x400d3587d6f97679              # double 3.651138
	.quad	0x3feaddebd9018e75              # double 0.83958999999999995
	.quad	0x40226ad1d041cc53              # double 9.2086319999999997
	.quad	0x401ec1f36262cba7              # double 7.6894049999999998
	.quad	0x401c74fb549f9485              # double 7.1142399999999997
	.quad	0x402049ff4fd6d7e9              # double 8.1445260000000008
	.quad	0x3ff3ad8e432441ff              # double 1.2298720000000001
	.quad	0x400751eb851eb852              # double 2.915
	.quad	0x401d0c4199fe4367              # double 7.2619689999999997
	.quad	0x4016bee06d938152              # double 5.6864030000000003
	.quad	0x400e3e56cd6c2efd              # double 3.7804389999999999
	.quad	0x40226fb634dad320              # double 9.2181870000000004
	.quad	0x401cabe1650a45d4              # double 7.1678519999999999
	.quad	0x40129a89b951c5c5              # double 4.6509159999999996
	.quad	0x400df267c6b8b695              # double 3.7433619999999999
	.quad	0x4021a80c308feac4              # double 8.8282179999999996
	.quad	0x3ffcb42cc2d6a9c5              # double 1.7939879999999999
	.quad	0x4014119dece57109              # double 5.0172040000000004
	.quad	0x400894a4d2b2bfdb              # double 3.0725799999999999
	.quad	0x40057d74d594f26b              # double 2.686258
	.quad	0x402190c5eb313be2              # double 8.7827599999999997
	.quad	0x402151ff0cbaf966              # double 8.6601490000000005
	.quad	0x401f1d15ad106ee3              # double 7.7784029999999999
	.quad	0x402308c176577532              # double 9.5171010000000003
	.quad	0x401373f359ff4fd7              # double 4.8632330000000001
	.quad	0x4021a33743632c1f              # double 8.8187809999999995
	.quad	0x40186a57646ae3a4              # double 6.1038490000000003
	.quad	0x40213d8ab92c0618              # double 8.6201989999999995
	.quad	0x40210e82949a5658              # double 8.52834
	.quad	0x4010099a1fd1569f              # double 4.0093769999999997
	.quad	0x4007b13b5bf6a0dc              # double 2.9615390000000001
	.quad	0x402182e9ee45c359              # double 8.7556910000000006
	.quad	0x401a96fa3fcc9eaa              # double 6.6474390000000003
	.quad	0x4006aceb356da017              # double 2.8344330000000002
	.quad	0x4022454f3775b813              # double 9.13537
	.quad	0x3fbf19f7f8ca8199              # double 0.12149
	.quad	0x4016b829cfdd2285              # double 5.6798469999999996
	.quad	0x3fc7b13165d39970              # double 0.18509500000000001
	.quad	0x400dadb402d16b98              # double 3.709816
	.quad	0x40057327aa68f4b6              # double 2.6812279999999999
	.quad	0x3fe47d1bb4916ca4              # double 0.64027199999999995
	.quad	0x401191d3aa369fcf              # double 4.3924089999999998
	.quad	0x40200222706d5065              # double 8.0041689999999992
	.quad	0x4012d4f61672324d              # double 4.7079700000000004
	.quad	0x401e7e3c536d655e              # double 7.6232769999999999
	.quad	0x4022b3877ab32485              # double 9.3506429999999998
	.quad	0x3ff617ff9b56323c              # double 1.3808590000000001
	.quad	0x3f8b317efe0ce0b9              # double 0.013278
	.quad	0x40113c8f32378ab1              # double 4.3091400000000002
	.quad	0x4021adb59578a2a9              # double 8.8392759999999999
	.quad	0x3ff5e554b8bef8cf              # double 1.3684890000000001
	.quad	0x40238bb1d0c80410              # double 9.7728409999999997
	.quad	0x3fddcef240fa9c13              # double 0.465756
	.quad	0x4012404e618ce2d2              # double 4.562799
	.quad	0x401338bfc2224edf              # double 4.8054189999999997
	.quad	0x3f97f8012dfd694d              # double 0.023407000000000001
	.quad	0x3ffbe70f3882278d              # double 1.743911
	.quad	0x4023fd2a411c2a02              # double 9.9944629999999997
	.quad	0x402093cd573647bb              # double 8.2886760000000006
	.quad	0x3ff9f167ec7863bf              # double 1.621437
	.quad	0x40105dd4845132f8              # double 4.0916309999999996
	.quad	0x40117fc7a398201d              # double 4.3747850000000001
	.quad	0x400f6d844d013a93              # double 3.9284750000000002
	.quad	0x401ac6efc371da38              # double 6.6942740000000001
	.quad	0x400b7d4b6a619daa              # double 3.4361790000000001
	.quad	0x4020ce974a3400b9              # double 8.4034980000000008
	.quad	0x40230fbefd00713f              # double 9.5307539999999999
	.quad	0x400f68c8259e1f3a              # double 3.9261629999999998
	.quad	0x3fde524bfd2e9468              # double 0.473773
	.quad	0x4019d09dcf893faf              # double 6.4537269999999998
	.quad	0x401ad5e353f7ced9              # double 6.7088749999999999
	.quad	0x4004eace24bba12b              # double 2.6146509999999998
	.quad	0x401962107b784663              # double 6.3457660000000002
	.quad	0x4000285caafbc1ad              # double 2.0197080000000001
	.quad	0x3fe5202d9cf13cef              # double 0.66017800000000004
	.quad	0x401308c586876e1e              # double 4.7585660000000001
	.quad	0x401c4130df9bdc6a              # double 7.063663
	.quad	0x401cf3a647fdc593              # double 7.2379389999999999
	.quad	0x402180c9fb6134ce              # double 8.7515409999999996
	.quad	0x4005d931ca7d6734              # double 2.731052
	.quad	0x402225cf2495e17e              # double 9.0738459999999996
	.quad	0x3fef3399f5dfeb8e              # double 0.97504900000000005
	.quad	0x3ff0f018611fd588              # double 1.0586169999999999
	.quad	0x3ffef0b8cfbfc654              # double 1.93377
	.quad	0x4019586e7e62dc6e              # double 6.3363589999999999
	.quad	0x40060a9c560c7c0f              # double 2.7551809999999999
	.quad	0x3ff5f50f40e5a35d              # double 1.3723289999999999
	.quad	0x400e93eccc469510              # double 3.8222290000000001
	.quad	0x40167fb224aada34              # double 5.6247030000000002
	.quad	0x401b79285a921cce              # double 6.8683180000000004
	.quad	0x4020a078b7a1c25d              # double 8.3134209999999999
	.quad	0x40073fc86cebbba5              # double 2.9061439999999998
	.quad	0x4019ed5992428d43              # double 6.4817869999999997
	.quad	0x401ff5b4aa9717df              # double 7.9899469999999999
	.quad	0x4022016ca46e08f2              # double 9.0027819999999998
	.quad	0x401d5a0ad8a11666              # double 7.3379320000000003
	.quad	0x402335a8bd230b9e              # double 9.6048030000000004
	.quad	0x4018da8cdea033e8              # double 6.2134280000000004
	.quad	0x3ffb681dc0db2703              # double 1.7129190000000001
	.quad	0x4012cb9cb6848beb              # double 4.6988399999999997
	.quad	0x400fea222d5171e3              # double 3.9893230000000002
	.quad	0x4011842917507e9e              # double 4.3790630000000004
	.quad	0x401cb3365881a155              # double 7.1750119999999997
	.quad	0x4023ca1a0cf1800a              # double 9.8947299999999991
	.quad	0x40078087ca643cc0              # double 2.9377589999999998
	.quad	0x4012e04ff43419e3              # double 4.719055
	.quad	0x3fd034ca0c282c6f              # double 0.253222
	.quad	0x401814a2b9d3cbc5              # double 6.0201520000000004
	.quad	0x400d89363f572de4              # double 3.6919979999999999
	.quad	0x401561a5870da5db              # double 5.3453580000000001
	.quad	0x3ff9a915379fa97e              # double 1.60378
	.quad	0x40213685985ad539              # double 8.6064880000000006
	.quad	0x4013f3ff25e56cd7              # double 4.9882780000000002
	.quad	0x401149e44fa05144              # double 4.3221600000000002
	.quad	0x400370f5a1016ce8              # double 2.4301560000000002
	.quad	0x3f6ef954eb13dfb1              # double 0.0037810000000000001
	.quad	0x3ffc4d7060bb2bbb              # double 1.7689060000000001
	.quad	0x4023c89741d084e8              # double 9.8917789999999996
	.quad	0x4002df57b41bfbdf              # double 2.359054
	.quad	0x3ffccd306a2b1705              # double 1.800095
	.quad	0x3ff3ee48e8a71de7              # double 1.2456750000000001
	.quad	0x40189e321a2e7f6f              # double 6.1544879999999997
	.quad	0x401a4c0db2702a35              # double 6.5742710000000004
	.quad	0x4005081ecd4aa10e              # double 2.628965
	.quad	0x40209a73929ed395              # double 8.3016629999999996
	.quad	0x3ff15ed06fef7c24              # double 1.0856479999999999
	.quad	0x4011b8c32a8c9b84              # double 4.4304319999999997
	.quad	0x3ff3453198288052              # double 1.204393
	.quad	0x401cc170d62bf120              # double 7.1889070000000004
	.quad	0x40040f1f57b41bfc              # double 2.5073840000000001
	.quad	0x401b5637bd05af6c              # double 6.8341969999999996
	.quad	0x40208db4cc250721              # double 8.2767700000000008
	.quad	0x401a6f50a02b8412              # double 6.6087059999999997
	.quad	0x4019df46ed245b29              # double 6.4680439999999999
	.quad	0x4015a3953dea465a              # double 5.4097489999999997
	.quad	0x4006862aa19439de              # double 2.8155109999999999
	.quad	0x3ff742b1f687b13a              # double 1.453783
	.quad	0x401a29c779a6b50b              # double 6.5407999999999999
	.quad	0x3ff4baacd9e83e42              # double 1.2955749999999999
	.quad	0x401a7cfd4bf0995b              # double 6.6220600000000003
	.quad	0x4020da64e48626f6              # double 8.4265509999999999
	.quad	0x40000c1094a2b9d4              # double 2.0058910000000001
	.quad	0x40007e15ca6ca03c              # double 2.0615649999999999
	.quad	0x4018c5004fb1183b              # double 6.1923839999999997
	.quad	0x3fb4258d5842b735              # double 0.078698000000000004
	.quad	0x40045f601797cc3a              # double 2.54657
	.quad	0x40202c62a1b5c7ce              # double 8.0866900000000008
	.quad	0x40231108c3f3e037              # double 9.5332699999999999
	.quad	0x3ff60ebdd334c5da              # double 1.3785989999999999
	.quad	0x4015dcc3e3193f6c              # double 5.4655909999999999
	.quad	0x402288ce2d1f1cfc              # double 9.2671980000000004
	.quad	0x40212760e0eb67c3              # double 8.5769110000000008
	.quad	0x3fe1b0fcf80dc337              # double 0.55285499999999999
	.quad	0x401a8c03361565c3              # double 6.6367310000000002
	.quad	0x40052ccc46950fc7              # double 2.6468739999999999
	.quad	0x401a98bc59b8023a              # double 6.6491559999999996
	.quad	0x401d04d1633482bf              # double 7.2547050000000004
	.quad	0x401ae0307f23cc8e              # double 6.7189350000000001
	.quad	0x4023814df8b15726              # double 9.7525480000000009
	.quad	0x3fed941c8216c615              # double 0.92432999999999998
	.quad	0x40220a50507a6bd7              # double 9.0201440000000002
	.quad	0x3ff58b72c5197a25              # double 1.3465450000000001
	.quad	0x4021752a411c2a02              # double 8.7288379999999997
	.quad	0x3ff9e2ea0fd3b29a              # double 1.617899
	.quad	0x40004eff5c6c11a1              # double 2.038573
	.quad	0x4016fe13f4a98aa8              # double 5.7481229999999996
	.quad	0x401bf7b80a9de8b4              # double 6.9919130000000003
	.quad	0x4011bba55d1c3ac9              # double 4.4332479999999999
	.quad	0x401c3072085b1855              # double 7.0473100000000004
	.quad	0x40053968d759ee89              # double 2.6530320000000001
	.quad	0x3fde3443d46b26c0              # double 0.47194000000000003
	.quad	0x4006328c79f66623              # double 2.7746819999999999
	.quad	0x4022764b44a1f080              # double 9.2310429999999997
	.quad	0x3ff42e04c0592104              # double 1.2612350000000001
	.quad	0x40218b6f3b213e3e              # double 8.7723329999999997
	.quad	0x4001031df761cbcd              # double 2.126522
	.quad	0x400e58d60a633051              # double 3.793377
	.quad	0x401b10663c74fb55              # double 6.7660150000000003
	.quad	0x4009833a4723ab00              # double 3.189076
	.quad	0x400faf6c69b5a640              # double 3.9606560000000002
	.quad	0x3ff2f4b2fa93af75              # double 1.184741
	.quad	0x401ba57afea3df6e              # double 6.9116020000000002
	.quad	0x401ce884c6a3bde0              # double 7.2270690000000002
	.quad	0x40209004b7f5a533              # double 8.2812859999999997
	.quad	0x3fe3b213e3e29308              # double 0.61548800000000004
	.quad	0x40204ee75ff609dd              # double 8.1541090000000001
	.quad	0x40155059a73b42cc              # double 5.3284669999999998
	.quad	0x400191bac2df0d41              # double 2.1961569999999999
	.quad	0x40125c04c8bc9cd4              # double 4.5898620000000001
	.quad	0x40063532617c1bda              # double 2.7759749999999999
	.quad	0x3ff0d307af20ea5b              # double 1.0515209999999999
	.quad	0x401581769a91105e              # double 5.3764289999999999
	.quad	0x401cf83f0bae89ec              # double 7.2424280000000003
	.quad	0x401b40e8c8abd5dc              # double 6.8133879999999998
	.quad	0x402390e51d25aab4              # double 9.7829979999999991
	.quad	0x400d89eecbfb15b5              # double 3.6923499999999998
	.quad	0x401f185c67dfe32a              # double 7.77379
	.quad	0x4019e1a93293d103              # double 6.4703720000000002
	.quad	0x40105c90c4dec1c2              # double 4.0903960000000001
	.quad	0x401773ab430f4949              # double 5.8629579999999999
	.quad	0x401d1ee6fb4c3c19              # double 7.2801780000000003
	.quad	0x40207e0d23d4f15e              # double 8.2461939999999991
	.quad	0x40184d03968d759f              # double 6.0752090000000001
	.quad	0x4012ebad7d7c2ca1              # double 4.7301539999999997
	.quad	0x4021ebf8b9baa151              # double 8.9608819999999998
	.quad	0x3febe10adcd2d44e              # double 0.87122100000000002
	.quad	0x402204c1871e6cd3              # double 9.0092890000000008
	.quad	0x4022e835dedf1e08              # double 9.4535359999999997
	.quad	0x4014fd87f88765ba              # double 5.2475889999999996
	.quad	0x402162c29bf162ae              # double 8.6928909999999995
	.quad	0x4023e4504816f007              # double 9.9459250000000007
	.quad	0x4013d3c579f23465              # double 4.9568079999999997
	.quad	0x401d961565c2d278              # double 7.3965659999999999
	.quad	0x4021ec5f17bd8be7              # double 8.9616629999999997
	.quad	0x3fef704577d95571              # double 0.98245499999999996
	.quad	0x4001fff9b56323bc              # double 2.2499880000000001
	.quad	0x400b99f5dfeb8d82              # double 3.4501759999999999
	.quad	0x4022020ddc619546              # double 9.0040119999999995
	.quad	0x4003b4b51372a38c              # double 2.4632360000000002
	.quad	0x4017f383f0bae89f              # double 5.9878080000000002
	.quad	0x40216fb549f94856              # double 8.7181800000000003
	.quad	0x4023244fa05143bf              # double 9.5709199999999992
	.quad	0x401cfa6b50b0f27c              # double 7.2445500000000003
	.quad	0x400d2b3d4ae429e1              # double 3.6461130000000002
	.quad	0x402152178f68be2f              # double 8.6603359999999991
	.quad	0x401476fc9bc77143              # double 5.1161979999999998
	.quad	0x401652873bc903ea              # double 5.5805939999999996
	.quad	0x4018bfba01eeed89              # double 6.187233
	.quad	0x3ff2b221858bc59c              # double 1.1684890000000001
	.quad	0x401126f7e3d1cc10              # double 4.2880549999999999
	.quad	0x402034dca8e2e2b9              # double 8.1032460000000004
	.quad	0x3ff29068986fcdee              # double 1.160256
	.quad	0x4022c8285ec3dab6              # double 9.3909330000000004
	.quad	0x400d0f7ec3547e07              # double 3.6325660000000002
	.quad	0x4008f302f72b4528              # double 3.1186579999999999
	.quad	0x3ff16e136e71cda3              # double 1.0893740000000001
	.quad	0x40113f505d0fa58f              # double 4.3118299999999996
	.quad	0x40210f2ecf206424              # double 8.5296540000000007
	.quad	0x401f12ec6bce8534              # double 7.7684800000000003
	.quad	0x4020e9971c10d7bf              # double 8.4562310000000007
	.quad	0x4013bc504816f007              # double 4.9339000000000004
	.quad	0x3ff84e5a35d67ba2              # double 1.519129
	.quad	0x40048cf0739b024f              # double 2.5688179999999998
	.quad	0x3ffef5515054ac2a              # double 1.9348920000000001
	.quad	0x4016543e10060781              # double 5.582268
	.quad	0x4014cb0af5fd47bf              # double 5.1982840000000001
	.quad	0x402038aa21a719b5              # double 8.1106730000000002
	.quad	0x401eea582dbe7f2c              # double 7.7288519999999998
	.quad	0x40213aa5e785b5b7              # double 8.614547
	.quad	0x402049932d6ece14              # double 8.143701
	.quad	0x400c01c3efae7925              # double 3.5008620000000001
	.quad	0x3ff8ea1c68ec52a4              # double 1.557156
	.quad	0x3ff3c6338b47c73f              # double 1.235889
	.quad	0x4013df5cf2495e18              # double 4.9681280000000001
	.quad	0x40136f2452c59fb2              # double 4.8585370000000001
	.quad	0x402051344806290f              # double 8.1586020000000001
	.quad	0x3ff3968e820e6299              # double 1.2242569999999999
	.quad	0x401612374794ea07              # double 5.5177889999999996
	.quad	0x40072cc2d6a9c561              # double 2.8968560000000001
	.quad	0x3fe8dfbb517a4617              # double 0.77731099999999997
	.quad	0x4014f30d7386099a              # double 5.2373560000000001
	.quad	0x40131e3476295209              # double 4.7794970000000001
	.quad	0x401f8333764f11b6              # double 7.878126
	.quad	0x400c44ad794a6eb9              # double 3.533534
	.quad	0x3ff2b630a91537a0              # double 1.1694800000000001
	.quad	0x3ffd6f709b738e6d              # double 1.839707
	.quad	0x4006604ea4a8c155              # double 2.7970250000000001
	.quad	0x40194f62f9ca5bd9              # double 6.3275259999999998
	.quad	0x401368a3f8982cb2              # double 4.8521879999999999
	.quad	0x401b018a43bb40b3              # double 6.7515039999999997
	.quad	0x4013c54a7f8012e0              # double 4.9426670000000001
	.quad	0x400d6ca89fc6da45              # double 3.6780560000000002
	.quad	0x402222a4db163bac              # double 9.0676640000000006
	.quad	0x4014386d71f36263              # double 5.0551050000000002
	.quad	0x40181fe931876189              # double 6.0311630000000003
	.quad	0x400a73ba775fb2ee              # double 3.306508
	.quad	0x4023141ede1198af              # double 9.5392980000000004
	.quad	0x4006ce7c49fd7a14              # double 2.8508230000000001
	.quad	0x401b164345cfede9              # double 6.7717409999999996
	.quad	0x402110811b1d92b8              # double 8.532235
	.quad	0x4016974f2f123c43              # double 5.6477630000000003
	.quad	0x402001fe64f54d1f              # double 8.0038940000000007
	.quad	0x402336c69b5a63fa              # double 9.6069840000000006
	.quad	0x40202c2917507e9e              # double 8.0862510000000007
	.quad	0x401fbc82e019b0ab              # double 7.9340929999999998
	.quad	0x401b518548a9bcfd              # double 6.8296099999999997
	.quad	0x40206b5c7cd898b3              # double 8.2096900000000002
	.quad	0x3ffa0167a95c853c              # double 1.625343
	.quad	0x40228edd48451330              # double 9.2790320000000008
	.quad	0x400c5ad96a6a0126              # double 3.5443600000000002
	.quad	0x40105911cf355cd9              # double 4.0869819999999999
	.quad	0x401236149c6f36f0              # double 4.5528130000000004
	.quad	0x401079c779a6b50b              # double 4.1189249999999999
	.quad	0x400212314013ec46              # double 2.258883
	.quad	0x401578c60cbf2b24              # double 5.3679430000000004
	.quad	0x401e4972474538ef              # double 7.5717249999999998
	.quad	0x3ff65e364bec679d              # double 1.398001
	.quad	0x3fe11db877ab3248              # double 0.53487799999999996
	.quad	0x4019f6b2af145522              # double 6.4909160000000004
	.quad	0x40217496cc5fbf83              # double 8.7277129999999996
	.quad	0x40201c8ba83f4eca              # double 8.0557529999999993
	.quad	0x401ba5d3dc8b86b1              # double 6.9119409999999997
	.quad	0x40237a4edf612407              # double 9.7388829999999995
	.quad	0x4020338c5436b8fa              # double 8.1006800000000005
	.quad	0x4013b548ecd8dbcf              # double 4.9270360000000002
	.quad	0x401ac44f5d35653d              # double 6.6917090000000004
	.quad	0x3fea05532617c1be              # double 0.81315000000000004
	.quad	0x401183586ca89fc7              # double 4.3782670000000001
	.quad	0x400cbd323fee2c99              # double 3.592381
	.quad	0x3fde699c7bcc2939              # double 0.47519600000000001
	.quad	0x401ed43dccea28fe              # double 7.7072669999999999
	.quad	0x401cb16d2aa5c5f8              # double 7.1732680000000002
	.quad	0x4016400fba8826ab              # double 5.5625600000000004
	.quad	0x3ff6a35a426bb55b              # double 1.4148810000000001
	.quad	0x3fd88cc144028e50              # double 0.38359100000000002
	.quad	0x4020c294bbe4473d              # double 8.3800410000000003
	.quad	0x3ff237ea1c68ec53              # double 1.1386510000000001
	.quad	0x3ff6d01c0ca600b0              # double 1.425808
	.quad	0x400ad66e86c6583f              # double 3.3547030000000002
	.quad	0x4019e0c3d25247cb              # double 6.4694969999999996
	.quad	0x4006cc28b2a6b0d9              # double 2.8496869999999999
	.quad	0x401241b60ae9680e              # double 4.564171
	.quad	0x401645f3519bd406              # double 5.5683109999999996
	.quad	0x40211afe3f359ff5              # double 8.552721
	.quad	0x4020c9717df19d67              # double 8.3934440000000006
	.quad	0x400cf9620685553f              # double 3.621769
	.quad	0x400083a860dcb9aa              # double 2.0642860000000001
	.quad	0x3fff8cbd1244a622              # double 1.9718599999999999
	.quad	0x400aa9edbf8b9baa              # double 3.332973
	.quad	0x401c2d349be8ff32              # double 7.0441459999999996
	.quad	0x4006e74e22a2c237              # double 2.8629419999999999
	.quad	0x4023cb33764f11b6              # double 9.8968769999999999
	.quad	0x40053dee78183f92              # double 2.65524
	.quad	0x4020d298eda22f6a              # double 8.4113229999999994
	.quad	0x401dbc2656abde40              # double 7.4337400000000002
	.quad	0x400f980d3cff64d0              # double 3.9492440000000002
	.quad	0x400410b49e01de27              # double 2.5081570000000002
	.quad	0x400f962f9ca5bd94              # double 3.9483329999999999
	.quad	0x40215689656eefa2              # double 8.6690170000000002
	.quad	0x4002c2da554b8bf0              # double 2.3451430000000002
	.quad	0x4016837c5692b3cc              # double 5.6284039999999997
	.quad	0x3fe3cfaacd9e83e4              # double 0.61909999999999998
	.quad	0x402279210385c67e              # double 9.23658
	.quad	0x4022180f12c27a63              # double 9.0469899999999992
	.quad	0x3fd5d6a9c560c7c1              # double 0.341227
	.quad	0x40122cffeb074a77              # double 4.5439449999999999
	.quad	0x401d2218def416be              # double 7.2832980000000003
	.quad	0x401b059d55e6bc62              # double 6.7554829999999999
	.quad	0x402016de33269df9              # double 8.0446639999999991
	.quad	0x401f265c70435efa              # double 7.7874619999999997
	.quad	0x400aad5065732160              # double 3.3346260000000001
	.quad	0x4021dd36d655e28b              # double 8.9320590000000006
	.quad	0x401e7992c8c50050              # double 7.6187240000000003
	.quad	0x3fd4b26394face68              # double 0.32338800000000001
	.quad	0x3fe9532830a0b1bc              # double 0.79140100000000002
	.quad	0x401990a808c8259e              # double 6.3912659999999999
	.quad	0x40149d7f950b955f              # double 5.1538069999999996
	.quad	0x400cfe32a0663c75              # double 3.62412
	.quad	0x4003977d955714ba              # double 2.4489700000000001
	.quad	0x4023b40379314446              # double 9.8515890000000006
	.quad	0x4016e3a7daa4fca4              # double 5.7223199999999999
	.quad	0x4005adf69878316a              # double 2.709943
	.quad	0x400909af5ba2be06              # double 3.1297290000000002
	.quad	0x3ffcc3393ab430f5              # double 1.7976620000000001
	.quad	0x4009e8605681ecd5              # double 3.2384650000000001
	.quad	0x40005d6bebe1650a              # double 2.0456159999999999
	.quad	0x3fa99c17225b749b              # double 0.050019000000000001
	.quad	0x4017256323bbc6eb              # double 5.786511
	.quad	0x402282253111f0c3              # double 9.2541899999999995
	.quad	0x401ba28d8665e02f              # double 6.9087430000000003
	.quad	0x400f35c5b4aa9718              # double 3.9012560000000001
	.quad	0x3ffb6be1650a45d4              # double 1.713838
	.quad	0x40203a20578e5c4f              # double 8.1135280000000005
	.quad	0x4022f8bbb1f255f3              # double 9.4858069999999994
	.quad	0x401c5f544bb1af3a              # double 7.0930949999999999
	.quad	0x4023003ea704bc27              # double 9.5004779999999993
	.quad	0x4021521b5c7cd899              # double 8.6603650000000005
	.quad	0x40231e0d4562e0a0              # double 9.5586950000000002
	.quad	0x40134df4c2b51bd6              # double 4.8261289999999999
	.quad	0x4000b9e83e425aee              # double 2.0907749999999998
	.quad	0x401dfe4ead0c3d25              # double 7.4983469999999998
	.quad	0x3ff7a4463065f959              # double 1.477606
	.quad	0x402299e9f2778141              # double 9.3006130000000002
	.quad	0x401b4fb224aada34              # double 6.8278280000000002
	.quad	0x4022fa26809d4952              # double 9.4885750000000009
	.quad	0x40089253da72a7bd              # double 3.0714489999999999
	.quad	0x401ea1711947cfa2              # double 7.6576579999999996
	.quad	0x40200ea57214f052              # double 8.0286059999999999
	.quad	0x4007b18fc504816f              # double 2.9617
	.quad	0x40214f9335d249e4              # double 8.6554199999999994
	.quad	0x3fdb292c49342678              # double 0.42438799999999999
	.quad	0x4010340cc78e9f6b              # double 4.0508300000000004
	.quad	0x3ff58a697aeddce8              # double 1.346292
	.quad	0x3ffa4787485e3da3              # double 1.642463
	.quad	0x400de5e02ea960b7              # double 3.737244
	.quad	0x3fff1733226c3b92              # double 1.9431639999999999
	.quad	0x4023bbb59ddc1e79              # double 9.8666199999999992
	.quad	0x4019054eb13dfb0d              # double 6.2551829999999997
	.quad	0x400d814e7ee9142b              # double 3.6881379999999999
	.quad	0x40104a8c154c985f              # double 4.0728
	.quad	0x40237582773e24ff              # double 9.7295110000000004
	.quad	0x4022bca4d2b2bfdb              # double 9.3684449999999994
	.quad	0x3ffe49c5e6ff7dfa              # double 1.893011
	.quad	0x4017df9df548ecd9              # double 5.9683760000000001
	.quad	0x3fce7ab7564302b4              # double 0.23812
	.quad	0x401a4893faf42785              # double 6.5708770000000003
	.quad	0x4023146f15619115              # double 9.5399100000000007
	.quad	0x4019c8adeebb341e              # double 6.4459759999999999
	.quad	0x401dfc46950fc71d              # double 7.4963629999999996
	.quad	0x401119ee45c358b0              # double 4.2753230000000002
	.quad	0x4011214445aa2e3c              # double 4.2824869999999997
	.quad	0x400e8bf8769ec2ce              # double 3.8183449999999999
	.quad	0x40185ef911cf355d              # double 6.0927470000000001
	.quad	0x3ff66d86ec17ebaf              # double 1.40174
	.quad	0x3ff0d613d31b9b67              # double 1.052265
	.quad	0x400770caa326e115              # double 2.9300739999999998
	.quad	0x4013257a786c2268              # double 4.7866
	.quad	0x4023f34e9813879c              # double 9.9752089999999995
	.quad	0x4021440a06e9ff0d              # double 8.6328890000000005
	.quad	0x3ff7f5610adcd2d4              # double 1.4974069999999999
	.quad	0x3fd41deacc92146a              # double 0.31432599999999999
	.quad	0x4020dc6f15619115              # double 8.4305350000000008
	.quad	0x40168523704790b8              # double 5.6300179999999997
	.quad	0x4019716aceaaf35e              # double 6.3607589999999998
	.quad	0x3ffccfba8826aa8f              # double 1.8007150000000001
	.quad	0x401ba4901d19157b              # double 6.9107060000000002
	.quad	0x40125c0a4a05dd90              # double 4.5898830000000004
	.quad	0x3fe1ee9dd7ecbb80              # double 0.56037800000000004
	.quad	0x400f8c1ca3a4b557              # double 3.9434140000000002
	.quad	0x400e8312f4cf4a56              # double 3.8140010000000002
	.quad	0x3ff714ff0025bfad              # double 1.442626
	.quad	0x400041ec4e7253da              # double 2.0321889999999998
	.quad	0x4020609aaa3ad18d              # double 8.1886799999999997
	.quad	0x40233239c51dabe2              # double 9.5980969999999992
	.quad	0x401d3fdeb52c9d17              # double 7.312373
	.quad	0x4013fcb89d6adf72              # double 4.9967980000000001
	.quad	0x4021a12146a1a501              # double 8.8147070000000003
	.quad	0x3fde487fcb923a2a              # double 0.47317500000000001
	.quad	0x400fef4adbc664d4              # double 3.9918420000000001
	.quad	0x40205d4cb9ecf638              # double 8.182226
	.quad	0x4021e648c7192ea5              # double 8.9497739999999997
	.quad	0x4000225529fe004b              # double 2.0167639999999998
	.quad	0x40102eee0f3cb3e5              # double 4.0458299999999996
	.quad	0x401a5a921ccd9620              # double 6.5884479999999996
	.quad	0x4021684ccee5abc1              # double 8.7037110000000002
	.quad	0x40144bd44998d046              # double 5.074052
	.quad	0x3ff01e01de269164              # double 1.0073259999999999
	.quad	0x400a15efa615a8df              # double 3.2607110000000001
	.quad	0x4023d0e71476af8a              # double 9.9080130000000004
	.quad	0x40123eb463497b74              # double 4.5612349999999999
	.quad	0x401d6308feac42ea              # double 7.3467140000000004
	.quad	0x402256106ab14ec2              # double 9.168094
	.quad	0x4021d0d8cb07d0af              # double 8.9079040000000003
	.quad	0x3ff9e594af4f0d84              # double 1.6185499999999999
	.quad	0x4018c980b242070c              # double 6.1967800000000004
	.quad	0x3fdcfdeb52c9d170              # double 0.45299800000000001
	.quad	0x401594d65e460675              # double 5.3953490000000004
	.quad	0x4016b1c219eb6391              # double 5.6735920000000002
	.quad	0x3ffe6eb4e981387a              # double 1.9020280000000001
	.quad	0x40234f63a1900820              # double 9.6550569999999993
	.quad	0x40231d4306e5cd4f              # double 9.5571520000000003
	.quad	0x3ff446ca89fc6da4              # double 1.2672829999999999
	.quad	0x4023fb1183b60286              # double 9.9903680000000001
	.quad	0x4023b37baecd0785              # double 9.8505529999999996
	.quad	0x3ff3235e74299d88              # double 1.1961349999999999
	.quad	0x400877739f340d4e              # double 3.0583260000000001
	.quad	0x40014f5caf2d7f95              # double 2.163751
	.quad	0x4018f6837f7be122              # double 6.2407360000000001
	.quad	0x4021dcf5903a7547              # double 8.9315610000000003
	.quad	0x4014db51372a38b9              # double 5.2141770000000003
	.quad	0x40112faacd9e83e4              # double 4.2965499999999999
	.quad	0x3fe6dc4651f3e89b              # double 0.71438900000000005
	.quad	0x40043ba55d1c3ac9              # double 2.5291239999999999
	.quad	0x401cf5c39bcba301              # double 7.2400039999999999
	.quad	0x40080b67c286f8ad              # double 3.0055689999999999
	.quad	0x401a30ac7da1ec4e              # double 6.5475329999999996
	.quad	0x4002e046412cf0fa              # double 2.3595090000000001
	.quad	0x402370a30db6a1e8              # double 9.7199939999999998
	.quad	0x4011eb3c3e74afd5              # double 4.4797219999999998
	.quad	0x4022a1d81f106680              # double 9.3161020000000008
	.quad	0x402162845996744b              # double 8.6924159999999997
	.quad	0x4014e880d801b435              # double 5.2270539999999999
	.quad	0x3faec41dd1a21ea3              # double 0.060089999999999998
	.quad	0x4013e4a98aa8650e              # double 4.9733029999999996
	.quad	0x4013918ce2d1f1d0              # double 4.8921390000000002
	.quad	0x401d4a12b5e529bb              # double 7.3223370000000001
	.quad	0x401c61dabe27179c              # double 7.095561
	.quad	0x4015b2d666a98245              # double 5.4246460000000001
	.quad	0x3ff3ecb4289118c2              # double 1.2452890000000001
	.quad	0x4008cb70ac3a860e              # double 3.0993360000000001
	.quad	0x401042c27a63736d              # double 4.0651950000000001
	.quad	0x3fd1f40a2877ee4e              # double 0.28051999999999999
	.quad	0x3f76494d50ebaade              # double 0.0054409999999999997
	.quad	0x3fd76583e8576cce              # double 0.36557099999999998
	.quad	0x4000dd6f112fd32c              # double 2.1081219999999998
	.quad	0x4020df9f44d44567              # double 8.4367619999999999
	.quad	0x40033ffe6d58c8ef              # double 2.406247
	.quad	0x400eb7aa25d8d79d              # double 3.83968
	.quad	0x40111ec204f2ae08              # double 4.2800370000000001
	.quad	0x4004d553ef6b5d46              # double 2.6041639999999999
	.quad	0x400caea28fe260b3              # double 3.5852710000000001
	.quad	0x400390c026cc1ca4              # double 2.4456790000000002
	.quad	0x4014b09741d084e8              # double 5.1724519999999998
	.quad	0x40124bd8383ad9f1              # double 4.5740670000000003
	.quad	0x40148ca4b124d09a              # double 5.1373470000000001
	.quad	0x40140ab430f49492              # double 5.010453
	.quad	0x4018328672756862              # double 6.0493410000000001
	.quad	0x401b36950fc71d60              # double 6.8033029999999997
	.quad	0x401187d6f9767903              # double 4.3826559999999999
	.quad	0x400a2250f840181e              # double 3.266756
	.quad	0x3ffd905c03361566              # double 1.8477440000000001
	.quad	0x4020378769ec2ce4              # double 8.1084549999999993
	.quad	0x400b593ccd0fe8ab              # double 3.4185729999999999
	.quad	0x40074a7503b81b65              # double 2.9113560000000001
	.quad	0x3ff796c1e364bec6              # double 1.4743059999999999
	.quad	0x401ff45cbbc2b94e              # double 7.9886350000000004
	.quad	0x3ff843a322af5771              # double 1.516513
	.quad	0x3fa11f70de8f6cf0              # double 0.033443000000000001
	.quad	0x401d2d6ba8c58687              # double 7.2943559999999996
	.quad	0x40025bb517a46174              # double 2.2947790000000001
	.quad	0x401f09d451fc4c16              # double 7.7595989999999997
	.quad	0x4011e3c36113404f              # double 4.4724250000000003
	.quad	0x3fe1254e6e221c8a              # double 0.53580399999999995
	.quad	0x3ff392d98bf7f067              # double 1.223352
	.quad	0x4019ea48b6523704              # double 6.4787929999999996
	.quad	0x40198753e707e176              # double 6.3821560000000002
	.quad	0x401dd190d173fb7a              # double 7.4546539999999997
	.quad	0x401be6f976790321              # double 6.9755609999999999
	.quad	0x40021f23cc8de2ac              # double 2.2652049999999999
	.quad	0x3febf9fcb0c026cc              # double 0.87426599999999998
	.quad	0x40180e39b456b442              # double 6.0138920000000002
	.quad	0x3fe8c5a8155d5f57              # double 0.77412800000000004
	.quad	0x40100aa68f4b61fe              # double 4.0104009999999999
	.quad	0x4020faf555821294              # double 8.4901529999999993
	.quad	0x4019acc857f3061c              # double 6.4187329999999996
	.quad	0x401b2d0e12e83a11              # double 6.7939990000000003
	.quad	0x4000e1eff9f87f02              # double 2.1103209999999999
	.quad	0x400bd328b6d86ec1              # double 3.4781049999999998
	.quad	0x40228b96af038e2a              # double 9.272634
	.quad	0x3ffeae957470eb25              # double 1.9176230000000001
	.quad	0x401e3ba16e7a311f              # double 7.5582330000000004
	.quad	0x4014bddb1209edc0              # double 5.1854060000000004
	.quad	0x3fcc93c89f40a287              # double 0.22325999999999999
	.quad	0x4015bfa22706d506              # double 5.4371419999999997
	.quad	0x401719db22d0e560              # double 5.7752499999999998
	.quad	0x401a2c4113c68662              # double 6.5432170000000003
	.quad	0x3ffd55043e5321e6              # double 1.833256
	.quad	0x3ff5d0aaa7ded6bb              # double 1.3634440000000001
	.quad	0x40172fa658c4bd34              # double 5.7965330000000002
	.quad	0x4013d577531db446              # double 4.9584630000000001
	.quad	0x3fe7f96e158750c2              # double 0.74919800000000003
	.quad	0x4015b5970b49e01e              # double 5.4273340000000001
	.quad	0x3ff49374bc6a7efa              # double 1.286
	.quad	0x3fec0ea5b530ced5              # double 0.87678800000000001
	.quad	0x401103526527a205              # double 4.2532439999999996
	.quad	0x400cb87ce95faa8b              # double 3.5900820000000002
	.quad	0x3ff6492146a1a501              # double 1.392854
	.quad	0x401e29b6b2af1455              # double 7.5407359999999998
	.quad	0x40065dcad14a0a0f              # double 2.7957969999999999
	.quad	0x3fea17a24894c448              # double 0.81538500000000003
	.quad	0x401e9e392e1ef73c              # double 7.654515
	.quad	0x401e841b75a74c0a              # double 7.6290110000000002
	.quad	0x400705dd095af295              # double 2.8778630000000001
	.quad	0x3fe47a26a22b3893              # double 0.63991100000000001
	.quad	0x4021b2b9f559b3d0              # double 8.8490749999999991
	.quad	0x3ff4c655193708ab              # double 1.298421
	.quad	0x401c94302b40f66a              # double 7.1447149999999997
	.quad	0x401fd34a01abd1ab              # double 7.9563370000000004
	.quad	0x401ce6e6106ab14f              # double 7.2254870000000002
	.quad	0x4015581a1554fbdb              # double 5.3360370000000001
	.quad	0x4014fa88effe2a3d              # double 5.2446630000000001
	.quad	0x401394399b2c40d1              # double 4.8947510000000003
	.quad	0x3fa056a37ac3eb7d              # double 0.031911000000000002
	.quad	0x401fdc929aa1d756              # double 7.9654030000000002
	.quad	0x401b745aa2e3c537              # double 6.8636270000000001
	.quad	0x402010110a137f39              # double 8.0313800000000004
	.quad	0x4020dffef39085f5              # double 8.4374920000000007
	.quad	0x4023087075b3e143              # double 9.5164829999999991
	.quad	0x40055f4fd6d7e88a              # double 2.6715390000000001
	.quad	0x3fe27c829cfdd228              # double 0.57769899999999996
	.quad	0x40109bb83cf2cf96              # double 4.1520700000000001
	.quad	0x400fe09917939a7c              # double 3.984667
	.quad	0x401ee21ab4b72c52              # double 7.7208050000000004
	.quad	0x3fcbe6ab9b23dd55              # double 0.217977
	.quad	0x401c7d883ba3443d              # double 7.1225899999999998
	.quad	0x401704b6a619da9d              # double 5.7546030000000004
	.quad	0x402148221426fe72              # double 8.6408850000000008
	.quad	0x401d7ef0ae536502              # double 7.3739650000000001
	.quad	0x401bf0ad03d9a954              # double 6.9850349999999999
	.quad	0x3fd5bc59b8023a6d              # double 0.33962100000000001
	.quad	0x3ff872d905c03361              # double 1.5280389999999999
	.quad	0x3fff6df505d0fa59              # double 1.964345
	.quad	0x4016651761459536              # double 5.5987220000000004
	.quad	0x3ffac62b27cbf6e4              # double 1.673381
	.quad	0x400b9a365cb35f3d              # double 3.4502989999999998
	.quad	0x4012508787485e3e              # double 4.5786420000000003
	.quad	0x40174ba01eeed890              # double 5.8238529999999997
	.quad	0x40192a0945f9df55              # double 6.2910510000000004
	.quad	0x40204d88a04d1202              # double 8.1514330000000008
	.quad	0x4003b04ab606b7aa              # double 2.4610799999999999
	.quad	0x4007f827fa1a0cf2              # double 2.9961700000000002
	.quad	0x3fc29057d1782d38              # double 0.14502999999999999
	.quad	0x401e8f3fd933e35c              # double 7.6398919999999997
	.quad	0x4016744cbe1eb420              # double 5.6135739999999998
	.quad	0x4020613037d63023              # double 8.1898210000000002
	.quad	0x401896e5cd4ed2cc              # double 6.1473610000000001
	.quad	0x3fe661975f2cb641              # double 0.69941299999999995
	.quad	0x40095e6e653868fd              # double 3.171109
	.quad	0x40067d11be6e6538              # double 2.8110689999999998
	.quad	0x4010f5d7cb2d905c              # double 4.240081
	.quad	0x4020fb4bd76ee73e              # double 8.4908129999999993
	.quad	0x4015d918e325d4a6              # double 5.4620090000000001
	.quad	0x4012d094e5d5b24f              # double 4.7036930000000003
	.quad	0x3ff863886594af4f              # double 1.5243
	.quad	0x4011423fee2c98e5              # double 4.3146969999999998
	.quad	0x401a37edc7ef177a              # double 6.5546179999999996
	.quad	0x4013be28240b7803              # double 4.9356999999999998
	.quad	0x400e02e09fe86834              # double 3.7514050000000001
	.quad	0x3fee7e6b3fe9fadb              # double 0.952932
	.quad	0x401174e1e71044f2              # double 4.3641430000000003
	.quad	0x4020858ea7ce0fc3              # double 8.2608540000000001
	.quad	0x4002ac3dab5c39bd              # double 2.3341020000000001
	.quad	0x4008b112fd32c626              # double 3.086462
	.quad	0x400368bf3bea91da              # double 2.4261460000000001
	.quad	0x3f843d03968d759f              # double 0.0098820000000000001
	.quad	0x401dba86940357a3              # double 7.4321539999999997
	.quad	0x3ff12fb19e731d2e              # double 1.074144
	.quad	0x401e62adc4c9c90c              # double 7.5963659999999997
	.quad	0x3fdbe260b2c83ec9              # double 0.43569200000000002
	.quad	0x3fc6efc371da37ef              # double 0.17919199999999999
	.quad	0x3fd6c853c148344c              # double 0.35597699999999999
	.quad	0x4009226916440f24              # double 3.1418020000000002
	.quad	0x40171d6f112fd32c              # double 5.7787439999999997
	.quad	0x4020edb20b8066c3              # double 8.4642490000000006
	.quad	0x401d27c99ae924f2              # double 7.2888549999999999
	.quad	0x4012a58969a0ad8a              # double 4.6616569999999999
	.quad	0x401112435696e58a              # double 4.2678349999999998
	.quad	0x4014a0d3cff64cf9              # double 5.1570580000000001
	.quad	0x3fd541d084e831ad              # double 0.33214199999999999
	.quad	0x3fe1e03f705857b0              # double 0.55862400000000001
	.quad	0x4014e805e5f30e80              # double 5.226585
	.quad	0x401ebf0563ed0f62              # double 7.6865439999999996
	.quad	0x3ff284fb1183b603              # double 1.1574660000000001
	.quad	0x3ffabbecaab8a5ce              # double 1.6708799999999999
	.quad	0x4023df151e75360d              # double 9.9357079999999999
	.quad	0x40145393ab430f49              # double 5.0816179999999997
	.quad	0x4012069b5a63f9a5              # double 4.5064520000000003
	.quad	0x4016e203e63e8dda              # double 5.7207179999999997
	.quad	0x401e84aa10e02214              # double 7.6295549999999999
	.quad	0x40184d388a8b08dd              # double 6.0754109999999999
	.quad	0x40044f78feef5ec8              # double 2.538805
	.quad	0x402265432873bc90              # double 9.1977779999999996
	.quad	0x3fa7a786c226809d              # double 0.046199999999999998
	.quad	0x400b46ed245b291c              # double 3.4096320000000002
	.quad	0x40147b738e6d15ad              # double 5.1205579999999999
	.quad	0x4010f257c914b168              # double 4.2366630000000001
	.quad	0x40046e60807357e6              # double 2.5538949999999998
	.quad	0x401b642d8c2a454e              # double 6.8478300000000001
	.quad	0x4021eed4a1ad6452              # double 8.9664660000000005
	.quad	0x40207b1b9b66f933              # double 8.2404449999999994
	.quad	0x3ff4f969e3c96894              # double 1.3108919999999999
	.quad	0x40134902de00d1b7              # double 4.8212999999999999
	.quad	0x400acf416bdb1a6d              # double 3.3511989999999998
	.quad	0x40141178b3700475              # double 5.0170620000000001
	.quad	0x4012fdd377e1b8ed              # double 4.7478769999999999
	.quad	0x401427243137b070              # double 5.0382239999999996
	.quad	0x400954efcbd55608              # double 3.1664729999999999
	.quad	0x401c5f73c0c1fc8f              # double 7.0932149999999998
	.quad	0x4018b0fd3b29a1ba              # double 6.172841
	.quad	0x3ffad30270f38822              # double 1.6765159999999999
	.quad	0x4018f8893b7d8490              # double 6.2427109999999999
	.quad	0x401fe28f190d1740              # double 7.9712490000000003
	.quad	0x402072949a5657fb              # double 8.2237899999999993
	.quad	0x401ef55c96030c24              # double 7.739611
	.quad	0x3ff3354e2b063e08              # double 1.2005140000000001
	.quad	0x4015b13b9f127f5f              # double 5.4230790000000004
	.quad	0x401956eac8605682              # double 6.3348800000000001
	.quad	0x40152c64345cfedf              # double 5.2933510000000004
	.quad	0x401258140dd3fe19              # double 4.5860139999999996
	.quad	0x3ffdfa1e3eaf6838              # double 1.873564
	.quad	0x4018dc7bcc2938de              # double 6.2153159999999996
	.quad	0x400416366d7a56de              # double 2.5108459999999999
	.quad	0x402131cc74b838c1              # double 8.5972629999999999
	.quad	0x40144c92146a1a50              # double 5.074776
	.quad	0x400e720f2becedd5              # double 3.8056930000000002
	.quad	0x40013d89ce4a7b4e              # double 2.1550479999999999
	.quad	0x4000958f2e05ccc9              # double 2.0730270000000002
	.quad	0x401db77186551937              # double 7.429144
	.quad	0x40159db4cc250721              # double 5.4040100000000004
	.quad	0x40144be09bb6aa4c              # double 5.0740990000000004
	.quad	0x4023c2465a57646b              # double 9.8794430000000001
	.quad	0x4023f5f9591cd1c8              # double 9.9804180000000002
	.quad	0x4012c14983d79075              # double 4.6887569999999998
	.quad	0x4005963800218def              # double 2.6983489999999999
	.quad	0x4020f599029ae4f3              # double 8.4796829999999996
	.quad	0x3ff2e8155d5f56a8              # double 1.1816610000000001
	.quad	0x401d7a5c1c6088d7              # double 7.3694920000000002
	.quad	0x401ad5e95b78cc9a              # double 6.7088979999999996
	.quad	0x400543d25247cb71              # double 2.6581160000000001
	.quad	0x401771e2de870974              # double 5.8612169999999999
	.quad	0x4014a515ce9e5e24              # double 5.1612159999999996
	.quad	0x401343fb3743632c              # double 4.8163879999999999
	.quad	0x400c804d98394749              # double 3.5626479999999998
	.quad	0x4022954ed2cbea4f              # double 9.2916170000000005
	.quad	0x402376327ed84d34              # double 9.7308540000000007
	.quad	0x4023ae9a91105e1c              # double 9.8410229999999998
	.quad	0x3ff918bb4d48882f              # double 1.568538
	.quad	0x402285b7281fd9ba              # double 9.2611629999999998
	.quad	0x4021b473cd573648              # double 8.8524460000000005
	.quad	0x400d73f077ccc038              # double 3.6816110000000002
	.quad	0x40223854046412cf              # double 9.1100159999999999
	.quad	0x401839d5a187a4a5              # double 6.0564790000000004
	.quad	0x4005e9edbf8b9baa              # double 2.739223
	.quad	0x400578a8f3a9b068              # double 2.683916
	.quad	0x3ff896cd6c2efd44              # double 1.5368170000000001
	.quad	0x4000ac80c73abc94              # double 2.0842299999999998
	.quad	0x4010ab8561d4306e              # double 4.1675009999999997
	.quad	0x401ad13ec460ed81              # double 6.7043410000000003
	.quad	0x400d1e0370cdc875              # double 3.6396549999999999
	.quad	0x401e6789e774eebf              # double 7.6011119999999996
	.quad	0x401805a63f9a49c3              # double 6.0055170000000002
	.quad	0x40232e19da9c9928              # double 9.5900409999999993
	.quad	0x400ca678c0053e2d              # double 3.5812849999999998
	.quad	0x401accedd4845133              # double 6.700126
	.quad	0x400dd37329c347e9              # double 3.7282470000000001
	.quad	0x3fcbc475e6362a5e              # double 0.21693299999999999
	.quad	0x401fd46b69db65ed              # double 7.9574410000000002
	.quad	0x400226cd29131ec1              # double 2.2689460000000001
	.quad	0x4003a44417870542              # double 2.4552079999999998
	.quad	0x401da5ed06fef7c2              # double 7.4120369999999998
	.quad	0x40211f80baa582dc              # double 8.5615290000000001
	.quad	0x4017a3996fa82e88              # double 5.9097650000000002
	.quad	0x40061aa3f034b0e2              # double 2.7630080000000001
	.quad	0x401d24a59c065b64              # double 7.2857880000000002
	.quad	0x401c7e15ca6ca03c              # double 7.1231299999999997
	.quad	0x4011f09d495182aa              # double 4.4849750000000004
	.quad	0x3ffe21c475e6362a              # double 1.8832439999999999
	.quad	0x40207a7f1b691212              # double 8.2392509999999994
	.quad	0x4023702a5614df8b              # double 9.7190729999999998
	.quad	0x3ff20fc610f0e90c              # double 1.128851
	.quad	0x401533a42f1ed17c              # double 5.3004309999999997
	.quad	0x400feced4e4c942d              # double 3.9906869999999999
	.quad	0x4002e2dcf4623d0c              # double 2.360773
	.quad	0x3ffdacfb762d83c7              # double 1.854732
	.quad	0x401dfd7cf5f4e443              # double 7.4975469999999999
	.quad	0x4012c1819d2391d5              # double 4.6889709999999996
	.quad	0x4017638583621fb0              # double 5.8471890000000002
	.quad	0x4002fd3aa369fcf4              # double 2.3736470000000001
	.quad	0x40152a0dbad3a605              # double 5.2910680000000001
	.quad	0x40125d9cae21101b              # double 4.591418
	.quad	0x3fe27080303c07ee              # double 0.576233
	.quad	0x4005d76ee73e681b              # double 2.7301920000000002
	.quad	0x4019cede54b48d3b              # double 6.4520200000000001
	.quad	0x4023fe1f5be5d9e4              # double 9.9963329999999999
	.quad	0x4011bfd0d0678c00              # double 4.4373199999999997
	.quad	0x4023203148776816              # double 9.5628759999999993
	.quad	0x4014e84988094e5d              # double 5.2268429999999997
	.quad	0x4020a309e98dcdb3              # double 8.3184349999999991
	.quad	0x40115df3f961804e              # double 4.3417510000000004
	.quad	0x4020e99e94ab1d50              # double 8.4562880000000007
	.quad	0x4000c43ed959a30a              # double 2.0958230000000002
	.quad	0x3ff31b823c85c24c              # double 1.1942159999999999
	.quad	0x40051844d013a92a              # double 2.6368499999999999
	.quad	0x4006c8b6d86ec17f              # double 2.8480050000000001
	.quad	0x40221f2f55582129              # double 9.0609079999999995
	.quad	0x401238327674d163              # double 4.5548799999999998
	.quad	0x400172d77318fc50              # double 2.1810749999999999
	.quad	0x40151264a16a4873              # double 5.2679619999999998
	.quad	0x4023009917939a7c              # double 9.5011679999999998
	.quad	0x4003844d87724fa9              # double 2.4396010000000001
	.quad	0x401cc74e22a2c237              # double 7.1946339999999998
	.quad	0x4021b1d57ff9b563              # double 8.8473319999999998
	.quad	0x401e72a9d627bf62              # double 7.6119760000000003
	.quad	0x40182af533f42353              # double 6.0419510000000001
	.quad	0x3fe2548ecd8dbced              # double 0.57282200000000005
	.quad	0x3fe2e0956c0d6f54              # double 0.58991499999999997
	.quad	0x4022c48605681ecd              # double 9.3838349999999994
	.quad	0x4013f2e83a109d06              # double 4.9872139999999998
	.quad	0x4022cd48cb4aec8d              # double 9.4009459999999993
	.quad	0x3fcd15d701d9f4d3              # double 0.22722899999999999
	.quad	0x40234d6191148fda              # double 9.651135
	.quad	0x400ddea465a57647              # double 3.7337120000000001
	.quad	0x40236f6e1deacc92              # double 9.7176369999999999
	.quad	0x400cd46455eaee20              # double 3.603707
	.quad	0x4020b590e23af31b              # double 8.3546209999999999
	.quad	0x4019c4d12018a43c              # double 6.4422040000000003
	.quad	0x3fefb13be22e5de1              # double 0.99038499999999995
	.quad	0x401eb4f483cafb3b              # double 7.6767139999999995
	.quad	0x400590214ad362e9              # double 2.695376
	.quad	0x3fec09b951c5c572              # double 0.87618700000000005
	.quad	0x402028f81e8a2ec3              # double 8.0800180000000008
	.quad	0x40135fb58d1526d9              # double 4.8434660000000003
	.quad	0x40079e0589acbc8c              # double 2.952159
	.quad	0x4005b985271bcdbc              # double 2.7155860000000001
	.quad	0x40221106ee30caa3              # double 9.0332559999999997
	.quad	0x401447a743a647fe              # double 5.0699740000000002
	.quad	0x4023911947cfa26a              # double 9.7833959999999998
	.quad	0x40059cddd6e04c06              # double 2.7015950000000002
	.quad	0x400a4c62e4d1a650              # double 3.2872979999999998
	.quad	0x3fc20a5269595fee              # double 0.14094000000000001
	.quad	0x401de663c74fb54a              # double 7.47499
	.quad	0x401595be1a826245              # double 5.3962329999999996
	.quad	0x3ff6fb677f6b1a2a              # double 1.4363779999999999
	.quad	0x3fe6a77c45cbbc2c              # double 0.70794500000000005
	.quad	0x3fe55818c5c9a34d              # double 0.66700400000000004
	.quad	0x402317221858bc5a              # double 9.5451820000000005
	.quad	0x3fcdece5710880d8              # double 0.233792
	.quad	0x4023fc6950fc71d6              # double 9.992991
	.quad	0x401046a8fc0d2c38              # double 4.0690039999999996
	.quad	0x3ffbc60cbf2b239a              # double 1.735852
	.quad	0x40153775b8130165              # double 5.3041600000000004
	.quad	0x401352e6a76965f5              # double 4.8309579999999999
	.quad	0x401eeb6dca07f66f              # double 7.7299110000000004
	.quad	0x4011d8dde7a743a6              # double 4.4617839999999998
	.quad	0x3ffbca600b029281              # double 1.7369079999999999
	.quad	0x40175734f82f5126              # double 5.8351629999999997
	.quad	0x401a36698bb4d489              # double 6.5531370000000004
	.quad	0x3fe6462a1b5c7cd9              # double 0.69606500000000004
	.quad	0x401bb4b124d099e1              # double 6.9264570000000001
	.quad	0x400f7b1e18efbb0e              # double 3.9351159999999998
	.quad	0x40188a65492ff4ba              # double 6.1351519999999997
	.quad	0x4020ae26d4801f75              # double 8.3401399999999999
	.quad	0x4019f4028e4fb97c              # double 6.4882910000000003
	.quad	0x4003bc504816f007              # double 2.4669500000000002
	.quad	0x401d6f355cd91eeb              # double 7.3586020000000003
	.quad	0x4021db7ed41b75a7              # double 8.9287019999999995
	.quad	0x400013aa369fcf3e              # double 2.0096020000000001
	.quad	0x40232122d948dc12              # double 9.5647190000000002
	.quad	0x4023ed39756c93a7              # double 9.9633289999999998
	.quad	0x40222e916440f239              # double 9.0909530000000007
	.quad	0x401091ac14c660a2              # double 4.142258
	.quad	0x400cdd49d7ba6699              # double 3.6080510000000001
	.quad	0x401acfb224aada34              # double 6.7028280000000002
	.quad	0x40064a38327674d1              # double 2.7862399999999998
	.quad	0x4018e596c82e019b              # double 6.224208
	.quad	0x402170b135979182              # double 8.7201020000000007
	.quad	0x4022db8de6ddf00b              # double 9.4288170000000004
	.quad	0x4020bd1b4fe79ee0              # double 8.3693489999999997
	.quad	0x40215887ca643cc0              # double 8.6729109999999991
	.quad	0x40011164c729f59d              # double 2.1334930000000001
	.quad	0x4018f90e66cb1034              # double 6.2432189999999999
	.quad	0x3fe5ca1ad6451b93              # double 0.680921
	.quad	0x3ff44e29f9ce8d97              # double 1.269083
	.quad	0x3ff5d32b55ef1fde              # double 1.364055
	.quad	0x401a7eab367a0f91              # double 6.6237000000000004
	.quad	0x4007870329802c0a              # double 2.9409239999999999
	.quad	0x40214ce4649906cd              # double 8.6501800000000006
	.quad	0x4020d5093964a59c              # double 8.4160859999999999
	.quad	0x401e1cd91eeaa6d2              # double 7.5281719999999996
	.quad	0x4019496b3354c122              # double 6.3216979999999996
	.quad	0x401ee5ccc89b0ee5              # double 7.7244140000000003
	.quad	0x40231538cda6e760              # double 9.5414490000000001
	.quad	0x4006b08919ef954f              # double 2.8361990000000001
	.quad	0x40218a82c6ef3d3a              # double 8.7705289999999998
	.quad	0x4020597891e21533              # double 8.1747479999999992
	.quad	0x4002cb37867f0aa2              # double 2.349227
	.quad	0x3ff9158c8eef1bac              # double 1.567761
	.quad	0x40015c8c0ce91c8f              # double 2.1701890000000001
	.quad	0x40103d5dc4007571              # double 4.0599280000000002
	.quad	0x3fe6af23033a4724              # double 0.70887900000000004
	.quad	0x4015128d434a01ac              # double 5.2681170000000002
	.quad	0x40044b1ee2435697              # double 2.53668
	.quad	0x4011551dabe2717a              # double 4.3331210000000002
	.quad	0x3fffa1059ea57215              # double 1.976812
	.quad	0x401e84ec636b0963              # double 7.6298079999999997
	.quad	0x3ff74d173fb7a5f4              # double 1.456321
	.quad	0x4003c42aed139431              # double 2.4707849999999998
	.quad	0x400c7f2ba9d1f601              # double 3.5620949999999998
	.quad	0x3fe9ea1405708249              # double 0.80982399999999999
	.quad	0x40134b5a63f9a49c              # double 4.8235869999999998
	.quad	0x40150e525892684d              # double 5.2639860000000001
	.quad	0x3ffe8d79d0a67621              # double 1.90954
	.quad	0x400fc1c79b34a44c              # double 3.9696189999999998
	.quad	0x4020fc669057d178              # double 8.4929699999999997
	.quad	0x3fbee04c05921038              # double 0.12060999999999999
	.quad	0x4017ec7bcc2938de              # double 5.9809409999999996
	.quad	0x40121afd5454152b              # double 4.526357
	.quad	0x400b75e9e1b089a0              # double 3.4325749999999999
	.quad	0x400f37ced916872b              # double 3.90225
	.quad	0x401cbc881e4712e4              # double 7.184113
	.quad	0x40187af7d30ad46f              # double 6.1200859999999997
	.quad	0x3ffe1a272862f599              # double 1.8813850000000001
	.quad	0x3fd3b45f17bd8be7              # double 0.30788399999999999
	.quad	0x3ff83a3db3bfb58d              # double 1.514219
	.quad	0x40042a4873365882              # double 2.5206460000000002
	.quad	0x3ff5f3860999dcb5              # double 1.3719539999999999
	.quad	0x4018f3b4f6167232              # double 6.2379949999999997
	.quad	0x400ce64a9cdc4439              # double 3.612447
	.quad	0x4018f7ef9db22d0e              # double 6.2421249999999997
	.quad	0x400928f08461f9f0              # double 3.14499
	.quad	0x4003a93293d102bc              # double 2.4576159999999998
	.quad	0x401a1ae85b9e8c48              # double 6.5262770000000003
	.quad	0x4012e745bf26f1dc              # double 4.7258519999999997
	.quad	0x40164221426fe719              # double 5.5645800000000003
	.quad	0x4018cd44998d0460              # double 6.2004570000000001
	.quad	0x4018a65b63d3e4ef              # double 6.162458
	.quad	0x3fff18201cd5f99c              # double 1.94339
	.quad	0x3fc9020c49ba5e35              # double 0.19537499999999999
	.quad	0x40221c50268900c5              # double 9.0552989999999998
	.quad	0x4022abbe878fabda              # double 9.3354379999999999
	.quad	0x400adc19c17225b7              # double 3.3574709999999999
	.quad	0x3ffa453f39d1b2e6              # double 1.6419060000000001
	.quad	0x4008a20685553ef7              # double 3.0791140000000001
	.quad	0x4016451e75360d02              # double 5.5674989999999998
	.quad	0x4023507746887a8d              # double 9.6571599999999993
	.quad	0x4010790a7829068a              # double 4.1182040000000004
	.quad	0x3ffcfa00e27e0efa              # double 1.8110360000000001
	.quad	0x40109f47735c182f              # double 4.1555460000000002
	.quad	0x40173433d6c72192              # double 5.8009789999999999
	.quad	0x400a94be835dedf2              # double 3.3226290000000001
	.quad	0x400193ad5bee3d60              # double 2.1971080000000001
	.quad	0x4011f4f09528f191              # double 4.4891990000000002
	.quad	0x3ffe4915bdd76684              # double 1.8928430000000001
	.quad	0x4002cf6c69b5a640              # double 2.3512810000000002
	.quad	0x4018a64b2314013f              # double 6.1623960000000002
	.quad	0x40106afff36ac647              # double 4.1044919999999996
	.quad	0x400e9d4a5df2239e              # double 3.8268019999999998
	.quad	0x40194cbf2b239a39              # double 6.324948
	.quad	0x3ff0147cfa26a22b              # double 1.005002
	.quad	0x40231fd49d7ba66a              # double 9.5621690000000008
	.quad	0x401b093c89f40a28              # double 6.7590199999999996
	.quad	0x401d88d92fb19e73              # double 7.3836409999999999
	.quad	0x4000c9f383f0bae9              # double 2.0986090000000002
	.quad	0x4021e3a0a5269596              # double 8.944585
	.quad	0x401f4ad2dcb1465f              # double 7.8230700000000004
	.quad	0x40087c4545846e8f              # double 3.0606789999999999
	.quad	0x4005cb7457c0b136              # double 2.7243430000000002
	.quad	0x401691001d5c3159              # double 5.6416019999999998
	.quad	0x4009dc86cebbba56              # double 3.2326790000000001
	.quad	0x400a7f1e0828c36e              # double 3.3120690000000002
	.quad	0x4018b1da7b0b3919              # double 6.1736849999999999
	.quad	0x401ab1a6937d1fe6              # double 6.6734869999999997
	.quad	0x401a419ac79702e6              # double 6.5640669999999997
	.quad	0x4023b6ec7c957cd4              # double 9.8572729999999992
	.quad	0x4021da990f301eac              # double 8.9269490000000004
	.quad	0x3ff7a83b1d0c8041              # double 1.478572
	.quad	0x3ffa0ca925fe974a              # double 1.628091
	.quad	0x401f62edbb59ddc2              # double 7.8466100000000001
	.quad	0x401324df8b157258              # double 4.786009
	.quad	0x402318f8a4c1ebc8              # double 9.5487719999999995
	.quad	0x3fe73bdbe3c10518              # double 0.72605699999999995
	.quad	0x4019fe46cfc829d0              # double 6.4983170000000001
	.quad	0x4004471bcdbbe015              # double 2.5347209999999998
	.quad	0x4011e8b2e9ccb7d4              # double 4.4772449999999999
	.quad	0x402148eb24a6a876              # double 8.6424190000000003
	.quad	0x40188d184c271fff              # double 6.1377879999999996
	.quad	0x3fc0fbe33acd5b68              # double 0.132687
	.quad	0x40091c37a3db3bfb              # double 3.1387779999999998
	.quad	0x401951344806290f              # double 6.3293010000000001
	.quad	0x4021e7f737da61e1              # double 8.9530580000000004
	.quad	0x40170811b1d92b80              # double 5.7578800000000001
	.quad	0x40196ce9e5e24788              # double 6.3563609999999997
	.quad	0x40108059641f6449              # double 4.1253409999999997
	.quad	0x401b3d5992428d43              # double 6.8099119999999997
	.quad	0x3feff00ef1348b22              # double 0.998054
	.quad	0x40214f972474538f              # double 8.6554500000000001
	.quad	0x3ff4c6f049a9973e              # double 1.2985690000000001
	.quad	0x402100c79f666235              # double 8.5015230000000006
	.quad	0x4019e63800218def              # double 6.4748229999999998
	.quad	0x400f667839cd8128              # double 3.9250340000000001
	.quad	0x401d488765ba6efc              # double 7.3208289999999998
	.quad	0x40237bc6a7ef9db2              # double 9.7417499999999997
	.quad	0x3f96134ce3de614a              # double 0.021558000000000001
	.quad	0x3ff45308bb906467              # double 1.2702720000000001
	.quad	0x3fe876c050bd87b5              # double 0.76449599999999995
	.quad	0x3fe72ff8ec0f8833              # double 0.72460599999999997
	.quad	0x4011b5ad106ee30d              # double 4.4274180000000003
	.quad	0x4003f9acffa7eb6c              # double 2.496912
	.quad	0x40066a1a500d5e8d              # double 2.8018079999999999
	.quad	0x401ba710880d801b              # double 6.9131489999999998
	.quad	0x402127cc1871e6cd              # double 8.5777289999999997
	.quad	0x401e4163fdd65a14              # double 7.5638579999999997
	.quad	0x401f470f7b9e0610              # double 7.8193950000000001
	.quad	0x3fff6939eadd590c              # double 1.96319
	.quad	0x401d9523f67f4dbe              # double 7.395645
	.quad	0x401aa5e41d4b6a62              # double 6.6620030000000003
	.quad	0x3fe9d1b4fe79ee03              # double 0.80684900000000004
	.quad	0x40122d9b1b79d90a              # double 4.544537
	.quad	0x400eb7e3d1cc100e              # double 3.8397899999999998
	.quad	0x4020db3d29563a9f              # double 8.4282009999999996
	.quad	0x401fdf3dc054ef46              # double 7.9680090000000003
	.quad	0x40113e3eaf6837f8              # double 4.3107860000000002
	.quad	0x4020d3f9a49c2c1b              # double 8.4140139999999999
	.quad	0x400709563a9f383f              # double 2.879559
	.quad	0x4014700c521dda06              # double 5.1094220000000004
	.quad	0x40028d37c1376d55              # double 2.3189540000000002
	.quad	0x401f9fba8826aa8f              # double 7.9059850000000002
	.quad	0x401d8bf3bea91d9b              # double 7.3866719999999999
	.quad	0x401e830f8c64fdb1              # double 7.6279890000000003
	.quad	0x3ff4e99b6f5caf2d              # double 1.3070329999999999
	.quad	0x4020f60ae9680e06              # double 8.4805519999999994
	.quad	0x4019108fa7a85016              # double 6.2661730000000002
	.quad	0x40188d1f1cfbb949              # double 6.1378139999999997
	.quad	0x401d3d1aeb3dd11c              # double 7.3096730000000001
	.quad	0x3ff1c5c358afc47e              # double 1.1107819999999999
	.quad	0x4023ec88e79aae6d              # double 9.9619820000000007
	.quad	0x3ff865529fe004b8              # double 1.524737
	.quad	0x40048c271fff79c8              # double 2.5684339999999999
	.quad	0x3ffe4247021d10b2              # double 1.891181
	.quad	0x40194fb267c6b8b7              # double 6.3278290000000004
	.quad	0x401e3ce9a2c66905              # double 7.5594849999999995
	.quad	0x400d7a2cecc814d7              # double 3.6846559999999999
	.quad	0x401892eba27ae9ab              # double 6.1434769999999999
	.quad	0x4018b74256bca537              # double 6.1789639999999997
	.quad	0x40124d83c6c97d8d              # double 4.575698
	.quad	0x40115e2089e34331              # double 4.3419210000000001
	.quad	0x401fd308787485e4              # double 7.9560870000000001
	.quad	0x40098d887ebf22c0              # double 3.1941079999999999
	.quad	0x40213135b91f70df              # double 8.5961130000000008
	.quad	0x3fd1d37c1376d549              # double 0.27853299999999998
	.quad	0x4016b577d955714c              # double 5.6772150000000003
	.quad	0x4005641bb8c32a8d              # double 2.6738810000000002
	.quad	0x402019ea57214f05              # double 8.0506159999999998
	.quad	0x3ff083ba3443d46b              # double 1.03216
	.quad	0x4015bd017dae8188              # double 5.4345759999999999
	.quad	0x40167bc4d22c881e              # double 5.6208679999999998
	.quad	0x401992f405f6ba06              # double 6.3935089999999999
	.quad	0x402365c486ad2dcb              # double 9.6987649999999998
	.quad	0x401ee001d5c31594              # double 7.7187570000000001
	.quad	0x40145df00abf76a3              # double 5.091736
	.quad	0x4012fce8101f31f4              # double 4.7469789999999996
	.quad	0x401c347cb70ac3a8              # double 7.0512569999999997
	.quad	0x3fddb9ecf6380022              # double 0.46447300000000002
	.quad	0x4010d7c02afdda8c              # double 4.2106940000000002
	.quad	0x4020493836a832ba              # double 8.1430070000000008
	.quad	0x4023f43ac929aa1d              # double 9.9770109999999991
	.quad	0x3ffcb9a9da597d4a              # double 1.795328
	.quad	0x4022c7160956c0d7              # double 9.38884
	.quad	0x40202f6d97b30f8c              # double 8.0926329999999992
	.quad	0x40208d4c55432874              # double 8.2759730000000004
	.quad	0x401dee10cf5b1c86              # double 7.4824859999999997
	.quad	0x401ba38b47c73eee              # double 6.9097109999999997
	.quad	0x3fe268db8bac710d              # double 0.57530000000000003
	.quad	0x4023b26e32e3821b              # double 9.848497
	.quad	0x401c7b749adc8fb8              # double 7.1205619999999996
	.quad	0x401734b3c3e74afd              # double 5.8014669999999997
	.quad	0x4001790afe60c38f              # double 2.1841029999999999
	.quad	0x3fef66e008e9b38d              # double 0.98130799999999995
	.quad	0x401d7b940fecdd0e              # double 7.3706820000000004
	.quad	0x3feec58eeae9ee46              # double 0.96161600000000003
	.quad	0x40109374bc6a7efa              # double 4.1440000000000001
	.quad	0x40143e87d2c7b891              # double 5.0610650000000001
	.quad	0x4021be2fbe33acd6              # double 8.8714580000000005
	.quad	0x3fd1954a7f8012e0              # double 0.27473700000000001
	.quad	0x4021be412cf0f9d3              # double 8.8715910000000004
	.quad	0x4011cfa48301a7a0              # double 4.4527760000000001
	.quad	0x40215846412cf0fa              # double 8.6724110000000003
	.quad	0x4006fe47991bc558              # double 2.8741599999999998
	.quad	0x40216a90eed02cd4              # double 8.7081370000000006
	.quad	0x40237d273d5bab22              # double 9.7444400000000009
	.quad	0x3fce046412cf0f9d              # double 0.234509
	.quad	0x400c1d55e6bc621b              # double 3.5143239999999998
	.quad	0x40146108c3f3e037              # double 5.09476
	.quad	0x4008b60c7c0f4517              # double 3.0888909999999998
	.quad	0x3fe5d99aa60913a5              # double 0.682813
	.quad	0x401dcc7bcc2938de              # double 7.4496909999999996
	.quad	0x400ae1d10b1feeb3              # double 3.3602620000000001
	.quad	0x4013ddbc23315d70              # double 4.9665379999999999
	.quad	0x3fe1f97460242d06              # double 0.56170100000000001
	.quad	0x3ff14b966be7afa7              # double 1.080954
	.quad	0x401d91f601797cc4              # double 7.3925400000000003
	.quad	0x400dfbc98a222d51              # double 3.7479429999999998
	.quad	0x40015814940bbb1f              # double 2.1680079999999999
	.quad	0x4021e1682f944242              # double 8.9402480000000004
	.quad	0x40163a54c5543287              # double 5.5569639999999998
	.quad	0x400de44b6e935b92              # double 3.736472
	.quad	0x40188e95b78cc9a7              # double 6.1392429999999996
	.quad	0x4008a0c8472c0e7c              # double 3.0785070000000001
	.quad	0x401aa09310129cbb              # double 6.6568110000000003
	.quad	0x3fbd8383ad9f0a1c              # double 0.115288
	.quad	0x4010be496ededaec              # double 4.1858269999999997
	.quad	0x3fcf9aae6c8f7553              # double 0.24690799999999999
	.quad	0x3ff75ccea28fe261              # double 1.4601580000000001
	.quad	0x40166c51116a8b8f              # double 5.6057779999999999
	.quad	0x3fe3b14ec204f2ae              # double 0.615394
	.quad	0x3ffb62a1b5c7cd8a              # double 1.7115800000000001
	.quad	0x40068c8a372606fb              # double 2.8186230000000001
	.quad	0x401c53cee9dd7ecc              # double 7.0818440000000002
	.quad	0x40210c8cd63cb817              # double 8.5245119999999996
	.quad	0x4015b6e2a80064aa              # double 5.4285990000000002
	.quad	0x3ff5d5de58e64b23              # double 1.364714
	.quad	0x400e631832fcac8e              # double 3.7983859999999998
	.quad	0x4019592253111f0c              # double 6.3370449999999998
	.quad	0x3ff6d4face67d780              # double 1.4269970000000001
	.quad	0x4019a05b39e279dd              # double 6.4065979999999998
	.quad	0x3fe7a46e08f21709              # double 0.73882199999999998
	.quad	0x401cb4b2314013ec              # double 7.1764609999999998
	.quad	0x401fd70a808c825a              # double 7.9600010000000001
	.quad	0x401487b7414a4d2b              # double 5.1325349999999998
	.quad	0x4018448b220791c5              # double 6.0669370000000002
	.quad	0x401a2430f49491f3              # double 6.5353430000000001
	.quad	0x40175057082491b0              # double 5.8284570000000002
	.quad	0x402058201cd5f99c              # double 8.1721199999999996
	.quad	0x400d2b21815a07b3              # double 3.6460599999999999
	.quad	0x4010029ed3953dea              # double 4.0025589999999998
	.quad	0x3ff2e8b5cbff4773              # double 1.1818139999999999
	.quad	0x401504228997c3d7              # double 5.2540380000000004
	.quad	0x400a09fd7a13c255              # double 3.2548780000000002
	.quad	0x4023b84c6a3bddfd              # double 9.8599580000000006
	.quad	0x402248029f16b11c              # double 9.1406449999999992
	.quad	0x3ffe3689ca18bd66              # double 1.888315
	.quad	0x3ffb88882f0e0a85              # double 1.7208330000000001
	.quad	0x40135e108c3f3e03              # double 4.8418599999999996
	.quad	0x40202fb1c0010c6f              # double 8.0931529999999992
	.quad	0x40236e8fd199bb28              # double 9.7159410000000008
	.quad	0x40171bcc6c54bcf1              # double 5.7771470000000003
	.quad	0x4009b7d0f1f57b42              # double 3.2147540000000001
	.quad	0x3fcf86fcdee34fc6              # double 0.246307
	.quad	0x3fd48da3c21187e8              # double 0.32114500000000001
	.quad	0x4022f32b3461309c              # double 9.4749389999999991
	.quad	0x401383d9a95421c0              # double 4.8787599999999998
	.quad	0x3fd6122749f0e4da              # double 0.344858
	.quad	0x4010b821294573a8              # double 4.1798140000000004
	.quad	0x40172b5b70691ea8              # double 5.7923410000000004
	.quad	0x400aac814d72799a              # double 3.3342309999999999
	.quad	0x401e310e8858ff76              # double 7.5479070000000004
	.quad	0x401a7950763a1901              # double 6.6184710000000004
	.quad	0x4011603dddb1209f              # double 4.3439860000000001
	.quad	0x4021f7faa044ae86              # double 8.9843340000000005
	.quad	0x3ff8154c985f06f7              # double 1.5052000000000001
	.quad	0x3fd01e5c0b999136              # double 0.25185299999999999
	.quad	0x40105feb4a66559f              # double 4.0936709999999996
	.quad	0x4015f572de43ed96              # double 5.4896960000000004
	.quad	0x3ff36e4e26d4801f              # double 1.2144299999999999
	.quad	0x3fe2794c87980f56              # double 0.57730700000000001
	.quad	0x4020cc0c62e4d1a6              # double 8.3985319999999994
	.quad	0x4010b32e3821af7d              # double 4.1749809999999998
	.quad	0x3fe1f4e22a2c2374              # double 0.56114299999999995
	.quad	0x401745f8d2e514c2              # double 5.8183319999999998
	.quad	0x4014a5c63ae2541e              # double 5.1618890000000004
	.quad	0x3f705af6c69b5a64              # double 0.003993
	.quad	0x3fd58a6117720c8d              # double 0.33657100000000001
	.quad	0x4009118e325d4a5e              # double 3.133572
	.quad	0x401371b10fd7e458              # double 4.861027
	.quad	0x4011597edc7ef178              # double 4.3373980000000003
	.quad	0x4014c045fe111277              # double 5.187767
	.quad	0x40225b05100a393f              # double 9.1777730000000002
	.quad	0x40210101b003686a              # double 8.5019659999999995
	.quad	0x3fdff67b1c0010c7              # double 0.499419
	.quad	0x4019e1409a240315              # double 6.4699730000000004
	.quad	0x400236a50d6b228e              # double 2.2766820000000001
	.quad	0x4022ead9cf13ceea              # double 9.4586930000000002
	.quad	0x40035379fa97e133              # double 2.4157600000000001
	.quad	0x3ffc0303c07ee0b1              # double 1.7507360000000001
	.quad	0x402278c26138fffc              # double 9.2358580000000003
	.quad	0x4020dd8f4f93bc0a              # double 8.432734
	.quad	0x3ffad69c23b7952d              # double 1.677395
	.quad	0x400d04c9c90c4dec              # double 3.627338
	.quad	0x402008cc144028e5              # double 8.017182
	.quad	0x4021fa2c2374794f              # double 8.9886180000000007
	.quad	0x402117ad2999567e              # double 8.5462430000000005
	.quad	0x401f1939eadd590c              # double 7.774635
	.quad	0x4015068943e10060              # double 5.2563829999999996
	.quad	0x3fe62737110e453d              # double 0.69228699999999999
	.quad	0x400370364388ebcc              # double 2.4297909999999998
	.quad	0x401dba8b4bf8fcd6              # double 7.4321719999999996
	.quad	0x400f8cb20fb224ab              # double 3.9436990000000001
	.quad	0x400a31958969a0ae              # double 3.2742110000000002
	.quad	0x401a85e2046c764b              # double 6.6307450000000001
	.quad	0x3fff8f80dc33721d              # double 1.9725349999999999
	.quad	0x400d71ae2da554b9              # double 3.6805080000000001
	.quad	0x401cddcb1465e892              # double 7.2165949999999999
	.quad	0x40123a5b530ced4e              # double 4.5569889999999997
	.quad	0x4017cc1f42bb6673              # double 5.949338
	.quad	0x4018d4189374bc6a              # double 6.2071249999999996
	.quad	0x4010a7903211cb04              # double 4.1636360000000003
	.quad	0x401ab7a8d64d7f0f              # double 6.6793550000000002
	.quad	0x3fe0345069a4df48              # double 0.506386
	.quad	0x40027fa22706d506              # double 2.3123209999999998
	.quad	0x401a779a2834d270              # double 6.6167990000000003
	.quad	0x3ffa3b73083558a7              # double 1.6395139999999999
	.quad	0x3fdc3b81b64e0547              # double 0.44113200000000002
	.quad	0x401267952d234eba              # double 4.6011550000000003
	.quad	0x4017a50268900c52              # double 5.9111419999999999
	.quad	0x4023514dd72367e4              # double 9.6587969999999998
	.quad	0x400ec7d6f9767903              # double 3.8475779999999999
	.quad	0x4022d6f2e8c0485a              # double 9.4198219999999999
	.quad	0x3fd93eff1950331e              # double 0.39446999999999999
	.quad	0x4011c4bc27631b58              # double 4.4421239999999997
	.quad	0x400c1763e4abe6a3              # double 3.5114209999999999
	.quad	0x4007df98b71b8aa0              # double 2.984178
	.quad	0x40210232d2bb2357              # double 8.5042939999999998
	.quad	0x401b133bd9cae211              # double 6.768783
	.quad	0x40125814940bbb1f              # double 4.5860159999999999
	.quad	0x401948b652370479              # double 6.321008
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
