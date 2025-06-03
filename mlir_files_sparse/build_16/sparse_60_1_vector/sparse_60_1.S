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
	.quad	0x413fdd2e735cbff4              # double 2088238.4506339999
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
	.quad	4000                            # 0xfa0
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	4000                            # 0xfa0
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
	lui	a7, %hi(.L__constant_4000xindex)
	addi	a7, a7, %lo(.L__constant_4000xindex)
	lui	t0, %hi(.L__constant_4000xf64)
	addi	t0, t0, %lo(.L__constant_4000xf64)
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
	.quad	31                              # 0x1f
	.quad	70                              # 0x46
	.quad	112                             # 0x70
	.quad	150                             # 0x96
	.quad	186                             # 0xba
	.quad	229                             # 0xe5
	.quad	262                             # 0x106
	.quad	303                             # 0x12f
	.quad	340                             # 0x154
	.quad	385                             # 0x181
	.quad	420                             # 0x1a4
	.quad	459                             # 0x1cb
	.quad	497                             # 0x1f1
	.quad	532                             # 0x214
	.quad	573                             # 0x23d
	.quad	610                             # 0x262
	.quad	652                             # 0x28c
	.quad	682                             # 0x2aa
	.quad	719                             # 0x2cf
	.quad	758                             # 0x2f6
	.quad	799                             # 0x31f
	.quad	842                             # 0x34a
	.quad	880                             # 0x370
	.quad	918                             # 0x396
	.quad	961                             # 0x3c1
	.quad	1004                            # 0x3ec
	.quad	1043                            # 0x413
	.quad	1084                            # 0x43c
	.quad	1124                            # 0x464
	.quad	1169                            # 0x491
	.quad	1215                            # 0x4bf
	.quad	1258                            # 0x4ea
	.quad	1300                            # 0x514
	.quad	1343                            # 0x53f
	.quad	1392                            # 0x570
	.quad	1436                            # 0x59c
	.quad	1473                            # 0x5c1
	.quad	1503                            # 0x5df
	.quad	1547                            # 0x60b
	.quad	1588                            # 0x634
	.quad	1634                            # 0x662
	.quad	1674                            # 0x68a
	.quad	1718                            # 0x6b6
	.quad	1762                            # 0x6e2
	.quad	1798                            # 0x706
	.quad	1831                            # 0x727
	.quad	1871                            # 0x74f
	.quad	1917                            # 0x77d
	.quad	1952                            # 0x7a0
	.quad	1988                            # 0x7c4
	.quad	2027                            # 0x7eb
	.quad	2068                            # 0x814
	.quad	2113                            # 0x841
	.quad	2160                            # 0x870
	.quad	2198                            # 0x896
	.quad	2246                            # 0x8c6
	.quad	2290                            # 0x8f2
	.quad	2328                            # 0x918
	.quad	2367                            # 0x93f
	.quad	2398                            # 0x95e
	.quad	2450                            # 0x992
	.quad	2487                            # 0x9b7
	.quad	2527                            # 0x9df
	.quad	2574                            # 0xa0e
	.quad	2605                            # 0xa2d
	.quad	2650                            # 0xa5a
	.quad	2695                            # 0xa87
	.quad	2740                            # 0xab4
	.quad	2778                            # 0xada
	.quad	2819                            # 0xb03
	.quad	2851                            # 0xb23
	.quad	2895                            # 0xb4f
	.quad	2937                            # 0xb79
	.quad	2979                            # 0xba3
	.quad	3020                            # 0xbcc
	.quad	3066                            # 0xbfa
	.quad	3103                            # 0xc1f
	.quad	3143                            # 0xc47
	.quad	3180                            # 0xc6c
	.quad	3214                            # 0xc8e
	.quad	3242                            # 0xcaa
	.quad	3275                            # 0xccb
	.quad	3325                            # 0xcfd
	.quad	3359                            # 0xd1f
	.quad	3400                            # 0xd48
	.quad	3438                            # 0xd6e
	.quad	3468                            # 0xd8c
	.quad	3504                            # 0xdb0
	.quad	3542                            # 0xdd6
	.quad	3580                            # 0xdfc
	.quad	3618                            # 0xe22
	.quad	3654                            # 0xe46
	.quad	3697                            # 0xe71
	.quad	3742                            # 0xe9e
	.quad	3783                            # 0xec7
	.quad	3822                            # 0xeee
	.quad	3866                            # 0xf1a
	.quad	3909                            # 0xf45
	.quad	3954                            # 0xf72
	.quad	4000                            # 0xfa0
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4000xindex,@object # @__constant_4000xindex
	.p2align	6, 0x0
.L__constant_4000xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
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
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
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
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
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
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
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
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.size	.L__constant_4000xindex, 32000

	.type	.L__constant_4000xf64,@object   # @__constant_4000xf64
	.p2align	6, 0x0
