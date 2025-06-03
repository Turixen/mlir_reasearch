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
	.quad	0x41339e5441a79fed              # double 1285716.2564640001
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
	.quad	19                              # 0x13
	.quad	46                              # 0x2e
	.quad	66                              # 0x42
	.quad	96                              # 0x60
	.quad	125                             # 0x7d
	.quad	144                             # 0x90
	.quad	166                             # 0xa6
	.quad	198                             # 0xc6
	.quad	217                             # 0xd9
	.quad	242                             # 0xf2
	.quad	264                             # 0x108
	.quad	294                             # 0x126
	.quad	317                             # 0x13d
	.quad	342                             # 0x156
	.quad	364                             # 0x16c
	.quad	390                             # 0x186
	.quad	421                             # 0x1a5
	.quad	452                             # 0x1c4
	.quad	478                             # 0x1de
	.quad	500                             # 0x1f4
	.quad	521                             # 0x209
	.quad	540                             # 0x21c
	.quad	566                             # 0x236
	.quad	591                             # 0x24f
	.quad	617                             # 0x269
	.quad	639                             # 0x27f
	.quad	664                             # 0x298
	.quad	694                             # 0x2b6
	.quad	717                             # 0x2cd
	.quad	739                             # 0x2e3
	.quad	759                             # 0x2f7
	.quad	784                             # 0x310
	.quad	809                             # 0x329
	.quad	835                             # 0x343
	.quad	864                             # 0x360
	.quad	896                             # 0x380
	.quad	922                             # 0x39a
	.quad	946                             # 0x3b2
	.quad	970                             # 0x3ca
	.quad	992                             # 0x3e0
	.quad	1016                            # 0x3f8
	.quad	1042                            # 0x412
	.quad	1062                            # 0x426
	.quad	1084                            # 0x43c
	.quad	1111                            # 0x457
	.quad	1144                            # 0x478
	.quad	1167                            # 0x48f
	.quad	1189                            # 0x4a5
	.quad	1212                            # 0x4bc
	.quad	1231                            # 0x4cf
	.quad	1251                            # 0x4e3
	.quad	1275                            # 0x4fb
	.quad	1296                            # 0x510
	.quad	1319                            # 0x527
	.quad	1341                            # 0x53d
	.quad	1363                            # 0x553
	.quad	1384                            # 0x568
	.quad	1408                            # 0x580
	.quad	1436                            # 0x59c
	.quad	1454                            # 0x5ae
	.quad	1486                            # 0x5ce
	.quad	1513                            # 0x5e9
	.quad	1537                            # 0x601
	.quad	1568                            # 0x620
	.quad	1595                            # 0x63b
	.quad	1621                            # 0x655
	.quad	1649                            # 0x671
	.quad	1677                            # 0x68d
	.quad	1712                            # 0x6b0
	.quad	1745                            # 0x6d1
	.quad	1760                            # 0x6e0
	.quad	1783                            # 0x6f7
	.quad	1813                            # 0x715
	.quad	1832                            # 0x728
	.quad	1865                            # 0x749
	.quad	1896                            # 0x768
	.quad	1923                            # 0x783
	.quad	1941                            # 0x795
	.quad	1966                            # 0x7ae
	.quad	1989                            # 0x7c5
	.quad	2006                            # 0x7d6
	.quad	2027                            # 0x7eb
	.quad	2051                            # 0x803
	.quad	2074                            # 0x81a
	.quad	2105                            # 0x839
	.quad	2129                            # 0x851
	.quad	2164                            # 0x874
	.quad	2194                            # 0x892
	.quad	2213                            # 0x8a5
	.quad	2234                            # 0x8ba
	.quad	2260                            # 0x8d4
	.quad	2281                            # 0x8e9
	.quad	2304                            # 0x900
	.quad	2334                            # 0x91e
	.quad	2359                            # 0x937
	.quad	2387                            # 0x953
	.quad	2414                            # 0x96e
	.quad	2443                            # 0x98b
	.quad	2466                            # 0x9a2
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	52                              # 0x34
	.quad	66                              # 0x42
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	3                               # 0x3
	.quad	17                              # 0x11
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.size	.L__constant_2500xindex, 20000

	.type	.L__constant_2500xf64,@object   # @__constant_2500xf64
	.p2align	6, 0x0
.L__constant_2500xf64:
	.quad	0x4022083d57796399              # double 9.0160929999999997
	.quad	0x40045dc054ef459e              # double 2.5457770000000002
	.quad	0x4011926634117f84              # double 4.3929679999999998
	.quad	0x3f71409a24031487              # double 0.0042119999999999996
	.quad	0x4019f66234a87e39              # double 6.4906090000000001
	.quad	0x401a3c026cc1ca3a              # double 6.5586029999999997
	.quad	0x4011d38e29f9ce8e              # double 4.4565970000000004
	.quad	0x400d521a2e7f6f4c              # double 3.665089
	.quad	0x3ff26aceaaf35e31              # double 1.151076
	.quad	0x401e796a6a01259a              # double 7.6185700000000001
	.quad	0x4021965bc87db2b3              # double 8.7936689999999995
	.quad	0x401736744b2b777d              # double 5.8031779999999999
	.quad	0x401543a92a305532              # double 5.3160749999999997
	.quad	0x4001d0ca1cef2410              # double 2.2269480000000001
	.quad	0x40041afc04c8bc9d              # double 2.5131760000000001
	.quad	0x3fd4d67fd3f5b5fa              # double 0.32559199999999999
	.quad	0x402119a3d2d87f88              # double 8.5500779999999992
	.quad	0x3f9b317efe0ce0b9              # double 0.026556
	.quad	0x401db8a3f8982cb2              # double 7.4303129999999999
	.quad	0x400c050bd87b56b8              # double 3.5024639999999998
	.quad	0x4011b2a9d627bf62              # double 4.4244760000000003
	.quad	0x3fc67863beec397a              # double 0.17554900000000001
	.quad	0x40229f8183f91e64              # double 9.3115349999999992
	.quad	0x400bea57214f0521              # double 3.4894240000000001
	.quad	0x40186ee49f51697f              # double 6.1082939999999999
	.quad	0x4022b86573215fcc              # double 9.3601489999999998
	.quad	0x402359830e3cd9a5              # double 9.6748279999999997
	.quad	0x401b744ae85b9e8c              # double 6.8635669999999998
	.quad	0x40122909aed56b01              # double 4.540076
	.quad	0x4023df05ea24cc68              # double 9.9355919999999997
	.quad	0x40163a7610279570              # double 5.5570909999999998
	.quad	0x400207f349385836              # double 2.2538819999999999
	.quad	0x3fff97f950b955f8              # double 1.9746030000000001
	.quad	0x4012ad5a187a4a49              # double 4.669289
	.quad	0x400ca3b70ef56649              # double 3.579939
	.quad	0x401a4368f08461fa              # double 6.5658300000000001
	.quad	0x400b762cfd8f0c78              # double 3.4327030000000001
	.quad	0x3fe10705425f2021              # double 0.532107
	.quad	0x40213cacd184c272              # double 8.618506
	.quad	0x401852e7b3d8e001              # double 6.0809620000000004
	.quad	0x4011fb7f9d6f1130              # double 4.4956040000000002
	.quad	0x4022c36bd2b6f199              # double 9.3816819999999996
	.quad	0x3ff160a30db6a1e8              # double 1.086093
	.quad	0x4014bfe004b7f5a5              # double 5.1873779999999998
	.quad	0x4020e3e0157eed46              # double 8.4450690000000002
	.quad	0x4021c5b7ae5796c0              # double 8.8861670000000004
	.quad	0x4021a9d388a8b08e              # double 8.8316920000000003
	.quad	0x401b3c09c3ce208a              # double 6.8086310000000001
	.quad	0x400549f8c21e1d21              # double 2.6611189999999998
	.quad	0x4022e9a500d5e8d5              # double 9.4563369999999995
	.quad	0x400b0459103c8e26              # double 3.3771230000000001
	.quad	0x400d7c5cdd50a88f              # double 3.685724
	.quad	0x3ff9b0ab2e1693c0              # double 1.6056319999999999
	.quad	0x3ffa143e10060781              # double 1.629942
	.quad	0x3ff4ae0f3cb3e575              # double 1.2924949999999999
	.quad	0x400fdb17ce52deca              # double 3.9819789999999999
	.quad	0x400b357f737da61e              # double 3.401122
	.quad	0x40226fb677f6b1a3              # double 9.2181890000000006
	.quad	0x3fc3d67ba237cdcd              # double 0.15498300000000001
	.quad	0x401bbc886162f167              # double 6.9341140000000001
	.quad	0x4009cf177a7008a7              # double 3.2261190000000002
	.quad	0x4017cee73e681a9c              # double 5.9520540000000004
	.quad	0x4014bcabc5154867              # double 5.1842490000000003
	.quad	0x401cac5cdd50a88f              # double 7.168323
	.quad	0x401dda875d56f32c              # double 7.4634070000000001
	.quad	0x40204a599ed7c6fc              # double 8.1452150000000003
	.quad	0x4021756e696a26e5              # double 8.7293579999999995
	.quad	0x4000a90364388ebd              # double 2.0825260000000001
	.quad	0x401ff9873ffac1d3              # double 7.9936800000000003
	.quad	0x401d52a172abef07              # double 7.3306940000000003
	.quad	0x3fe86234a87e38eb              # double 0.761988
	.quad	0x40107941c8216c61              # double 4.1184149999999997
	.quad	0x401326b8305d95dd              # double 4.7878119999999997
	.quad	0x3ffc1d16fc9bc771              # double 1.7571019999999999
	.quad	0x4016b0d306a2b170              # double 5.6726799999999997
	.quad	0x40087b97353b4b30              # double 3.0603470000000002
	.quad	0x40223a75cd0bb6ed              # double 9.1141799999999993
	.quad	0x40234e46ae3a3a8e              # double 9.6528829999999992
	.quad	0x4019109d495182aa              # double 6.2662250000000004
	.quad	0x3ffc2e6106ab14ec              # double 1.761323
	.quad	0x40065c970f7b9e06              # double 2.79521
	.quad	0x401c113b5bf6a0dc              # double 7.0168280000000003
	.quad	0x40095083558a7610              # double 3.1643129999999999
	.quad	0x400526cc1ca3a4b5              # double 2.6439439999999998
	.quad	0x401c46a012599ed8              # double 7.0689700000000002
	.quad	0x4015dd0aaa7ded6c              # double 5.4658610000000003
	.quad	0x4001ebee807bbb62              # double 2.2402009999999999
	.quad	0x40222abc2fc69729              # double 9.0834670000000006
	.quad	0x401ae3f1843c3a43              # double 6.722601
	.quad	0x4019c5193708aac9              # double 6.4424789999999996
	.quad	0x400e58c75c4a83b2              # double 3.7933490000000001
	.quad	0x4018372c5197a249              # double 6.0538800000000004
	.quad	0x4014acdc8754f377              # double 5.1688099999999997
	.quad	0x4004042d05f28848              # double 2.5020389999999999
	.quad	0x401a19717df19d67              # double 6.5248470000000003
	.quad	0x401b26922d948dc1              # double 6.7876669999999999
	.quad	0x3ff20a1ad6451b93              # double 1.127467
	.quad	0x400d5a921ccd9620              # double 3.6692239999999998
	.quad	0x4021d52bf5515055              # double 8.9163510000000006
	.quad	0x400a9a1016ce789e              # double 3.3252259999999998
	.quad	0x4021474256bca537              # double 8.6391779999999994
	.quad	0x3ff117d8cf398e97              # double 1.068322
	.quad	0x400453c925785f8d              # double 2.5409109999999999
	.quad	0x40191877ee4e26d5              # double 6.2738950000000004
	.quad	0x3ff6710cb295e9e2              # double 1.4026000000000001
	.quad	0x3fc8d82ba5a03819              # double 0.19409699999999999
	.quad	0x401d516a055757d6              # double 7.3295060000000003
	.quad	0x3ff3f5bb384fd2a6              # double 1.247493
	.quad	0x4002c5492ff4ba52              # double 2.3463310000000002
	.quad	0x4022c7f27fe4bcae              # double 9.3905220000000007
	.quad	0x4018fdb1a6d698fe              # double 6.2477479999999996
	.quad	0x4016a85f4a1272c9              # double 5.6644259999999997
	.quad	0x4005365881a15550              # double 2.6515360000000001
	.quad	0x3ff849752977c88e              # double 1.5179339999999999
	.quad	0x3fb2719b4dcebfec              # double 0.072045999999999999
	.quad	0x400beec39799e519              # double 3.491584
	.quad	0x3fe63baba7b9170d              # double 0.69478399999999996
	.quad	0x400637f06705c897              # double 2.7773140000000001
	.quad	0x40213134acaff6d3              # double 8.5961049999999997
	.quad	0x401c5a8b4bf8fcd6              # double 7.0884219999999996
	.quad	0x40126a1fd1569f49              # double 4.603637
	.quad	0x400f8944ed6fda83              # double 3.9420259999999998
	.quad	0x3feabbe0157eed46              # double 0.83543400000000001
	.quad	0x4011824180d3cff6              # double 4.3772029999999997
	.quad	0x401fd02795703f2d              # double 7.9532759999999997
	.quad	0x4021d14a0a0f4d7b              # double 8.9087680000000002
	.quad	0x3fe56e17a02fb5d0              # double 0.66968899999999998
	.quad	0x4017809c3ce2089e              # double 5.8755959999999998
	.quad	0x400c22224edf6124              # double 3.516667
	.quad	0x40186b61fe21d96f              # double 6.1048660000000003
	.quad	0x3fd8446b69db65ed              # double 0.37917600000000001
	.quad	0x4008abbba55d1c3b              # double 3.0838540000000001
	.quad	0x40234b61bb05faec              # double 9.6472300000000004
	.quad	0x400d747f13059642              # double 3.681883
	.quad	0x3fa87f23cc8de2ac              # double 0.047844999999999999
	.quad	0x40113201040bfe3b              # double 4.298832
	.quad	0x40180b1897a67a53              # double 6.0108360000000003
	.quad	0x402226f8487b99d4              # double 9.0761129999999994
	.quad	0x401d2a797891e215              # double 7.2914789999999998
	.quad	0x400469e0a41a261c              # double 2.551698
	.quad	0x401761af7d30ad47              # double 5.845396
	.quad	0x4011bebd9018e758              # double 4.4362700000000004
	.quad	0x402157c0b1359792              # double 8.6713920000000009
	.quad	0x401d0035371971c1              # double 7.250203
	.quad	0x40143275ab7dc7ac              # double 5.049277
	.quad	0x401358359bc33f85              # double 4.8361419999999997
	.quad	0x400a6cd6c2efd439              # double 3.3031440000000001
	.quad	0x40228b26e115592e              # double 9.2717810000000007
	.quad	0x4004cba94bbe4474              # double 2.5994440000000001
	.quad	0x3ff5ed42c3c9eecc              # double 1.370425
	.quad	0x400f40baa582dbe8              # double 3.906606
	.quad	0x400afa7a85015c21              # double 3.3723040000000002
	.quad	0x4022f5d13d74d595              # double 9.480112
	.quad	0x401be0f40e5a35d6              # double 6.9696809999999996
	.quad	0x40157fb19e731d2e              # double 5.374701
	.quad	0x40235172474538ef              # double 9.6590749999999996
	.quad	0x3fff4903ea704bc2              # double 1.9553259999999999
	.quad	0x40212b0ad46f587d              # double 8.5840669999999992
	.quad	0x3fb4e9a2c669057d              # double 0.081689999999999999
	.quad	0x4016f1d4f9c1f85d              # double 5.7361639999999996
	.quad	0x40187974e65bea0c              # double 6.1186100000000003
	.quad	0x3ff7037b4a2339c1              # double 1.43835
	.quad	0x40213cb2314013ec              # double 8.6185469999999995
	.quad	0x3fef5cee17a02fb6              # double 0.98009400000000002
	.quad	0x40066f0a5efe9318              # double 2.8042189999999998
	.quad	0x402138ae536501e2              # double 8.6107049999999994
	.quad	0x3fcce30446b69db6              # double 0.22567799999999999
	.quad	0x402392e8c0485a0c              # double 9.7869320000000001
	.quad	0x4019356b441bb8c3              # double 6.3021669999999999
	.quad	0x40231233df2a9d62              # double 9.5355519999999991
	.quad	0x40218ac2bd7f51f0              # double 8.7710170000000005
	.quad	0x40195a80cf9e3865              # double 6.3383820000000002
	.quad	0x4019117efe0ce0b9              # double 6.2670859999999999
	.quad	0x3fff4dca8e2e2b8c              # double 1.9564919999999999
	.quad	0x4020d600b0292817              # double 8.4179739999999992
	.quad	0x4023bc45ed4a1ad6              # double 9.8677209999999995
	.quad	0x40224ca3a4b5568f              # double 9.1496860000000009
	.quad	0x40085fb6134ce3de              # double 3.0467339999999998
	.quad	0x401cee44b6e935b9              # double 7.2326839999999999
	.quad	0x4012ca4873365882              # double 4.6975420000000003
	.quad	0x401ceb2d905c0336              # double 7.2296659999999999
	.quad	0x402255f43c7d5ed0              # double 9.1678789999999992
	.quad	0x4023ec1ebc83a96d              # double 9.9611719999999994
	.quad	0x401b36772d5e071c              # double 6.8031889999999997
	.quad	0x401696c332f01755              # double 5.6472290000000003
	.quad	0x401dfe1ac57e23f2              # double 7.4981489999999997
	.quad	0x401b03eab367a0f9              # double 6.753825
	.quad	0x401294de3b8a19ca              # double 4.6453790000000001
	.quad	0x4011bdeb95e5aff3              # double 4.4354690000000003
	.quad	0x4002299fa11a975b              # double 2.270324
	.quad	0x3ff9eb0ea18372e7              # double 1.6198870000000001
	.quad	0x401ed20a73f748a1              # double 7.7051179999999996
	.quad	0x401857ecfe9b7bf2              # double 6.0858650000000001
	.quad	0x4023eeb1e5c0b999              # double 9.9662009999999998
	.quad	0x4013dc6cdaf4adbc              # double 4.9652589999999996
	.quad	0x3fe43bcd35a85879              # double 0.63229999999999997
	.quad	0x401d3f676ea4228a              # double 7.3119180000000004
	.quad	0x401593f1843c3a43              # double 5.394476
	.quad	0x40127c79702e6645              # double 4.6215570000000001
	.quad	0x400fcdcc20d5629e              # double 3.9754870000000002
	.quad	0x4021e0f53c579f23              # double 8.9393709999999995
	.quad	0x40229beab367a0f9              # double 9.3045249999999999
	.quad	0x3ff2193708aac96d              # double 1.1311560000000001
	.quad	0x401bbf672b884407              # double 6.9369170000000002
	.quad	0x401c9d3e4ef0281c              # double 7.1535580000000003
	.quad	0x400f8343b70ef566              # double 3.9390939999999999
	.quad	0x400ab56eac860568              # double 3.3385899999999999
	.quad	0x401d57cc7d1bb491              # double 7.3357409999999996
	.quad	0x400b0a60913a4f87              # double 3.3800669999999999
	.quad	0x4022e29ac36544fe              # double 9.4425869999999996
	.quad	0x401bc424e5929670              # double 6.9415469999999999
	.quad	0x4000419da9c99286              # double 2.0320390000000002
	.quad	0x3ffc30ae536501e2              # double 1.7618849999999999
	.quad	0x402106db0dd82fd7              # double 8.5133899999999993
	.quad	0x40161f7fcfc3f812              # double 5.530761
	.quad	0x402187648c7192ea              # double 8.7644389999999994
	.quad	0x4017938f7985271c              # double 5.8941020000000002
	.quad	0x400867f13059641f              # double 3.0507529999999998
	.quad	0x3ffb2abef06b3786              # double 1.6979359999999999
	.quad	0x4022dd2e94680171              # double 9.4319959999999998
	.quad	0x400f26c8f7553693              # double 3.8939379999999999
	.quad	0x3fc5ca9ef5232d2c              # double 0.17024600000000001
	.quad	0x40007f969e3c9689              # double 2.0622989999999999
	.quad	0x401d70d5e8d54110              # double 7.3601910000000004
	.quad	0x401d334117f8444a              # double 7.3000530000000001
	.quad	0x40236ed3b6cbd988              # double 9.7164590000000004
	.quad	0x40200f123c42a66e              # double 8.0294360000000005
	.quad	0x3ffe204d12018a44              # double 1.8828860000000001
	.quad	0x4015eb65a9a80496              # double 5.4798799999999996
	.quad	0x401ffecbb7f9d6f1              # double 7.9988239999999999
	.quad	0x401f3c6ef3d3a1d3              # double 7.8090169999999998
	.quad	0x40216cf9c1f85d74              # double 8.7128429999999994
	.quad	0x4012ef993d5347a6              # double 4.7339830000000003
	.quad	0x4001c34eb9a176de              # double 2.2203650000000001
	.quad	0x3ff3043d46b26bf8              # double 1.1885349999999999
	.quad	0x3fe8ac6045baf534              # double 0.771042
	.quad	0x4022a4c55432873c              # double 9.3218180000000003
	.quad	0x3fd31e9af5ba2be0              # double 0.29874299999999998
	.quad	0x3ffc740e5a35d67c              # double 1.7783340000000001
	.quad	0x400d8dbc664d3bf3              # double 3.694207
	.quad	0x400191dffc5479d5              # double 2.1962280000000001
	.quad	0x400b4c73abc94706              # double 3.4123299999999999
	.quad	0x400e54aba3875925              # double 3.7913429999999999
	.quad	0x400d428ed5f138bd              # double 3.6574990000000001
	.quad	0x401c20d9945b6c37              # double 7.0320799999999997
	.quad	0x4004e45a1cac0831              # double 2.6114999999999999
	.quad	0x3fe4d5a187a4a490              # double 0.65107800000000005
	.quad	0x40100a426bb55ac0              # double 4.0100189999999998
	.quad	0x40092ff5c6c11a11              # double 3.1484179999999999
	.quad	0x40056517e77d523b              # double 2.6743619999999999
	.quad	0x40103260f5e41d4b              # double 4.0491979999999996
	.quad	0x400857fc7607c41a              # double 3.0429620000000002
	.quad	0x4016b8094e5d5b25              # double 5.6797230000000001
	.quad	0x400ba17fc7607c42              # double 3.4538570000000002
	.quad	0x4017969c23b7952d              # double 5.8970799999999999
	.quad	0x400614c3c18b502b              # double 2.7601390000000001
	.quad	0x4017232b990afe61              # double 5.7843460000000002
	.quad	0x40201ef32bdc26dd              # double 8.0604490000000002
	.quad	0x40157344c37e6f72              # double 5.3625670000000003
	.quad	0x401556f32bdc26dd              # double 5.3349120000000001
	.quad	0x3ff10ba0e8427419              # double 1.065339
	.quad	0x400f49c4da9003ef              # double 3.9110200000000002
	.quad	0x401ed8f0c77dd873              # double 7.711856
	.quad	0x40138cc2938de6de              # double 4.8874610000000001
	.quad	0x4014ae49b1fab96f              # double 5.1702029999999999
	.quad	0x401006e158750c1c              # double 4.0067190000000004
	.quad	0x40160443914f483d              # double 5.5041640000000003
	.quad	0x40103422036006d1              # double 4.0509110000000002
	.quad	0x40197aba38759253              # double 6.3698509999999997
	.quad	0x401d743914f483cb              # double 7.363499
	.quad	0x3ffc1e16d6dc1a48              # double 1.7573460000000001
	.quad	0x4020f30a915379fb              # double 8.4746900000000007
	.quad	0x4022caa21a719b4e              # double 9.3957680000000003
	.quad	0x402255adfb506dd7              # double 9.1673430000000007
	.quad	0x3ffca87a072d1aeb              # double 1.7911319999999999
	.quad	0x3ff24cb1897a67a5              # double 1.143724
	.quad	0x401607a398201cd6              # double 5.50746
	.quad	0x401e85332acfb763              # double 7.6300780000000001
	.quad	0x401a7de00d1b7176              # double 6.6229250000000004
	.quad	0x3ff7fc4e2f37fbf0              # double 1.499098
	.quad	0x402254792d1287c2              # double 9.164987
	.quad	0x401506612839042e              # double 5.2562300000000004
	.quad	0x4000f204295a6c5d              # double 2.1181719999999999
	.quad	0x40163366d7a56de3              # double 5.5501969999999998
	.quad	0x4019cc985f06f694              # double 6.4497999999999998
	.quad	0x401aee9c886162f1              # double 6.7330189999999996
	.quad	0x4010f702e6644d87              # double 4.2412219999999996
	.quad	0x4019988d2a1f8e3b              # double 6.3989760000000002
	.quad	0x3ff6ed330941c821              # double 1.4329099999999999
	.quad	0x3ff82133c1ce6c09              # double 1.5081059999999999
	.quad	0x400b21615ebfa8f8              # double 3.3912990000000001
	.quad	0x40210215db3397dd              # double 8.504073
	.quad	0x3fe169595feda661              # double 0.54410999999999998
	.quad	0x3fd655219a847b24              # double 0.34894599999999998
	.quad	0x40201a089e34330d              # double 8.0508469999999992
	.quad	0x4011d8a7a41e57da              # double 4.4615770000000001
	.quad	0x3ffe5cc532a497fa              # double 1.8976489999999999
	.quad	0x4022c29478c868ba              # double 9.380039
	.quad	0x40071bf0dc768dfc              # double 2.8886430000000001
	.quad	0x400de917d6b65a9b              # double 3.7388150000000002
	.quad	0x4006aa715831f03d              # double 2.833224
	.quad	0x4021477b7c7820a3              # double 8.6396139999999999
	.quad	0x4003d0a45d41fa76              # double 2.4768759999999999
	.quad	0x401fdc72e275ab7e              # double 7.9652820000000002
	.quad	0x401218fe260b2c84              # double 4.5244070000000001
	.quad	0x40159e7e1fc08fa8              # double 5.4047780000000003
	.quad	0x4021c1656eefa1e4              # double 8.8777270000000001
	.quad	0x3ffef16c1e364bec              # double 1.9339409999999999
	.quad	0x402035ce7cd03537              # double 8.1050909999999998
	.quad	0x4015ba21a719b4dd              # double 5.4317690000000001
	.quad	0x4007eab81f969e3d              # double 2.9896090000000002
	.quad	0x4019af71a7e30878              # double 6.4213319999999996
	.quad	0x400fd8d8a979e16d              # double 3.9808819999999998
	.quad	0x401409ce8d972cd8              # double 5.0095770000000002
	.quad	0x4022dac4b4d056c5              # double 9.4272819999999999
	.quad	0x401b32b841248d7e              # double 6.799531
	.quad	0x401bc65bea0ba1f5              # double 6.9437100000000003
	.quad	0x4011209fe86833c6              # double 4.28186
	.quad	0x4023c559f6ec5b08              # double 9.8854520000000007
	.quad	0x4014b624dd2f1aa0              # double 5.1778750000000002
	.quad	0x401ad94d50ebaade              # double 6.7122089999999996
	.quad	0x400eb5bc44bf4cb2              # double 3.8387380000000002
	.quad	0x400fcde33269df98              # double 3.9755310000000001
	.quad	0x402034b2b777d0f2              # double 8.1029260000000001
	.quad	0x40223911f0c34c1b              # double 9.1114650000000008
	.quad	0x40212c0fa9c12f0a              # double 8.5860570000000003
	.quad	0x4022ab3b320535ca              # double 9.3344360000000002
	.quad	0x40199036006d0d4a              # double 6.3908310000000004
	.quad	0x40123c8d9f9053a0              # double 4.5591340000000002
	.quad	0x40186834d26fa3fd              # double 6.1017640000000002
	.quad	0x401e20e5e679463d              # double 7.532127
	.quad	0x40035306a2b17050              # double 2.41554
	.quad	0x3fff4ad03d9a9542              # double 1.955765
	.quad	0x4023c62cfd8f0c78              # double 9.8870620000000002
	.quad	0x4012ca11a975afb0              # double 4.6973330000000004
	.quad	0x4004d0abb44e50c6              # double 2.60189
	.quad	0x401f4b0f27bb2fec              # double 7.8232999999999997
	.quad	0x400f7e3864cb5bb4              # double 3.9366310000000002
	.quad	0x4015fb0b7c3504c5              # double 5.4951610000000004
	.quad	0x3fbaf0bf1a5ca298              # double 0.105236
	.quad	0x4021b5d334c5da6a              # double 8.8551269999999995
	.quad	0x4009f5f2452c59fb              # double 3.2450909999999999
	.quad	0x401b4d9cf13cee9e              # double 6.8257940000000001
	.quad	0x401c76ea4228997c              # double 7.1161279999999998
	.quad	0x401e07164c729f5a              # double 7.5069210000000002
	.quad	0x401faf0d413122b8              # double 7.9209490000000002
	.quad	0x40210802e2328f9f              # double 8.5156469999999995
	.quad	0x4011afceb78897ea              # double 4.4216870000000004
	.quad	0x40185d19dece5711              # double 6.0909190000000004
	.quad	0x40162b37867f0aa2              # double 5.5422039999999999
	.quad	0x40124b1d92b7fe09              # double 4.5733550000000003
	.quad	0x3ff0b55cd91eeaa7              # double 1.044278
	.quad	0x401e9d77318fc505              # double 7.6537750000000004
	.quad	0x401857baecd07853              # double 6.085674
	.quad	0x40149b4245f5ad97              # double 5.1516200000000003
	.quad	0x4008350c1b97353b              # double 3.0259019999999999
	.quad	0x3fe9e0029f16b11c              # double 0.80859499999999995
	.quad	0x400f7577963992c9              # double 3.9323570000000001
	.quad	0x401755feda661284              # double 5.8339800000000004
	.quad	0x4021688787485e3e              # double 8.7041590000000006
	.quad	0x4021de8101f31f47              # double 8.9345780000000001
	.quad	0x400e440af1cb89d7              # double 3.7832240000000001
	.quad	0x401614794ea07703              # double 5.5199939999999996
	.quad	0x400a91172ef0ae53              # double 3.3208449999999998
	.quad	0x402233841248d7e0              # double 9.1006169999999997
	.quad	0x4017a11e85fd04a3              # double 5.907343
	.quad	0x3ff4e974a3400b89              # double 1.306996
	.quad	0x40172081c2e33eff              # double 5.7817449999999999
	.quad	0x4008c65add9c27e9              # double 3.0968529999999999
	.quad	0x4015c1d0c8041030              # double 5.439273
	.quad	0x4002b606317268d3              # double 2.3388789999999999
	.quad	0x4017dbea91d9b1b8              # double 5.9647620000000003
	.quad	0x3ff401ba7fc32ebe              # double 1.2504219999999999
	.quad	0x400d93fc0096feb5              # double 3.6972580000000002
	.quad	0x40080deebb341e15              # double 3.0068030000000001
	.quad	0x3fe55bf6a0dbad3a              # double 0.66747599999999996
	.quad	0x40196b0c88a47ed0              # double 6.3545400000000001
	.quad	0x4023529003eea20a              # double 9.6612550000000006
	.quad	0x4021c48366516db1              # double 8.8838150000000002
	.quad	0x400ba5c4651f3e8a              # double 3.4559410000000002
	.quad	0x401881947cfa26a2              # double 6.1265429999999999
	.quad	0x4021a23b14a90471              # double 8.8168570000000006
	.quad	0x4021b51d4738a3b5              # double 8.8537389999999991
	.quad	0x401ee4934267839d              # double 7.7232180000000001
	.quad	0x3fefa21858bc59b8              # double 0.98853699999999999
	.quad	0x3ff512c061847f56              # double 1.317078
	.quad	0x401e286df82b1f68              # double 7.5394819999999995
	.quad	0x4005b15ce9e5e248              # double 2.7116030000000002
	.quad	0x3fbcfc71d6063172              # double 0.11322699999999999
	.quad	0x40204b519bd4067d              # double 8.1471070000000001
	.quad	0x4014fbba98eda22f              # double 5.2458289999999996
	.quad	0x3fecc3dab5c39bcc              # double 0.89890800000000004
	.quad	0x4020443fa2ad3e92              # double 8.1332979999999999
	.quad	0x4017ae85fd04a2fd              # double 5.9204330000000001
	.quad	0x40136ab3edd8b60f              # double 4.8542019999999999
	.quad	0x400ac22b3892ee85              # double 3.3448090000000001
	.quad	0x4011fc6a7ef9db23              # double 4.4965000000000002
	.quad	0x400252fb19e731d3              # double 2.2905180000000001
	.quad	0x3fe660d23d4f15e8              # double 0.69931900000000002
	.quad	0x4018e5dfeb8d8234              # double 6.2244869999999999
	.quad	0x402048a73f748a16              # double 8.1419010000000007
	.quad	0x4001a3526527a205              # double 2.2047469999999998
	.quad	0x3ff298e0008637bd              # double 1.162323
	.quad	0x3ff134a3400b88ca              # double 1.0753509999999999
	.quad	0x4007481f53825e14              # double 2.9102160000000001
	.quad	0x401261b21c475e63              # double 4.5954059999999997
	.quad	0x40208cfa26a22b39              # double 8.2753460000000008
	.quad	0x3ff79d35653c9abb              # double 1.475881
	.quad	0x40210e4a59c065b6              # double 8.5279109999999996
	.quad	0x401d9873bc903ea7              # double 7.398879
	.quad	0x3fe92467be553ac5              # double 0.785694
	.quad	0x401d75ca29845dc8              # double 7.3650289999999998
	.quad	0x40209f4794ea0770              # double 8.3110929999999996
	.quad	0x401035af6c69b5a6              # double 4.0524269999999998
	.quad	0x400fb2af1455219b              # double 3.9622480000000002
	.quad	0x401f1adafd113837              # double 7.7762260000000003
	.quad	0x4017a4651f3e89a9              # double 5.9105420000000004
	.quad	0x40010db61bb05faf              # double 2.1316950000000001
	.quad	0x4012061c36976bc2              # double 4.5059670000000001
	.quad	0x401f4871e6cd2913              # double 7.8207469999999998
	.quad	0x40200372606fac60              # double 8.0067319999999995
	.quad	0x40102c29bf162ae5              # double 4.0431280000000003
	.quad	0x3ffb19e30014f8b6              # double 1.6938200000000001
	.quad	0x401452599ed7c6fc              # double 5.0804200000000002
	.quad	0x400ad1e85fd04a30              # double 3.3524940000000001
	.quad	0x40111b1fab96f21f              # double 4.2764879999999996
	.quad	0x4003d586ca89fc6e              # double 2.4792610000000002
	.quad	0x401b2ec99f1ae2da              # double 6.7956909999999997
	.quad	0x400f914fce746cb9              # double 3.9459529999999998
	.quad	0x4021b12839042d8c              # double 8.8460099999999997
	.quad	0x40144e80bed740c4              # double 5.0766629999999999
	.quad	0x402221e0a41a261c              # double 9.066167
	.quad	0x3f9082491afc04c9              # double 0.016122000000000001
	.quad	0x401842962cfd8f0c              # double 6.0650259999999996
	.quad	0x401ab8854cdb7ae5              # double 6.6801959999999996
	.quad	0x4019874b40703298              # double 6.382123
	.quad	0x400778bac710cb29              # double 2.9339499999999998
	.quad	0x401b35dedf1e0829              # double 6.8026080000000002
	.quad	0x400859591cd1c7de              # double 3.0436269999999999
	.quad	0x40133bf26f1dc50d              # double 4.8085420000000001
	.quad	0x3fe081e8a2ec28b3              # double 0.51585800000000004
	.quad	0x3ff2923f67f4dbe0              # double 1.1607050000000001
	.quad	0x40057fce3150dae4              # double 2.687405
	.quad	0x401f10f062d40aaf              # double 7.7665420000000002
	.quad	0x4005a0b135979182              # double 2.7034630000000002
	.quad	0x400947c30d306a2b              # double 3.16004
	.quad	0x401ff4013ec460ee              # double 7.9882860000000004
	.quad	0x4000cca600b02928              # double 2.099926
	.quad	0x3ff69b90ea9e6eeb              # double 1.4129799999999999
	.quad	0x3ffadaab47410731              # double 1.6783859999999999
	.quad	0x4020db56323bbc6f              # double 8.4283920000000006
	.quad	0x3fdfb45ae5ffa3ba              # double 0.49538300000000002
	.quad	0x40152b780346dc5d              # double 5.2924499999999997
	.quad	0x40074ce032db1e9f              # double 2.9125369999999999
	.quad	0x400caa593a2df938              # double 3.5831780000000002
	.quad	0x3fda9acbc8c0ce92              # double 0.41569800000000001
	.quad	0x40183996312f4cf5              # double 6.0562370000000003
	.quad	0x401117c5692b3cc5              # double 4.2732140000000003
	.quad	0x4019053c9abb01c9              # double 6.2551139999999998
	.quad	0x402211b6d43d0397              # double 9.0345980000000008
	.quad	0x401512e0e30446b7              # double 5.2684360000000003
	.quad	0x400bc8d8ec95bff0              # double 3.4730699999999999
	.quad	0x401efa9d1f601798              # double 7.7447400000000001
	.quad	0x40183ae297396d09              # double 6.0575049999999999
	.quad	0x40068ec0724b76f7              # double 2.8197030000000001
	.quad	0x3feab05100a393ee              # double 0.83402299999999996
	.quad	0x400ae7d88c1db014              # double 3.3632059999999999
	.quad	0x401116266fd651b1              # double 4.2716310000000002
	.quad	0x401473eaf6837f7c              # double 5.1132010000000001
	.quad	0x40130e935b91f70e              # double 4.7642340000000001
	.quad	0x3ffe82c5e2cdc012              # double 1.906927
	.quad	0x4011f1deacc92147              # double 4.4862010000000003
	.quad	0x40021a6c5d206c87              # double 2.262902
	.quad	0x4022905553ef6b5d              # double 9.2819009999999995
	.quad	0x4016ac4b90214ad3              # double 5.6682569999999997
	.quad	0x401fc0be51090710              # double 7.9382260000000002
	.quad	0x40100738a3b57c4e              # double 4.0070519999999998
	.quad	0x3ffe3315d701d9f5              # double 1.887472
	.quad	0x400c3af07bfe7e20              # double 3.5287790000000001
	.quad	0x401e98c2e770bd01              # double 7.6491809999999995
	.quad	0x401509496249a134              # double 5.2590690000000002
	.quad	0x40178ae3608d0892              # double 5.8856330000000003
	.quad	0x40046a43bb40b34e              # double 2.5518869999999998
	.quad	0x3ffe484406c00da2              # double 1.8926430000000001
	.quad	0x4015b86013660e52              # double 5.4300540000000002
	.quad	0x4006d3929ed3953e              # double 2.853307
	.quad	0x4007fd94d0dcfcc6              # double 2.9988190000000001
	.quad	0x40212b94face67d7              # double 8.5851209999999991
	.quad	0x401dbd31b9b66f93              # double 7.4347599999999998
	.quad	0x4022a6512a94ff00              # double 9.3248379999999997
	.quad	0x40205774eebf65dc              # double 8.170814
	.quad	0x401db559b3d07c85              # double 7.4271000000000003
	.quad	0x3ff6d1fd5885d313              # double 1.426267
	.quad	0x4001041e57d9dba9              # double 2.127011
	.quad	0x4013897635e7429a              # double 4.8842400000000001
	.quad	0x4008d288ce703afb              # double 3.1027999999999998
	.quad	0x4004214727dcbddc              # double 2.5162490000000002
	.quad	0x4003c997c3d68406              # double 2.4734340000000001
	.quad	0x4023d881a1554fbe              # double 9.9228640000000006
	.quad	0x40214ccd74927914              # double 8.6500050000000001
	.quad	0x4014cd1e53a81dc1              # double 5.2003110000000001
	.quad	0x4001ae08f2170931              # double 2.209978
	.quad	0x400d95b5fa22706d              # double 3.6981009999999999
	.quad	0x401b90bf5d78811b              # double 6.8913549999999999
	.quad	0x3ff75e7c8d195897              # double 1.4605680000000001
	.quad	0x4004c05143bf7271              # double 2.5939049999999999
	.quad	0x40216ccdb7ae5797              # double 8.7125070000000004
	.quad	0x4018ee175d13d74d              # double 6.2325109999999997
	.quad	0x4016361522a6f3f5              # double 5.5528149999999998
	.quad	0x401c9bb2788db057              # double 7.1520479999999997
	.quad	0x4021ed675579af19              # double 8.9636790000000008
	.quad	0x40202beee5258927              # double 8.0858070000000009
	.quad	0x400d3cad14a0a0f5              # double 3.6546270000000001
	.quad	0x402042eec7c957cd              # double 8.1307279999999995
	.quad	0x401ae8ed5f138bce              # double 6.727468
	.quad	0x4019aa41e57d9dbb              # double 6.4162670000000004
	.quad	0x3fe0e1672324c836              # double 0.52751499999999996
	.quad	0x3ff96036006d0d4a              # double 1.5859890000000001
	.quad	0x4022b9044f1a1987              # double 9.3613610000000004
	.quad	0x40104e2046c764ae              # double 4.076295
	.quad	0x3fd7fd933e35c5b5              # double 0.37485200000000002
	.quad	0x4023faa3486f049b              # double 9.9895270000000007
	.quad	0x401ad2ef4e0114d3              # double 6.705991
	.quad	0x4015538bcdfefbf4              # double 5.331588
	.quad	0x400ae512231832fd              # double 3.3618510000000001
	.quad	0x40034f49491f2dc3              # double 2.4137140000000001
	.quad	0x3fdd5592d98bf7f0              # double 0.45834799999999998
	.quad	0x401e01c7de5082cf              # double 7.5017389999999997
	.quad	0x40165bc2b94d9408              # double 5.5896100000000004
	.quad	0x4015a4face67d780              # double 5.4111130000000003
	.quad	0x4018d7dd44135547              # double 6.2108049999999997
	.quad	0x401b08958d9b5e96              # double 6.7583830000000003
	.quad	0x401b1834091c0874              # double 6.7736359999999998
	.quad	0x3fe8cdbbe0157eed              # double 0.77511399999999997
	.quad	0x401f0a27f1b69121              # double 7.7599179999999998
	.quad	0x401b546e4c0df58c              # double 6.832452
	.quad	0x400b8a958537e2c5              # double 3.4426679999999998
	.quad	0x3fe1a3d70a3d70a4              # double 0.55125000000000002
	.quad	0x402215c55000c954              # double 9.0425210000000006
	.quad	0x3ffcaf533f42352f              # double 1.7928040000000001
	.quad	0x401a34b6a619da9d              # double 6.5514780000000004
	.quad	0x4017e460aa64c2f8              # double 5.9730249999999998
	.quad	0x401d5711d798d8a9              # double 7.3350289999999996
	.quad	0x401f03cc8de2ac32              # double 7.7537099999999999
	.quad	0x4011a9008205ff1e              # double 4.4150410000000004
	.quad	0x402388759253543b              # double 9.7665220000000001
	.quad	0x4010271fff79c843              # double 4.038208
	.quad	0x402087fed20296b3              # double 8.2656159999999996
	.quad	0x401468dcdb37c99b              # double 5.1024050000000001
	.quad	0x4011a3b29a1b9f99              # double 4.4098610000000003
	.quad	0x400a776145953587              # double 3.3082910000000001
	.quad	0x40110061847f5621              # double 4.2503719999999996
	.quad	0x4021ed230b9dc2f4              # double 8.9631579999999999
	.quad	0x4019571fbc5de9c0              # double 6.3350819999999999
	.quad	0x4021864388ebcc6c              # double 8.7622339999999994
	.quad	0x401b35492ff4ba52              # double 6.8020370000000003
	.quad	0x4021165d9e40c847              # double 8.5436829999999997
	.quad	0x4016f4a0a0f4d7ae              # double 5.7388940000000002
	.quad	0x401059c560c7c0f4              # double 4.0876669999999997
	.quad	0x401ec351deefe500              # double 7.6907420000000002
	.quad	0x401c0b3354c12275              # double 7.0109380000000003
	.quad	0x3ff6c766c6de7642              # double 1.4236819999999999
	.quad	0x401a0ca6ca03c4b1              # double 6.5123550000000003
	.quad	0x401026777079e59f              # double 4.0375649999999998
	.quad	0x4009a331e3a7daa5              # double 3.204685
	.quad	0x400e7f1d81f10668              # double 3.812068
	.quad	0x400f02dc6e2a8006              # double 3.8763969999999999
	.quad	0x40220647dc37a3db              # double 9.0122669999999996
	.quad	0x401415bdd76683c3              # double 5.0212320000000004
	.quad	0x4020d4dd0d8cb07d              # double 8.4157489999999999
	.quad	0x4015f5d5b24e9c45              # double 5.4900729999999998
	.quad	0x40048697aeddce7d              # double 2.5657190000000001
	.quad	0x40228fff36ac6477              # double 9.2812439999999992
	.quad	0x4020437f7be121ee              # double 8.1318319999999993
	.quad	0x401041869835158c              # double 4.0639900000000004
	.quad	0x3fd84a7b4e54f7a9              # double 0.37954599999999999
	.quad	0x4022dfa5d28d002e              # double 9.4368119999999998
	.quad	0x400d5e41d4b6a61a              # double 3.6710240000000001
	.quad	0x401e48a8b08dd1e5              # double 7.5709559999999997
	.quad	0x3ffc7a11a975afb0              # double 1.7798020000000001
	.quad	0x3fdfe63e8dda48b6              # double 0.49842799999999998
	.quad	0x3ff6505af6c69b5a              # double 1.3946179999999999
	.quad	0x401cbc0ce91c8eac              # double 7.183643
	.quad	0x401b9a59c065b63d              # double 6.9007329999999998
	.quad	0x401d85104d551d69              # double 7.3799450000000002
	.quad	0x400a7111f0c34c1b              # double 3.3052100000000002
	.quad	0x4004e96dd26b723f              # double 2.6139790000000001
	.quad	0x402281ce075f6fd2              # double 9.2535249999999998
	.quad	0x40139ed3d859c8c9              # double 4.9051049999999998
	.quad	0x401da5ca29845dc8              # double 7.4119039999999998
	.quad	0x3ff9606317268d33              # double 1.5860320000000001
	.quad	0x4012c9fba450acc1              # double 4.6972490000000002
	.quad	0x401c84ead0c3d252              # double 7.1298019999999998
	.quad	0x40221d7dbf487fcc              # double 9.0576000000000007
	.quad	0x401cf9dece571088              # double 7.244014
	.quad	0x40228a5742dcf462              # double 9.2701969999999996
	.quad	0x401bbdd82fd75e20              # double 6.9353949999999998
	.quad	0x40173c3b927d45a6              # double 5.808821
	.quad	0x4016f4d61b2a27f2              # double 5.7390980000000003
	.quad	0x4010f9d16fc9bc77              # double 4.2439629999999999
	.quad	0x4018814163779e9d              # double 6.1262259999999999
	.quad	0x4012775536933a04              # double 4.616536
	.quad	0x400016e503fb3743              # double 2.0111789999999998
	.quad	0x3fca3f5f91600f34              # double 0.20505899999999999
	.quad	0x400dcc82e019b0ab              # double 3.7248589999999999
	.quad	0x40114730c67168f9              # double 4.3195220000000001
	.quad	0x40112f7985271bce              # double 4.2963620000000002
	.quad	0x3ffd572ef0ae5365              # double 1.833785
	.quad	0x3ff6aef0ae536502              # double 1.41771
	.quad	0x3ffb1b9e8c47a17f              # double 1.6942429999999999
	.quad	0x3ffb6a57214f0521              # double 1.713462
	.quad	0x4022f272ead9274e              # double 9.4735329999999998
	.quad	0x3fdd6a161e4f7660              # double 0.45960000000000001
	.quad	0x3ff5b98958d9b5e9              # double 1.3577969999999999
	.quad	0x3ff400218def416c              # double 1.250032
	.quad	0x4022fd9ad85dfa87              # double 9.4953219999999998
	.quad	0x4017aec9e236c15d              # double 5.9206919999999998
	.quad	0x3feb09df1172ef0b              # double 0.84495500000000001
	.quad	0x40141cdfaca36199              # double 5.0281969999999996
	.quad	0x400e3a89331a08c0              # double 3.7785820000000001
	.quad	0x3fb051c9f72f76e6              # double 0.063747999999999999
	.quad	0x401f875e6362a5e8              # double 7.8821960000000004
	.quad	0x40162b11c6d1e109              # double 5.5420600000000002
	.quad	0x4022367f6f4be836              # double 9.1064410000000002
	.quad	0x400acf0cfe154435              # double 3.351099
	.quad	0x4021ca5f41aef6f9              # double 8.8952580000000001
	.quad	0x401d45ae5ffa3b9b              # double 7.3180480000000001
	.quad	0x3fe7a990f301eabc              # double 0.73944900000000002
	.quad	0x3fee75360d024702              # double 0.95180799999999999
	.quad	0x4014375d13d74d59              # double 5.0540659999999997
	.quad	0x40042412cf0f9d2c              # double 2.517614
	.quad	0x3fffee9ff0cbaf96              # double 1.9957579999999999
	.quad	0x3ffd0945f9df548f              # double 1.814764
	.quad	0x40109938de6ddf01              # double 4.1496310000000003
	.quad	0x401487a85015c209              # double 5.1324779999999999
	.quad	0x3ffa0901d19157ac              # double 1.6271990000000001
	.quad	0x3fd672f33ca31e7e              # double 0.35076600000000002
	.quad	0x4000fdf43c7d5ed0              # double 2.1240009999999998
	.quad	0x3ffeea5c5f7c675a              # double 1.9322170000000001
	.quad	0x401d02fec56d5cfb              # double 7.2529250000000003
	.quad	0x3ffea0fa15db3398              # double 1.914301
	.quad	0x400d66da4484944f              # double 3.6752210000000001
	.quad	0x3ffe9c99285a921d              # double 1.913232
	.quad	0x402126fd651b0ccc              # double 8.5761520000000004
	.quad	0x4006a6e2a80064aa              # double 2.8314870000000001
	.quad	0x402150ace24bba13              # double 8.6575690000000005
	.quad	0x40045bde82d7b635              # double 2.5448580000000001
	.quad	0x400dbcf13cee9dd8              # double 3.717257
	.quad	0x40182c11e42e1262              # double 6.043037
	.quad	0x400b6f2389720429              # double 3.4292669999999998
	.quad	0x401434c87980f55e              # double 5.0515460000000001
	.quad	0x401d136c15d2d01c              # double 7.268967
	.quad	0x401bdb9f559b3d08              # double 6.9644750000000002
	.quad	0x40196a7008a697af              # double 6.3539430000000001
	.quad	0x4015f50f40e5a35d              # double 5.4893159999999996
	.quad	0x4005c96c3fc43b2e              # double 2.7233510000000001
	.quad	0x4017b09310129cbb              # double 5.9224360000000003
	.quad	0x4004471715c63ae2              # double 2.5347119999999999
	.quad	0x3fe2c4ed6fda836f              # double 0.58653900000000003
	.quad	0x402226ba0620ab71              # double 9.0756379999999996
	.quad	0x40006bf9830e3cda              # double 2.0527220000000002
	.quad	0x40031bc6eb0b7c35              # double 2.388563
	.quad	0x4010f8262456f75e              # double 4.2423330000000004
	.quad	0x3ff4f89d6adf71eb              # double 1.310697
	.quad	0x402369795b35b0bc              # double 9.706004
	.quad	0x401b43bf727136a4              # double 6.81616
	.quad	0x402124b407032980              # double 8.5716859999999997
	.quad	0x402139d55e6bc622              # double 8.6129560000000005
	.quad	0x4016633269df97ab              # double 5.5968720000000003
	.quad	0x40224dd50a88effe              # double 9.1520159999999997
	.quad	0x401d4193b3a68b1a              # double 7.3140400000000003
	.quad	0x4003f963992c8c50              # double 2.496772
	.quad	0x4021075c8d9f9054              # double 8.5143780000000006
	.quad	0x4011a536501e2585              # double 4.41134
	.quad	0x401fe4e93e1c9b41              # double 7.9735459999999998
	.quad	0x40044261bf37b8d4              # double 2.532413
	.quad	0x4004010a569b1748              # double 2.500508
	.quad	0x3fb7a658c4bd33d3              # double 0.092382000000000006
	.quad	0x40161ebaade657b8              # double 5.5300089999999997
	.quad	0x4017cf14983d7907              # double 5.9522269999999997
	.quad	0x40061cc74b838c11              # double 2.764052
	.quad	0x40213577531db446              # double 8.6044260000000001
	.quad	0x401915c0767d34df              # double 6.271242
	.quad	0x401617e80389f83c              # double 5.5233460000000001
	.quad	0x40136feb4a66559f              # double 4.8592959999999996
	.quad	0x40097228dc981beb              # double 3.180742
	.quad	0x401b1ed7c6fbd274              # double 6.7801200000000001
	.quad	0x3fbdfefbf401c4fc              # double 0.117172
	.quad	0x40128ccc46950fc7              # double 4.6374979999999999
	.quad	0x401ce68943e10060              # double 7.2251329999999996
	.quad	0x4020884988094e5d              # double 8.2661859999999994
	.quad	0x4021183968d759ef              # double 8.5473130000000008
	.quad	0x4012f209246bf013              # double 4.7363629999999999
	.quad	0x40216304ab606b7b              # double 8.6933950000000006
	.quad	0x3fd3c7325918a00a              # double 0.309033
	.quad	0x3ffab1290257c915              # double 1.6682520000000001
	.quad	0x400819c6b0531983              # double 3.0125860000000002
	.quad	0x402026ccc46950fc              # double 8.0757809999999992
	.quad	0x400d5a12b5e529bb              # double 3.668981
	.quad	0x401d96b26bf8769f              # double 7.3971650000000002
	.quad	0x400cc8b86b15f890              # double 3.5980080000000001
	.quad	0x3ffd004d98394749              # double 1.8125739999999999
	.quad	0x4005d82ba5a03819              # double 2.7305519999999999
	.quad	0x40218ff7164c729f              # double 8.7811819999999994
	.quad	0x4012374080f98fa3              # double 4.5539569999999996
	.quad	0x40041082491afc05              # double 2.5080610000000001
	.quad	0x4002eac8e68e3ef3              # double 2.3646410000000002
	.quad	0x401ee36a400fba88              # double 7.7220849999999998
	.quad	0x4023fa56366d7a57              # double 9.9889390000000002
	.quad	0x401b41a261bf37b9              # double 6.8140960000000002
	.quad	0x4017a14057082492              # double 5.9074720000000003
	.quad	0x40002b88ca3e7d13              # double 2.0212569999999999
	.quad	0x3fff5029ae4f3344              # double 1.957071
	.quad	0x40204d91ab8e8ea4              # double 8.1515020000000006
	.quad	0x4022118a86d71f36              # double 9.0342599999999997
	.quad	0x4006e1ed5ae1cde6              # double 2.8603160000000001
	.quad	0x40125db7281fd9ba              # double 4.5915189999999999
	.quad	0x4020af1886df82b2              # double 8.3419840000000001
	.quad	0x4013deae5bc87db3              # double 4.9674620000000003
	.quad	0x401c05d206c8711d              # double 7.0056839999999996
	.quad	0x4023abeea209aaa4              # double 9.8358050000000005
	.quad	0x3ff9d6659d12cade              # double 1.614843
	.quad	0x402226b356da0169              # double 9.0755870000000005
	.quad	0x4020a7967caea748              # double 8.3273200000000003
	.quad	0x40229ba109d0635a              # double 9.3039629999999995
	.quad	0x4013375cd0bb6ed6              # double 4.8040649999999996
	.quad	0x402172f5771001d6              # double 8.7245290000000004
	.quad	0x40206b3a68b19a41              # double 8.2094299999999993
	.quad	0x400e5de939eadd59              # double 3.795855
	.quad	0x400f3e56473471f8              # double 3.9054380000000002
	.quad	0x3fa4d9a52263d817              # double 0.040723000000000002
	.quad	0x401d436f7e3d1cc1              # double 7.315855
	.quad	0x3ff7b6598e10cf5b              # double 1.482019
	.quad	0x4016502363b25700              # double 5.5782600000000002
	.quad	0x402061d6cf850df1              # double 8.1910919999999994
	.quad	0x4013925d8d79d0a6              # double 4.8929349999999996
	.quad	0x4017887ce95faa8b              # double 5.8832890000000004
	.quad	0x4019449b62c77575              # double 6.316999
	.quad	0x4015da4f8726d04e              # double 5.4631939999999997
	.quad	0x400f146f587d6f97              # double 3.8849779999999998
	.quad	0x401c763305100a39              # double 7.1154289999999998
	.quad	0x400a8745bf26f1dc              # double 3.3160509999999999
	.quad	0x4000c3e963dc486b              # double 2.0956600000000001
	.quad	0x3fda8f8a4c1ebc84              # double 0.41501100000000002
	.quad	0x4015dc664d3bf2f5              # double 5.4652339999999997
	.quad	0x40211eea854477ff              # double 8.5603829999999999
	.quad	0x3fd26fef7c243dcd              # double 0.288082
	.quad	0x401eb682730c6717              # double 7.6782320000000003
	.quad	0x40139016052502ef              # double 4.8907090000000002
	.quad	0x4010868b19a415f4              # double 4.1313899999999997
	.quad	0x400d4305532617c2              # double 3.6577250000000001
	.quad	0x400bfbd9cae21102              # double 3.4979740000000001
	.quad	0x3ff045308bb90646              # double 1.0168919999999999
	.quad	0x40239f31098d477c              # double 9.8109210000000004
	.quad	0x40209e70e2c12ad8              # double 8.3094549999999998
	.quad	0x401a570c996b7671              # double 6.5850090000000003
	.quad	0x3ffaa33ce63a5c1c              # double 1.6648529999999999
	.quad	0x4017b1eff9f87f02              # double 5.9237669999999998
	.quad	0x3ff497b0f6ad70e7              # double 1.287034
	.quad	0x4022766bc621b7e1              # double 9.2312910000000006
	.quad	0x401fb6694898f606              # double 7.9281360000000003
	.quad	0x3ff144178705425f              # double 1.079124
	.quad	0x40234896dd26b724              # double 9.6417760000000001
	.quad	0x4010442dcf4623d1              # double 4.0665810000000002
	.quad	0x4021b03f705857b0              # double 8.8442340000000002
	.quad	0x4010541dd1a21ea3              # double 4.0821449999999997
	.quad	0x401022bb23571d1d              # double 4.0339169999999998
	.quad	0x401ae0b178b37004              # double 6.7194269999999996
	.quad	0x3fef83eea209aaa4              # double 0.98485500000000003
	.quad	0x402013fca85caafc              # double 8.0390370000000004
	.quad	0x4000a991ff7164c7              # double 2.0827979999999999
	.quad	0x4022f6290eed02cd              # double 9.4807819999999995
	.quad	0x401d63e4abe6a338              # double 7.3475520000000003
	.quad	0x3fe2ddebd9018e75              # double 0.58958999999999995
	.quad	0x3fdad106ee30caa3              # double 0.41900799999999999
	.quad	0x400fb2fd32c625ea              # double 3.9623970000000002
	.quad	0x3ff657bfa4c61d86              # double 1.396423
	.quad	0x4000b81c714fce74              # double 2.0898979999999998
	.quad	0x40223878fabda0e0              # double 9.1102980000000002
	.quad	0x4023c3c21187e7c0              # double 9.8823399999999992
	.quad	0x40108657fb69984a              # double 4.131195
	.quad	0x40228697f1f9ad00              # double 9.2628780000000006
	.quad	0x401793c5bd0e12e8              # double 5.8943089999999998
	.quad	0x402043a0a5269596              # double 8.132085
	.quad	0x40205968f8e7ddca              # double 8.1746289999999995
	.quad	0x401f331df761cbcd              # double 7.799919
	.quad	0x400604755ffe6d59              # double 2.7521770000000001
	.quad	0x400e7cec84f8f8a5              # double 3.8109980000000001
	.quad	0x4022134b2fa93af7              # double 9.0376829999999995
	.quad	0x4016fe536501e258              # double 5.7483649999999997
	.quad	0x3ff3e0c282c6ef3d              # double 1.2423729999999999
	.quad	0x400bf2999567dbb1              # double 3.4934569999999998
	.quad	0x3ffccb2745bf26f2              # double 1.799598
	.quad	0x40226f7c6759ab6d              # double 9.217746
	.quad	0x3feb99b90ea9e6ef              # double 0.86251500000000003
	.quad	0x40220adba4d6e47e              # double 9.0212070000000004
	.quad	0x40239bd05af6c69b              # double 9.8043239999999993
	.quad	0x3fcfed84d338f798              # double 0.24943599999999999
	.quad	0x3fc0410b630a9153              # double 0.12698499999999999
	.quad	0x4021d578811b1d93              # double 8.9169350000000005
	.quad	0x4023412fb19e731d              # double 9.6273169999999996
	.quad	0x4008e957470eb24a              # double 3.1139359999999998
	.quad	0x401f30f7b9e060fe              # double 7.7978199999999998
	.quad	0x4020fe30ec311623              # double 8.4964670000000009
	.quad	0x3ff512556d19dece              # double 1.3169759999999999
	.quad	0x401891cc100e6afd              # double 6.1423800000000002
	.quad	0x402013d640e9d51b              # double 8.0387439999999994
	.quad	0x40215f74256bca53              # double 8.6864329999999992
	.quad	0x4019da08398a6549              # double 6.4629219999999998
	.quad	0x401d18d36b4c7f35              # double 7.2742440000000004
	.quad	0x401fd0446b69db66              # double 7.9533860000000001
	.quad	0x3fba57d9dba908a2              # double 0.10290299999999999
	.quad	0x40126177a7008a69              # double 4.5951829999999996
	.quad	0x3ff1fb395c422036              # double 1.123834
	.quad	0x4011d5c896dd26b7              # double 4.4587729999999999
	.quad	0x40181384ba0e8427              # double 6.0190609999999998
	.quad	0x3fc61cb46bacf744              # double 0.17275099999999999
	.quad	0x4010a5e84f09528f              # double 4.1620189999999999
	.quad	0x3ff71ae0c1765775              # double 1.444062
	.quad	0x402038b5ed8d36b5              # double 8.1107630000000004
	.quad	0x3ffb5f9ce8d972cd              # double 1.7108429999999999
	.quad	0x401235271bcdbbe0              # double 4.5519069999999999
	.quad	0x3fefd86ec17ebaf1              # double 0.99516999999999999
	.quad	0x400769c90c4dec1c              # double 2.9266529999999999
	.quad	0x3fefa7a85015c209              # double 0.98921599999999998
	.quad	0x400ee0639d5e4a38              # double 3.8595649999999999
	.quad	0x4015ca072d1aeb3e              # double 5.4472930000000002
	.quad	0x40232629b6b2af14              # double 9.5745369999999994
	.quad	0x401d94df47f993d5              # double 7.3953829999999998
	.quad	0x4014cad1d041cc53              # double 5.1980659999999999
	.quad	0x400d06fb4c3c18b5              # double 3.628409
	.quad	0x4017b29f16b11c6d              # double 5.9244349999999999
	.quad	0x401d48323358f2e0              # double 7.3205039999999997
	.quad	0x4008edf7a4e7ab75              # double 3.1161949999999998
	.quad	0x3fef8759253543af              # double 0.98527200000000003
	.quad	0x3ffd200e27e0ef9a              # double 1.8203260000000001
	.quad	0x401ad3122b7baecd              # double 6.706124
	.quad	0x4000a4473cd57364              # double 2.0802139999999998
	.quad	0x4022d7edc7ef177a              # double 9.4217359999999992
	.quad	0x4000c76d97b30f8c              # double 2.0973769999999998
	.quad	0x401028576cce5f74              # double 4.039396
	.quad	0x401aa562174c4ce0              # double 6.6615070000000003
	.quad	0x401d7dc50ce4ead1              # double 7.3728220000000002
	.quad	0x401db61ed5ae1cde              # double 7.4278519999999997
	.quad	0x3ffa5f8c21e1d218              # double 1.6483270000000001
	.quad	0x4022fd4a3c64345d              # double 9.494707
	.quad	0x3ff75490e66cb103              # double 1.4581459999999999
	.quad	0x4020825269595fee              # double 8.2545350000000006
	.quad	0x4021fc8beb5b2d4d              # double 8.9932549999999996
	.quad	0x40224c0b5675579b              # double 9.1485240000000001
	.quad	0x40168ec460ed80a1              # double 5.6394209999999996
	.quad	0x4003b9ddc1e7967d              # double 2.4657550000000001
	.quad	0x3fe10c4156e264e5              # double 0.53274600000000005
	.quad	0x40015f5c6c11a112              # double 2.1715629999999999
	.quad	0x3fe10ab92c061848              # double 0.532559
	.quad	0x401572ac753e707e              # double 5.3619859999999999
	.quad	0x401b5274e22a2c23              # double 6.8305239999999996
	.quad	0x400d3511dffc547a              # double 3.6509130000000001
	.quad	0x40044195464dc22b              # double 2.5320230000000001
	.quad	0x4020c290cd423d92              # double 8.3800109999999997
	.quad	0x4020ae451b93037d              # double 8.3403709999999993
	.quad	0x401027cc39ffd60f              # double 4.0388650000000004
	.quad	0x3fff2d06fef7c244              # double 1.948493
	.quad	0x4020dc7fdc5931ca              # double 8.4306629999999991
	.quad	0x401a37e414e7ee91              # double 6.5545809999999998
	.quad	0x401648d6d3b6cbda              # double 5.5711320000000004
	.quad	0x40227a428d434a02              # double 9.2387890000000006
	.quad	0x40051987c6327ed8              # double 2.6374659999999999
	.quad	0x4017991afc04c8bd              # double 5.8995170000000003
	.quad	0x3fe082bc72e275ab              # double 0.51595899999999995
	.quad	0x40096af038e29f9d              # double 3.177216
	.quad	0x401d4342edbb59de              # double 7.3156850000000002
	.quad	0x4001fd6b65a9a805              # double 2.2487400000000002
	.quad	0x4013a8f68be2f7b1              # double 4.9150029999999996
	.quad	0x3fdea4ca4f440af2              # double 0.47880800000000001
	.quad	0x402289bbadc0980b              # double 9.2690099999999997
	.quad	0x40235e1cffeb074a              # double 9.6838149999999992
	.quad	0x4014476fb09203a3              # double 5.0697619999999999
	.quad	0x401b72d72ffd1dcd              # double 6.8621489999999996
	.quad	0x400e5afc04c8bc9d              # double 3.7944260000000001
	.quad	0x3ff9c2491afc04c9              # double 1.6099330000000001
	.quad	0x4010bf3a57eaa2a1              # double 4.1867460000000003
	.quad	0x4012b7e132b55ef2              # double 4.67957
	.quad	0x3ff0dce9e5e24788              # double 1.0539339999999999
	.quad	0x401f44b33daf8df8              # double 7.8170900000000003
	.quad	0x3fe104e831ad2136              # double 0.53184900000000002
	.quad	0x400e39a7c17a8933              # double 3.778152
	.quad	0x3ffdf4d594f26aec              # double 1.872274
	.quad	0x3ff9384db9c7368b              # double 1.576246
	.quad	0x40014ec0f88333fd              # double 2.1634540000000002
	.quad	0x4006b8c08b75ea68              # double 2.840211
	.quad	0x400f0f102363b257              # double 3.882355
	.quad	0x40110898b2e9ccb8              # double 4.2583950000000002
	.quad	0x4020e5b20b8066c3              # double 8.4486240000000006
	.quad	0x401ac7fe4bcad9ae              # double 6.6953060000000004
	.quad	0x400e1d6cf850df16              # double 3.7643680000000002
	.quad	0x400bae6d9be4cd75              # double 3.4601700000000002
	.quad	0x3fedca66559f6ec6              # double 0.93095700000000003
	.quad	0x401eb0c34c1a8ac6              # double 7.6726200000000002
	.quad	0x3ff940fa9c12f09e              # double 1.5783640000000001
	.quad	0x4004cbfa8f7db6e5              # double 2.599599
	.quad	0x3fec0cfbfc6540cc              # double 0.87658499999999994
	.quad	0x401548661ae70c13              # double 5.3207019999999998
	.quad	0x400a16030c23fab1              # double 3.260748
	.quad	0x4022b1d084e831ad              # double 9.3472939999999998
	.quad	0x3fe663e6c4c5974e              # double 0.69969499999999996
	.quad	0x400b56199780baa6              # double 3.4170410000000002
	.quad	0x4020ea9eb2074ea9              # double 8.4582420000000003
	.quad	0x400b11b1d92b7fe1              # double 3.3836400000000002
	.quad	0x4013fb677f6b1a2a              # double 4.9955119999999997
	.quad	0x40216dd4e8fb00bd              # double 8.7145150000000005
	.quad	0x401f084ec636b096              # double 7.7581129999999998
	.quad	0x401e745baf533f42              # double 7.6136309999999998
	.quad	0x402272f2734f82f5              # double 9.2245059999999999
	.quad	0x401d23d8e0008638              # double 7.2850070000000002
	.quad	0x4009a657b84db9c7              # double 3.2062219999999999
	.quad	0x4011899e0e73604a              # double 4.3843920000000001
	.quad	0x4022617fe8ee6b83              # double 9.190429
	.quad	0x4000589613d31b9b              # double 2.0432549999999998
	.quad	0x400f2a59c065b63d              # double 3.8956789999999999
	.quad	0x4023c5d6bebe1651              # double 9.8864040000000006
	.quad	0x401a5c158fb43d8a              # double 6.5899260000000002
	.quad	0x401a2c92146a1a50              # double 6.543526
	.quad	0x400982749f0e4da1              # double 3.1886990000000002
	.quad	0x3ff6760bf5d78812              # double 1.4038200000000001
	.quad	0x4003d32617c1bda5              # double 2.4781
	.quad	0x4007206530058149              # double 2.8908179999999999
	.quad	0x40130eed8904f6e0              # double 4.7645780000000002
	.quad	0x400ae567125dd096              # double 3.3620130000000001
	.quad	0x400b8ad9ad85dfa8              # double 3.4427979999999998
	.quad	0x4018729c347e8cce              # double 6.1119240000000001
	.quad	0x402280cb07d0aeda              # double 9.2515490000000007
	.quad	0x40126dffc5479d4e              # double 4.6074210000000004
	.quad	0x400bd7b5aea3161a              # double 3.4803269999999999
	.quad	0x400bf70a3d70a3d7              # double 3.495625
	.quad	0x4010de1f3a57eaa3              # double 4.2169160000000003
	.quad	0x3ffa562ae4b01861              # double 1.646037
	.quad	0x401938a265f0f5a1              # double 6.305307
	.quad	0x4014d4bec679cc75              # double 5.2077590000000002
	.quad	0x4020bdc70435efa6              # double 8.3706589999999998
	.quad	0x3fff9fa54c554328              # double 1.9764759999999999
	.quad	0x3fda324c8366516e              # double 0.40932000000000002
	.quad	0x4021d7540895d0b7              # double 8.9205629999999996
	.quad	0x4010cb3edd8b60f2              # double 4.1984820000000003
	.quad	0x4014cd3d859c8c93              # double 5.2004299999999999
	.quad	0x3fdf92e62131a8ef              # double 0.49334099999999997
	.quad	0x400775e74299d884              # double 2.9325700000000001
	.quad	0x3fe7a2ab25b317f0              # double 0.73860700000000001
	.quad	0x401c5c3c9eecbfb1              # double 7.0900749999999997
	.quad	0x4020fe846a5d6bec              # double 8.4971040000000002
	.quad	0x4023d66106ab14ec              # double 9.9187089999999997
	.quad	0x4005728ae74f2f12              # double 2.6809289999999999
	.quad	0x4013ad8127b2cc71              # double 4.9194380000000004
	.quad	0x401fc0385c67dfe3              # double 7.9377149999999998
	.quad	0x40220eb4202d9cf1              # double 9.0287179999999996
	.quad	0x400b84db9c7368ad              # double 3.4398719999999998
	.quad	0x4010f472c0e7bc3c              # double 4.2387189999999997
	.quad	0x401570157eed45e9              # double 5.3594569999999999
	.quad	0x40223b5dcc63f141              # double 9.1159499999999998
	.quad	0x400674677b395c42              # double 2.8068379999999999
	.quad	0x3ff217c80841ede1              # double 1.130806
	.quad	0x400b2ee8d10f51ad              # double 3.3979050000000002
	.quad	0x400cb4a1272c94b4              # double 3.5881980000000002
	.quad	0x401eb2263d816acf              # double 7.6739740000000002
	.quad	0x3ff336273929ed39              # double 1.2007209999999999
	.quad	0x402044432ca57a78              # double 8.1333249999999992
	.quad	0x3fced8c2a454de7f              # double 0.24099000000000001
	.quad	0x40088a60913a4f87              # double 3.0675669999999999
	.quad	0x3fa285ec3dab5c3a              # double 0.036178000000000002
	.quad	0x3fe5c9ba5e353f7d              # double 0.68087500000000001
	.quad	0x4019eaa6d2674081              # double 6.479152
	.quad	0x4002d014b599aa61              # double 2.3516020000000002
	.quad	0x402011f46ed245b3              # double 8.0350680000000008
	.quad	0x401298f6cefed634              # double 4.6493789999999997
	.quad	0x401c769728a61177              # double 7.1158109999999999
	.quad	0x4004d243137b0707              # double 2.6026669999999998
	.quad	0x401d4f29d40ee06e              # double 7.3273080000000004
	.quad	0x40235e97f1f9ad00              # double 9.6847530000000006
	.quad	0x401f705425f20210              # double 7.8596959999999996
	.quad	0x4021c6bcc6c54bcf              # double 8.8881589999999999
	.quad	0x40066738a3b57c4e              # double 2.8004009999999999
	.quad	0x4023887160956c0d              # double 9.7664899999999992
	.quad	0x40204a65f0f5a101              # double 8.1453089999999992
	.quad	0x40060b80ecfa69be              # double 2.755617
	.quad	0x400e66ea854477ff              # double 3.800252
	.quad	0x3fca55f3519bd406              # double 0.20574799999999999
	.quad	0x4002b165d3996fa8              # double 2.3366199999999999
	.quad	0x40069c219eb6390d              # double 2.8262360000000002
	.quad	0x3fffb9463cfb3312              # double 1.9827330000000001
	.quad	0x401f37c3d68405b4              # double 7.8044580000000003
	.quad	0x401c2a90470a808d              # double 7.0415660000000004
	.quad	0x3fec6c2480e8c8ac              # double 0.88820100000000001
	.quad	0x401890203e63e8de              # double 6.1407480000000003
	.quad	0x402216cfc829cfdd              # double 9.0445539999999998
	.quad	0x401c68bac710cb29              # double 7.1022749999999997
	.quad	0x3ff3991ff7164c73              # double 1.2248840000000001
	.quad	0x400adb7d84901d19              # double 3.357173
	.quad	0x40197e5929670197              # double 6.3733870000000001
	.quad	0x40028ff865d7cb2e              # double 2.3202980000000002
	.quad	0x3fe2b317efe0ce0c              # double 0.58436200000000005
	.quad	0x40218e51d25aab47              # double 8.7779679999999995
	.quad	0x40061f7ad4b2745c              # double 2.765371
	.quad	0x4020c36bd2b6f199              # double 8.3816819999999996
	.quad	0x3fda76a2f48c2e77              # double 0.413491
	.quad	0x400461cffeb074a7              # double 2.5477599999999998
	.quad	0x4019189ca18bd662              # double 6.2740349999999996
	.quad	0x40161c857f3061c8              # double 5.5278530000000003
	.quad	0x4015a86e7e62dc6e              # double 5.4144839999999999
	.quad	0x401e873929ed3954              # double 7.6320540000000001
	.quad	0x3ff28507a6bd6e8b              # double 1.157478
	.quad	0x400a2f54d1e96c40              # double 3.2731110000000001
	.quad	0x4015f51a86940358              # double 5.4893590000000003
	.quad	0x4021b0f3cb3e5754              # double 8.8456100000000006
	.quad	0x4012faa21a719b4e              # double 4.7447590000000002
	.quad	0x40088c59fb1e18f0              # double 3.0685310000000001
	.quad	0x402065d50a88effe              # double 8.1988909999999997
	.quad	0x401cea06e9ff0cbb              # double 7.228542
	.quad	0x4023d300de4c5111              # double 9.9121159999999992
	.quad	0x400bc71d60631727              # double 3.4722240000000002
	.quad	0x4019bf9e7b80a9df              # double 6.4371280000000004
	.quad	0x3ff68255b035bd51              # double 1.40682
	.quad	0x40180f20a73f748a              # double 6.0147729999999999
	.quad	0x40211fd438d1d8a5              # double 8.5621659999999995
	.quad	0x4014aac322291fb4              # double 5.16676
	.quad	0x40145ee957470eb2              # double 5.0926869999999997
	.quad	0x401f26f3b213e3e3              # double 7.7880390000000003
	.quad	0x3ff5eb55ef1fddec              # double 1.369955
	.quad	0x401d8d4d4024b33e              # double 7.3879900000000003
	.quad	0x40042cecc814d728              # double 2.5219360000000002
	.quad	0x40230addbdb5d895              # double 9.5212230000000008
	.quad	0x4013df48c2e770bd              # double 4.968051
	.quad	0x3fe56c28b2a6b0d9              # double 0.66945299999999996
	.quad	0x4005a658c4bd33d3              # double 2.7062240000000002
	.quad	0x4016e43419e30015              # double 5.722855
	.quad	0x40210bb9f127f5e8              # double 8.5229029999999995
	.quad	0x4023cb265add9c28              # double 9.8967770000000001
	.quad	0x40211944ed6fda83              # double 8.5493539999999992
	.quad	0x4010b26202539757              # double 4.1742020000000002
	.quad	0x4018faf965b20b80              # double 6.2450919999999996
	.quad	0x3ff17c85c24c404a              # double 1.0929009999999999
	.quad	0x3ff83cad9ad85dfb              # double 1.5148140000000001
	.quad	0x402382a6d2674081              # double 9.755179
	.quad	0x3feb5c8fb86f47b6              # double 0.85504899999999995
	.quad	0x3ff4f2ce89656ef0              # double 1.3092790000000001
	.quad	0x40015185cee17a03              # double 2.164806
	.quad	0x4015c6cc5fbf8338              # double 5.4441389999999998
	.quad	0x401038433d6c7219              # double 4.0549439999999999
	.quad	0x401f9103c8e25c81              # double 7.8916159999999999
	.quad	0x40228c67dfe32a06              # double 9.2742299999999993
	.quad	0x3fef669ced0b30b6              # double 0.98127600000000004
	.quad	0x40178991ff7164c7              # double 5.8843459999999999
	.quad	0x4018261cbccf28c8              # double 6.0372190000000003
	.quad	0x401f12da554b8bf0              # double 7.7684110000000004
	.quad	0x3ffdc059210385c6              # double 1.8594599999999999
	.quad	0x400d247e49b1fab9              # double 3.6428189999999998
	.quad	0x40207744d4456712              # double 8.2329469999999993
	.quad	0x4022b524180d3cff              # double 9.3537909999999993
	.quad	0x3ff1dd0fa58f7122              # double 1.1164700000000001
	.quad	0x3ffddfa43fe5c91d              # double 1.8671
	.quad	0x40049b1b79d909f2              # double 2.575736
	.quad	0x401a67b9170d62bf              # double 6.6012919999999999
	.quad	0x401c7b43d89ce4a8              # double 7.1203760000000003
	.quad	0x3ffac061847f5621              # double 1.6719679999999999
	.quad	0x401ff54195cc857f              # double 7.9895079999999998
	.quad	0x3ff6ff5c6c11a112              # double 1.437344
	.quad	0x402124c985f06f69              # double 8.5718499999999995
	.quad	0x4000d92b7fe08af0              # double 2.1060400000000001
	.quad	0x400f274c8ffb8b26              # double 3.8941889999999999
	.quad	0x3fe3f8dd616f86a1              # double 0.62412900000000004
	.quad	0x401f35a9a8049668              # double 7.8024050000000002
	.quad	0x4023537b28954a80              # double 9.6630490000000009
	.quad	0x4002751deefe4ffd              # double 2.3071860000000002
	.quad	0x400f8a3ad18d25ee              # double 3.9424950000000001
	.quad	0x4020c31bbcf4e875              # double 8.3810710000000004
	.quad	0x40169d4aa10e0221              # double 5.6536049999999998
	.quad	0x40148fb4c3c18b50              # double 5.1403379999999999
	.quad	0x3f9f3ade225fa659              # double 0.030498000000000001
	.quad	0x400116dfc5cdd50b              # double 2.1361690000000002
	.quad	0x400c3dccea28fe26              # double 3.530176
	.quad	0x400497ef5a964e8b              # double 2.5741869999999998
	.quad	0x3ff4e22f6a50d6b2              # double 1.305221
	.quad	0x4000078fabda0dfe              # double 2.003692
	.quad	0x40176f498c3b0c46              # double 5.8586790000000004
	.quad	0x40025a3e39f77293              # double 2.2940640000000001
	.quad	0x3ff2f3a57eaa2a0b              # double 1.1844840000000001
	.quad	0x3ff875bb384fd2a6              # double 1.528743
	.quad	0x3fd14f3775b81301              # double 0.27045999999999998
	.quad	0x4022e03925bb7b6c              # double 9.4379360000000005
	.quad	0x40120a74c09c3ce2              # double 4.510211
	.quad	0x401735d851654d62              # double 5.8025830000000003
	.quad	0x4021f6cf850df15a              # double 8.9820519999999995
	.quad	0x40236c44e0daa0cb              # double 9.7114630000000001
	.quad	0x402341a650614163              # double 9.6282219999999991
	.quad	0x401cdb517a46173c              # double 7.2141780000000004
	.quad	0x401e33369b9d7fd8              # double 7.5500129999999998
	.quad	0x3ff8b1455219a848              # double 1.5432790000000001
	.quad	0x40128ee6fb4c3c19              # double 4.6395530000000003
	.quad	0x40177c0e38a7e73a              # double 5.8711479999999998
	.quad	0x401f8ff10ecb74de              # double 7.890568
	.quad	0x40048c39799e518f              # double 2.5684689999999999
	.quad	0x40217e820e629952              # double 8.7470859999999995
	.quad	0x3ff8f5350092ccf7              # double 1.5598650000000001
	.quad	0x400e90342aa9f7b6              # double 3.8204120000000001
	.quad	0x401ab2c3c9eecbfb              # double 6.6745749999999999
	.quad	0x40012f5771001d5c              # double 2.1481159999999999
	.quad	0x3fbaa821f2990f30              # double 0.104128
	.quad	0x401643a7daa4fca4              # double 5.5660699999999999
	.quad	0x40225a9c779a6b51              # double 9.1769750000000005
	.quad	0x401060ff540895d1              # double 4.0947240000000003
	.quad	0x3fe8bfc2224edf61              # double 0.77340799999999998
	.quad	0x3ff45549731098d4              # double 1.2708219999999999
	.quad	0x400d8dea897635e7              # double 3.6942949999999999
	.quad	0x4014f507e9d94d0e              # double 5.2392880000000002
	.quad	0x4019fc73abc94706              # double 6.4965349999999997
	.quad	0x3fc3c842fa509396              # double 0.15454899999999999
	.quad	0x3fb9a32b12d3415b              # double 0.100146
	.quad	0x3ff5fcd24e160d88              # double 1.3742239999999999
	.quad	0x4013caa0cae642c0              # double 4.9478790000000004
	.quad	0x3fbfba3443d46b27              # double 0.123935
	.quad	0x40128082cf52b90a              # double 4.6254989999999996
	.quad	0x3fee963992c8c500              # double 0.95583799999999997
	.quad	0x400afafc8b0079a3              # double 3.3725520000000002
	.quad	0x402052817763e4ac              # double 8.1611440000000001
	.quad	0x3fcad90e23af31b1              # double 0.20974899999999999
	.quad	0x4021909f623076c0              # double 8.7824659999999994
	.quad	0x401d10902de00d1b              # double 7.2661749999999996
	.quad	0x400ac5604189374c              # double 3.3463750000000001
	.quad	0x4014eabd5dc40075              # double 5.2292379999999996
	.quad	0x4023a8b8cfbfc654              # double 9.8295349999999999
	.quad	0x401cdaa1d755bccb              # double 7.213508
	.quad	0x4021ee4f11b60ae9              # double 8.9654469999999993
	.quad	0x400b4cedd4845133              # double 3.412563
	.quad	0x3ff19d6adf71eaff              # double 1.100932
	.quad	0x401b4845dc832336              # double 6.8205790000000004
	.quad	0x402127d1782d3847              # double 8.5777699999999992
	.quad	0x4022f3662fdfc19c              # double 9.4753889999999998
	.quad	0x4022b06e19b90eaa              # double 9.3445900000000002
	.quad	0x40003e9c886162f1              # double 2.0305719999999998
	.quad	0x3fda972cd7cf5f4e              # double 0.41547699999999999
	.quad	0x401117a072d1aeb4              # double 4.2730730000000001
	.quad	0x400fd4aa9717df1a              # double 3.9788410000000001
	.quad	0x400bc9e34330d738              # double 3.4735779999999998
	.quad	0x4021a34938583622              # double 8.818918
	.quad	0x400d1378ee286727              # double 3.6345079999999998
	.quad	0x400151e29b6b2af1              # double 2.1649829999999999
	.quad	0x402346c9e236c15d              # double 9.6382589999999996
	.quad	0x4015e81e4712e408              # double 5.4766779999999997
	.quad	0x4022806c00da1a93              # double 9.2508239999999997
	.quad	0x401ced36b4c7f349              # double 7.2316539999999998
	.quad	0x4008ee6afcce1c58              # double 3.1164149999999999
	.quad	0x3ff3dbb9cf9a06a7              # double 1.241144
	.quad	0x400fe47ecfe9b7bf              # double 3.9865699999999999
	.quad	0x40201f1715c63ae2              # double 8.0607229999999994
	.quad	0x400f2ad57bc7f77b              # double 3.895915
	.quad	0x40104f10ecb74de0              # double 4.0772130000000004
	.quad	0x3fff67caea747d80              # double 1.9628399999999999
	.quad	0x401cbb945308bb90              # double 7.1831829999999997
	.quad	0x401bd1d5c31593e6              # double 6.954917
	.quad	0x4004593b3a68b19a              # double 2.5435699999999999
	.quad	0x3fd7094e5d5b24ea              # double 0.35994300000000001
	.quad	0x402141971c10d7bf              # double 8.6281060000000007
	.quad	0x3fea7af640639d5e              # double 0.82750999999999997
	.quad	0x4018265625a682b6              # double 6.0374379999999999
	.quad	0x402196cb74ddf86e              # double 8.7945209999999996
	.quad	0x4020e9c065b63d3e              # double 8.4565459999999995
	.quad	0x4006c8e60807357e              # double 2.8480949999999998
	.quad	0x400ca0f88333fc87              # double 3.5785990000000001
	.quad	0x40061e2e6ea85447              # double 2.7647369999999998
	.quad	0x3fd8a89b951c5c57              # double 0.38529099999999999
	.quad	0x401ec4e379b77c03              # double 7.6922740000000002
	.quad	0x4021688765ba6efc              # double 8.7041579999999996
	.quad	0x3fdb4a72ead9274e              # double 0.42641899999999999
	.quad	0x40167df15a4acf31              # double 5.6229909999999999
	.quad	0x3fe2bd07c84b5dcc              # double 0.58557499999999996
	.quad	0x402179044f1a1987              # double 8.7363610000000005
	.quad	0x400c5c0767d34df0              # double 3.5449359999999999
	.quad	0x40136fd694ccab3f              # double 4.8592170000000001
	.quad	0x40092ec9e236c15d              # double 3.1478459999999999
	.quad	0x3ffcf1422ccb3a26              # double 1.8089010000000001
	.quad	0x400e533ca31e7d9a              # double 3.7906430000000002
	.quad	0x4009ca18bd66277c              # double 3.2236799999999999
	.quad	0x3febaab8a5ce5b42              # double 0.86458999999999997
	.quad	0x40044ab042528ae7              # double 2.5364689999999999
	.quad	0x401389bae46cfc83              # double 4.8845020000000003
	.quad	0x4020143f5f91600f              # double 8.0395459999999996
	.quad	0x400fa72c94b380cb              # double 3.9566279999999998
	.quad	0x401f9626b2f23034              # double 7.8966320000000003
	.quad	0x401d3c3c5bd0e12f              # double 7.3088240000000004
	.quad	0x401e85dbb9cf9a07              # double 7.6307210000000003
	.quad	0x40072ebe596c82e0              # double 2.897824
	.quad	0x3fe56e45c358afc4              # double 0.66971099999999995
	.quad	0x401286a832b990b0              # double 4.6315010000000001
	.quad	0x401aa59d12cadddf              # double 6.6617319999999998
	.quad	0x3fd24d099e0e7360              # double 0.28595199999999998
	.quad	0x400ee263d816aceb              # double 3.8605420000000001
	.quad	0x3ff56ba8c586876e              # double 1.338784
	.quad	0x400047314ca925ff              # double 2.0347620000000002
	.quad	0x4010c74eebf65dc0              # double 4.1946370000000002
	.quad	0x401c6dddb1209edc              # double 7.107291
	.quad	0x4013a22706d50657              # double 4.9083519999999998
	.quad	0x3ff7135eb7457c0b              # double 1.442229
	.quad	0x4015ce4712e40853              # double 5.4514430000000003
	.quad	0x3fed8e1719f7f8cb              # double 0.92359500000000005
	.quad	0x400cb8a8f3a9b068              # double 3.590166
	.quad	0x4014d440f2389720              # double 5.2072789999999998
	.quad	0x4019817507e9d94d              # double 6.376423
	.quad	0x400fb7fe08aefb2b              # double 3.9648400000000001
	.quad	0x401f0b2cc70867ae              # double 7.7609130000000004
	.quad	0x400de9e12a51e322              # double 3.7391990000000002
	.quad	0x4020d2eff5c6c11a              # double 8.4119869999999999
	.quad	0x40229240746455eb              # double 9.2856480000000001
	.quad	0x401d2ac1094a2b9d              # double 7.2917519999999998
	.quad	0x4001cc447c30d307              # double 2.2247400000000002
	.quad	0x4022ba4bdba0a527              # double 9.3638600000000007
	.quad	0x4020e7a97e132b56              # double 8.4524650000000001
	.quad	0x4001ba82e87d2c7c              # double 2.2160700000000002
	.quad	0x401774be40420f6f              # double 5.864007
	.quad	0x400fbf17bd8be729              # double 3.9683069999999998
	.quad	0x402284e618ce2d1f              # double 9.2595679999999998
	.quad	0x401e380d3cff64d0              # double 7.5547380000000004
	.quad	0x4018e5bd944aa540              # double 6.2243560000000002
	.quad	0x401fc2645e4e69f0              # double 7.9398359999999997
	.quad	0x4018ba0407cc7d1c              # double 6.1816560000000003
	.quad	0x3fda64345cfede98              # double 0.41236600000000001
	.quad	0x3fd4ea91d9b1b79e              # double 0.32681700000000002
	.quad	0x3ff2cc6b484d76ab              # double 1.1749069999999999
	.quad	0x40176a98aa8650e7              # double 5.8540979999999996
	.quad	0x3ff7652263d816ad              # double 1.462191
	.quad	0x401d5becedd48451              # double 7.3397709999999998
	.quad	0x3fdcc73eee525892              # double 0.44966099999999998
	.quad	0x401feac36544fe37              # double 7.9792610000000001
	.quad	0x4016d1deacc92147              # double 5.7049510000000003
	.quad	0x4002e61a60d4562e              # double 2.362355
	.quad	0x400a73700474d9c7              # double 3.3063660000000001
	.quad	0x400491a543f1c758              # double 2.571116
	.quad	0x3fd633daf8df7a4e              # double 0.34691499999999997
	.quad	0x4010bfd32c625e9a              # double 4.1873290000000001
	.quad	0x4021681c2e33eff2              # double 8.7033400000000007
	.quad	0x40232c141e9af5ba              # double 9.5860909999999997
	.quad	0x401c69ec7000431c              # double 7.1034410000000001
	.quad	0x4014cc60029f16b1              # double 5.1995849999999999
	.quad	0x4021590752da9867              # double 8.6738839999999993
	.quad	0x4016fc447c30d307              # double 5.7463550000000003
	.quad	0x4008ebd76ee73e68              # double 3.115157
	.quad	0x4021781d7dbf4880              # double 8.7346000000000004
	.quad	0x402048c804102ff9              # double 8.1421510000000001
	.quad	0x3fe2163fdd65a145              # double 0.56521600000000005
	.quad	0x3fc2e90bc7b45f18              # double 0.14773700000000001
	.quad	0x4021465a35d67ba2              # double 8.6374069999999996
	.quad	0x400c4c23fab10ba6              # double 3.5371779999999999
	.quad	0x40117ac81d3aa36a              # double 4.369904
	.quad	0x402044a6223e186a              # double 8.1340800000000009
	.quad	0x3ffd71de69ad42c4              # double 1.8403
	.quad	0x401eb85058dde7a7              # double 7.6799939999999997
	.quad	0x40231ad31fcd24e1              # double 9.5523919999999993
	.quad	0x3ff4fe28240b7803              # double 1.3120499999999999
	.quad	0x400f7faa8a82a561              # double 3.9373369999999999
	.quad	0x4023d3e4cd749279              # double 9.9138549999999998
	.quad	0x401ad7060bb2bbaa              # double 6.7099840000000004
	.quad	0x40228ad01c0ca601              # double 9.2711190000000006
	.quad	0x3ffb98655193708b              # double 1.7247060000000001
	.quad	0x3fb666fd651b0ccc              # double 0.087509000000000003
	.quad	0x3ff417342edbb59e              # double 1.255665
	.quad	0x4020b97891e21533              # double 8.3622479999999992
	.quad	0x40082010c6f7a0b6              # double 3.015657
	.quad	0x4020c61cbccf28c8              # double 8.3869380000000007
	.quad	0x400aad045fe11127              # double 3.3344809999999998
	.quad	0x4011d55ef1fddebe              # double 4.4583700000000004
	.quad	0x401ddf0e4da09cc3              # double 7.4678279999999999
	.quad	0x401b19fb1e18efbb              # double 6.775372
	.quad	0x401082849cb252ce              # double 4.127459
	.quad	0x4019e1b3aeee9574              # double 6.4704119999999996
	.quad	0x4020ff8feef5ec81              # double 8.4991450000000004
	.quad	0x4021e8346dc5d639              # double 8.9535250000000008
	.quad	0x401f97c3504c48ae              # double 7.8982060000000001
	.quad	0x40082c89b0ee49f5              # double 3.021747
	.quad	0x4013143201040bfe              # double 4.7697219999999998
	.quad	0x40205e047d3d4281              # double 8.1836280000000006
	.quad	0x40060b074a771c97              # double 2.755385
	.quad	0x4013108bb906466b              # double 4.7661579999999999
	.quad	0x401e5e6e653868fd              # double 7.5922179999999999
	.quad	0x4013919a415f45e1              # double 4.8921900000000003
	.quad	0x4019c131a8ef77f2              # double 6.4386659999999996
	.quad	0x4007c48301a79fed              # double 2.9709530000000002
	.quad	0x40199be2b4959e62              # double 6.4022319999999997
	.quad	0x4017cacc4ef88b97              # double 5.9480449999999996
	.quad	0x3ff0977d955714ba              # double 1.036985
	.quad	0x40154a3e39f77293              # double 5.3225030000000002
	.quad	0x402311eabbcb1cc9              # double 9.5349939999999993
	.quad	0x40236afc47e49b20              # double 9.7089560000000006
	.quad	0x40162c3b4f616723              # double 5.5431949999999999
	.quad	0x4021d40ad03d9a95              # double 8.9141449999999995
	.quad	0x401430852b4d8ba4              # double 5.047383
	.quad	0x3ff7afea3df6db94              # double 1.480448
	.quad	0x3fd3a743a647fdc6              # double 0.30708400000000002
	.quad	0x4011085cee17a030              # double 4.2581670000000003
	.quad	0x4012334938583622              # double 4.550084
	.quad	0x4001a6fdeb52c9d1              # double 2.2065389999999998
	.quad	0x3fed407cc7d1bb49              # double 0.91412199999999999
	.quad	0x401d9e27e0ef9980              # double 7.4044489999999996
	.quad	0x400fa8f29d40ee07              # double 3.9574940000000001
	.quad	0x4015d0cc35ce1826              # double 5.4539039999999996
	.quad	0x3fe28eb463497b74              # double 0.57991999999999999
	.quad	0x402237f1950331e4              # double 9.1092650000000006
	.quad	0x3fd54f0d844d013b              # double 0.33295000000000002
	.quad	0x3fd0c47a17f4128c              # double 0.261992
	.quad	0x401be86bdf4c2b52              # double 6.9769740000000002
	.quad	0x40215924f227d029              # double 8.6741100000000007
	.quad	0x40227355cd91eeaa              # double 9.2252639999999992
	.quad	0x3fd06f9fcb0c026d              # double 0.25681300000000001
	.quad	0x3f9aec4a4095f245              # double 0.026291999999999999
	.quad	0x401f915336deb95e              # double 7.8919189999999997
	.quad	0x401df0de4c51116b              # double 7.4852230000000004
	.quad	0x40176a159817b95a              # double 5.8535979999999999
	.quad	0x40174b25b317efe1              # double 5.8233860000000002
	.quad	0x3ff1bdb7f1737543              # double 1.1088180000000001
	.quad	0x3febe5d18090b418              # double 0.87180400000000002
	.quad	0x4007c56bca5375c9              # double 2.9713970000000001
	.quad	0x401578f10a99b6f6              # double 5.3681070000000002
	.quad	0x4020f10364388ebd              # double 8.4707290000000004
	.quad	0x3ffde199780baa58              # double 1.867578
	.quad	0x3ff313db7f173754              # double 1.192348
	.quad	0x40209b86b15f88fd              # double 8.3037620000000008
	.quad	0x3ff80e0fc2eba27b              # double 1.503433
	.quad	0x40233070da5daf08              # double 9.5946110000000004
	.quad	0x3ffc58a32f44912a              # double 1.7716400000000001
	.quad	0x401f1bd87b56b873              # double 7.7771929999999995
	.quad	0x4021d10eed02cd3a              # double 8.9083170000000003
	.quad	0x4020570bf1a5ca2a              # double 8.1700130000000009
	.quad	0x3ff1a03e63e8dda5              # double 1.1016220000000001
	.quad	0x4013abefd00713f0              # double 4.9179069999999996
	.quad	0x40070d7c6fbd273d              # double 2.8815849999999998
	.quad	0x3fe34f3ba775fb2f              # double 0.60342200000000001
	.quad	0x4010591f70de8f6d              # double 4.0870340000000001
	.quad	0x3fc9089a02752546              # double 0.195575
	.quad	0x3fbec42e9899bf59              # double 0.120181
	.quad	0x4014d4e874c8ffb9              # double 5.2079180000000003
	.quad	0x3ff6b723ee1bd1ee              # double 1.4197120000000001
	.quad	0x401a816fc9bc7714              # double 6.6264029999999998
	.quad	0x4022912b7fe08af0              # double 9.2835350000000005
	.quad	0x40032bc2fc69728a              # double 2.3963679999999998
	.quad	0x4006985058dde7a7              # double 2.8243719999999999
	.quad	0x401cd917507e9d95              # double 7.2120030000000002
	.quad	0x401b9dbec2480e8d              # double 6.9040480000000004
	.quad	0x4022dde4606748e4              # double 9.4333829999999991
	.quad	0x3ff3a4d3bf2f5558              # double 1.227741
	.quad	0x401f667e414e7ee9              # double 7.8500909999999999
	.quad	0x3ff74fede97d06bc              # double 1.457014
	.quad	0x400d97f737da61e1              # double 3.6992020000000001
	.quad	0x40148999dcb5781c              # double 5.1343759999999996
	.quad	0x4022047a17f4128c              # double 9.008744
	.quad	0x40158040bfe3b03e              # double 5.3752469999999999
	.quad	0x3ffb88cd63cb8173              # double 1.720899
	.quad	0x4022a9aa60913a50              # double 9.3313780000000008
	.quad	0x40228175d13d74d6              # double 9.2528520000000007
	.quad	0x4016d518f3eccc47              # double 5.7081030000000004
	.quad	0x40226efc9bc77143              # double 9.2167709999999996
	.quad	0x4022120b5ed8d36b              # double 9.0352429999999995
	.quad	0x401447e02645e4e7              # double 5.0701910000000003
	.quad	0x4021274213a0c6b5              # double 8.5766760000000009
	.quad	0x4007ad44dca8e2e3              # double 2.9596040000000001
	.quad	0x4001ab0fadf2ecf2              # double 2.208526
	.quad	0x4020ab50b0f27bb3              # double 8.3346
	.quad	0x401e056bca5375c9              # double 7.5052940000000001
	.quad	0x4014fa0ec7432010              # double 5.2441969999999998
	.quad	0x40127b367a0f9097              # double 4.6203250000000002
	.quad	0x401324dfce3150db              # double 4.7860100000000001
	.quad	0x4019a482be8bc16a              # double 6.4106550000000002
	.quad	0x400f04199fe43676              # double 3.8770020000000001
	.quad	0x40227aa3cea6c1a0              # double 9.2395309999999995
	.quad	0x40236cc89b0ee49f              # double 9.7124679999999994
	.quad	0x401d840d4dc65c70              # double 7.3789569999999998
	.quad	0x3fe7d288ce703afb              # double 0.74444999999999995
	.quad	0x4014efce3150dae4              # double 5.2341850000000001
	.quad	0x40111060fe47991c              # double 4.2659950000000002
	.quad	0x4020eab1704ff434              # double 8.4583849999999998
	.quad	0x400269539b888723              # double 2.3014290000000002
	.quad	0x400515011904b3c4              # double 2.635256
	.quad	0x4014d51e321a2e7f              # double 5.2081229999999996
	.quad	0x3ffe5c304ccee5ac              # double 1.8975070000000001
	.quad	0x40221706b37867f1              # double 9.0449730000000006
	.quad	0x3ffb7b3b7521144d              # double 1.7175860000000001
	.quad	0x401d260242d05f29              # double 7.2871180000000004
	.quad	0x40208a6defc7a398              # double 8.2703699999999998
	.quad	0x4019ac9ea9a3d2d8              # double 6.4185739999999996
	.quad	0x401b8f6dfc5cdd51              # double 6.8900680000000003
	.quad	0x400f4f2cf95d4e90              # double 3.9136600000000001
	.quad	0x4011597edc7ef178              # double 4.3373980000000003
	.quad	0x400ef0984e3ffef4              # double 3.8674780000000002
	.quad	0x4012c43e963dc487              # double 4.6916450000000003
	.quad	0x3ff9a1d4306e5cd5              # double 1.602009
	.quad	0x401efe121ee67514              # double 7.7481159999999996
	.quad	0x401adc6f7a0b5ed9              # double 6.7152690000000002
	.quad	0x40231f625204af92              # double 9.5612969999999997
	.quad	0x4005182ba5a03819              # double 2.6368019999999999
	.quad	0x3ff8199cbee807bc              # double 1.5062530000000001
	.quad	0x40138992c8c50050              # double 4.8843490000000003
	.quad	0x4006608d08919ef9              # double 2.7971439999999999
	.quad	0x40079e81450efdca              # double 2.9523950000000001
	.quad	0x4022fe01797cc3a0              # double 9.496105
	.quad	0x3fec9a6b50b0f27c              # double 0.89385000000000003
	.quad	0x401bfd1526d8b1dd              # double 6.9971509999999997
	.quad	0x4010af6a93f290ac              # double 4.1713050000000003
	.quad	0x3ffa17d49d7ba66a              # double 1.6308180000000001
	.quad	0x4022095054ac29bf              # double 9.0181909999999998
	.quad	0x4020ebda5119ce07              # double 8.4606499999999993
	.quad	0x40211da272862f5a              # double 8.5578800000000008
	.quad	0x40154778140dd3fe              # double 5.3197939999999999
	.quad	0x40224c2b51bd61f6              # double 9.1487680000000005
	.quad	0x4018b03a7546d3fa              # double 6.1720980000000001
	.quad	0x40173e98dcdb37ca              # double 5.8111300000000004
	.quad	0x4014eb2314013ec4              # double 5.2296259999999997
	.quad	0x4010a9ad85dfa872              # double 4.1657010000000003
	.quad	0x401a7fc504816f00              # double 6.6247749999999996
	.quad	0x40040aba38759253              # double 2.5052379999999999
	.quad	0x40207d0b0f27bb30              # double 8.2442250000000001
	.quad	0x4021caef2c732592              # double 8.8963560000000008
	.quad	0x3fa03dbc23315d70              # double 0.031720999999999999
	.quad	0x401a2dadb8348f54              # double 6.5446080000000002
	.quad	0x40124077ccc03793              # double 4.5629569999999999
	.quad	0x3ff18d7cf5f4e443              # double 1.097043
	.quad	0x40033fe111276fb1              # double 2.4061910000000002
	.quad	0x4016ca554b8bef8d              # double 5.6975910000000001
	.quad	0x401dba2b9d3cbc49              # double 7.4318070000000001
	.quad	0x400bdefb6dca07f6              # double 3.4838779999999998
	.quad	0x3fb2dff822bbecab              # double 0.073730000000000004
	.quad	0x401300917d6b65aa              # double 4.7505550000000003
	.quad	0x401c1e90ff972474              # double 7.0298499999999997
	.quad	0x401c51bef49cf56f              # double 7.0798300000000003
	.quad	0x40156c92146a1a50              # double 5.356026
	.quad	0x401ef7924af0bf1a              # double 7.7417689999999997
	.quad	0x4013b178f68be2f8              # double 4.9233130000000003
	.quad	0x402386df3f961805              # double 9.7634220000000002
	.quad	0x3fe24b5568e820e6              # double 0.57169599999999998
	.quad	0x4008693532e7b3d9              # double 3.0513710000000001
	.quad	0x4020fefa615a8deb              # double 8.4980039999999999
	.quad	0x4021a1b2e59af9ec              # double 8.8158180000000001
	.quad	0x4016c5a682b62846              # double 5.6930180000000004
	.quad	0x402232ad601ffb48              # double 9.0989789999999999
	.quad	0x3fc09c347e8ccdd9              # double 0.12976699999999999
	.quad	0x4022fccf28c79f66              # double 9.4937679999999993
	.quad	0x40189175d13d74d6              # double 6.1420510000000004
	.quad	0x3fd9ed45e9185cee              # double 0.40510699999999999
	.quad	0x4006ee831ad2135e              # double 2.8664610000000001
	.quad	0x401049917939a7c1              # double 4.0718439999999996
	.quad	0x401142ba9d1f6018              # double 4.3151650000000004
	.quad	0x3ffa08605681ecd5              # double 1.6270450000000001
	.quad	0x401f38f10a99b6f6              # double 7.8056070000000002
	.quad	0x401c05625a682b63              # double 7.0052580000000004
	.quad	0x402135c4651f3e8a              # double 8.6050140000000006
	.quad	0x3fe5743e963dc487              # double 0.67044000000000004
	.quad	0x4014828134480629              # double 5.1274459999999999
	.quad	0x4017613879c4113c              # double 5.8449419999999996
	.quad	0x4023c7644955b467              # double 9.8894369999999991
	.quad	0x4021b6edaa92e621              # double 8.8572819999999997
	.quad	0x401752235b4edb2f              # double 5.8302129999999996
	.quad	0x4022a5a858793dd9              # double 9.3235499999999991
	.quad	0x4018c841248d7e02              # double 6.1955609999999997
	.quad	0x4023ab445ed4a1ad              # double 9.8345059999999993
	.quad	0x400abb6c3760bf5d              # double 3.3415149999999998
	.quad	0x4010818ce2d1f1d0              # double 4.1265140000000002
	.quad	0x401506f60e0eb67c              # double 5.2567979999999999
	.quad	0x4020ab4a2339c0ec              # double 8.3345500000000001
	.quad	0x3fd99e3c968943e1              # double 0.400283
	.quad	0x4021fd5d1c3ac92a              # double 8.9948510000000006
	.quad	0x4001993037d63023              # double 2.1997990000000001
	.quad	0x4016e6cc1ca3a4b5              # double 5.7253879999999997
	.quad	0x3ff1c19b0ab2e169              # double 1.1097669999999999
	.quad	0x4011ed2d01c0ca60              # double 4.481617
	.quad	0x4016d7ed41b75a75              # double 5.7108660000000002
	.quad	0x400f59fe43675ddd              # double 3.9189419999999999
	.quad	0x3ff84e820e629952              # double 1.5191669999999999
	.quad	0x40223059641f6449              # double 9.0944319999999994
	.quad	0x3fb747a5b0ff10ed              # double 0.090937000000000004
	.quad	0x4023823d0bfa0946              # double 9.754372
	.quad	0x4014c25cc426351e              # double 5.1898070000000001
	.quad	0x401f7ae46cfc829d              # double 7.870012
	.quad	0x3ff36a1c68ec52a4              # double 1.213406
	.quad	0x400b26ea854477ff              # double 3.394002
	.quad	0x40188610adcd2d45              # double 6.1309230000000001
	.quad	0x4019eb2edfe75bc4              # double 6.4796709999999997
	.quad	0x40224b242070b8d0              # double 9.1467600000000004
	.quad	0x40224d9d7774aba4              # double 9.1515920000000008
	.quad	0x4020a32617c1bda5              # double 8.3186499999999999
	.quad	0x4020446d3f9e7b81              # double 8.1336460000000006
	.quad	0x4020632096787ce9              # double 8.1936079999999993
	.quad	0x401e1c3c18b502ac              # double 7.5275730000000003
	.quad	0x4014298201cd5f9a              # double 5.0405350000000002
	.quad	0x4021ffaeddce7cd0              # double 8.9993809999999996
	.quad	0x40003fdb4cc25072              # double 2.03118
	.quad	0x4007906705c896dd              # double 2.9455089999999999
	.quad	0x4023b474751ce28f              # double 9.8524510000000002
	.quad	0x401d94e160d887ec              # double 7.395391
	.quad	0x4019120c8cd63cb8              # double 6.2676259999999999
	.quad	0x4022ca3e39f77293              # double 9.3950060000000004
	.quad	0x40234e78183f91e6              # double 9.6532599999999995
	.quad	0x4020abb0c4588a05              # double 8.3353330000000003
	.quad	0x4015c99d0203e63f              # double 5.4468880000000004
	.quad	0x4011719157abb880              # double 4.3609059999999999
	.quad	0x4010cc96030c23fb              # double 4.1997910000000003
	.quad	0x4000288b545c78a7              # double 2.0197970000000001
	.quad	0x4021531db445ed4a              # double 8.6623359999999998
	.quad	0x40231c56b441bb8c              # double 9.5553489999999996
	.quad	0x40117461f9f01b86              # double 4.3636549999999996
	.quad	0x401971b2e59af9ec              # double 6.3610340000000001
	.quad	0x40136b0318b9346a              # double 4.8545040000000004
	.quad	0x4022072b66b6177f              # double 9.0140030000000007
	.quad	0x4023a4295a6c5d20              # double 9.8206279999999992
	.quad	0x3ff58acc0bdcad15              # double 1.3463860000000001
	.quad	0x4022ed2502eec7c9              # double 9.4631729999999993
	.quad	0x3ff1dfea8112ba17              # double 1.117167
	.quad	0x40007e6601bc98a2              # double 2.0617179999999999
	.quad	0x401fc452c59fb1e2              # double 7.9417220000000004
	.quad	0x4014b388ebcc6c55              # double 5.1753270000000002
	.quad	0x400c05add9c27e95              # double 3.5027729999999999
	.quad	0x40042028e4fb97bb              # double 2.5157029999999998
	.quad	0x4020c8e043a21640              # double 8.3923360000000002
	.quad	0x40191c75c4a83b1d              # double 6.277793
	.quad	0x401a308f648c7193              # double 6.5474220000000001
	.quad	0x40164d6c2efd438d              # double 5.5756079999999999
	.quad	0x3fe794940bbb1f25              # double 0.73688699999999996
	.quad	0x3ffe403148776816              # double 1.8906719999999999
	.quad	0x3ff4b53c579f2346              # double 1.2942469999999999
	.quad	0x40193805a2d72ffd              # double 6.3047089999999999
	.quad	0x3ffa94f15e7c8d19              # double 1.6613629999999999
	.quad	0x4021de75147f1306              # double 8.9344870000000007
	.quad	0x401b46b2f23033a4              # double 6.8190419999999996
	.quad	0x400cabc8c0ce91c9              # double 3.583879
	.quad	0x3fb7fa7eb6bf444e              # double 0.093665999999999999
	.quad	0x400e5544bb1af3a1              # double 3.7916349999999999
	.quad	0x401acde939eadd59              # double 6.701085
	.quad	0x401e1add9c27e953              # double 7.5262359999999999
	.quad	0x4021d2235b4edb2f              # double 8.9104259999999993
	.quad	0x401138cd63cb8173              # double 4.3054709999999998
	.quad	0x401f9694898f605b              # double 7.8970510000000002
	.quad	0x3fd203f2d3c792d1              # double 0.28149099999999999
	.quad	0x400c85269595feda              # double 3.5650149999999998
	.quad	0x401ea264a16a4873              # double 7.6585869999999998
	.quad	0x4005e71151611ba4              # double 2.7378260000000001
	.quad	0x4023e2a9930be0df              # double 9.9427000000000003
	.quad	0x4022ee0bb2bba98f              # double 9.4649330000000002
	.quad	0x4017e379b77c02b0              # double 5.9721440000000001
	.quad	0x4008b7891e215337              # double 3.0896170000000001
	.quad	0x40208ca771c970f8              # double 8.2747150000000005
	.quad	0x3ff68f26aec0724b              # double 1.4099489999999999
	.quad	0x3ff6d1409a240315              # double 1.4260870000000001
	.quad	0x3feb231832fcac8e              # double 0.84803399999999995
	.quad	0x40079ea67e846a5d              # double 2.9524659999999998
	.quad	0x400faf9b13165d3a              # double 3.9607450000000002
	.quad	0x3ff05e8d5410f94d              # double 1.0230840000000001
	.quad	0x3ffee048e043a216              # double 1.9297569999999999
	.quad	0x401a84d26fa3fcca              # double 6.6297090000000001
	.quad	0x401890a88effe2a4              # double 6.1412680000000002
	.quad	0x3ff994b6a619da9d              # double 1.5988070000000001
	.quad	0x40238fc5ac471b48              # double 9.7808050000000008
	.quad	0x3fd4882278d0cc36              # double 0.32080900000000001
	.quad	0x40232ac4b4d056c5              # double 9.5835319999999999
	.quad	0x4020afc1df3300de              # double 8.3432759999999995
	.quad	0x4002a35696e58a33              # double 2.329755
	.quad	0x40165e9af5ba2be0              # double 5.5923879999999997
	.quad	0x3fd77531db445ed5              # double 0.36652800000000002
	.quad	0x3ffbfc8c0ce91c8f              # double 1.7491570000000001
	.quad	0x401563e681a9b8cc              # double 5.3475590000000004
	.quad	0x400f28eb463497b7              # double 3.8949799999999999
	.quad	0x401a5b8c32a8c9b8              # double 6.5894019999999998
	.quad	0x3fd08ae74f2f123c              # double 0.25847799999999999
	.quad	0x401f091600f34507              # double 7.7588730000000003
	.quad	0x4007ed5842b734b5              # double 2.990891
	.quad	0x3fb08b97785729b3              # double 0.064630000000000007
	.quad	0x40220ce67d77fae3              # double 9.0251959999999993
	.quad	0x4004cd2b2bfdb4cc              # double 2.6001799999999999
	.quad	0x4012c93af74cd317              # double 4.6965139999999996
	.quad	0x401cc2239e6ab9b2              # double 7.1895889999999998
	.quad	0x4012d5529fe004b8              # double 4.708323
	.quad	0x401ee425aee631f9              # double 7.7228000000000003
	.quad	0x401db251c193b3a7              # double 7.4241400000000004
	.quad	0x3ffdb968d759ee89              # double 1.857766
	.quad	0x40130e225fa658c5              # double 4.7638030000000002
	.quad	0x401f887980f55de6              # double 7.8832760000000004
	.quad	0x400ac0192a737111              # double 3.343798
	.quad	0x4018d5c74751ce29              # double 6.2087680000000001
	.quad	0x401aea1f4b1ee243              # double 6.7286349999999997
	.quad	0x40073465625a682b              # double 2.9005839999999998
	.quad	0x401b417c1bda511a              # double 6.8139500000000002
	.quad	0x40202c7d3d4280ae              # double 8.0868929999999999
	.quad	0x4014d743201040c0              # double 5.2102170000000001
	.quad	0x4023c34acaff6d33              # double 9.8814299999999999
	.quad	0x401d5ff609dcf894              # double 7.343712
	.quad	0x4002c5a78f25a251              # double 2.346511
	.quad	0x3fdeaaac1094a2ba              # double 0.47916700000000001
	.quad	0x400ae0a4a05dd8f9              # double 3.3596889999999999
	.quad	0x3ffc1dedf1e0828c              # double 1.757307
	.quad	0x3ff41235f8099179              # double 1.2544459999999999
	.quad	0x4020f530ad46f588              # double 8.4788870000000003
	.quad	0x400fd9f44d445671              # double 3.9814229999999999
	.quad	0x400986cb10342aaa              # double 3.190817
	.quad	0x4023f7b4c3c18b50              # double 9.9838009999999997
	.quad	0x40183a1e3eaf6838              # double 6.056756
	.quad	0x4017920642396074              # double 5.8926020000000001
	.quad	0x40125548a9bcfd4c              # double 4.5832850000000001
	.quad	0x4021f938fffbce42              # double 8.9867629999999998
	.quad	0x3feb62b6ae7d566d              # double 0.85580000000000001
	.quad	0x400fe72a7bd48cb5              # double 3.9878740000000001
	.quad	0x401b99c23b7952d2              # double 6.9001549999999998
	.quad	0x3ff42de33269df98              # double 1.2612030000000001
	.quad	0x4005ad3d859c8c93              # double 2.7095899999999999
	.quad	0x4012b5953586ca8a              # double 4.677327
	.quad	0x4020be7e846a5d6c              # double 8.3720590000000001
	.quad	0x401f9cad14a0a0f5              # double 7.9030040000000001
	.quad	0x3ffb599aa60913a5              # double 1.709376
	.quad	0x400f092817763e4b              # double 3.8794710000000001
	.quad	0x40108509bf9c62a2              # double 4.1299200000000003
	.quad	0x400ede16d6dc1a48              # double 3.8584420000000001
	.quad	0x400e8c5436b8f9b1              # double 3.8185199999999999
	.quad	0x3ff156c61522a6f4              # double 1.083685
	.quad	0x400f3cfede97d06c              # double 3.9047830000000001
	.quad	0x4004e96cc5fbf834              # double 2.6139770000000002
	.quad	0x4018a5b5fa22706d              # double 6.1618269999999997
	.quad	0x3ff47fbbd7b2031d              # double 1.281185
	.quad	0x3fc9c0ebedfa43fe              # double 0.20119999999999999
	.quad	0x3fda653005814941              # double 0.41242600000000001
	.quad	0x40157cc6c54bcf0b              # double 5.3718519999999996
	.quad	0x401e18893b7d8490              # double 7.5239609999999999
	.quad	0x401c69906cca2db6              # double 7.1030899999999999
	.quad	0x4020f91148fd9fd3              # double 8.4864599999999992
	.quad	0x40159302b40f66a5              # double 5.3935649999999997
	.quad	0x401462e514c22ee4              # double 5.0965769999999999
	.quad	0x40210fb58d1526d9              # double 8.5306820000000005
	.quad	0x4013df3775b81301              # double 4.9679849999999997
	.quad	0x3ff100a6b93ccd10              # double 1.062659
	.quad	0x401f349a133c1ce7              # double 7.8013690000000002
	.quad	0x4012af47b677f6b2              # double 4.6711720000000003
	.quad	0x4000c3f359ff4fd7              # double 2.0956790000000001
	.quad	0x4011c0e9d51b4fe8              # double 4.4383920000000003
	.quad	0x402056fe4ffc9796              # double 8.1699090000000005
	.quad	0x401563c46d82ba5a              # double 5.347429
	.quad	0x4022dbf359ff4fd7              # double 9.4295910000000002
	.quad	0x4000f7a13c254a3c              # double 2.1209129999999998
	.quad	0x402002c18f81e8a3              # double 8.0053830000000001
	.quad	0x4010ce7c8d195897              # double 4.2016470000000004
	.quad	0x402177911cf355ce              # double 8.7335290000000008
	.quad	0x4022df1dc50ce4eb              # double 9.4357740000000003
	.quad	0x401bab54e2b063e0              # double 6.9173159999999996
	.quad	0x4022ff28c79f6662              # double 9.4983579999999996
	.quad	0x4023fafd75e2046c              # double 9.9902149999999991
	.quad	0x3feacb5781c714fd              # double 0.83732200000000001
	.quad	0x3fce6338b47c73ef              # double 0.237403
	.quad	0x3fe555cb790fb656              # double 0.66672299999999995
	.quad	0x4008e71476af89c6              # double 3.112832
	.quad	0x3ffdebe596c82e02              # double 1.8700920000000001
	.quad	0x4021bcb2745bf26f              # double 8.8685489999999998
	.quad	0x40172c80c73abc94              # double 5.7934599999999996
	.quad	0x3ff77313be22e5de              # double 1.465595
	.quad	0x4014c6a11ec918e3              # double 5.1939739999999999
	.quad	0x401e903925bb7b6c              # double 7.6408430000000003
	.quad	0x4023eeff9f87f024              # double 9.9667940000000001
	.quad	0x3fe15492ff4ba51a              # double 0.541574
	.quad	0x400429d5a187a4a5              # double 2.5204270000000002
	.quad	0x4019cda61e0c5a81              # double 6.4508289999999997
	.quad	0x40080ac6cdaf4adc              # double 3.0052620000000001
	.quad	0x3ffb5fbf83382e45              # double 1.7108760000000001
	.quad	0x3feb3380cb6c7a7d              # double 0.85003700000000004
	.quad	0x40202d63cb817332              # double 8.0886519999999997
	.quad	0x40116229e90795f6              # double 4.3458629999999996
	.quad	0x400b17891e215337              # double 3.3864920000000001
	.quad	0x401de67e414e7ee9              # double 7.4750909999999999
	.quad	0x4008bd2e0e30446b              # double 3.0923729999999998
	.quad	0x40235150331e3a7e              # double 9.6588150000000006
	.quad	0x4020cc1a261bf37c              # double 8.3986370000000007
	.quad	0x401b8ff151e75361              # double 6.8905690000000002
	.quad	0x400e988d2a1f8e3b              # double 3.8244880000000001
	.quad	0x3fe49a9fbe76c8b4              # double 0.64387499999999998
	.quad	0x400cad373affb04f              # double 3.584578
	.quad	0x4015e9d3458cd20b              # double 5.478345
	.quad	0x40224d8d5842b735              # double 9.1514690000000005
	.quad	0x4023d4810a569b17              # double 9.9150469999999994
	.quad	0x4022e552c16df3f9              # double 9.4478969999999993
	.quad	0x40022f355cd91eeb              # double 2.2730510000000002
	.quad	0x402255fbb517a461              # double 9.1679359999999992
	.quad	0x4018fe2da554b8bf              # double 6.248221
	.quad	0x401b99e0a41a261c              # double 6.900271
	.quad	0x3ff1521bc126a65d              # double 1.082546
	.quad	0x40198173fb7a5f42              # double 6.3764190000000003
	.quad	0x4022b976ff3ade22              # double 9.3622359999999993
	.quad	0x400160ded288ce70              # double 2.1722999999999999
	.quad	0x40098f5ba2be058a              # double 3.1949990000000001
	.quad	0x401c2f0995aaf790              # double 7.0459350000000001
	.quad	0x3fdd122749f0e4da              # double 0.454233
	.quad	0x401a92224edf6124              # double 6.642709
	.quad	0x3ff5f211cb039ef1              # double 1.371599
	.quad	0x4023a089a0275254              # double 9.8135499999999993
	.quad	0x401cf61240746456              # double 7.2403040000000001
	.quad	0x401dbff9f87f023f              # double 7.4374770000000003
	.quad	0x3fa2033e78e1932d              # double 0.035180999999999997
	.quad	0x401dcb1f255f351a              # double 7.4483610000000002
	.quad	0x401a626527a20579              # double 6.5960890000000001
	.quad	0x4015449774256bca              # double 5.3169839999999997
	.quad	0x3fe9eec17ebaf102              # double 0.81039499999999998
	.quad	0x400b3c7e6b3fe9fb              # double 3.4045380000000001
	.quad	0x401db48e4755ffe7              # double 7.4263240000000001
	.quad	0x401a012a51e321a3              # double 6.5011380000000001
	.quad	0x3ffd5aa4fca42aed              # double 1.83463
	.quad	0x3ff1c052d666a982              # double 1.1094539999999999
	.quad	0x4004e656abde3fbc              # double 2.6124700000000001
	.quad	0x3fd0e931876188b1              # double 0.264233
	.quad	0x4021cc19c17225b7              # double 8.8986339999999995
	.quad	0x40225ccc46950fc7              # double 9.1812459999999998
	.quad	0x40239278d0cc35ce              # double 9.7860779999999998
	.quad	0x40065da9435ac8a3              # double 2.7957329999999998
	.quad	0x40221c31bde82d7b              # double 9.0550669999999993
	.quad	0x4022e65471715c64              # double 9.4498630000000005
	.quad	0x3ff820b912dba4d7              # double 1.507989
	.quad	0x40009074a771c971              # double 2.070535
	.quad	0x401f164c2f837b4a              # double 7.7717749999999999
	.quad	0x40221da5fc7e6b40              # double 9.0579070000000001
	.quad	0x3feec8ecd8dbcec8              # double 0.96202699999999996
	.quad	0x401c1899bf5946c3              # double 7.0240239999999998
	.quad	0x400abe542e557de1              # double 3.3429340000000001
	.quad	0x401d748adeebb342              # double 7.3638110000000001
	.quad	0x4015193682730c67              # double 5.2746219999999999
	.quad	0x4011bbb5e0f7fcfc              # double 4.4333109999999998
	.quad	0x40150b0468448cf8              # double 5.2607590000000002
	.quad	0x401fe79702e6644e              # double 7.9761620000000004
	.quad	0x4019f0fd7e45803d              # double 6.4853420000000002
	.quad	0x4023c8e27e0ef998              # double 9.8923529999999999
	.quad	0x400aed612c6ac216              # double 3.3659080000000001
	.quad	0x4022bddb5525cc42              # double 9.3708139999999993
	.quad	0x3fd67f6f4be835df              # double 0.35152800000000001
	.quad	0x3fec63f141205bc0              # double 0.88719999999999999
	.quad	0x4017fe0a41a261bf              # double 5.9980859999999998
	.quad	0x401a44efcbd55608              # double 6.5673209999999997
	.quad	0x40222dc33721d53d              # double 9.0893800000000002
	.quad	0x401ec71151611ba4              # double 7.6944020000000002
	.quad	0x401ead73c9257860              # double 7.6693870000000004
	.quad	0x4022c13e81450efe              # double 9.3774300000000004
	.quad	0x3ffdaf62f9ca5bd9              # double 1.8553189999999999
	.quad	0x401ced0e991ff716              # double 7.2315009999999997
	.quad	0x4022778f68be2f7b              # double 9.2335159999999998
	.quad	0x4012ad87b56b8738              # double 4.6694630000000004
	.quad	0x400b48a697aeddce              # double 3.4104739999999998
	.quad	0x401d35f7c6759ab7              # double 7.3027030000000002
	.quad	0x401a0f62b6ae7d56              # double 6.5150249999999996
	.quad	0x4021eb2e1693c03c              # double 8.9593360000000004
	.quad	0x4013cf9ca5bd944b              # double 4.9527460000000003
	.quad	0x4012b0d38cda6e76              # double 4.672682
	.quad	0x40187c903ea704bc              # double 6.1216439999999999
	.quad	0x4010c6694898f606              # double 4.1937610000000003
	.quad	0x400d7815a07b352b              # double 3.6836350000000002
	.quad	0x4011ab58d1526d8b              # double 4.4173309999999999
	.quad	0x401e385a921ccd96              # double 7.5550329999999999
	.quad	0x402269511dffc548              # double 9.2056970000000006
	.quad	0x401aff765fd8adac              # double 6.7494750000000003
	.quad	0x3fe149235f809918              # double 0.54017800000000005
	.quad	0x402159da7b0b3919              # double 8.6754949999999997
	.quad	0x4012f84f09528f19              # double 4.742489
	.quad	0x40234ca6223e186a              # double 9.6497050000000009
	.quad	0x40226a01040bfe3b              # double 9.207039
	.quad	0x401f5a836eb4e981              # double 7.8383919999999998
	.quad	0x4004e75ddd2ae8e2              # double 2.6129720000000001
	.quad	0x40056d9dfdac68a9              # double 2.6785239999999999
	.quad	0x4009bad080b673c5              # double 3.216218
	.quad	0x3ffc87852f7f498c              # double 1.7830859999999999
	.quad	0x3fd1d47bedb72820              # double 0.27859400000000001
	.quad	0x4019fdaa92e62132              # double 6.4977210000000003
	.quad	0x3fe2df56a7ac81d4              # double 0.58976300000000004
	.quad	0x3fe4b059641f6449              # double 0.64652699999999996
	.quad	0x40237a2120e1f7d7              # double 9.7385339999999995
	.quad	0x3ff4a0828c36da88              # double 1.2891870000000001
	.quad	0x4022392dfd694ccb              # double 9.1116790000000005
	.quad	0x3ff9331a08bfc222              # double 1.5749759999999999
	.quad	0x4022ffaeddce7cd0              # double 9.4993809999999996
	.quad	0x400833da72a7bd49              # double 3.0253190000000001
	.quad	0x401f651a437824d5              # double 7.8487330000000001
	.quad	0x4003a940bbb1f256              # double 2.457643
	.quad	0x401f2aa9f7b5aea3              # double 7.7916639999999999
	.quad	0x401e4924f227d029              # double 7.5714300000000003
	.quad	0x40209cc1ca3a4b55              # double 8.3061659999999993
	.quad	0x4015d9f0e4da09cc              # double 5.4628329999999998
	.quad	0x4019119ce075f6fd              # double 6.2671999999999999
	.quad	0x4017a6ca03c4b09f              # double 5.9128800000000004
	.quad	0x400a217225b749ae              # double 3.2663310000000001
	.quad	0x40113941c8216c61              # double 4.3059149999999997
	.quad	0x401b943137b07076              # double 6.8947190000000003
	.quad	0x40058b93ccd0fe8b              # double 2.6931530000000001
	.quad	0x401d0af78feef5ed              # double 7.2607100000000004
	.quad	0x40170e0eb67c2870              # double 5.7637280000000004
	.quad	0x401daa0d77b7c782              # double 7.416067
	.quad	0x4010b841ede1198b              # double 4.1799390000000001
	.quad	0x40173f694467381d              # double 5.8119249999999996
	.quad	0x401cffc5479d4d83              # double 7.2497759999999998
	.quad	0x3fb2a9a3d2d87f88              # double 0.072900999999999994
	.quad	0x401af4280ae10492              # double 6.7384339999999998
	.quad	0x40216d4d834091c1              # double 8.7134820000000008
	.quad	0x401bbed20296b335              # double 6.9363479999999997
	.quad	0x40199eb399f5dfec              # double 6.4049820000000004
	.quad	0x40208df3f961804e              # double 8.2772520000000007
	.quad	0x4022c7ea5f84cad5              # double 9.3904599999999991
	.quad	0x400291348b220792              # double 2.3209010000000001
	.quad	0x400ac50bd87b56b8              # double 3.3462139999999998
	.quad	0x3ffe6cc5fbf83383              # double 1.901556
	.quad	0x401b03b5bf6a0dbb              # double 6.7536230000000002
	.quad	0x401a512f4cf4a559              # double 6.5792820000000001
	.quad	0x400c4e49f51697f2              # double 3.538227
	.quad	0x400466ad2dcb1466              # double 2.550135
	.quad	0x400a80fba8826aa9              # double 3.31298
	.quad	0x3fd0f5a964e8b7e5              # double 0.26499400000000001
	.quad	0x4002202d16b97fe9              # double 2.265711
	.quad	0x4015ecd573647bab              # double 5.4812830000000003
	.quad	0x402118b73d188f43              # double 8.548273
	.quad	0x400742ff08893b7e              # double 2.9077130000000002
	.quad	0x401556659d12cade              # double 5.3343720000000001
	.quad	0x3fee14a90470a809              # double 0.94002200000000002
	.quad	0x3fdffd1569f49060              # double 0.49982199999999999
	.quad	0x400df12dba4d6e48              # double 3.7427630000000001
	.quad	0x3ff86b55ef1fddec              # double 1.526205
	.quad	0x4007fe33acd5b680              # double 2.9991219999999998
	.quad	0x4013aa048e043a21              # double 4.9160329999999997
	.quad	0x4016da91d9b1b79e              # double 5.7134470000000004
	.quad	0x40038e47dc37a3db              # double 2.4444729999999999
	.quad	0x40021cf0b6b6e0d2              # double 2.2641309999999999
	.quad	0x402098afc47e49b2              # double 8.298216
	.quad	0x401746191148fda0              # double 5.8184550000000002
	.quad	0x4001e12839042d8c              # double 2.2349399999999999
	.quad	0x401d5830e3cd9a52              # double 7.3361239999999999
	.quad	0x3fbf08787485e3da              # double 0.121223
	.quad	0x4012a6a7264a16a5              # double 4.6627470000000004
	.quad	0x4017d0a88effe2a4              # double 5.9537680000000002
	.quad	0x4012881a5870da5e              # double 4.6329130000000003
	.quad	0x401d56bebe1650a4              # double 7.3347119999999997
	.quad	0x4019ede82d7b634e              # double 6.4823310000000003
	.quad	0x3ff98ebcc6c54bcf              # double 1.597348
	.quad	0x3ffbaf251c193b3a              # double 1.7302599999999999
	.quad	0x3fe97d523b3636f4              # double 0.79654800000000003
	.quad	0x401e6909f1f14984              # double 7.6025770000000001
	.quad	0x3fce2b6ae7d566cf              # double 0.23569999999999999
	.quad	0x3ff4d2220bc382a1              # double 1.301302
	.quad	0x401c24a38327674d              # double 7.0357799999999999
	.quad	0x400bf00474d9c6b0              # double 3.4921959999999999
	.quad	0x40043bec2480e8c9              # double 2.5292590000000001
	.quad	0x401f9896dd26b724              # double 7.8990130000000001
	.quad	0x4015d8259e1f3a58              # double 5.4610810000000001
	.quad	0x400dee325d4a5df2              # double 3.7413069999999999
	.quad	0x401503c36113404f              # double 5.2536750000000003
	.quad	0x40132dbe3c105187              # double 4.7946710000000001
	.quad	0x401b3a3d2d87f887              # double 6.8068739999999996
	.quad	0x401957ae9ab29e4d              # double 6.3356269999999997
	.quad	0x401f522d0e560419              # double 7.8302500000000003
	.quad	0x401a2a30984e3fff              # double 6.541201
	.quad	0x40014178705425f2              # double 2.156968
	.quad	0x40095ae5796bfca8              # double 3.1693829999999998
	.quad	0x3fe9edd052934acb              # double 0.81028
	.quad	0x40169851a8694035              # double 5.6487489999999996
	.quad	0x40183fbc5de9c023              # double 6.0622420000000004
	.quad	0x3fe945692b3cc4ac              # double 0.78972299999999995
	.quad	0x401d21e4f765fd8b              # double 7.2831000000000001
	.quad	0x401fc2374794ea07              # double 7.9396639999999996
	.quad	0x401f4102363b2570              # double 7.813485
	.quad	0x40186eaa6d267408              # double 6.1080719999999999
	.quad	0x3fec21d10b1feeb3              # double 0.87912800000000002
	.quad	0x401ea3ca7503b81b              # double 7.6599519999999996
	.quad	0x4011f2f7b17ce52e              # double 4.4872730000000001
	.quad	0x40235232d2bb2357              # double 9.6605439999999997
	.quad	0x4011b8b0d0edc3bd              # double 4.4303619999999997
	.quad	0x401d9b9d7fd82774              # double 7.4019680000000001
	.quad	0x401a4bf7ad4b2746              # double 6.5741870000000002
	.quad	0x3ff466afcce1c582              # double 1.2750699999999999
	.quad	0x40130baf965b20b8              # double 4.761412
	.quad	0x400ba049ecb31c22              # double 3.4532660000000002
	.quad	0x401730285ec3dab6              # double 5.7970290000000002
	.quad	0x400ed9c0ebedfa44              # double 3.856325
	.quad	0x401d4c5da6a44418              # double 7.3245760000000004
	.quad	0x40072990f301eabc              # double 2.8952960000000001
	.quad	0x401c5f2a5a469d73              # double 7.0929349999999998
	.quad	0x3ffadf1172ef0ae5              # double 1.67946
	.quad	0x4020c659d12cadde              # double 8.3874040000000001
	.quad	0x4023423e7d135116              # double 9.6293830000000007
	.quad	0x40239bcfb3311a54              # double 9.8043189999999995
	.quad	0x401400d9d7774aba              # double 5.0008309999999998
	.quad	0x400a1f3ade225fa6              # double 3.2652489999999998
	.quad	0x40119f9bdc69f8c2              # double 4.4058679999999999
	.quad	0x401ac51372a38b8b              # double 6.6924570000000001
	.quad	0x40208dac258d5843              # double 8.2767040000000005
	.quad	0x40155d801b435265              # double 5.3413089999999999
	.quad	0x3fe8150763a19008              # double 0.75256699999999999
	.quad	0x4023388a697aeddd              # double 9.6104310000000001
	.quad	0x3ff01b0ff10ecb75              # double 1.006607
	.quad	0x400c0d0fe8ab4fa5              # double 3.5063780000000002
	.quad	0x3ff1658f7121ab4b              # double 1.0872949999999999
	.quad	0x400644b9884c6a3c              # double 2.7835570000000001
	.quad	0x40232c6da4484945              # double 9.5867740000000001
	.quad	0x401600f98fa37692              # double 5.5009519999999998
	.quad	0x401ad1cef240fa9c              # double 6.7048909999999999
	.quad	0x401c89fa97e132b5              # double 7.1347449999999997
	.quad	0x3fff124bfd2e9468              # double 1.941967
	.quad	0x4014714f483cafb4              # double 5.1106540000000003
	.quad	0x40229f891e215337              # double 9.3115930000000002
	.quad	0x40083461309c7ffe              # double 3.025576
	.quad	0x3ff75044f1a1986c              # double 1.4570970000000001
	.quad	0x3ff6a9068986fcdf              # double 1.416266
	.quad	0x4014d83621fafc8b              # double 5.211144
	.quad	0x401882e2b8c75c4b              # double 6.1278180000000004
	.quad	0x3ffe2f166e008e9b              # double 1.886496
	.quad	0x3ffe8ae31d712a0f              # double 1.908908
	.quad	0x4013c85b18548a9c              # double 4.9456600000000002
	.quad	0x4011a415f45e0b4e              # double 4.4102399999999999
	.quad	0x401244d12018a43c              # double 4.5672040000000003
	.quad	0x402203641700cd85              # double 9.0066229999999994
	.quad	0x402356ee52589268              # double 9.6697869999999994
	.quad	0x401864ce3de6149c              # double 6.0984429999999996
	.quad	0x40205a821f2990f3              # double 8.176774
	.quad	0x401bb445aa2e3c53              # double 6.9260469999999996
	.quad	0x4023c3bb62413db8              # double 9.8822890000000001
	.quad	0x40207a41e57d9dbb              # double 8.2387840000000008
	.quad	0x401728055fbb517a              # double 5.7890829999999998
	.quad	0x4020384ab606b7aa              # double 8.1099449999999997
	.quad	0x401158efbb0e5e68              # double 4.3368520000000004
	.quad	0x40139b3743632c1f              # double 4.9015779999999998
	.quad	0x400071d4f9c1f85d              # double 2.0555819999999998
	.quad	0x4015054a3c64345d              # double 5.255166
	.quad	0x3fd344178705425f              # double 0.30103099999999999
	.quad	0x401599984a0e410b              # double 5.3999949999999997
	.quad	0x4009ab3edd8b60f2              # double 3.2086160000000001
	.quad	0x4022032b3461309c              # double 9.0061889999999991
	.quad	0x401c5fa7eb6bf445              # double 7.0934140000000001
	.quad	0x3fdcf89c5e6ff7e0              # double 0.45267400000000002
	.quad	0x400e1525cc426352              # double 3.7603260000000001
	.quad	0x3ffd662aa19439de              # double 1.8374429999999999
	.quad	0x4004bbc664d3bf2f              # double 2.5916869999999999
	.quad	0x3fe10f7985271bce              # double 0.53313900000000003
	.quad	0x401189afe1da7b0b              # double 4.3844599999999998
	.quad	0x401ff5a9eb2074eb              # double 7.9899060000000003
	.quad	0x40161f0b28522ea1              # double 5.530316
	.quad	0x40161c903ea704bc              # double 5.5278939999999999
	.quad	0x3fe3edb0dd82fd76              # double 0.62276500000000001
	.quad	0x40217966e008e9b4              # double 8.7371130000000007
	.quad	0x400274ec204f2ae0              # double 2.3070909999999998
	.quad	0x3fce2efd438d1d8a              # double 0.23580899999999999
	.quad	0x3fe5b8e4b87bdcf0              # double 0.67881999999999998
	.quad	0x4017b8de2ac32229              # double 5.9305349999999999
	.quad	0x4018c5553ef6b5d4              # double 6.1927079999999997
	.quad	0x3ff8875a31a4bdba              # double 1.533045
	.quad	0x40222b923a29c77a              # double 9.0851000000000006
	.quad	0x401d63bff8a8f3aa              # double 7.3474120000000003
	.quad	0x400111715c63ae25              # double 2.1335169999999999
	.quad	0x401a7ea3df6db941              # double 6.623672
	.quad	0x3ff5ac15d2d01c0d              # double 1.3545130000000001
	.quad	0x3ff68255b035bd51              # double 1.40682
	.quad	0x3ff7f2778140dd40              # double 1.496696
	.quad	0x401d8917939a7c18              # double 7.3838790000000003
	.quad	0x3ffc6ec4a4095f24              # double 1.7770429999999999
	.quad	0x4021912ccf6be37e              # double 8.7835450000000002
	.quad	0x40004d64d7f0ed3e              # double 2.0377900000000002
	.quad	0x40138123810e8859              # double 4.876112
	.quad	0x401dceb1c432ca58              # double 7.4518500000000003
	.quad	0x4002b9b3d07c84b6              # double 2.3406750000000001
	.quad	0x4012dfc504816f00              # double 4.7185249999999996
	.quad	0x3ff9ff8db4890929              # double 1.6248910000000001
	.quad	0x401931040bfe3b04              # double 6.2978670000000001
	.quad	0x401bb2d7f950b956              # double 6.924652
	.quad	0x4013efe260b2c83f              # double 4.9842620000000002
	.quad	0x4005d64302b40f67              # double 2.7296200000000002
	.quad	0x402132b68cef672c              # double 8.5990490000000008
	.quad	0x4023d26ce358298d              # double 9.9109870000000004
	.quad	0x3ff1bff79c842fa5              # double 1.109367
	.quad	0x4023a6eaa6d26741              # double 9.8260090000000008
	.quad	0x4012bafe1da7b0b4              # double 4.6826100000000004
	.quad	0x401de555c52e72da              # double 7.4739599999999999
	.quad	0x4018e691ea78af3e              # double 6.2251659999999998
	.quad	0x401c2e75360d0247              # double 7.045369
	.quad	0x401158301a79feca              # double 4.3361210000000003
	.quad	0x4020de5c0b999136              # double 8.4342959999999998
	.quad	0x3ff46658c4bd33d3              # double 1.2749870000000001
	.quad	0x40180852f7f498c4              # double 6.0081290000000003
	.quad	0x4011cf9c62a1b5c8              # double 4.4527450000000002
	.quad	0x4005a39799e518f4              # double 2.704879
	.quad	0x4009c8576cce5f74              # double 3.222823
	.quad	0x401cea9d1f601798              # double 7.2291150000000002
	.quad	0x401964c404a72eae              # double 6.3484040000000004
	.quad	0x3ff18c64fdb09a67              # double 1.096776
	.quad	0x40179f9db22d0e56              # double 5.905875
	.quad	0x401618f36694898f              # double 5.5243659999999997
	.quad	0x3fdad855970b49e0              # double 0.41945399999999999
	.quad	0x3ffbb15f88fc9364              # double 1.730804
	.quad	0x3fdc33df2a9d627c              # double 0.440666
	.quad	0x3fd205a2d72ffd1e              # double 0.28159400000000001
	.quad	0x3fee1e9f2778140e              # double 0.94123800000000002
	.quad	0x401e0a35d67ba238              # double 7.5099710000000001
	.quad	0x401f53886594af4f              # double 7.8315749999999999
	.quad	0x40167239e6ab9b24              # double 5.6115490000000001
	.quad	0x3fda9fe004b7f5a5              # double 0.41600799999999999
	.quad	0x4023ab8b8ae31d71              # double 9.8350489999999997
	.quad	0x4020ea788db0574b              # double 8.4579509999999996
	.quad	0x402034523f67f4dc              # double 8.1021900000000002
	.quad	0x4017a9ce075f6fd2              # double 5.9158249999999999
	.quad	0x4023a07e5a78f25a              # double 9.8134639999999997
	.quad	0x401c6c5c13fd0d06              # double 7.1058199999999996
	.quad	0x3fb1cb790fb65669              # double 0.069511000000000003
	.quad	0x402230d823422468              # double 9.0953990000000005
	.quad	0x40103e24febd09e1              # double 4.0606879999999999
	.quad	0x4021c0da1a93293d              # double 8.8766639999999999
	.quad	0x4017b8b47c73eee5              # double 5.9303759999999999
	.quad	0x3feddc1a47a9e2bd              # double 0.933118
	.quad	0x40180b9d3cbc48f1              # double 6.011342
	.quad	0x401bbe68a0d349bf              # double 6.9359460000000004
	.quad	0x401d3aae297396d1              # double 7.3073050000000004
	.quad	0x401aab7fe08aefb3              # double 6.6674800000000003
	.quad	0x4018d6e43aa79bbb              # double 6.2098550000000001
	.quad	0x40217a0ea5b530cf              # double 8.7383930000000003
	.quad	0x400e6a936c58eeaf              # double 3.8020390000000002
	.quad	0x3fc9ebf22c01e68a              # double 0.202513
	.quad	0x3ff71903a7546d40              # double 1.4436070000000001
	.quad	0x4023d34ce3de614a              # double 9.9126960000000004
	.quad	0x3feee9813879c411              # double 0.96600399999999997
	.quad	0x401a4b8bef8ceb35              # double 6.5737759999999996
	.quad	0x4006f24399b2c40d              # double 2.868293
	.quad	0x400345058dde7a74              # double 2.4087019999999999
	.quad	0x401c93db3bfb58d1              # double 7.1443909999999997
	.quad	0x4022583e8576cce6              # double 9.1723520000000001
	.quad	0x402347954eb13dfb              # double 9.6398109999999999
	.quad	0x40064b1572580c31              # double 2.7866620000000002
	.quad	0x4017471fff79c843              # double 5.819458
	.quad	0x40199b7521144cbe              # double 6.4018139999999999
	.quad	0x4017ab28d8665e03              # double 5.9171480000000001
	.quad	0x4013328954a7f801              # double 4.7993519999999998
	.quad	0x3ffdf94d94078961              # double 1.8733649999999999
	.quad	0x4008c3b688bda943              # double 3.0955629999999998
	.quad	0x4002672d1aeb3dd1              # double 2.300379
	.quad	0x4018f51372a38b8b              # double 6.2393320000000001
	.quad	0x3fed1d627bf61aa4              # double 0.909837
	.quad	0x402253a4d6e47dc3              # double 9.1633669999999992
	.quad	0x3ffd0752da98676a              # double 1.8142879999999999
	.quad	0x4021d60fe47991bc              # double 8.9180899999999994
	.quad	0x4022a51958969a0b              # double 9.3224590000000003
	.quad	0x40221f644955b467              # double 9.0613119999999991
	.quad	0x400dfccfaeff5c6c              # double 3.748443
	.quad	0x4013e2d05f288484              # double 4.9714980000000004
	.quad	0x3fd01876188b1141              # double 0.25149300000000002
	.quad	0x4015bccb3a2595bc              # double 5.4343690000000002
	.quad	0x401bfdf1e0828c37              # double 6.9979930000000001
	.quad	0x402275fdac68a937              # double 9.2304510000000004
	.quad	0x40238733ebbfd71b              # double 9.7640679999999999
	.quad	0x4023bb3636f3b214              # double 9.8656480000000001
	.quad	0x400638dbcec84f90              # double 2.7777630000000002
	.quad	0x401a9a30121682f9              # double 6.6505739999999998
	.quad	0x40165b213e3e2930              # double 5.5889939999999996
	.quad	0x4001f525460aa64c              # double 2.2446999999999999
	.quad	0x4008729a1b9f98b7              # double 3.055958
	.quad	0x400405c24c404a73              # double 2.502812
	.quad	0x40087aafff36ac64              # double 3.0599059999999998
	.quad	0x402002630ec31162              # double 8.0046619999999997
	.quad	0x4022c5f02c4d65e4              # double 9.3865979999999993
	.quad	0x401d398915bdd767              # double 7.3061870000000004
	.quad	0x401998140dd3fe19              # double 6.3985139999999996
	.quad	0x40110784ec636b09              # double 4.2573429999999997
	.quad	0x4005d85058dde7a7              # double 2.7306219999999999
	.quad	0x40117b884406c00e              # double 4.3706370000000003
	.quad	0x4007c5332acfb763              # double 2.9712890000000001
	.quad	0x401cf302f72b4528              # double 7.2373159999999999
	.quad	0x400fdb213e3e2930              # double 3.9819969999999998
	.quad	0x40069c7ef177a701              # double 2.8264140000000002
	.quad	0x401cf70c996b7671              # double 7.2412590000000003
	.quad	0x4020294c22ee4192              # double 8.0806590000000007
	.quad	0x401a991d14e3bcd3              # double 6.6495249999999997
	.quad	0x401fd017dae81883              # double 7.9532160000000002
	.quad	0x3fc0da0168b5cbff              # double 0.13165299999999999
	.quad	0x401bb2e2fbe33acd              # double 6.9246939999999997
	.quad	0x401433f4a98aa865              # double 5.0507379999999999
	.quad	0x40058c450268900c              # double 2.6934909999999999
	.quad	0x4020bc49774256bd              # double 8.3677480000000006
	.quad	0x400cefa376922d95              # double 3.6170110000000002
	.quad	0x4019705f28848388              # double 6.3597380000000001
	.quad	0x400ebf1ae2da554c              # double 3.8433130000000002
	.quad	0x401543ed959a3098              # double 5.3163359999999997
	.quad	0x4021537e2c55c960              # double 8.6630719999999997
	.quad	0x40173c536d655e29              # double 5.8089120000000003
	.quad	0x4018122ff08893b8              # double 6.0177610000000001
	.quad	0x401c84894c447c31              # double 7.1294300000000002
	.quad	0x40223443b2dd377e              # double 9.1020789999999998
	.quad	0x400934bc6a7ef9db              # double 3.1507499999999999
	.quad	0x401ee2fdb8fde2ef              # double 7.7216709999999997
	.quad	0x4021a218372e6a77              # double 8.8165910000000007
	.quad	0x400146cb10342aaa              # double 2.159567
	.quad	0x4020f8f92af9a8ce              # double 8.4862760000000002
	.quad	0x4016696851223183              # double 5.6029369999999998
	.quad	0x3ff47bc4d22c881e              # double 1.2802169999999999
	.quad	0x40235edd69d30271              # double 9.685283
	.quad	0x3fd68dde7a743a64              # double 0.35240899999999997
	.quad	0x4006a7496aad1d04              # double 2.831683
	.quad	0x3fe02773e24febd1              # double 0.50481600000000004
	.quad	0x3fff03201040bfe4              # double 1.9382630000000001
	.quad	0x401f9ca89fc6da45              # double 7.9029870000000004
	.quad	0x401ce20ff540895d              # double 7.220764
	.quad	0x401d1bbe878fabda              # double 7.277094
	.quad	0x402254226809d495              # double 9.1643249999999998
	.quad	0x4012357ff9b56324              # double 4.5522460000000002
	.quad	0x3ff5dd883ba3443d              # double 1.3665849999999999
	.quad	0x3fd8bc1eff9f87f0              # double 0.38648199999999999
	.quad	0x4006d34acaff6d33              # double 2.85317
	.quad	0x4004794e1a3f4667              # double 2.559231
	.quad	0x401296aa8eb46349              # double 4.6471349999999996
	.quad	0x4010edbfceb78898              # double 4.2321770000000001
	.quad	0x4007f94a6eb91b3f              # double 2.9967239999999999
	.quad	0x4021175b3e1437c5              # double 8.5456179999999993
	.quad	0x401678ec0f883340              # double 5.6180880000000002
	.quad	0x400f555a3a08398a              # double 3.9166759999999998
	.quad	0x400efd3d4280ae10              # double 3.8736519999999999
	.quad	0x401766052502eec8              # double 5.8496290000000002
	.quad	0x40100366516db0de              # double 4.0033200000000004
	.quad	0x401801797cc39ffd              # double 6.0014399999999997
	.quad	0x401de94a6eb91b3f              # double 7.4778229999999999
	.quad	0x4017006ab14ec205              # double 5.750407
	.quad	0x400ba8b4bf8fcd68              # double 3.457376
	.quad	0x3fbf6d549731098d              # double 0.122762
	.quad	0x4013f9f7b5aea316              # double 4.9941089999999999
	.quad	0x401206c3760bf5d8              # double 4.5066050000000004
	.quad	0x401dc5fbb517a461              # double 7.4433429999999996
	.quad	0x4013c1049235f80a              # double 4.9384940000000004
	.quad	0x400c481f53825e14              # double 3.5352160000000001
	.quad	0x401ad0620ab71327              # double 6.7034989999999999
	.quad	0x3ff128b9fdbd2fa1              # double 1.072443
	.quad	0x3fbd8d5842b734b5              # double 0.115438
	.quad	0x400d9c88e79aae6d              # double 3.7014330000000002
	.quad	0x401becf0f9d2bf55              # double 6.9813879999999999
	.quad	0x401f3d2e94680171              # double 7.8097479999999999
	.quad	0x4019bc89f40a2878              # double 6.4341200000000001
	.quad	0x402130576cce5f74              # double 8.5944169999999999
	.quad	0x3fffb7db6e503fb3              # double 1.9823869999999999
	.quad	0x400cbc31df761cbd              # double 3.5918920000000001
	.quad	0x401ea64fdb09a672              # double 7.6624140000000001
	.quad	0x4020ea16616b54e3              # double 8.4572020000000006
	.quad	0x3ffd2577531db446              # double 1.821647
	.quad	0x401d03519bd4067d              # double 7.253241
	.quad	0x400c46887a8d64d8              # double 3.53444
	.quad	0x40057f1bef49cf57              # double 2.687065
	.quad	0x3ff1185f06f69446              # double 1.0684499999999999
	.quad	0x4022eac83ec892ab              # double 9.4585589999999992
	.quad	0x4019b5ab7dc7abfc              # double 6.4274120000000003
	.quad	0x4023eea7264a16a5              # double 9.9661190000000008
	.quad	0x4021e20e410b630b              # double 8.9415150000000008
	.quad	0x3fe0337c99ae924f              # double 0.50628499999999999
	.quad	0x400dcfa48301a7a0              # double 3.726388
	.quad	0x4023afa4e7ab7564              # double 9.8430549999999996
	.quad	0x3ff7efc7a398201d              # double 1.49604
	.quad	0x401560d0247021d1              # double 5.344544
	.quad	0x401463ec02f2f987              # double 5.0975799999999998
	.quad	0x401593dccea28fe2              # double 5.3943969999999997
	.quad	0x40166a8112ba16e8              # double 5.6040080000000003
	.quad	0x4000485553ef6b5d              # double 2.0353189999999999
	.quad	0x4000c20f6f08cc57              # double 2.0947559999999998
	.quad	0x4012dcc0bdcad14a              # double 4.715579
	.quad	0x3fec6f34d6a161e5              # double 0.888575
	.quad	0x401f674d9c6b0532              # double 7.8508820000000004
	.quad	0x4012a21ab4b72c52              # double 4.6583050000000004
	.quad	0x4003489eba6aca79              # double 2.4104589999999999
	.quad	0x402189beb18116ec              # double 8.7690330000000002
	.quad	0x4006b56fb8f57f73              # double 2.8385919999999998
	.quad	0x4021f2178f68be2f              # double 8.9728359999999991
	.quad	0x401d43c60029f16b              # double 7.3161849999999999
	.quad	0x40057744f5d35654              # double 2.6832370000000001
	.quad	0x402239f6ec5b078e              # double 9.1132120000000008
	.quad	0x401baa005c4651f4              # double 6.9160170000000001
	.quad	0x40202a8262456f76              # double 8.0830260000000003
	.quad	0x40137154003254e7              # double 4.8606720000000001
	.quad	0x3ffe9573647baa9b              # double 1.9114869999999999
	.quad	0x4008cfcefaa4766c              # double 3.1014689999999998
	.quad	0x401d014fce746cb9              # double 7.2512809999999996
	.quad	0x3ffa332378ab0c89              # double 1.6374850000000001
	.quad	0x401b0e9f2778140e              # double 6.7642790000000002
	.quad	0x400ab7396d0917d7              # double 3.3394650000000001
	.quad	0x401b65e56cd6c2f0              # double 6.8495080000000002
	.quad	0x400e13415b1422cd              # double 3.7594020000000001
	.quad	0x4021d6e32e3821af              # double 8.9197019999999991
	.quad	0x3ff4209cc319c5a4              # double 1.257962
	.quad	0x3ff45f4d37c1376d              # double 1.2732669999999999
	.quad	0x401bf7a02fb5d031              # double 6.991822
	.quad	0x4021c14f26aec072              # double 8.8775569999999995
	.quad	0x401c74af922962d0              # double 7.1139510000000001
	.quad	0x400b305100a393ee              # double 3.3985919999999998
	.quad	0x3fe80cb8e086bdf5              # double 0.75155300000000003
	.quad	0x40127c6bce8533b1              # double 4.621505
	.quad	0x401ea27a63736cdf              # double 7.6586699999999998
	.quad	0x3fd4ed4e4c942d49              # double 0.326984
	.quad	0x3fd9f09d8c6d612c              # double 0.40531099999999998
	.quad	0x3ff270a5efe93187              # double 1.1525019999999999
	.quad	0x401153c1ce6c093e              # double 4.3317940000000004
	.quad	0x401818d716d2aa5c              # double 6.0242579999999997
	.quad	0x3ffcb43a647fdc59              # double 1.794001
	.quad	0x4020a196fa82e87d              # double 8.3156049999999997
	.quad	0x40192abcd78c4370              # double 6.2917360000000002
	.quad	0x4009e27e9531550d              # double 3.2355930000000002
	.quad	0x40184ffc115df655              # double 6.0781099999999997
	.quad	0x40051f7d73c92578              # double 2.6403759999999998
	.quad	0x400674c6e6d9be4d              # double 2.8070200000000001
	.quad	0x4010152d666a9824              # double 4.0206809999999997
	.quad	0x40191edb2f661f19              # double 6.2801330000000002
	.quad	0x40199fef7c243dcd              # double 6.4061870000000001
	.quad	0x4021e741aef6f8f0              # double 8.9516729999999995
	.quad	0x4016764f97edc7ef              # double 5.6155379999999999
	.quad	0x402299c92ddbdb5e              # double 9.3003630000000008
	.quad	0x400e225d8d79d0a6              # double 3.7667799999999998
	.quad	0x3ffa0f2389720429              # double 1.6286959999999999
	.quad	0x4022938bac710cb3              # double 9.2881750000000007
	.quad	0x4018d4330d73860a              # double 6.2072260000000004
	.quad	0x401a9cbc48f10a9a              # double 6.6530620000000003
	.quad	0x4015ee4a7b4e54f8              # double 5.4827060000000003
	.quad	0x40211af5771001d6              # double 8.5526540000000004
	.quad	0x4018458537e2c55d              # double 6.0678910000000004
	.quad	0x3ff5b89a459103c9              # double 1.357569
	.quad	0x3ff57f359ff4fd6d              # double 1.3435569999999999
	.quad	0x40087ce18266772d              # double 3.0609769999999998
	.quad	0x4011aa3161a1db87              # double 4.4162039999999996
	.quad	0x4020b720a73f748a              # double 8.3576709999999999
	.quad	0x401ccd71b0468449              # double 7.2006290000000002
	.quad	0x3ffb047f562174c5              # double 1.688598
	.quad	0x3ff5d929670196d9              # double 1.365518
	.quad	0x40210bc7d5ed06ff              # double 8.5230090000000001
	.quad	0x4001ba95421c0443              # double 2.2161050000000002
	.quad	0x40041a8c586876e2              # double 2.5129630000000001
	.quad	0x4020d5fcc1871e6d              # double 8.4179440000000003
	.quad	0x4021f4013ec460ee              # double 8.9765720000000009
	.quad	0x40039322f2734f83              # double 2.446844
	.quad	0x3ff93bfe7e1fc090              # double 1.5771470000000001
	.quad	0x40224de3fbbd7b20              # double 9.1521299999999997
	.quad	0x4011d1f85d744f5d              # double 4.4550489999999998
	.quad	0x402097368ad68837              # double 8.2953379999999992
	.quad	0x4011d68a0d349be9              # double 4.459511
	.quad	0x401a3359791819d2              # double 6.5501459999999998
	.quad	0x401f65f99c38b04b              # double 7.8495850000000002
	.quad	0x40079077ccc03793              # double 2.945541
	.quad	0x3fdae093532e7b3e              # double 0.41995700000000002
	.quad	0x40031940789613d3              # double 2.38733
	.quad	0x400d09f05ea24cc7              # double 3.6298530000000002
	.quad	0x3ffd727674d16335              # double 1.8404450000000001
	.quad	0x4012e1ef30a4e37a              # double 4.7206390000000003
	.quad	0x4013671bcdbbe015              # double 4.8506919999999996
	.quad	0x40188899392189be              # double 6.1333970000000004
	.quad	0x400a23033a4723ab              # double 3.267096
	.quad	0x400ec87a072d1aeb              # double 3.8478889999999999
	.quad	0x400244f6dfc5cdd5              # double 2.283674
	.quad	0x3fdc1409a2403148              # double 0.43872299999999997
	.quad	0x40174de0d66f0cfe              # double 5.8260529999999999
	.quad	0x401324f93bc0a06f              # double 4.7861070000000003
	.quad	0x401ced52c16df3f9              # double 7.2317609999999997
	.quad	0x4020994c447c30d3              # double 8.29941
	.quad	0x401c8847f562174c              # double 7.1330869999999997
	.quad	0x3ff61d13d74d594f              # double 1.382099
	.quad	0x401c0e95faa8a82a              # double 7.0142439999999997
	.quad	0x4023f78b9baa1512              # double 9.9834870000000002
	.quad	0x400a8a3161a1db87              # double 3.3174769999999998
	.quad	0x3fd7b71b8aa00193              # double 0.37055100000000002
	.quad	0x3fe5c258d5842b73              # double 0.67997399999999997
	.quad	0x4021da99d883ba34              # double 8.9269549999999995
	.quad	0x4019299e518f3ecd              # double 6.2906430000000002
	.quad	0x401ee1465e892253              # double 7.7199949999999999
	.quad	0x40185472c0e7bc3c              # double 6.0824689999999997
	.quad	0x401055b9e8c47a18              # double 4.083717
	.quad	0x4021aa8049667b5f              # double 8.8330099999999998
	.quad	0x402282fe82517e78              # double 9.2558480000000002
	.quad	0x40215035bd512ec7              # double 8.6566600000000005
	.quad	0x40135bacf7446f9c              # double 4.8395270000000004
	.quad	0x402225da059a73b4              # double 9.0739289999999996
	.quad	0x40135bb7739f340d              # double 4.8395669999999997
	.quad	0x400e5033a4723ab0              # double 3.789161
	.quad	0x4014d87e38eb0319              # double 5.2114190000000002
	.quad	0x4015f81d3aa369fd              # double 5.492299
	.quad	0x401d9fbf401c4fc2              # double 7.4060030000000001
	.quad	0x401c64430b178b37              # double 7.097912
	.quad	0x400e5897204295a7              # double 3.7932570000000001
	.quad	0x401e924b33daf8df              # double 7.6428649999999995
	.quad	0x40173f3c70c996b7              # double 5.8117539999999996
	.quad	0x3fd0bfdb4cc25072              # double 0.26171
	.quad	0x40229db9841aac54              # double 9.3080560000000005
	.quad	0x3feb0114d2f5dbba              # double 0.84388200000000002
	.quad	0x4021275e6362a5e8              # double 8.5768920000000008
	.quad	0x4021e42ca148ba84              # double 8.945653
	.quad	0x3ffed0c6f7a0b5ee              # double 1.9259710000000001
	.quad	0x3faaa9f7b5aea316              # double 0.052077999999999999
	.quad	0x401167c45cbbc2b9              # double 4.3513349999999997
	.quad	0x400b0e63a5c1c609              # double 3.3820260000000002
	.quad	0x401c43c74fb549f9              # double 7.0661899999999997
	.quad	0x400c1fef39085f4a              # double 3.515593
	.quad	0x40154c8eef1bac2e              # double 5.3247640000000001
	.quad	0x400dcda87a072d1b              # double 3.725419
	.quad	0x401d11b79d909f1f              # double 7.2673019999999999
	.quad	0x4001ac32a8c9b845              # double 2.2090809999999999
	.quad	0x4023bc98a222d517              # double 9.8683519999999997
	.quad	0x3fd4b0a6fc58ab93              # double 0.32328200000000001
	.quad	0x400e27ffde7210bf              # double 3.7695310000000002
	.quad	0x3ff5bb45f17bd8be              # double 1.3582209999999999
	.quad	0x401b71ce28ed5f14              # double 6.8611380000000004
	.quad	0x40128cf0f9d2bf55              # double 4.6376379999999999
	.quad	0x40177f0c34c1a8ac              # double 5.8740699999999997
	.quad	0x4011a24aada33bda              # double 4.4084880000000002
	.quad	0x3ff23210be9424e6              # double 1.1372230000000001
	.quad	0x401aa0dbf0563ed1              # double 6.657089
	.quad	0x3ffb560e94ee392e              # double 1.70851
	.quad	0x4013c5fe111276fb              # double 4.943352
	.quad	0x4022e76f4be835df              # double 9.4520210000000002
	.quad	0x40162ffa7eb6bf44              # double 5.5468539999999997
	.quad	0x3ffc0198f1d3ed52              # double 1.7503899999999999
	.quad	0x4000f830e3cd9a52              # double 2.1211869999999999
	.quad	0x400aab7dc7abfb9c              # double 3.333736
	.quad	0x3fe4f4cb1897a67a              # double 0.65488199999999996
	.quad	0x401d3e9531550ca2              # double 7.3111160000000002
	.quad	0x3f8311a543f1c758              # double 0.0093109999999999998
	.quad	0x40208c38b04ab607              # double 8.2738700000000005
	.quad	0x3fe27c04c8bc9cd4              # double 0.57763900000000001
	.quad	0x4007ffd2e9468017              # double 2.999914
	.quad	0x40225fe7c06e19b9              # double 9.1873149999999999
	.quad	0x40208d7cb2d905c0              # double 8.2763419999999996
	.quad	0x4016132df505d0fa              # double 5.5187299999999997
	.quad	0x40168c5da6a44418              # double 5.6370760000000004
	.quad	0x40198215b9a5a89c              # double 6.3770360000000004
	.quad	0x4020afca42aed139              # double 8.3433399999999995
	.quad	0x4018ada16616b54e              # double 6.1695609999999999
	.quad	0x400ab5e6362a5e78              # double 3.3388179999999998
	.quad	0x3ff147c4199fe436              # double 1.0800209999999999
	.quad	0x4023129e4d5d80e5              # double 9.5363640000000007
	.quad	0x40014e6a76965f52              # double 2.1632889999999998
	.quad	0x400c9b29a1b9f98b              # double 3.5757629999999998
	.quad	0x401e8bda0dfdef85              # double 7.6365740000000004
	.quad	0x4012ded02cd39da1              # double 4.7175909999999996
	.quad	0x402196f566490a35              # double 8.7948409999999999
	.quad	0x4014fa7610279570              # double 5.2445909999999998
	.quad	0x400b78a43bb40b35              # double 3.433907
	.quad	0x3fec1a2a4db163bb              # double 0.87819400000000003
	.quad	0x40170696a26e5471              # double 5.7564339999999996
	.quad	0x3ffd595feda66128              # double 1.83432
	.quad	0x40086874c8ffb8b2              # double 3.0510039999999998
	.quad	0x401d26822ff08894              # double 7.2876060000000003
	.quad	0x401abc17a89331a1              # double 6.6836840000000004
	.quad	0x3fede7b1c0010c6f              # double 0.93453299999999995
	.quad	0x4014841461b6d43d              # double 5.128984
	.quad	0x4001d4fc610f0e91              # double 2.2289970000000001
	.quad	0x3ff1ca32f4491299              # double 1.1118650000000001
	.quad	0x4011452eb5f5f0b3              # double 4.3175610000000004
	.quad	0x40238a4df47f993d              # double 9.7701259999999994
	.quad	0x40151e71476af89c              # double 5.2797289999999997
	.quad	0x4021cfeaa2a0a958              # double 8.9060869999999994
	.quad	0x401d0c60029f16b1              # double 7.2620849999999999
	.quad	0x3ffb64883fd50225              # double 1.7120439999999999
	.quad	0x40034f0e90bc7b46              # double 2.413602
	.quad	0x401f2743201040c0              # double 7.7883420000000001
	.quad	0x40104b6ae7d566cf              # double 4.0736499999999998
	.quad	0x3ffc316e37154003              # double 1.762068
	.quad	0x3fec2305532617c2              # double 0.87927500000000003
	.quad	0x3ff42f1a9fbe76c9              # double 1.2615000000000001
	.quad	0x4019e569b17481b2              # double 6.4740359999999999
	.quad	0x4010276e1deacc92              # double 4.0385059999999999
	.quad	0x401a68f9b13165d4              # double 6.6025150000000004
	.quad	0x3fee16ce789e774f              # double 0.94028400000000001
	.quad	0x400ecb5bb384fd2a              # double 3.8492959999999998
	.quad	0x4022612a0ec74320              # double 9.1897739999999999
	.quad	0x40057228dc981beb              # double 2.680742
	.quad	0x3ff6936d655e28aa              # double 1.4109929999999999
	.quad	0x3fd737329c347e8d              # double 0.36274400000000001
	.quad	0x401007e38eb0318c              # double 4.0077040000000004
	.quad	0x401ab2806af46aa1              # double 6.6743180000000004
	.quad	0x4000f2b6f19934f0              # double 2.1185130000000001
	.quad	0x400930fe047d3d43              # double 3.1489220000000002
	.quad	0x4013bf64cf8d716d              # double 4.9369079999999999
	.quad	0x4013e4052d666a98              # double 4.9726759999999999
	.quad	0x4011fce075f6fd22              # double 4.49695
	.quad	0x4015158a32f44913              # double 5.2710350000000004
	.quad	0x4017dd77b7c7820a              # double 5.9662769999999998
	.quad	0x3fef12ba16e7a312              # double 0.97103600000000001
	.quad	0x40226c7d3d4280ae              # double 9.2118929999999999
	.quad	0x3ff75206c8711d7a              # double 1.4575260000000001
	.quad	0x4022dff21b3aeee9              # double 9.4373939999999993
	.quad	0x40157c80c73abc94              # double 5.3715849999999996
	.quad	0x40186f049a9973da              # double 6.1084160000000001
	.quad	0x400a1372a38b8ae3              # double 3.2594959999999999
	.quad	0x402239f85d744f5d              # double 9.1132229999999996
	.quad	0x401249207d4e0978              # double 4.5714129999999997
	.quad	0x4020e477574f722e              # double 8.4462229999999998
	.quad	0x4013d1f969e3c969              # double 4.9550530000000004
	.quad	0x4011f62aa19439de              # double 4.4903969999999997
	.quad	0x4001907bfe7e1fc1              # double 2.1955490000000002
	.quad	0x401b011a11233df3              # double 6.7510760000000003
	.quad	0x401853e707e175d1              # double 6.0819359999999998
	.quad	0x40232cea8da7f3cf              # double 9.5877269999999992
	.quad	0x4023e42f1ed17c5f              # double 9.945672
	.quad	0x40157262888b545c              # double 5.3617039999999996
	.quad	0x401e25004fb1183b              # double 7.5361339999999996
	.quad	0x4023a66256366d7a              # double 9.8249689999999994
	.quad	0x401895247cb70ac4              # double 6.1456470000000003
	.quad	0x4023753586ca89fc              # double 9.7289239999999992
	.quad	0x40163f30e7ff583a              # double 5.5617099999999997
	.quad	0x401b2b955f78359c              # double 6.7925620000000002
	.quad	0x40237fab324851a8              # double 9.7493529999999992
	.quad	0x40080a94ff0025c0              # double 3.0051670000000001
	.quad	0x40234645a1cac083              # double 9.6372499999999998
	.quad	0x401f561e4f765fd9              # double 7.8341000000000002
	.quad	0x3ff5ae9142b302f7              # double 1.355119
	.quad	0x3fdaa704bc27631b              # double 0.41644399999999998
	.quad	0x401c4cdd0d8cb07d              # double 7.075062
	.quad	0x4012e3cafb3b7521              # double 4.7224539999999999
	.quad	0x401a164628027d89              # double 6.5217520000000002
	.quad	0x400d37af640639d6              # double 3.65219
	.quad	0x401b47110e453d21              # double 6.819401
	.quad	0x401f091c4b90214b              # double 7.7588970000000001
	.quad	0x401c60902de00d1b              # double 7.0942999999999996
	.quad	0x3fed00389f83be66              # double 0.906277
	.quad	0x401cb88c60cbf2b2              # double 7.1802229999999998
	.quad	0x4003161565c2d278              # double 2.385783
	.quad	0x40153a8869c66d37              # double 5.3071609999999998
	.quad	0x40201458255b035c              # double 8.0397350000000002
	.quad	0x4021388bb906466b              # double 8.6104409999999998
	.quad	0x3f9bfb58d1526d8b              # double 0.027326
	.quad	0x400b02f9ca5bd945              # double 3.3764530000000001
	.quad	0x40102223e1869835              # double 4.0333399999999999
	.quad	0x4015e81908e581cf              # double 5.4766579999999996
	.quad	0x4013b8d716d2aa5c              # double 4.9305079999999997
	.quad	0x3fd5c358afc47e4a              # double 0.34004800000000002
	.quad	0x4020a11d3671ac15              # double 8.3146760000000004
	.quad	0x400e619b0ab2e169              # double 3.7976589999999999
	.quad	0x400b12556d19dece              # double 3.3839519999999998
	.quad	0x3f8252ce032db1ea              # double 0.0089470000000000001
	.quad	0x402195f78359bc34              # double 8.792904
	.quad	0x4021e2ea3161a1dc              # double 8.9431930000000008
	.quad	0x3fd08db0574b4070              # double 0.25864799999999999
	.quad	0x4014f4bf8fcd67fd              # double 5.2390119999999998
	.quad	0x401d92fe3f359ff5              # double 7.393548
	.quad	0x401f2594f26aec07              # double 7.7867009999999998
	.quad	0x401a30df9bdc69f9              # double 6.5477280000000002
	.quad	0x3ffaa41a261bf37c              # double 1.6650640000000001
	.quad	0x402353e81450efdd              # double 9.6638800000000006
	.quad	0x402111e236c15d2d              # double 8.534929
	.quad	0x4020cde657b84dba              # double 8.4021480000000004
	.quad	0x3fdab688bda9435b              # double 0.41739100000000001
	.quad	0x3ffa49310129cbab              # double 1.6428689999999999
	.quad	0x3fe839e8c47a17f4              # double 0.75706899999999999
	.quad	0x400e9165d3996fa8              # double 3.8209949999999999
	.quad	0x4003ee032db1e9f2              # double 2.4912169999999998
	.quad	0x3fed02f944241c3f              # double 0.906613
	.quad	0x40203ebf22c01e69              # double 8.1225520000000007
	.quad	0x400fe0ae10492360              # double 3.9847070000000002
	.quad	0x3fee888d6d3b6cbe              # double 0.95416900000000004
	.quad	0x402181bc126a65cf              # double 8.7533879999999993
	.quad	0x401cf669ced0b30b              # double 7.2406379999999997
	.quad	0x40138dbf0563ed0f              # double 4.8884239999999997
	.quad	0x400ae0b912dba4d7              # double 3.359728
	.quad	0x4023dd5a9eb2074f              # double 9.9323320000000006
	.quad	0x401bca355043e532              # double 6.9474689999999999
	.quad	0x3fe68e4b87bdcf03              # double 0.70487
	.quad	0x40200c6cdaf4adbc              # double 8.0242679999999992
	.quad	0x4016f9096bb98c7e              # double 5.7431999999999999
	.quad	0x3ff86048e043a216              # double 1.5235069999999999
	.quad	0x4008f3a14cec41dd              # double 3.11896
	.quad	0x400d6871a3b14a90              # double 3.6759979999999999
	.quad	0x40234fc8b0079a28              # double 9.6558279999999996
	.quad	0x4018a52a84380885              # double 6.161295
	.quad	0x4023b8f10a99b6f6              # double 9.8612140000000004
	.quad	0x400fe10adcd2d44e              # double 3.9848840000000001
	.quad	0x40124d306a2b1705              # double 4.57538
	.quad	0x40164d3d4280ae10              # double 5.5754289999999997
	.quad	0x400415bd512ec6bd              # double 2.510615
	.quad	0x3fc97d8cf398e970              # double 0.19914399999999999
	.quad	0x401d8897635e742a              # double 7.3833900000000003
	.quad	0x3fd96772d5e071c5              # double 0.39693899999999999
	.quad	0x401e4aa8a82a5615              # double 7.5729090000000001
	.quad	0x401c51ea35935fc4              # double 7.0799950000000003
	.quad	0x4012603e20ccff22              # double 4.5939870000000003
	.quad	0x3fa8caa326e11559              # double 0.048420999999999999
	.quad	0x4020bb6ac647778e              # double 8.3660490000000003
	.quad	0x401685881a1554fc              # double 5.6304020000000001
	.quad	0x3fb8d7be9856a37b              # double 0.097042000000000003
	.quad	0x401e16ae7d566cf4              # double 7.5221499999999999
	.quad	0x400359274e22a2c2              # double 2.4185319999999999
	.quad	0x401ee0724b76f6d7              # double 7.7191859999999996
	.quad	0x401925579af1886e              # double 6.286467
	.quad	0x3fee29435ac8a372              # double 0.94253699999999996
	.quad	0x4023f062f5989df1              # double 9.9695049999999998
	.quad	0x401e27625204af92              # double 7.5384609999999999
	.quad	0x40191c105186db51              # double 6.277406
	.quad	0x401711355475a31a              # double 5.7668049999999997
	.quad	0x4006eab1d4f9c1f8              # double 2.8645969999999998
	.quad	0x401d61f42bb66730              # double 7.3456580000000002
	.quad	0x40088ae31d712a0f              # double 3.0678160000000001
	.quad	0x40234604189374bc              # double 9.6367499999999992
	.quad	0x4011b3632c1f42bb              # double 4.4251829999999996
	.quad	0x3fd6c536d655e28b              # double 0.35578700000000002
	.quad	0x401d7e56473471f8              # double 7.3733760000000003
	.quad	0x401bf88a47ecfe9b              # double 6.9927149999999996
	.quad	0x40191c7a7c9de050              # double 6.2778109999999998
	.quad	0x4017101797cc3a00              # double 5.7657150000000001
	.quad	0x3ffbad7518b0d0ee              # double 1.7298480000000001
	.quad	0x401c2fcbd556084a              # double 7.0466759999999997
	.quad	0x4012a03ff69014b6              # double 4.6564940000000004
	.quad	0x400c02c01e68a0d3              # double 3.5013429999999999
	.quad	0x4002f625a682b628              # double 2.3701889999999999
	.quad	0x400bcdcebfec13ba              # double 3.475492
	.quad	0x4013b2a5614df8b1              # double 4.9244589999999997
	.quad	0x3fdd3d74d594f26b              # double 0.456876
	.quad	0x4023bbcab81f969e              # double 9.8667809999999996
	.quad	0x401a476b3bb83cf3              # double 6.5697450000000002
	.quad	0x3fa624febd09e12a              # double 0.043250999999999998
	.quad	0x401d5e94ab1d4f9c              # double 7.3423639999999999
	.quad	0x401b3337a80cf9e4              # double 6.8000170000000004
	.quad	0x400b08fb00bcbe62              # double 3.3793850000000001
	.size	.L__constant_2500xf64, 20000

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