.L__constant_4000xf64:
	.quad	0x400929070fbeb9e5              # double 3.1450330000000002
	.quad	0x402105c422036007              # double 8.5112620000000003
	.quad	0x4019d43e5321e604              # double 6.4572690000000001
	.quad	0x401719e40c8472c1              # double 5.7752840000000001
	.quad	0x3fd295e17e34b945              # double 0.29039799999999999
	.quad	0x400534f9c1f85d74              # double 2.6508669999999999
	.quad	0x40112197e5647347              # double 4.2828059999999999
	.quad	0x3ffa555e6bc621b8              # double 1.645842
	.quad	0x400cc7c393682731              # double 3.5975410000000001
	.quad	0x401ad7fd82773e25              # double 6.710928
	.quad	0x3feccda9003eea21              # double 0.90010500000000004
	.quad	0x40107f77af64063a              # double 4.1244800000000001
	.quad	0x40200571b0468449              # double 8.0106330000000003
	.quad	0x401720a0b1bbcf4f              # double 5.7818630000000004
	.quad	0x401d73c21187e7c0              # double 7.3630449999999996
	.quad	0x4020563d1cc100e7              # double 8.1684350000000006
	.quad	0x4009ab0531982880              # double 3.2085059999999999
	.quad	0x3ff5097e996312f5              # double 1.314818
	.quad	0x4013b28ae74f2f12              # double 4.9243579999999998
	.quad	0x4022f7570c564f98              # double 9.4830860000000001
	.quad	0x4015ff5cf2495e18              # double 5.4993780000000001
	.quad	0x3fd7ae4b018611fd              # double 0.37001299999999998
	.quad	0x4023f4d573647bab              # double 9.9781910000000006
	.quad	0x401ce678c0053e2d              # double 7.2250699999999997
	.quad	0x4015220bc382a130              # double 5.2832480000000004
	.quad	0x400e1527e5215769              # double 3.7603300000000002
	.quad	0x3ff452556d19dece              # double 1.2701009999999999
	.quad	0x4009e94c447c30d3              # double 3.238915
	.quad	0x40000f0f16f4384c              # double 2.0073530000000002
	.quad	0x402342d85dfa871a              # double 9.6305569999999996
	.quad	0x3ff501205bc01a37              # double 1.312775
	.quad	0x4004f2e05ccc89b1              # double 2.618592
	.quad	0x40199280f12c27a6              # double 6.3930699999999998
	.quad	0x4016d6f1dc50ce4f              # double 5.7099070000000003
	.quad	0x401a78f4f93bc0a0              # double 6.6181219999999996
	.quad	0x40198cad14a0a0f5              # double 6.3873790000000001
	.quad	0x401b15b78cc9a77e              # double 6.7712079999999997
	.quad	0x401d025f633ce63a              # double 7.2523169999999997
	.quad	0x3fb4b780346dc5d6              # double 0.080924999999999996
	.quad	0x4013acdfaca36199              # double 4.9188219999999996
	.quad	0x3feb7bfa4c61d862              # double 0.85888399999999998
	.quad	0x3ff9d67ec7863bef              # double 1.6148670000000001
	.quad	0x3fda7f5a5332acfb              # double 0.41402299999999997
	.quad	0x4006d097c80841ee              # double 2.8518520000000001
	.quad	0x4022e8c4588a04d1              # double 9.4546229999999997
	.quad	0x4016ed4f9c1f85d7              # double 5.7317489999999998
	.quad	0x4023bb5d67ba237d              # double 9.8659470000000002
	.quad	0x4018cf4adbc664d4              # double 6.2024340000000002
	.quad	0x3ff3fc1ce6c093d9              # double 1.2490509999999999
	.quad	0x4023ad4046412cf1              # double 9.838381
	.quad	0x4022c4299d883ba3              # double 9.3831299999999995
	.quad	0x4021c7bb2fec56d6              # double 8.8901000000000003
	.quad	0x4022646f15619115              # double 9.1961600000000008
	.quad	0x3fe386a098915bdd              # double 0.61018399999999995
	.quad	0x40112773e24febd1              # double 4.2885280000000003
	.quad	0x4023b755bccaf70a              # double 9.8580760000000005
	.quad	0x401da5c422036007              # double 7.4118810000000002
	.quad	0x402321d7ba6698bb              # double 9.5660989999999994
	.quad	0x4009761a1db877ab              # double 3.1826669999999999
	.quad	0x401c0787485e3da3              # double 7.007352
	.quad	0x401fbd955714b9cb              # double 7.9351399999999996
	.quad	0x40060ac1094a2b9d              # double 2.7552509999999999
	.quad	0x402098e1932d6ece              # double 8.2985959999999999
	.quad	0x401c32a023209678              # double 7.0494389999999996
	.quad	0x40213dc9c4da9004              # double 8.6206800000000001
	.quad	0x400ad57c4e2f37fc              # double 3.354241
	.quad	0x400ca639d5e4a383              # double 3.5811649999999999
	.quad	0x40214b26394face6              # double 8.6467759999999991
	.quad	0x4022fd6f112fd32c              # double 9.4949879999999993
	.quad	0x401b6981beb18117              # double 6.8530340000000001
	.quad	0x400bafb3311a543f              # double 3.460791
	.quad	0x40147a3ca7503b82              # double 5.1193720000000003
	.quad	0x401fec62e4d1a650              # double 7.9808459999999997
	.quad	0x3fd836b8f9b13166              # double 0.37834000000000001
	.quad	0x4000ad03d9a95422              # double 2.0844800000000001
	.quad	0x4015e00e27e0ef9a              # double 5.4688040000000004
	.quad	0x4020ea26c3b927d4              # double 8.4573269999999993
	.quad	0x3fa6034f3fd933e3              # double 0.042993999999999997
	.quad	0x402122c7325918a0              # double 8.5679259999999999
	.quad	0x400885ed4a1ad645              # double 3.065394
	.quad	0x40129c6a3bddfca0              # double 4.652749
	.quad	0x40127935b91f70df              # double 4.6183690000000004
	.quad	0x402039c1f85d744f              # double 8.1128079999999994
	.quad	0x40156ddd6e04c059              # double 5.3572899999999999
	.quad	0x4023aaba7b9170d6              # double 9.8334539999999997
	.quad	0x400e9113836a832c              # double 3.8208380000000002
	.quad	0x4023567d9988d2a2              # double 9.668927
	.quad	0x401d64a66559f6ec              # double 7.3482909999999997
	.quad	0x40149ce9a2c66905              # double 5.1532349999999996
	.quad	0x40044dfbd6a593a3              # double 2.5380780000000001
	.quad	0x40106f10ecb74de0              # double 4.1084630000000004
	.quad	0x401d7df86e3b46fe              # double 7.3730180000000001
	.quad	0x4011331876188b11              # double 4.2998979999999998
	.quad	0x4014c8d8665e02eb              # double 5.1961380000000004
	.quad	0x400351a543f1c758              # double 2.414866
	.quad	0x3ff4d510d38cda6e              # double 1.3020179999999999
	.quad	0x40123b6c7a7c9de0              # double 4.5580309999999997
	.quad	0x401237c393682731              # double 4.5544570000000002
	.quad	0x40189cc07aaef2c7              # double 6.1530779999999998
	.quad	0x401d8bd33d29563b              # double 7.3865480000000003
	.quad	0x400cea737110e454              # double 3.6144780000000001
	.quad	0x400afd9d3458cd21              # double 3.3738350000000001
	.quad	0x401df5f5f0b28523              # double 7.490196
	.quad	0x402322550870110a              # double 9.5670549999999999
	.quad	0x401795b078d92fb2              # double 5.8961810000000003
	.quad	0x4013402b841248d8              # double 4.8126660000000001
	.quad	0x402332a6f3f52fc2              # double 9.5989299999999993
	.quad	0x40178a1db877ab32              # double 5.8848789999999997
	.quad	0x402291d4d834091c              # double 9.2848269999999999
	.quad	0x40075636f3b213e4              # double 2.9170970000000001
	.quad	0x400703c9eecbfb16              # double 2.8768500000000001
	.quad	0x3fa49abb01c92ddc              # double 0.040243000000000001
	.quad	0x401007bbf93ff25e              # double 4.0075529999999997
	.quad	0x4013d321a2e7f6f5              # double 4.9561830000000002
	.quad	0x400245c70435efa6              # double 2.284071
	.quad	0x4006636c15d2d01c              # double 2.798546
	.quad	0x3fe430a6fc58ab93              # double 0.63093900000000003
	.quad	0x400117403dddb121              # double 2.1363530000000002
	.quad	0x402032656abde3fc              # double 8.0984300000000004
	.quad	0x400ca7c06e19b90f              # double 3.5819100000000001
	.quad	0x3ffb8dd50a88effe              # double 1.722127
	.quad	0x4013a82fd75e2047              # double 4.9142450000000002
	.quad	0x3fc75ffe6d58c8ef              # double 0.182617
	.quad	0x4011c57ff9b56324              # double 4.4428710000000002
	.quad	0x40199836eb4e9814              # double 6.3986470000000004
	.quad	0x401fa26138fffbce              # double 7.9085739999999998
	.quad	0x401033265add9c28              # double 4.0499510000000001
	.quad	0x4014a6e58a32f449              # double 5.1629849999999999
	.quad	0x40004cd31769a911              # double 2.037512
	.quad	0x4021afb634dad320              # double 8.8431870000000004
	.quad	0x400e4996b76709fa              # double 3.7859319999999999
	.quad	0x402356f60e0eb67c              # double 9.6698459999999997
	.quad	0x40152906cca2db62              # double 5.2900650000000002
	.quad	0x401ea44d013a92a3              # double 7.6604499999999999
	.quad	0x3ff13a4f8726d04e              # double 1.0767359999999999
	.quad	0x401166ab9b23dd55              # double 4.3502640000000001
	.quad	0x401b8102bc72e276              # double 6.8759870000000003
	.quad	0x4023103558a76102              # double 9.5316569999999992
	.quad	0x401500f0e90bc7b4              # double 5.2509189999999997
	.quad	0x3fcf31098d477bc0              # double 0.24368400000000001
	.quad	0x40172e38eb0318b9              # double 5.7951389999999998
	.quad	0x40142917d6b65a9b              # double 5.0401300000000004
	.quad	0x3fe4af2d7f950b95              # double 0.64638399999999996
	.quad	0x401f058537e2c55d              # double 7.7553910000000003
	.quad	0x4021666601bc98a2              # double 8.6999969999999998
	.quad	0x401bf38b8ae31d71              # double 6.9878369999999999
	.quad	0x3fe028f5c28f5c29              # double 0.505
	.quad	0x4023b911276fb092              # double 9.861459
	.quad	0x4017a00713f077cd              # double 5.9062770000000002
	.quad	0x400449edbf8b9baa              # double 2.536098
	.quad	0x401061cb89d6adf7              # double 4.0955029999999999
	.quad	0x3febd5da272862f6              # double 0.86985500000000004
	.quad	0x40180529bae46cfd              # double 6.0050420000000004
	.quad	0x3fedeab5807fed20              # double 0.93490099999999998
	.quad	0x40152028a1dfb939              # double 5.2814050000000003
	.quad	0x401ca52ce032db1f              # double 7.1613040000000003
	.quad	0x40180b14ec204f2b              # double 6.0108220000000001
	.quad	0x4009431487768167              # double 3.1577540000000002
	.quad	0x40209bb0a2ca9ac3              # double 8.3040819999999993
	.quad	0x3f9cb1cc96462802              # double 0.028021999999999998
	.quad	0x3ff8f4245f5ad96a              # double 1.5596049999999999
	.quad	0x401975e80bed740c              # double 6.3651429999999998
	.quad	0x400c9dfeb8d82342              # double 3.5771459999999999
	.quad	0x4018d6aceaaf35e3              # double 6.2096439999999999
	.quad	0x401a80efdc9c4da9              # double 6.625915
	.quad	0x4007b62e09fe8683              # double 2.9639549999999999
	.quad	0x3ffa99b3d07c84b6              # double 1.662525
	.quad	0x4020499fe43675de              # double 8.1437980000000003
	.quad	0x3fd558537e2c55c9              # double 0.33351599999999998
	.quad	0x4021d8813cab81f9              # double 8.9228609999999993
	.quad	0x401acbf2b239a390              # double 6.6991680000000002
	.quad	0x3fe335653c9abb02              # double 0.60026800000000002
	.quad	0x402272de43ed959a              # double 9.2243519999999997
	.quad	0x401d95379fa97e13              # double 7.3957199999999998
	.quad	0x40234ba365cb35f4              # double 9.6477310000000002
	.quad	0x401274e874c8ffb9              # double 4.6141680000000003
	.quad	0x4008e54046412cf1              # double 3.111939
	.quad	0x3fd9b7739f340d4e              # double 0.40182200000000001
	.quad	0x40235541b75a74c1              # double 9.6665170000000006
	.quad	0x400890cc35ce1826              # double 3.0707019999999998
	.quad	0x401a494317acc4f0              # double 6.5715450000000004
	.quad	0x4022dd1654d61b2a              # double 9.4318109999999997
	.quad	0x40122a597d49d7ba              # double 4.5413569999999996
	.quad	0x402251463cfb3312              # double 9.1587390000000006
	.quad	0x401802fe82517e78              # double 6.0029240000000001
	.quad	0x400c740cc78e9f6b              # double 3.5566650000000002
	.quad	0x401939435ac8a372              # double 6.3059209999999997
	.quad	0x4022c517c5ef62fa              # double 9.3849470000000004
	.quad	0x3fdea98676a7264a              # double 0.479097
	.quad	0x3fe25b8130164841              # double 0.57367000000000001
	.quad	0x4021b591ab8e8ea4              # double 8.8546270000000006
	.quad	0x40164ebe596c82e0              # double 5.5768979999999999
	.quad	0x3fec18a65492ff4c              # double 0.87800900000000003
	.quad	0x4021445da6a44418              # double 8.6335270000000008
	.quad	0x3fd58e820e629952              # double 0.33682299999999998
	.quad	0x401f6a7ef9db22d1              # double 7.854
	.quad	0x4022c88765ba6efc              # double 9.3916579999999996
	.quad	0x3fc6b6d00b45ae60              # double 0.177454
	.quad	0x401c914b599aa609              # double 7.1418889999999999
	.quad	0x4019b40b34e7685a              # double 6.4258240000000004
	.quad	0x4019d5ee136e71ce              # double 6.4589160000000003
	.quad	0x401a455714b9cb68              # double 6.5677149999999997
	.quad	0x4009dd3f5b5fa227              # double 3.233031
	.quad	0x3fb9e92923e5b856              # double 0.101214
	.quad	0x401aeeebf65dbfcf              # double 6.7333220000000003
	.quad	0x4020fb2d905c0336              # double 8.4905819999999999
	.quad	0x402106a465a57647              # double 8.5129730000000006
	.quad	0x401ca07dd4413554              # double 7.1567299999999996
	.quad	0x401ed9d8c6d612c7              # double 7.7127410000000002
	.quad	0x400966f71a7e3088              # double 3.1752760000000002
	.quad	0x400c56ff3ade2260              # double 3.5424790000000002
	.quad	0x3fe767253da72a7c              # double 0.73134100000000002
	.quad	0x401bc66c2acb85a5              # double 6.9437720000000001
	.quad	0x400166195464dc23              # double 2.1748530000000001
	.quad	0x401ba753a3ec02f3              # double 6.913405
	.quad	0x4023e3035bd512ec              # double 9.9433849999999992
	.quad	0x40078f9e3864cb5c              # double 2.9451260000000001
	.quad	0x40228cbcad9ad85e              # double 9.274877
	.quad	0x4018ec9afe1da7b1              # double 6.2310600000000003
	.quad	0x4020ba400fba8827              # double 8.3637700000000006
	.quad	0x402091550ca1cef2              # double 8.2838519999999995
	.quad	0x4001d579af1886e0              # double 2.2292360000000002
	.quad	0x40211fe4de3b8a1a              # double 8.5622930000000004
	.quad	0x402216e8af81626b              # double 9.0447439999999997
	.quad	0x40238d31550ca1cf              # double 9.775767
	.quad	0x3fe585143bf72713              # double 0.67249499999999995
	.quad	0x400ce5b4245f5ad9              # double 3.6121599999999998
	.quad	0x4017f923e5b8561d              # double 5.9933009999999998
	.quad	0x40060f8c64fdb09a              # double 2.7575919999999998
	.quad	0x400f18be7296f651              # double 3.8870819999999999
	.quad	0x4021166234a87e39              # double 8.5437180000000001
	.quad	0x4022075a1016ce79              # double 9.0143590000000007
	.quad	0x401d921ccd962068              # double 7.3926879999999997
	.quad	0x40015ca5bd944aa5              # double 2.1702379999999999
	.quad	0x4023c4dab191dde3              # double 9.8844809999999991
	.quad	0x401e2449129888f8              # double 7.5354349999999996
	.quad	0x401fd12dfd694ccb              # double 7.9542770000000002
	.quad	0x4015ce2f37fbefd0              # double 5.451352
	.quad	0x401bb09917939a7c              # double 6.9224589999999999
	.quad	0x400b6cab3edd8b61              # double 3.428061
	.quad	0x4010605f6ba0620b              # double 4.0941140000000003
	.quad	0x40133c853c148345              # double 4.8091020000000002
	.quad	0x4019a100e6afcce2              # double 6.4072300000000002
	.quad	0x3fa892ee84ad794a              # double 0.047995999999999997
	.quad	0x4022e7e1fc08fa7b              # double 9.4528960000000008
	.quad	0x4021c39f559b3d08              # double 8.8820750000000004
	.quad	0x4020230941c8216c              # double 8.0684299999999993
	.quad	0x40020e557de0d66f              # double 2.256999
	.quad	0x4006dd1a21ea3593              # double 2.8579599999999998
	.quad	0x3fe6ef177a7008a7              # double 0.71668600000000005
	.quad	0x4013fd4280ae1049              # double 4.9973239999999999
	.quad	0x40234a411c2a0232              # double 9.6450279999999999
	.quad	0x401a14c2f837b4a2              # double 6.5202749999999998
	.quad	0x40199eca25529fe0              # double 6.405068
	.quad	0x400908d10f51ac9b              # double 3.129305
	.quad	0x401cf61565c2d278              # double 7.240316
	.quad	0x40126e62131a8ef7              # double 4.6077959999999996
	.quad	0x40166d03d9a95422              # double 5.6064600000000002
	.quad	0x40008a033e78e193              # double 2.0673889999999999
	.quad	0x4016b19d66adb403              # double 5.6734520000000002
	.quad	0x401e594ccab3edd9              # double 7.5872070000000002
	.quad	0x3fc8b1ab0856e697              # double 0.19292200000000001
	.quad	0x400d714983d79075              # double 3.6803159999999999
	.quad	0x3fe8838e29f9ce8e              # double 0.76605900000000005
	.quad	0x4009f7fc7607c41a              # double 3.2460870000000002
	.quad	0x3ff9a4b87bdcf030              # double 1.6027149999999999
	.quad	0x400f4f9a06a6e32e              # double 3.9138679999999999
	.quad	0x3ff2f0691ea78af4              # double 1.183694
	.quad	0x401734d834091c08              # double 5.8016059999999996
	.quad	0x4010d4b599aa6091              # double 4.2077239999999998
	.quad	0x4013b3dc486ad2dd              # double 4.9256450000000003
	.quad	0x4015a2d38476f2a6              # double 5.4090100000000003
	.quad	0x3ff7d54866a11ec9              # double 1.489571
	.quad	0x4023f24f8726d04e              # double 9.9732629999999993
	.quad	0x40216985cee17a03              # double 8.706099
	.quad	0x401ce5935fc3b4f6              # double 7.2241949999999999
	.quad	0x3fe30aeb80ecfa6a              # double 0.59508300000000003
	.quad	0x3ff80a6fc58ab92c              # double 1.502548
	.quad	0x400b81a8262456f7              # double 3.4383089999999998
	.quad	0x401634e6e221c8a8              # double 5.5516620000000003
	.quad	0x3fa4666ec9e236c1              # double 0.039843999999999997
	.quad	0x3ffebeb5b2d4d402              # double 1.9215599999999999
	.quad	0x3fb330e7ff583a54              # double 0.074965000000000004
	.quad	0x3ff23bc1acde19fc              # double 1.139589
	.quad	0x4020cc0d6f544bb2              # double 8.3985400000000006
	.quad	0x401b91bc126a65cf              # double 6.8923189999999996
	.quad	0x40065613d31b9b67              # double 2.79203
	.quad	0x4013e07182235b4f              # double 4.9691830000000001
	.quad	0x4004b8f36694898f              # double 2.5903079999999998
	.quad	0x4015cce13f4a98ab              # double 5.4500780000000004
	.quad	0x3fb59b2c40d0aaa8              # double 0.084399000000000002
	.quad	0x400df1bcdbbe0158              # double 3.743036
	.quad	0x3fee5afaf8594291              # double 0.94860599999999995
	.quad	0x401ca86ca89fc6da              # double 7.1644769999999998
	.quad	0x3fb8d8dbcec84f90              # double 0.097059000000000006
	.quad	0x40116c44bf4cb189              # double 4.3557309999999996
	.quad	0x3fe1aad1d041cc53              # double 0.55210199999999998
	.quad	0x401d565881a15550              # double 7.3343220000000002
	.quad	0x401062dd7a99fa12              # double 4.0965480000000003
	.quad	0x4014588e79aae6c9              # double 5.086481
	.quad	0x4004338de6ddf00b              # double 2.5251730000000001
	.quad	0x3ff2be56473471f8              # double 1.1714690000000001
	.quad	0x400c5b9d7fd82774              # double 3.5447340000000001
	.quad	0x3ffc78800eae18ad              # double 1.7794190000000001
	.quad	0x400f11a4bdba0a52              # double 3.8836149999999998
	.quad	0x400b2606748e4756              # double 3.393567
	.quad	0x4022fb775b813016              # double 9.4911449999999995
	.quad	0x3fdbebe1650a45d4              # double 0.43627199999999999
	.quad	0x4010e1fc08fa7a85              # double 4.220688
	.quad	0x40088979e16d6dc2              # double 3.0671270000000002
	.quad	0x402366ac647778dd              # double 9.7005339999999993
	.quad	0x4014a1d3ed527e52              # double 5.1580349999999999
	.quad	0x401e754eb13dfb0d              # double 7.6145579999999997
	.quad	0x40129af42784a948              # double 4.6513220000000004
	.quad	0x4020aa958537e2c5              # double 8.3331719999999994
	.quad	0x402269f3a57eaa2a              # double 9.2069369999999999
	.quad	0x4020a2d9ad85dfa8              # double 8.3180669999999992
	.quad	0x40178af3e468cac5              # double 5.8856960000000003
	.quad	0x401c5a7bd48cb4af              # double 7.0883630000000002
	.quad	0x3fe63f1843c3a42f              # double 0.69520199999999999
	.quad	0x4015642f61ed5ae2              # double 5.3478370000000002
	.quad	0x401a92dba4d6e47e              # double 6.6434160000000002
	.quad	0x401de0d173fb7a5f              # double 7.4695489999999998
	.quad	0x400902f5989df117              # double 3.1264449999999999
	.quad	0x401fd3343fa2ad3f              # double 7.9562540000000003
	.quad	0x4020439d1b2e59b0              # double 8.1320580000000007
	.quad	0x4012e532e7b3d8e0              # double 4.723827
	.quad	0x400d858d5842b735              # double 3.6902110000000001
	.quad	0x3ffbca925fe974a3              # double 1.7369559999999999
	.quad	0x400e335b0bbf50e3              # double 3.7750759999999999
	.quad	0x40196ee4e26d4802              # double 6.358295
	.quad	0x3fd67164c729f59d              # double 0.35067100000000001
	.quad	0x40213d4da4ce8102              # double 8.6197330000000001
	.quad	0x401a9e90364388ec              # double 6.6548470000000002
	.quad	0x402116b484d76ab6              # double 8.5443460000000009
	.quad	0x4022e6c02f2f9874              # double 9.450685
	.quad	0x3ffe35b813016484              # double 1.888115
	.quad	0x401662ac753e707e              # double 5.5963609999999999
	.quad	0x400f2b56fb8f57f7              # double 3.8961619999999999
	.quad	0x4022b8157eed45e9              # double 9.3595389999999998
	.quad	0x401a1b56b8737974              # double 6.5266979999999997
	.quad	0x400d5d744f5d3565              # double 3.6706319999999999
	.quad	0x40060b1b36bd2b6f              # double 2.755423
	.quad	0x40200c5176145953              # double 8.0240589999999994
	.quad	0x40139b39192641b3              # double 4.9015849999999999
	.quad	0x4014ee2d6238da3c              # double 5.2325949999999999
	.quad	0x400e93929ed3953e              # double 3.822057
	.quad	0x4018c65061416378              # double 6.1936660000000003
	.quad	0x3fedaaf78feef5ed              # double 0.92712000000000006
	.quad	0x401c1f3a57eaa2a1              # double 7.0304960000000003
	.quad	0x4023cbd61f5be5da              # double 9.8981180000000002
	.quad	0x401f15942917507f              # double 7.7710730000000003
	.quad	0x4020ec29bf162ae5              # double 8.4612560000000006
	.quad	0x4007e485a0be5109              # double 2.986583
	.quad	0x4022db98201cd5fa              # double 9.4288950000000007
	.quad	0x40193ebedfa43fe6              # double 6.3112750000000002
	.quad	0x4022e9c087442c80              # double 9.4565470000000005
	.quad	0x401f4442c7fbacb4              # double 7.8166609999999999
	.quad	0x4018fd31337eb28e              # double 6.2472580000000004
	.quad	0x4012bf6512a94ff0              # double 4.686909
	.quad	0x4023d043e5321e60              # double 9.9067679999999996
	.quad	0x3ff2042528ae74f3              # double 1.126012
	.quad	0x400b049f51697f20              # double 3.3772570000000002
	.quad	0x4010a113836a832c              # double 4.1573010000000004
	.quad	0x400753b5393250b5              # double 2.9158729999999999
	.quad	0x4019511947cfa26a              # double 6.3291979999999999
	.quad	0x400f75cb790fb656              # double 3.9325169999999998
	.quad	0x402044a1272c94b4              # double 8.1340420000000008
	.quad	0x40180bb23571d1d4              # double 6.0114219999999996
	.quad	0x4022ae2584f4c6e7              # double 9.3401300000000003
	.quad	0x401c5e2eb1c432ca              # double 7.0919749999999997
	.quad	0x4014fc7e28240b78              # double 5.246575
	.quad	0x3ff5247dc37a3db4              # double 1.3214090000000001
	.quad	0x400cf30489d27c39              # double 3.6186609999999999
	.quad	0x4007bfc86cebbba5              # double 2.9686439999999998
	.quad	0x3fc2111ada76d97b              # double 0.14114699999999999
	.quad	0x401da0b5ed8d36b5              # double 7.4069440000000002
	.quad	0x40204de9185cee18              # double 8.1521690000000007
	.quad	0x401762f9873ffac2              # double 5.8466550000000002
	.quad	0x4020f3cec84f8f8a              # double 8.4761869999999995
	.quad	0x401d73df2a9d627c              # double 7.363156
	.quad	0x4022a78a8f3a9b07              # double 9.3272290000000009
	.quad	0x40191b9d7fd82774              # double 6.2769680000000001
	.quad	0x401f0b00bcbe61d0              # double 7.760745
	.quad	0x402171c4b90214ad              # double 8.7222039999999996
	.quad	0x3fefa3443d46b26c              # double 0.98868
	.quad	0x4011c634549b62c7              # double 4.4435589999999996
	.quad	0x401c2f6e3f78bbd4              # double 7.0463190000000004
	.quad	0x3fe17d71b0468449              # double 0.54656300000000002
	.quad	0x401d27e56473471f              # double 7.2889609999999996
	.quad	0x40129ab81f969e3d              # double 4.6510930000000004
	.quad	0x3fe1355ac03ff690              # double 0.53776299999999999
	.quad	0x402036cb5350092d              # double 8.1070200000000003
	.quad	0x4001f1b823c85c25              # double 2.2430270000000001
	.quad	0x402094b838c111ae              # double 8.2904680000000006
	.quad	0x40223f08ede54b49              # double 9.1231150000000003
	.quad	0x3ff9122b7baecd08              # double 1.5669360000000001
	.quad	0x40162c7b45f17bd9              # double 5.5434390000000002
	.quad	0x401ec4d338f79852              # double 7.6922119999999996
	.quad	0x400ea82c6ef3d3a2              # double 3.8321160000000001
	.quad	0x3fe7a2339c0ebee0              # double 0.73855000000000003
	.quad	0x4020b3be22e5de16              # double 8.3510600000000004
	.quad	0x401f0f3d7d3910c3              # double 7.7648830000000002
	.quad	0x4014b877ee4e26d5              # double 5.1801450000000004
	.quad	0x40206906ab14ec20              # double 8.2051289999999995
	.quad	0x4014f0cb6c7a7c9e              # double 5.2351510000000001
	.quad	0x401c7267c6b8b695              # double 7.1117239999999997
	.quad	0x401021950331e3a8              # double 4.0327950000000001
	.quad	0x40232e70196d8f50              # double 9.5906990000000008
	.quad	0x402151ed3953dea4              # double 8.6600129999999992
	.quad	0x4005b1fbc5de9c02              # double 2.7119059999999999
	.quad	0x4000196638433d6c              # double 2.0124019999999998
	.quad	0x4003aebc408d8ec9              # double 2.4603199999999998
	.quad	0x401ff85a921ccd96              # double 7.9925329999999999
	.quad	0x401967d6733ebbfd              # double 6.3514039999999996
	.quad	0x3feaf6f4be835dee              # double 0.84264600000000001
	.quad	0x4012f32d2bb23572              # double 4.7374770000000002
	.quad	0x401732e7f6f4be83              # double 5.7997129999999997
	.quad	0x4023aec0724b76f7              # double 9.8413120000000002
	.quad	0x4006f781c714fce7              # double 2.8708529999999999
	.quad	0x401812e6ea854478              # double 6.018459
	.quad	0x40221333daf8df7a              # double 9.0375049999999995
	.quad	0x40120ab042528ae7              # double 4.5104379999999997
	.quad	0x4021ecd26fa3fcca              # double 8.9625430000000001
	.quad	0x40088c48adeebb34              # double 3.0684979999999999
	.quad	0x402091240746455f              # double 8.2834780000000006
	.quad	0x401d1dc8754f3776              # double 7.2790850000000002
	.quad	0x401043c89f40a287              # double 4.0661949999999996
	.quad	0x40123656abde3fbc              # double 4.5530650000000001
	.quad	0x3feba6fe718a86d7              # double 0.86413499999999999
	.quad	0x3feccaab8a5ce5b4              # double 0.89973999999999998
	.quad	0x3fd9a89331a08bfc              # double 0.40091399999999999
	.quad	0x3ffc4470a808c826              # double 1.7667090000000001
	.quad	0x4018053ef6b5d463              # double 6.0051230000000002
	.quad	0x4017280dc33721d5              # double 5.7891149999999998
	.quad	0x40225d931ca7d673              # double 9.1827629999999996
	.quad	0x4017f43aa79bbadc              # double 5.988505
	.quad	0x40106aaac1094a2c              # double 4.1041670000000003
	.quad	0x4010be136e71cda3              # double 4.1856210000000003
	.quad	0x400f3f37329c347f              # double 3.9058670000000002
	.quad	0x4018eece13f4a98b              # double 6.2332080000000003
	.quad	0x400e4886162f166e              # double 3.785412
	.quad	0x400e407a28bb0a2d              # double 3.7814830000000001
	.quad	0x4023bf72b4528284              # double 9.8739220000000003
	.quad	0x4020434cc2507208              # double 8.1314449999999994
	.quad	0x401b31f8a0902de0              # double 6.7988
	.quad	0x401945d35653c9ac              # double 6.3181890000000003
	.quad	0x4022d84102ff8ec1              # double 9.422371
	.quad	0x4015c1f46ed245b3              # double 5.4394090000000004
	.quad	0x401b978140dd3fe2              # double 6.8979540000000004
	.quad	0x3ff2d5b24e9c4546              # double 1.1771720000000001
	.quad	0x400c5340d4dc65c7              # double 3.540651
	.quad	0x4021027589efd86b              # double 8.5048030000000008
	.quad	0x40077f3d7d3910c3              # double 2.9371290000000001
	.quad	0x402393ca31e7d999              # double 9.7886520000000007
	.quad	0x401b51bc126a65cf              # double 6.8298189999999996
	.quad	0x3ff4f8cb8e086bdf              # double 1.3107409999999999
	.quad	0x401a07fd3f5b5fa2              # double 6.5078019999999999
	.quad	0x401d6dc65c70435f              # double 7.357202
	.quad	0x3fd7eb4a66559f6f              # double 0.37373600000000001
	.quad	0x4013611b1d92b7fe              # double 4.84483
	.quad	0x3fe63269df97aaac              # double 0.69365399999999999
	.quad	0x401a8ba0e8427419              # double 6.6363560000000001
	.quad	0x3ff268cdea033e79              # double 1.150587
	.quad	0x3ffc9e68a0d349bf              # double 1.7886740000000001
	.quad	0x402318a137f38c54              # double 9.5481049999999996
	.quad	0x4021130e7ff583a5              # double 8.5372199999999996
	.quad	0x4016901322f27350              # double 5.6406980000000004
	.quad	0x40149bc5de9c022a              # double 5.1521220000000003
	.quad	0x401e637d1fe64f55              # double 7.5971570000000001
	.quad	0x40233f85b5b70692              # double 9.6240670000000001
	.quad	0x400a39df548ecd8e              # double 3.2782580000000001
	.quad	0x402276e19b90ea9e              # double 9.2321899999999992
	.quad	0x400d45b0ff10ecb7              # double 3.6590289999999999
	.quad	0x3fec86d71f36262d              # double 0.89146000000000003
	.quad	0x4010cf9378ee2867              # double 4.2027109999999999
	.quad	0x3fff18b60f1b25f6              # double 1.943533
	.quad	0x401fa91d14e3bcd3              # double 7.9151499999999996
	.quad	0x4023d02b62845996              # double 9.9065809999999992
	.quad	0x400acc56d5cfaace              # double 3.3497750000000002
	.quad	0x400fba7221858bc6              # double 3.9660380000000002
	.quad	0x400e6a37ac3eb7cc              # double 3.8018640000000001
	.quad	0x4021791d57ff9b56              # double 8.7365519999999997
	.quad	0x40028199780baa58              # double 2.3132809999999999
	.quad	0x40158ed959a30985              # double 5.3895010000000001
	.quad	0x401da7ccc0379314              # double 7.4138669999999998
	.quad	0x3ff15711947cfa27              # double 1.0837570000000001
	.quad	0x401e3fbeb9e492bc              # double 7.5622509999999998
	.quad	0x4022ac72c0e7bc3c              # double 9.3368129999999993
	.quad	0x4023ee1198aeb80f              # double 9.9649780000000003
	.quad	0x40059a5ebb7739f3              # double 2.7003759999999999
	.quad	0x40205897e996312f              # double 8.1730339999999995
	.quad	0x40016c343b70ef56              # double 2.1778339999999998
	.quad	0x40107b6dca07f66f              # double 4.1205360000000004
	.quad	0x3ff32178f68be2f8              # double 1.1956720000000001
	.quad	0x4019d0b88ca3e7d1              # double 6.4538289999999998
	.quad	0x4001b81733226c3c              # double 2.2148880000000002
	.quad	0x40128160956c0d6f              # double 4.6263449999999997
	.quad	0x401337d028a1dfb9              # double 4.8045049999999998
	.quad	0x401760edc3bd5992              # double 5.8446569999999998
	.quad	0x40132a2f05a708ee              # double 4.7911950000000001
	.quad	0x401ffe019b0ab2e1              # double 7.9980529999999996
	.quad	0x3ff08969a0ad8a11              # double 1.0335479999999999
	.quad	0x4009451116a8b8f1              # double 3.1587239999999999
	.quad	0x401faff8a8f3a9b0              # double 7.9218469999999996
	.quad	0x40068b0d0edc3bd6              # double 2.8178960000000002
	.quad	0x401dd67839cd8128              # double 7.4594430000000002
	.quad	0x3f8810e8858ff759              # double 0.011750999999999999
	.quad	0x401a3eca25529fe0              # double 6.561318
	.quad	0x40048d05f2884838              # double 2.5688589999999998
	.quad	0x4017a8244e93e1ca              # double 5.9142010000000003
	.quad	0x4021c380cb6c7a7d              # double 8.8818420000000007
	.quad	0x401102a2c2374795              # double 4.2525740000000001
	.quad	0x401afee73e681a9c              # double 6.7489290000000004
	.quad	0x4014e4ef88b97785              # double 5.2235699999999996
	.quad	0x401de1f4b1ee2435              # double 7.4706599999999996
	.quad	0x3ff7c5d206c8711d              # double 1.4857959999999999
	.quad	0x401d9b3fe9fadafd              # double 7.4016109999999999
	.quad	0x401f28a32f44912a              # double 7.7896850000000004
	.quad	0x40059bb4916ca46e              # double 2.701028
	.quad	0x4006540e5a35d67c              # double 2.7910430000000002
	.quad	0x4012f7ef9db22d0e              # double 4.7421249999999997
	.quad	0x40179c98a222d517              # double 5.9029259999999999
	.quad	0x3fd345f9df548ece              # double 0.30114600000000002
	.quad	0x40165fe8ab4fa483              # double 5.593661
	.quad	0x4014b0257c914b16              # double 5.1720179999999996
	.quad	0x4020480b242070b9              # double 8.1407100000000003
	.quad	0x3ff077e4de3b8a1a              # double 1.029271
	.quad	0x3fe0b9a38fbca106              # double 0.52266100000000004
	.quad	0x401ca48e4755ffe7              # double 7.1606990000000001
	.quad	0x401780abb44e50c6              # double 5.8756550000000001
	.quad	0x4014666fd651b0cd              # double 5.1000360000000002
	.quad	0x40071756c93a7115              # double 2.886396
	.quad	0x3f8c9a34ca0c282c              # double 0.013965999999999999
	.quad	0x4023664d5d80e497              # double 9.6998090000000001
	.quad	0x402125cb35f3d7d4              # double 8.5738160000000007
	.quad	0x400df8db4890928a              # double 3.7465120000000001
	.quad	0x401f592d1287c201              # double 7.8370860000000002
	.quad	0x401e063a5c1c6089              # double 7.5060820000000001
	.quad	0x3ffac59210385c68              # double 1.673235
	.quad	0x401ab7aeddce7cd0              # double 6.6793779999999998
	.quad	0x3ff699ad85dfa872              # double 1.4125190000000001
	.quad	0x3ff3a7d45a5fc7e7              # double 1.2284740000000001
	.quad	0x3fb153ef6b5d462c              # double 0.067686999999999997
	.quad	0x4006dfab10ba6267              # double 2.859213
	.quad	0x40127e0fc2eba27b              # double 4.6231070000000001
	.quad	0x3ffac3ba3443d46b              # double 1.672785
	.quad	0x40203307d0aed99d              # double 8.0996690000000005
	.quad	0x401d7f0b6b6e0d24              # double 7.3740670000000001
	.quad	0x4015ec9ea9a3d2d8              # double 5.4810739999999996
	.quad	0x40065ad96a6a0126              # double 2.7943600000000002
	.quad	0x40120253da72a7bd              # double 4.5022729999999997
	.quad	0x401281d755bccaf7              # double 4.626798
	.quad	0x401deb5c7cd898b3              # double 7.4798450000000001
	.quad	0x400c4889c1b54196              # double 3.5354190000000001
	.quad	0x401a7fa15db3397e              # double 6.6246390000000002
	.quad	0x4011d4bba12b5e53              # double 4.4577470000000003
	.quad	0x401f40ee49f51698              # double 7.813409
	.quad	0x401f845803cd141a              # double 7.8792419999999996
	.quad	0x4015402ea960b6fa              # double 5.312678
	.quad	0x40216984e3ffef39              # double 8.7060919999999999
	.quad	0x401914a3400b88ca              # double 6.2701539999999998
	.quad	0x3ff8d4940bbb1f25              # double 1.5518989999999999
	.quad	0x40082d2c386d2ed8              # double 3.0220570000000002
	.quad	0x401f3fa5093964a6              # double 7.8121530000000003
	.quad	0x40186eb9a176ddad              # double 6.1081300000000001
	.quad	0x40141b1fab96f21f              # double 5.0264879999999996
	.quad	0x401636aa087ca644              # double 5.5533830000000002
	.quad	0x401cf78bbd380453              # double 7.2417439999999997
	.quad	0x3ff6117c5ef62f9d              # double 1.3792690000000001
	.quad	0x40212da426bb55ac              # double 8.5891429999999999
	.quad	0x401e0399b2c40d0b              # double 7.5035160000000002
	.quad	0x40201894c447c30d              # double 8.0480099999999997
	.quad	0x4023e4c037931444              # double 9.9467789999999993
	.quad	0x4013b130164840e1              # double 4.9230349999999996
	.quad	0x40182886162f166e              # double 6.039574
	.quad	0x401f6ca1cef240fb              # double 7.8560860000000003
	.quad	0x3fa12513b5bf6a0e              # double 0.033486000000000002
	.quad	0x401c837110e453d2              # double 7.1283609999999999
	.quad	0x3ff75fc4c165907e              # double 1.4608810000000001
	.quad	0x401a49b2c40d0aaa              # double 6.5719709999999996
	.quad	0x401def6b1a2a4db1              # double 7.4838069999999996
	.quad	0x3fe71626b2f23034              # double 0.72145400000000004
	.quad	0x4022d9e30014f8b6              # double 9.4255600000000008
	.quad	0x4022fc4cdfaca362              # double 9.4927740000000007
	.quad	0x400024e9c4545847              # double 2.018024
	.quad	0x402189ebe9c88616              # double 8.7693779999999997
	.quad	0x401dfa1016ce789e              # double 7.4942019999999996
	.quad	0x4006dccd96206855              # double 2.8578139999999999
	.quad	0x3ff2c090b417ca21              # double 1.172013
	.quad	0x401491a08bfc2225              # double 5.1422140000000001
	.quad	0x4009525a250f8402              # double 3.1652110000000002
	.quad	0x3fd2222d5171e29b              # double 0.28333599999999998
	.quad	0x40023cb35f3d7d39              # double 2.279639
	.quad	0x3fe47b1e18efbb0e              # double 0.64002899999999996
	.quad	0x4015afe1975f2cb6              # double 5.4217589999999998
	.quad	0x3fedac96cc5fbf83              # double 0.92731799999999998
	.quad	0x40192e696a26e547              # double 6.2953239999999999
	.quad	0x401bce4da09cc31a              # double 6.9514680000000002
	.quad	0x3fd069b5a63f9a4a              # double 0.25645200000000001
	.quad	0x40224664d3bf2f55              # double 9.1374879999999994
	.quad	0x3fd61e8e60807358              # double 0.34561500000000001
	.quad	0x4013d7fdc5931ca8              # double 4.9609290000000001
	.quad	0x40194b8f9b13165d              # double 6.3237899999999998
	.quad	0x3fdf026cc1ca3a4b              # double 0.48452299999999998
	.quad	0x40152152f3c2dadc              # double 5.2825430000000004
	.quad	0x4005332d6ece13f5              # double 2.6499890000000001
	.quad	0x401623033a4723ab              # double 5.534192
	.quad	0x4022913469941850              # double 9.2836029999999994
	.quad	0x4011d99dcb5781c7              # double 4.4625159999999999
	.quad	0x3fb2131a8ef77f28              # double 0.070604
	.quad	0x3ff8b775b8130165              # double 1.5447900000000001
	.quad	0x3fd9deb0fadf2ecf              # double 0.40421699999999999
	.quad	0x40217cd9c6b0531a              # double 8.7438490000000009
	.quad	0x3ff4df2cb641700d              # double 1.304486
	.quad	0x401f96a098915bdd              # double 7.8970969999999995
	.quad	0x3ff53994e1a3f466              # double 1.3265579999999999
	.quad	0x4022a07aaef2c732              # double 9.3134359999999994
	.quad	0x3ffe944241c3efae              # double 1.9111959999999999
	.quad	0x40080c46950fc71d              # double 3.0059939999999998
	.quad	0x401bd4a2b9d3cbc5              # double 6.9576520000000004
	.quad	0x3fffc167a95c853c              # double 1.984718
	.quad	0x40030094e5d5b24f              # double 2.3752840000000002
	.quad	0x40093fc19c17225b              # double 3.1561309999999998
	.quad	0x3ff4feec39799e52              # double 1.3122370000000001
	.quad	0x401a66c00da1a933              # double 6.6003420000000004
	.quad	0x4002e7d3d4280ae1              # double 2.363197
	.quad	0x40204164840e171a              # double 8.1277200000000001
	.quad	0x40155adeebb341e1              # double 5.3387409999999997
	.quad	0x400c24a7b4e54f7b              # double 3.5178980000000002
	.quad	0x40167c3265add9c2              # double 5.6212859999999996
	.quad	0x401a609b30728e93              # double 6.5943420000000001
	.quad	0x3ff3f2617c1bda51              # double 1.246675
	.quad	0x401324445aa2e3c5              # double 4.7854169999999998
	.quad	0x401d56d0d49949e9              # double 7.3347810000000004
	.quad	0x3ff76328f9f44d44              # double 1.4617089999999999
	.quad	0x40226c302b40f66a              # double 9.2113049999999994
	.quad	0x401ad07746887a8d              # double 6.7035799999999997
	.quad	0x4016c801f75104d5              # double 5.6953199999999997
	.quad	0x400ec04102ff8ec1              # double 3.843874
	.quad	0x4012309dcf893faf              # double 4.5474769999999998
	.quad	0x4018c358afc47e4a              # double 6.1907680000000003
	.quad	0x40121a5f84cad57c              # double 4.5257550000000002
	.quad	0x4016b14a90470a81              # double 5.6731360000000004
	.quad	0x4022318e325d4a5e              # double 9.0967880000000001
	.quad	0x4020af01754b05b8              # double 8.3418080000000003
	.quad	0x4005cb039ef0f16f              # double 2.7241279999999999
	.quad	0x40192e1fc08fa7a8              # double 6.2950429999999997
	.quad	0x400dbba1b1960fa1              # double 3.7166169999999998
	.quad	0x40229d8298cc1440              # double 9.3076369999999997
	.quad	0x40208a81dc0db270              # double 8.2705219999999997
	.quad	0x4023a7e5c91d14e4              # double 9.8279250000000004
	.quad	0x400040a84be40421              # double 2.031571
	.quad	0x4015f4d44567125e              # double 5.4890910000000002
	.quad	0x401d7a25529fe005              # double 7.3692830000000002
	.quad	0x400ce4816f0068dc              # double 3.6115750000000002
	.quad	0x3fc87bbb62413db8              # double 0.191276
	.quad	0x401d3c67168f8e7e              # double 7.3089870000000001
	.quad	0x4019792641b328b7              # double 6.3683100000000001
	.quad	0x3fe2b0941c8216c6              # double 0.58405499999999999
	.quad	0x3ff23d35eb7457c1              # double 1.1399440000000001
	.quad	0x40142efe93187619              # double 5.0458930000000004
	.quad	0x400e81e68a0d349c              # double 3.813428
	.quad	0x40192d38476f2a5a              # double 6.2941599999999998
	.quad	0x401876cb10342aaa              # double 6.116009
	.quad	0x3ff98ad362e90364              # double 1.596393
	.quad	0x3fef52c7b890d5a6              # double 0.97885500000000003
	.quad	0x401d18dc55000c95              # double 7.2742779999999998
	.quad	0x3ffc2afff36ac647              # double 1.7604979999999999
	.quad	0x400767a311e85fd0              # double 2.9256039999999999
	.quad	0x3fd9b88ca3e7d135              # double 0.401889
	.quad	0x3f9463065f9591cd              # double 0.019909
	.quad	0x3ff59f5ad96a6a01              # double 1.351405
	.quad	0x3ffcec2480e8c8ac              # double 1.807652
	.quad	0x3ffc45d41fa76534              # double 1.767048
	.quad	0x401d9937d1fe64f5              # double 7.3996269999999997
	.quad	0x401ecdf612407464              # double 7.7011339999999997
	.quad	0x4009917f84449dbf              # double 3.1960440000000001
	.quad	0x400131697f1f9ad0              # double 2.149127
	.quad	0x4012ff9b56323bbc              # double 4.7496159999999996
	.quad	0x40034111ada76d98              # double 2.4067720000000001
	.quad	0x40120d8383ad9f0a              # double 4.5131969999999999
	.quad	0x3fe052999567dbb1              # double 0.51008299999999995
	.quad	0x40236a8f3a9b0681              # double 9.7081239999999997
	.quad	0x4019e2de00d1b717              # double 6.4715499999999997
	.quad	0x4009e8650e779208              # double 3.2384740000000001
	.quad	0x400a0681a9b8cb8e              # double 3.253177
	.quad	0x401f1c39bcba3012              # double 7.7775639999999999
	.quad	0x400db9ab6d00b45b              # double 3.715659
	.quad	0x40148a80064a9cdc              # double 5.1352539999999998
	.quad	0x401d4cf2cf95d4e9              # double 7.325145
	.quad	0x4018e5ca29845dc8              # double 6.2244039999999998
	.quad	0x4021d40cc78e9f6b              # double 8.9141600000000007
	.quad	0x400aa0902de00d1b              # double 3.3283999999999998
	.quad	0x400b2861e92923e6              # double 3.3947180000000001
	.quad	0x4013578e5c4eb570              # double 4.8355040000000002
	.quad	0x4011d40a2877ee4e              # double 4.4570699999999999
	.quad	0x3ff10969a0ad8a11              # double 1.0647979999999999
	.quad	0x400ffc3f811f4f51              # double 3.9981680000000002
	.quad	0x40053ebfa8f7db6e              # double 2.6556389999999999
	.quad	0x400cf6a1e81cb46c              # double 3.6204260000000001
	.quad	0x401017507e9d94d1              # double 4.0227680000000001
	.quad	0x3fff4c814d72799a              # double 1.956178
	.quad	0x4021a5c725c3dee8              # double 8.8237850000000009
	.quad	0x40219bfa0945f9df              # double 8.8046419999999994
	.quad	0x3fe9ea6c1a048e04              # double 0.80986599999999997
	.quad	0x40003404ea4a8c15              # double 2.0253999999999999
	.quad	0x401fc3d68405b39e              # double 7.9412479999999999
	.quad	0x4020173387160957              # double 8.0453150000000004
	.quad	0x401335f633ce63a6              # double 4.8026970000000002
	.quad	0x401cdcba30121683              # double 7.215554
	.quad	0x4017a9b0ee49f517              # double 5.9157140000000004
	.quad	0x40115f7caa7589f0              # double 4.3432490000000001
	.quad	0x40217e93c03bc4d2              # double 8.7472209999999997
	.quad	0x3ff611f926c7eae6              # double 1.3793880000000001
	.quad	0x4014cf6ba0620ab7              # double 5.2025589999999999
	.quad	0x4014d792d1287c20              # double 5.210521
	.quad	0x400ce473cd573648              # double 3.6115490000000001
	.quad	0x400885c810a569b1              # double 3.0653229999999998
	.quad	0x3feb899bf5946c33              # double 0.86054799999999998
	.quad	0x401912d905c03361              # double 6.2684059999999997
	.quad	0x4016f60a2014727e              # double 5.7402730000000002
	.quad	0x4022db63f572de44              # double 9.4284970000000001
	.quad	0x400ed616f86a0989              # double 3.854536
	.quad	0x401b90dfdef8487c              # double 6.8914790000000004
	.quad	0x401bfa7935760392              # double 6.9946029999999997
	.quad	0x402369652bd3c361              # double 9.7058499999999998
	.quad	0x4023786c8711d799              # double 9.7352030000000002
	.quad	0x4015bddd2ae8e1d6              # double 5.4354139999999997
	.quad	0x3ff8a5abc0e38a7e              # double 1.5404469999999999
	.quad	0x3ffd343632c1f42c              # double 1.8252470000000001
	.quad	0x4004b804d9839475              # double 2.5898530000000002
	.quad	0x40166b2d905c0336              # double 5.6046659999999999
	.quad	0x3fec6b11c6d1e109              # double 0.88807000000000003
	.quad	0x401bb13e3e29307b              # double 6.923089
	.quad	0x40090808c8259e1f              # double 3.1289229999999999
	.quad	0x401fd36d655e28aa              # double 7.9564719999999998
	.quad	0x402145c37a3db3c0              # double 8.6362570000000005
	.quad	0x3ff670d9513f8db5              # double 1.4025510000000001
	.quad	0x401af809d495182b              # double 6.7422250000000004
	.quad	0x400640e7bc3c5bd1              # double 2.7816920000000001
	.quad	0x4010a432441fea81              # double 4.1603479999999999
	.quad	0x401ab02363b25700              # double 6.6720100000000002
	.quad	0x401d47c914b167ec              # double 7.3201029999999996
	.quad	0x402104db7ae5796c              # double 8.509487
	.quad	0x400f2d0678c0053e              # double 3.8969849999999999
	.quad	0x40050d6a161e4f76              # double 2.6315499999999998
	.quad	0x402199e7d9988d2a              # double 8.8005969999999998
	.quad	0x3fec5e050374ff86              # double 0.88647699999999996
	.quad	0x4022e463497b7415              # double 9.4460700000000006
	.quad	0x4010c0092ccf6be3              # double 4.1875349999999996
	.quad	0x402057a0945f9df5              # double 8.1711469999999995
	.quad	0x40100f90539fba45              # double 4.015199
	.quad	0x40165ab2e1693c04              # double 5.5885730000000002
	.quad	0x4020eb9b456b441c              # double 8.4601690000000004
	.quad	0x40136916872b020c              # double 4.8526249999999997
	.quad	0x400f60f0a5efe932              # double 3.9223340000000002
	.quad	0x401ec09741d084e8              # double 7.6880769999999998
	.quad	0x4021a21144cbe1eb              # double 8.8165379999999995
	.quad	0x4010659c065b63d4              # double 4.0992280000000001
	.quad	0x401d7dc1e7967caf              # double 7.3728100000000003
	.quad	0x401ffb1fab96f21f              # double 7.9952379999999996
	.quad	0x3fe86a4441787054              # double 0.76297199999999998
	.quad	0x3ff45f969e3c9689              # double 1.2733369999999999
	.quad	0x40231e9878316a05              # double 9.5597569999999993
	.quad	0x3fb132c625e99e95              # double 0.067181000000000005
	.quad	0x401937e77d523b36              # double 6.3045939999999998
	.quad	0x401c6a57214f0521              # double 7.1038480000000002
	.quad	0x4010107852f7f499              # double 4.0160840000000002
	.quad	0x400c60fb224aada3              # double 3.5473539999999999
	.quad	0x400a251c9f72f76e              # double 3.2681209999999998
	.quad	0x3ff996451b93037d              # double 1.5991869999999999
	.quad	0x3fb1c33721d53cde              # double 0.069385000000000002
	.quad	0x400f7897204295a7              # double 3.9338820000000001
	.quad	0x4021bba01eeed890              # double 8.8664559999999994
	.quad	0x401929285a921cce              # double 6.2901930000000004
	.quad	0x401719b90ea9e6ef              # double 5.7751200000000003
	.quad	0x3fd5f284167a95c8              # double 0.34292699999999998
	.quad	0x401040db2702a348              # double 4.0633359999999996
	.quad	0x4011b29d8409e55c              # double 4.4244289999999999
	.quad	0x3ffc27ad8e432442              # double 1.759687
	.quad	0x4012b1f36262cba7              # double 4.6737799999999998
	.quad	0x4020da9f383f0baf              # double 8.4269960000000008
	.quad	0x400557a355043e53              # double 2.6677919999999999
	.quad	0x40201a074ea8da7f              # double 8.0508369999999996
	.quad	0x4013bfd651b0ccbc              # double 4.937341
	.quad	0x401100f9096bb98c              # double 4.2509499999999996
	.quad	0x40236f822bbecaac              # double 9.7177900000000008
	.quad	0x4012e957470eb24a              # double 4.7278719999999996
	.quad	0x3fda6e7a311e85fd              # double 0.412993
	.quad	0x401e96b65a9a8049              # double 7.6471799999999996
	.quad	0x3ff8892ccf6be37e              # double 1.53349
	.quad	0x401898bb0a2ca9ac              # double 6.1491509999999998
	.quad	0x401f4ee6fb4c3c19              # double 7.8270530000000002
	.quad	0x400bf3c254a3c643              # double 3.4940229999999999
	.quad	0x401799ccfaeff5c7              # double 5.9001960000000002
	.quad	0x4021558bc59b8024              # double 8.6670820000000006
	.quad	0x401ca1b152f3c2db              # double 7.1579030000000001
	.quad	0x3fe0b165d3996fa8              # double 0.52165499999999998
	.quad	0x400246e978d4fdf4              # double 2.2846250000000001
	.quad	0x3ff089795b35b0bc              # double 1.033563
	.quad	0x3fde84dfce3150db              # double 0.47686000000000001
	.quad	0x3fefddf00abf76a3              # double 0.995842
	.quad	0x3ff53399f5dfeb8e              # double 1.3250980000000001
	.quad	0x4017f947064ece9a              # double 5.9934349999999998
	.quad	0x401b33897204295a              # double 6.8003289999999996
	.quad	0x3ff5b0110a137f39              # double 1.3554850000000001
	.quad	0x3fffd4a1ad6451b9              # double 1.989412
	.quad	0x3ff933edd8b60f1b              # double 1.575178
	.quad	0x4021445803cd141a              # double 8.6334839999999993
	.quad	0x4022975d78811b1e              # double 9.2956350000000008
	.quad	0x400edba55d1c3ac9              # double 3.8572489999999999
	.quad	0x3ffa3b2edfe75bc4              # double 1.6394489999999999
	.quad	0x40006f440af1cb8a              # double 2.0543290000000001
	.quad	0x400c4f0f9d2bf551              # double 3.5386039999999999
	.quad	0x40177ae536501e26              # double 5.8700150000000004
	.quad	0x40015edc7ef177a7              # double 2.171319
	.quad	0x3ffe2b074a771c97              # double 1.885505
	.quad	0x4020684c6a3bddfd              # double 8.2037080000000007
	.quad	0x401b8e61cffeb075              # double 6.8890450000000003
	.quad	0x4017dde3fbbd7b20              # double 5.9666899999999998
	.quad	0x3fe81103c8e25c81              # double 0.752077
	.quad	0x401225f9591cd1c8              # double 4.5370840000000001
	.quad	0x401c96b59146e4c1              # double 7.1471770000000001
	.quad	0x40205aef4e0114d3              # double 8.1776070000000001
	.quad	0x4020baa4fca42aed              # double 8.3645399999999999
	.quad	0x400da3992c8c5005              # double 3.704882
	.quad	0x3ff1054477ff151e              # double 1.0637859999999999
	.quad	0x401c5d56b00ffda4              # double 7.091151
	.quad	0x400db3c36113404f              # double 3.7127750000000002
	.quad	0x401d70ef1348b220              # double 7.3602869999999996
	.quad	0x3ff360828c36da88              # double 1.2110620000000001
	.quad	0x4000a48adeebb342              # double 2.0803430000000001
	.quad	0x40170e9d0e991ff7              # double 5.7642709999999999
	.quad	0x400c9f2d3c792d13              # double 3.5777230000000002
	.quad	0x3ff06312f4cf4a56              # double 1.0241880000000001
	.quad	0x4010d3c925785f8d              # double 4.2068219999999998
	.quad	0x3ff1c763a1900820              # double 1.1111789999999999
	.quad	0x400a516d2aa5c5f8              # double 3.2897590000000001
	.quad	0x4023cef544bb1af4              # double 9.9042150000000006
	.quad	0x40103b4784230fd0              # double 4.0578900000000004
	.quad	0x402217add15f02c5              # double 9.0462480000000003
	.quad	0x4018e3c925785f8d              # double 6.2224469999999998
	.quad	0x3fd2c26138fffbce              # double 0.29311399999999999
	.quad	0x3ff27dd76683c298              # double 1.1557230000000001
	.quad	0x401ca5d28d002e23              # double 7.1619359999999999
	.quad	0x3ff0d34699418506              # double 1.0515810000000001
	.quad	0x4013fc9d9d3458cd              # double 4.9966949999999999
	.quad	0x4022e9cae21101b0              # double 9.456626
	.quad	0x401881344806290f              # double 6.1261760000000001
	.quad	0x3fd0ed20296b3355              # double 0.26447300000000001
	.quad	0x401a74873365881a              # double 6.6137969999999999
	.quad	0x4023934cc2507208              # double 9.7876949999999993
	.quad	0x40020d24e160d888              # double 2.256418
	.quad	0x401a31569f490603              # double 6.5481819999999997
	.quad	0x40227df2239e6aba              # double 9.2459880000000005
	.quad	0x401ba56c93a71151              # double 6.9115469999999997
	.quad	0x3ffc6036006d0d4a              # double 1.7734890000000001
	.quad	0x40214ce874c8ffb9              # double 8.6502110000000005
	.quad	0x40237a13a0c6b485              # double 9.7384310000000002
	.quad	0x401208f14db59579              # double 4.5087330000000003
	.quad	0x3ffadc5b4aa9717e              # double 1.678798
	.quad	0x3ffb1d1f601797cc              # double 1.6946099999999999
	.quad	0x40139e646f156191              # double 4.9046799999999999
	.quad	0x3fd7fe47991bc558              # double 0.37489499999999998
	.quad	0x4006d3f1843c3a43              # double 2.853488
	.quad	0x40193c304ccee5ac              # double 6.3087780000000002
	.quad	0x400fa3eb7cbb3c82              # double 3.9550390000000002
	.quad	0x4000c8be2f7b17ce              # double 2.0980189999999999
	.quad	0x400ee45e4e69f05f              # double 3.8615080000000002
	.quad	0x400a9413986338b4              # double 3.3223029999999998
	.quad	0x401bc4fc1df3300e              # double 6.9423680000000001
	.quad	0x401b4942917507ea              # double 6.8215430000000001
	.quad	0x4010a0218def416c              # double 4.1563780000000001
	.quad	0x4020d31593e5fb72              # double 8.412274
	.quad	0x4012a4d2b2bfdb4d              # double 4.6609600000000002
	.quad	0x401c39c1f85d744f              # double 7.0564039999999997
	.quad	0x401a7472c0e7bc3c              # double 6.6137189999999997
	.quad	0x4012f09b738e6d16              # double 4.7349680000000003
	.quad	0x3ff3963022dd7a9a              # double 1.224167
	.quad	0x401c9ae3608d0892              # double 7.1512580000000003
	.quad	0x401fd44241c3efae              # double 7.9572839999999996
	.quad	0x400e6789e774eebf              # double 3.8005559999999998
	.quad	0x400c58b827fa1a0d              # double 3.54332
	.quad	0x40196042d8c2a455              # double 6.3440050000000001
	.quad	0x40205e6b3fe9fadb              # double 8.184412
	.quad	0x4013b52934acaff7              # double 4.9269150000000002
	.quad	0x3ff3201797cc3a00              # double 1.195335
	.quad	0x401477485e3da2f9              # double 5.1164870000000002
	.quad	0x400a1b035bd512ec              # double 3.2631899999999998
	.quad	0x401b2d94d0dcfcc6              # double 6.7945130000000002
	.quad	0x3ff550667f90d9d7              # double 1.3321289999999999
	.quad	0x400dce9b38d60a63              # double 3.7258819999999999
	.quad	0x401f692ccf6be37e              # double 7.8527100000000001
	.quad	0x40123d859c8c9321              # double 4.5600800000000001
	.quad	0x401c5738a3b57c4e              # double 7.0851769999999998
	.quad	0x40119b24a6a875d5              # double 4.4015069999999996
	.quad	0x4002437824d4cb9f              # double 2.2829440000000001
	.quad	0x3fd172fba01eeed9              # double 0.27264300000000002
	.quad	0x4018ff7a4e7ab756              # double 6.2494899999999998
	.quad	0x4000107852f7f499              # double 2.0080420000000001
	.quad	0x401c4c3ac929aa1d              # double 7.0744429999999996
	.quad	0x3ff16db2f661f18d              # double 1.0892820000000001
	.quad	0x402307143393ab43              # double 9.5138259999999998
	.quad	0x4020bc5e6ff7dfa0              # double 8.3679079999999999
	.quad	0x4014ad9ec7000432              # double 5.1695510000000002
	.quad	0x40069554fbdad752              # double 2.8229160000000002
	.quad	0x40033b089a027525              # double 2.4038249999999999
	.quad	0x40211cecc814d728              # double 8.5564940000000007
	.quad	0x4019abf338716095              # double 6.4179199999999996
	.quad	0x401f48f648c7192f              # double 7.8212520000000003
	.quad	0x4020f3af31b152f4              # double 8.4759460000000004
	.quad	0x4009dcb1465e8922              # double 3.2327599999999999
	.quad	0x40046520d130df9c              # double 2.5493790000000001
	.quad	0x4021b54477ff151e              # double 8.8540379999999992
	.quad	0x401bf0bbf50e3476              # double 6.9850919999999999
	.quad	0x400f3466f5019f3c              # double 3.9005869999999998
	.quad	0x3feec74fb549f948              # double 0.96182999999999996
	.quad	0x401c445132f87ad1              # double 7.0667160000000004
	.quad	0x4003cc753e707e17              # double 2.4748329999999998
	.quad	0x40074a53fc0096ff              # double 2.9112930000000001
	.quad	0x4018eb945308bb90              # double 6.2300579999999997
	.quad	0x3fc84c059210385c              # double 0.18981999999999999
	.quad	0x401e573860999dcb              # double 7.5851759999999996
	.quad	0x401b934acaff6d33              # double 6.89384
	.quad	0x40114bae46cfc82a              # double 4.3239070000000002
	.quad	0x401c3f4906034f40              # double 7.0618020000000001
	.quad	0x4012397aeddce7cd              # double 4.556133
	.quad	0x4001e9d0e991ff71              # double 2.2391679999999998
	.quad	0x4016de78183f91e6              # double 5.7172549999999998
	.quad	0x401782706d506573              # double 5.8773819999999999
	.quad	0x401aba6defc7a398              # double 6.6820599999999999
	.quad	0x4022b2c9081c2e34              # double 9.3491900000000001
	.quad	0x400d9cf355cd91ef              # double 3.7016360000000001
	.quad	0x4006eb94d9407896              # double 2.86503
	.quad	0x3fd5d16b97fe8ee7              # double 0.34090700000000002
	.quad	0x40128019f3c70c99              # double 4.6250989999999996
	.quad	0x402057dd44135547              # double 8.1716099999999994
	.quad	0x401d2b2745bf26f2              # double 7.2921420000000001
	.quad	0x401ee4202d9cf13d              # double 7.722779
	.quad	0x401f086f8ad2567a              # double 7.7582380000000004
	.quad	0x4008b6b7ed41b75a              # double 3.0892179999999998
	.quad	0x401e060e0eb67c28              # double 7.5059129999999996
	.quad	0x3ff8773e24febd0a              # double 1.529112
	.quad	0x400e7293d102bc73              # double 3.8059460000000001
	.quad	0x40095f034b0e1b4c              # double 3.1713930000000001
	.quad	0x401c4f4ba51a005c              # double 7.0774369999999998
	.quad	0x401085b035bd512f              # double 4.1305550000000002
	.quad	0x40007953586ca8a0              # double 2.0592410000000001
	.quad	0x40228225fa658c4c              # double 9.2541960000000003
	.quad	0x3fd262131a8ef77f              # double 0.28723599999999999
	.quad	0x400f923897204296              # double 3.9463970000000002
	.quad	0x4013e502ababead5              # double 4.973643
	.quad	0x402211f8a0902de0              # double 9.0350999999999999
	.quad	0x400a67eae5bc87db              # double 3.3007409999999999
	.quad	0x3fe2b24a6a875d57              # double 0.58426400000000001
	.quad	0x40118cb790fb6567              # double 4.3874190000000004
	.quad	0x40093c0980b24207              # double 3.154315
	.quad	0x4023f52c386d2ed8              # double 9.9788530000000008
	.quad	0x40228dc6c11a1123              # double 9.2769069999999996
	.quad	0x40109cd07852f7f5              # double 4.1531390000000004
	.quad	0x40156908e581cf78              # double 5.3525729999999996
	.quad	0x4000049b1fab96f2              # double 2.0022489999999999
	.quad	0x4016f192641b328b              # double 5.7359099999999996
	.quad	0x3fe5018611fd5886              # double 0.65643600000000002
	.quad	0x401d0876188b1141              # double 7.2582630000000004
	.quad	0x4023db9f77292c49              # double 9.9289509999999996
	.quad	0x401f75cc857f3062              # double 7.8650380000000002
	.quad	0x4010326aec0724b7              # double 4.0492359999999996
	.quad	0x4017a590c0ad03da              # double 5.9116850000000003
	.quad	0x401d85d28d002e23              # double 7.3806859999999999
	.quad	0x3fef67b5f1bef49d              # double 0.98141
	.quad	0x402396075f6fd220              # double 9.7930250000000001
	.quad	0x40187a7829068987              # double 6.119599
	.quad	0x3ff428e3ef284168              # double 1.2599830000000001
	.quad	0x4020ae76c8b43958              # double 8.3407499999999999
	.quad	0x4018cd8622c45027              # double 6.2007070000000004
	.quad	0x401b3b506dd69d30              # double 6.8079239999999999
	.quad	0x401b25a1cac08312              # double 6.7867499999999996
	.quad	0x400cf542a23bff8b              # double 3.6197560000000002
	.quad	0x3fd07ba237cdcca7              # double 0.257546
	.quad	0x401eb585be1a8262              # double 7.6772679999999998
	.quad	0x400ac95af294dd72              # double 3.3483179999999999
	.quad	0x401905a250f84018              # double 6.2555019999999999
	.quad	0x40098318b9346994              # double 3.189012
	.quad	0x40200116ca46e08f              # double 8.0021269999999998
	.quad	0x400ab0cb295e9e1b              # double 3.336325
	.quad	0x4009eb0f27bb2fec              # double 3.2397749999999998
	.quad	0x4021685510d38cda              # double 8.7037739999999992
	.quad	0x400bb1efb6dca07f              # double 3.4618829999999998
	.quad	0x40227a597d49d7ba              # double 9.2389639999999993
	.quad	0x3fea32745bf26f1e              # double 0.81865900000000003
	.quad	0x3fe6b83f0bae89ec              # double 0.70999100000000004
	.quad	0x4019ecf398e97072              # double 6.4813980000000004
	.quad	0x3fe94024b33daf8e              # double 0.78908
	.quad	0x40063126634117f8              # double 2.7739989999999999
	.quad	0x4020d49ea9a3d2d8              # double 8.4152729999999991
	.quad	0x3ff7d4940bbb1f25              # double 1.4893989999999999
	.quad	0x4020b3b1290257c9              # double 8.3509609999999999
	.quad	0x401b6794a6eb91b4              # double 6.851153
	.quad	0x4009ccb5bb384fd3              # double 3.2249560000000002
	.quad	0x400449b499d0203e              # double 2.5359889999999998
	.quad	0x3fbf300de4c51117              # double 0.121827
	.quad	0x3fe9fcf5f4e4430b              # double 0.81212899999999999
	.quad	0x401b5b851eb851ec              # double 6.8393750000000004
	.quad	0x4013ad19dece5711              # double 4.9190440000000004
	.quad	0x3fdc7000431bde83              # double 0.44433600000000001
	.quad	0x402278d1b71758e2              # double 9.2359749999999998
	.quad	0x4010e5fd8adab9f5              # double 4.2245999999999997
	.quad	0x4021df572de43ed9              # double 8.9362119999999994
	.quad	0x40009ee0b0af5fd4              # double 2.0775769999999998
	.quad	0x402284c35ce18266              # double 9.2593029999999992
	.quad	0x400e4ae8e1d6494d              # double 3.7865769999999999
	.quad	0x4000442b734b5137              # double 2.0332859999999999
	.quad	0x3ff332b884406c01              # double 1.199883
	.quad	0x400c38b9baa1511e              # double 3.527698
	.quad	0x400c6b1feeb2d0a2              # double 3.5523069999999999
	.quad	0x4022fbd9ec700043              # double 9.4918969999999998
	.quad	0x401f75c70435efa6              # double 7.8650169999999999
	.quad	0x402106644d877250              # double 8.5124840000000006
	.quad	0x4006f61dc93ea2d3              # double 2.870174
	.quad	0x4017b52c16df3f96              # double 5.9269259999999999
	.quad	0x400dead8a116659d              # double 3.739671
	.quad	0x40117c903ea704bc              # double 4.3716439999999999
	.quad	0x401ba145d851654d              # double 6.9074929999999997
	.quad	0x401138726d04e619              # double 4.3051240000000002
	.quad	0x4018f5d80e496edf              # double 6.2400820000000001
	.quad	0x4012acea28fe260b              # double 4.6688619999999998
	.quad	0x402305a6e75ff60a              # double 9.5110390000000002
	.quad	0x3fec2311e85fd04a              # double 0.87928099999999998
	.quad	0x4011efbd273d5bab              # double 4.4841199999999999
	.quad	0x400594a87e38eb03              # double 2.697587
	.quad	0x4019336501e2584f              # double 6.3001899999999997
	.quad	0x4023342e9899bf59              # double 9.6019179999999995
	.quad	0x40170b1b36bd2b6f              # double 5.7608459999999999
	.quad	0x4016c03a7546d3fa              # double 5.6877230000000001
	.quad	0x40142937d1fe64f5              # double 5.0402519999999997
	.quad	0x401ff6273929ed39              # double 7.9903839999999997
	.quad	0x400657a99fa11a97              # double 2.7928039999999998
	.quad	0x40118b6390c91080              # double 4.3861220000000003
	.quad	0x4010be5fb71fbc5e              # double 4.1859120000000001
	.quad	0x400cdd8e0008637c              # double 3.6081810000000001
	.quad	0x4023105cee17a030              # double 9.5319590000000005
	.quad	0x40230f9e16d6dc1a              # double 9.5305029999999995
	.quad	0x4018fa67e846a5d7              # double 6.2445370000000002
	.quad	0x40016c68a936c58f              # double 2.177934
	.quad	0x3fb67e1fc08fa7a8              # double 0.087861999999999996
	.quad	0x4021e3d6e8af8162              # double 8.9449989999999993
	.quad	0x40172eafab53d641              # double 5.7955920000000001
	.quad	0x400faa4ebdd334c6              # double 3.9581580000000001
	.quad	0x40181e85b9e8c47a              # double 6.0298069999999999
	.quad	0x4011dcf7446f9b99              # double 4.4657869999999997
	.quad	0x40165bddb9841aac              # double 5.5897129999999997
	.quad	0x40129807bbb62414              # double 4.6484670000000001
	.quad	0x4011aca03c4b09ea              # double 4.4185800000000004
	.quad	0x4000c65300581494              # double 2.096838
	.quad	0x400dc73de1e2de87              # double 3.722286
	.quad	0x40206c4998d045fe              # double 8.2114989999999999
	.quad	0x402041752977c88e              # double 8.1278469999999992
	.quad	0x40130c447c30d307              # double 4.7619800000000003
	.quad	0x4019ac3ce2089e34              # double 6.4182009999999998
	.quad	0x40223360f1b25f63              # double 9.1003489999999996
	.quad	0x4020bcdfefbf401c              # double 8.3688959999999994
	.quad	0x4022881669ced0b3              # double 9.2657959999999999
	.quad	0x40105bed30f062d4              # double 4.089772
	.quad	0x40138df8b1572581              # double 4.8886440000000002
	.quad	0x400eec99f1ae2da5              # double 3.8655279999999999
	.quad	0x4022bf1a7e308787              # double 9.3732489999999994
	.quad	0x40073fadafd11383              # double 2.9060929999999998
	.quad	0x400ae011d3671ac1              # double 3.3594089999999999
	.quad	0x40204ee158750c1c              # double 8.1540630000000007
	.quad	0x401d7cf1c3265ade              # double 7.3720160000000003
	.quad	0x40232b953dea465a              # double 9.5851229999999994
	.quad	0x4023eb89d6adf71f              # double 9.9600360000000005
	.quad	0x40191a7e30878748              # double 6.2758719999999997
	.quad	0x401f0037d63022dd              # double 7.7502129999999995
	.quad	0x4008ac4a4095f245              # double 3.0841259999999999
	.quad	0x40214df41aef6f8f              # double 8.652253
	.quad	0x3ff3738f7985271c              # double 1.215713
	.quad	0x4017c26394face68              # double 5.9398330000000001
	.quad	0x4021a76ea4228998              # double 8.8270160000000004
	.quad	0x401f359641f64495              # double 7.8023309999999996
	.quad	0x401ee6b7aa25d8d8              # double 7.7253100000000003
	.quad	0x4020bbfdd65a1449              # double 8.3671710000000008
	.quad	0x4022e4d4cb9ecf64              # double 9.4469360000000008
	.quad	0x4016297a67a52ac7              # double 5.5405059999999997
	.quad	0x400d5d80e496edee              # double 3.6706560000000001
	.quad	0x4015fe132b55ef20              # double 5.4981200000000001
	.quad	0x4001b41d084e831b              # double 2.2129460000000001
	.quad	0x4013a41c8216c615              # double 4.9102649999999999
	.quad	0x401797eed45e9186              # double 5.8983720000000002
	.quad	0x4018e94e1a3f4667              # double 6.2278370000000001
	.quad	0x4010de78183f91e6              # double 4.2172549999999998
	.quad	0x4021e7e5c91d14e4              # double 8.9529250000000004
	.quad	0x4012e41dd1a21ea3              # double 4.7227699999999997
	.quad	0x401549fcb0c026cc              # double 5.3222529999999999
	.quad	0x4020f3ec679cc74c              # double 8.4764130000000008
	.quad	0x401daa7eb6bf444e              # double 7.416499
	.quad	0x40116abe6a337a81              # double 4.3542420000000002
	.quad	0x4010e476af89c5e7              # double 4.223109
	.quad	0x401fb6916440f239              # double 7.9282890000000003
	.quad	0x40022023a6ce3583              # double 2.2656930000000002
	.quad	0x40048ba0620ab713              # double 2.5681769999999999
	.quad	0x401b91c193b3a68b              # double 6.8923399999999999
	.quad	0x401a1f7e80389f84              # double 6.5307560000000002
	.quad	0x401c8fa1e3eaf683              # double 7.1402659999999996
	.quad	0x40026646f1561911              # double 2.2999399999999999
	.quad	0x40028db2702a3487              # double 2.319188
	.quad	0x3ff8f54d1e96c3fc              # double 1.5598879999999999
	.quad	0x3ffa0e5710880d80              # double 1.628501
	.quad	0x400f0919ef954eb1              # double 3.8794439999999999
	.quad	0x40127194c0160525              # double 4.610919
	.quad	0x4016170e6f2e8c05              # double 5.5225160000000004
	.quad	0x4023152b2bfdb4cc              # double 9.5413449999999997
	.quad	0x400f427c7c5260f6              # double 3.907464
	.quad	0x40114b5b70691ea8              # double 4.3235910000000004
	.quad	0x4016578feef5ec81              # double 5.5855100000000002
	.quad	0x4007823d9231c64c              # double 2.9385940000000002
	.quad	0x400fa305d95dd4c7              # double 3.9546009999999998
	.quad	0x40013c36113404ea              # double 2.1543999999999999
	.quad	0x3ffe08b86b15f890              # double 1.877129
	.quad	0x401dfd0c80410300              # double 7.4971180000000004
	.quad	0x402230307f23cc8e              # double 9.0941200000000002
	.quad	0x4018623d9231c64c              # double 6.0959380000000003
	.quad	0x40152adddf43c7d6              # double 5.2918620000000001
	.quad	0x4011d7ebaf102364              # double 4.4608600000000003
	.quad	0x401f183b1d0c8041              # double 7.7736629999999999
	.quad	0x401df1f53825e13b              # double 7.4862869999999999
	.quad	0x3ff95d8d79d0a676              # double 1.58534
	.quad	0x401f56ed6777079e              # double 7.8348899999999997
	.quad	0x3ff37b02d59d55e7              # double 1.2175320000000001
	.quad	0x3fd3c5260f5e41d5              # double 0.30890800000000002
	.quad	0x4013d89bd8383ada              # double 4.9615320000000001
	.quad	0x40220cfa48301a7a              # double 9.025347
	.quad	0x4021d570e6f2e8c0              # double 8.9168769999999995
	.quad	0x40202499f1ae2da5              # double 8.0714869999999994
	.quad	0x401cae5ffa3b9ae1              # double 7.1702880000000002
	.quad	0x4019ade58e64b231              # double 6.4198209999999998
	.quad	0x40236f2452c59fb2              # double 9.7170740000000002
	.quad	0x401d14b167ec7864              # double 7.2702080000000002
	.quad	0x4017887f88765ba7              # double 5.8832990000000001
	.quad	0x4020cfd933e35c5b              # double 8.4059539999999995
	.quad	0x401f3d188f42fe82              # double 7.8096639999999997
	.quad	0x401bd5ff609dcf89              # double 6.9589819999999998
	.quad	0x4019b307f23cc8de              # double 6.4248349999999999
	.quad	0x3ffc539da16616b5              # double 1.7704139999999999
	.quad	0x40214aaac1094a2c              # double 8.6458340000000006
	.quad	0x401ad13c68661ae7              # double 6.704332
	.quad	0x401ecb3311a543f2              # double 7.6984370000000002
	.quad	0x3ffdebb8800eae19              # double 1.8700490000000001
	.quad	0x3fe57e308787485e              # double 0.67165399999999997
	.quad	0x40195d03968d759f              # double 6.3408340000000001
	.quad	0x400fbeebb341e14c              # double 3.9682230000000001
	.quad	0x4017654b48d3ae68              # double 5.8489199999999997
	.quad	0x3fde4d5d80e496ee              # double 0.473472
	.quad	0x3fe2a1b7e0ac7da2              # double 0.58224100000000001
	.quad	0x401cf5fdcdf69878              # double 7.2402259999999998
	.quad	0x40170436b8f9b131              # double 5.7541149999999996
	.quad	0x401cc888f861a60d              # double 7.1958349999999998
	.quad	0x400e80e410b630a9              # double 3.812935
	.quad	0x401025e0f7fcfc40              # double 4.0369910000000004
	.quad	0x3fda3868fd199bb2              # double 0.40969299999999997
	.quad	0x3ffad2a94ff0025c              # double 1.676431
	.quad	0x40216a5cc426351e              # double 8.7077390000000001
	.quad	0x401d46af89c5e6ff              # double 7.3190289999999996
	.quad	0x401f8b9e492bc2fc              # double 7.8863459999999996
	.quad	0x4019f55ef1fddebe              # double 6.4896200000000004
	.quad	0x4020342f61ed5ae2              # double 8.1019240000000003
	.quad	0x400cdcbd556084a5              # double 3.607783
	.quad	0x3ff17c45cbbc2b95              # double 1.09284
	.quad	0x402155baf533f423              # double 8.6674419999999994
	.quad	0x40235768be2f7b18              # double 9.6707210000000003
	.quad	0x4022810fb65668c2              # double 9.2520729999999993
	.quad	0x4017e56323bbc6eb              # double 5.974011
	.quad	0x400d5109070fbeba              # double 3.664568
	.quad	0x40232db9a5a89b95              # double 9.5893069999999998
	.quad	0x3ff1eb68cef672b9              # double 1.1199730000000001
	.quad	0x400d7484d76ab580              # double 3.6818939999999998
	.quad	0x40001f39d1b2e59b              # double 2.015247
	.quad	0x40122b75ea67e847              # double 4.5424420000000003
	.quad	0x4017a19b90ea9e6f              # double 5.9078200000000001
	.quad	0x40198ef8487b99d4              # double 6.3896189999999997
	.quad	0x4002ecfd8f0c77de              # double 2.3657180000000002
	.quad	0x4012da3d2d87f887              # double 4.7131239999999996
	.quad	0x4001426edaa92e62              # double 2.157438
	.quad	0x4019a1c64ba94bbe              # double 6.4079829999999998
	.quad	0x4023fcb7b28954a8              # double 9.993589
	.quad	0x40139fa69be09bb7              # double 4.9059090000000003
	.quad	0x4011e5814940bbb2              # double 4.474126
	.quad	0x3ff1bfe2a3cea6c2              # double 1.1093470000000001
	.quad	0x4010e5935fc3b4f6              # double 4.2241949999999999
	.quad	0x400c80ed80a17b0f              # double 3.5629529999999998
	.quad	0x400c07913e81450f              # double 3.503695
	.quad	0x4007070110a137f4              # double 2.8784200000000002
	.quad	0x3fec371327243138              # double 0.88172300000000003
	.quad	0x3ffcb059641f6449              # double 1.7930539999999999
	.quad	0x40220655193708ab              # double 9.0123680000000004
	.quad	0x4023c79fa97e132b              # double 9.8898899999999994
	.quad	0x401c3333fc86cebc              # double 7.0500030000000002
	.quad	0x401742fbe33acd5b              # double 5.8154139999999996
	.quad	0x3fc5af1886df82b2              # double 0.169406
	.quad	0x40197edcc20d562a              # double 6.3738890000000001
	.quad	0x3ff281aef6f8f041              # double 1.1566609999999999
	.quad	0x4021eee7c49fd7a1              # double 8.9666119999999996
	.quad	0x4020e79a2834d270              # double 8.4523480000000006
	.quad	0x40218cbc6a7ef9db              # double 8.7748749999999998
	.quad	0x402341b60ae9680e              # double 9.628342
	.quad	0x400f349e01de2691              # double 3.9006919999999998
	.quad	0x400e3a5b0ff10ecb              # double 3.7784939999999998
	.quad	0x400f95aa715831f0              # double 3.9480789999999999
	.quad	0x402006b4e981387a              # double 8.0130990000000004
	.quad	0x3ffcaaee2003ab86              # double 1.791731
	.quad	0x4022c759ab6d00b4              # double 9.3893559999999993
	.quad	0x401a12539756c93a              # double 6.5178969999999996
	.quad	0x4006efc829cfdd23              # double 2.8670810000000002
	.quad	0x401ed2324c836651              # double 7.7052699999999996
	.quad	0x3ff045b4aa9717df              # double 1.017018
	.quad	0x4019351e321a2e7f              # double 6.3018729999999996
	.quad	0x3fe796ce789e774f              # double 0.73715900000000001
	.quad	0x3ff8d35fc3b4f616              # double 1.5516049999999999
	.quad	0x401e988509bf9c63              # double 7.6489450000000003
	.quad	0x4021e9c3efae7925              # double 8.9565730000000006
	.quad	0x401f84bf0995aaf8              # double 7.8796350000000003
	.quad	0x40191982cb20fb22              # double 6.2749129999999997
	.quad	0x400109aaa3ad18d2              # double 2.1297199999999998
	.quad	0x4008eac1094a2b9d              # double 3.1146259999999999
	.quad	0x3ff3268d32830a0b              # double 1.196912
	.quad	0x4000f524399b2c41              # double 2.1196980000000001
	.quad	0x401781682f944242              # double 5.8763740000000002
	.quad	0x400cc9e0a41a261c              # double 3.598573
	.quad	0x4021695d701d9f4d              # double 8.7057909999999996
	.quad	0x40080c729f59ccfb              # double 3.006078
	.quad	0x401abca57a786c22              # double 6.6842249999999996
	.quad	0x40163d2fe3f359ff              # double 5.5597529999999997
	.quad	0x401afb0c026cc1ca              # double 6.7451629999999998
	.quad	0x401354080f98fa37              # double 4.8320619999999996
	.quad	0x401a41e14bdfd263              # double 6.5643359999999999
	.quad	0x4016c174c4cdfaca              # double 5.6889219999999998
	.quad	0x400ab56a7ac81d3b              # double 3.3385820000000002
	.quad	0x400efecaab8a5ce6              # double 3.8744100000000001
	.quad	0x401add0fe8ab4fa5              # double 6.7158810000000004
	.quad	0x4003c65d7cb2d906              # double 2.4718580000000001
	.quad	0x3feee3800218def4              # double 0.96527099999999999
	.quad	0x400d9fe5c91d14e4              # double 3.7030750000000001
	.quad	0x3fe600ae10492360              # double 0.68758300000000006
	.quad	0x40107f9d6f112fd3              # double 4.1246239999999998
	.quad	0x401528e53eb399f6              # double 5.2899370000000001
	.quad	0x401abbbf50e34763              # double 6.6833470000000004
	.quad	0x4002fc254a3c6434              # double 2.3731179999999998
	.quad	0x4004056b441bb8c3              # double 2.5026459999999999
	.quad	0x400c833df2a9d628              # double 3.5640830000000001
	.quad	0x4012aeae18ac9f30              # double 4.6705860000000001
	.quad	0x400a03d9a95421c0              # double 3.2518799999999999
	.quad	0x4019df3882278d0d              # double 6.4679890000000002
	.quad	0x401d85e0b4e11dbd              # double 7.3807400000000003
	.quad	0x401e6480e8c8abd6              # double 7.5981480000000001
	.quad	0x40197714fce746cc              # double 6.3662910000000004
	.quad	0x3ffd514e3bcd35a8              # double 1.8323499999999999
	.quad	0x40228e5f5275ee9a              # double 9.2780710000000006
	.quad	0x401e6945f9df548f              # double 7.6028060000000001
	.quad	0x401d401b43526528              # double 7.3126040000000003
	.quad	0x401eb1016ce789e7              # double 7.6728569999999995
	.quad	0x4002fc79b34a44c8              # double 2.3732790000000001
	.quad	0x401268f53c579f23              # double 4.6024979999999998
	.quad	0x4003c1a60d4562e1              # double 2.4695550000000002
	.quad	0x401c1c77dd872f34              # double 7.0278010000000002
	.quad	0x4023e05c67dfe32a              # double 9.938205
	.quad	0x4014b46412cf0f9d              # double 5.1761629999999998
	.quad	0x4005dcaafbc1acde              # double 2.732748
	.quad	0x3ff48b4bf8fcd680              # double 1.284008
	.quad	0x40149e1ac57e23f2              # double 5.1543989999999997
	.quad	0x4018529131ec0b56              # double 6.0806319999999996
	.quad	0x401cc452c59fb1e2              # double 7.1917220000000004
	.quad	0x40061bb40b34e768              # double 2.7635269999999998
	.quad	0x401395471715c63b              # double 4.8957790000000001
	.quad	0x401d1651b0ccbc06              # double 7.2717960000000001
	.quad	0x401de702602c9082              # double 7.4755950000000002
	.quad	0x3fe3083558a76102              # double 0.59475199999999995
	.quad	0x401469d5e4a38327              # double 5.1033549999999996
	.quad	0x401de2b841248d7e              # double 7.471406
	.quad	0x400e6135daad6020              # double 3.797466
	.quad	0x401c039b8887229f              # double 7.0035230000000004
	.quad	0x400bd722e1ac57e2              # double 3.4800469999999999
	.quad	0x3fd3b524399b2c41              # double 0.30793100000000001
	.quad	0x3fdafc43b2dd377e              # double 0.42164699999999999
	.quad	0x40195352220bc383              # double 6.3313680000000003
	.quad	0x4020ceca89fc6da4              # double 8.4038889999999994
	.quad	0x40085143393ab431              # double 3.039679
	.quad	0x40139443d46b26c0              # double 4.8947900000000004
	.quad	0x3ffcb30d7386099a              # double 1.793714
	.quad	0x4006ca515ce9e5e2              # double 2.8487879999999999
	.quad	0x4020155cfaacd9e8              # double 8.0417249999999996
	.quad	0x40200cd12018a43c              # double 8.0250330000000005
	.quad	0x4008493c89f40a28              # double 3.0357599999999998
	.quad	0x401bb052d666a982              # double 6.9221909999999998
	.quad	0x40140284dfce3151              # double 5.0024600000000001
	.quad	0x3fe6915df6555c53              # double 0.70524500000000001
	.quad	0x3ffdd783dff3f0fe              # double 1.865116
	.quad	0x401be743632c1f43              # double 6.9758430000000002
	.quad	0x4001557470eb24a7              # double 2.1667260000000002
	.quad	0x40066f6a50d6b229              # double 2.8044020000000001
	.quad	0x3fd4fa15db3397dd              # double 0.327764
	.quad	0x40216a8f9f44d445              # double 8.7081269999999993
	.quad	0x4021dcfd6d7e889c              # double 8.9316209999999998
	.quad	0x40219a72a7bd48cb              # double 8.8016559999999995
	.quad	0x4001f67125dd095b              # double 2.245333
	.quad	0x4002df8fcd67fd3f              # double 2.3591609999999998
	.quad	0x3ff9284f09528f19              # double 1.572341
	.quad	0x40192601797cc3a0              # double 6.287115
	.quad	0x3ffeae49f51697f2              # double 1.917551
	.quad	0x3ffe99ddc1e7967d              # double 1.9125650000000001
	.quad	0x40202323358f2e06              # double 8.0686280000000004
	.quad	0x401dd07f23cc8de3              # double 7.4536100000000003
	.quad	0x4022cba322af5771              # double 9.3977289999999999
	.quad	0x3ff767008a697aee              # double 1.462647
	.quad	0x400330079a2834d2              # double 2.3984519999999998
	.quad	0x4016f2b4d8ba40d9              # double 5.737018
	.quad	0x401473dee78183f9              # double 5.1131549999999999
	.quad	0x401e13fbbd7b2032              # double 7.5195150000000002
	.quad	0x3fd39289dadfb507              # double 0.30581900000000001
	.quad	0x4018f3f4eca686e8              # double 6.2382390000000001
	.quad	0x40200da1cac08312              # double 8.0266249999999992
	.quad	0x3ff78304ccee5abc              # double 1.469487
	.quad	0x401956c15d2d01c1              # double 6.3347220000000002
	.quad	0x40154a32f4491299              # double 5.3224600000000004
	.quad	0x400cf377e1b8ed1c              # double 3.618881
	.quad	0x401bceff5c6c11a1              # double 6.9521459999999999
	.quad	0x400f865625a682b6              # double 3.9405939999999999
	.quad	0x4015b3404ea4a8c1              # double 5.4250499999999997
	.quad	0x40208d48cb4aec8d              # double 8.2759459999999994
	.quad	0x40233276d97b30f9              # double 9.5985630000000004
	.quad	0x401e4be27179bfdf              # double 7.5741059999999995
	.quad	0x3fdbd68837718655              # double 0.43496899999999999
	.quad	0x401866bebe1650a4              # double 6.1003369999999997
	.quad	0x3ff35bc87db2b346              # double 1.209908
	.quad	0x40225b4699418506              # double 9.1782730000000008
	.quad	0x3ffd05d206c8711d              # double 1.8139209999999999
	.quad	0x3ff9926634117f84              # double 1.5982419999999999
	.quad	0x4021a60daa0cae64              # double 8.8243229999999996
	.quad	0x400ec7b6fe2e6ea8              # double 3.8475169999999999
	.quad	0x400cc6801711947d              # double 3.596924
	.quad	0x400cd0eb24a6a876              # double 3.6020110000000001
	.quad	0x4007f446f9b994e2              # double 2.9942760000000002
	.quad	0x4013a1287c200c0f              # double 4.907381
	.quad	0x40237b1bde82d7b6              # double 9.7404469999999996
	.quad	0x401f5620ee8d10f5              # double 7.8341099999999999
	.quad	0x3ff1184b1ab0856e              # double 1.0684309999999999
	.quad	0x400979ab6d00b45b              # double 3.184409
	.quad	0x40161feef5ec80c7              # double 5.5311849999999998
	.quad	0x4004820a30db6a1f              # double 2.5634960000000002
	.quad	0x402337ad080b673c              # double 9.6087419999999994
	.quad	0x3fee26a012599ed8              # double 0.94221500000000002
	.quad	0x401416c00da1a933              # double 5.0222170000000004
	.quad	0x3ff0d5a7d24180d4              # double 1.052162
	.quad	0x4018c795f676ea42              # double 6.1949079999999999
	.quad	0x400802645e4e69f0              # double 3.0011679999999998
	.quad	0x40187f8a8f3a9b07              # double 6.1245520000000004
	.quad	0x402221de26916441              # double 9.0661480000000001
	.quad	0x401e718e757928e1              # double 7.6108950000000001
	.quad	0x401ed3ea2d2fe3f3              # double 7.7069479999999996
	.quad	0x3ffaa786c226809d              # double 1.6658999999999999
	.quad	0x4020663b688bda94              # double 8.1996719999999996
	.quad	0x402243c254a3c643              # double 9.1323419999999995
	.quad	0x4006263b688bda94              # double 2.7686679999999999
	.quad	0x4006e3cd9a52263e              # double 2.8612320000000002
	.quad	0x4023de45803cd142              # double 9.9341240000000006
	.quad	0x40048dc33721d53d              # double 2.5692200000000001
	.quad	0x401cf9991361dc94              # double 7.2437480000000001
	.quad	0x3ffb2d06fef7c244              # double 1.698493
	.quad	0x400c3cfcc5b8dc55              # double 3.529779
	.quad	0x400b74fce746cb96              # double 3.4321229999999998
	.quad	0x3ff1ba29c779a6b5              # double 1.10795
	.quad	0x4013fa2ad3e920c0              # double 4.9943039999999996
	.quad	0x3fd4b4d056c508b3              # double 0.32353599999999999
	.quad	0x4001878854cdb7ae              # double 2.1911779999999998
	.quad	0x3ffa8d61b2a27f1b              # double 1.6595169999999999
	.quad	0x4020dca72ead9275              # double 8.4309630000000002
	.quad	0x40226475c4a83b1d              # double 9.1962109999999999
	.quad	0x4020c8dd82fd75e2              # double 8.392315
	.quad	0x401896cdaf4adbc6              # double 6.1472689999999997
	.quad	0x400036ebd4cfd08d              # double 2.0268169999999999
	.quad	0x3ffe1435ac8a3726              # double 1.879934
	.quad	0x4023c401e68a0d35              # double 9.8828270000000006
	.quad	0x4022ef3d9ec70004              # double 9.4672669999999996
	.quad	0x400db14013ec460f              # double 3.7115480000000001
	.quad	0x40121112fd32c626              # double 4.5166740000000001
	.quad	0x40212c9e236c15d3              # double 8.5871440000000003
	.quad	0x402349f7f8ca8199              # double 9.64447
	.quad	0x4016bd0fa58f7122              # double 5.6846300000000003
	.quad	0x400d172e6a76965f              # double 3.6363189999999999
	.quad	0x401d5c3b0c4588a0              # double 7.3400689999999997
	.quad	0x401e572606fac604              # double 7.5851059999999997
	.quad	0x4022cdbff04577d9              # double 9.4018549999999994
	.quad	0x3fe3c83ec892ab69              # double 0.61819400000000002
	.quad	0x4002f3cd573647bb              # double 2.3690440000000001
	.quad	0x401489841aac53b1              # double 5.1342930000000004
	.quad	0x402385b1422ccb3a              # double 9.7611179999999997
	.quad	0x3fe4f6e1deacc921              # double 0.65513699999999997
	.quad	0x401c9bc05d52c16e              # double 7.152101
	.quad	0x4015e2d3c792d128              # double 5.4715109999999996
	.quad	0x401a0a76965f5276              # double 6.5102180000000001
	.quad	0x40234b6cdf266ba5              # double 9.6473150000000007
	.quad	0x4008a1333b96af04              # double 3.0787110000000002
	.quad	0x40215efc9bc77143              # double 8.6855209999999996
	.quad	0x40134dc7ef177a70              # double 4.825958
	.quad	0x40104e2541d8e864              # double 4.076314
	.quad	0x401ea355475a31a5              # double 7.6595050000000002
	.quad	0x4016347735c182ed              # double 5.5512360000000003
	.quad	0x40204380a9de8b3b              # double 8.1318409999999997
	.quad	0x4004006530058149              # double 2.5001929999999999
	.quad	0x3fe8172cd7cf5f4e              # double 0.75282899999999997
	.quad	0x40103ce4a7b4e54f              # double 4.0594659999999996
	.quad	0x401614a1ad6451b9              # double 5.5201479999999998
	.quad	0x3fda4b7f5a5332ad              # double 0.410858
	.quad	0x401c195d0b73d189              # double 7.024769
	.quad	0x4020fd0dcfcc5b8e              # double 8.4942460000000004
	.quad	0x3fc50060780fdc16              # double 0.164074
	.quad	0x400995610adcd2d4              # double 3.1979389999999999
	.quad	0x401f556b441bb8c3              # double 7.8334169999999998
	.quad	0x401b87fcb923a29c              # double 6.8827999999999996
	.quad	0x3ffff3d8e0008638              # double 1.9970330000000001
	.quad	0x3fd9f1f9acffa7eb              # double 0.40539399999999998
	.quad	0x4018db8ae31d712a              # double 6.2143969999999999
	.quad	0x3feae71cda2b5a21              # double 0.84071200000000001
	.quad	0x401c384f8f8a4c1f              # double 7.0549910000000002
	.quad	0x40235e5ba6efc372              # double 9.6842930000000003
	.quad	0x401527a072d1aeb4              # double 5.2886980000000001
	.quad	0x3fd2e820e6299525              # double 0.29541800000000001
	.quad	0x401a3e23f24d8fd6              # double 6.5606840000000002
	.quad	0x4021b265add9c27f              # double 8.8484320000000007
	.quad	0x40223548ecd8dbcf              # double 9.1040720000000004
	.quad	0x40188baf102363b2              # double 6.1364099999999997
	.quad	0x401093daf8df7a4e              # double 4.1443899999999996
	.quad	0x4013b1ee2435696e              # double 4.9237599999999997
	.quad	0x40215cce5f7403de              # double 8.6812620000000003
	.quad	0x400922eec7c957cd              # double 3.1420569999999999
	.quad	0x401457cf1c3265ae              # double 5.0857510000000001
	.quad	0x40207ecfc829cfdd              # double 8.2476789999999998
	.quad	0x40207f52fc2656ac              # double 8.2486800000000002
	.quad	0x400250cfe154434e              # double 2.2894589999999999
	.quad	0x401f7fd7e45803cd              # double 7.8748469999999999
	.quad	0x4023dc2b302f72b4              # double 9.9300169999999994
	.quad	0x401985fd8adab9f5              # double 6.3808499999999997
	.quad	0x401526da4484944f              # double 5.2879420000000001
	.quad	0x4016f7b5286b5914              # double 5.7419019999999996
	.quad	0x40232521ff2e48e9              # double 9.5725250000000006
	.quad	0x400b287f455a7d24              # double 3.394774
	.quad	0x401e4b44e50c5eb3              # double 7.5735049999999999
	.quad	0x401e78eb463497b7              # double 7.6180849999999997
	.quad	0x3fd60bae89eba6ad              # double 0.34446300000000002
	.quad	0x3fe5d553ef6b5d46              # double 0.68229099999999998
	.quad	0x4004a950fc71d606              # double 2.5826739999999999
	.quad	0x3fd3dd1e53a81dc1              # double 0.31037100000000001
	.quad	0x401327d3d4280ae1              # double 4.788894
	.quad	0x401ff153bd167664              # double 7.985671
	.quad	0x3ff1a2a2c2374795              # double 1.102206
	.quad	0x400e202e2328f9f4              # double 3.7657129999999999
	.quad	0x400358327674d163              # double 2.4180649999999999
	.quad	0x401f538476f2a5a4              # double 7.8315599999999996
	.quad	0x3fd16e19b90ea9e7              # double 0.272345
	.quad	0x4004ca515ce9e5e2              # double 2.5987879999999999
	.quad	0x401e09de481f5382              # double 7.5096369999999997
	.quad	0x40182ec3dab5c39c              # double 6.0456690000000002
	.quad	0x40110e47dc37a3db              # double 4.2639459999999998
	.quad	0x401ad2d98bf7f067              # double 6.705908
	.quad	0x4016df623076c051              # double 5.7181480000000002
	.quad	0x40192cd24e160d88              # double 6.2937709999999996
	.quad	0x40168d3f9e7b80aa              # double 5.6379380000000001
	.quad	0x40191bae03b3e9a7              # double 6.277031
	.quad	0x400748df37329c34              # double 2.9105819999999998
	.quad	0x401077dd872f33ca              # double 4.1170559999999998
	.quad	0x4003bac2df0d4131              # double 2.4661919999999999
	.quad	0x3ff119780baa582e              # double 1.0687180000000001
	.quad	0x401cc34ce3de614a              # double 7.1907230000000002
	.quad	0x401cd84944ed6fdb              # double 7.2112170000000004
	.quad	0x3fe45338f7985272              # double 0.63515900000000003
	.quad	0x401708e68e3ef284              # double 5.7586919999999999
	.quad	0x401b05b6c3760bf6              # double 6.7555800000000001
	.quad	0x4013edca07f66e87              # double 4.9822160000000002
	.quad	0x40149710880d801b              # double 5.1475239999999998
	.quad	0x40079e963dc486ad              # double 2.9524349999999999
	.quad	0x4013a1c6d1e108c4              # double 4.907985
	.quad	0x4021a66d15ad106f              # double 8.8250510000000002
	.quad	0x401ceba3443d46b2              # double 7.2301149999999996
	.quad	0x40189262456f75da              # double 6.1429530000000003
	.quad	0x401d173ffac1d29e              # double 7.2727050000000002
	.quad	0x3ff63d7f51efb6dd              # double 1.3900140000000001
	.quad	0x3ff0cbab649d388b              # double 1.0497240000000001
	.quad	0x401a505e1c15097d              # double 6.5784840000000004
	.quad	0x40223b320535c9e6              # double 9.1156159999999993
	.quad	0x40237852d666a982              # double 9.7350069999999995
	.quad	0x4021a7f38c5436b9              # double 8.82803
	.quad	0x4006c0157eed45e9              # double 2.843791
	.quad	0x4009bd5a9eb2074f              # double 3.2174580000000002
	.quad	0x401653ca7503b81b              # double 5.5818269999999997
	.quad	0x402164ff21b3aeef              # double 8.6972590000000007
	.quad	0x400521554fbdad75              # double 2.641276
	.quad	0x4022a6eb2d0a2446              # double 9.3260129999999997
	.quad	0x4015a0cc78e9f6a9              # double 5.4070299999999998
	.quad	0x401b52478854cdb8              # double 6.8303510000000003
	.quad	0x401471b003686a4d              # double 5.1110230000000003
	.quad	0x40178e681a9b8cb9              # double 5.8890690000000001
	.quad	0x4013b534bd76ee74              # double 4.9269590000000001
	.quad	0x4003b5f4e4430b18              # double 2.4638460000000002
	.quad	0x401f4532e7b3d8e0              # double 7.817577
	.quad	0x3ff1809e55c0fcb5              # double 1.093901
	.quad	0x401af29f16b11c6d              # double 6.7369349999999999
	.quad	0x3ff3e21a719b4dcf              # double 1.2427010000000001
	.quad	0x3ffcafc7a398201d              # double 1.792915
	.quad	0x3f7e29b6b2af1455              # double 0.0073639999999999999
	.quad	0x4023387b99d451fc              # double 9.6103179999999994
	.quad	0x4015351697f1f9ad              # double 5.301844
	.quad	0x4001f01322f27350              # double 2.2422240000000002
	.quad	0x4008d4784230fcf8              # double 3.103745
	.quad	0x3ff3eee73e681a9c              # double 1.2458260000000001
	.quad	0x4014ea9973d9ec70              # double 5.229101
	.quad	0x401fba915379fa98              # double 7.9321950000000001
	.quad	0x401702e1ac57e23f              # double 5.7528139999999999
	.quad	0x402099cc532a4980              # double 8.3003870000000006
	.quad	0x4006024d4cb9ecf6              # double 2.7511239999999999
	.quad	0x4007b1f3e89a88ad              # double 2.9618910000000001
	.quad	0x3fff460dcb9a9da6              # double 1.9546030000000001
	.quad	0x4011728240b78034              # double 4.3618249999999996
	.quad	0x4012a7ae5796bfcb              # double 4.6637510000000004
	.quad	0x4021cd0b73d188f4              # double 8.9004779999999996
	.quad	0x400edd755bccaf71              # double 3.8581340000000002
	.quad	0x3fbd002e2328f9f4              # double 0.113284
	.quad	0x3fd1dc3bd5992429              # double 0.27906700000000001
	.quad	0x3feba2a90cd423d9              # double 0.86360599999999998
	.quad	0x401f1b940fecdd0e              # double 7.7769320000000004
	.quad	0x400f6f062d40aaeb              # double 3.929211
	.quad	0x401a4a1ec4e7253e              # double 6.5723830000000003
	.quad	0x3ffa753825e13b19              # double 1.653618
	.quad	0x4017a91b823c85c2              # double 5.9151439999999997
	.quad	0x401b72ccb3a2595c              # double 6.8621090000000002
	.quad	0x401f9538ef34d6a1              # double 7.8957249999999996
	.quad	0x4003cbbd3804534c              # double 2.4744820000000001
	.quad	0x4003ba2ad3e920c0              # double 2.4659019999999998
	.quad	0x40181e6c093d9664              # double 6.0297090000000004
	.quad	0x402282239e6ab9b2              # double 9.2541779999999996
	.quad	0x3ff59984a0e410b6              # double 1.34998
	.quad	0x3fffb0d413122b7c              # double 1.9806710000000001
	.quad	0x401130c67168f8e8              # double 4.2976320000000001
	.quad	0x40204d0cc35ce182              # double 8.1504879999999993
	.quad	0x401186256366d7a5              # double 4.3810019999999996
	.quad	0x40218671ac14c661              # double 8.7625860000000007
	.quad	0x4021234d8ba40d91              # double 8.5689510000000002
	.quad	0x3ffaa9ab29e4d5d8              # double 1.666423
	.quad	0x3ffedcae21101b00              # double 1.928877
	.quad	0x4009fc7c5260f5e4              # double 3.2482839999999999
	.quad	0x3fe1aa1d755bccaf              # double 0.55201599999999995
	.quad	0x40036fa615a8deb1              # double 2.429516
	.quad	0x4021eb10ba6266fd              # double 8.9591119999999993
	.quad	0x40049f8db4890929              # double 2.5779070000000002
	.quad	0x401eb9f44d445671              # double 7.6815959999999998
	.quad	0x4019dcb5350092cd              # double 6.465535
	.quad	0x40231eb59146e4c1              # double 9.5599790000000002
	.quad	0x4016fbf9c62a1b5c              # double 5.7460699999999996
	.quad	0x4006489fc6da4485              # double 2.7854610000000002
	.quad	0x4020cffcfc3f811f              # double 8.4062269999999994
	.quad	0x4001a00a7c5ac472              # double 2.2031450000000001
	.quad	0x400586b7aa25d8d8              # double 2.6907800000000002
	.quad	0x401b5e6299524bfd              # double 6.8421729999999998
	.quad	0x3ff00896dd26b724              # double 1.002097
	.quad	0x4004e0d3cff64cf9              # double 2.6097790000000001
	.quad	0x40105fc3f811f4f5              # double 4.093521
	.quad	0x4017194e5d5b24ea              # double 5.7747130000000002
	.quad	0x40148424a276b7ed              # double 5.1290459999999998
	.quad	0x4012ebfe7e1fc090              # double 4.7304630000000003
	.quad	0x40154852b4d8ba41              # double 5.3206280000000001
	.quad	0x3feb38f57f737da6              # double 0.85070299999999999
	.quad	0x40235e0bd44998d0              # double 9.6836839999999995
	.quad	0x3ff95bf26f1dc50d              # double 1.584948
	.quad	0x40114c660a201472              # double 4.3246079999999996
	.quad	0x4023831465e89225              # double 9.7560149999999996
	.quad	0x4010f63a5c1c6089              # double 4.2404570000000001
	.quad	0x401f7c486ad2dcb1              # double 7.8713699999999997
	.quad	0x401430ea18372e6a              # double 5.0477679999999996
	.quad	0x4015f96af038e2a0              # double 5.4935720000000003
	.quad	0x40101f1a5ca29846              # double 4.0303740000000001
	.quad	0x401e36961c36976c              # double 7.5533070000000002
	.quad	0x400c033f85510d39              # double 3.5015860000000001
	.quad	0x400298c32a8c9b84              # double 2.3245909999999999
	.quad	0x40236a20ff540896              # double 9.7072830000000003
	.quad	0x40194016ce789e77              # double 6.3125869999999997
	.quad	0x401c65e2478854ce              # double 7.0994960000000003
	.quad	0x4022b4eb56fb8f58              # double 9.353358
	.quad	0x40177b9170d62bf1              # double 5.8706719999999999
	.quad	0x40064ab042528ae7              # double 2.7864689999999999
	.quad	0x3fd18b86b15f88fd              # double 0.27414100000000002
	.quad	0x3ff430d844d013a9              # double 1.261925
	.quad	0x4017a29cbab649d4              # double 5.9088010000000004
	.quad	0x401b5ece5710880e              # double 6.8425840000000004
	.quad	0x40154e8815e39714              # double 5.3266910000000003
	.quad	0x4006f2e1ef73c0c2              # double 2.868595
	.quad	0x401834217d2849cb              # double 6.0509089999999999
	.quad	0x401004e379b77c03              # double 4.0047740000000003
	.quad	0x401f31e57d9dba91              # double 7.7987270000000004
	.quad	0x40065458cd20afa3              # double 2.791185
	.quad	0x40217db78cc9a77e              # double 8.7455409999999993
	.quad	0x401f3bde3fbbd7b2              # double 7.808465
	.quad	0x401482b4959e6256              # double 5.1276419999999998
	.quad	0x4002b1d9b1b79d91              # double 2.3368410000000002
	.quad	0x3ffa54e3bcd35a86              # double 1.6457250000000001
	.quad	0x4003bd4306e5cd4f              # double 2.4674130000000001
	.quad	0x402070e6299524c0              # double 8.2205060000000003
	.quad	0x4010d955b4677b39              # double 4.2122409999999997
	.quad	0x4021a754d1e96c40              # double 8.8268190000000004
	.quad	0x3ff96b463497b741              # double 1.5886899999999999
	.quad	0x4014ea1986b9c305              # double 5.2286130000000002
	.quad	0x401a4b78cc9a77e6              # double 6.5737030000000001
	.quad	0x3fff436eb4e98138              # double 1.9539629999999999
	.quad	0x402360fc2eba27af              # double 9.6894240000000007
	.quad	0x401960639d5e4a38              # double 6.3441299999999998
	.quad	0x40175614163779ea              # double 5.8340610000000002
	.quad	0x3fb3727136a400fc              # double 0.075965000000000005
	.quad	0x3ff67bf2f5558213              # double 1.4052610000000001
	.quad	0x4014e0ce0b912dba              # double 5.2195359999999997
	.quad	0x4012c8a979e16d6e              # double 4.6959590000000002
	.quad	0x402251c27e953155              # double 9.1596869999999999
	.quad	0x4023a837b4a2339c              # double 9.8285499999999998
	.quad	0x402130f6273929ed              # double 8.5956279999999996
	.quad	0x4013b27b2cc70868              # double 4.9242980000000003
	.quad	0x400a2a9691a75cd1              # double 3.2707950000000001
	.quad	0x4022242f837b4a23              # double 9.0706749999999996
	.quad	0x4010e569b17481b2              # double 4.2240359999999999
	.quad	0x4014c77af640639d              # double 5.1948049999999997
	.quad	0x40176c864883fd50              # double 5.8559809999999999
	.quad	0x402317fac1d29dc7              # double 9.5468349999999997
	.quad	0x3fe5099bf5946c33              # double 0.65742299999999998
	.quad	0x4002cc8f75536934              # double 2.3498830000000002
	.quad	0x401d9f212d773190              # double 7.4054000000000002
	.quad	0x3feb74f50a02b841              # double 0.85802699999999998
	.quad	0x3fee12f4cf4a558f              # double 0.93981400000000004
	.quad	0x401ff187a4a48f97              # double 7.9858690000000001
	.quad	0x3ffc3ded6ba8c587              # double 1.7651190000000001
	.quad	0x40180f345069a4df              # double 6.0148479999999998
	.quad	0x3ffb254e6e221c8a              # double 1.6966079999999999
	.quad	0x3fbd2bb23571d1d4              # double 0.11394799999999999
	.quad	0x3fb9b39e279dd3bb              # double 0.100397
	.quad	0x4019c0192a737111              # double 6.4375960000000001
	.quad	0x40144b6b2af14552              # double 5.0736509999999999
	.quad	0x4019311904b3c3e7              # double 6.2979469999999997
	.quad	0x401d84f3ba775fb3              # double 7.3798360000000001
	.quad	0x40155474d9c6b053              # double 5.3324769999999999
	.quad	0x3fe35c0fcb4f1e4b              # double 0.60498799999999997
	.quad	0x401636c58eeae9ee              # double 5.5534879999999998
	.quad	0x3fcdd7342edbb59e              # double 0.23313
	.quad	0x3ffab6b09635610b              # double 1.669602
	.quad	0x40178aa0cae642c0              # double 5.8853790000000004
	.quad	0x4020e5441355475a              # double 8.4477849999999997
	.quad	0x40135b4916ca46e1              # double 4.8391460000000004
	.quad	0x402210bbd3804535              # double 9.0326830000000005
	.quad	0x40202f357e670e2c              # double 8.0922049999999998
	.quad	0x40222503fb374363              # double 9.0722959999999997
	.quad	0x3ff2495bff04577e              # double 1.1429100000000001
	.quad	0x402229628cbd1245              # double 9.0808300000000006
	.quad	0x4021f955714b9cb7              # double 8.9869800000000009
	.quad	0x402041ef30a4e37a              # double 8.1287780000000005
	.quad	0x402173cba3012168              # double 8.7261629999999997
	.quad	0x4021102f0e0a84be              # double 8.5316089999999996
	.quad	0x4006581e8a2ec28b              # double 2.7930269999999999
	.quad	0x3ff2da4ce8101f32              # double 1.178296
	.quad	0x4020b5f71eafee70              # double 8.3554010000000005
	.quad	0x4022529f59ccfaf0              # double 9.1613720000000001
	.quad	0x3fe5ef34d6a161e5              # double 0.68545
	.quad	0x40173eabbcb1cc96              # double 5.8112019999999998
	.quad	0x401b1c4651f3e89b              # double 6.7776120000000004
	.quad	0x40116d7cf5f4e443              # double 4.356922
	.quad	0x4009dd73c9257860              # double 3.2331310000000002
	.quad	0x401773eaf6837f7c              # double 5.8632010000000001
	.quad	0x401355b1422ccb3a              # double 4.8336839999999999
	.quad	0x400237353b4b2fa9              # double 2.2769569999999999
	.quad	0x4012dee84ad794a7              # double 4.7176830000000001
	.quad	0x401f612dba4d6e48              # double 7.8449010000000001
	.quad	0x4011a48b65237048              # double 4.4106880000000004
	.quad	0x40220be3193f6c27              # double 9.0232170000000007
	.quad	0x4018f80303c07ee1              # double 6.2421990000000003
	.quad	0x4020b297bfa4c61e              # double 8.3488140000000008
	.quad	0x402084985f06f694              # double 8.2589749999999995
	.quad	0x401df76e1deacc92              # double 7.4916309999999999
	.quad	0x4013cb6e0d23d4f1              # double 4.9486619999999997
	.quad	0x4019543aeab7995f              # double 6.3322560000000001
	.quad	0x40101feac42e989a              # double 4.0311690000000002
	.quad	0x40178ffa7eb6bf44              # double 5.8906039999999997
	.quad	0x401551c9f72f76e6              # double 5.3298719999999999
	.quad	0x4022995b9a5a89b9              # double 9.2995269999999994
	.quad	0x402392fad6cb5350              # double 9.7870699999999999
	.quad	0x4010fb320535c9e6              # double 4.2453079999999996
	.quad	0x402382fcefaa4767              # double 9.7558360000000003
	.quad	0x401868a372606fac              # double 6.1021859999999997
	.quad	0x4023ad36933a0408              # double 9.8383070000000003
	.quad	0x401097f7be121ee6              # double 4.1484059999999996
	.quad	0x40106e075f6fd220              # double 4.10745
	.quad	0x402356fd438d1d8a              # double 9.6699009999999994
	.quad	0x401b876d97b30f8c              # double 6.8822539999999996
	.quad	0x401d82d948dc11e4              # double 7.3777819999999998
	.quad	0x4018841cc532a498              # double 6.129016
	.quad	0x4012da558ea7ce10              # double 4.7132170000000002
	.quad	0x4020018090b417ca              # double 8.0029339999999998
	.quad	0x40227f71a7e30878              # double 9.2489139999999991
	.quad	0x3fcf22b7baecd078              # double 0.24324699999999999
	.quad	0x4022cfc04c8bc9cd              # double 9.4057639999999995
	.quad	0x401bcce67d77fae3              # double 6.9500979999999997
	.quad	0x402139884c6a3bde              # double 8.612368
	.quad	0x40104963dc486ad3              # double 4.0716700000000001
	.quad	0x401b04d7f0ed3d86              # double 6.7547300000000003
	.quad	0x3fe4ec892ab68cef              # double 0.65387399999999996
	.quad	0x40204775d9a0f0a6              # double 8.1395710000000001
	.quad	0x401a7ec99f1ae2da              # double 6.6238159999999997
	.quad	0x40183f37b8d3f184              # double 6.0617359999999998
	.quad	0x401b67f2c3009b30              # double 6.8515119999999996
	.quad	0x401ddb8fde2ef4e0              # double 7.4644159999999999
	.quad	0x401491b79d909f1f              # double 5.1423019999999999
	.quad	0x3fe43ff04577d955              # double 0.63280499999999995
	.quad	0x401fb39f340d4dc6              # double 7.9254119999999997
	.quad	0x3fe33ae2541d8e86              # double 0.60093799999999997
	.quad	0x402094a07f66e86c              # double 8.2902869999999992
	.quad	0x401df4ce3de6149c              # double 7.4890679999999996
	.quad	0x40194ddce7cd0353              # double 6.3260379999999996
	.quad	0x400b766277c45cbc              # double 3.4328050000000001
	.quad	0x4020ce1b2a27f1b7              # double 8.4025510000000008
	.quad	0x40037024f6598e11              # double 2.4297580000000001
	.quad	0x401eec560c7c0f45              # double 7.7307969999999999
	.quad	0x401b8ea91d9b1b7a              # double 6.8893170000000001
	.quad	0x3ff59b38d60a6330              # double 1.3503959999999999
	.quad	0x3fd0d8d36b4c7f35              # double 0.26323400000000002
	.quad	0x40219cbec679cc75              # double 8.8061430000000005
	.quad	0x401e9d75e2046c76              # double 7.6537699999999997
	.quad	0x4021fc877681669d              # double 8.9932210000000001
	.quad	0x401b3fed634549b6              # double 6.8124289999999998
	.quad	0x400a699bf5946c33              # double 3.3015669999999999
	.quad	0x4017aa17b0f6ad71              # double 5.9161060000000001
	.quad	0x3ff744a83b1d0c80              # double 1.4542619999999999
	.quad	0x400409289dadfb50              # double 2.5044719999999998
	.quad	0x402194e4649906cd              # double 8.7908050000000006
	.quad	0x400571d57ff9b563              # double 2.6805829999999999
	.quad	0x401a3b09e98dcdb3              # double 6.5576549999999996
	.quad	0x4019a7c02afdda8c              # double 6.4138190000000002
	.quad	0x40203c0420f6f08d              # double 8.1172190000000004
	.quad	0x3ffdcaa00192a737              # double 1.861969
	.quad	0x400b5bd273d5bab2              # double 3.419835
	.quad	0x4015997353b4b2fb              # double 5.3998540000000004
	.quad	0x401a5866a11ec919              # double 6.5863290000000001
	.quad	0x3ffb1e7d9988d2a2              # double 1.694944
	.quad	0x4013f7fbacb42891              # double 4.9921709999999999
	.quad	0x40148f0a1be2b496              # double 5.1396870000000003
	.quad	0x401acf587d6f9768              # double 6.7024860000000004
	.quad	0x40118e6b3fe9fadb              # double 4.389081
	.quad	0x401fa95f676ea423              # double 7.9154030000000004
	.quad	0x4015520fb224aada              # double 5.3301379999999998
	.quad	0x4020ded15ad106ee              # double 8.4351909999999997
	.quad	0x3ff72478854cdb7b              # double 1.446404
	.quad	0x3fd1d8f0c77dd873              # double 0.278866
	.quad	0x4007fd590c0ad03e              # double 2.9987050000000002
	.quad	0x4003aa4db163baba              # double 2.4581559999999998
	.quad	0x4020c12f4cf4a559              # double 8.3773140000000001
	.quad	0x400855f676ea4229              # double 3.0419740000000002
	.quad	0x4023bb4ca0c282c7              # double 9.8658190000000001
	.quad	0x4011dda16616b54e              # double 4.4664359999999999
	.quad	0x401e302e6644d877              # double 7.5470519999999998
	.quad	0x401c85247cb70ac4              # double 7.1300220000000003
	.quad	0x3fd3096feb4a6656              # double 0.29745100000000002
	.quad	0x401e99cae21101b0              # double 7.650188
	.quad	0x3fde25d4a5df223a              # double 0.47105900000000001
	.quad	0x401cad74d594f26b              # double 7.1693910000000001
	.quad	0x3fdbb2e9ccb7d417              # double 0.43279499999999999
	.quad	0x4001ff81a5870da6              # double 2.2497590000000001
	.quad	0x4019fd2d87f88766              # double 6.4972440000000002
	.quad	0x40230554fbdad752              # double 9.5104140000000008
	.quad	0x401f37318fc50481              # double 7.8038999999999996
	.quad	0x4022b5b2702a3487              # double 9.3548770000000001
	.quad	0x400d955582129457              # double 3.6979169999999999
	.quad	0x3ff22da554b8bef9              # double 1.136144
	.quad	0x4018dcc144028e50              # double 6.2155810000000002
	.quad	0x400c917df19d66ae              # double 3.5710410000000001
	.quad	0x40003d6adf71eaff              # double 2.029989
	.quad	0x401621426fe718a8              # double 5.5324799999999996
	.quad	0x401056abde3fbbd8              # double 4.0846400000000003
	.quad	0x40220edbd72bcb60              # double 9.0290210000000002
	.quad	0x401297e90ff97247              # double 4.6483499999999998
	.quad	0x401b5b9dc2f405f7              # double 6.8394690000000002
	.quad	0x400aa463065f9592              # double 3.3302670000000001
	.quad	0x4020e28c586876e2              # double 8.4424770000000002
	.quad	0x3fff3221858bc59c              # double 1.9497390000000001
	.quad	0x3fe5cc447c30d307              # double 0.68118500000000004
	.quad	0x4021fb5ac8a37260              # double 8.9909269999999992
	.quad	0x3ff03f4dbdf8f473              # double 1.015455
	.quad	0x402225bf0563ed0f              # double 9.0737229999999993
	.quad	0x3faaeec7c957cd46              # double 0.052602999999999997
	.quad	0x401dcc1b10fd7e46              # double 7.4493220000000004
	.quad	0x3ff9376f6d762520              # double 1.5760339999999999
	.quad	0x400b503a7546d3fa              # double 3.414174
	.quad	0x3ffc00b135979182              # double 1.7501690000000001
	.quad	0x401d11001d5c3159              # double 7.2666019999999998
	.quad	0x4017cf26f1dc50ce              # double 5.9522969999999997
	.quad	0x40076aae297396d1              # double 2.9270900000000002
	.quad	0x3fdccfaacd9e83e4              # double 0.45017499999999999
	.quad	0x401d993037d63023              # double 7.3995980000000001
	.quad	0x4010085b18548a9c              # double 4.0081600000000002
	.quad	0x401d323fab10ba62              # double 7.2990709999999996
	.quad	0x4023757be9856a38              # double 9.7294610000000005
	.quad	0x4004d646ae3a3a8e              # double 2.6046269999999998
	.quad	0x4019f963992c8c50              # double 6.493544
	.quad	0x4022f71cfbb94962              # double 9.4826429999999995
	.quad	0x3fe2ae2fbe33acd6              # double 0.58376300000000003
	.quad	0x4005aa8da7f3cf70              # double 2.708278
	.quad	0x4023bb6f3b213e3e              # double 9.8660829999999997
	.quad	0x3ff18051c9f72f77              # double 1.093828
	.quad	0x4022a1129888f862              # double 9.3145950000000006
	.quad	0x401fa83f0bae89ec              # double 7.9143030000000003
	.quad	0x401e176683c297c0              # double 7.5228520000000003
	.quad	0x401fdf9ebe9c8861              # double 7.9683789999999996
	.quad	0x40115eeb702602c9              # double 4.342695
	.quad	0x4023dbc903ea704c              # double 9.9292680000000004
	.quad	0x40221ea4ca4f440b              # double 9.0598510000000001
	.quad	0x3ffba81882adc4ca              # double 1.728539
	.quad	0x400f4bd4cfd08d4c              # double 3.9120270000000001
	.quad	0x4013ac93ea2d2fe4              # double 4.918533
	.quad	0x40218b6f5caf2d80              # double 8.7723340000000007
	.quad	0x40165d8665e02ea9              # double 5.5913329999999997
	.quad	0x401380364388ebcc              # double 4.8752069999999996
	.quad	0x4020eb16a055757d              # double 8.4591569999999994
	.quad	0x3ffee7c286f8ad25              # double 1.9315819999999999
	.quad	0x400e7ce4a7b4e54f              # double 3.8109829999999998
	.quad	0x4000d851eb851eb8              # double 2.1056249999999999
	.quad	0x3ff179d2bf551505              # double 1.0922419999999999
	.quad	0x402309711947cfa2              # double 9.5184409999999993
	.quad	0x3fedf01322f27350              # double 0.93555600000000005
	.quad	0x4022eefb6dca07f6              # double 9.4667619999999992
	.quad	0x3ff9ab0b7c3504c5              # double 1.6042590000000001
	.quad	0x4004b52a84380885              # double 2.58846
	.quad	0x4013af98b71b8aa0              # double 4.921481
	.quad	0x3ff853b3a68b19a4              # double 1.520435
	.quad	0x40181a43bb40b34e              # double 6.0256489999999996
	.quad	0x40146ff609dcf894              # double 5.109337
	.quad	0x400f0c81d3aa36a0              # double 3.8811070000000001
	.quad	0x3ff20f9a06a6e32e              # double 1.128809
	.quad	0x400e3b0142f61ed6              # double 3.7788110000000001
	.quad	0x40153b4edb2f661f              # double 5.3079179999999999
	.quad	0x4023384c8bc9cd3e              # double 9.6099589999999999
	.quad	0x3fec562bf11f926c              # double 0.88551899999999994
	.quad	0x40215a34eb9a176e              # double 8.6761850000000003
	.quad	0x400291bac2df0d41              # double 2.3211569999999999
	.quad	0x4018b2849cb252ce              # double 6.174334
	.quad	0x4010c9a88ace24bc              # double 4.1969320000000003
	.quad	0x40171dc11e42e126              # double 5.7790569999999999
	.quad	0x40122c53b0813cac              # double 4.5432880000000004
	.quad	0x40226ac8c5004fb1              # double 9.2085629999999998
	.quad	0x4007922c01e68a0d              # double 2.9463729999999999
	.quad	0x3ff6482e019b0ab3              # double 1.392622
	.quad	0x4004b886594af4f1              # double 2.5901000000000001
	.quad	0x401f31f687b139c9              # double 7.7987919999999997
	.quad	0x4009330f8c64fdb1              # double 3.1499320000000002
	.quad	0x3fd3f91600f34507              # double 0.31207800000000002
	.quad	0x401da8b934699418              # double 7.4147689999999997
	.quad	0x401aced6fda836eb              # double 6.7019919999999997
	.quad	0x4019f5011904b3c4              # double 6.4892620000000001
	.quad	0x400ef80cb6c7a7ca              # double 3.8711180000000001
	.quad	0x3fe88e79aae6c8f7              # double 0.76739199999999996
	.quad	0x40116a6b93ccd0ff              # double 4.3539260000000004
	.quad	0x3fd136c58eeae9ee              # double 0.26896799999999998
	.quad	0x40208f4f2f123c43              # double 8.2799010000000006
	.quad	0x3fe3c26138fffbce              # double 0.61747799999999997
	.quad	0x400b3a415f45e0b5              # double 3.4034450000000001
	.quad	0x3ff0a60a2014727e              # double 1.040537
	.quad	0x402214ae429e0a42              # double 9.0403920000000006
	.quad	0x3ff6b641700cd856              # double 1.4194960000000001
	.quad	0x40208b0f27bb2fec              # double 8.2715999999999993
	.quad	0x401301a60d4562e1              # double 4.7516100000000003
	.quad	0x4022ddbccaf709b7              # double 9.4330809999999996
	.quad	0x3ffa0a17b0f6ad71              # double 1.627464
	.quad	0x3fe025accd53048a              # double 0.50459900000000002
	.quad	0x3ff2314a90470a81              # double 1.1370340000000001
	.quad	0x402124b1cc964628              # double 8.571669
	.quad	0x4022277bbf93ff26              # double 9.0771160000000002
	.quad	0x3fd002ff8ec0f883              # double 0.25018299999999999
	.quad	0x3fd16e19b90ea9e7              # double 0.272345
	.quad	0x4007cf5f4e4430b1              # double 2.9762559999999998
	.quad	0x3ff04a6fc58ab92c              # double 1.018173
	.quad	0x4003b43e963dc487              # double 2.4630100000000001
	.quad	0x401643636f3b213e              # double 5.5658089999999998
	.quad	0x401a976577531db4              # double 6.6478479999999998
	.quad	0x3f78b0d0edc3bd5a              # double 0.0060280000000000004
	.quad	0x40146e9ccb7d4174              # double 5.1080199999999998
	.quad	0x4011cc88a47ecfea              # double 4.4497400000000003
	.quad	0x402278576cce5f74              # double 9.2350419999999999
	.quad	0x4004a8e4fb97bb73              # double 2.582468
	.quad	0x4022025f84cad57c              # double 9.0046350000000003
	.quad	0x4023623a29c779a7              # double 9.6918500000000005
	.quad	0x3ffdc5553ef6b5d4              # double 1.8606769999999999
	.quad	0x40177c3c5bd0e12f              # double 5.8713240000000004
	.quad	0x40229d32c625e99f              # double 9.3070280000000007
	.quad	0x40143489d27c3937              # double 5.0513070000000004
	.quad	0x400aeed2cbea4ebe              # double 3.3666130000000001
	.quad	0x402009b38d60a633              # double 8.018948
	.quad	0x401825946c332f01              # double 6.0366989999999996
	.quad	0x402178205ff1d81f              # double 8.7346219999999999
	.quad	0x3fc9df548ecd8dbd              # double 0.202128
	.quad	0x3fe61e321a2e7f6f              # double 0.69118599999999997
	.quad	0x40028f0307f23cc9              # double 2.3198300000000001
	.quad	0x40014685db76b3bc              # double 2.1594350000000002
	.quad	0x3fe28635a426bb56              # double 0.57888300000000004
	.quad	0x40119146a1a500d6              # double 4.3918710000000001
	.quad	0x3fda69984a0e410b              # double 0.41269499999999998
	.quad	0x3fd0fe3b03e20cd0              # double 0.265517
	.quad	0x4001356d19dece57              # double 2.151087
	.quad	0x401a6115592d98bf              # double 6.5948079999999996
	.quad	0x40160e1c9b413986              # double 5.5137809999999998
	.quad	0x40179e27179bfdf8              # double 5.9044460000000001
	.quad	0x400ccdd69d30270f              # double 3.6005069999999999
	.quad	0x3ff970ef566490a3              # double 1.5900719999999999
	.quad	0x400554e2b063e07a              # double 2.6664479999999999
	.quad	0x400c1e00d1b71759              # double 3.5146500000000001
	.quad	0x4021cd5000c9539c              # double 8.9010010000000008
	.quad	0x400429efd86a8fc1              # double 2.5204770000000001
	.quad	0x3fe64f4a558ea7ce              # double 0.69717899999999999
	.quad	0x4020b1231c64ba95              # double 8.3459710000000005
	.quad	0x3fee2b7fe08aefb3              # double 0.94281000000000004
	.quad	0x402043ccaf709b74              # double 8.1324210000000007
	.quad	0x401ba47e06961c37              # double 6.9106370000000004
	.quad	0x4016c75b3e1437c5              # double 5.6946839999999996
	.quad	0x40226736ef8055fc              # double 9.2015910000000005
	.quad	0x401458dbcec84f90              # double 5.0867760000000004
	.quad	0x3fe127589efd86a9              # double 0.536053
	.quad	0x400c5d9ec7000432              # double 3.5457130000000001
	.quad	0x40120b9e492bc2fc              # double 4.5113459999999996
	.quad	0x401824091c087443              # double 6.0351910000000002
	.quad	0x40154897635e742a              # double 5.3208900000000003
	.quad	0x40141bd9018e7579              # double 5.0271949999999999
	.quad	0x401f9cd24e160d88              # double 7.9031459999999995
	.quad	0x3ff50c7f34938583              # double 1.3155509999999999
	.quad	0x3fe346e6d9be4cd7              # double 0.60240499999999997
	.quad	0x4013220afa2f05a7              # double 4.783245
	.quad	0x40215e846a5d6bec              # double 8.6846040000000002
	.quad	0x401f38576cce5f74              # double 7.805021
	.quad	0x40135f566490a351              # double 4.8431030000000002
	.quad	0x401120a8d21bc127              # double 4.2818940000000003
	.quad	0x3ffde0b912dba4d7              # double 1.867364
	.quad	0x401277357e670e2c              # double 4.6164149999999999
	.quad	0x40239e68e3ef2841              # double 9.8093939999999992
	.quad	0x401df3eaf6837f7c              # double 7.4882010000000001
	.quad	0x3fdec422036006d1              # double 0.48072100000000001
	.quad	0x4022a7e6f71a7e31              # double 9.3279340000000008
	.quad	0x3ff6f6f2a5a469d7              # double 1.43529
	.quad	0x401b81212513b5bf              # double 6.8761029999999996
	.quad	0x4015327e0ef99807              # double 5.299309
	.quad	0x401c938b8ae31d71              # double 7.1440869999999999
	.quad	0x402248068db8bac7              # double 9.1406749999999999
	.quad	0x4021d886594af4f1              # double 8.9229000000000003
	.quad	0x40209184a0e410b6              # double 8.2842149999999997
	.quad	0x40198589acbc8c0d              # double 6.3804080000000001
	.quad	0x402281439de481f5              # double 9.2524689999999996
	.quad	0x3fcb33ebbfd71b04              # double 0.21252199999999999
	.quad	0x400cbaceee0f3cb4              # double 3.591215
	.quad	0x401b17eed45e9186              # double 6.7733720000000002
	.quad	0x4022dde5f30e7ff6              # double 9.4333950000000009
	.quad	0x402336fd651b0ccc              # double 9.6074020000000004
	.quad	0x3fddd1b2e59af9ec              # double 0.465924
	.quad	0x40202651f3e89a89              # double 8.0748440000000006
	.quad	0x3ffdae02a77a2ced              # double 1.854983
	.quad	0x4003647d3d4280ae              # double 2.424067
	.quad	0x40179c508b32ce89              # double 5.9026509999999996
	.quad	0x401b46df82b1f688              # double 6.8192120000000003
	.quad	0x3ff50f3a9b068124              # double 1.3162180000000001
	.quad	0x402024925785f8d3              # double 8.0714290000000002
	.quad	0x401e8c0f88333fc8              # double 7.6367779999999996
	.quad	0x400a3dfb9389b520              # double 3.280265
	.quad	0x4021eb743632c1f4              # double 8.9598709999999996
	.quad	0x3fd71c25d074213a              # double 0.361093
	.quad	0x40230473abc94706              # double 9.5086949999999995
	.quad	0x4019f77c45cbbc2c              # double 6.4916850000000004
	.quad	0x4010494ff0025bfb              # double 4.0715940000000002
	.quad	0x40227de1e2de8709              # double 9.2458639999999992
	.quad	0x401bcd2d87f88766              # double 6.9503690000000002
	.quad	0x3fe3f98fa376922e              # double 0.62421400000000005
	.quad	0x4005ea5614df8b15              # double 2.7394219999999998
	.quad	0x3ff3d422ccb3a259              # double 1.2392909999999999
	.quad	0x40064aec0724b76f              # double 2.7865829999999998
	.quad	0x40218880303c07ee              # double 8.7666029999999999
	.quad	0x3fea5de58e64b231              # double 0.82396199999999997
	.quad	0x4019c2ba16e7a312              # double 6.4401630000000001
	.quad	0x3fd443137b07075b              # double 0.31659399999999999
	.quad	0x4014aa2df9378ee3              # double 5.1661910000000004
	.quad	0x400503704790b84a              # double 2.6266790000000002
	.quad	0x3fd3a6dacabc5155              # double 0.30705900000000003
	.quad	0x3fe54caf709b738e              # double 0.66561099999999995
	.quad	0x401dbb5f5f0b2852              # double 7.4329809999999998
	.quad	0x400351e4b44a1f08              # double 2.414987
	.quad	0x3ff1ef87ad080b67              # double 1.1209789999999999
	.quad	0x40106f66a5508701              # double 4.1087899999999999
	.quad	0x401fc4fe79ee02a7              # double 7.9423769999999995
	.quad	0x400107136a400fbb              # double 2.1284550000000002
	.quad	0x401ae07a28bb0a2d              # double 6.7192160000000003
	.quad	0x402106fcbd556085              # double 8.5136470000000006
	.quad	0x4021b87e38eb0319              # double 8.8603380000000005
	.quad	0x3fca86d71f36262d              # double 0.20724000000000001
	.quad	0x402075413122b7bb              # double 8.2290130000000001
	.quad	0x401fd465e8922531              # double 7.9574199999999999
	.quad	0x4013022291fb3fa7              # double 4.7520850000000001
	.quad	0x3ffab6c7a7c9de05              # double 1.669624
	.quad	0x401a7a098915bdd7              # double 6.6191769999999996
	.quad	0x3ffa1320d9945b6c              # double 1.62967
	.quad	0x3fe559a73b42cc2d              # double 0.66719399999999995
	.quad	0x400306bbdbe3c105              # double 2.378288
	.quad	0x4010ace5f7403dde              # double 4.1688460000000003
	.quad	0x401f5b599aa60914              # double 7.8392090000000003
	.quad	0x4013946bacf74470              # double 4.8949420000000003
	.quad	0x4022ca6bd6e8af81              # double 9.3953539999999993
	.quad	0x401d8b68cef672b9              # double 7.3861420000000004
	.quad	0x3fcfdfdac68a936c              # double 0.24901899999999999
	.quad	0x3ff0d3f9e7b80a9e              # double 1.051752
	.quad	0x401b137da61e0c5b              # double 6.7690340000000004
	.quad	0x401945942917507f              # double 6.3179480000000003
	.quad	0x3ffc8a5bd944aa54              # double 1.783779
	.quad	0x3ffe9373affb04ee              # double 1.9109989999999999
	.quad	0x40218b93682730c6              # double 8.7726089999999992
	.quad	0x4002d5903a7546d4              # double 2.354279
	.quad	0x3fc667839cd8127b              # double 0.175034
	.quad	0x3ff7cbe835dedf1e              # double 1.487282
	.quad	0x3fe7ae9ab29e4d5e              # double 0.74006400000000006
	.quad	0x401b7c8c0ce91c8f              # double 6.8716280000000003
	.quad	0x40104dba908a265f              # double 4.0759069999999999
	.quad	0x3ffe11a543f1c758              # double 1.879308
	.quad	0x4002944d44567126              # double 2.3224130000000001
	.quad	0x3fea404c8bc9cd3e              # double 0.82034899999999999
	.quad	0x4006110342aa9f7b              # double 2.7583069999999998
	.quad	0x4017458d1526d8b2              # double 5.8179210000000001
	.quad	0x40208772d5e071c5              # double 8.2645479999999996
	.quad	0x4005bd96e9bbf0dc              # double 2.7175729999999998
	.quad	0x400af8090b417ca2              # double 3.371111
	.quad	0x4004c1e57d9dba91              # double 2.5946760000000002
	.quad	0x401bbc48f10a99b7              # double 6.933872
	.quad	0x40191263d816aceb              # double 6.2679590000000003
	.quad	0x3fee899bf5946c33              # double 0.95429799999999998
	.quad	0x4015b3c70c996b76              # double 5.4255639999999996
	.quad	0x3ffa17d2849cb253              # double 1.630816
	.quad	0x3fd71105e1c15098              # double 0.36041400000000001
	.quad	0x4002e2f37fbefd00              # double 2.3608159999999998
	.quad	0x4012f209edbf8b9c              # double 4.7363660000000003
	.quad	0x3ff16d4a1ad6451c              # double 1.0891820000000001
	.quad	0x4010ebd87b56b873              # double 4.2303179999999996
	.quad	0x400916feb4a6655a              # double 3.136228
	.quad	0x40211fb5286b5914              # double 8.5619289999999992
	.quad	0x401e8b86f47b677f              # double 7.6362569999999996
	.quad	0x40191ab21815a07b              # double 6.2760699999999998
	.quad	0x400b54e4c942d491              # double 3.416452
	.quad	0x3ff660589acbc8c1              # double 1.398522
	.quad	0x3fdd5f138bcdfefc              # double 0.458928
	.quad	0x400a0d794a6eb91b              # double 3.2565789999999999
	.quad	0x40223c1df3300de5              # double 9.1174160000000004
	.quad	0x401b8a6d26740810              # double 6.8851820000000004
	.quad	0x401cf69057d1782d              # double 7.2407849999999998
	.quad	0x3fd40fadf2ecf206              # double 0.31345699999999999
	.quad	0x401680303c07ee0b              # double 5.625184
	.quad	0x401e1137f38c5437              # double 7.5168150000000002
	.quad	0x4012927913e81451              # double 4.6430400000000001
	.quad	0x401656a93f290abb              # double 5.5846299999999998
	.quad	0x400ecdab9f559b3d              # double 3.850425
	.quad	0x4000ed6d3b6cbd98              # double 2.1159309999999998
	.quad	0x400f862e4d1a6506              # double 3.940518
	.quad	0x4021aef9db22d0e5              # double 8.8417499999999993
	.quad	0x3fff02e33eff1950              # double 1.938205
	.quad	0x3fdd37a3db3bfb59              # double 0.45652100000000001
	.quad	0x401b62107b784663              # double 6.8457660000000002
	.quad	0x3ff4dd7a99fa11a9              # double 1.3040719999999999
	.quad	0x3ff11eafee6fb4c4              # double 1.0699920000000001
	.quad	0x401546c8b4395810              # double 5.3191249999999997
	.quad	0x4021060bd44998d0              # double 8.5118089999999995
	.quad	0x4019cd7fd82773e2              # double 6.4506829999999997
	.quad	0x400c7944aa53fc01              # double 3.5592130000000002
	.quad	0x402102dbc664d3bf              # double 8.5055829999999997
	.quad	0x3fe168c0485a0be5              # double 0.54403699999999999
	.quad	0x402221554fbdad75              # double 9.0651039999999998
	.quad	0x40207f29b280f12c              # double 8.2483649999999997
	.quad	0x40219d451fc4c166              # double 8.8071680000000008
	.quad	0x401dc81a9b8cb8e1              # double 7.4454140000000004
	.quad	0x3fe986d0d49949e9              # double 0.79770700000000005
	.quad	0x40035b30f8c64fdb              # double 2.419527
	.quad	0x4023e61dc93ea2d3              # double 9.949446
	.quad	0x400d0949a5657fb7              # double 3.6295350000000002
	.quad	0x3ffbe0956c0d6f54              # double 1.7423299999999999
	.quad	0x4013326aa8eb4635              # double 4.7992350000000004
	.quad	0x4001620ddc619546              # double 2.1728779999999999
	.quad	0x401fd20535c9e668              # double 7.9550979999999995
	.quad	0x3feeb649d388a8b1              # double 0.95975200000000004
	.quad	0x4004527136a400fc              # double 2.5402550000000002
	.quad	0x4019fd5a5b9628cc              # double 6.4974150000000002
	.quad	0x401a934e7685985b              # double 6.6438540000000001
	.quad	0x400731afc04c8bca              # double 2.8992610000000001
	.quad	0x4002fa8ef77f27fe              # double 2.3723429999999999
	.quad	0x3fbe065300581494              # double 0.117284
	.quad	0x401f2cbe61cffeb0              # double 7.7936949999999996
	.quad	0x400b19157abb8801              # double 3.387248
	.quad	0x400fb8090b417ca2              # double 3.964861
	.quad	0x401976659d12cade              # double 6.3656220000000001
	.quad	0x401b40385c67dfe3              # double 6.8127149999999999
	.quad	0x400e9ce746cb966c              # double 3.826613
	.quad	0x4019f3e9a6f826ee              # double 6.4881960000000003
	.quad	0x4023236e0d23d4f1              # double 9.5691989999999993
	.quad	0x4008cd64d7f0ed3e              # double 3.1002900000000002
	.quad	0x402020c8cd63cb81              # double 8.0640319999999992
	.quad	0x3fe5bc968943e100              # double 0.67927099999999996
	.quad	0x4018ad566cf41f21              # double 6.1692749999999998
	.quad	0x400ab681ecd4aa11              # double 3.3391150000000001
	.quad	0x3fb2bc5154866a12              # double 0.073186000000000001
	.quad	0x3fbde75360d02470              # double 0.116811
	.quad	0x3ff5adc1a47a9e2c              # double 1.354921
	.quad	0x401b428a1dfb938a              # double 6.8149800000000003
	.quad	0x401ad927d45a5fc8              # double 6.7120660000000001
	.quad	0x40099be33acd5b68              # double 3.201117
	.quad	0x4006906a2b1704ff              # double 2.8205149999999999
	.quad	0x4023b499d0203e64              # double 9.8527360000000001
	.quad	0x400417d63022dd7b              # double 2.5116390000000002
	.quad	0x3febf8055fbb517a              # double 0.87402599999999997
	.quad	0x3fef51ac9afe1da8              # double 0.97872000000000003
	.quad	0x3ff49dc0db2702a3              # double 1.2885139999999999
	.quad	0x401783d96638433d              # double 5.8787589999999996
	.quad	0x3ff7d1ea78af3e47              # double 1.4887490000000001
	.quad	0x4001284e831ad213              # double 2.1446809999999998
	.quad	0x401eb17b5286b591              # double 7.6733219999999997
	.quad	0x400998793dd97f63              # double 3.1994500000000001
	.quad	0x40091860999dcb58              # double 3.1369030000000002
	.quad	0x40086011d3671ac1              # double 3.0469089999999999
	.quad	0x401615675579af19              # double 5.5209020000000004
	.quad	0x4020c7739f340d4e              # double 8.3895540000000004
	.quad	0x402317991bc55864              # double 9.5460899999999995
	.quad	0x40073b3e1437c569              # double 2.9039269999999999
	.quad	0x40157938151a4378              # double 5.3683779999999999
	.quad	0x401c6e8dda48b652              # double 7.1079629999999998
	.quad	0x40019afc8b0079a3              # double 2.2006770000000002
	.quad	0x400fb8ac18f81e8a              # double 3.9651719999999999
	.quad	0x4020f4eb56fb8f58              # double 8.4783580000000001
	.quad	0x4018761f5be5d9e4              # double 6.115354
	.quad	0x4009946dc5d63886              # double 3.1974749999999998
	.quad	0x401796c93a711516              # double 5.8972519999999999
	.quad	0x40172435ac8a3726              # double 5.785361
	.quad	0x4023d9cef240fa9c              # double 9.9254069999999998
	.quad	0x401125c28f5c28f6              # double 4.2868750000000002
	.quad	0x4022acb9cb6848bf              # double 9.3373550000000005
	.quad	0x4002733d29563a9f              # double 2.3062689999999999
	.quad	0x400e149e8815e397              # double 3.760068
	.quad	0x4022de054690de09              # double 9.4336339999999996
	.quad	0x401183c60029f16b              # double 4.3786849999999999
	.quad	0x40182a9478c868ba              # double 6.041582
	.quad	0x3ffb23a08398a655              # double 1.6961980000000001
	.quad	0x3ffd35cbff47735c              # double 1.825634
	.quad	0x401c8c14c660a201              # double 7.1367979999999998
	.quad	0x401a42b6f19934f0              # double 6.5651510000000002
	.quad	0x401c7543aeab7996              # double 7.1145160000000001
	.quad	0x402079cc96462802              # double 8.2378889999999991
	.quad	0x3fe9cbcad9ad85e0              # double 0.80612700000000003
	.quad	0x3fe82f038e29f9cf              # double 0.75573900000000005
	.quad	0x4021b816ce789e77              # double 8.8595489999999995
	.quad	0x402280b26394face              # double 9.2513609999999993
	.quad	0x4014991d9b1b79d9              # double 5.149527
	.quad	0x400fb763e4abe6a3              # double 3.9645459999999999
	.quad	0x400f71d25aab4741              # double 3.930577
	.quad	0x4013d733226c3b92              # double 4.9601559999999996
	.quad	0x40238411a11233df              # double 9.7579469999999997
	.quad	0x4015a02afdda8bd2              # double 5.4064139999999998
	.quad	0x4018c2b628459967              # double 6.1901479999999998
	.quad	0x3fe968c0485a0be5              # double 0.79403699999999999
	.quad	0x4017ed26b723ee1c              # double 5.9815930000000002
	.quad	0x4011a586ca89fc6e              # double 4.4116470000000003
	.quad	0x4014eda7b0b39192              # double 5.2320849999999997
	.quad	0x401b2cbd1244a622              # double 6.7936899999999998
	.quad	0x3fe61513f8db4891              # double 0.69007300000000005
	.quad	0x3ffc455219a847b2              # double 1.7669239999999999
	.quad	0x4016b2cfd8f0c77e              # double 5.6746210000000001
	.quad	0x401660374ff865d8              # double 5.5939610000000002
	.quad	0x40081f1f9acffa7f              # double 3.0151970000000001
	.quad	0x40161bddfc9ff92f              # double 5.5272139999999998
	.quad	0x401f4be553ac4f7f              # double 7.8241170000000002
	.quad	0x40173753a3ec02f3              # double 5.80403
	.quad	0x4019df72b4528284              # double 6.4682110000000002
	.quad	0x400c998aeb80ecfa              # double 3.5749719999999998
	.quad	0x402252f9873ffac2              # double 9.1620600000000003
	.quad	0x401f3a1511dffc54              # double 7.8067209999999996
	.quad	0x400c5354c122749f              # double 3.540689
	.quad	0x3fdf41ede1198aec              # double 0.48839900000000003
	.quad	0x3ff3c904f6dfc5ce              # double 1.236577
	.quad	0x4017c65e4606748e              # double 5.9437189999999998
	.quad	0x4017b985ad538ac2              # double 5.9311740000000004
	.quad	0x400d8c5b8dc55001              # double 3.6935340000000001
	.quad	0x3fd18bc9cd3e0bd4              # double 0.27415699999999998
	.quad	0x4002f48fd9fd36f8              # double 2.369415
	.quad	0x401a6864883fd502              # double 6.6019459999999999
	.quad	0x4021dcfbfc6540cc              # double 8.9316099999999991
	.quad	0x4012208205ff1d82              # double 4.5317460000000001
	.quad	0x401437edc7ef177a              # double 5.0546179999999996
	.quad	0x3ff1dc779a6b50b1              # double 1.116325
	.quad	0x3fcebbe4473cd573              # double 0.24010899999999999
	.quad	0x4020e6353f7ced91              # double 8.4496249999999993
	.quad	0x4019bb8b26394fad              # double 6.4331480000000001
	.quad	0x402373a4d6e47dc3              # double 9.7258669999999991
	.quad	0x40211f13cee9dd7f              # double 8.5606980000000004
	.quad	0x40124e3ac0c62e4d              # double 4.5763959999999999
	.quad	0x402215d63886594b              # double 9.0426500000000001
	.quad	0x4021a34699418506              # double 8.8188980000000008
	.quad	0x4001356191148fda              # double 2.151065
	.quad	0x400d3e931876188b              # double 3.655554
	.quad	0x40120677b395c422              # double 4.506316
	.quad	0x3fef1799e518f3ed              # double 0.97163100000000002
	.quad	0x401567f1b6912125              # double 5.3515079999999999
	.quad	0x3fd708b75ea67e84              # double 0.35990699999999998
	.quad	0x40160dfbd6a593a3              # double 5.5136560000000001
	.quad	0x400b16a6a012599f              # double 3.3860600000000001
	.quad	0x4019f31876188b11              # double 6.4873979999999998
	.quad	0x3fe1946c332f0175              # double 0.54936799999999997
	.quad	0x400d8528ae74f2f1              # double 3.6900189999999999
	.quad	0x3fdc8d477bbf93ff              # double 0.44612299999999999
	.quad	0x400c7640639d5e4a              # double 3.5577399999999999
	.quad	0x4021dd50225742dd              # double 8.9322520000000001
	.quad	0x400612c9d16fc9bc              # double 2.7591739999999998
	.quad	0x401ed96e9bbf0dc7              # double 7.7123359999999996
	.quad	0x3fe59a0ad8a11666              # double 0.67505400000000004
	.quad	0x4023d8a5accd5305              # double 9.9231390000000008
	.quad	0x401c6e2ef4e0114d              # double 7.1076009999999998
	.quad	0x40071da16616b54e              # double 2.8894679999999999
	.quad	0x40060dce39b456b4              # double 2.7567409999999999
	.quad	0x401ebf5e41d4b6a6              # double 7.6868829999999999
	.quad	0x40152272c94b380d              # double 5.2836410000000003
	.quad	0x401e13eaf6837f7c              # double 7.5194510000000001
	.quad	0x40011fe4bcad9ad8              # double 2.1405729999999998
	.quad	0x401d5ab3aabcd78c              # double 7.3385759999999998
	.quad	0x40175f2c3009b307              # double 5.8429419999999999
	.quad	0x4010c213a0c6b485              # double 4.1895280000000001
	.quad	0x4017b9c065b63d3e              # double 5.9313979999999997
	.quad	0x401d4ce358298cc1              # double 7.3250859999999998
	.quad	0x3fc779e16d6dc1a4              # double 0.18340699999999999
	.quad	0x40097e8c47a17f41              # double 3.1867909999999999
	.quad	0x402364f9a06a6e33              # double 9.6972170000000001
	.quad	0x401b24406c00da1b              # double 6.7854020000000004
	.quad	0x40061c903ea704bc              # double 2.7639469999999999
	.quad	0x4021e88b32ce8965              # double 8.9541869999999992
	.quad	0x4001cf08cc575c07              # double 2.2260909999999998
	.quad	0x400af141a6937d20              # double 3.367801
	.quad	0x40001ef62f9ca5be              # double 2.0151180000000002
	.quad	0x3fc70cfe154434e3              # double 0.18008399999999999
	.quad	0x401649a240314877              # double 5.5719079999999996
	.quad	0x401c3267c6b8b695              # double 7.0492239999999997
	.quad	0x40214c883fd50225              # double 8.6494769999999992
	.quad	0x3fcbb77c02afdda9              # double 0.21653700000000001
	.quad	0x400b915e7c8d1959              # double 3.4459810000000002
	.quad	0x401e4c358afc47e5              # double 7.5744230000000003
	.quad	0x4019463800218def              # double 6.3185729999999998
	.quad	0x4018d44cbe1eb420              # double 6.2073239999999998
	.quad	0x401e79528f190d17              # double 7.6184789999999997
	.quad	0x40230b1960fa15db              # double 9.5216779999999996
	.quad	0x4012d1fddebd9019              # double 4.7050700000000001
	.quad	0x3fe2152f3c2dadb8              # double 0.56508599999999998
	.quad	0x3fb0a76102795704              # double 0.065054000000000001
	.quad	0x4015b34df04ddb55              # double 5.4251019999999999
	.quad	0x400f675cd0bb6ed6              # double 3.9254699999999998
	.quad	0x4007117ce52deca2              # double 2.8835389999999999
	.quad	0x401663ca31e7d999              # double 5.5974510000000004
	.quad	0x3ff312dcb1465e89              # double 1.192105
	.quad	0x401db307f23cc8de              # double 7.4248349999999999
	.quad	0x401d30e1f7d73c92              # double 7.2977369999999997
	.quad	0x4012960c38f36695              # double 4.6465310000000004
	.quad	0x4012710fd7e45804              # double 4.6104120000000002
	.quad	0x4005d40f66a55087              # double 2.728545
	.quad	0x400bea90cd423d92              # double 3.4895339999999999
	.quad	0x402136cb74ddf86e              # double 8.6070209999999996
	.quad	0x401a81bfbdf090f7              # double 6.6267079999999998
	.quad	0x401edbfd2e946801              # double 7.7148329999999996
	.quad	0x401541b1960fa15e              # double 5.3141540000000003
	.quad	0x4007153bd1676641              # double 2.8853680000000002
	.quad	0x4018e703afb7e910              # double 6.2256
	.quad	0x4023bb88ca3e7d13              # double 9.8662779999999994
	.quad	0x4011c210385c67e0              # double 4.4395150000000001
	.quad	0x40011601ffb480a6              # double 2.1357460000000001
	.quad	0x401a920a30db6a1f              # double 6.6426170000000004
	.quad	0x40200ec17ebaf102              # double 8.0288199999999996
	.quad	0x4020507df5cf2496              # double 8.1572110000000002
	.quad	0x401c36e5471715c6              # double 7.0536089999999998
	.quad	0x4007074299d883ba              # double 2.8785449999999999
	.quad	0x4009880389f83be6              # double 3.1914129999999998
	.quad	0x401b6175d13d74d6              # double 6.8451760000000004
	.quad	0x400f01c044284dfd              # double 3.8758550000000001
	.quad	0x3ff9842c7fbacb43              # double 1.5947690000000001
	.quad	0x40177bd2fa0d77b8              # double 5.8709220000000002
	.quad	0x4003ac6f7a0b5ed9              # double 2.4591970000000001
	.quad	0x3fc983ad9f0a1be3              # double 0.19933100000000001
	.quad	0x400f1864cb5bb385              # double 3.886911
	.quad	0x40062a83b1d0c804              # double 2.770759
	.quad	0x401c13cb81733227              # double 7.0193310000000002
	.quad	0x3fe1f826edaa92e6              # double 0.56154199999999999
	.quad	0x40073d99029ae4f3              # double 2.9050769999999999
	.quad	0x3fe819f5dfeb8d82              # double 0.75316899999999998
	.quad	0x4020e9aac53b0814              # double 8.4563810000000003
	.quad	0x40228ccdd93c46d8              # double 9.2750079999999996
	.quad	0x40028fe047d3d428              # double 2.320252
	.quad	0x4020f9ae70c1333c              # double 8.4876590000000007
	.quad	0x400bbda6a4441787              # double 3.467603
	.quad	0x401506073de1e2df              # double 5.2558870000000004
	.quad	0x4007e48e8a71de6a              # double 2.9866000000000001
	.quad	0x3fd72517e77d523b              # double 0.36163899999999999
	.quad	0x401e6e225fa658c5              # double 7.6075530000000002
	.quad	0x40121440f2389720              # double 4.5197789999999998
	.quad	0x401d66833c60029f              # double 7.3501099999999999
	.quad	0x401b850ebaade658              # double 6.8799390000000002
	.quad	0x3fefb9c51dabe271              # double 0.99142699999999994
	.quad	0x3ff113f39d1b2e5a              # double 1.0673710000000001
	.quad	0x401317a02fb5d031              # double 4.773072
	.quad	0x40115497b7414a4d              # double 4.3326099999999999
	.quad	0x40224a5bfad29995              # double 9.1452329999999993
	.quad	0x4021b6657b84db9c              # double 8.8562429999999991
	.quad	0x3fe54a3c64345cff              # double 0.66531200000000001
	.quad	0x40221d712a0ec743              # double 9.0575039999999998
	.quad	0x40099a82e87d2c7c              # double 3.2004450000000002
	.quad	0x3ff24ba0e8427419              # double 1.143464
	.quad	0x40206a44c7b02d5a              # double 8.2075560000000003
	.quad	0x3ff7fc9eecbfb15b              # double 1.4991749999999999
	.quad	0x40201015e39713ad              # double 8.0314169999999994
	.quad	0x40219cafb3b75211              # double 8.8060279999999995
	.quad	0x400ee136e71cda2b              # double 3.8599679999999998
	.quad	0x401acd7d7c2ca149              # double 6.7006740000000002
	.quad	0x4014ea94bbe4473d              # double 5.2290830000000001
	.quad	0x3ff3548344c37e6f              # double 1.2081329999999999
	.quad	0x40117d0a67620ee9              # double 4.3721100000000002
	.quad	0x3ff53dd334c5da6a              # double 1.3275939999999999
	.quad	0x401caa3c64345cff              # double 7.1662460000000001
	.quad	0x4001e072d1aeb3dd              # double 2.234594
	.quad	0x401add63886594af              # double 6.7161999999999997
	.quad	0x3fe0f79e9d0e9920              # double 0.530227
	.quad	0x40206b38f7985272              # double 8.2094190000000005
	.quad	0x4020e85b18548a9c              # double 8.4538200000000003
	.quad	0x4018293ab430f495              # double 6.0402630000000004
	.quad	0x4018637c1376d549              # double 6.0971529999999996
	.quad	0x401f066dbd72bcb6              # double 7.756278
	.quad	0x402207c1df3300de              # double 9.0151509999999995
	.quad	0x3fa2e3821af7d30b              # double 0.036892000000000001
	.quad	0x40189857afea3df7              # double 6.1487720000000001
	.quad	0x4021c725c3dee782              # double 8.8889600000000009
	.quad	0x400d7953dea465a5              # double 3.6842419999999998
	.quad	0x40135b91f70de8f7              # double 4.8394240000000002
	.quad	0x3ff78ccbc05d52c1              # double 1.4718739999999999
	.quad	0x4020ad881a1554fc              # double 8.3389290000000002
	.quad	0x40216c0b780346dc              # double 8.7110249999999993
	.quad	0x401fc3fd50225743              # double 7.9413960000000001
	.quad	0x4011f179bfdf7e80              # double 4.4858159999999998
	.quad	0x40205c7b677f6b1a              # double 8.1806289999999997
	.quad	0x4023f32acfb762d8              # double 9.9749359999999995
	.quad	0x401b6389f83be660              # double 6.8472059999999999
	.quad	0x400af9cbee807bbb              # double 3.3719709999999998
	.quad	0x401b2344c37e6f72              # double 6.7844420000000003
	.quad	0x40224dc0db2702a3              # double 9.1518619999999995
	.quad	0x3fea7c73eee52589              # double 0.82769199999999998
	.quad	0x400d148238540464              # double 3.635014
	.quad	0x401106f4be835dee              # double 4.256793
	.quad	0x4016ae9185cee17a              # double 5.670477
	.quad	0x400552c9d16fc9bc              # double 2.6654239999999998
	.quad	0x3fff1b3e1437c569              # double 1.944151
	.quad	0x40187033e78e1933              # double 6.1095730000000001
	.quad	0x40235b13165d3997              # double 9.67788
	.quad	0x400b8d32830a0b1c              # double 3.4439440000000001
	.quad	0x401d947ecfe9b7bf              # double 7.3950149999999999
	.quad	0x4020814cec41dd1a              # double 8.2525399999999998
	.quad	0x40154a7503b81b65              # double 5.3227120000000001
	.quad	0x40185cbd987c6328              # double 6.0905670000000001
	.quad	0x4022a383ad9f0a1c              # double 9.3193640000000002
	.quad	0x3ff6f89e774eebf6              # double 1.4356979999999999
	.quad	0x4016ee09bb6aa4ba              # double 5.7324590000000004
	.quad	0x402388c4156e264e              # double 9.7671209999999995
	.quad	0x401f536d22424a27              # double 7.8314709999999996
	.quad	0x40237277c45cbbc3              # double 9.7235700000000004
	.quad	0x400ea2ef4e0114d3              # double 3.829558
	.quad	0x4004c4dec1c1d6d0              # double 2.5961280000000002
	.quad	0x402025d52c16df40              # double 8.0738920000000007
	.quad	0x400ed5e41d4b6a62              # double 3.8544390000000002
	.quad	0x401ade9424e59296              # double 6.7173619999999996
	.quad	0x401135fbf83382e4              # double 4.3027189999999997
	.quad	0x4023215bff04577e              # double 9.5651550000000007
	.quad	0x3ff169c12f09d8c7              # double 1.088319
	.quad	0x4014144bb1af3a15              # double 5.0198200000000002
	.quad	0x4013903f705857b0              # double 4.8908670000000001
	.quad	0x400f0339c0ebedfa              # double 3.8765749999999999
	.quad	0x401ea205bc01a36e              # double 7.6582249999999998
	.quad	0x40223daccd53048a              # double 9.1204590000000003
	.quad	0x401b6a71de69ad43              # double 6.8539500000000002
	.quad	0x4021f4985f06f694              # double 8.9777249999999995
	.quad	0x4004b07af20ea5b5              # double 2.5861719999999999
	.quad	0x40227aff4ba51a00              # double 9.2402289999999993
	.quad	0x40126cc857f3061c              # double 4.6062329999999996
	.quad	0x4019dcd141a6937d              # double 6.4656419999999999
	.quad	0x402174dc443914f5              # double 8.7282430000000009
	.quad	0x401d1549b62c7757              # double 7.2707889999999997
	.quad	0x4011b36006d0d499              # double 4.4251709999999997
	.quad	0x3feede0f7fcfc3f8              # double 0.96460699999999999
	.quad	0x40236ba71151611c              # double 9.7102590000000006
	.quad	0x40035e56473471f8              # double 2.4210630000000002
	.quad	0x4020f338f7985272              # double 8.4750440000000005
	.quad	0x401a814c660a2014              # double 6.6262679999999996
	.quad	0x400e91fddebd9019              # double 3.821285
	.quad	0x40145035371971c1              # double 5.078328
	.quad	0x401c4e529bae46d0              # double 7.0764870000000002
	.quad	0x4019a0ba6266fd65              # double 6.4069609999999999
	.quad	0x401a56d655e28aa4              # double 6.5848019999999998
	.quad	0x3ff449374bc6a7f0              # double 1.2678750000000001
	.quad	0x4011b65f0f5a1017              # double 4.4280970000000002
	.quad	0x401c47e49b1fab97              # double 7.070208
	.quad	0x3ff1c29e0a41a262              # double 1.1100140000000001
	.quad	0x3ff074bd76ee73e7              # double 1.0285010000000001
	.quad	0x4016872862f5989e              # double 5.6319900000000001
	.quad	0x3fef6b8b69552e30              # double 0.98187800000000003
	.quad	0x40122bebe1650a46              # double 4.5428920000000002
	.quad	0x4022e8f3cb3e5754              # double 9.4549850000000006
	.quad	0x3fa790b84988094e              # double 0.046025999999999997
	.quad	0x4017b331a08bfc22              # double 5.9249939999999999
	.quad	0x4013318116ebd4d0              # double 4.7983440000000002
	.quad	0x4023bb69db65ecc4              # double 9.8660420000000002
	.quad	0x4016a1a8ef77f280              # double 5.6578710000000001
	.quad	0x40008b04ab606b7b              # double 2.0678800000000002
	.quad	0x4013319ac79702e6              # double 4.7984419999999997
	.quad	0x4007b73860999dcb              # double 2.9644629999999998
	.quad	0x40140d07c84b5dcc              # double 5.0127249999999997
	.quad	0x4021ae3f141205bc              # double 8.8403249999999999
	.quad	0x401e04738a3b57c5              # double 7.5043470000000001
	.quad	0x40021f0d413122b8              # double 2.2651620000000001
	.quad	0x40214c4998d045fe              # double 8.6489989999999999
	.quad	0x3ff64c35ce182667              # double 1.3936059999999999
	.quad	0x40205dfd47bedb73              # double 8.1835730000000009
	.quad	0x4007f2dba4d6e47e              # double 2.9935830000000001
	.quad	0x400c6dc3bd599243              # double 3.5535960000000002
	.quad	0x401f18b502ababeb              # double 7.7741280000000001
	.quad	0x401ea26dce39b457              # double 7.6586220000000002
	.quad	0x4019045953586ca9              # double 6.2542470000000003
	.quad	0x40067c9e6687f456              # double 2.8108490000000002
	.quad	0x3ff677c3504c48ae              # double 1.404239
	.quad	0x4013cf17bd8be729              # double 4.9522389999999996
	.quad	0x3ff3f063e07a28bb              # double 1.246189
	.quad	0x401ab865d7cb2d90              # double 6.6800759999999997
	.quad	0x3fdf5696e58a32f4              # double 0.48965999999999998
	.quad	0x401070f1f57b41c0              # double 4.1102980000000002
	.quad	0x3ff583ff69014b5a              # double 1.3447260000000001
	.quad	0x40211ffed20296b3              # double 8.5624909999999996
	.quad	0x4022cefed634549b              # double 9.4042879999999993
	.quad	0x4009105319828805              # double 3.132971
	.quad	0x4004dbacb4289119              # double 2.6072630000000001
	.quad	0x400be3361565c2d2              # double 3.4859429999999998
	.quad	0x400aaf9fcb0c026d              # double 3.3357540000000001
	.quad	0x401aea582dbe7f2c              # double 6.7288519999999998
	.quad	0x3fd27d6733ebbfd7              # double 0.28890399999999999
	.quad	0x3ff71cd3e0bd449a              # double 1.4445380000000001
	.quad	0x4016e5332acfb763              # double 5.7238280000000001
	.quad	0x400d41eeed8904f7              # double 3.6571940000000001
	.quad	0x4020b845dc832336              # double 8.3599080000000008
	.quad	0x4020323f24d8fd5d              # double 8.0981380000000005
	.quad	0x401f8eefe4ffc979              # double 7.8895869999999996
	.quad	0x4022d0268900c522              # double 9.4065440000000002
	.quad	0x3fd5f583a53b8e4c              # double 0.34311000000000003
	.quad	0x4013b213e3e29308              # double 4.9239040000000003
	.quad	0x401fd1c4fc1df330              # double 7.954853
	.quad	0x401d54ece9a2c669              # double 7.332935
	.quad	0x400c675147f13059              # double 3.5504479999999998
	.quad	0x4019ed3ed527e521              # double 6.4816849999999997
	.quad	0x4002c68db8bac711              # double 2.3469500000000001
	.quad	0x4019202363b25700              # double 6.2813850000000002
	.quad	0x400622480e8c8abd              # double 2.7667389999999998
	.quad	0x401346b3bb83cf2d              # double 4.819045
	.quad	0x400092f33ca31e7e              # double 2.0717530000000002
	.quad	0x3fe763b46fdeb52d              # double 0.73092100000000004
	.quad	0x4016530f8c64fdb1              # double 5.5811140000000004
	.quad	0x40178a96d4c33b54              # double 5.8853410000000004
	.quad	0x401faa4d6e47dc38              # double 7.9163110000000003
	.quad	0x40221fc9bc771434              # double 9.0620860000000007
	.quad	0x400bacb4aec8d5c7              # double 3.4593289999999999
	.quad	0x401750752da98677              # double 5.8285720000000003
	.quad	0x4023762281344806              # double 9.7307319999999997
	.quad	0x3ff88ffb8b263950              # double 1.5351520000000001
	.quad	0x4006293d102bc72e              # double 2.7701359999999999
	.quad	0x400ec9ff0cbaf966              # double 3.8486310000000001
	.quad	0x3fd2cd573647baaa              # double 0.29378300000000002
	.quad	0x3fb7d028a1dfb939              # double 0.093020000000000005
	.quad	0x40184a1cac083127              # double 6.0723750000000001
	.quad	0x400025269595feda              # double 2.0181399999999998
	.quad	0x40209593c46d82ba              # double 8.2921429999999994
	.quad	0x4012220c8cd63cb8              # double 4.5332509999999999
	.quad	0x400287c5ac471b48              # double 2.3162950000000002
	.quad	0x4022c96c61522a6f              # double 9.3934049999999995
	.quad	0x401fa25cc426351e              # double 7.9085570000000001
	.quad	0x400bca57214f0521              # double 3.4737990000000001
	.quad	0x4001e40181e03f70              # double 2.2363309999999998
	.quad	0x40227cefed63454a              # double 9.2440180000000005
	.quad	0x400f0cc037931444              # double 3.8812259999999998
	.quad	0x3ffab7ff151e7536              # double 1.669921
	.quad	0x401f151eb851eb85              # double 7.7706249999999998
	.quad	0x3ffb05803cd141a7              # double 1.6888430000000001
	.quad	0x40067789a459103d              # double 2.8083680000000002
	.quad	0x40085672b884406c              # double 3.042211
	.quad	0x401e4a2877ee4e27              # double 7.5724200000000001
	.quad	0x40040715831f03d1              # double 2.5034589999999999
	.quad	0x3ff365321e603d57              # double 1.2122059999999999
	.quad	0x401301e4712e4085              # double 4.7518479999999998
	.quad	0x401b8a836eb4e981              # double 6.8852669999999998
	.quad	0x4023e2044ae85b9f              # double 9.9414390000000008
	.quad	0x400072e6a76965f5              # double 2.0561039999999999
	.quad	0x401763e1c9b41398              # double 5.8475409999999997
	.quad	0x4020f6c7000431be              # double 8.4819870000000002
	.quad	0x4020e27264a16a48              # double 8.4422789999999992
	.quad	0x3ff3a72a7bd48cb5              # double 1.2283120000000001
	.quad	0x40158aab8a5ce5b4              # double 5.3854199999999999
	.quad	0x3fdab1a2a4db163c              # double 0.41709200000000002
	.quad	0x402362f81626b2f2              # double 9.6932989999999997
	.quad	0x402369f70de8f6cf              # double 9.706963
	.quad	0x400088c154c985f0              # double 2.0667749999999998
	.quad	0x40206f36ac647779              # double 8.2172140000000002
	.quad	0x401b798d477bbf94              # double 6.868703
	.quad	0x40216bc48f10a99b              # double 8.7104839999999992
	.quad	0x400b2e43aa79bbae              # double 3.3975900000000001
	.quad	0x4000711a543f1c76              # double 2.0552260000000002
	.quad	0x401232f449129889              # double 4.54976
	.quad	0x401f3a337a80cf9e              # double 7.8068369999999998
	.quad	0x4010c5ea24cc6823              # double 4.193276
	.quad	0x400214e6e221c8a8              # double 2.2602060000000002
	.quad	0x400efc65c70435f0              # double 3.8732410000000002
	.quad	0x401e877574f722e2              # double 7.6322840000000003
	.quad	0x401de3e100607810              # double 7.4725380000000001
	.quad	0x4022a3b16c1e364c              # double 9.3197130000000001
	.quad	0x400c321ee675147f              # double 3.524473
	.quad	0x3ffbc9f51697f1fa              # double 1.7368060000000001
	.quad	0x402088b417ca2121              # double 8.2669990000000002
	.quad	0x400c446b69db65ed              # double 3.5334080000000001
	.quad	0x4015d00218def417              # double 5.4531330000000002
	.quad	0x4023d43e74afd545              # double 9.9145389999999995
	.quad	0x400f61bda5119ce0              # double 3.9227249999999998
	.quad	0x4019f89c1b54195d              # double 6.4927830000000002
	.quad	0x3fe3d40cc78e9f6b              # double 0.61963500000000005
	.quad	0x401c2cd5b6805a2d              # double 7.0437839999999996
	.quad	0x402324eaaf35e311              # double 9.5721030000000002
	.quad	0x3ff4f1327243137b              # double 1.308886
	.quad	0x3fb95bee3d5fdcdf              # double 0.099058999999999994
	.quad	0x4023b0b04ab606b8              # double 9.8450950000000005
	.quad	0x4016a2f05a708ede              # double 5.6591199999999997
	.quad	0x4020ec536d655e29              # double 8.4615740000000006
	.quad	0x40239ac5c13fd0d0              # double 9.8022899999999993
	.quad	0x402083191dde3758              # double 8.2560509999999994
	.quad	0x40223c9a133c1ce7              # double 9.1183630000000004
	.quad	0x401682de00d1b717              # double 5.6277999999999997
	.quad	0x40184a80064a9cdc              # double 6.0727539999999998
	.quad	0x40200b5e74299d88              # double 8.0222049999999996
	.quad	0x3ff550de093532e8              # double 1.3322430000000001
	.quad	0x40149464dc22ab26              # double 5.1449160000000003
	.quad	0x3ff63bacb4289119              # double 1.3895690000000001
	.quad	0x4006bc06e19b90eb              # double 2.8418100000000002
	.quad	0x3fc77fc7607c419a              # double 0.183587
	.quad	0x3fe7f8dd616f86a1              # double 0.74912900000000004
	.quad	0x40220788333fc86d              # double 9.0147110000000001
	.quad	0x4006f5a5b9628cbd              # double 2.869945
	.quad	0x400c55cfaacd9e84              # double 3.5419
	.quad	0x4023bf0dc768dfbd              # double 9.8731519999999992
	.quad	0x40227c046412cf10              # double 9.2422210000000007
	.quad	0x401f9b16c1e364bf              # double 7.9014540000000001
	.quad	0x40140f5a964e8b7e              # double 5.0149939999999997
	.quad	0x401cb51deefe4ffd              # double 7.1768720000000004
	.quad	0x3ff95e6687f455a8              # double 1.585547
	.quad	0x40080371da37ef5b              # double 3.0016820000000002
	.quad	0x4014ec382a12f901              # double 5.230683
	.quad	0x4017d4a66559f6ec              # double 5.9576659999999997
	.quad	0x4022c9702e6644d8              # double 9.3934339999999991
	.quad	0x400995f56a7ac81d              # double 3.1982219999999999
	.quad	0x4010be8533b10774              # double 4.1860549999999996
	.quad	0x401d4bc408d8ec96              # double 7.3239900000000002
	.quad	0x3ff70a8b08dd1e54              # double 1.4400740000000001
	.quad	0x400b8847b24638c9              # double 3.4415429999999998
	.quad	0x3ff7ee74f2f123c4              # double 1.495717
	.quad	0x400e417f4128bf3c              # double 3.781981
	.quad	0x40172f687b139c95              # double 5.796297
	.quad	0x400d26b93ccd0fe9              # double 3.6439080000000001
	.quad	0x401160ec74320104              # double 4.344652
	.quad	0x4020a88f648c7193              # double 8.3292190000000002
	.quad	0x3ff70ae85b9e8c48              # double 1.4401630000000001
	.quad	0x402345e69ad42c3d              # double 9.6365250000000006
	.quad	0x4016a37824d4cb9f              # double 5.6596380000000002
	.quad	0x4007f8c111ada76e              # double 2.9964620000000002
	.quad	0x401193cd9a52263e              # double 4.3943390000000004
	.quad	0x402025bc87db2b34              # double 8.0737039999999993
	.quad	0x401c426f1dc50ce5              # double 7.0648770000000001
	.quad	0x40029c9b41398634              # double 2.3264680000000002
	.quad	0x3ff51cdc443914f5              # double 1.3195460000000001
	.quad	0x4012772c94b380cb              # double 4.6163809999999996
	.quad	0x4023a45eb313be23              # double 9.8210350000000001
	.quad	0x3ffe3000431bde83              # double 1.886719
	.quad	0x400fb523b3636f3b              # double 3.9634469999999999
	.quad	0x4009295d0b73d189              # double 3.145197
	.quad	0x3fde41205bc01a37              # double 0.47272500000000001
	.quad	0x4016cbf8fcd67fd4              # double 5.699192
	.quad	0x3ff14610f0e90bc8              # double 1.0796060000000001
	.quad	0x4018c295a6c5d207              # double 6.1900240000000002
	.quad	0x40184937d1fe64f5              # double 6.0715019999999997
	.quad	0x4020e6f459d9902a              # double 8.4510830000000006
	.quad	0x401f9f62b6ae7d56              # double 7.9056499999999996
	.quad	0x401130ee8d10f51b              # double 4.2977850000000002
	.quad	0x400a86162f166e01              # double 3.3154720000000002
	.quad	0x4011315a4acf312b              # double 4.2981959999999999
	.quad	0x401dc676a7264a17              # double 7.4438120000000003
	.quad	0x40203944241c3efb              # double 8.1118480000000002
	.quad	0x400980ae10492360              # double 3.1878320000000002
	.quad	0x401f830df9bdc6a0              # double 7.8779830000000004
	.quad	0x400e3700474d9c6b              # double 3.776856
	.quad	0x400830c564f97edc              # double 3.0238139999999998
	.quad	0x401945796bfca85d              # double 6.3178460000000003
	.quad	0x4003f858bc59b802              # double 2.4962629999999999
	.quad	0x4010f67125dd095b              # double 4.240666
	.quad	0x401bc0caa326e115              # double 6.9382729999999997
	.quad	0x401a9d73860999dd              # double 6.6537610000000003
	.quad	0x401e49e8815e3971              # double 7.5721759999999997
	.quad	0x4016b9389b52007e              # double 5.6808800000000002
	.quad	0x402388d3ae685db7              # double 9.7672399999999992
	.quad	0x40096c4d65e46067              # double 3.1778819999999999
	.quad	0x4019f0c996b7670a              # double 6.485144
	.quad	0x401f8750c1b97354              # double 7.8821440000000003
	.quad	0x40033dabe27179c0              # double 2.4051130000000001
	.quad	0x3fd56ea4228997c4              # double 0.33487800000000001
	.quad	0x40011332acfb762e              # double 2.1343740000000002
	.quad	0x401a5d88c1db0143              # double 6.591342
	.quad	0x40113d2fa0d77b7c              # double 4.3097519999999996
	.quad	0x3fe309d27c393682              # double 0.59494899999999995
	.quad	0x4015e4c2f837b4a2              # double 5.4733999999999998
	.quad	0x402360db6a1e81cb              # double 9.6891739999999995
	.quad	0x40212ad362e90364              # double 8.5836439999999996
	.quad	0x40149202539756c9              # double 5.1425869999999998
	.quad	0x4016e3ce63a5c1c6              # double 5.722467
	.quad	0x4001c539756c93a7              # double 2.221301
	.quad	0x3ff2e9014b599aa6              # double 1.181886
	.quad	0x4004293532e7b3d9              # double 2.5201210000000001
	.quad	0x3fee486f049a9974              # double 0.94634200000000001
	.quad	0x401124f8b588e369              # double 4.2861050000000001
	.quad	0x40217f9d0a67620f              # double 8.7492450000000002
	.quad	0x40045aea3161a1dc              # double 2.5443920000000002
	.quad	0x401c8a459103c8e2              # double 7.1350309999999997
	.quad	0x3ff1df98b71b8aa0              # double 1.117089
	.quad	0x400c606b7aa25d8d              # double 3.5470799999999998
	.quad	0x3ffc5f4e4430b179              # double 1.7732680000000001
	.quad	0x401587396d0917d7              # double 5.3820550000000003
	.quad	0x402078d4562e09ff              # double 8.2359950000000008
	.quad	0x4002c3d68405b39e              # double 2.3456239999999999
	.quad	0x4010c769a91105e2              # double 4.1947390000000002
	.quad	0x401dbbce8533b107              # double 7.4334049999999996
	.quad	0x400e55ad96a6a012              # double 3.7918349999999998
	.quad	0x401ca40746455eaf              # double 7.1601840000000001
	.quad	0x40210f8ab0c88a48              # double 8.5303550000000001
	.quad	0x401a7316a055757d              # double 6.6123909999999997
	.quad	0x40211a4db163baba              # double 8.5513739999999991
	.quad	0x400c4d601ffb480a              # double 3.5377809999999998
	.quad	0x4002b70de8f6ceff              # double 2.3393820000000001
	.quad	0x4021aae275ab7dc8              # double 8.8337590000000006
	.quad	0x3fd4ce5710880d80              # double 0.32509399999999999
	.quad	0x4009742352eb5f5f              # double 3.181708
	.quad	0x40203726aec0724b              # double 8.1077169999999992
	.quad	0x4017fa76d97b30f9              # double 5.9945940000000002
	.quad	0x40009ca5bd944aa5              # double 2.0764879999999999
	.quad	0x4020a972474538ef              # double 8.3309499999999996
	.quad	0x3ff73de939eadd59              # double 1.452615
	.quad	0x4023a204f2ae07e6              # double 9.8164440000000006
	.quad	0x40228b69552e2fbe              # double 9.2722879999999996
	.quad	0x4014582b1f687b14              # double 5.0861020000000003
	.quad	0x401f78848387df5d              # double 7.867693
	.quad	0x3ff5e8672756861f              # double 1.3692390000000001
	.quad	0x4021e8b5aa715832              # double 8.9545110000000001
	.quad	0x400bcfbb9496249a              # double 3.476432
	.quad	0x401ec4ca4f440af2              # double 7.6921780000000002
	.quad	0x3fd91626b2f23034              # double 0.39197700000000002
	.quad	0x400643854046412d              # double 2.782969
	.quad	0x4003e30014f8b589              # double 2.48584
	.quad	0x3feb9b3d07c84b5e              # double 0.86270000000000002
	.quad	0x4018acd8127b2cc7              # double 6.168793
	.quad	0x4015bd887ebf22c0              # double 5.4350909999999999
	.quad	0x3fec117720c8cd64              # double 0.87713200000000002
	.quad	0x3fdf61309c7ffde7              # double 0.49030699999999999
	.quad	0x401ee856e696a26e              # double 7.7268939999999997
	.quad	0x401c7ca9ac365450              # double 7.1217410000000001
	.quad	0x4012355475a31a4c              # double 4.5520800000000001
	.quad	0x3ff22b191dde3758              # double 1.1355219999999999
	.quad	0x40180c56d5cfaace              # double 6.0120500000000003
	.quad	0x400c2a3ad18d25ee              # double 3.5206200000000001
	.quad	0x4015d5019f3c70ca              # double 5.4580140000000004
	.quad	0x4021569b5a63f9a5              # double 8.6691540000000007
	.quad	0x40133f36694898f6              # double 4.811731
	.quad	0x401bf7b5aea3161a              # double 6.9919039999999999
	.quad	0x3fe533f85510d38d              # double 0.66259400000000002
	.quad	0x4010b15d701d9f4d              # double 4.1732079999999998
	.quad	0x401db91b823c85c2              # double 7.4307689999999997
	.quad	0x401a0e7c06e19b91              # double 6.5141450000000001
	.quad	0x4023d727bb2fec57              # double 9.9202250000000002
	.quad	0x401494477ff151e7              # double 5.1448039999999997
	.quad	0x4018a87e38eb0319              # double 6.1645440000000002
	.quad	0x4009b0b84988094e              # double 3.2112889999999998
	.quad	0x4021bdf2cb641701              # double 8.8709930000000004
	.quad	0x401b4c92ddbdb5d9              # double 6.8247790000000004
	.quad	0x4016a20a73f748a1              # double 5.6582429999999997
	.quad	0x4023ba1187e7c06e              # double 9.8634149999999998
	.quad	0x402059d1f601797d              # double 8.1754300000000004
	.quad	0x40219cf3ba775fb3              # double 8.8065470000000001
	.quad	0x3ff233e89a88ace2              # double 1.1376729999999999
	.quad	0x401f35e13b18dac2              # double 7.8026169999999997
	.quad	0x4013efcd24e160d9              # double 4.9841810000000004
	.quad	0x3ffaa60d4562e0a0              # double 1.66554
	.quad	0x40201a0be5109071              # double 8.050872
	.quad	0x400c27d34df04ddb              # double 3.5194459999999999
	.quad	0x400c3c58ab92c062              # double 3.5294660000000002
	.quad	0x400adf45e0b4e11e              # double 3.3590200000000001
	.quad	0x4004087442c7fbad              # double 2.5041280000000001
	.quad	0x401b8cf0b6b6e0d2              # double 6.8876369999999998
	.quad	0x400110fc71d60631              # double 2.1332939999999998
	.quad	0x400d4312f4cf4a56              # double 3.6577510000000002
	.quad	0x4020650d6b228dca              # double 8.1973680000000009
	.quad	0x4008be02645e4e6a              # double 3.092778
	.quad	0x401eabe7296f6513              # double 7.6678740000000003
	.quad	0x4014bd9b5e95b78d              # double 5.1851630000000002
	.quad	0x4020c132b55ef1fe              # double 8.3773400000000002
	.quad	0x401a4a6a44417870              # double 6.5726709999999997
	.quad	0x40098e432441fea8              # double 3.194464
	.quad	0x401de99d883ba344              # double 7.4781399999999998
	.quad	0x4013e5d13d74d595              # double 4.974431
	.quad	0x401bff548ecd8dbd              # double 6.9993460000000001
	.quad	0x4023f37baecd0785              # double 9.9755529999999996
	.quad	0x3fc9f1d81f106680              # double 0.20269300000000001
	.quad	0x40152ba94bbe4474              # double 5.2926380000000002
	.quad	0x4013971fbc5de9c0              # double 4.8975819999999999
	.quad	0x400083fcc9ea9a3d              # double 2.0644469999999999
	.quad	0x4020e747b677f6b2              # double 8.4517190000000006
	.quad	0x40110fd08d4bad7d              # double 4.2654439999999996
	.quad	0x40169bcec84f8f8a              # double 5.6521559999999997
	.quad	0x402298eb24a6a876              # double 9.2986690000000003
	.quad	0x4018fc2c5e2cdc01              # double 6.2462629999999999
	.quad	0x40144d04a2fcefaa              # double 5.0752129999999998
	.quad	0x3ffc6536501e2585              # double 1.77471
	.quad	0x402063ec679cc74c              # double 8.1951630000000008
	.quad	0x401e4c23b7952d23              # double 7.5743549999999997
	.quad	0x401b0ff2a172abef              # double 6.765574
	.quad	0x400541d96e9bbf0e              # double 2.6571530000000001
	.quad	0x40126912556d19df              # double 4.6026090000000002
	.quad	0x4015c6afcce1c582              # double 5.4440299999999997
	.quad	0x3ffe50ce4ead0c3d              # double 1.894728
	.quad	0x40021148fd9fd36f              # double 2.2584399999999998
	.quad	0x401f875ee99a62ed              # double 7.8821979999999998
	.quad	0x401519973d9ec700              # double 5.274991
	.quad	0x3ff8877681669ced              # double 1.533072
	.quad	0x4020136fc158fb44              # double 8.0379620000000002
	.quad	0x40161bc48f10a99b              # double 5.5271169999999996
	.quad	0x4022c7f06705c897              # double 9.3905060000000002
	.quad	0x4013e713f077ccc0              # double 4.9756619999999998
	.quad	0x3ff2202ea960b6fa              # double 1.132857
	.quad	0x40150ca2db61bb06              # double 5.26234
	.quad	0x401cf5b8561d4307              # double 7.2399610000000001
	.quad	0x401b6aab47410731              # double 6.8541689999999997
	.quad	0x40142fd04a2fcefb              # double 5.0466930000000003
	.quad	0x401c1f5c6c11a112              # double 7.0306259999999998
	.quad	0x40133d551d68c693              # double 4.809895
	.quad	0x3fe9ef62f9ca5bd9              # double 0.81047199999999997
	.quad	0x4022f750a02b8412              # double 9.4830369999999995
	.quad	0x40227989df1172ef              # double 9.2373799999999999
	.quad	0x401deb0f6ad70e6f              # double 7.4795509999999998
	.quad	0x401fd11233df2a9d              # double 7.9541709999999996
	.quad	0x402310c5c9a34ca1              # double 9.5327590000000004
	.quad	0x3fe30155d5f56a7b              # double 0.59391300000000002
	.quad	0x40176af2d7f950b9              # double 5.8544419999999997
	.quad	0x3fffcd3bf2f55582              # double 1.987606
	.quad	0x401a50eb24a6a876              # double 6.5790220000000001
	.quad	0x3ff3aae07e5a78f2              # double 1.2292179999999999
	.quad	0x401fd860dcb9a9da              # double 7.9613069999999997
	.quad	0x4000158e219652bd              # double 2.0105249999999999
	.quad	0x40201967ec7863bf              # double 8.0496210000000001
	.quad	0x401a42018a43bb41              # double 6.5644590000000003
	.quad	0x40221e2f5989df11              # double 9.0589549999999992
	.quad	0x40096ddce7cd0353              # double 3.1786439999999998
	.quad	0x401d23abc947064f              # double 7.2848350000000002
	.quad	0x40123020817fc760              # double 4.5469989999999996
	.quad	0x4016444a1f080304              # double 5.5666890000000002
	.quad	0x4011043393ab430f              # double 4.2541029999999997
	.quad	0x401eb13a4f8726d0              # double 7.6730739999999997
	.quad	0x3fd434df04ddb552              # double 0.31572699999999998
	.quad	0x40227dd334c5da6a              # double 9.2457519999999995
	.quad	0x401f44317acc4ef9              # double 7.8165950000000004
	.quad	0x400ca4d87724fa8b              # double 3.5804909999999999
	.quad	0x40125b124d099e0e              # double 4.5889369999999996
	.quad	0x3ff0310a99b6f5cb              # double 1.011973
	.quad	0x401950008637bd06              # double 6.3281270000000003
	.quad	0x4008cddf00abf76a              # double 3.1005229999999999
	.quad	0x400f99fa11a975b0              # double 3.9501840000000001
	.quad	0x3ff5bed30f062d41              # double 1.3590880000000001
	.quad	0x4010012c6ac215ba              # double 4.0011460000000003
	.quad	0x3ff3fd04a2fcefaa              # double 1.2492719999999999
	.quad	0x40091be1a8262457              # double 3.138614
	.quad	0x401eb9e59f2ba9d2              # double 7.68154
	.quad	0x4010fbcc2938de6e              # double 4.2458960000000001
	.quad	0x4017db0e1b4bb5e1              # double 5.963921
	.quad	0x3fd798d8a979e16d              # double 0.36870399999999998
	.quad	0x401a070bd017dae8              # double 6.5068809999999999
	.quad	0x4013504c48adeebb              # double 4.8284159999999998
	.quad	0x40208074ea8da7f4              # double 8.2508920000000003
	.quad	0x4011cde69ad42c3d              # double 4.4510750000000003
	.quad	0x3fe0aa62aa19439e              # double 0.52079900000000001
	.quad	0x4015671ac14c660a              # double 5.3506879999999999
	.quad	0x401d6ca36199780c              # double 7.3560920000000003
	.quad	0x4015c4ea4a8c154d              # double 5.4423000000000004
	.quad	0x3ff039a176ddacef              # double 1.01407
	.quad	0x400a43ce2089e343              # double 3.2831079999999999
	.quad	0x4020f5e56cd6c2f0              # double 8.4802660000000003
	.quad	0x40211602645e4e6a              # double 8.5429870000000001
	.quad	0x400b75c9e6687f45              # double 3.4325139999999998
	.quad	0x3ff5859d99029ae5              # double 1.345121
	.quad	0x4004564f11b60ae9              # double 2.5421429999999998
	.quad	0x4011468f4b61fe22              # double 4.3189060000000001
	.quad	0x4022b57ecbb7f9d7              # double 9.3544830000000001
	.quad	0x401cb91bc5586445              # double 7.1807699999999999
	.quad	0x4018b62bae03b3ea              # double 6.1779010000000003
	.quad	0x40219b2f87ad080b              # double 8.8030969999999993
	.quad	0x401652e90364388f              # double 5.5809670000000002
	.quad	0x40141dd22856605f              # double 5.0291220000000001
	.quad	0x400496616b54e2b0              # double 2.5734279999999998
	.quad	0x4002770ac3a860dd              # double 2.3081260000000001
	.quad	0x401cab8aa00192a7              # double 7.1675209999999998
	.quad	0x3fcd7ebaf102363b              # double 0.23043
	.quad	0x4014ca4095f2452c              # double 5.1975119999999997
	.quad	0x3ffc64c61d8622c4              # double 1.7746029999999999
	.quad	0x3ff53038e29f9ce9              # double 1.324273
	.quad	0x40194d30270f3882              # double 6.3253789999999999
	.quad	0x400c2882f0e0a84c              # double 3.519781
	.quad	0x402060446b69db66              # double 8.1880220000000001
	.quad	0x40224707bfe7e1fc              # double 9.1387309999999999
	.quad	0x4014f9999999999a              # double 5.2437500000000004
	.quad	0x4005c00431bde82d              # double 2.7187579999999998
	.quad	0x40140f43c7d5ed07              # double 5.014907
	.quad	0x3fe8427631b584b2              # double 0.75811300000000004
	.quad	0x4002a7faa044ae86              # double 2.3320210000000001
	.quad	0x400b7e17e34b9453              # double 3.436569
	.quad	0x4012cad3e920c06a              # double 4.6980740000000001
	.quad	0x402247cbb3c81909              # double 9.1402260000000002
	.quad	0x4002b20ea5b530cf              # double 2.3369420000000001
	.quad	0x401e9c17225b749b              # double 7.6524320000000001
	.quad	0x40130b267c6b8b69              # double 4.7608889999999997
	.quad	0x40204232b12d3416              # double 8.1292930000000005
	.quad	0x3ffd3064ece9a2c6              # double 1.8243149999999999
	.quad	0x3fe28c1db0142f62              # double 0.57960400000000001
	.quad	0x3fcc1882adc4c9c9              # double 0.219498
	.quad	0x401de68dfbd6a594              # double 7.4751510000000003
	.quad	0x40144a68f4b61fe2              # double 5.0726659999999999
	.quad	0x3fe2e809d495182b              # double 0.59082500000000004
	.quad	0x4018ed46b26bf877              # double 6.2317150000000003
	.quad	0x3ff50c64fdb09a67              # double 1.315526
	.quad	0x3fc506ab14ec204f              # double 0.164266
	.quad	0x4003d8ce2d1f1cfc              # double 2.4808620000000001
	.quad	0x401653b5bf6a0dbb              # double 5.5817480000000002
	.quad	0x3ff611a11233df2b              # double 1.3793040000000001
	.quad	0x402228813cab81f9              # double 9.0791109999999993
	.quad	0x4021f14f8b588e37              # double 8.9713100000000008
	.quad	0x40089ccc89b0ee4a              # double 3.076562
	.quad	0x40156067cf1c3266              # double 5.3441460000000003
	.quad	0x4012d704ff43419e              # double 4.7099799999999998
	.quad	0x40213965907d9125              # double 8.6121029999999994
	.quad	0x4005e34d26fa3fcd              # double 2.7359870000000002
	.quad	0x400d9e10060780fe              # double 3.7021790000000001
	.quad	0x4012e6034f3fd934              # double 4.7246220000000001
	.quad	0x401009817b95a294              # double 4.0092829999999999
	.quad	0x40056dd50a88effe              # double 2.6786289999999999
	.quad	0x401434a66559f6ec              # double 5.0514159999999997
	.quad	0x4022a9a8ef77f280              # double 9.3313670000000002
	.quad	0x40177e158750c1b9              # double 5.8731289999999996
	.quad	0x3fd25b4677b395c4              # double 0.28682099999999999
	.quad	0x400d14b6a619da9d              # double 3.6351140000000002
	.quad	0x4007ab4395810625              # double 2.9586250000000001
	.quad	0x3fecd97d49d7ba67              # double 0.90154900000000004
	.quad	0x4007252934acaff7              # double 2.8931450000000001
	.quad	0x4000365f5275ee9a              # double 2.0265490000000002
	.quad	0x4023e97720c8cd64              # double 9.9559870000000003
	.quad	0x3fff754195cc857f              # double 1.966127
	.quad	0x40220e0b912dba4d              # double 9.0274319999999992
	.quad	0x401347ce52deca25              # double 4.8201229999999997
	.quad	0x401afe6ea8544780              # double 6.7484690000000001
	.quad	0x4020a67ec7863bef              # double 8.3251860000000004
	.quad	0x401e54af4f0d844d              # double 7.5826999999999999
	.quad	0x400004944ed6fda8              # double 2.0022359999999999
	.quad	0x4012bfed20296b33              # double 4.6874279999999997
	.quad	0x401a1779e9d0e992              # double 6.522926
	.quad	0x401298301a79feca              # double 4.6486210000000003
	.quad	0x4015a5cc857f3062              # double 5.4119130000000002
	.quad	0x400e6d45e9185cee              # double 3.803356
	.quad	0x4022b2fbe33acd5b              # double 9.3495779999999993
	.quad	0x3ff3468fd199bb28              # double 1.2047270000000001
	.quad	0x3fb746ed245b291c              # double 0.090926000000000007
	.quad	0x402349d40ee06d94              # double 9.6441960000000008
	.quad	0x40195a5ca29845dd              # double 6.3382440000000004
	.quad	0x3fef64388ebcc6c5              # double 0.98098399999999996
	.quad	0x3febac3c9eecbfb1              # double 0.86477499999999996
	.quad	0x3ffeda78f25a2510              # double 1.9283380000000001
	.quad	0x401059dece571088              # double 4.087764
	.quad	0x4010920ab7132724              # double 4.1426189999999998
	.quad	0x40187fb86f47b678              # double 6.124727
	.quad	0x40223633ce63a5c2              # double 9.1058640000000004
	.quad	0x40140989df1172ef              # double 5.009315
	.quad	0x401fc88ce703afb8              # double 7.94585
	.quad	0x4013f246bf01322f              # double 4.9865979999999999
	.quad	0x40223e69ad42c3ca              # double 9.1219000000000001
	.quad	0x4015a597d49d7ba6              # double 5.4117119999999996
	.quad	0x401a9b9e492bc2fc              # double 6.6519709999999996
	.quad	0x400da1ccd9620685              # double 3.7040039999999999
	.quad	0x3ff524e379b77c03              # double 1.3215060000000001
	.quad	0x40224dec5f394b7b              # double 9.1521939999999997
	.quad	0x400beb76f6d76252              # double 3.489973
	.quad	0x40218b3ce63a5c1c              # double 8.7719489999999993
	.quad	0x4019b13a4f8726d0              # double 6.4230739999999997
	.quad	0x40165be37de939eb              # double 5.5897350000000001
	.quad	0x402377d9dba908a2              # double 9.7340839999999993
	.quad	0x4022caf449129889              # double 9.396395
	.quad	0x4010504af922962d              # double 4.078411
	.quad	0x4022da63f9a49c2c              # double 9.4265439999999998
	.quad	0x4003cc521dda059a              # double 2.4747659999999998
	.quad	0x4021511f0c34c1a9              # double 8.6584400000000006
	.quad	0x4018658a32f44913              # double 6.0991600000000004
	.quad	0x3ff2e2a5e785b5b7              # double 1.180334
	.quad	0x401cfedc7ef177a7              # double 7.248888
	.quad	0x3ffaf8433d6c7219              # double 1.685611
	.quad	0x40214adf9378ee28              # double 8.6462369999999993
	.quad	0x3fc20f88333fc86d              # double 0.141099
	.quad	0x401d46e2eb1c432d              # double 7.3192250000000003
	.quad	0x3ffa6e19b90ea9e7              # double 1.65188
	.quad	0x4021522595bbbe88              # double 8.6604430000000008
	.quad	0x400ccebc408d8ec9              # double 3.6009449999999998
	.quad	0x40217d3cff64cf8d              # double 8.7446059999999992
	.quad	0x401c7e1198aeb80f              # double 7.1231140000000002
	.quad	0x4011b1a437824d4d              # double 4.4234780000000002
	.quad	0x3fdacb0c026cc1ca              # double 0.41864299999999999
	.quad	0x3fe02c9d16fc9bc7              # double 0.50544599999999995
	.quad	0x4012286940357a35              # double 4.5394639999999997
	.quad	0x40121cc63f141206              # double 4.5281000000000002
	.quad	0x40227b07d0aed99d              # double 9.2402940000000005
	.quad	0x401602339c0ebee0              # double 5.5021500000000003
	.quad	0x4022abe5d9e40c84              # double 9.3357379999999992
	.quad	0x3fde371da37ef5a9              # double 0.47211399999999998
	.quad	0x40201a2d72ffd1dd              # double 8.0511280000000003
	.quad	0x4020e689656eefa2              # double 8.4502670000000002
	.quad	0x400fb4b05b7cfe58              # double 3.9632269999999998
	.quad	0x400f8a0ba1f4b1ee              # double 3.9424049999999999
	.quad	0x4019dc7da1ec4e72              # double 6.4653229999999997
	.quad	0x40227f8c64fdb09a              # double 9.2491179999999993
	.quad	0x400923009b30728f              # double 3.1420910000000002
	.quad	0x3fe259b1b79d909f              # double 0.57344899999999999
	.quad	0x3fdd4abe6a337a81              # double 0.45768700000000001
	.quad	0x3fbde40c8472c0e8              # double 0.116761
	.quad	0x40105dbb16c1e365              # double 4.0915340000000002
	.quad	0x400d18012dfd694d              # double 3.6367210000000001
	.quad	0x401f58dc11e42e12              # double 7.8367769999999997
	.quad	0x4023270b8cfbfc65              # double 9.5762599999999995
	.quad	0x40233ab40f66a551              # double 9.6146550000000008
	.quad	0x40096aa53fc00970              # double 3.177073
	.quad	0x401185a63f9a49c3              # double 4.3805170000000002
	.quad	0x401e384cf0739b02              # double 7.5549809999999997
	.quad	0x401404e831ad2136              # double 5.0047920000000001
	.quad	0x3fb9f6db940fecdd              # double 0.101423
	.quad	0x4019c835dedf1e08              # double 6.4455179999999999
	.quad	0x40114f00abf76a2f              # double 4.3271509999999997
	.quad	0x3ffd8d6d3b6cbd98              # double 1.8470279999999999
	.quad	0x401afeebf65dbfcf              # double 6.7489470000000003
	.quad	0x400874080f98fa37              # double 3.0566559999999998
	.quad	0x401e77ccc0379314              # double 7.6169919999999998
	.quad	0x4001b5019f3c70ca              # double 2.2133820000000002
	.quad	0x3ff0de71044f1a1a              # double 1.0543070000000001
	.quad	0x40037320535c9e67              # double 2.4312140000000002
	.quad	0x4023134202d9cf14              # double 9.5376130000000003
	.quad	0x401e43dc8b86b160              # double 7.5662710000000004
	.quad	0x401e4d31b9b66f93              # double 7.5753849999999998
	.quad	0x402243b3a68b19a4              # double 9.1322299999999998
	.quad	0x3ff24a18bd66277c              # double 1.1430899999999999
	.quad	0x4009db3a68b19a41              # double 3.2320449999999998
	.quad	0x40230b5610adcd2d              # double 9.5221409999999995
	.quad	0x40009f69878316a0              # double 2.0778379999999999
	.quad	0x40092477ff151e75              # double 3.1428069999999999
	.quad	0x4016a2734f82f512              # double 5.6586429999999996
	.quad	0x401ea1c3ac929aa2              # double 7.6579730000000001
	.quad	0x400f02d2fe3f35a0              # double 3.876379
	.quad	0x40200410d7be9857              # double 8.0079410000000006
	.quad	0x3fe51b5e95b78cca              # double 0.65959100000000004
	.quad	0x3ff257763e4abe6a              # double 1.146353
	.quad	0x3ff2c6d1e108c3f4              # double 1.17354
	.quad	0x4015ad3458cd20b0              # double 5.4191450000000003
	.quad	0x4023fee696a26e54              # double 9.9978529999999992
	.quad	0x401001355475a31a              # double 4.0011799999999997
	.quad	0x4021deffe2a3cea7              # double 8.9355460000000004
	.quad	0x3fe78bc7b45f17be              # double 0.73581300000000005
	.quad	0x400a1f63c31df762              # double 3.2653270000000001
	.quad	0x4015132db1e9f278              # double 5.2687290000000004
	.quad	0x3ffc4151a437824d              # double 1.7659469999999999
	.quad	0x40209991ff7164c7              # double 8.2999419999999997
	.quad	0x402012c2374794ea              # double 8.0366379999999999
	.quad	0x40052f3775b81301              # double 2.6480549999999998
	.quad	0x4022c2671ef30a4e              # double 9.3796929999999996
	.quad	0x40068bd44998d046              # double 2.818276
	.quad	0x4015f081c2e33eff              # double 5.4848699999999999
	.quad	0x401c6fbacb428912              # double 7.1091110000000004
	.quad	0x4007e18b502ababf              # double 2.9851290000000001
	.quad	0x4023ebe9424e5929              # double 9.9607639999999992
	.quad	0x401a69888f861a61              # double 6.6030600000000002
	.quad	0x4022d7c43b2dd378              # double 9.4214190000000002
	.quad	0x401c234bd76ee73e              # double 7.0344689999999996
	.quad	0x3fbd1d25aab47410              # double 0.11372599999999999
	.quad	0x40226965907d9125              # double 9.2058529999999994
	.quad	0x40117eeb702602c9              # double 4.373945
	.quad	0x4021fe0114d2f5dc              # double 8.9961020000000004
	.quad	0x4009d584b1ab0857              # double 3.229257
	.quad	0x40112c864883fd50              # double 4.2934809999999999
	.quad	0x402352b367a0f909              # double 9.6615249999999992
	.quad	0x401884b33daf8df8              # double 6.1295900000000003
	.quad	0x4001aa6f3f52fc26              # double 2.2082199999999998
	.quad	0x40154eca686e7e63              # double 5.3269440000000001
	.quad	0x3feabecaab8a5ce6              # double 0.83579000000000003
	.quad	0x3ff8538583621fb0              # double 1.520391
	.quad	0x3ff0a1b8ed1bf7ad              # double 1.0394829999999999
	.quad	0x3fe0ede97d06bbdc              # double 0.52904200000000001
	.quad	0x401a53de6149c6f3              # double 6.5819029999999996
	.quad	0x4002f5b2d4d4024b              # double 2.3699699999999999
	.quad	0x3ffa175d13d74d59              # double 1.6307039999999999
	.quad	0x400b7d34df04ddb5              # double 3.4361359999999999
	.quad	0x3ff8e7d88c1db014              # double 1.556603
	.quad	0x3ffa46573215fcc2              # double 1.6421730000000001
	.quad	0x401ef36933a0407d              # double 7.7377060000000001
	.quad	0x40235df4e4430b18              # double 9.6835090000000008
	.quad	0x401b09ef954eb13e              # double 6.759703
	.quad	0x4012ca1272c94b38              # double 4.697336
	.quad	0x4022c52b6f19934f              # double 9.385097
	.quad	0x400b851e321a2e7f              # double 3.4399989999999998
	.quad	0x401e821815a07b35              # double 7.6270449999999998
	.quad	0x3fe0b2d4d4024b34              # double 0.52183000000000002
	.quad	0x401a2f03d145d851              # double 6.5459129999999996
	.quad	0x40230f22e1ac57e2              # double 9.5295629999999996
	.quad	0x40237d26b723ee1c              # double 9.7444360000000003
	.quad	0x400fdd8a54823854              # double 3.983174
	.quad	0x40197159c4977425              # double 6.3606939999999996
	.quad	0x40106ac929aa1d75              # double 4.1042829999999997
	.quad	0x4014bd8f4f93bc0a              # double 5.185117
	.quad	0x4021062478854cdb              # double 8.5119969999999991
	.quad	0x402339efd86a8fc1              # double 9.6131580000000003
	.quad	0x4014ef2e8c0485a1              # double 5.2335760000000002
	.quad	0x40100d199bb2788e              # double 4.0127930000000003
	.quad	0x4023338fde2ef4e0              # double 9.6007069999999999
	.quad	0x3ffc90385c67dfe3              # double 1.78521
	.quad	0x3ffb61e2de870974              # double 1.711398
	.quad	0x401751159c497742              # double 5.8291839999999997
	.quad	0x4003a5c0b9991362              # double 2.4559340000000001
	.quad	0x401271804d983947              # double 4.6108409999999997
	.quad	0x400cd347a5b0ff11              # double 3.603164
	.quad	0x4021e7090f733a8a              # double 8.9512409999999996
	.quad	0x401b4e5e2478854d              # double 6.8265310000000001
	.quad	0x3ff0b573eab367a1              # double 1.0443
	.quad	0x400d5edbf8b9baa1              # double 3.6713179999999999
	.quad	0x40204ff08893b7d8              # double 8.1561319999999995
	.quad	0x40229ee78183f91e              # double 9.3103599999999993
	.quad	0x3ff69564b662fdfc              # double 1.411473
	.quad	0x4015d08f648c7193              # double 5.4536720000000001
	.quad	0x3fc090e66cb10343              # double 0.12942200000000001
	.quad	0x4021833311a543f2              # double 8.7562490000000004
	.quad	0x402033517a46173c              # double 8.1002310000000008
	.quad	0x3ff246a4ca4f440b              # double 1.142247
	.quad	0x40155c13b9f127f6              # double 5.3399190000000001
	.quad	0x3fb6aaf35e310dbf              # double 0.088546
	.quad	0x40197914b167ec78              # double 6.3682429999999997
	.quad	0x401ffcfbfc6540cc              # double 7.9970549999999996
	.quad	0x401c28c7e28240b8              # double 7.0398250000000004
	.quad	0x3fe26789e774eebf              # double 0.57513899999999996
	.quad	0x401d5af965b20b80              # double 7.3388419999999996
	.quad	0x401515710880d802              # double 5.2709390000000003
	.quad	0x40099fd694ccab3f              # double 3.2030460000000001
	.quad	0x400cab545c78a6db              # double 3.5836570000000001
	.quad	0x4021da79fec99f1b              # double 8.9267120000000002
	.quad	0x4020b8d3ae685db7              # double 8.3609899999999993
	.quad	0x40116fb0d51f81a6              # double 4.3590730000000004
	.quad	0x40119e9f6a93f291              # double 4.4049050000000003
	.quad	0x3fdd9aa1d755bccb              # double 0.462563
	.quad	0x3ff758f0c77dd873              # double 1.459214
	.quad	0x4016589d27c39368              # double 5.5865369999999999
	.quad	0x401a03532e7b3d8e              # double 6.503247
	.quad	0x3ff29e5f30e7ff58              # double 1.1636649999999999
	.quad	0x401cf24af0bf1a5d              # double 7.2366140000000003
	.quad	0x401476f60e0eb67c              # double 5.1161729999999999
	.quad	0x40083fefbf401c50              # double 3.0312190000000001
	.quad	0x3feb43d25247cb71              # double 0.85202900000000004
	.quad	0x4022a70aa21a719b              # double 9.3262529999999995
	.quad	0x4002a6d3f9e7b80b              # double 2.3314590000000002
	.quad	0x402053d9231c64bb              # double 8.1637660000000007
	.quad	0x40204c1333b96af0              # double 8.1485839999999996
	.quad	0x3ff528661ae70c13              # double 1.322363
	.quad	0x4023e1de05037500              # double 9.9411470000000008
	.quad	0x400389eb2074ea8e              # double 2.4423430000000002
	.quad	0x4016ad909f1f1498              # double 5.6694969999999998
	.quad	0x401c7159c4977425              # double 7.1106939999999996
	.quad	0x40110851654d61b3              # double 4.2581230000000003
	.quad	0x3fdbdc37a3db3bfb              # double 0.43531599999999998
	.quad	0x401183e1437c5693              # double 4.3787890000000003
	.quad	0x4020833f85510d39              # double 8.2563440000000003
	.quad	0x3febb10342aa9f7b              # double 0.86535799999999996
	.quad	0x4021fd2deca2552a              # double 8.994491
	.quad	0x40216e79ee02a77a              # double 8.7157739999999997
	.quad	0x4010b57eaa2a0a96              # double 4.1772410000000004
	.quad	0x3fe0f50e34762952              # double 0.529914
	.quad	0x4023893f6c2699c8              # double 9.7680620000000004
	.quad	0x4018a1ab0856e697              # double 6.1578790000000003
	.quad	0x3fefe27179bfdf7f              # double 0.99639200000000005
	.quad	0x4010c58c08b75ea6              # double 4.1929169999999996
	.quad	0x40014c9d9d3458cd              # double 2.1624099999999999
	.quad	0x402027daa4fca42b              # double 8.0778400000000001
	.quad	0x40042737110e453d              # double 2.5191479999999999
	.quad	0x401e0e8576cce5f7              # double 7.5141809999999997
	.quad	0x4016709c3ce2089e              # double 5.6099709999999998
	.quad	0x400b1baecd07852f              # double 3.3885169999999998
	.quad	0x400155d4e8fb00bd              # double 2.1669100000000001
	.quad	0x401d540d90e23af3              # double 7.3320829999999999
	.quad	0x4014cf7164c729f6              # double 5.2025810000000003
	.quad	0x402054c729f59cd0              # double 8.1655820000000006
	.quad	0x401c1ea91d9b1b7a              # double 7.0299420000000001
	.quad	0x4013a89acbc8c0cf              # double 4.9146530000000004
	.quad	0x402288fc9363f573              # double 9.2675520000000002
	.quad	0x4018b0dbf0563ed1              # double 6.172714
	.quad	0x3fe7c3c7d5ed06ff              # double 0.742649
	.quad	0x4023cd6e04c05921              # double 9.9012299999999999
	.quad	0x3ff595e17e34b945              # double 1.349092
	.quad	0x400dd63886594af5              # double 3.7296
	.quad	0x4021493dd97f62b7              # double 8.6430500000000006
	.quad	0x400929129888f862              # double 3.1450550000000002
	.quad	0x40232b20b8066c2b              # double 9.5842340000000003
	.quad	0x40013bff8a8f3a9b              # double 2.154296
	.quad	0x3fec0cf398e97072              # double 0.87658100000000005
	.quad	0x401dfd1d041cc533              # double 7.4971810000000003
	.quad	0x401e8088d6d3b6cc              # double 7.6255220000000001
	.quad	0x4007bea2d2fe3f36              # double 2.9680840000000002
	.quad	0x4004149491f2dc2b              # double 2.510049
	.quad	0x3f9cbaf965b20b80              # double 0.028056999999999999
	.quad	0x3ff1b05100a393ee              # double 1.1055459999999999
	.quad	0x40200e1f7d73c925              # double 8.0275839999999992
	.quad	0x40199301eabbcb1d              # double 6.3935620000000002
	.quad	0x3fe83526527a2058              # double 0.75648800000000005
	.quad	0x4004018bd66277c4              # double 2.5007549999999998
	.quad	0x4017982e87d2c7b9              # double 5.8986150000000004
	.quad	0x4002cfc3f811f4f5              # double 2.351448
	.quad	0x3fd48605681ecd4b              # double 0.32068000000000002
	.quad	0x4018c0a67620ee8d              # double 6.1881349999999999
	.quad	0x4003a9435ac8a372              # double 2.4576479999999998
	.quad	0x401c85ed4a1ad645              # double 7.1307879999999999
	.quad	0x4016c950331e3a7e              # double 5.6965950000000003
	.quad	0x402316160d887ebf              # double 9.5431369999999997
	.quad	0x40235562174c4ce0              # double 9.6667640000000006
	.quad	0x3fba65bea0ba1f4b              # double 0.103115
	.quad	0x4018217c5ef62f9d              # double 6.0327010000000003
	.quad	0x402022c9081c2e34              # double 8.0679400000000001
	.quad	0x401693ae685db76b              # double 5.6442199999999998
	.quad	0x401acef49cf56ead              # double 6.7021050000000004
	.quad	0x40113543aeab7996              # double 4.3020160000000001
	.quad	0x4019075ea67e846a              # double 6.2571969999999997
	.quad	0x3ff87e9856a37ac4              # double 1.530907
	.quad	0x40194afaf8594291              # double 6.3232229999999996
	.quad	0x3fee7ca2120e1f7d              # double 0.95271399999999995
	.quad	0x4000ab4e9813879c              # double 2.0836459999999999
	.quad	0x3fe1a1ff2e48e8a7              # double 0.55102499999999999
	.quad	0x401679e90795f677              # double 5.6190530000000001
	.quad	0x40236512018a43bb              # double 9.6974029999999995
	.quad	0x4021073f52fc2657              # double 8.5141550000000006
	.quad	0x40108930be0ded29              # double 4.1339750000000004
	.quad	0x4020352f1a9fbe77              # double 8.1038750000000004
	.quad	0x4012400ef1348b22              # double 4.562557
	.quad	0x3fd25ecc3e3193f7              # double 0.28703600000000001
	.quad	0x3fe22d1aeb3dd11c              # double 0.56800600000000001
	.quad	0x401db8ea39c51dac              # double 7.4305810000000001
	.quad	0x4001728848387df6              # double 2.1809240000000001
	.quad	0x400933300de4c511              # double 3.149994
	.quad	0x40027edb7281fd9c              # double 2.3119420000000002
	.quad	0x401099e236c15d2d              # double 4.150277
	.quad	0x400d408d8ec95bff              # double 3.65652
	.quad	0x401f66e43aa79bbb              # double 7.8504800000000001
	.quad	0x3fd8a48301a79fed              # double 0.38504100000000002
	.quad	0x400ff47c73eee526              # double 3.9943780000000002
	.quad	0x3fffc6d612c6ac21              # double 1.9860439999999999
	.quad	0x40227a33bd9cae21              # double 9.2386759999999999
	.quad	0x40148de1198aeb81              # double 5.1385540000000001
	.quad	0x400d65f8d2e514c2              # double 3.6747909999999999
	.quad	0x401a90c6b484d76b              # double 6.6413830000000003
	.quad	0x4022c4052d666a98              # double 9.3828519999999997
	.quad	0x3ff40916ca46e08f              # double 1.252219
	.quad	0x4016012a0ec74320              # double 5.5011369999999999
	.quad	0x4022604a9478c869              # double 9.1880690000000005
	.quad	0x3ff3c98d477bbf94              # double 1.236707
	.quad	0x401c93e89a88ace2              # double 7.1444419999999997
	.quad	0x4021b45cbbc2b94e              # double 8.8522700000000007
	.quad	0x4016122b7baecd08              # double 5.5177440000000004
	.quad	0x4022779a2834d270              # double 9.2335980000000006
	.quad	0x4021f5692b3cc4ac              # double 8.9793179999999992
	.quad	0x401bc085f4a1272d              # double 6.9380110000000004
	.quad	0x4019690752da9867              # double 6.3525669999999996
	.quad	0x401182c881e4712e              # double 4.3777179999999998
	.quad	0x4017f1487768166a              # double 5.9856280000000002
	.quad	0x3ff1ef640639d5e5              # double 1.1209450000000001
	.quad	0x4021450aaa7ded6c              # double 8.6348470000000006
	.quad	0x401ceee631f8a090              # double 7.2332999999999998
	.quad	0x3fd36a76965f5276              # double 0.303373
	.quad	0x401ecc475e6362a6              # double 7.6994910000000001
	.quad	0x400559f23465625a              # double 2.6689189999999998
	.quad	0x3fc0af038e29f9cf              # double 0.13034100000000001
	.quad	0x40206b845564b663              # double 8.209994
	.quad	0x401a75846e8f29d4              # double 6.6147629999999999
	.quad	0x4020c436fc158fb4              # double 8.3832319999999995
	.quad	0x3fe2363f572de43f              # double 0.56912200000000002
	.quad	0x4000704ccee5abc1              # double 2.054834
	.quad	0x3ff5bb1d0c804103              # double 1.358182
	.quad	0x4013cb6d86ec17ec              # double 4.9486600000000003
	.quad	0x3fd41b4bb5e0f7fd              # double 0.314166
	.quad	0x4013e5935fc3b4f6              # double 4.9741949999999999
	.quad	0x4010ac386d2ed784              # double 4.1681840000000001
	.quad	0x4012242e12620254              # double 4.5353320000000004
	.quad	0x402060f733a8a3f9              # double 8.1893860000000007
	.quad	0x4023b3dbe3c10518              # double 9.8512869999999992
	.quad	0x400e59f3c70c996b              # double 3.7939219999999998
	.quad	0x401488f9b13165d4              # double 5.1337650000000004
	.quad	0x3fd225529fe004b8              # double 0.283528
	.quad	0x401aeabde3fbbd7b              # double 6.7292399999999999
	.quad	0x401f9fc08fa7a850              # double 7.9060079999999999
	.quad	0x401d599806f26289              # double 7.3374940000000004
	.quad	0x4015b395810624dd              # double 5.4253749999999998
	.quad	0x400caab3edd8b60f              # double 3.583351
	.quad	0x4007a066c2acb85a              # double 2.9533209999999999
	.quad	0x40122ac96cc5fbf8              # double 4.5417839999999998
	.quad	0x401211554fbdad75              # double 4.5169269999999999
	.quad	0x4012955ef1fddebe              # double 4.6458700000000004
	.quad	0x40002c764adff823              # double 2.0217100000000001
	.quad	0x3ff09f70de8f6cf0              # double 1.038926
	.quad	0x401a50a5efe93187              # double 6.5787579999999997
	.quad	0x4015a795b35b0bbf              # double 5.4136569999999997
	.quad	0x40208e9142b302f7              # double 8.2784519999999997
	.quad	0x40044abe6a337a81              # double 2.5364960000000001
	.quad	0x3ff38f7b9e060fe4              # double 1.2225299999999999
	.quad	0x40177c4bd33d2956              # double 5.8713829999999998
	.quad	0x3fd2dc768dfbd6a6              # double 0.29470600000000002
	.quad	0x4022c7cc1871e6cd              # double 9.3902289999999997
	.quad	0x3ffbccc6822ff089              # double 1.7374940000000001
	.quad	0x401d3c1c6088d6d4              # double 7.3087020000000003
	.quad	0x400cacc0bdcad14a              # double 3.584352
	.quad	0x40112ebaade657b8              # double 4.2956339999999997
	.quad	0x4016f89c5e6ff7e0              # double 5.7427840000000003
	.quad	0x40133f6ec5b078d9              # double 4.8119459999999998
	.quad	0x402192d6238da3c2              # double 8.7867899999999999
	.quad	0x400478066c2acb86              # double 2.5586060000000002
	.quad	0x3fef063e07a28bb1              # double 0.96951200000000004
	.quad	0x4010b9d30270f388              # double 4.1814689999999999
	.quad	0x4015df5f0b28522f              # double 5.4681360000000003
	.quad	0x4017763baba7b917              # double 5.865462
	.quad	0x4021945c5718eb89              # double 8.7897669999999994
	.quad	0x40228813660e51d2              # double 9.2657729999999994
	.quad	0x400ec881e4712e41              # double 3.8479040000000002
	.quad	0x401d24b51372a38c              # double 7.2858470000000004
	.quad	0x401eff950b955f78              # double 7.7495919999999998
	.quad	0x4000357bc7f77af6              # double 2.0261149999999999
	.quad	0x401db02ff8ec0f88              # double 7.4220579999999998
	.quad	0x401866a93f290abb              # double 6.1002549999999998
	.quad	0x40215191ff7164c7              # double 8.6593169999999997
	.quad	0x401ab8c111ada76e              # double 6.6804240000000004
	.quad	0x401cb32378ab0c89              # double 7.1749400000000003
	.quad	0x40138b530ced4e4d              # double 4.8860590000000004
	.quad	0x402098e432441feb              # double 8.2986160000000009
	.quad	0x400f43e9ea140571              # double 3.9081610000000002
	.quad	0x402322bf76a2f48c              # double 9.5678669999999996
	.quad	0x40210e5eaab04253              # double 8.5280660000000008
	.quad	0x3ff2470329802c0a              # double 1.1423369999999999
	.quad	0x402367177a7008a7              # double 9.7013510000000007
	.quad	0x4019f45b6c3760bf              # double 6.4886299999999997
	.quad	0x4015ad13d74d594f              # double 5.4190209999999999
	.quad	0x40105bdf090f733b              # double 4.0897180000000004
	.quad	0x401d20b6f9fcb0c0              # double 7.2819479999999999
	.quad	0x40234154003254e7              # double 9.6275940000000002
	.quad	0x40226f314ca925ff              # double 9.2171730000000007
	.quad	0x40110a8e71476af9              # double 4.2603090000000003
	.quad	0x4014ab5675579af2              # double 5.1673220000000004
	.quad	0x4018dee99a62ed35              # double 6.2176879999999999
	.quad	0x402351db877ab325              # double 9.6598780000000008
	.quad	0x401907785729b281              # double 6.2572950000000001
	.quad	0x401b4c24c404a72f              # double 6.8243590000000003
	.quad	0x40218c90e66cb103              # double 8.7745429999999995
	.quad	0x401632396073de1e              # double 5.5490469999999998
	.quad	0x4020f8eb24a6a876              # double 8.4861690000000003
	.quad	0x40214aa454de7ea6              # double 8.6457850000000001
	.quad	0x4003581f10667f91              # double 2.4180280000000001
	.quad	0x4000ddf1172ef0ae              # double 2.1083699999999999
	.quad	0x4022be772d5e071c              # double 9.3720029999999994
	.quad	0x3fe1b083558a7610              # double 0.55279699999999998
	.quad	0x401aabd4cfd08d4c              # double 6.6678040000000003
	.quad	0x3ffbbecbb7f9d6f1              # double 1.734081
	.quad	0x40120e6d58c8eef2              # double 4.5140890000000002
	.quad	0x40203b1dd5d3dc8c              # double 8.1154620000000008
	.quad	0x40137d698fe69271              # double 4.8724730000000003
	.quad	0x40134464dc22ab26              # double 4.8167910000000003
	.quad	0x3fc20b34e7685986              # double 0.14096700000000001
	.quad	0x401efe147ae147ae              # double 7.7481249999999999
	.quad	0x400f9a0cf1800a7c              # double 3.9502199999999998
	.quad	0x4022ae6c4c5974e6              # double 9.3406699999999994
	.quad	0x40092b5c39bcba30              # double 3.146172
	.quad	0x400ea7221858bc5a              # double 3.8316080000000001
	.quad	0x401e9014727dcbde              # double 7.6407030000000002
	.quad	0x400d7ceb78897e99              # double 3.6859959999999998
	.quad	0x3ff3a86e7e62dc6e              # double 1.228621
	.quad	0x3ff28f54d1e96c40              # double 1.1599930000000001
	.quad	0x4016ba79bbadc098              # double 5.682105
	.quad	0x402271e53a81dc0e              # double 9.2224520000000005
	.quad	0x3f9033a4723aafff              # double 0.015821999999999999
	.quad	0x402189fba450acc1              # double 8.7694980000000005
	.quad	0x400791df761cbccf              # double 2.9462269999999999
	.quad	0x401e410a137f38c5              # double 7.5635149999999997
	.quad	0x3fd4d466f5019f3c              # double 0.32546399999999998
	.quad	0x4014f8c7e28240b8              # double 5.2429500000000004
	.quad	0x401618a1dfb9389b              # double 5.5240549999999997
	.quad	0x40181e9531550ca2              # double 6.0298660000000002
	.quad	0x40055c4b09e98dce              # double 2.6700650000000001
	.quad	0x4021e20a958537e3              # double 8.9414870000000004
	.quad	0x400e667c6b8b6955              # double 3.8000419999999999
	.quad	0x3fc0050bd87b56b8              # double 0.12515399999999999
	.quad	0x401af8b3b320535d              # double 6.7428730000000003
	.quad	0x4009f0bd87b56b87              # double 3.2425489999999999
	.quad	0x4002b6501e2584f5              # double 2.3390200000000001
	.quad	0x4020304bc27631b6              # double 8.0943280000000009
	.quad	0x401a67160956c0d7              # double 6.60067
	.quad	0x401656801711947d              # double 5.584473
	.quad	0x3ff1e62aa19439de              # double 1.1186929999999999
	.quad	0x401376412cf0f9d3              # double 4.8654830000000002
	.quad	0x4018c4623d0bfa09              # double 6.1917809999999998
	.quad	0x40229fdfa00e27e1              # double 9.3122530000000001
	.quad	0x40147f2c7325918a              # double 5.124193
	.quad	0x401209ef0f16f438              # double 4.5097009999999997
	.quad	0x40061c9ff92f2b67              # double 2.7639770000000001
	.quad	0x40180cbfb15b573f              # double 6.0124500000000003
	.quad	0x4021d3c42a66dbd7              # double 8.9136059999999997
	.quad	0x4015334a01abd1ab              # double 5.3000870000000004
	.quad	0x4021dc0181e03f70              # double 8.9296989999999994
	.quad	0x3fe95d2ae8e1d649              # double 0.79262299999999997
	.quad	0x40224153dea465a5              # double 9.1275929999999992
	.quad	0x4012dfc2224edf61              # double 4.7185139999999999
	.quad	0x401ba4bec679cc75              # double 6.9108840000000002
	.quad	0x40104cc70867ad8e              # double 4.0749779999999998
	.quad	0x40203394317acc4f              # double 8.1007400000000001
	.quad	0x4011ec37a3db3bfb              # double 4.4806809999999997
	.quad	0x3fee8d306a2b1705              # double 0.954735
	.quad	0x40236b1209edbf8c              # double 9.7091220000000006
	.quad	0x40065b69984a0e41              # double 2.794635
	.quad	0x401a7dcfcc5b8dc5              # double 6.6228629999999997
	.quad	0x40128141a6937d20              # double 4.6262270000000001
	.quad	0x4015b30b178b3700              # double 5.4248469999999998
	.quad	0x401994d6e47dc37a              # double 6.3953509999999998
	.quad	0x401d91a79fec99f2              # double 7.3922410000000003
	.quad	0x4006eb51bd61f5be              # double 2.8649019999999998
	.quad	0x4002c8a265f0f5a1              # double 2.347966
	.quad	0x400bcc8711d798d9              # double 3.4748670000000002
	.quad	0x400947a398201cd6              # double 3.15998
	.quad	0x4010ea7e30878748              # double 4.2289969999999997
	.quad	0x40219b743632c1f4              # double 8.8036209999999996
	.quad	0x40218f809917939a              # double 8.7802779999999991
	.quad	0x4018d23810e88590              # double 6.205292
	.quad	0x400e5d4738a3b57c              # double 3.7955459999999999
	.quad	0x402267505d0fa58f              # double 9.2017849999999992
	.quad	0x4008213a0c6b484d              # double 3.0162239999999998
	.quad	0x4020e52391d57ffa              # double 8.4475370000000005
	.quad	0x3ff0dd7dbf487fcc              # double 1.0540750000000001
	.quad	0x4007ebfca85caafc              # double 2.9902280000000001
	.quad	0x40113ad106ee30cb              # double 4.3074380000000003
	.quad	0x40133e264e48626f              # double 4.8106929999999997
	.quad	0x40084bb8800eae19              # double 3.0369730000000001
	.quad	0x402203d7d3910c2c              # double 9.0075059999999993
	.quad	0x40039cd898b2e9cd              # double 2.4515850000000001
	.quad	0x40153f5126634118              # double 5.311833
	.quad	0x40168494d50ebaae              # double 5.6294740000000001
	.quad	0x40125a6a875d56f3              # double 4.5882969999999998
	.quad	0x400415a5b9628cbd              # double 2.51057
	.quad	0x3ff301f53825e13b              # double 1.187978
	.quad	0x4023c2278d0cc35d              # double 9.8792080000000002
	.quad	0x400438b3700474da              # double 2.5276860000000001
	.quad	0x400c4a116659d12d              # double 3.5361660000000001
	.quad	0x3fb6afcce1c58256              # double 0.088620000000000004
	.quad	0x40211e2f37fbefd0              # double 8.558954
	.quad	0x3ffd42070b8cfbfc              # double 1.8286199999999999
	.quad	0x40079dfeb8d82342              # double 2.9521459999999999
	.quad	0x400dcddc6195464e              # double 3.7255180000000001
	.quad	0x4003d4dcebfec13c              # double 2.4789370000000002
	.quad	0x3ff0248d7e02645e              # double 1.0089239999999999
	.quad	0x4023922b1704ff43              # double 9.7854849999999995
	.quad	0x40071ac1d29dc726              # double 2.8880650000000001
	.quad	0x3fe8aa77a2cecc81              # double 0.77080899999999997
	.quad	0x3ffd7f8982cb20fb              # double 1.843637
	.quad	0x40110ec13b9f127f              # double 4.2644089999999997
	.quad	0x400fd41d8e864021              # double 3.9785720000000002
	.quad	0x4012a953586ca8a0              # double 4.6653570000000002
	.quad	0x40204973b85e80bf              # double 8.1434610000000003
	.quad	0x401f355000c9539c              # double 7.8020630000000004
	.quad	0x4023bc9a133c1ce7              # double 9.8683630000000004
	.quad	0x4022e90c4dec1c1d              # double 9.4551719999999992
	.quad	0x40222b1183b60286              # double 9.0841180000000001
	.quad	0x401e6ddd2ae8e1d6              # double 7.6072889999999997
	.quad	0x40203080d801b435              # double 8.0947329999999997
	.quad	0x3f8219a847b24639              # double 0.0088380000000000003
	.quad	0x4014cdc9c4da9004              # double 5.2009650000000001
	.quad	0x401ce9888f861a61              # double 7.2280600000000002
	.quad	0x40066ff6d330941d              # double 2.8046700000000002
	.quad	0x401aee8ee6b8305e              # double 6.7329670000000004
	.quad	0x4019f4ece9a2c669              # double 6.489185
	.quad	0x4022242bb6672fba              # double 9.070646
	.quad	0x40222ba6aca79357              # double 9.0852559999999993
	.quad	0x3ff2b5d67ba237ce              # double 1.169394
	.quad	0x3fdb66d373affb05              # double 0.428151
	.quad	0x400b72ce032db1ea              # double 3.431057
	.quad	0x40063afc8b0079a3              # double 2.7788020000000002
	.quad	0x4016441bfbdf090f              # double 5.5665129999999996
	.quad	0x3ff90855da272863              # double 1.564535
	.quad	0x40220954eb13dfb1              # double 9.0182260000000003
	.quad	0x40223b08bb906467              # double 9.1153010000000005
	.quad	0x401c5438088509c0              # double 7.0822450000000003
	.quad	0x401a7aec8d5c7475              # double 6.6200429999999999
	.quad	0x4017badafd113837              # double 5.9324760000000003
	.quad	0x40239efcdee34fc6              # double 9.8105229999999999
	.quad	0x400a7d5a187a4a49              # double 3.311207
	.quad	0x4016261240746456              # double 5.5371790000000001
	.quad	0x40233a0407cc7d1c              # double 9.6133120000000005
	.quad	0x400e03a5c1c6088d              # double 3.7517809999999998
	.quad	0x3fe414b7b28954a8              # double 0.627529
	.quad	0x3feae4a16a487336              # double 0.84040899999999996
	.quad	0x4020fab862b27cbf              # double 8.4896879999999992
	.quad	0x401a29a6f826edab              # double 6.5406760000000004
	.quad	0x401422cb641700ce              # double 5.0339790000000004
	.quad	0x40208c8b86b15f89              # double 8.274502
	.quad	0x401b8e054690de09              # double 6.8886919999999998
	.quad	0x402180b04ab606b8              # double 8.7513450000000006
	.quad	0x401594712e40852b              # double 5.3949629999999997
	.quad	0x4016e69ca9ef5233              # double 5.7252070000000002
	.quad	0x40115ad9ad85dfa8              # double 4.3387209999999996
	.quad	0x4002d44aa53fc009              # double 2.3536579999999998
	.quad	0x402141882adc4c9d              # double 8.6279920000000008
	.quad	0x4020750b0f27bb30              # double 8.2286000000000001
	.quad	0x400f48366516db0e              # double 3.9102600000000001
	.quad	0x400db90ea9e6eeb7              # double 3.71536
	.quad	0x3fc5d3bafd976ff4              # double 0.17052400000000001
	.quad	0x3fff0663c74fb54a              # double 1.93906
	.quad	0x401711aef6f8f041              # double 5.7672689999999998
	.quad	0x4022b0605681ecd5              # double 9.3444850000000006
	.quad	0x401ba831ad2135db              # double 6.9142520000000003
	.quad	0x4005f63f572de43f              # double 2.7452380000000001
	.quad	0x40089255f3519bd4              # double 3.071453
	.quad	0x3ffeb5ab7dc7abfc              # double 1.9193530000000001
	.quad	0x3fe9d2e2fbe33acd              # double 0.80699299999999996
	.quad	0x4005f1c8eabffcdb              # double 2.7430590000000001
	.quad	0x40166572580c3090              # double 5.5990690000000001
	.quad	0x4006846e8f29d40f              # double 2.8146640000000001
	.quad	0x4021fc7d1bb4916d              # double 8.9931420000000006
	.quad	0x3fea1f94855da273              # double 0.81635500000000005
	.quad	0x401fc1e108c3f3e0              # double 7.9393349999999998
	.quad	0x3feb832db1e9f278              # double 0.85976300000000005
	.quad	0x401f11ef73c0c1fd              # double 7.7675150000000003
	.quad	0x401a28b8f14db595              # double 6.5397679999999996
	.quad	0x4011ddb0dd82fd76              # double 4.4664950000000001
	.quad	0x40002c9e236c15d3              # double 2.0217860000000001
	.quad	0x401dbcbe1eb4202e              # double 7.4343190000000003
	.quad	0x3fcd5147f1305964              # double 0.229043
	.quad	0x4022879fa97e132b              # double 9.2648899999999994
	.quad	0x4013a0096feb4a66              # double 4.9062859999999997
	.quad	0x401fd4eb56fb8f58              # double 7.957929
	.quad	0x3ff89240746455eb              # double 1.535706
	.quad	0x40164b09e98dcdb3              # double 5.5732799999999996
	.quad	0x4014c5e679463cfb              # double 5.1932619999999998
	.quad	0x3ff01592d98bf7f0              # double 1.0052669999999999
	.quad	0x401f423315d701da              # double 7.814648
	.quad	0x401c73986338b47c              # double 7.1128859999999996
	.quad	0x40078aafbc1acde2              # double 2.9427180000000002
	.quad	0x401c9e4e69f05ea2              # double 7.1545959999999997
	.quad	0x40141640a6b93ccd              # double 5.0217309999999999
	.quad	0x4012ae5471715c64              # double 4.6702440000000003
	.quad	0x4016de43675ddd2b              # double 5.7170540000000001
	.quad	0x4019ec43f5f91601              # double 6.480728
	.quad	0x400ba8c7192ea52f              # double 3.457411
	.quad	0x3faa580c308feac4              # double 0.051452999999999999
	.quad	0x400e6d30f062d40b              # double 3.8033160000000001
	.quad	0x401296149c6f36f0              # double 4.6465630000000004
	.quad	0x3fe2c484944ed6fe              # double 0.58648900000000004
	.quad	0x401b3ee4e26d4802              # double 6.81142
	.quad	0x401d7cb10342aa9f              # double 7.3717689999999996
	.quad	0x401a81f70de8f6cf              # double 6.626919
	.quad	0x401aa7646ae3a3a9              # double 6.6634690000000001
	.quad	0x4022446ae3a3a8e7              # double 9.1336279999999999
	.quad	0x4010cd23d4f15e7d              # double 4.2003320000000004
	.quad	0x4022e6c4e7253da7              # double 9.4507209999999997
	.quad	0x3fa3723ee1bd1eda              # double 0.037981000000000001
	.quad	0x4011ca0902de00d2              # double 4.4473000000000003
	.quad	0x400c666559f6ec5b              # double 3.549998
	.quad	0x401d80b9dc2f405f              # double 7.3757089999999996
	.quad	0x401eea9717df19d6              # double 7.7290919999999996
	.quad	0x3ff053c579f23465              # double 1.0204519999999999
	.quad	0x4003995c42203600              # double 2.4498829999999998
	.quad	0x4016c2478854cdb8              # double 5.6897260000000003
	.quad	0x4020d02d7b634dad              # double 8.4065969999999997
	.quad	0x4023c55b4677b396              # double 9.8854620000000004
	.quad	0x40139549b62c7757              # double 4.8957889999999997
	.quad	0x4012864d7f0ed3d8              # double 4.6311549999999997
	.quad	0x3fe78f57f737da62              # double 0.73624800000000001
	.quad	0x40130c93a7115161              # double 4.7622819999999999
	.quad	0x4015397396d0917d              # double 5.3061049999999996
	.quad	0x401d5367a0f9096c              # double 7.3314500000000002
	.quad	0x4009dd9231c64ba9              # double 3.2331889999999999
	.quad	0x4023b239e6ab9b24              # double 9.8480980000000002
	.quad	0x402180ce2d1f1cfc              # double 8.7515730000000004
	.quad	0x4002bf705857afea              # double 2.3434759999999999
	.quad	0x3fc8bb6672fba01f              # double 0.193219
	.quad	0x4012946d82ba5a04              # double 4.6449490000000004
	.quad	0x400f7947cfa26a23              # double 3.9342190000000001
	.quad	0x4005a0d887ebf22c              # double 2.703538
	.quad	0x40191d31b9b66f93              # double 6.2785099999999998
	.quad	0x3fe4104b3c3e74b0              # double 0.62698900000000002
	.quad	0x4015b570c564f97f              # double 5.4271880000000001
	.quad	0x4018f517a46173b8              # double 6.2393479999999997
	.quad	0x4000f79f23465626              # double 2.1209090000000002
	.quad	0x40133c6bce8533b1              # double 4.809005
	.quad	0x400edd883ba3443d              # double 3.8581699999999999
	.quad	0x400da5b078d92fb2              # double 3.7059030000000002
	.quad	0x3ffc9fcf3dc054ef              # double 1.7890159999999999
	.quad	0x401c87913e81450f              # double 7.13239
	.quad	0x401f7d3dc8b86b16              # double 7.872306
	.quad	0x3ffaea6f3f52fc26              # double 1.6822349999999999
	.quad	0x401ba5dcc63f1412              # double 6.911975
	.quad	0x401c1989df1172ef              # double 7.02494
	.quad	0x40160d1aa821f299              # double 5.5127969999999999
	.quad	0x401ddb84988094e6              # double 7.4643730000000001
	.quad	0x401602e0e30446b7              # double 5.5028110000000003
	.quad	0x4021a0997c3d6840              # double 8.8136709999999994
	.quad	0x401f246173b85e81              # double 7.7855280000000002
	.quad	0x401779103c8e25c8              # double 5.8682259999999999
	.quad	0x401af019b0ab2e17              # double 6.7344730000000004
	.quad	0x4021ab4091c08744              # double 8.8344769999999996
	.quad	0x401ed83b60285ec4              # double 7.7111640000000001
	.quad	0x3ffdabba98eda22f              # double 1.8544259999999999
	.quad	0x4013fc20d5629d84              # double 4.996219
	.quad	0x4014be0daa0cae64              # double 5.1855989999999998
	.quad	0x401938ac5c13fd0d              # double 6.305345
	.quad	0x4015c769ec2ce465              # double 5.4447400000000004
	.quad	0x402280194c016052              # double 9.2501929999999994
	.quad	0x401c59d7342edbb6              # double 7.0877350000000003
	.quad	0x3fe221e1d2178f69              # double 0.56663600000000003
	.quad	0x40144b152f3c2dae              # double 5.0733230000000002
	.quad	0x40080cd855970b4a              # double 3.0062720000000001
	.quad	0x4005a11a11233df3              # double 2.7036630000000001
	.quad	0x401b93a7daa4fca4              # double 6.8941949999999999
	.quad	0x4021eca2120e1f7d              # double 8.9621739999999992
	.quad	0x401fd586ca89fc6e              # double 7.9585220000000003
	.quad	0x40075c664d3bf2f5              # double 2.9201169999999999
	.quad	0x3ff6d2ba16e7a312              # double 1.426447
	.quad	0x400f7d6a593a2df9              # double 3.9362379999999999
	.quad	0x4022129845dc8323              # double 9.0363179999999996
	.quad	0x401d5e4b018611fd              # double 7.3420829999999997
	.quad	0x40120e957470eb25              # double 4.5142420000000003
	.quad	0x400632990f301eac              # double 2.7747060000000001
	.quad	0x4020ed25cc426352              # double 8.4631790000000002
	.quad	0x401f2e03b3e9a6f8              # double 7.7949359999999998
	.quad	0x3feb329802c0a4a0              # double 0.84992599999999995
	.quad	0x3fcc1c1d6cf850df              # double 0.219608
	.quad	0x4006f99780baa583              # double 2.8718710000000001
	.quad	0x401a4b42cc2d6a9c              # double 6.5734969999999997
	.quad	0x401199bdc69f8c22              # double 4.4001380000000001
	.quad	0x4018f83b60285ec4              # double 6.2424140000000001
	.quad	0x3fffc74ea8da7f3d              # double 1.986159
	.quad	0x4013e7bfa4c61d86              # double 4.9763169999999999
	.quad	0x4023e05be1a82624              # double 9.9382009999999993
	.quad	0x401367e02645e4e7              # double 4.8514410000000003
	.quad	0x40004f47304039ac              # double 2.03871
	.quad	0x40224b08feac42ea              # double 9.1465530000000008
	.quad	0x402039845dc83233              # double 8.1123379999999994
	.quad	0x40157759ab6d00b4              # double 5.3665529999999997
	.quad	0x401d4e878fabda0e              # double 7.326689
	.quad	0x402089240746455f              # double 8.2678530000000006
	.quad	0x401ebf722e1ac57e              # double 7.6869589999999999
	.quad	0x4003b6e7a311e860              # double 2.4643090000000001
	.quad	0x400ef591cd1c7de5              # double 3.869907
	.quad	0x3fd646b26bf8769f              # double 0.34806500000000001
	.quad	0x3fc314ec204f2ae0              # double 0.14907599999999999
	.quad	0x4020e9567dbb16c2              # double 8.4557380000000002
	.quad	0x401164538ef34d6a              # double 4.3479749999999999
	.quad	0x400ca0a7c5ac471b              # double 3.5784449999999999
	.quad	0x400276e371540032              # double 2.3080509999999999
	.quad	0x402137df5cf2495e              # double 8.6091259999999998
	.quad	0x3ff644cbe1eb4203              # double 1.391796
	.quad	0x4020f0d9f90539fc              # double 8.4704130000000006
	.quad	0x3feb883558a76102              # double 0.86037699999999995
	.quad	0x401a2a7c5ac471b4              # double 6.5414899999999996
	.quad	0x4017d9d66adb402d              # double 5.9627319999999999
	.quad	0x400e93532e7b3d8e              # double 3.821936
	.quad	0x401c0dd00f776c48              # double 7.0134889999999999
	.quad	0x400900e5a35d67ba              # double 3.1254379999999999
	.quad	0x3ff66bf444e0daa1              # double 1.401356
	.quad	0x4017635eb7457c0b              # double 5.8470409999999999
	.quad	0x40147a6c5d206c87              # double 5.1195539999999999
	.quad	0x4016dfd6d7e889c2              # double 5.7185930000000003
	.quad	0x401b25e28aa43351              # double 6.7869970000000004
	.quad	0x400dec0379314446              # double 3.7402410000000001
	.quad	0x3ffd22cdc011d367              # double 1.820997
	.quad	0x401e35f6fd21ff2e              # double 7.5526999999999997
	.quad	0x40220c8882f0e0a8              # double 9.0244789999999995
	.quad	0x401a2ac03ff69015              # double 6.5417490000000003
	.quad	0x3fe472ead9274e23              # double 0.63902800000000004
	.quad	0x3ff46de97d06bbdc              # double 1.276834
	.quad	0x40188cc532a497fa              # double 6.1374709999999997
	.quad	0x3ff016c508b32ce9              # double 1.0055590000000001
	.quad	0x4014791f2dc2b0ea              # double 5.1182829999999999
	.quad	0x401b4312f4cf4a56              # double 6.8155020000000004
	.quad	0x3fdac0ebedfa43fe              # double 0.41802499999999998
	.quad	0x4017ce40852b4d8c              # double 5.9514180000000003
	.quad	0x4020a788765ba6f0              # double 8.3272130000000004
	.quad	0x400e65c5718eb895              # double 3.799693
	.quad	0x402146caeea63b69              # double 8.6382670000000008
	.quad	0x40146bd9018e7579              # double 5.1053199999999999
	.quad	0x402092b53d640e9d              # double 8.2865389999999994
	.quad	0x4017b4549b62c775              # double 5.9261039999999996
	.quad	0x402350c49ba5e354              # double 9.65775
	.quad	0x401e7b03e20ccff2              # double 7.6201319999999999
	.quad	0x40108f5f4e4430b1              # double 4.1400119999999996
	.quad	0x4006b4202d9cf13d              # double 2.837952
	.quad	0x401a3a8650e77920              # double 6.5571529999999996
	.quad	0x401d38090b417ca2              # double 7.3047219999999999
	.quad	0x401616ddaceee0f4              # double 5.5223300000000002
	.quad	0x4005490470a808c8              # double 2.6606529999999999
	.quad	0x4014b7dc37a3db3c              # double 5.179551
	.quad	0x40205bf290abb44e              # double 8.1795849999999994
	.quad	0x4020b7f993d5347a              # double 8.3593259999999994
	.quad	0x401cd040bfe3b03e              # double 7.2033719999999999
	.quad	0x401d22c6ac215b9a              # double 7.2839609999999997
	.quad	0x4011d181e03f7058              # double 4.4545969999999997
	.quad	0x40084995aaf78fef              # double 3.03593
	.quad	0x40142adb8348f53c              # double 5.0418529999999997
	.quad	0x40238a697aeddce8              # double 9.7703360000000003
	.quad	0x4020bb66b6177ea2              # double 8.3660180000000004
	.quad	0x3ff17bdad7518b0d              # double 1.092738
	.quad	0x401d7a643cc07aaf              # double 7.369523
	.quad	0x401015aea3161a1e              # double 4.0211740000000002
	.quad	0x401580218def416c              # double 5.3751280000000001
	.quad	0x40201a64e48626f6              # double 8.0515509999999999
	.quad	0x40092d14a0a0f4d8              # double 3.1470120000000001
	.quad	0x4016a262888b545c              # double 5.6585789999999996
	.quad	0x3fee47368ad68837              # double 0.94619299999999995
	.quad	0x401bac78a6dacabc              # double 6.9184289999999997
	.quad	0x400cc0c308feac43              # double 3.594122
	.quad	0x40126686e7e62dc7              # double 4.6001240000000001
	.quad	0x401ab74538ef34d7              # double 6.6789750000000003
	.quad	0x3ff45719f7f8ca82              # double 1.2712650000000001
	.quad	0x4016bcdd93c46d83              # double 5.6844390000000002
	.quad	0x4008c3d2d87f8876              # double 3.0956169999999998
	.quad	0x4014d1697f1f9ad0              # double 5.204504
	.quad	0x400f88605681ecd5              # double 3.9415900000000001
	.quad	0x40172ba51a005c46              # double 5.7926219999999997
	.quad	0x4010bf3dc054ef46              # double 4.1867590000000003
	.quad	0x401fb18ac9f2fdb9              # double 7.923381
	.quad	0x4023223e39f77293              # double 9.5668810000000004
	.quad	0x401690dcfcc5b8dc              # double 5.6414679999999997
	.quad	0x402385c486ad2dcb              # double 9.7612649999999998
	.quad	0x40035d96638433d7              # double 2.4206970000000001
	.quad	0x400873a81dc0db27              # double 3.056473
	.quad	0x40056c4d65e46067              # double 2.6778819999999999
	.quad	0x401805a1016ce78a              # double 6.0054970000000001
	.quad	0x3fefb53d640e9d52              # double 0.99087400000000003
	.quad	0x401dcedcc20d562a              # double 7.4520140000000001
	.quad	0x4023d1641f644956              # double 9.9089670000000005
	.quad	0x3fcddd5d3dc8b86b              # double 0.233318
	.quad	0x40016f661f18c9fb              # double 2.1793939999999998
	.quad	0x40175f3775b81301              # double 5.8429849999999997
	.quad	0x4013ee1a3f4666ed              # double 4.9825220000000003
	.quad	0x40236ef21f6cacd2              # double 9.7166910000000009
	.quad	0x40214aa582dbe7f3              # double 8.6457940000000004
	.quad	0x401d3f6e82949a56              # double 7.3119449999999997
	.quad	0x4011098fe69270b0              # double 4.2593379999999996
	.quad	0x3fff626a22b3892f              # double 1.961527
	.quad	0x3ffd0317acc4ef89              # double 1.8132550000000001
	.quad	0x401ccf4a558ea7ce              # double 7.2024319999999999
	.quad	0x3fef3f961804d984              # double 0.97651200000000004
	.quad	0x4021ad51d68c692f              # double 8.8385149999999992
	.quad	0x4022504dfce3150e              # double 9.1568450000000006
	.quad	0x401969784ec636b1              # double 6.3529980000000004
	.quad	0x4020c0c5004fb118              # double 8.3765029999999996
	.quad	0x401702ad81adea89              # double 5.7526149999999996
	.quad	0x400e101754b05b7d              # double 3.757857
	.quad	0x401eb43e963dc487              # double 7.6760200000000002
	.quad	0x40133473471f7942              # double 4.801221
	.quad	0x40202f325918a00a              # double 8.0921810000000001
	.quad	0x402296fd86a8fc0d              # double 9.2949029999999997
	.quad	0x40158e7d9988d2a2              # double 5.389151
	.quad	0x4010fdcdf6987831              # double 4.2478559999999996
	.quad	0x4005f99cbee807bc              # double 2.7468810000000001
	.quad	0x4012e074a771c971              # double 4.719195
	.quad	0x401f89780baa582e              # double 7.8842470000000002
	.quad	0x3ff8d63992c8c500              # double 1.5523009999999999
	.quad	0x40224c71f79420b4              # double 9.1493070000000003
	.quad	0x401d4c53f39d1b2e              # double 7.3245389999999997
	.quad	0x401a59f5dfeb8d82              # double 6.5878519999999998
	.quad	0x4018b96fa82e87d3              # double 6.1810900000000002
	.quad	0x400b422dd7a99fa1              # double 3.407314
	.quad	0x401307ebaf102364              # double 4.7577350000000003
	.quad	0x401762df9378ee28              # double 5.8465559999999996
	.quad	0x400546b50b0f27bb              # double 2.6595249999999999
	.quad	0x400f22f72b452828              # double 3.8920729999999999
	.quad	0x401bdfe60c38f367              # double 6.9686510000000004
	.quad	0x3fd9bac710cb295f              # double 0.40202500000000002
	.quad	0x400a2133c1ce6c09              # double 3.2662119999999999
	.quad	0x40214abef06b3786              # double 8.6459879999999991
	.quad	0x40115dfdac68a937              # double 4.3417880000000002
	.quad	0x40129974a3400b89              # double 4.6498590000000002
	.quad	0x4013db85a4f00ef1              # double 4.9643769999999998
	.quad	0x40238235935fc3b5              # double 9.754315
	.quad	0x4016bf0563ed0f62              # double 5.6865439999999996
	.quad	0x3fed61719f7f8ca8              # double 0.91814499999999999
	.quad	0x4009d095af294dd7              # double 3.2268479999999999
	.quad	0x402022dbe7f2c301              # double 8.0680840000000007
	.quad	0x4018cf4e4430b179              # double 6.2024470000000003
	.quad	0x40117dc768dfbd6a              # double 4.3728309999999997
	.quad	0x3ff4282d7b634dad              # double 1.259809
	.quad	0x4011dc5da6a44418              # double 4.4652010000000004
	.quad	0x401a01d53cddd6e0              # double 6.5017899999999997
	.quad	0x4014d292817763e5              # double 5.2056370000000003
	.quad	0x400cd50763a19008              # double 3.6040179999999999
	.quad	0x4003e3201040bfe4              # double 2.4859010000000001
	.quad	0x40232e83a109d063              # double 9.5908479999999993
	.quad	0x4021fb382e44b6e9              # double 8.9906629999999996
	.quad	0x40189f21b3aeee95              # double 6.1554019999999996
	.quad	0x4010389118c197e5              # double 4.0552409999999997
	.quad	0x4001be4cd7492791              # double 2.2179199999999999
	.quad	0x402014477ff151e7              # double 8.0396079999999994
	.quad	0x401b70620ab71327              # double 6.8597489999999999
	.quad	0x401923aafff36ac6              # double 6.2848319999999998
	.quad	0x3ff56831ad2135db              # double 1.3379380000000001
	.quad	0x401a61eff9f87f02              # double 6.5956419999999998
	.quad	0x4010a94ea077036d              # double 4.1653390000000003
	.quad	0x402160489d27c393              # double 8.6880539999999993
	.quad	0x401287db2b346131              # double 4.6326720000000003
	.quad	0x401c7d8665e02ea9              # double 7.1225829999999997
	.quad	0x401de92189bd8384              # double 7.4776670000000003
	.quad	0x40177bc5de9c022a              # double 5.8708720000000003
	.quad	0x40137112fd32c626              # double 4.8604240000000001
	.quad	0x401a241248d7e026              # double 6.5352259999999998
	.quad	0x40112524bfd2e947              # double 4.2862730000000004
	.quad	0x4020235dcc63f141              # double 8.0690749999999998
	.quad	0x400a16f9fcb0c027              # double 3.2612190000000001
	.quad	0x401f781e8a2ec28b              # double 7.8673039999999998
	.quad	0x3fda071c53f39d1b              # double 0.40668399999999999
	.quad	0x3fd255e6bc621b7e              # double 0.286493
	.quad	0x4022a33c81908e58              # double 9.3188209999999997
	.quad	0x40119f0c77dd872f              # double 4.4053209999999998
	.quad	0x401c5b51bd61f5be              # double 7.0891789999999997
	.quad	0x4016b797cc39ffd6              # double 5.6792899999999999
	.quad	0x3fe6e9e5e2478855              # double 0.71605200000000002
	.quad	0x402088ef566490a3              # double 8.2674509999999994
	.quad	0x402323c254a3c643              # double 9.5698419999999995
	.quad	0x401500b135979182              # double 5.2506760000000003
	.quad	0x40197434e3369b9d              # double 6.3634829999999996
	.quad	0x400952a6b0d95140              # double 3.1653570000000002
	.quad	0x3ffa46d0d49949e9              # double 1.6422890000000001
	.quad	0x40011a94bbe4473d              # double 2.1379790000000001
	.quad	0x40180c536d655e29              # double 6.0120370000000003
	.quad	0x402172a2c2374795              # double 8.7238980000000002
	.quad	0x4007e2dd7a99fa12              # double 2.9857740000000002
	.quad	0x4000dd755bccaf71              # double 2.1081340000000002
	.quad	0x3fd53f9e7b80a9df              # double 0.33200800000000003
	.quad	0x4011cb4f61672325              # double 4.4485450000000002
	.quad	0x3ff7ce746cb966be              # double 1.4879039999999999
	.quad	0x4023be9fadafd114              # double 9.8723120000000008
	.quad	0x4013d424e5929670              # double 4.9571719999999999
	.quad	0x3ff9343fa2ad3e92              # double 1.575256
	.quad	0x3ff838f57f737da6              # double 1.513906
	.quad	0x401fa626b2f23034              # double 7.9122570000000003
	.quad	0x401f2eafab53d641              # double 7.795592
	.quad	0x401d6a82e87d2c7c              # double 7.3540150000000004
	.quad	0x4003144bb1af3a15              # double 2.3849100000000001
	.quad	0x401d64c09c3ce209              # double 7.3483910000000003
	.quad	0x4010c49ecb31c21a              # double 4.1920120000000001
	.quad	0x401868ffb8b26395              # double 6.102538
	.quad	0x3fbb3269df97aaac              # double 0.106238
	.quad	0x4016b14df8b15726              # double 5.6731490000000004
	.quad	0x3fe9ebaade657b85              # double 0.81001800000000002
	.quad	0x40018a337a80cf9e              # double 2.1924809999999999
	.quad	0x3fd6ecbb7f9d6f11              # double 0.35819899999999999
	.quad	0x400e0bc6a7ef9db2              # double 3.7557499999999999
	.quad	0x3fdc6659d12cadde              # double 0.443747
	.quad	0x401647a3db3bfb59              # double 5.5699610000000002
	.quad	0x401ea34699418506              # double 7.6594490000000004
	.quad	0x3fc989613d31b9b6              # double 0.19950499999999999
	.quad	0x400f0bf0995aaf79              # double 3.88083
	.quad	0x3ff942f944241c3f              # double 1.578851
	.quad	0x4021d141e9af5ba3              # double 8.9087060000000005
	.quad	0x3fe35d095af294dd              # double 0.60510699999999995
	.quad	0x4020520dfdef8488              # double 8.1602630000000005
	.quad	0x40200bcdbbe0157f              # double 8.0230540000000001
	.quad	0x3ff30b5aa715831f              # double 1.190272
	.quad	0x4023922a90cd423e              # double 9.7854810000000008
	.quad	0x402318b545c78a6e              # double 9.5482580000000006
	.quad	0x4023e7f4128bf3bf              # double 9.9530340000000006
	.quad	0x401aa43137b07076              # double 6.6603440000000003
	.quad	0x3fd7dc55000c953a              # double 0.37282300000000002
	.quad	0x40212c723aafff37              # double 8.5868090000000006
	.quad	0x400d8ad14a0a0f4d              # double 3.6927819999999998
	.quad	0x4004d422467be554              # double 2.6035810000000001
	.quad	0x401f199b6f5caf2d              # double 7.7750069999999995
	.quad	0x4021085058dde7a7              # double 8.5162379999999995
	.quad	0x3fda117720c8cd64              # double 0.40731600000000001
	.quad	0x4018774f2f123c43              # double 6.1165130000000003
	.quad	0x401187036c9c0a8d              # double 4.3818489999999999
	.quad	0x3ff81a36e2eb1c43              # double 1.5064
	.quad	0x4010e39b024f6599              # double 4.2222710000000001
	.quad	0x401f2ac6cdaf4adc              # double 7.7917740000000002
	.quad	0x4013b9253543aeab              # double 4.9308059999999996
	.quad	0x4018a30e3cd9a522              # double 6.1592339999999997
	.quad	0x400afc37a3db3bfb              # double 3.3731529999999998
	.quad	0x40200a467be553ac              # double 8.0200689999999994
	.quad	0x400656f9fcb0c027              # double 2.7924690000000001
	.quad	0x3ff3c3a7546d3f9e              # double 1.2352669999999999
	.quad	0x401b57546d3f9e7c              # double 6.8352830000000004
	.quad	0x4013f8887229e908              # double 4.9927080000000004
	.quad	0x400f36fa82e87d2c              # double 3.9018449999999998
	.quad	0x4016c12a51e321a3              # double 5.6886380000000001
	.quad	0x3ffff04577d95571              # double 1.9961599999999999
	.quad	0x401ea25460aa64c3              # double 7.658525
	.quad	0x3ff8fbce4217d285              # double 1.5614760000000001
	.quad	0x401ffcad9ad85dfb              # double 7.9967560000000004
	.quad	0x400f6bd44998d046              # double 3.927651
	.quad	0x40238de19fc2a887              # double 9.7771120000000006
	.quad	0x40032c892ab68cef              # double 2.3967459999999998
	.quad	0x401b8e679463cfb3              # double 6.8890669999999998
	.quad	0x401703eb399f5dff              # double 5.7538270000000002
	.quad	0x4008c218def416be              # double 3.0947740000000001
	.quad	0x4020733c60029f17              # double 8.2250700000000005
	.quad	0x3fa8f36694898f60              # double 0.048731999999999998
	.quad	0x4001bc7e6b3fe9fb              # double 2.2170380000000001
	.quad	0x4017143201040bfe              # double 5.7697219999999998
	.quad	0x3ff25c886162f167              # double 1.147591
	.quad	0x4011fe4606748e47              # double 4.4983139999999997
	.quad	0x401273964a59c066              # double 4.6128780000000003
	.quad	0x401e94df47f993d5              # double 7.6453829999999998
	.quad	0x400a4a4441787054              # double 3.2862629999999999
	.quad	0x400163a7daa4fca4              # double 2.1736599999999999
	.quad	0x40029640639d5e4a              # double 2.3233649999999999
	.quad	0x40239263d816aceb              # double 9.7859180000000005
	.quad	0x3ff72ca793576039              # double 1.448402
	.quad	0x40104b4784230fd0              # double 4.0735150000000004
	.quad	0x40234a9f383f0baf              # double 9.6457460000000008
	.quad	0x3ff9d3bf2f555821              # double 1.614196
	.quad	0x400fc22467be553b              # double 3.9697960000000001
	.quad	0x40111fdef8487b9a              # double 4.2811240000000002
	.quad	0x4018b65881a15550              # double 6.1780720000000002
	.quad	0x3fcf816aceaaf35e              # double 0.24613699999999999
	.quad	0x40115ae924f227d0              # double 4.3387799999999999
	.quad	0x400737470eb24a6b              # double 2.9019910000000002
	.quad	0x401e2028e4fb97bb              # double 7.5314059999999996
	.quad	0x40020b020c49ba5e              # double 2.2553749999999999
	.quad	0x4022fb09c7ffde72              # double 9.4903089999999999
	.quad	0x4022d19695d91ab9              # double 9.4093520000000001
	.quad	0x3ffcc35696e58a33              # double 1.79769
	.quad	0x4015e293d102bc73              # double 5.4712670000000001
	.quad	0x40103654d61b2a28              # double 4.053058
	.quad	0x40209ca1ad6451b9              # double 8.3059209999999997
	.quad	0x3fe1187a4a48f96e              # double 0.53423799999999999
	.quad	0x4000a5fbf83382e4              # double 2.0810469999999999
	.quad	0x3ffb799c38b04ab6              # double 1.71719
	.quad	0x400f83d03968d75a              # double 3.939362
	.quad	0x4013d1e68a0d349c              # double 4.9549810000000001
	.quad	0x3ff67b73083558a7              # double 1.4051389999999999
	.quad	0x400e5e59f2ba9d1f              # double 3.7960699999999998
	.quad	0x4012c3e89a88ace2              # double 4.6913169999999997
	.quad	0x40152b4dcebfec14              # double 5.2922890000000002
	.quad	0x401fdd9ba1b19610              # double 7.9664140000000003
	.quad	0x3febd88a04d12019              # double 0.87018300000000004
	.quad	0x40230f77292c4934              # double 9.5302059999999997
	.quad	0x401c137c5692b3cc              # double 7.0190289999999997
	.quad	0x401ff253543aeab8              # double 7.9866460000000003
	.quad	0x3fcc389f83be6602              # double 0.22047800000000001
	.quad	0x400bc1a2e7f6f4bf              # double 3.4695490000000002
	.quad	0x400448e25c810a57              # double 2.5355880000000002
	.quad	0x3fffbf39d1b2e59b              # double 1.984186
	.quad	0x400095e310dbf056              # double 2.0731869999999999
	.quad	0x40174183f91e646f              # double 5.8139799999999999
	.quad	0x402246f112fd32c6              # double 9.1385579999999997
	.quad	0x40131bc6a7ef9db2              # double 4.7771249999999998
	.quad	0x402139815a07b353              # double 8.6123150000000006
	.quad	0x4020bea11ec918e3              # double 8.3723229999999997
	.quad	0x400f821af7d30ad4              # double 3.9385279999999998
	.quad	0x401ce379b77c02b0              # double 7.2221440000000001
	.quad	0x3ff7f74cd31769a9              # double 1.497876
	.quad	0x40135e0653005815              # double 4.8418210000000004
	.quad	0x401fe2aae297396d              # double 7.9713549999999999
	.quad	0x3fe6afdb8fde2ef5              # double 0.70896700000000001
	.quad	0x401b69795b35b0bc              # double 6.853002
	.quad	0x401df484d76ab580              # double 7.4887879999999996
	.quad	0x400356dca07f66e8              # double 2.4174129999999998
	.quad	0x3ff8d2bc2fc69729              # double 1.5514490000000001
	.quad	0x3fe7e69f05ea24cc              # double 0.74690199999999995
	.quad	0x4002dd451fc4c166              # double 2.3580420000000002
	.quad	0x3ffb2a4db163baba              # double 1.6978279999999999
	.quad	0x400063eb7cbb3c82              # double 2.0487890000000002
	.quad	0x4020a3940fecdd0e              # double 8.3194890000000008
	.quad	0x401a820ff540895d              # double 6.627014
	.quad	0x3ffb4460ed80a17b              # double 1.704194
	.quad	0x4020b7caea747d80              # double 8.3589699999999993
	.quad	0x4003f16440f23897              # double 2.4928669999999999
	.quad	0x40203f1fbc5de9c0              # double 8.1232889999999998
	.quad	0x40164a4723aafff3              # double 5.5725369999999996
	.quad	0x40186b2b777d0f1f              # double 6.1046579999999997
	.quad	0x401a1b4289118c19              # double 6.5266209999999996
	.quad	0x40040c2df0d41312              # double 2.5059469999999999
	.quad	0x40219147f1305964              # double 8.7837519999999997
	.quad	0x4017cca1059ea572              # double 5.9498329999999999
	.quad	0x4018a32617c1bda5              # double 6.1593249999999999
	.quad	0x401bf6fe718a86d7              # double 6.9912049999999999
	.quad	0x4006a78fabda0dfe              # double 2.831817
	.quad	0x400190142f61ed5b              # double 2.1953510000000001
	.quad	0x3fe888d6d3b6cbda              # double 0.76670400000000005
	.quad	0x401b36138fffbce4              # double 6.8028089999999999
	.quad	0x401fce6b8305d95e              # double 7.9515820000000001
	.quad	0x40187e8427418d69              # double 6.123551
	.quad	0x401363ce63a5c1c6              # double 4.847467
	.quad	0x40237566cf41f213              # double 9.7293000000000002
	.quad	0x401299d909f1f14a              # double 4.6502420000000004
	.quad	0x400c534b51372a39              # double 3.5406710000000001
	.quad	0x4013168cac4b4d05              # double 4.7720209999999996
	.quad	0x400a00ce0b912dba              # double 3.2503929999999999
	.quad	0x400bb27fe4bcad9b              # double 3.4621580000000001
	.quad	0x3fc9b9628cbd1245              # double 0.20097000000000001
	.quad	0x3ff5d84c271fff7a              # double 1.365307
	.quad	0x401680e30446b69e              # double 5.6258660000000003
	.quad	0x401d9f84cad57bc8              # double 7.40578
	.quad	0x4004525918a009f6              # double 2.5402089999999999
	.quad	0x401afeeaa6d26741              # double 6.7489420000000004
	.quad	0x401dcd3cff64cf8d              # double 7.4504279999999996
	.quad	0x4020c656eefa1e3f              # double 8.3873820000000006
	.quad	0x4017223571d1d474              # double 5.7834070000000004
	.quad	0x4003204c8bc9cd3e              # double 2.390771
	.quad	0x401b3a7829068987              # double 6.807099
	.quad	0x40172c33f85510d4              # double 5.7931670000000004
	.quad	0x3fe5a786c226809d              # double 0.67669999999999997
	.quad	0x4023e4ebdd334c5e              # double 9.9471120000000006
	.quad	0x400c1d49d7ba6699              # double 3.5143010000000001
	.quad	0x4017892ab68cef67              # double 5.8839519999999998
	.quad	0x4022fd0dae3e6c4c              # double 9.4942449999999993
	.quad	0x3ff4fe670e2c12ae              # double 1.3121100000000001
	.quad	0x4020e5b078d92fb2              # double 8.4486120000000007
	.quad	0x401bd771001d5c31              # double 6.9603919999999997
	.quad	0x401eb488c60cbf2b              # double 7.6763029999999998
	.quad	0x40131a29c779a6b5              # double 4.77555
	.quad	0x401b37b9170d62bf              # double 6.8044169999999999
	.quad	0x4022de2584f4c6e7              # double 9.4338800000000002
	.quad	0x401e07724fa8b4c0              # double 7.5072720000000004
	.quad	0x4006629cfdd22856              # double 2.7981509999999998
	.quad	0x4002dbff04577d95              # double 2.3574199999999998
	.quad	0x402181c044284dfd              # double 8.7534200000000002
	.quad	0x3ff820afa2f05a71              # double 1.5079800000000001
	.quad	0x4023e698fe69270b              # double 9.9503859999999999
	.quad	0x4005646a5d6bebe1              # double 2.6740309999999998
	.quad	0x40151f29d40ee06e              # double 5.2804330000000004
	.quad	0x400b049235f80991              # double 3.3772319999999998
	.quad	0x400d6187a4a48f97              # double 3.6726220000000001
	.quad	0x3fe012d1287c200c              # double 0.50229699999999999
	.quad	0x40161873365881a1              # double 5.5238769999999997
	.quad	0x402125c0db2702a3              # double 8.5737369999999995
	.quad	0x400c7df00abf76a3              # double 3.561493
	.quad	0x4020bf26d04e618d              # double 8.3733430000000002
	.quad	0x400cf78c436fc159              # double 3.620873
	.quad	0x4020625aee631f8a              # double 8.1920999999999999
	.quad	0x400cfb0b39192642              # double 3.6225800000000001
	.quad	0x3fea1a8262456f76              # double 0.81573600000000002
	.quad	0x4017fca42aed1394              # double 5.9967199999999998
	.quad	0x40210d1eb851eb85              # double 8.5256249999999998
	.quad	0x4015f8e9b38d60a6              # double 5.4930789999999998
	.quad	0x40213b5b0bbf50e3              # double 8.6159289999999995
	.quad	0x400c05269595feda              # double 3.5025149999999998
	.quad	0x3fdcdf86e3b46fdf              # double 0.45114300000000002
	.quad	0x3fd04ab606b7aa26              # double 0.25456000000000001
	.quad	0x401514873365881a              # double 5.2700469999999999
	.quad	0x4016f959e6256367              # double 5.7435070000000001
	.quad	0x401d398e53eb399f              # double 7.3062069999999997
	.quad	0x4022e2e9680e0653              # double 9.4431869999999999
	.quad	0x3fe43ccd0fe8ab50              # double 0.63242200000000004
	.quad	0x400bc19eb6390c91              # double 3.469541
	.quad	0x4017e7da1ec4e725              # double 5.9764179999999998
	.quad	0x4021ec7cd898b2ea              # double 8.9618900000000004
	.quad	0x401874666ec9e237              # double 6.1136720000000002
	.quad	0x40223d5757d5a9eb              # double 9.1198069999999998
	.quad	0x4021eef2e8c0485a              # double 8.9666969999999999
	.quad	0x40161f1cb89d6adf              # double 5.5303829999999996
	.quad	0x3fe1f3b213e3e293              # double 0.560998
	.quad	0x4011264e8b7e4de4              # double 4.2874090000000002
	.quad	0x401b87cf5f4e4431              # double 6.8826270000000003
	.quad	0x401c1895d0b73d19              # double 7.0240090000000004
	.quad	0x401e12f944241c3f              # double 7.518529
	.quad	0x3ff0a683c297bfa5              # double 1.0406530000000001
	.quad	0x40039bea0ba1f4b2              # double 2.45113
	.quad	0x4022b99e518f3ecd              # double 9.3625360000000004
	.quad	0x401e89c347e8ccde              # double 7.6345340000000004
	.quad	0x400d370de8f6ceff              # double 3.6518820000000001
	.quad	0x401388b7e4de3b8a              # double 4.8835139999999999
	.quad	0x4019cbc2fc69728a              # double 6.4489859999999997
	.quad	0x3ff844295a6c5d20              # double 1.5166409999999999
	.quad	0x400f61c79b34a44c              # double 3.9227439999999998
	.quad	0x3fe2f78dd616f86a              # double 0.592719
	.quad	0x401d668e820e6299              # double 7.3501529999999997
	.quad	0x401b653fc0096feb              # double 6.8488759999999997
	.quad	0x3ffefa82e87d2c7c              # double 1.9361600000000001
	.quad	0x3fe15d8f92af9a8d              # double 0.54267100000000001
	.quad	0x401946a3bddfca00              # double 6.3189840000000004
	.quad	0x4017148c7192ea53              # double 5.7700670000000001
	.size	.L__constant_4000xf64, 32000

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
